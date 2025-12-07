uint64_t sub_1D77E4894(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_1D78B6454();
    MEMORY[0x1DA702FF0](0xD00000000000004DLL, 0x80000001D78D5BD0);
    MEMORY[0x1DA702FF0](a3, a4);
    MEMORY[0x1DA702FF0](0xD000000000000010, 0x80000001D78D5C20);
    MEMORY[0x1DA702FF0](a1, a2);
    v9 = 0x200A5D202020200ALL;
    v10 = 0xEC0000007D0A7D20;
  }

  else
  {
    sub_1D78B6454();
    MEMORY[0x1DA702FF0](0xD00000000000004DLL, 0x80000001D78D5BD0);
    MEMORY[0x1DA702FF0](a3, a4);
    v9 = 0xD000000000000014;
    v10 = 0x80000001D78D5C40;
  }

  MEMORY[0x1DA702FF0](v9, v10);
  return 0;
}

uint64_t sub_1D77E49F4()
{
  v1 = v0;
  sub_1D7744248(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v78 - v4;

  v6 = sub_1D78B3F84();

  v7 = *(v6 + 16);

  if (v7)
  {
    v79 = v5;
    v8 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
    swift_beginAccess();
    v84 = v8;
    *(v1 + v8) = MEMORY[0x1E69E7CC8];

    v9 = sub_1D78B3F84();

    v10 = 0;
    v12 = v9 + 64;
    v11 = *(v9 + 64);
    v82 = v1;
    v83 = v9;
    v13 = 1 << *(v9 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    v80 = v16;
    v81 = v9 + 64;
    while (v15)
    {
LABEL_12:
      v37 = __clz(__rbit64(v15)) | (v10 << 6);
      v38 = (*(v83 + 48) + 24 * v37);
      v39 = *v38;
      v41 = *(v38 + 1);
      v40 = *(v38 + 2);
      v42 = *(v83 + 56) + 168 * v37;
      v44 = *(v42 + 16);
      v43 = *(v42 + 32);
      v88 = *v42;
      v89 = v44;
      v90 = v43;
      v45 = *(v42 + 96);
      v47 = *(v42 + 48);
      v46 = *(v42 + 64);
      v93 = *(v42 + 80);
      v94 = v45;
      v91 = v47;
      v92 = v46;
      v49 = *(v42 + 128);
      v48 = *(v42 + 144);
      v50 = *(v42 + 112);
      v98 = *(v42 + 160);
      v96 = v49;
      v97 = v48;
      v95 = v50;
      v51 = v84;
      swift_beginAccess();
      sub_1D778CEAC(&v88, v86);
      sub_1D778CEAC(&v88, v86);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v1 + v51);
      v53 = v85;
      *(v1 + v51) = 0x8000000000000000;
      v54 = sub_1D777BE68(v39, v41, v40);
      v56 = v53[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_24;
      }

      v60 = v55;
      if (v53[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = v54;
          sub_1D782F9D8();
          v54 = v74;
        }
      }

      else
      {
        sub_1D782CA00(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_1D777BE68(v39, v41, v40);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_26;
        }
      }

      if (v60)
      {
        v17 = v54;

        v18 = v85;
        v19 = v85[7] + 168 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 32);
        v86[0] = *v19;
        v86[1] = v21;
        v86[2] = v20;
        v22 = *(v19 + 96);
        v24 = *(v19 + 48);
        v23 = *(v19 + 64);
        v86[5] = *(v19 + 80);
        v86[6] = v22;
        v86[3] = v24;
        v86[4] = v23;
        v26 = *(v19 + 128);
        v25 = *(v19 + 144);
        v27 = *(v19 + 160);
        v86[7] = *(v19 + 112);
        v87 = v27;
        v86[8] = v26;
        v86[9] = v25;
        v28 = v88;
        v29 = v90;
        *(v19 + 16) = v89;
        *(v19 + 32) = v29;
        *v19 = v28;
        v30 = v91;
        v31 = v92;
        v32 = v94;
        *(v19 + 80) = v93;
        *(v19 + 96) = v32;
        *(v19 + 48) = v30;
        *(v19 + 64) = v31;
        v33 = v95;
        v34 = v96;
        v35 = v97;
        *(v19 + 160) = v98;
        *(v19 + 128) = v34;
        *(v19 + 144) = v35;
        *(v19 + 112) = v33;
        sub_1D778D0B0(v86);
      }

      else
      {
        v18 = v85;
        v85[(v54 >> 6) + 8] |= 1 << v54;
        v62 = v18[6] + 24 * v54;
        *v62 = v39;
        *(v62 + 8) = v41;
        *(v62 + 16) = v40;
        v63 = v18[7] + 168 * v54;
        v65 = v89;
        v64 = v90;
        *v63 = v88;
        *(v63 + 16) = v65;
        *(v63 + 32) = v64;
        v66 = v94;
        v68 = v91;
        v67 = v92;
        *(v63 + 80) = v93;
        *(v63 + 96) = v66;
        *(v63 + 48) = v68;
        *(v63 + 64) = v67;
        v69 = v95;
        v70 = v96;
        v71 = v97;
        *(v63 + 160) = v98;
        *(v63 + 128) = v70;
        *(v63 + 144) = v71;
        *(v63 + 112) = v69;
        v72 = v18[2];
        v58 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v58)
        {
          goto LABEL_25;
        }

        v18[2] = v73;
      }

      v15 &= v15 - 1;
      v1 = v82;
      *(v82 + v84) = v18;
      swift_endAccess();
      sub_1D778D0B0(&v88);
      v16 = v80;
      v12 = v81;
    }

    while (1)
    {
      v36 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v36 >= v16)
      {

        v5 = v79;
        goto LABEL_22;
      }

      v15 = *(v12 + 8 * v36);
      ++v10;
      if (v15)
      {
        v10 = v36;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_1D78B6784();
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1D78B3384();
    v75 = sub_1D78B3394();
    (*(*(v75 - 8) + 56))(v5, 0, 1, v75);
    v76 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSessionEndTime;
    swift_beginAccess();
    sub_1D77E5A94(v5, v1 + v76);
    return swift_endAccess();
  }

  return result;
}

double sub_1D77E4ECC(void *a1)
{
  v3 = sub_1D78B33C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if ([a1 isNetworkReachable])
  {
    sub_1D78B33B4();
    v9 = sub_1D78B33A4();
    v11 = v10;
    (*(v4 + 8))(v7, v3);
    v12 = (v1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
    *v12 = v9;
    v12[1] = v11;

    if (qword_1EE093E80 != -1)
    {
      swift_once();
    }

    v14[0] = byte_1EE09C310;
    v15 = qword_1EE09C318;
    v16 = unk_1EE09C320;

    sub_1D775A8FC(v14);
  }

  return result;
}

unint64_t sub_1D77E5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for OfferAction(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D774FDC0(a4, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  }

  if (v17 < 1)
  {
    return sub_1D774FDC0(a4, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  }

  result = sub_1D778CF14(a4, v15);
  if (v12 >= v17)
  {
    return sub_1D774FDC0(a4, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s16NewsSubscription19OfferRefreshContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = OfferPlacement.rawValue.getter();
  v8 = v7;
  if (v6 == OfferPlacement.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D78B6724();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  if (v2)
  {
    if (v4 && (v3 == v5 && v2 == v4 || (sub_1D78B6724() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D77E5418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D77E5474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1D77E55A8()
{
  result = qword_1EE094B28;
  if (!qword_1EE094B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094B28);
  }

  return result;
}

void sub_1D77E55FC()
{
  if (!qword_1EE08FB70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08FB70);
    }
  }
}

uint64_t sub_1D77E567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E56E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D775DD6C(result, a2);
  }

  return result;
}

void sub_1D77E56F4(uint64_t a1)
{
  if (!qword_1EC9CA430)
  {
    sub_1D773F004(255, &qword_1EE08FBB8, 0x1E69E58C0);
    v1 = sub_1D78B5BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA430);
    }
  }
}

uint64_t sub_1D77E5878(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D775DEFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D77E58E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA703220](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D78A6C8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D77E5980(uint64_t a1, uint64_t a2)
{
  sub_1D7744248(0, qword_1EE094C88, type metadata accessor for OfferAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E5A14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D775DEFC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D77E5A94(uint64_t a1, uint64_t a2)
{
  sub_1D7744248(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1D77E5B28()
{
  v1 = v0;
  v2 = sub_1D78B33C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D78B3F94();

  sub_1D78B3F94();

  sub_1D78B3F94();

  v7 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
  swift_beginAccess();
  *(v1 + v7) = MEMORY[0x1E69E7CC8];

  sub_1D78B33B4();
  v8 = sub_1D78B33A4();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = (v1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
  *v11 = v8;
  v11[1] = v10;

  return result;
}

double sub_1D77E5CB0()
{
  v1 = sub_1D78B33C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D78B33B4();
  v6 = sub_1D78B33A4();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  v9 = (v0 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
  *v9 = v6;
  v9[1] = v8;

  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v12[0] = byte_1EE09C310;
  v13 = qword_1EE09C318;
  v14 = unk_1EE09C320;

  sub_1D775A8FC(v12);

  return result;
}

uint64_t getEnumTagSinglePayload for OfferManager.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferManager.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D77E5F6C()
{
  result = qword_1EC9CA438;
  if (!qword_1EC9CA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA438);
  }

  return result;
}

uint64_t WebSubscriptionExpiredAlert.title.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t WebSubscriptionExpiredAlert.message.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCB50;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  v9 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D775ABD4();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v11 = [v1 name];
  v12 = sub_1D78B5C74();
  v14 = v13;

  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = v12;
  *(v4 + 80) = v14;
  v15 = sub_1D78B5C94();

  return v15;
}

uint64_t WebSubscriptionExpiredAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D77E6384(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D78B3134();

  return v4;
}

uint64_t sub_1D77E647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D78B3134();

  return v6;
}

uint64_t dispatch thunk of PostPurchaseOnboardingManagerType.startOnboarding(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

void sub_1D77E65C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  v26 = *v3;
  v6 = sub_1D78B3E24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69D6810];
  sub_1D77442AC(0, &qword_1EE08E4D8, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D78BCB50;
  sub_1D78B3DF4();
  sub_1D78B3E14();
  v29 = v12;
  sub_1D77E85CC(&qword_1EE08F240, 255, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
  sub_1D77442AC(0, &unk_1EE08E608, v11, MEMORY[0x1E69E62F8]);
  sub_1D778F8B0();
  sub_1D78B6324();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v27;
  v14[2] = v28;
  v14[3] = a3;
  v14[4] = v13;
  v14[5] = v15;

  sub_1D78B3964();

  (*(v7 + 8))(v10, v6);

  if (v4[3])
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D78BCAB0;
    v18 = sub_1D77E868C(v15);
    v20 = v19;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1D775ABD4();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = sub_1D78B60A4();
    sub_1D78B42C4("PostPurchaseOnboardingManager already presenting an onboarding flow. Cannot start a new flow for the trigger: %{public}@", 120, 2, &dword_1D7739000, v16, v21, v17, v26);

    sub_1D78B3954();
  }

  else
  {
    sub_1D7752C3C();
    sub_1D78B41F4();

    v22 = sub_1D78B4014();
    sub_1D78B4084();

    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v15;

    v24 = sub_1D78B4014();
    sub_1D78B4094();

    v25 = sub_1D78B4014();
    sub_1D78B40E4();
  }
}

double sub_1D77E6A68(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v6 = sub_1D77E6B14(a4), , !v6))
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  a1(v6);

  return result;
}

id sub_1D77E6B14(uint64_t a1)
{
  result = [*(v1 + 120) configuration];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      v5 = [v4 paidBundleConfig];
      swift_unknownObjectRelease();
      v6 = [v5 postPurchaseOnboardingConfigurationsByType];
      if (v6)
      {
        v7 = v6;
        sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
        sub_1D778FCD4(0);
        sub_1D778FD3C();
        v8 = sub_1D78B5BC4();

        v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        v10 = v9;
        if (*(v8 + 16))
        {
          v11 = sub_1D777BC98(v9);
          if (v12)
          {
            v13 = *(*(v8 + 56) + 8 * v11);

            return v13;
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77E6C88(uint64_t a1, uint64_t a2)
{
  sub_1D7754E10();
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D77E6CE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1D78B3394();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v63 - v19;
  v21 = sub_1D77E6B14(a3);
  if (v21)
  {
    v22 = v21;
    if (v21 >> 62)
    {
      if (sub_1D78B6534())
      {
LABEL_4:
        v64 = v13;
        v69 = v20;
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        v23 = qword_1EE09C268;
        sub_1D774FE1C(0);
        v66 = v24;
        v25 = swift_allocObject();
        v65 = xmmword_1D78BCAB0;
        *(v25 + 16) = xmmword_1D78BCAB0;
        v26 = sub_1D77E868C(a3);
        v28 = v27;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        v67 = sub_1D775ABD4();
        *(v25 + 64) = v67;
        *(v25 + 32) = v26;
        *(v25 + 40) = v28;
        v29 = sub_1D78B60A4();
        v68 = v23;
        sub_1D78B42C4("PostPurchaseOnboardingManager start onboarding flow for trigger: %{public}@", 75, 2, &dword_1D7739000, v23, v29, v25);

        if (qword_1EC9C8678 != -1)
        {
          swift_once();
        }

        type metadata accessor for PostPurchaseOnboardingManager();
        sub_1D77E85CC(&qword_1EC9CA448, v30, type metadata accessor for PostPurchaseOnboardingManager, &unk_1D78C27D0);
        sub_1D78B3574();
        v31 = v72;
        v32 = a2[22];
        v33 = [v32 postPurchaseOnboardingLastShownDate];
        if (v33)
        {
          v34 = v33;
          sub_1D78B3364();

          v35 = 0;
        }

        else
        {
          v35 = 1;
        }

        v36 = v71;
        (*(v71 + 56))(v17, v35, 1, v5);
        v70 = v5;
        v37 = v69;
        sub_1D77E87D8(v17, v69);
        if ((v31 & 1) != 0 || (v38 = *(v36 + 48), v38(v37, 1, v70) == 1))
        {
          a2[3] = v22;

          a2[4] = 0;
          sub_1D77E7354(v39);
          sub_1D78B3384();
          v40 = sub_1D78B3324();
          [v32 setPostPurchaseOnboardingLastShownDate_];

          v41 = swift_allocObject();
          *(v41 + 16) = v65;
          v42 = sub_1D78B32F4();
          v43 = v67;
          *(v41 + 56) = MEMORY[0x1E69E6158];
          *(v41 + 64) = v43;
          *(v41 + 32) = v42;
          *(v41 + 40) = v44;
          v45 = sub_1D78B60A4();
          sub_1D78B42C4("PostPurchaseOnboardingManager start first step, lastSeenDate set to: %{public}@", 79, 2, &dword_1D7739000, v68, v45, v41);

          (*(v36 + 8))(v8, v70);
          return sub_1D7756E78(v37);
        }

        v47 = 7104878;

        v48 = swift_allocObject();
        *(v48 + 16) = v65;
        v49 = v64;
        sub_1D7756DE4(v37, v64);
        v50 = v70;
        if (v38(v49, 1, v70) == 1)
        {
          sub_1D7756E78(v49);
          v51 = v67;
          *(v48 + 56) = MEMORY[0x1E69E6158];
          *(v48 + 64) = v51;
        }

        else
        {
          v52 = sub_1D78B32F4();
          v54 = v53;
          (*(v71 + 8))(v49, v50);
          v55 = v67;
          *(v48 + 56) = MEMORY[0x1E69E6158];
          *(v48 + 64) = v55;
          if (v54)
          {
            v47 = v52;
LABEL_19:
            *(v48 + 32) = v47;
            *(v48 + 40) = v54;
            v56 = sub_1D78B60A4();
            sub_1D78B42C4("PostPurchaseOnboardingManager lastSeenDate: %{public}@ found in UserInfo. Skipping the post purchase onboarding flow.", 117, 2, &dword_1D7739000, v68, v56, v48);

            sub_1D78B3954();
            return sub_1D7756E78(v69);
          }
        }

        v54 = 0xE300000000000000;
        goto LABEL_19;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v57 = qword_1EE09C268;
  v58 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1D78BCAB0;
  v60 = sub_1D77E868C(a3);
  v62 = v61;
  *(v59 + 56) = MEMORY[0x1E69E6158];
  *(v59 + 64) = sub_1D775ABD4();
  *(v59 + 32) = v60;
  *(v59 + 40) = v62;
  sub_1D78B42C4("PostPurchaseOnboardingManager missing post purchase onboarding configuration for the trigger: %{public}@", 104, 2, &dword_1D7739000, v57, v58, v59);

  return sub_1D78B3954();
}

void sub_1D77E7354(__n128 a1)
{
  v4 = v1;
  v5 = v1[3];
  if (!v5)
  {
    sub_1D78B3954();
    return;
  }

  v6 = v4[4];
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * v6 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = MEMORY[0x1DA703700](v6, v5);

LABEL_6:
  v8 = [v7 postPurchaseOnboardingStep];
  v6 = v7;
  v9 = [v6 landingPageArticleID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D78B5C74();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [v6 callToActionText];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D78B5C74();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  swift_beginAccess();
  if (!v4[21])
  {
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = objc_allocWithZone(type metadata accessor for PostPurchaseOnboardingContainerViewController());
    v21 = sub_1D7838C94(sub_1D77E886C, v19);
    v22 = v4[21];
    v4[21] = v21;
  }

  v2 = sub_1D77E7A90(v8, v4, v11, v13, v16, v18, v6);

  if (v2)
  {
    v23 = v4[21];
    if (!v23)
    {
      sub_1D78B3954();
LABEL_26:

      return;
    }

    v3 = v23;
    sub_1D7838A5C(v2);
    v24 = [v3 childViewControllers];
    sub_1D773F004(0, &qword_1EC9CA450, 0x1E69DD258);
    v25 = sub_1D78B5EB4();

    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

      if (v26 == 1)
      {
        v27 = v4[13];
        v28 = v4[14];
        __swift_project_boxed_opaque_existential_1(v4 + 10, v27);
        (*(v28 + 8))(v3, v27, v28);
      }

      goto LABEL_26;
    }

LABEL_31:
    v26 = sub_1D78B6534();
    goto LABEL_19;
  }

  v29 = v4[21];
  if (v29)
  {
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = sub_1D77E8874;
    v31[4] = v4;
    aBlock[4] = sub_1D77E887C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_16;
    v32 = _Block_copy(aBlock);
    v33 = v29;
    swift_retain_n();

    v34.receiver = v33;
    v34.super_class = type metadata accessor for PostPurchaseOnboardingContainerViewController();
    objc_msgSendSuper2(&v34, sel_dismissViewControllerAnimated_completion_, 1, v32);
    _Block_release(v32);
  }

  v4[3] = 0;
}

uint64_t sub_1D77E7760(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C268;
  v2 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D78B42C4("PostPurchaseOnboardingManager failed to refresh user info: %{public}@", 69, 2, &dword_1D7739000, v1, v2, v3);

  return sub_1D78B3954();
}

unint64_t sub_1D77E7898(uint64_t a1)
{
  result = sub_1D77E6B14(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:

    return 0;
  }

LABEL_17:
  v4 = sub_1D78B6534();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA703700](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v6 postPurchaseOnboardingStep] == 1)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_18;
    }
  }

  v9 = [v7 landingPageArticleID];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1D78B5C74();

  return v10;
}

double sub_1D77E79D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v2 + 168);
    *(v2 + 168) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1D78B3954();
  }

  return result;
}

uint64_t sub_1D77E7A90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), void *a6, void *a7)
{
  v60 = a6;
  v13 = sub_1D78B3294();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v58 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v26 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v52 = a2;
      sub_1D774584C((a2 + 16), &aBlock);
      v53 = v69;
      v54 = v70;
      __swift_project_boxed_opaque_existential_1(&aBlock, v69);
      v61 = a3;
      v62 = a4;
      v63 = a5;
      v64 = v60;
      swift_beginAccess();
      v55 = a2[21];
      v56 = *(v54 + 3);
      v32 = v55;
      v33 = v56(&v61, v55, v52, &off_1F526BDE8, v53, v54);
      goto LABEL_12;
    }

    if (a1 == 4)
    {
      v34 = &v58 - v24;
      v35 = v25;
      v36 = v23;
      v37 = [a7 deepLinkURL];
      if (v37)
      {
        v38 = v37;
        sub_1D78B3254();

        v39 = *(v35 + 32);
        v39(v34, v21, v36);
        v40 = a2;
        swift_beginAccess();
        v41 = a2[21];
        if (v41)
        {
          v59 = v34;
          swift_endAccess();
          v42 = v36;
          (*(v35 + 16))(v17, v34, v36);
          v43 = (*(v35 + 80) + 24) & ~*(v35 + 80);
          v44 = swift_allocObject();
          *(v44 + 16) = v40;
          v39((v44 + v43), v17, v42);
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = swift_allocObject();
          v46[2] = v45;
          v46[3] = sub_1D77E8888;
          v46[4] = v44;
          v70 = sub_1D77E89D0;
          v71 = v46;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_1D775FB6C;
          v69 = &block_descriptor_29_3;
          v47 = _Block_copy(&aBlock);
          v48 = v41;

          v49 = type metadata accessor for PostPurchaseOnboardingContainerViewController();
          v65.receiver = v48;
          v65.super_class = v49;
          objc_msgSendSuper2(&v65, sel_dismissViewControllerAnimated_completion_, 1, v47);
          _Block_release(v47);

          (*(v35 + 8))(v59, v42);
        }

        else
        {
          (*(v35 + 8))(v34, v36);
          swift_endAccess();
        }
      }

      return 0;
    }
  }

  else if (a1 == 1)
  {
    v50 = a2[19];
    v51 = a2[20];
    __swift_project_boxed_opaque_existential_1(a2 + 16, v50);
    aBlock = a3;
    v67 = a4;
    v68 = a5;
    v69 = v60;
    return (*(v51 + 8))(&aBlock, a2, &off_1F526BDE8, v50, v51);
  }

  else if (a1 == 2)
  {
    v27 = a2;
    sub_1D774584C((a2 + 16), &aBlock);
    v28 = v69;
    v29 = v70;
    __swift_project_boxed_opaque_existential_1(&aBlock, v69);
    v61 = a3;
    v62 = a4;
    v63 = a5;
    v64 = v60;
    swift_beginAccess();
    v30 = a2[21];
    v31 = *(v29 + 2);
    v32 = v30;
    v33 = v31(&v61, v30, v27, &off_1F526BDE8, v28, v29);
LABEL_12:
    v26 = v33;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  return v26;
}

uint64_t sub_1D77E7F7C(void *a1, uint64_t a2)
{
  a1[3] = 0;

  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  return sub_1D78B4784();
}

uint64_t sub_1D77E7FD8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;

  return sub_1D78B3954();
}

void sub_1D77E8028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 176);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7757030;
  *(v10 + 24) = v8;
  v12[4] = sub_1D7782BC8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D77E813C;
  v12[3] = &block_descriptor_38_0;
  v11 = _Block_copy(v12);

  [v9 forceSyncWithCompletion_];
  _Block_release(v11);
}

void sub_1D77E813C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D77E81B4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return v0;
}

uint64_t sub_1D77E820C()
{
  sub_1D77E81B4();

  return swift_deallocClassInstance();
}

double sub_1D77E8250(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1D77E65C4(a1, sub_1D77E89CC, v2);

  return result;
}

double sub_1D77E82CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_1D776AC18(a2, a3);
  sub_1D77E65C4(a1, sub_1D77E88F4, v6);

  return result;
}

double sub_1D77E83AC(__n128 a1)
{
  v2 = v1[4];
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_9:
    if (v3 < sub_1D78B6534())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v1[4] = v3;
  v4 = v1[3];
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 >> 62)
  {
    goto LABEL_9;
  }

  if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:

    sub_1D77E7354(a1);
    return result;
  }

LABEL_10:
  swift_beginAccess();
  v6 = v1[21];
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_1D77E8968;
    v8[4] = v1;
    aBlock[4] = sub_1D77E89D0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_53_2;
    v9 = _Block_copy(aBlock);
    v10 = v6;
    swift_retain_n();

    v11.receiver = v10;
    v11.super_class = type metadata accessor for PostPurchaseOnboardingContainerViewController();
    objc_msgSendSuper2(&v11, sel_dismissViewControllerAnimated_completion_, 1, v9);
    _Block_release(v9);
  }

  return result;
}

uint64_t sub_1D77E856C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;

  *(a1 + 24) = 0;

  return sub_1D78B3954();
}

uint64_t sub_1D77E85CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D77E868C(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 > 4)
  {
    v4 = 0xD000000000000021;
    v5 = 0xD000000000000022;
    if (a1 != 8)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 6)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (a1 != 4)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 2)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D77E87D8(uint64_t a1, uint64_t a2)
{
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E8888()
{
  v1 = *(sub_1D78B3294() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D77E7F7C(v2, v3);
}

uint64_t objectdestroy_40Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77E8938()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

char *sub_1D77E8A00(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16NewsSubscription23BundlePaywallPlayerView_displayStateCoordinator;
  sub_1D78B5BA4();
  swift_allocObject();
  *&v4[v9] = sub_1D78B5B94();
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BundlePaywallPlayerView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);

  sub_1D78B5B84();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D78B5B74();

  return v10;
}

void sub_1D77E8B40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((sub_1D78B5A74() & 1) != 0 && (sub_1D78B5A64() & 1) == 0)
    {
      v4 = [v3 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() playWithPlaybackKind:0 looping:1];
    }

    else
    {
      v4 = [v3 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() pause];
    }
  }
}

void sub_1D77E8D60(void *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v6 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v6)
  {
  }

  else
  {
    [a1 setActionAtItemEnd_];
    [a1 setVolume_];
    v4 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer_];

    v5 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setVideoGravity_];

    sub_1D78B5B84();
  }
}

id sub_1D77E8F00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BundlePaywallPlayerView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D77E8F70()
{
  result = qword_1EE08FEB8;
  if (!qword_1EE08FEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FEB8);
  }

  return result;
}

uint64_t sub_1D77E8FBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v45 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    for (i = (a4 + 32); ; i += 8)
    {
      v11 = i[5];
      v12 = i[3];
      v41 = i[4];
      v42 = v11;
      v13 = i[5];
      v14 = i[7];
      v43 = i[6];
      v44 = v14;
      v15 = i[1];
      v38[0] = *i;
      v38[1] = v15;
      v16 = i[3];
      v18 = *i;
      v17 = i[1];
      v39 = i[2];
      v40 = v16;
      v34 = v41;
      v35 = v13;
      v19 = i[7];
      v36 = v43;
      v37 = v19;
      v30 = v18;
      v31 = v17;
      v32 = v39;
      v33 = v12;
      sub_1D77F03C4(v38, &v21);
      a2(&v29, &v45, &v30);
      if (v5)
      {
        break;
      }

      v25 = v34;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      sub_1D77F0420(&v21);

      v8 = v29;
      v45 = v29;
      if (!--v9)
      {
        return v8;
      }
    }

    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    sub_1D77F0420(&v21);
  }

  return v8;
}

uint64_t sub_1D77E9110()
{
  v1 = v0;
  v2 = sub_1D78B5934();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25[-v9];
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  memcpy(v29, &v1[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig], 0x298uLL);
  if (sub_1D77EECEC(v29) == 1)
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    memcpy(v26, &v1[v15], sizeof(v26));
    memcpy(v28, &v1[v15], sizeof(v28));
    memcpy(v27, &v1[v15], sizeof(v27));
    sub_1D77EED10(v27, v25);
    sub_1D78B4194();
    sub_1D78A3DE4(v14);
    v16 = v17;
    sub_1D77EED6C(v26, &qword_1EE094AE8, &type metadata for PaywallConfig);
    sub_1D77EFF78(v14, sub_1D77EECB8);
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v18 = sub_1D78B5924();
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v25[-16] = v1;
  sub_1D78B41F4();
  (*(v3 + 16))(v7, v10, v2);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v1;
  (*(v3 + 32))(v21 + v20, v7, v2);
  v22 = v1;
  v23 = sub_1D78B4014();
  sub_1D78B4094();

  return (*(v3 + 8))(v10, v2);
}

uint64_t sub_1D77E9558(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D78B57A4();
  v8 = *(v68 - 8);
  v10 = MEMORY[0x1EEE9AC00](v68, v9);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v65 = &v63 - v13;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D78B3294();
  v67 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D78B5934();
  v22 = *(v70 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v70, v24);
  v63 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v63 - v27;
  v29 = a1[13];
  v99 = a1[12];
  v100 = v29;
  v30 = a1[15];
  v101 = a1[14];
  v102 = v30;
  v31 = a1[9];
  v95 = a1[8];
  v96 = v31;
  v32 = a1[11];
  v97 = a1[10];
  v98 = v32;
  v33 = a1[5];
  v91 = a1[4];
  v92 = v33;
  v34 = a1[7];
  v93 = a1[6];
  v94 = v34;
  v35 = a1[1];
  v87 = *a1;
  v88 = v35;
  v36 = a1[3];
  v89 = a1[2];
  v90 = v36;
  if (qword_1EE08FB98 != -1)
  {
    v69 = *MEMORY[0x1E69B5098];
    v62 = &v63 - v27;
    swift_once();
    v28 = v62;
  }

  v69 = v28;
  sub_1D78B5924();
  if (qword_1EE095590 != -1)
  {
    swift_once();
  }

  if (sub_1D78B35C4())
  {
    if (qword_1EC9C8588 != -1)
    {
      swift_once();
    }

    sub_1D77EFF30(&unk_1EC9CA570, v37, type metadata accessor for PaywallFormatContentService, &unk_1D78C28B8);
    sub_1D78B3574();
    sub_1D78B3274();

    v38 = v67;
    if ((*(v67 + 48))(v17, 1, v18) != 1)
    {
      (*(v38 + 32))(v21, v17, v18);
      v83 = v99;
      v84 = v100;
      v85 = v101;
      v86 = v102;
      v79 = v95;
      v80 = v96;
      v81 = v97;
      v82 = v98;
      v75 = v91;
      v76 = v92;
      v77 = v93;
      v78 = v94;
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v74 = v90;
      v60 = v69;
      v58 = sub_1D77E9D20(v21, v69, &v71);
      (*(v38 + 8))(v21, v18);
      (*(v22 + 8))(v60, v70);
      return v58;
    }

    sub_1D77EFF78(v17, sub_1D776F504);
  }

  v83 = v99;
  v84 = v100;
  v85 = v101;
  v86 = v102;
  v79 = v95;
  v80 = v96;
  v81 = v97;
  v82 = v98;
  v75 = v91;
  v76 = v92;
  v77 = v93;
  v78 = v94;
  v71 = v87;
  v72 = v88;
  v73 = v89;
  v74 = v90;
  v39 = sub_1D77EA154(&v71, v7);
  v40 = v68;
  if ((*(v8 + 48))(v7, 1, v68, v39) == 1)
  {
    v41 = sub_1D77EFF78(v7, sub_1D77EEEA8);
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v63 - 2) = v2;
    sub_1D78B41F4();
    v43 = v63;
    v45 = v69;
    v44 = v70;
    (*(v22 + 16))(v63, v69, v70);
    v46 = (*(v22 + 80) + 280) & ~*(v22 + 80);
    v47 = swift_allocObject();
    v48 = v100;
    *(v47 + 208) = v99;
    *(v47 + 224) = v48;
    v49 = v102;
    *(v47 + 240) = v101;
    *(v47 + 256) = v49;
    v50 = v96;
    *(v47 + 144) = v95;
    *(v47 + 160) = v50;
    v51 = v98;
    *(v47 + 176) = v97;
    *(v47 + 192) = v51;
    v52 = v92;
    *(v47 + 80) = v91;
    *(v47 + 96) = v52;
    v53 = v94;
    *(v47 + 112) = v93;
    *(v47 + 128) = v53;
    v54 = v88;
    *(v47 + 16) = v87;
    *(v47 + 32) = v54;
    v55 = v90;
    *(v47 + 48) = v89;
    *(v47 + 64) = v55;
    *(v47 + 272) = v2;
    (*(v22 + 32))(v47 + v46, v43, v44);
    sub_1D7772AE8(&v87, &v71);
    v56 = v2;
    v57 = sub_1D78B4014();
    v58 = sub_1D78B4084();

    (*(v22 + 8))(v45, v44);
  }

  else
  {
    v59 = v65;
    (*(v8 + 32))(v65, v7, v40);
    (*(v8 + 16))(v64, v59, v40);
    sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v58 = sub_1D78B4104();
    (*(v8 + 8))(v59, v40);
    (*(v22 + 8))(v69, v70);
  }

  return v58;
}

uint64_t sub_1D77E9D20(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v49 = a2;
  v48 = sub_1D78B5934();
  v5 = *(v48 - 8);
  v47 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v48, v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = sub_1D78B2F24();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[13];
  v67 = a3[12];
  v68 = v16;
  v17 = a3[15];
  v69 = a3[14];
  v70 = v17;
  v18 = a3[9];
  v63 = a3[8];
  v64 = v18;
  v19 = a3[11];
  v65 = a3[10];
  v66 = v19;
  v20 = a3[5];
  v59 = a3[4];
  v60 = v20;
  v21 = a3[7];
  v61 = a3[6];
  v62 = v21;
  v22 = a3[1];
  v55 = *a3;
  v56 = v22;
  v23 = a3[3];
  v57 = a3[2];
  v58 = v23;
  v24 = *(v9 + 16);
  v24(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v45 = v15;
  sub_1D78B2F14();
  v53 = v15;
  sub_1D78B41F4();
  v24(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v25 = (*(v9 + 80) + 272) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = v68;
  *(v26 + 13) = v67;
  *(v26 + 14) = v27;
  v28 = v70;
  *(v26 + 15) = v69;
  *(v26 + 16) = v28;
  v29 = v64;
  *(v26 + 9) = v63;
  *(v26 + 10) = v29;
  v30 = v66;
  *(v26 + 11) = v65;
  *(v26 + 12) = v30;
  v31 = v60;
  *(v26 + 5) = v59;
  *(v26 + 6) = v31;
  v32 = v62;
  *(v26 + 7) = v61;
  *(v26 + 8) = v32;
  v33 = v56;
  *(v26 + 1) = v55;
  *(v26 + 2) = v33;
  v34 = v58;
  *(v26 + 3) = v57;
  *(v26 + 4) = v34;
  (*(v9 + 32))(&v26[v25], &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_1D7772AE8(&v55, &v54);
  v35 = sub_1D78B4014();
  sub_1D78B4084();

  v36 = v46;
  v37 = v48;
  (*(v5 + 16))(v46, v49, v48);
  v38 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v39 = swift_allocObject();
  v40 = v52;
  *(v39 + 16) = v52;
  (*(v5 + 32))(v39 + v38, v36, v37);
  v41 = v40;
  v42 = sub_1D78B4014();
  sub_1D78B57A4();
  v43 = sub_1D78B4084();

  (*(v50 + 8))(v45, v51);
  return v43;
}

double sub_1D77EA154@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  memcpy(v39, (v3 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), sizeof(v39));
  if (sub_1D77EECEC(v39) == 1 || (memcpy(v36, (v3 + v10), sizeof(v36)), memcpy(v37, (v3 + v10), sizeof(v37)), memcpy(v38, (v3 + v10), sizeof(v38)), v11 = a1[13], v35[12] = a1[12], v35[13] = v11, v12 = a1[15], v35[14] = a1[14], v35[15] = v12, v13 = a1[9], v35[8] = a1[8], v35[9] = v13, v14 = a1[11], v35[10] = a1[10], v35[11] = v14, v15 = a1[5], v35[4] = a1[4], v35[5] = v15, v16 = a1[7], v35[6] = a1[6], v35[7] = v16, v17 = a1[1], v35[0] = *a1, v35[1] = v17, v18 = a1[3], v35[2] = a1[2], v35[3] = v18, sub_1D77EED10(v37, &v34), sub_1D78B4194(), v19 = sub_1D78A3554(v35, v9), v21 = v20, sub_1D77EED6C(v36, &qword_1EE094AE8, &type metadata for PaywallConfig), sub_1D77EFF78(v9, sub_1D77EECB8), !v21))
  {
    v30 = sub_1D78B57A4();
    (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  else
  {
    v22 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache;
    swift_beginAccess();
    v23 = *(v3 + v22);
    if (*(v23 + 16) && (v24 = sub_1D777BBB4(v19, v21), (v25 & 1) != 0))
    {
      v26 = v24;
      v27 = *(v23 + 56);
      v28 = sub_1D78B57A4();
      v29 = *(v28 - 8);
      (*(v29 + 16))(a2, v27 + *(v29 + 72) * v26, v28);
      (*(v29 + 56))(a2, 0, 1, v28);
    }

    else
    {
      v32 = sub_1D78B57A4();
      (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
    }

    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D77EA45C(const void *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v58 = a4;
  v60 = a3;
  v59 = sub_1D78B5934();
  v57 = *(v59 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59, v7);
  v8 = sub_1D78B5264();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v62, a1, sizeof(v62));
  v17 = a2[13];
  v61[12] = a2[12];
  v61[13] = v17;
  v18 = a2[15];
  v61[14] = a2[14];
  v61[15] = v18;
  v19 = a2[9];
  v61[8] = a2[8];
  v61[9] = v19;
  v20 = a2[11];
  v61[10] = a2[10];
  v61[11] = v20;
  v21 = a2[5];
  v61[4] = a2[4];
  v61[5] = v21;
  v22 = a2[7];
  v61[6] = a2[6];
  v61[7] = v22;
  v23 = a2[1];
  v61[0] = *a2;
  v61[1] = v23;
  v24 = a2[3];
  v61[2] = a2[2];
  v61[3] = v24;
  sub_1D78B4194();
  v25 = sub_1D78A3554(v61, v16);
  v27 = v26;
  sub_1D77EFF78(v16, sub_1D77EECB8);
  if (v27)
  {
    v28 = *MEMORY[0x1E69E7F88];
    v29 = *(v9 + 104);
    v53 = v12;
    v30 = v29(v12, v28, v8);
    v54 = v27;
    MEMORY[0x1EEE9AC00](v30, v31);
    v55 = v25;
    v32 = v60;
    *(&v51 - 4) = v60;
    *(&v51 - 3) = v25;
    *(&v51 - 2) = v33;
    *(&v51 - 1) = 25;
    sub_1D773F004(0, &qword_1EE08FF00, 0x1E69B5598);
    sub_1D78B41F4();
    v56 = v9;
    v51 = sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v34 = sub_1D78B6134();
    v52 = v8;
    v35 = v34;
    v36 = v57;
    v37 = v59;
    (*(v57 + 16))(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v59);
    v38 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v32;
    (*(v36 + 32))(v39 + v38, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
    sub_1D78B57A4();
    v40 = v32;
    sub_1D78B4084();

    v41 = sub_1D78B6104();
    v42 = swift_allocObject();
    v43 = v54;
    v44 = v55;
    v42[2] = v40;
    v42[3] = v44;
    v42[4] = v43;
    v45 = v40;
    v46 = sub_1D78B4084();

    (*(v56 + 8))(v53, v52);
    return v46;
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v48 = qword_1EE09C268;
    v49 = sub_1D78B6094();
    sub_1D78B42C4("PaywallFormatContentService invalid paid bundle flexible paywall config", 71, 2, &dword_1D7739000, v48, v49, MEMORY[0x1E69E7CC0]);
    sub_1D77EEFF4();
    swift_allocError();
    *v50 = 1;
    sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }
}

uint64_t sub_1D77EAA04(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(v14, &a1[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig], sizeof(v14));
  memcpy(v15, &a1[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig], sizeof(v15));
  v5 = sub_1D77EECEC(v15);
  if (v5 == 1)
  {
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1D773D21C(0, &qword_1EE08FD20, &protocolRef_FCNewsAppConfiguration);
    sub_1D78B41F4();
    *(swift_allocObject() + 16) = a1;
    v7 = a1;
    v8 = sub_1D78B4014();
    v9 = sub_1D78B4084();

    return v9;
  }

  else
  {
    memcpy(v12, v15, sizeof(v12));
    sub_1D7756D44(0, &qword_1EE0952B8, &type metadata for PaywallConfig, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    memcpy(v13, v14, sizeof(v13));
    sub_1D77EED10(v13, &v11);
    return sub_1D78B4104();
  }
}

void sub_1D77EABC0(const void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v75 = a4;
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D78B5934();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v11);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v12;
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v83, a1, sizeof(v83));
  sub_1D78B4194();
  sub_1D78A3DE4(v16);
  v18 = v17;
  sub_1D77EFF78(v16, sub_1D77EECB8);
  if (*(a2 + 16) <= *(v18 + 16) >> 3)
  {
    v82 = v18;

    sub_1D77EE570(a2);
    v78 = v82;
  }

  else
  {

    v78 = sub_1D77ED2DC(a2, v18);
  }

  v19 = *(v18 + 16);
  v20 = *(a2 + 16);
  v79 = a3;
  v68 = v10;
  if (v19 <= v20 >> 3)
  {
    v82 = a2;

    sub_1D77EE570(v18);

    v77 = v82;
  }

  else
  {

    v77 = sub_1D77ED2DC(v18, a2);
  }

  v23 = 0;
  v24 = *(v78 + 56);
  v67 = v78 + 56;
  v25 = 1 << *(v78 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v69 = v76 + 32;
  v70 = v76 + 16;
  v71 = v28;
  if (v27)
  {
    while (1)
    {
      v29 = v23;
LABEL_15:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v31 = *(*(v78 + 48) + ((v29 << 10) | (16 * v30)) + 8);
      MEMORY[0x1EEE9AC00](v21, v22);
      v32 = v79;
      *(&v66 - 4) = v79;
      *(&v66 - 3) = v33;
      v34 = v75;
      *(&v66 - 2) = v31;
      *(&v66 - 1) = v34;
      v81 = sub_1D78B57A4();

      v80 = sub_1D78B41F4();

      v35 = v76;
      v36 = v72;
      v37 = v74;
      (*(v76 + 16))(v72, v34, v74);
      v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v32;
      (*(v35 + 32))(v39 + v38, v36, v37);
      v40 = v32;
      v41 = sub_1D78B4014();
      sub_1D78B4084();

      v28 = v71;
      if (!v27)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v67 + 8 * v29);
    ++v23;
    if (v27)
    {
      v23 = v29;
      goto LABEL_15;
    }
  }

  v42 = 0;
  v43 = v77 + 56;
  v44 = 1 << *(v77 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v77 + 56);
  v47 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache;
  v48 = (v44 + 63) >> 6;
  v49 = v79;
  v81 = v77 + 56;
  while (v46)
  {
LABEL_27:
    v53 = (*(v77 + 48) + ((v42 << 10) | (16 * __clz(__rbit64(v46)))));
    v55 = *v53;
    v54 = v53[1];
    swift_beginAccess();

    v56 = sub_1D777BBB4(v55, v54);
    if (v57)
    {
      v58 = v56;
      v80 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *&v49[v47];
      v84 = v60;
      *&v49[v47] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D782FBD8();
        v60 = v84;
      }

      v61 = *(v60 + 56);
      v78 = sub_1D78B57A4();
      v62 = *(v78 - 8);
      v63 = v61 + *(v62 + 72) * v58;
      v64 = v58;
      v51 = v68;
      v65.n128_f64[0] = (*(v62 + 32))(v68, v63, v78);
      sub_1D782DCE8(v64, v60, v65);
      v49 = v79;
      *&v79[v47] = v60;

      (*(v62 + 56))(v51, 0, 1, v78);
      v43 = v81;
    }

    else
    {
      v50 = sub_1D78B57A4();
      v51 = v68;
      (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
      v43 = v81;
    }

    v46 &= v46 - 1;
    swift_endAccess();

    sub_1D77EFF78(v51, sub_1D77EEEA8);
  }

  while (1)
  {
    v52 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v52 >= v48)
    {

      return;
    }

    v46 = *(v43 + 8 * v52);
    ++v42;
    if (v46)
    {
      v42 = v52;
      goto LABEL_27;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1D77EB254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v33 = a2;
  v29 = sub_1D78B5934();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v29, v9);
  v10 = sub_1D78B5264();
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = *MEMORY[0x1E69E7FA0];
  v16 = *(v15 + 104);
  v32 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v32, v14);
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = 17;
  sub_1D773F004(0, &qword_1EE08FF00, 0x1E69B5598);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v17 = sub_1D78B6134();
  v18 = v29;
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v29);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v7 + 32))(v20 + v19, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  sub_1D78B57A4();
  v21 = a1;
  sub_1D78B4084();

  v22 = sub_1D78B6104();
  v23 = swift_allocObject();
  v24 = v33;
  v23[2] = v21;
  v23[3] = v24;
  v23[4] = v31;
  v25 = v21;

  v26 = sub_1D78B4084();

  (*(v35 + 8))(v32, v34);
  return v26;
}

void sub_1D77EB598(id *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  sub_1D77F0108(0, &qword_1EE090308, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v28 - v8;
  v32 = sub_1D78B57D4();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PaywallResourceConfigData(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*a1 assetHandle];
  v18 = sub_1D78B6064();
  v20 = v19;

  if (v20 >> 60 == 15)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE09C268;
    v22 = sub_1D78B6094();
    sub_1D78B42C4("PaywallFormatContentService missing paywall resource", 52, 2, &dword_1D7739000, v21, v22, MEMORY[0x1E69E7CC0]);
    sub_1D77EEFF4();
    swift_allocError();
    *v23 = 0;
    sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D78B40F4();
  }

  else
  {
    sub_1D78B5844();
    sub_1D78B5834();
    sub_1D77EFF30(&qword_1EE092748, 255, type metadata accessor for PaywallResourceConfigData, &unk_1D78C5454);
    sub_1D78B37F4();
    if (v3)
    {
      sub_1D77E56E0(v18, v20);
    }

    else
    {

      v24 = (v30 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService);
      v25 = *(v30 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 32);
      v29 = *(v30 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 24);
      v30 = v25;
      v28[6] = __swift_project_boxed_opaque_existential_1(v24, v29);
      v26 = sub_1D78B5234();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
      v27 = MEMORY[0x1E69E7CC0];
      v28[5] = sub_1D77EF480(MEMORY[0x1E69E7CC0], sub_1D77EFC54);
      v28[4] = sub_1D77EF480(v27, sub_1D77EFC54);
      v28[3] = sub_1D77EF57C(v27, sub_1D77EFB48);
      v28[2] = sub_1D77EF480(v27, sub_1D77EFA5C);
      sub_1D77EF57C(v27, sub_1D77EFA00);
      sub_1D77EF57C(v27, sub_1D77EF928);
      v28[1] = a3;
      sub_1D77EF678(v27);
      sub_1D78B57C4();
      sub_1D78B58C4();
      sub_1D77E56E0(v18, v20);
      (*(v31 + 8))(v12, v32);
      sub_1D77EFF78(v16, type metadata accessor for PaywallResourceConfigData);
    }
  }
}

uint64_t sub_1D77EBAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v6 = sub_1D78B57A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 16);
  v15(v14, a1, v6);
  (*(v7 + 56))(v14, 0, 1, v6);
  swift_beginAccess();

  sub_1D7828540(v14, v17, a4);
  swift_endAccess();
  v15(v10, a1, v6);
  sub_1D77F0108(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77EBCFC(uint64_t a1)
{
  sub_1D77EFBEC(0, &unk_1EE0951F0, &qword_1EE08FD20, &protocolRef_FCNewsAppConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D77EBD8C(id *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v5 = objc_msgSend(v4, sel_paidBundleConfig), v6 = objc_msgSend(v5, sel_flexiblePaywallConfig), v5, v6))
  {
    sub_1D78B5BC4();

    sub_1D78B2F54();
    swift_allocObject();
    sub_1D78B2F44();
    v7 = objc_opt_self();
    v8 = sub_1D78B5BB4();

    v20[0] = 0;
    v9 = [v7 dataWithJSONObject:v8 options:0 error:v20];

    v10 = v20[0];
    if (v9)
    {
      v11 = sub_1D78B32D4();
      v13 = v12;

      sub_1D77EFD20();
      sub_1D78B2F34();

      if (v2)
      {
        return sub_1D775DD6C(v11, v13);
      }

      else
      {
        sub_1D775DD6C(v11, v13);
        memcpy(__dst, __src, sizeof(__dst));
        memcpy(v19, __src, sizeof(v19));
        nullsub_1();
        memcpy(v20, (a2 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), sizeof(v20));
        memcpy((a2 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), v19, 0x298uLL);
        sub_1D77EED10(__dst, v17);
        sub_1D77EED6C(v20, &qword_1EE094AE8, &type metadata for PaywallConfig);
        memcpy(v17, __dst, sizeof(v17));
        sub_1D7756D44(0, &qword_1EE0952B8, &type metadata for PaywallConfig, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        return sub_1D78B4104();
      }
    }

    else
    {
      v16 = v10;

      sub_1D78B31C4();

      return swift_willThrow();
    }
  }

  else
  {
    sub_1D77EEFF4();
    swift_allocError();
    *v15 = 1;
    sub_1D7756D44(0, &qword_1EE0952B8, &type metadata for PaywallConfig, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }
}

void sub_1D77EC0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_configurationManager);
  v12 = swift_allocObject();
  v12[2] = sub_1D7752FB0;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v14[4] = sub_1D77EFD7C;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D7752E68;
  v14[3] = &block_descriptor_17;
  v13 = _Block_copy(v14);

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_1D77EC228(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a3(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v8 = a2;
      v9 = a2;
      v10 = v8;
    }

    else
    {
      sub_1D77EEFF4();
      v10 = swift_allocError();
      v8 = v10;
      *v11 = 1;
    }

    a5(v10);
  }
}

uint64_t sub_1D77EC2F4(uint64_t a1)
{
  v1 = [objc_opt_self() sharedSession];
  v2 = sub_1D78B3FF4();

  return v2;
}

uint64_t sub_1D77EC360(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v67 = a3;
  v4 = sub_1D78B2F24();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3294();
  v64 = *(v10 - 8);
  v65 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v56 - v15;
  sub_1D77F00D4(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D78B3124();
  v66 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3814();
  swift_allocObject();
  sub_1D78B3804();
  sub_1D77EFD20();
  v28 = v70;
  sub_1D78B37F4();
  if (v28)
  {

LABEL_3:
    sub_1D77EEFF4();
    swift_allocError();
    *v29 = 1;
    sub_1D7756D44(0, &qword_1EC9CA580, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  v57 = v23;
  v31 = v66;

  memcpy(v69, v68, 0x298uLL);
  v32 = a2[13];
  v68[12] = a2[12];
  v68[13] = v32;
  v33 = a2[15];
  v68[14] = a2[14];
  v68[15] = v33;
  v34 = a2[9];
  v68[8] = a2[8];
  v68[9] = v34;
  v35 = a2[11];
  v68[10] = a2[10];
  v68[11] = v35;
  v36 = a2[5];
  v68[4] = a2[4];
  v68[5] = v36;
  v37 = a2[7];
  v68[6] = a2[6];
  v68[7] = v37;
  v38 = a2[1];
  v68[0] = *a2;
  v68[1] = v38;
  v39 = a2[3];
  v68[2] = a2[2];
  v68[3] = v39;
  sub_1D78B4194();
  v40 = sub_1D78A3554(v68, v27);
  v42 = v41;
  sub_1D77F016C(v69);
  sub_1D77EFF78(v27, sub_1D77EECB8);
  if (!v42)
  {
    goto LABEL_3;
  }

  v43 = v19;
  sub_1D78B3094();
  v44 = v19;
  v45 = v20;
  if ((*(v31 + 48))(v44, 1, v20) == 1)
  {

    sub_1D77EFF78(v43, sub_1D77F00D4);
    goto LABEL_3;
  }

  v46 = v57;
  (*(v31 + 32))(v57, v43, v45);
  MEMORY[0x1DA700380](v40, v42);
  v47 = v63;
  sub_1D78B30A4();
  v49 = v64;
  v48 = v65;
  if ((*(v64 + 48))(v47, 1, v65) == 1)
  {
    sub_1D77EFF78(v47, sub_1D776F504);
    sub_1D77EEFF4();
    swift_allocError();
    *v50 = 1;
    sub_1D7756D44(0, &qword_1EC9CA580, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v51 = sub_1D78B40F4();
    (*(v31 + 8))(v46, v45);
    return v51;
  }

  else
  {
    v52 = v59;
    (*(v49 + 32))(v59, v47, v48);
    (*(v49 + 16))(v58, v52, v48);
    v53 = v60;
    sub_1D78B2F14();
    v54 = v48;
    v55 = [objc_opt_self() sharedSession];
    v70 = sub_1D78B3FF4();

    (*(v61 + 8))(v53, v62);
    (*(v49 + 8))(v52, v54);
    (*(v31 + 8))(v57, v45);
    return v70;
  }
}

uint64_t sub_1D77ECA0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v26 = a2;
  sub_1D77F0108(0, &qword_1EE090308, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v24 - v7;
  v9 = sub_1D78B57D4();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PaywallResourceConfigData(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  sub_1D78B3814();
  swift_allocObject();
  sub_1D78B3804();
  sub_1D77EFF30(&qword_1EE092748, 255, type metadata accessor for PaywallResourceConfigData, &unk_1D78C5454);
  sub_1D78B37F4();

  if (!v3)
  {
    v18 = (v26 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService);
    v20 = *(v26 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 24);
    v19 = *(v26 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 32);
    v25 = v9;
    v26 = v19;
    v24[4] = __swift_project_boxed_opaque_existential_1(v18, v20);
    v21 = sub_1D78B5234();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = MEMORY[0x1E69E7CC0];
    v24[3] = sub_1D77EF480(MEMORY[0x1E69E7CC0], sub_1D77EFC54);
    v24[2] = sub_1D77EF480(v22, sub_1D77EFC54);
    v24[1] = sub_1D77EF57C(v22, sub_1D77EFB48);
    sub_1D77EF480(v22, sub_1D77EFA5C);
    sub_1D77EF57C(v22, sub_1D77EFA00);
    sub_1D77EF57C(v22, sub_1D77EF928);
    sub_1D77EF678(v22);
    sub_1D78B57C4();
    v17 = sub_1D78B58C4();
    (*(v27 + 8))(v12, v25);
    sub_1D77EFF78(v16, type metadata accessor for PaywallResourceConfigData);
  }

  return v17;
}

uint64_t sub_1D77ECE30(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v59[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    sub_1D78B6814();

    sub_1D78B5D14();
    v11 = sub_1D78B6844();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1D78B6724() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v43 = v23;

  v44 = v43;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    MEMORY[0x1EEE9AC00](v20, v21);
    v13 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v13, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v13 + 8 * v14) & ~v15;
    v54 = v13;
    *(v13 + 8 * v14) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_1D77EDE64(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v14 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v14);
        v33 = *v32;
        v15 = v32[1];
        ++v14;
        v2 = v57;
        sub_1D78B6814();

        sub_1D78B5D14();
        v34 = sub_1D78B6844();
        v35 = -1 << *(v2 + 32);
        v36 = v34 & ~v35;
        v13 = v36 >> 6;
        v37 = 1 << v36;
        if (((1 << v36) & v58[v36 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v38 = (*(v2 + 48) + 16 * v36);
      if (*v38 != v33 || v38[1] != v15)
      {
        v40 = ~v35;
        v2 = 1;
        while ((sub_1D78B6724() & 1) == 0)
        {
          v36 = (v36 + 1) & v40;
          v13 = v36 >> 6;
          v37 = 1 << v36;
          if (((1 << v36) & v58[v36 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v41 = (*(v57 + 48) + 16 * v36);
          if (*v41 == v33 && v41[1] == v15)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v13];
      v54[v13] = v31 & ~v37;
      if ((v31 & v37) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v14;
      if (v53 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v45 = swift_slowAlloc();
  memcpy(v45, v7, v44);
  v46 = v50;
  sub_1D77ED84C(v45, v51, v2, v13, v59);
  v48 = v47;

  if (!v46)
  {

    MEMORY[0x1DA7043F0](v45, -1, -1);

    return v48;
  }

  result = MEMORY[0x1DA7043F0](v45, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D77ED2DC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = (a2 + 56);

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1D78B6814();

    sub_1D78B5D14();
    v23 = sub_1D78B6844();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1D78B6724() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v27 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v57 = &v55;
    MEMORY[0x1EEE9AC00](v28, v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1D77EDE64(v60, v56, v58, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_1D78B6814();

            sub_1D78B5D14();
            v42 = sub_1D78B6844();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_1D78B6724() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v62;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v62;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v63, v50);
  v52 = v55;
  sub_1D77EDA30(v51, v56, v5, v2, v64);
  v54 = v53;

  if (!v52)
  {

    MEMORY[0x1DA7043F0](v51, -1, -1);
    v3 = v64[0];
    v59 = v65;
    v5 = v54;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1D779D528(v13);
    return v5;
  }

  result = MEMORY[0x1DA7043F0](v51, -1, -1);
  __break(1u);
  return result;
}

void sub_1D77ED84C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          sub_1D77EDE64(a1, a2, v26, a3);
          return;
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1D78B6814();

        sub_1D78B5D14();
        v16 = sub_1D78B6844();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1D78B6724() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = a1[v19];
      a1[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1D77EDA30(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_1D77EDE64(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1D78B6814();

        sub_1D78B5D14();
        v19 = sub_1D78B6844();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1D78B6724() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1D77EDC68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D77EFD88(0, &unk_1EC9CA560, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  result = sub_1D78B6424();
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
    result = MEMORY[0x1DA703AA0](*(v9 + 40), v16, 4);
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
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
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

uint64_t sub_1D77EDE64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D77EFD88(0, &unk_1EE08FB58, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  result = sub_1D78B6424();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1D78B6814();

    sub_1D78B5D14();
    result = sub_1D78B6844();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

void sub_1D77EE094()
{
  v1 = v0;
  sub_1D77EFD88(0, &unk_1EC9CA560, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v2 = *v0;
  v3 = sub_1D78B6404();
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
}

void sub_1D77EE1E0()
{
  v1 = v0;
  sub_1D77EFD88(0, &unk_1EE08FB58, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1D78B6404();
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

void sub_1D77EE348()
{
  v1 = v0;
  v2 = sub_1D78B56F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EFDD8(0);
  v7 = *v0;
  v8 = sub_1D78B6404();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    v10 = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 56 + 8 * v11)
    {
      memmove(v10, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    v25 = v3 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
      (*(v3 + 32))(*(v9 + 48) + v21, v6, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
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
    *v1 = v9;
  }
}

void sub_1D77EE570(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1D77EE69C(v12, v13);

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
        return;
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
}

uint64_t sub_1D77EE69C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D78B6814();
  sub_1D78B5D14();
  v6 = sub_1D78B6844();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D78B6724() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D77EE1E0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D77EE7D8(v8);
  *v2 = v16;
  return v12;
}

void sub_1D77EE7D8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D78B6344();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D78B6814();

        sub_1D78B5D14();
        v10 = sub_1D78B6844();

        v11 = v10 & v7;
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
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void *sub_1D77EE99C(void *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache] = MEMORY[0x1E69E7CC8];
  v10 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  sub_1D77EEC7C(__src);
  memcpy(&v4[v10], __src, 0x298uLL);
  sub_1D774584C(a1, &v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService]);
  *&v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_configurationManager] = a2;
  sub_1D774584C(a3, &v4[OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_resourceService]);
  v25.receiver = v4;
  v25.super_class = ObjectType;
  swift_unknownObjectRetain();
  v11 = objc_msgSendSuper2(&v25, sel_init);
  v12 = [a4 cachedSubscription];
  if (objc_getAssociatedObject(v12, v12 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  v13 = MEMORY[0x1E69E7CA0];
  if (!*(&v22 + 1))
  {
    sub_1D77EED6C(&v23, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_9;
  }

  sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v14 = v20;
  v15 = [v20 integerValue];
  if (v15 == -1)
  {

    goto LABEL_21;
  }

  v16 = v15;
LABEL_10:
  if (objc_getAssociatedObject(v12, ~v16))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v17 = v20;
      v18 = [v17 integerValue];

      if ((v18 ^ v16))
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1D77EED6C(&v23, &qword_1EE08F9C0, v13 + 8);
  }

  if ((v16 & 1) == 0)
  {
LABEL_19:
    sub_1D77E9110();
  }

LABEL_21:
  [a4 addObserver_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

double sub_1D77EEC7C(uint64_t a1)
{
  bzero(a1, 0x280uLL);
  *(a1 + 640) = 1;
  result = 0.0;
  *(a1 + 648) = 0u;
  return result;
}

uint64_t sub_1D77EECEC(uint64_t a1)
{
  v1 = *(a1 + 640);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77EED6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7756D44(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D77EEEFC(uint64_t a1)
{
  sub_1D78B5934();
  __swift_project_boxed_opaque_existential_1((*(v1 + 16) + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService), *(*(v1 + 16) + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatService + 24));
  return sub_1D78B58D4();
}

unint64_t sub_1D77EEFF4()
{
  result = qword_1EC9CA4F0;
  if (!qword_1EC9CA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA4F0);
  }

  return result;
}

void sub_1D77EF048()
{
  v1 = v0;
  sub_1D77EEEA8(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig;
  memcpy(v49, (v1 + OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_paywallConfig), 0x298uLL);
  if (sub_1D77EECEC(v49) == 1)
  {
    v38 = 0;
    v11 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    memcpy(v46, (v1 + v10), sizeof(v46));
    memcpy(v47, (v1 + v10), sizeof(v47));
    memcpy(v48, (v1 + v10), sizeof(v48));
    sub_1D77EED10(v47, &v45);
    sub_1D78B4194();
    sub_1D78A57B8();
    v13 = v12;
    v14 = sub_1D77EED6C(v46, &qword_1EE094AE8, &type metadata for PaywallConfig);
    MEMORY[0x1EEE9AC00](v14, v15);
    *(&v38 - 2) = v9;
    v11 = sub_1D77E8FBC(MEMORY[0x1E69E7CD0], sub_1D77F03A8, (&v38 - 4), v13);
    v38 = 0;

    sub_1D77EFF78(v9, sub_1D77EECB8);
  }

  v16 = 0;
  v17 = v11 + 56;
  v18 = 1 << *(v11 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v11 + 56);
  v21 = OBJC_IVAR____TtC16NewsSubscription27PaywallFormatContentService_formatContentCache;
  v22 = (v18 + 63) >> 6;
  v42 = v11 + 56;
  v43 = v5;
  v39 = v1;
  v40 = v11;
  while (v20)
  {
LABEL_14:
    v26 = (*(v11 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v20)))));
    v28 = *v26;
    v27 = v26[1];
    swift_beginAccess();

    v44 = v27;
    v29 = sub_1D777BBB4(v28, v27);
    if (v30)
    {
      v31 = v29;
      v32 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v1 + v21);
      v46[0] = v34;
      *(v1 + v21) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D782FBD8();
        v34 = v46[0];
      }

      v35 = *(v34 + 56);
      v41 = sub_1D78B57A4();
      v36 = *(v41 - 8);
      v37.n128_f64[0] = (*(v36 + 32))(v32, v35 + *(v36 + 72) * v31, v41);
      sub_1D782DCE8(v31, v34, v37);
      v1 = v39;
      *(v39 + v21) = v34;

      v24 = v32;
      (*(v36 + 56))(v32, 0, 1, v41);
      v11 = v40;
    }

    else
    {
      v23 = sub_1D78B57A4();
      v24 = v43;
      (*(*(v23 - 8) + 56))(v43, 1, 1, v23);
    }

    v17 = v42;
    v20 &= v20 - 1;
    swift_endAccess();

    sub_1D77EFF78(v24, sub_1D77EEEA8);
  }

  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      return;
    }

    v20 = *(v17 + 8 * v25);
    ++v16;
    if (v20)
    {
      v16 = v25;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1D77EF480(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D777BBB4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D77EF57C(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D777BBB4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D77EF678(uint64_t a1)
{
  sub_1D77EF85C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D77EFA7C(0, &qword_1EC9CA4F8, MEMORY[0x1E69B6838]);
    v9 = sub_1D78B6564();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D77EF8C4(v11, v7);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D777BBB4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1D78B5B44();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D77EF85C(uint64_t a1)
{
  if (!qword_1EE0900F0)
  {
    sub_1D78B5B44();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0900F0);
    }
  }
}

uint64_t sub_1D77EF8C4(uint64_t a1, uint64_t a2)
{
  sub_1D77EF85C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D77EF950(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D77F0108(255, a3, a4, MEMORY[0x1E69D6B18]);
    v5 = sub_1D78B6574();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D77EFA7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B6574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D77EFAE0(uint64_t a1)
{
  if (!qword_1EC9CA538)
  {
    sub_1D773F004(255, &qword_1EC9CA540, 0x1E69B5578);
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA538);
    }
  }
}

void sub_1D77EFB68(uint64_t a1)
{
  if (!qword_1EC9CA550)
  {
    sub_1D77EFBEC(255, &qword_1EE08E5C8, &unk_1EE08E580, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA550);
    }
  }
}

void sub_1D77EFBEC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773D21C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D77EFC54(uint64_t a1)
{
  if (!qword_1EC9CA558)
  {
    sub_1D77EFBEC(255, &qword_1EE08E5C8, &unk_1EE08E580, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA558);
    }
  }
}

unint64_t sub_1D77EFD20()
{
  result = qword_1EE094AF0;
  if (!qword_1EE094AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094AF0);
  }

  return result;
}

void sub_1D77EFD88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1D78B6434();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D77EFDD8(uint64_t a1)
{
  if (!qword_1EE08FB68)
  {
    sub_1D78B56F4();
    sub_1D77EFF30(&unk_1EE0902A0, 255, MEMORY[0x1E69B6000], MEMORY[0x1E69B6008]);
    v1 = sub_1D78B6434();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FB68);
    }
  }
}

uint64_t sub_1D77EFF30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77EFF78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D77F0108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1D78B5934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_11Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1D77F0488()
{
  result = qword_1EC9CA588;
  if (!qword_1EC9CA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA588);
  }

  return result;
}

uint64_t sub_1D77F055C()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EC9CA590);
  __swift_project_value_buffer(v0, qword_1EC9CA590);
  v1 = *MEMORY[0x1E69B5020];
  return sub_1D78B4314();
}

uint64_t sub_1D77F05FC()
{
  v1 = sub_1D78B31D4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1D774040C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D77F0714, 0, 0);
}

uint64_t sub_1D77F0714()
{
  sub_1D77F0E38();
  sub_1D774040C(0, &qword_1EC9CA5A8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];
  (*(v2 + 56))(v0[5], 1, 1, v1);
  (*(v6 + 104))(v4, *MEMORY[0x1E6968F70], v5);

  sub_1D78B3284();

  v7 = v0[1];

  return v7(v3);
}

double sub_1D77F090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B43F4();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v36 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B4464();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B4414();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D78B4434();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v14);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D78B43E4();
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = sub_1D78B4444();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = a1;
  v21[1] = a2;
  (*(v22 + 104))(v21, *MEMORY[0x1E69D6280]);
  v23 = MEMORY[0x1E69D61D0];
  sub_1D774040C(0, &qword_1EC9CA5B0, MEMORY[0x1E69D61D0], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D78BCAB0;

  sub_1D78B43D4();
  v41 = v24;
  sub_1D77F1094();
  sub_1D774040C(0, &qword_1EC9CA5C0, v23, MEMORY[0x1E69E62F8]);
  sub_1D77F10EC();
  sub_1D78B6324();
  (*(v13 + 104))(v28, *MEMORY[0x1E69D6270], v29);
  (*(v31 + 104))(v30, *MEMORY[0x1E69D6260], v32);
  (*(v34 + 104))(v33, *MEMORY[0x1E69D62A0], v35);
  (*(v37 + 104))(v36, *MEMORY[0x1E69D6258], v38);
  sub_1D78B4474();
  swift_allocObject();
  v40 = 0;
  v25 = v39;
  sub_1D78B4454();
  if (!v25)
  {
    sub_1D78B4404();
  }

  return result;
}

double sub_1D77F0E38()
{
  if (qword_1EC9C8488 != -1)
  {
    swift_once();
  }

  v0 = sub_1D78B4304();
  __swift_project_value_buffer(v0, qword_1EC9CA590);
  v1 = sub_1D78B42E4();
  v2 = sub_1D78B60A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D7739000, v1, v2, "Performing checkpoint operation on databases", v3, 2u);
    MEMORY[0x1DA7043F0](v3, -1, -1);
  }

  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  return sub_1D77F090C(qword_1EE0905C8, unk_1EE0905D0);
}

unint64_t sub_1D77F1094()
{
  result = qword_1EC9CA5B8;
  if (!qword_1EC9CA5B8)
  {
    sub_1D78B43E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5B8);
  }

  return result;
}

unint64_t sub_1D77F10EC()
{
  result = qword_1EC9CA5C8;
  if (!qword_1EC9CA5C8)
  {
    sub_1D774040C(255, &qword_1EC9CA5C0, MEMORY[0x1E69D61D0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5C8);
  }

  return result;
}

uint64_t sub_1D77F1178(uint64_t a1, int a2)
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

uint64_t sub_1D77F11C0(uint64_t result, int a2, int a3)
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

uint64_t SubscriptionOfflineAlert.title.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1D78B5C74();
    v5 = v4;

    if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
    {
    }

    else
    {
      sub_1D78B6724();
    }
  }

  type metadata accessor for Localized();
  v7 = [v0 bundleForClass_];
  v8 = sub_1D78B3134();

  return v8;
}

uint64_t SubscriptionOfflineAlert.message.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1D78B5C74();
    v5 = v4;

    if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
    {
    }

    else
    {
      sub_1D78B6724();
    }
  }

  type metadata accessor for Localized();
  v7 = [v0 bundleForClass_];
  v8 = sub_1D78B3134();

  return v8;
}

uint64_t SubscriptionOfflineAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionOfflineAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t SubscriptionOfflineAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77F1758()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77F1864(void *a1, char a2)
{
  if ([a1 isExplicitContent])
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v4 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D78BCAB0;
    v6 = [a1 identifier];
    v7 = sub_1D78B5C74();
    v9 = v8;

    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1D775ABD4();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    v10 = sub_1D78B60A4();
    sub_1D78B42C4("Bundle Soft paywall not allowed due to explicit content identifier=%{public}@", 77, 2, &dword_1D7739000, v4, v10, v5);
    v11 = 0;
  }

  else
  {
    v12 = sub_1D77F1A64(a2 & 1);
    sub_1D77F1C88(a2 & 1);
    v14 = v13;
    v11 = v12 & (v13 ^ 1);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D78BF690;
    v16 = MEMORY[0x1E69E6370];
    v17 = MEMORY[0x1E69E63A8];
    *(v15 + 56) = MEMORY[0x1E69E6370];
    *(v15 + 64) = v17;
    *(v15 + 32) = v11 & 1;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = v12;
    *(v15 + 136) = v16;
    *(v15 + 144) = v17;
    *(v15 + 112) = v14 & 1;
    sub_1D78B60A4();
    sub_1D78B42C4("Bundle Soft paywall meter check for article, canShow=%d minWithNoPaywallReached=%d maxWithPaywallReached=%d", v19, v20, v21);
  }

  return v11 & 1;
}

BOOL sub_1D77F1A64(char a1)
{
  v2 = v1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BF690;
  v7 = sub_1D775ABD4();
  v8 = v7;
  v9 = 29545;
  if (v3 < v4)
  {
    v9 = 0x746F6E207369;
  }

  v10 = 0xE600000000000000;
  if (v3 >= v4)
  {
    v10 = 0xE200000000000000;
  }

  v11 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v7;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  v12 = sub_1D78B66E4();
  *(v6 + 96) = v11;
  *(v6 + 104) = v8;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  v14 = sub_1D78B66E4();
  *(v6 + 136) = v11;
  *(v6 + 144) = v8;
  v15 = v5;
  *(v6 + 112) = v14;
  *(v6 + 120) = v16;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4("BundleArticleSoftPaywallMeter.minWithNoPaywallReached: limit %@ reached. Count: %@. Limit: %@.", 94, 2, &dword_1D7739000, v5, v17, v6);

  if (v3 < v4)
  {
    sub_1D77F1ED4(a1 & 1);
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      v18 = [objc_opt_self() standardUserDefaults];
      v19 = *(v2 + 40);
      v20 = sub_1D78B5C44();
      [v18 setInteger:v19 forKey:v20];

      *(v2 + 40) = 0;
    }

    v21 = sub_1D78B60A4();
    sub_1D78B42C4("BundleArticleSoftPaywallMeter.minWithNoPaywallReached: reseting the count to zero.", 82, 2, &dword_1D7739000, v15, v21, MEMORY[0x1E69E7CC0]);
  }

  return v3 >= v4;
}

void sub_1D77F1C88(char a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BF690;
  v6 = sub_1D775ABD4();
  v7 = v6;
  v8 = 29545;
  if (v2 < v3)
  {
    v8 = 0x746F6E207369;
  }

  v9 = 0xE600000000000000;
  if (v2 >= v3)
  {
    v9 = 0xE200000000000000;
  }

  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = v6;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  v11 = sub_1D78B66E4();
  *(v5 + 96) = v10;
  *(v5 + 104) = v7;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  v13 = sub_1D78B66E4();
  *(v5 + 136) = v10;
  *(v5 + 144) = v7;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  v15 = sub_1D78B60A4();
  sub_1D78B42C4("BundleArticleSoftPaywallMeter.maxWithPaywallReached: limit %@ reached. Count: %@. Limit: %@.", 92, 2, &dword_1D7739000, v4, v15, v5);

  if (v2 < v3)
  {
    if ((a1 & 1) == 0)
    {
      v17 = *(v1 + 32);
      if (__OFADD__(v17, 1))
      {
        __break(1u);
      }

      else
      {
        *(v1 + 32) = v17 + 1;
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D78BCAB0;
        v19 = sub_1D78B66E4();
        *(v18 + 56) = v10;
        *(v18 + 64) = v7;
        *(v18 + 32) = v19;
        *(v18 + 40) = v20;
        v21 = sub_1D78B60A4();
        sub_1D78B42C4("BundleArticleSoftPaywallMeter article with paywall count incremented to %@.", 75, 2, &dword_1D7739000, v4, v21, v18);
      }
    }
  }

  else
  {
    v16 = sub_1D78B60A4();
    sub_1D78B42C4("BundleArticleSoftPaywallMeter.maxWithPaywallReached: not allowing any more soft paywalls.", 89, 2, &dword_1D7739000, v4, v16, MEMORY[0x1E69E7CC0]);
  }
}

double sub_1D77F1ED4(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = [objc_opt_self() standardUserDefaults];
      v5 = *(v1 + 40);
      v6 = sub_1D78B5C44();
      [v4 setInteger:v5 forKey:v6];

      *(v1 + 40) = v3;
      if (qword_1EE08FB98 == -1)
      {
LABEL_4:
        v7 = qword_1EE09C268;
        sub_1D774FE1C(0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1D78BCAB0;
        v9 = sub_1D78B66E4();
        v11 = v10;
        *(v8 + 56) = MEMORY[0x1E69E6158];
        *(v8 + 64) = sub_1D775ABD4();
        *(v8 + 32) = v9;
        *(v8 + 40) = v11;
        v12 = sub_1D78B60A4();
        sub_1D78B42C4("BundleArticleSoftPaywallMeter article with no paywall count incremented to %@.", 78, 2, &dword_1D7739000, v7, v12, v8);

        return result;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1D77F2044()
{

  return swift_deallocClassInstance();
}

void sub_1D77F20D8(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("BundleArticleSoftPaywallMeter didEnterBackground, resetting the count of soft paywalls.", 87, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);
  *(v1 + 32) = 0;
}

uint64_t sub_1D77F21B8()
{
  result = sub_1D78B5C44();
  qword_1EE08FDE8 = result;
  return result;
}

id sub_1D77F2238(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void sub_1D77F2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);

  v14 = [v13 refreshForPurchase_];
  v15 = swift_allocObject();
  v15[2] = sub_1D77F2FE4;
  v15[3] = v12;
  v15[4] = a6;
  v15[5] = a3;
  v15[6] = a4;
  v26 = sub_1D77F2F58;
  v27 = v15;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D77CB678;
  v25 = &block_descriptor_18;
  v16 = _Block_copy(&v22);

  v17 = a6;

  v18 = [v14 then_];
  _Block_release(v16);

  if (v18)
  {

    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v26 = sub_1D77F2F68;
    v27 = v19;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1D7797914;
    v25 = &block_descriptor_26_0;
    v20 = _Block_copy(&v22);

    v21 = [v18 error_];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

double sub_1D77F24E4@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, id)@<X1>, void *a3@<X3>, void (*a4)(void)@<X4>, _OWORD *a5@<X8>)
{
  sub_1D779C6B0(a1, v15);
  if (!v16)
  {
    sub_1D7756B84(v15);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1D77F2CA8();
    v10 = swift_allocError();
    *v11 = 0;
    a4();

    goto LABEL_6;
  }

  v9 = a3;
  a2(v13, v14, v9);

LABEL_6:
  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

void sub_1D77F25E0(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    v5 = v3;
  }

  else
  {
    sub_1D77F2CA8();
    v5 = swift_allocError();
    v3 = v5;
    *v6 = 0;
  }

  a2(v5);
}

void sub_1D77F2660(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 24);

  v14 = sub_1D78B5C44();
  v15 = [v13 purchaseLookUpEntryForTagID_];

  if (v15)
  {
    v16 = [v15 purchaseID];
    if (v16)
    {
      v17 = v16;
      sub_1D78B5C74();

      if ([v15 purchaseValidationState] == 1)
      {
        MEMORY[0x1EEE9AC00](1, v18);
        sub_1D77F2E70();
        sub_1D78B41F4();

        v19 = swift_allocObject();
        *(v19 + 16) = sub_1D77F2CA4;
        *(v19 + 24) = v12;
        v20 = sub_1D78B4014();
        type metadata accessor for ReceiptRefresher();
        sub_1D78B40A4();

        v21 = swift_allocObject();
        *(v21 + 16) = a3;
        *(v21 + 24) = a4;

        v22 = sub_1D78B4014();
        sub_1D78B40D4();

        return;
      }
    }

    else
    {
    }
  }

  sub_1D77F2CA8();
  v23 = swift_allocError();
  *v24 = 1;
  a3();
}

uint64_t sub_1D77F2940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(a2, a3, 1, ObjectType, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1D78B4014();
  v9 = sub_1D78B40D4();

  return v9;
}

uint64_t sub_1D77F2A18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D779C73C(0, &qword_1EC9CA5D0, &type metadata for ReceiptRefreshResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  v7 = sub_1D78B4014();
  v8 = sub_1D78B4094();

  return v8;
}

uint64_t sub_1D77F2B30()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F2B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D77F2BC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D77F2C10(uint64_t a1, uint64_t a2)
{
  sub_1D779C73C(0, &qword_1EC9CA5D0, &type metadata for ReceiptRefreshResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

unint64_t sub_1D77F2CA8()
{
  result = qword_1EC9CA5D8;
  if (!qword_1EC9CA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5D8);
  }

  return result;
}

double sub_1D77F2CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  v6 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCB50;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D775ABD4();
  *(v7 + 64) = v9;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);

  sub_1D78B6504();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_1D78B42C4("Receipt refresher failed to fetch purchase metadata for purchaseID: %{public}@ with error: %{public}@", 101, 2, &dword_1D7739000, v5, v6, v7);

  return result;
}

unint64_t sub_1D77F2E70()
{
  result = qword_1EE08FF20;
  if (!qword_1EE08FF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FF20);
  }

  return result;
}

uint64_t sub_1D77F2F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return v4(v6);
}

unint64_t sub_1D77F2F8C()
{
  result = qword_1EC9CA5E0;
  if (!qword_1EC9CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA5E0);
  }

  return result;
}

uint64_t sub_1D77F2FEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F3048(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_1D78B48D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77F3288(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D777246C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCCA0;
  v11 = objc_opt_self();
  v12 = [v11 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(v10 + 32) = v13;
  v14 = [v11 blackColor];
  v15 = [v14 colorWithAlphaComponent_];

  *(v10 + 40) = v15;
  (*(v2 + 104))(v5, *MEMORY[0x1E69D7B60], v1);
  sub_1D78B48C4();
  v16 = sub_1D78B48E4();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  return sub_1D78B4554();
}

void sub_1D77F3288(uint64_t a1)
{
  if (!qword_1EE090408)
  {
    sub_1D78B48E4();
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090408);
    }
  }
}

double sub_1D77F32E0(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C268;
  v2 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D78B42C4("AlacartePaywallDataProvider failed to fetch purchase model with error: %{public}@", 81, 2, &dword_1D7739000, v1, v2, v3);

  return result;
}

uint64_t sub_1D77F340C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77F3468(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  sub_1D775F820(a1, a2, ObjectType, v5);
  v7 = sub_1D78B4014();
  v8 = sub_1D78B40D4();

  return v8;
}

void PostPurchaseOnboardingConfiguration.init(config:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 landingPageArticleID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D78B5C74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 callToActionText];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D78B5C74();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
}

uint64_t PostPurchaseOnboardingConfiguration.landingPageArticleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PostPurchaseOnboardingConfiguration.callToActionText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

NewsSubscription::PostPurchaseOnboardingConfiguration __swiftcall PostPurchaseOnboardingConfiguration.init(landingPageArticleID:callToActionText:)(Swift::String_optional landingPageArticleID, Swift::String_optional callToActionText)
{
  *v2 = landingPageArticleID;
  v2[1] = callToActionText;
  result.callToActionText = callToActionText;
  result.landingPageArticleID = landingPageArticleID;
  return result;
}

uint64_t sub_1D77F3620(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D77F367C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D77F3730@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D7740470(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - v12;
  v14 = sub_1D77F3914();
  v16 = v15;
  sub_1D77F3A1C(a1, v14, v15, v13);
  sub_1D776F538(v13, v10);
  v17 = [a1 identifier];
  v18 = sub_1D78B5C74();
  v20 = v19;

  v21 = *(v3 + 16);
  v22 = type metadata accessor for WebAccessAuthenticator(0);
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_webSession] = 0;
  sub_1D776F538(v10, &v23[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_authenticationURL]);
  v24 = &v23[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_callbackURLScheme];
  *v24 = v14;
  v24[1] = v16;
  v25 = &v23[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_tagID];
  *v25 = v18;
  v25[1] = v20;
  *&v23[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_purchaseController] = v21;
  v29.receiver = v23;
  v29.super_class = v22;
  v26 = v21;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  sub_1D77C12C8(v10);
  a2[3] = v22;
  a2[4] = &off_1F52713C0;
  *a2 = v27;
  return sub_1D77C12C8(v13);
}

uint64_t sub_1D77F3914()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0x77656E656C707061;
  }

  v2 = 0x736B636F7473;
  v3 = sub_1D78B5C74();
  v5 = v4;

  if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
  {

    return v2;
  }

  v7 = sub_1D78B6724();

  if ((v7 & 1) == 0)
  {
    return 0x77656E656C707061;
  }

  return v2;
}

uint64_t sub_1D77F3A1C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D7740470(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v41 - v14;
  v16 = sub_1D78B3124();
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3944();
  if (sub_1D78B3934())
  {
    if (qword_1EE095468 != -1)
    {
      swift_once();
    }

    type metadata accessor for WebAccessAuthenticatorFactory();
    sub_1D77F3FD4();
    sub_1D78B3574();
    v21 = v46;
    v20 = v47;
    v22 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v22 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D78B6454();

      v46 = a2;
      v47 = a3;
      MEMORY[0x1DA702FF0](0xD00000000000001DLL, 0x80000001D78D72D0);
      v42 = MEMORY[0x1E69E6F90];
      sub_1D7740470(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      v43 = xmmword_1D78BCAB0;
      *(v23 + 16) = xmmword_1D78BCAB0;
      v24 = [a1 identifier];
      v25 = sub_1D78B5C74();
      v44 = a4;
      v26 = v25;
      v28 = v27;

      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1D775ABD4();
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      sub_1D78B5C94();

      sub_1D78B3114();
      sub_1D78B3104();
      MEMORY[0x1DA700360](v21, v20);
      sub_1D78B30F4();
      MEMORY[0x1DA700380](0x69726F687475612FLL, 0xEA0000000000657ALL);
      sub_1D7740470(0, &qword_1EC9CA5E8, MEMORY[0x1E6968178], v42);
      sub_1D78B3064();
      *(swift_allocObject() + 16) = v43;
      sub_1D78B3034();

      sub_1D78B3084();
      sub_1D78B30A4();
      return (*(v45 + 8))(v19, v16);
    }

    v34 = [a1 authorizationURL];
    if (v34)
    {
      v35 = a4;
      v36 = v34;
      sub_1D78B3254();

      a4 = v35;
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v40 = sub_1D78B3294();
    (*(*(v40 - 8) + 56))(v15, v37, 1, v40);
    v39 = v15;
  }

  else
  {
    v30 = [a1 authorizationURL];
    if (v30)
    {
      v31 = a4;
      v32 = v30;
      sub_1D78B3254();

      a4 = v31;
      v33 = sub_1D78B3294();
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
    }

    else
    {
      v38 = sub_1D78B3294();
      (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
    }

    v39 = v12;
  }

  return sub_1D77AE4DC(v39, a4);
}

unint64_t sub_1D77F3FD4()
{
  result = qword_1EE091508[0];
  if (!qword_1EE091508[0])
  {
    type metadata accessor for WebAccessAuthenticatorFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE091508);
  }

  return result;
}

uint64_t sub_1D77F4044@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D77493AC(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

void sub_1D77F40D4(uint64_t a1)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77F6270(0);
    v6 = v5;
    v7 = *(v5 - 8);
    if ((*(v7 + 48))(v4, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D78B4384();
      (*(v7 + 8))(v4, v6);
      v8 = sub_1D78B4014();
      sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
      sub_1D78B4084();

      v9 = sub_1D78B4014();
      sub_1D77F6290(0);
      type metadata accessor for PurchaseAdContextEntriesManager();
      sub_1D78B40A4();

      v10 = sub_1D78B4014();
      sub_1D78B40B4();

      v11 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77F4394(uint64_t *a1)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77F6270(0);
  v6 = v5;
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1D78B4354();
    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

void sub_1D77F4504(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext(0);
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77F62F8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v74 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v66 - v18);
  sub_1D7748FBC(0, &qword_1EE08FF28, sub_1D77F62F8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v66 - v22);
  v24 = *a1;

  sub_1D78B3854();

  v25 = -1 << *(v24 + 32);
  v26 = *(v24 + 64);
  v27 = ~v25;
  v28 = -v25;
  v76 = v24;
  v77 = v24 + 64;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v78 = v27;
  v79 = 0;
  v80 = v29 & v26;
  v81 = 0;

  sub_1D7828C30(v23);
  v71 = *(v10 + 48);
  v72 = v10 + 48;
  if (v71(v23, 1, v9) == 1)
  {
LABEL_5:
    sub_1D779D528(v76);

    sub_1D78B3864();

    return;
  }

  sub_1D77F6328(0);
  v31 = v30;
  v69 = v19;
  v70 = v9;
  v67 = v30;
  v68 = v23;
  while (1)
  {
    v34 = *(v9 + 48);
    v35 = v23 + v34;
    v36 = *(v23 + v34);
    v37 = *(v23 + v34 + 8);
    v38 = *(v31 + 48);
    v39 = (v19 + v34);
    *v19 = *v23;
    *v39 = v36;
    v39[1] = v37;
    sub_1D77F63C8(&v35[v38], v39 + v38);
    v40 = v74;
    sub_1D77F6530(v19, v74, sub_1D77F62F8);
    v41 = (v40 + *(v9 + 48));
    v42 = v31;
    v44 = *v41;
    v43 = v41[1];
    v45 = v19;
    v46 = v75;
    sub_1D77F6530(v45, v75, sub_1D77F62F8);
    v47 = v46 + *(v9 + 48);

    v48 = *(v42 + 48);
    swift_beginAccess();
    v49 = a2;
    v50 = v7;
    sub_1D77F63C8(v47 + v48, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v49 + 24);
    v52 = v82;
    v53 = v49;
    *(v49 + 24) = 0x8000000000000000;
    v55 = sub_1D777BBB4(v44, v43);
    v56 = v52[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      break;
    }

    v59 = v54;
    if (v52[3] >= v58)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v54)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D782F374();
        if (v59)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1D782C04C(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_1D777BBB4(v44, v43);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_22;
      }

      v55 = v60;
      if (v59)
      {
LABEL_7:

        v32 = v82;
        v7 = v50;
        sub_1D77F648C(v50, v82[7] + *(v73 + 72) * v55);
        goto LABEL_8;
      }
    }

    v32 = v82;
    v82[(v55 >> 6) + 8] |= 1 << v55;
    v62 = (v32[6] + 16 * v55);
    *v62 = v44;
    v62[1] = v43;
    v7 = v50;
    sub_1D77F63C8(v50, v32[7] + *(v73 + 72) * v55);
    v63 = v32[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_21;
    }

    v32[2] = v65;
LABEL_8:
    v31 = v67;
    v33 = *(v67 + 48);
    a2 = v53;
    *(v53 + 24) = v32;

    swift_endAccess();
    v19 = v69;
    sub_1D77F642C(v69, sub_1D77F62F8);
    sub_1D77F642C(v41 + v33, type metadata accessor for PurchaseAdContext);
    v23 = v68;
    sub_1D7828C30(v68);
    v9 = v70;
    if (v71(v23, 1, v70) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1D78B6784();
  __break(1u);
}

double sub_1D77F4A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v40 = a1;
  v43 = sub_1D78B5254();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PurchaseAdContext(0);
  v10 = *(v9 - 8);
  v39 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B5264();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748FBC(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v36 - v20;

  sub_1D78B3854();

  sub_1D77F6530(a3, v21, type metadata accessor for PurchaseAdContext);
  (*(v10 + 56))(v21, 0, 1, v9);
  swift_beginAccess();
  v22 = v38;

  v23 = v21;
  v24 = v40;
  sub_1D7828040(v23, v40, v22);
  swift_endAccess();
  sub_1D7788448();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7F88], v13);
  v36 = sub_1D78B6134();
  (*(v14 + 8))(v17, v13);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v37;
  sub_1D77F6530(a3, v37, type metadata accessor for PurchaseAdContext);
  v27 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v22;
  sub_1D77F63C8(v26, v28 + v27);
  aBlock[4] = sub_1D77F6598;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_17_1;
  v29 = _Block_copy(aBlock);

  v30 = v41;
  sub_1D78B5274();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1D77490CC(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v31 = MEMORY[0x1E69E7F60];
  sub_1D7748FBC(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE090030, &qword_1EE090040, v31);
  v33 = v42;
  v32 = v43;
  sub_1D78B6324();
  v34 = v36;
  MEMORY[0x1DA7033B0](0, v30, v33, v29);
  _Block_release(v29);

  (*(v46 + 8))(v33, v32);
  (*(v44 + 8))(v30, v45);

  sub_1D78B3864();

  return result;
}

void sub_1D77F503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77F6270(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7748FBC(0, &unk_1EC9CA5F0, sub_1D77F6600, MEMORY[0x1E69E6F90]);
      sub_1D77F6600(0);
      v15 = v14 - 8;
      v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D78BCAB0;
      v18 = (v17 + v16);
      v19 = *(v15 + 56);
      *v18 = a2;
      v18[1] = a3;
      sub_1D77F6530(a4, v18 + v19, type metadata accessor for PurchaseAdContext);

      sub_1D77FF648(v17);
      swift_setDeallocating();
      sub_1D77F642C(v18, sub_1D77F6600);
      swift_deallocClassInstance();
      sub_1D78B4364();

      (*(v13 + 8))(v10, v12);
      v20 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

double sub_1D77F5354(uint64_t a1, uint64_t a2)
{
  v28 = sub_1D78B5254();
  v31 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B52A4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B5264();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748FBC(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v27 - v18;

  sub_1D78B3854();

  swift_beginAccess();
  sub_1D782B0E0(a1, a2, v19);
  swift_endAccess();
  sub_1D77F6668(v19);
  sub_1D7788448();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F88], v11);
  v20 = sub_1D78B6134();
  (*(v12 + 8))(v15, v11);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  aBlock[4] = sub_1D77F66F4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_24;
  v23 = _Block_copy(aBlock);

  sub_1D78B5274();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D77490CC(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v24 = MEMORY[0x1E69E7F60];
  sub_1D7748FBC(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE090030, &qword_1EE090040, v24);
  v25 = v28;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v10, v6, v23);
  _Block_release(v23);

  (*(v31 + 8))(v6, v25);
  (*(v29 + 8))(v10, v30);

  sub_1D78B3864();

  return result;
}

void sub_1D77F5820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77F6270(0);
    v10 = v9;
    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v8, 1, v9) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D77BD4B8(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D78BCAB0;
      *(v12 + 32) = a2;
      *(v12 + 40) = a3;

      sub_1D78B4374();

      (*(v11 + 8))(v8, v10);
      v13 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

double sub_1D77F5A40()
{
  v19 = sub_1D78B5254();
  v22 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B52A4();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B5264();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D78B3854();

  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];

  sub_1D7788448();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E7F88], v8);
  v13 = sub_1D78B6134();
  (*(v9 + 8))(v12, v8);
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D77F64F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  sub_1D78B5274();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D77490CC(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1D7748FBC(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE090030, &qword_1EE090040, v16);
  v17 = v19;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v7, v3, v15);
  _Block_release(v15);

  (*(v22 + 8))(v3, v17);
  (*(v20 + 8))(v7, v21);

  sub_1D78B3864();

  return result;
}

void sub_1D77F5E60(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    sub_1D78B41F4();

    v1 = sub_1D78B4014();
    sub_1D78B4084();

    v2 = sub_1D78B4014();
    sub_1D78B40D4();
  }
}

uint64_t sub_1D77F5F90()
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77F6270(0);
  v5 = v4;
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1D78B4384();
    (*(v6 + 8))(v3, v5);
    return v8;
  }

  return result;
}

uint64_t sub_1D77F60E8(uint64_t *a1)
{
  sub_1D7748FBC(0, &qword_1EE0904B8, sub_1D77F6270, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77F6270(0);
  v6 = v5;
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1D78B4374();
    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

void sub_1D77F6290(uint64_t a1)
{
  if (!qword_1EE0901A8)
  {
    type metadata accessor for PurchaseAdContext(255);
    v1 = sub_1D78B5BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0901A8);
    }
  }
}

void sub_1D77F6358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D77F63C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77F642C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D77F648C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77F6530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77F6598()
{
  v1 = *(type metadata accessor for PurchaseAdContext(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1D77F503C(v2, v3, v4, v5);
}

void sub_1D77F6600(uint64_t a1)
{
  if (!qword_1EE090118)
  {
    type metadata accessor for PurchaseAdContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090118);
    }
  }
}

uint64_t sub_1D77F6668(uint64_t a1)
{
  sub_1D7748FBC(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D77F671C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication;
  if (v4[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication])
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_completionHandlers;
    swift_beginAccess();
    v11 = *&v5[v10];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D777B378(0, v11[2] + 1, 1, v11);
      *&v5[v10] = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D777B378((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1D77F7204;
    v15[5] = v9;
    *&v5[v10] = v11;
    swift_endAccess();
  }

  else
  {
    v30 = sub_1D78B60B4();
    v18 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
    sub_1D78B6454();
    MEMORY[0x1DA702FF0](0xD000000000000083, 0x80000001D78D75D0);
    v19 = [a2 debugDescription];
    v20 = sub_1D78B5C74();
    v22 = v21;

    MEMORY[0x1DA702FF0](v20, v22);

    v23 = sub_1D78B5C44();

    [v18 setDebugReason_];

    v5[v8] = 1;
    v24 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithRequest:a2 presentingViewController:v30];
    v25 = [v24 performAuthentication];
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = v5;
    v26[4] = a3;
    v26[5] = a4;
    aBlock[4] = sub_1D77F71F8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7780F60;
    aBlock[3] = &block_descriptor_20;
    v27 = _Block_copy(aBlock);
    v28 = a1;
    v29 = v5;

    [v25 addFinishBlock_];
    _Block_release(v27);
  }
}

uint64_t sub_1D77F6A44(void *a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(void *, void *, __n128), uint64_t a6)
{
  v55 = a6;
  v56 = a5;
  v54 = a4;
  v9 = sub_1D78B5254();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D78B52A4();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v50 = a3;
    v51 = v17;
    v52 = v16;
    v53 = v10;
    v20 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE09C268;
    v22 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D78BCAB0;
    aBlock = 0;
    v58 = 0xE000000000000000;
    v64 = a2;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    sub_1D78B6504();
    v24 = aBlock;
    v25 = v58;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D775ABD4();
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_1D78B42C4("AppleID authentication failed in AMSUIWebViewControllerDelegate with error: %{public}@", 86, 2, &dword_1D7739000, v21, v22, v23);

    sub_1D7788448();
    v26 = sub_1D78B6104();
    v27 = swift_allocObject();
    v28 = v50;
    *(v27 + 16) = v50;
    v61 = sub_1D77F7234;
    v62 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1D775FB6C;
    v60 = &block_descriptor_20;
    v29 = _Block_copy(&aBlock);
    v30 = v28;

    sub_1D78B5274();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D77465FC(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D77A2AC4(0);
    sub_1D77465FC(&qword_1EE090030, sub_1D77A2AC4, MEMORY[0x1E69E6328]);
    sub_1D78B6324();
    MEMORY[0x1DA7033B0](0, v19, v13, v29);
    _Block_release(v29);

    (*(v53 + 8))(v13, v9);
    (*(v51 + 8))(v19, v52);
    v31 = v54;
  }

  else
  {
    v31 = v54;
    if (a1)
    {
      v38 = [a1 account];
      if (v38)
      {

        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        v39 = qword_1EE09C268;
        v40 = sub_1D78B60A4();
        sub_1D78B42C4("AppleID authentication successful, performing entitlements check", 64, 2, &dword_1D7739000, v39, v40, MEMORY[0x1E69E7CC0]);
        v41 = objc_opt_self();
        v42 = [v41 sharedAccount];
        [v42 reloadiTunesAccount];

        v43 = *__swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_entitlementsManager), *(v31 + OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_entitlementsManager + 24));
        v44 = [v41 sharedAccount];
        v45 = [v44 isUserSignedIntoiTunes];

        if (v45)
        {
          v46 = *(v43 + 24);
          v47 = swift_allocObject();
          *(v47 + 16) = v43;
          *(v47 + 24) = 1;
          v61 = sub_1D77A2CD4;
          v62 = v47;
          aBlock = MEMORY[0x1E69E9820];
          v58 = 1107296256;
          v59 = sub_1D7781488;
          v60 = &block_descriptor_14_0;
          v48 = _Block_copy(&aBlock);

          [v46 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:0 completion:v48];
          _Block_release(v48);
        }
      }
    }
  }

  *(v31 + OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication) = 0;
  v32 = OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_completionHandlers;
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = *(v33 + 16);
  if (v34)
  {

    v35 = v33 + 40;
    do
    {
      v36 = *(v35 - 8);
      v63 = a2;
      v64 = a1;

      v36(&v64, &v63);

      v35 += 16;
      --v34;
    }

    while (v34);
  }

  *(v31 + v32) = MEMORY[0x1E69E7CC0];

  return (v56)(a1, a2);
}

uint64_t sub_1D77F725C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D774584C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SubscriptionOffersModule();
    v7 = swift_allocObject();
    result = sub_1D7741E34(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SubscriptionOffersModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D77F730C()
{
  type metadata accessor for SubscriptionOffersViewController();
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EC9CA680, &protocol descriptor for SubscriptionOffersStylerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EC9CA688, &protocol descriptor for SubscriptionOffersEventHandlerType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE092210, &protocol descriptor for WebAccessOptInProviderType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA698, &protocol descriptor for SubscriptionOffersInteractorType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA6A0, &protocol descriptor for SubscriptionOffersRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA6A8, &protocol descriptor for SubscriptionOffersLayoutAttributesFactoryType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EC9CA6B0, &protocol descriptor for SubscriptionOffersViewModelFactoryType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EC9CA6B8, &protocol descriptor for SubscriptionOffersDataManagerType, 0);
  sub_1D78B3E54();

  return result;
}

char *sub_1D77F75AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D78B39F4();
  if (!v111)
  {
    __break(1u);
    goto LABEL_13;
  }

  v79 = v110;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA680, &protocol descriptor for SubscriptionOffersStylerType, 1);
  result = sub_1D78B39F4();
  if (!v109)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CA688, &protocol descriptor for SubscriptionOffersEventHandlerType, 0);
  result = sub_1D78B39F4();
  if (!v106)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v78 = v107;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA6A0, &protocol descriptor for SubscriptionOffersRendererType, 1);
  result = sub_1D78B39F4();
  if (!v105)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA6A8, &protocol descriptor for SubscriptionOffersLayoutAttributesFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v103)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA6B0, &protocol descriptor for SubscriptionOffersViewModelFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v101)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800, &protocol descriptor for PurchasingSpinnerViewControllerFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v99[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE0, &protocol descriptor for PurchasePresenterType, 1);
  result = sub_1D78B39F4();
  if (!v98[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v72 = result;
  v73 = v112;
  v74 = v114;
  v75 = v113;
  v76 = v111;
  v77 = v106;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095B50, &protocol descriptor for WebOptinFlowManagerType, 1);
  result = sub_1D78B39F4();
  if (v97[3])
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    v71 = &v61;
    MEMORY[0x1EEE9AC00](v3, v3);
    v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v70 = &v61;
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
    v69 = &v61;
    MEMORY[0x1EEE9AC00](v11, v11);
    v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v68 = &v61;
    MEMORY[0x1EEE9AC00](v15, v15);
    v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v5;
    v20 = *v9;
    v21 = *v13;
    v22 = *v17;
    v62 = type metadata accessor for SubscriptionOffersStyler();
    v95 = v62;
    v96 = &off_1F5272E68;
    v94[0] = v19;
    v23 = type metadata accessor for SubscriptionOffersRenderer();
    v92 = v23;
    v93 = &off_1F526A738;
    v91[0] = v20;
    v24 = type metadata accessor for SubscriptionOffersLayoutAttributesFactory();
    v89 = v24;
    v90 = &off_1F5271E38;
    v88[0] = v21;
    v25 = type metadata accessor for SubscriptionOffersViewModelFactory();
    v86 = v25;
    v87 = &off_1F526B7E8;
    v85[0] = v22;
    v64 = type metadata accessor for SubscriptionOffersViewController();
    v26 = objc_allocWithZone(v64);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v67 = &v61;
    MEMORY[0x1EEE9AC00](v27, v27);
    v29 = (&v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v66 = &v61;
    MEMORY[0x1EEE9AC00](v31, v31);
    v33 = (&v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v65 = &v61;
    MEMORY[0x1EEE9AC00](v35, v35);
    v37 = (&v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    v63 = &v61;
    MEMORY[0x1EEE9AC00](v39, v39);
    v41 = (&v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v29;
    v44 = *v33;
    v45 = *v37;
    v46 = *v41;
    v84[3] = v62;
    v84[4] = &off_1F5272E68;
    v84[0] = v43;
    v83[3] = v23;
    v83[4] = &off_1F526A738;
    v83[0] = v44;
    v82[3] = v24;
    v82[4] = &off_1F5271E38;
    v82[0] = v45;
    v81[3] = v25;
    v81[4] = &off_1F526B7E8;
    v81[0] = v46;
    v47 = OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_coverViewManager;
    sub_1D78B4754();
    swift_allocObject();
    *&v26[v47] = sub_1D78B4744();
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___verificationSpinner] = 0;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___purchasingSpinner] = 0;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers] = 0;
    v48 = &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel];
    *v48 = 0u;
    *(v48 + 1) = 0u;
    *(v48 + 2) = 0u;
    v48[48] = 0;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_tag] = 0;
    v49 = &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_routeModel];
    v50 = v76;
    *v49 = v79;
    *(v49 + 1) = v50;
    v51 = v74;
    v52 = v75;
    *(v49 + 2) = v73;
    *(v49 + 3) = v52;
    *(v49 + 4) = v51;
    sub_1D774584C(v84, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_styler]);
    v53 = &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler];
    v54 = v78;
    *v53 = v77;
    *(v53 + 1) = v54;
    sub_1D774584C(v83, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_renderer]);
    sub_1D774584C(v82, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_layoutAttributesFactory]);
    sub_1D774584C(v81, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModelFactory]);
    sub_1D774584C(v99, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasingSpinnerViewControllerFactory]);
    sub_1D774584C(v98, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasePresenter]);
    v55 = v72;
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchaseController] = v72;
    sub_1D774584C(v97, &v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_webOptinFlowManager]);
    v56 = objc_allocWithZone(type metadata accessor for SubscriptionOffersView());
    swift_unknownObjectRetain();
    v57 = v55;
    v58 = [v56 initWithFrame_];
    *&v26[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_subscriptionOffersView] = v58;
    v80.receiver = v26;
    v80.super_class = v64;
    v59 = objc_msgSendSuper2(&v80, sel_initWithNibName_bundle_, 0, 0);
    *(*(v59 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler) + 24) = &off_1F5267C48;
    swift_unknownObjectWeakAssign();
    v60 = v59;

    sub_1D78B4734();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v99);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v91);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return v60;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_1D77F81D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for SubscriptionOffersStyler();
    v5 = swift_allocObject();
    *(v5 + 56) = 0;
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5272E68;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D77F828C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D78B33C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA698, &protocol descriptor for SubscriptionOffersInteractorType, 0);
  result = sub_1D78B39F4();
  v10 = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v17[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CA6D0, &protocol descriptor for SubscriptionOffersTrackerType, 1);
  result = sub_1D78B39F4();
  if (v16[3])
  {
    type metadata accessor for SubscriptionOffersEventHandler();
    v12 = swift_allocObject();
    v12[3] = 0;
    swift_unknownObjectWeakInit();
    v12[6] = v10;
    v12[7] = v11;
    sub_1D774584C(v17, (v12 + 8));
    sub_1D774584C(v16, (v12 + 13));
    swift_unknownObjectRetain();
    sub_1D78B33B4();
    v13 = sub_1D78B33A4();
    v15 = v14;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    (*(v5 + 8))(v8, v4);
    v12[4] = v13;
    v12[5] = v15;
    *(v12[6] + 24) = &off_1F526E910;
    result = swift_unknownObjectWeakAssign();
    *a2 = v12;
    a2[1] = &off_1F526E980;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D77F8504@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebAccessOptInProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F526E250;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D77F859C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D78B39F4();
  if (!v46)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v37 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CA6B8, &protocol descriptor for SubscriptionOffersDataManagerType, 0);
  result = sub_1D78B39F4();
  v6 = v43;
  if (!v43)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v47;
  v36 = v49;
  v34 = v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FE78, 0x1E69B5630);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v32 = v48;
  v33 = v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FD00, &protocolRef_FCReceiptRefresherType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095910, &protocol descriptor for WebAccessAuthenticatorFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v42[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095820, &protocol descriptor for WebAccessConversionEventReporterType, 1);
  result = sub_1D78B39F4();
  if (v41)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    v30 = &v30;
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for WebAccessConversionEventReporter();
    v39[3] = v15;
    v39[4] = &off_1F526CAD0;
    v39[0] = v14;
    type metadata accessor for SubscriptionOffersInteractor();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v39, v15);
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v38[4] = &off_1F526CAD0;
    v38[3] = v15;
    v38[0] = v21;
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 176) = 0u;
    *(v16 + 192) = 0u;
    *(v16 + 208) = 0;
    *(v16 + 80) = v5;
    *(v16 + 88) = 0;
    v22 = v33;
    *(v16 + 96) = v37;
    *(v16 + 104) = v22;
    v23 = v32;
    *(v16 + 112) = v35;
    *(v16 + 120) = v23;
    *(v16 + 128) = v36;
    v24 = v34;
    *(v16 + 32) = v6;
    *(v16 + 40) = v24;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v9;
    *(v16 + 72) = 0;
    sub_1D774584C(v42, v16 + 136);
    sub_1D774584C(v38, v16 + 216);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = v7;
    v26 = v8;
    swift_unknownObjectRetain();
    v27 = sub_1D780D968();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = *(v16 + 72);
    *(v16 + 72) = v27;

    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(v40);
    v29 = v31;
    *v31 = v16;
    v29[1] = &off_1F526D368;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1D77F8B28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA680, &protocol descriptor for SubscriptionOffersStylerType, 1);
  result = sub_1D78B39F4();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EC9CA6C8, &protocol descriptor for PublisherLogoProviderType, 1);
    result = sub_1D78B39F4();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for SubscriptionOffersStyler();
      v19[3] = v10;
      v19[4] = &off_1F5272E68;
      v19[0] = v9;
      v11 = type metadata accessor for SubscriptionOffersRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F5272E68;
      v12[2] = v17;
      sub_1D7741E34(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F526A738;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D77F8DB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CA680, &protocol descriptor for SubscriptionOffersStylerType, 1);
  result = sub_1D78B39F4();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SubscriptionOffersStyler();
    v17[3] = v9;
    v17[4] = &off_1F5272E68;
    v17[0] = v8;
    v10 = type metadata accessor for SubscriptionOffersLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 88) = v9;
    *(v11 + 96) = &off_1F5272E68;
    *(v11 + 64) = v16;
    *(v11 + 16) = xmmword_1D78C30B0;
    *(v11 + 32) = xmmword_1D78C30C0;
    *(v11 + 48) = xmmword_1D78C30D0;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F5271E38;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D77F9004@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SubscriptionSheetSubscribeButtonTextProvider();
  v2 = swift_allocObject();
  v3 = type metadata accessor for SubscriptionOffersViewModelFactory();
  v4 = swift_allocObject();
  result = sub_1D77F9350(v2, v4);
  a1[3] = v3;
  a1[4] = &off_1F526B7E8;
  *a1 = result;
  return result;
}

void *sub_1D77F9078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  v5 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType, 1);
  result = sub_1D78B39F4();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = [objc_opt_self() sharedAccount];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType, 1);
  result = sub_1D78B39F4();
  if (v18)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_1D77F94C8(v5, v6, *v10, v7, *v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a2 = v16;
    a2[1] = &off_1F52665E0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D77F9350(uint64_t a1, void *a2)
{
  v16 = type metadata accessor for SubscriptionSheetSubscribeButtonTextProvider();
  v17 = &off_1F526B950;
  *&v15 = a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_1D78B3134();
  v9 = v8;

  a2[2] = v7;
  a2[3] = v9;
  v10 = [v5 bundleForClass_];
  v11 = sub_1D78B3134();
  v13 = v12;

  a2[4] = v11;
  a2[5] = v13;
  sub_1D7741E34(&v15, (a2 + 6));
  return a2;
}

void *sub_1D77F94C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = type metadata accessor for HideMyEmailSignupConfigProvider();
  v27[3] = v11;
  v27[4] = &off_1F5267FE8;
  v27[0] = a3;
  v25 = v10;
  v26 = &off_1F52703E8;
  v24[0] = a5;
  type metadata accessor for SubscriptionOffersDataManager();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v11);
  MEMORY[0x1EEE9AC00](v13, v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x1EEE9AC00](v17, v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[7] = v11;
  v12[8] = &off_1F5267FE8;
  v12[9] = v22;
  v12[3] = a2;
  v12[4] = v21;
  v12[12] = v10;
  v12[13] = &off_1F52703E8;
  v12[2] = a1;
  v12[14] = a4;
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v12;
}

uint64_t PaywallInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PaywallInteractor.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77C59A8;
}

uint64_t PaywallInteractor.tracker.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  return sub_1D7759064(v1 + v3, a1, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
}

unint64_t sub_1D77F9920()
{
  result = qword_1EE08E958;
  if (!qword_1EE08E958)
  {
    type metadata accessor for DefaultPersonalizedPaywallDataService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E958);
  }

  return result;
}

id PaywallInteractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaywallInteractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double PaywallInteractor.requestWebAccessAuthentication(for:)(__int128 *a1)
{
  swift_getObjectType();
  v2 = a1[13];
  v17[12] = a1[12];
  v17[13] = v2;
  v3 = a1[15];
  v17[14] = a1[14];
  v17[15] = v3;
  v4 = a1[9];
  v17[8] = a1[8];
  v17[9] = v4;
  v5 = a1[11];
  v17[10] = a1[10];
  v17[11] = v5;
  v6 = a1[5];
  v17[4] = a1[4];
  v17[5] = v6;
  v7 = a1[7];
  v17[6] = a1[6];
  v17[7] = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v9 = a1[3];
  v17[2] = a1[2];
  v17[3] = v9;
  sub_1D77F9D88(v17, &v18);
  if (v19)
  {
    v10 = sub_1D7741E34(&v18, v20);
    MEMORY[0x1EEE9AC00](v10, v11);
    sub_1D78B41F4();
    sub_1D7788448();
    v12 = sub_1D78B6104();
    sub_1D77FDB90(0, &unk_1EC9CA730, MEMORY[0x1E69E6720]);
    sub_1D78B40B4();

    v13 = sub_1D78B6104();
    sub_1D78B40E4();

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1D7759154(&v18, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE09C268;
    v16 = sub_1D78B60A4();
    return sub_1D78B42C4("Web access authentication requested when no WebAccessAuthenticator is available!  WebAccessAuthenticator was likely given a nil tag.", 132, 2, &dword_1D7739000, v15, v16, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1D77F9D88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticator;
  swift_beginAccess();
  sub_1D7759064(v3 + v6, &v18, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
  v7 = *(&v19 + 1);
  sub_1D7759154(&v18, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
  if (!v7)
  {
    v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory), *(v3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory + 24));
    v9 = a1[13];
    v30 = a1[12];
    v31 = v9;
    v10 = a1[15];
    v32 = a1[14];
    v33 = v10;
    v11 = a1[9];
    v26 = a1[8];
    v27 = v11;
    v12 = a1[11];
    v28 = a1[10];
    v29 = v12;
    v13 = a1[5];
    v22 = a1[4];
    v23 = v13;
    v14 = a1[7];
    v24 = a1[6];
    v25 = v14;
    v15 = a1[1];
    v18 = *a1;
    v19 = v15;
    v16 = a1[3];
    v20 = a1[2];
    v21 = v16;
    PaywallModel.tag.getter();
    (*(v8 + 8))(v34);
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1D7759634(v34, v3 + v6, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
    swift_endAccess();
  }

  return sub_1D7759064(v3 + v6, a2, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
}

uint64_t sub_1D77F9F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(a2, &protocol witness table for PaywallInteractor, v5, v6, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a3 = v9 == 0;
  return result;
}

uint64_t sub_1D77FA00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1D78B42D4(v4, &dword_1D7739000, v5, "Error obtaining access token: %@", 32, 2, v6);

  v7 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 56))(a2, &protocol witness table for PaywallInteractor, a1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallInteractor.requestVerifyAccessToken(for:paywallModel:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_getObjectType();
  v4 = a3[13];
  v5 = a3[11];
  v51 = a3[12];
  v52 = v4;
  v6 = a3[13];
  v7 = a3[15];
  v53 = a3[14];
  v54 = v7;
  v8 = a3[9];
  v9 = a3[7];
  v47 = a3[8];
  v48 = v8;
  v10 = a3[9];
  v11 = a3[11];
  v49 = a3[10];
  v50 = v11;
  v12 = a3[5];
  v13 = a3[3];
  v43 = a3[4];
  v44 = v12;
  v14 = a3[5];
  v15 = a3[7];
  v45 = a3[6];
  v46 = v15;
  v16 = a3[1];
  v39 = *a3;
  v40 = v16;
  v17 = a3[3];
  v19 = *a3;
  v18 = a3[1];
  v41 = a3[2];
  v42 = v17;
  v35[12] = v51;
  v35[13] = v6;
  v20 = a3[15];
  v35[14] = v53;
  v35[15] = v20;
  v35[8] = v47;
  v35[9] = v10;
  v35[10] = v49;
  v35[11] = v5;
  v35[4] = v43;
  v35[5] = v14;
  v35[6] = v45;
  v35[7] = v9;
  v35[0] = v19;
  v35[1] = v18;
  v35[2] = v41;
  v35[3] = v13;
  sub_1D77F9D88(v35, &v36);
  if (!v37)
  {
    return sub_1D7759154(&v36, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType);
  }

  v21 = sub_1D7741E34(&v36, v38);
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1D78B41F4();
  sub_1D7788448();
  v23 = sub_1D78B6104();
  v24 = swift_allocObject();
  v25 = v52;
  v24[13] = v51;
  v24[14] = v25;
  v26 = v54;
  v24[15] = v53;
  v24[16] = v26;
  v27 = v48;
  v24[9] = v47;
  v24[10] = v27;
  v28 = v50;
  v24[11] = v49;
  v24[12] = v28;
  v29 = v44;
  v24[5] = v43;
  v24[6] = v29;
  v30 = v46;
  v24[7] = v45;
  v24[8] = v30;
  v31 = v40;
  v24[1] = v39;
  v24[2] = v31;
  v32 = v42;
  v24[3] = v41;
  v24[4] = v32;
  sub_1D7772AE8(&v39, v35);
  sub_1D78B40B4();

  v33 = sub_1D78B6104();
  sub_1D78B40E4();

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D77FA480(char *a1, uint64_t a2, _OWORD *a3)
{
  v6 = *a1;
  v7 = (a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker);
  if (*a1)
  {
    swift_beginAccess();
    if (v7[3])
    {
      sub_1D774584C(v7, &v40);
      v8 = *(&v41 + 1);
      v9 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v56 = 0uLL;
      v57 = 0;
      (*(v9 + 48))(&v56, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v40);
    }
  }

  else
  {
    swift_beginAccess();
    if (v7[3])
    {
      sub_1D774584C(v7, &v40);
      v10 = *(&v41 + 1);
      v11 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v56 = xmmword_1D78C31A0;
      v57 = 0;
      (*(v11 + 48))(&v56, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v40);
      v12 = v7[3];
      if (v12)
      {
        v58 = v3;
        v13 = v7[4];
        v14 = __swift_project_boxed_opaque_existential_1(v7, v12);
        v15 = *(v12 - 8);
        MEMORY[0x1EEE9AC00](v14, v14);
        v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v17);
        v18 = (*(v13 + 8))(v12, v13);
        (*(v15 + 8))(v17, v12);
        v19 = sub_1D7773164(v18);
        if (v20)
        {
          v21 = v20;
          v39 = v19;
          v22 = a3[13];
          v52 = a3[12];
          v53 = v22;
          v23 = a3[15];
          v54 = a3[14];
          v55 = v23;
          v24 = a3[9];
          v48 = a3[8];
          v49 = v24;
          v25 = a3[11];
          v50 = a3[10];
          v51 = v25;
          v26 = a3[5];
          v44 = a3[4];
          v45 = v26;
          v27 = a3[7];
          v46 = a3[6];
          v47 = v27;
          v28 = a3[1];
          v40 = *a3;
          v41 = v28;
          v29 = a3[3];
          v42 = a3[2];
          v43 = v29;
          v30 = [PaywallModel.tag.getter() identifier];
          swift_unknownObjectRelease();
          v38 = sub_1D78B5C74();

          sub_1D77731CC(v18);

          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          v31 = qword_1EE09C268;
          sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1D78BCAB0;
          *(v32 + 56) = MEMORY[0x1E69E6158];
          *(v32 + 64) = sub_1D775ABD4();
          *(v32 + 32) = v39;
          *(v32 + 40) = v21;

          v33 = sub_1D78B60A4();
          sub_1D78B42C4("Reporting alreadySubscribed subscription event to iAd for qtoken=%@", 67, 2, &dword_1D7739000, v31, v33, v32);

          sub_1D78B4244();
          sub_1D78B4234();
        }
      }
    }
  }

  v34 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v56) = v6;
    (*(v36 + 48))(a2, &protocol witness table for PaywallInteractor, &v56, *(a3 + 28), ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D77FA934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  v22 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1D78B42D4(v4, &dword_1D7739000, v5, "Error verifying access token: %@", 32, 2, v6);

  v7 = sub_1D78B31B4();
  [v7 code];

  v8 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  if (*(v8 + 24))
  {
    sub_1D774584C(v8, v19);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v16 = sub_1D78B66E4();
    v17 = v11;
    v18 = 1;
    (*(v10 + 48))(&v16, v9, v10);
    sub_1D77C5618(v16, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v12 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 56))(a2, &protocol witness table for PaywallInteractor, a1, ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallInteractor.requestSubscription(paywallModel:purchaseID:postPurchaseDestination:purchaseSessionID:isDirectBuy:)(__int128 *a1, uint64_t *a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v118) = a6;
  v116 = a3;
  v117 = a5;
  v115 = a4;
  ObjectType = swift_getObjectType();
  sub_1D77FB750(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v106 - v12;
  v14 = type metadata accessor for PurchaseContext(0);
  v113 = *(v14 - 8);
  v114 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v107 = v17;
  v108 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v112 = &v106 - v19;
  v20 = a1[13];
  v149 = a1[12];
  v150 = v20;
  v21 = a1[15];
  v151 = a1[14];
  v152 = v21;
  v22 = a1[9];
  v145 = a1[8];
  v146 = v22;
  v23 = a1[11];
  v147 = a1[10];
  v148 = v23;
  v24 = a1[5];
  v141 = a1[4];
  v142 = v24;
  v25 = a1[7];
  v143 = a1[6];
  v144 = v25;
  v26 = a1[1];
  v137 = *a1;
  v138 = v26;
  v27 = a1[3];
  v139 = a1[2];
  v140 = v27;
  v29 = *a2;
  v28 = a2[1];
  v30 = v6 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager;
  v31 = *(v6 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager);
  v32 = *(v30 + 8);
  v33 = swift_getObjectType();
  v34 = a1[12];
  v35 = a1[14];
  v36 = a1[15];
  v134 = a1[13];
  v135 = v35;
  v136 = v36;
  v37 = a1[8];
  v38 = a1[10];
  v39 = a1[11];
  v130 = a1[9];
  v131 = v38;
  v132 = v39;
  v133 = v34;
  v40 = a1[4];
  v41 = a1[6];
  v42 = a1[7];
  v126 = a1[5];
  v127 = v41;
  v128 = v42;
  v129 = v37;
  v43 = a1[1];
  v121 = *a1;
  v122 = v43;
  v44 = a1[3];
  v123 = a1[2];
  v124 = v44;
  v125 = v40;
  v120[0] = v29;
  v120[1] = v28;
  v45 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  v46 = v7 + v45;
  v47 = v13;
  sub_1D7759064(v46, v119, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v48 = *(v32 + 24);
  v110 = v32;
  v49 = v117;
  v50 = v118;
  v117 = v33;
  v118 = v31;
  v48(&v121, v120, v115, v49, v119, v116, v50, v33, v32);
  sub_1D7759154(v119, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v51 = v113;
  (*(v113 + 56))(v47, 0, 1, v114);
  v52 = v47;
  v53 = v112;
  sub_1D77FDAA8(v52, v112, type metadata accessor for PurchaseContext);
  if (*(v53 + 56) == 1)
  {
    v134 = v150;
    v135 = v151;
    v136 = v152;
    v130 = v146;
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v126 = v142;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v125 = v141;
    v118 = (*(v110 + 8))(&v121, v117);
    if (v118)
    {
      v54 = [v118 isEnabled];
      if (v54)
      {
        MEMORY[0x1EEE9AC00](v54, v55);
        v56 = v111;
        sub_1D78B41F4();
        v57 = v108;
        v116 = type metadata accessor for PurchaseContext;
        sub_1D77FDA40(v53, v108, type metadata accessor for PurchaseContext);
        v58 = *(v51 + 80);
        v59 = (v58 + 16) & ~v58;
        v115 = v58;
        v117 = v107 + 7;
        v60 = (v107 + 7 + v59) & 0xFFFFFFFFFFFFFFF8;
        v61 = v56;
        v62 = swift_allocObject();
        sub_1D77FDAA8(v57, v62 + v59, type metadata accessor for PurchaseContext);
        v63 = (v62 + v60);
        v64 = v150;
        v63[12] = v149;
        v63[13] = v64;
        v65 = v152;
        v63[14] = v151;
        v63[15] = v65;
        v66 = v146;
        v63[8] = v145;
        v63[9] = v66;
        v67 = v148;
        v63[10] = v147;
        v63[11] = v67;
        v68 = v142;
        v63[4] = v141;
        v63[5] = v68;
        v69 = v144;
        v63[6] = v143;
        v63[7] = v69;
        v70 = v138;
        *v63 = v137;
        v63[1] = v70;
        v71 = v140;
        v63[2] = v139;
        v63[3] = v71;
        sub_1D7772AE8(&v137, &v121);
        v72 = sub_1D78B4014();
        type metadata accessor for HideMyEmailSignupDataModel(0);
        sub_1D78B40A4();

        sub_1D7788448();
        v73 = v53;
        v74 = sub_1D78B6104();
        *(swift_allocObject() + 16) = v61;
        sub_1D77FB750(0, &qword_1EC9CA740, sub_1D77FBC1C, MEMORY[0x1E69E6720]);
        v75 = v61;
        sub_1D78B40B4();

        v76 = sub_1D78B6104();
        v77 = v73;
        v78 = v108;
        v79 = v116;
        sub_1D77FDA40(v77, v108, v116);
        v80 = (v115 + 24) & ~v115;
        v81 = (v117 + v80) & 0xFFFFFFFFFFFFFFF8;
        v82 = swift_allocObject();
        *(v82 + 16) = v75;
        sub_1D77FDAA8(v78, v82 + v80, v79);
        v83 = (v82 + v81);
        v84 = v150;
        v83[12] = v149;
        v83[13] = v84;
        v85 = v152;
        v83[14] = v151;
        v83[15] = v85;
        v86 = v146;
        v83[8] = v145;
        v83[9] = v86;
        v87 = v148;
        v83[10] = v147;
        v83[11] = v87;
        v88 = v142;
        v83[4] = v141;
        v83[5] = v88;
        v89 = v144;
        v83[6] = v143;
        v83[7] = v89;
        v90 = v138;
        *v83 = v137;
        v83[1] = v90;
        v91 = v140;
        v83[2] = v139;
        v83[3] = v91;
        sub_1D7772AE8(&v137, &v121);
        v92 = v75;
        sub_1D78B40E4();

        v93 = v112;
        return sub_1D7791954(v93);
      }
    }
  }

  v94 = sub_1D78B6094();
  if (qword_1EC9C8448 != -1)
  {
    v105 = v94;
    swift_once();
    v94 = v105;
  }

  sub_1D78B42D4(v94, &dword_1D7739000, qword_1EC9D9DF0, "Skipping Hide My Email flow because it is not configured", 56, 2, MEMORY[0x1E69E7CC0]);
  v95 = v111;
  v96 = *&v111[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 24];
  v97 = *&v111[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 32];
  __swift_project_boxed_opaque_existential_1(&v111[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability], v96);
  v98 = (*(v97 + 8))(v96, v97);
  v99 = &v95[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v100 = *(v99 + 1);
    v101 = swift_getObjectType();
    v134 = v150;
    v135 = v151;
    v136 = v152;
    v130 = v146;
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v126 = v142;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v102 = v151;
    v124 = v140;
    v125 = v141;
    v103 = PaywallModel.purchaseType.getter();
    v120[0] = (v98 & 1) == 0;
    (*(v100 + 8))(v53, v102, v103, v120, v101, v100);
    swift_unknownObjectRelease();
  }

  v93 = v53;
  return sub_1D7791954(v93);
}

void sub_1D77FB750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D77FB7B4(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 72))(a1, &protocol witness table for PaywallInteractor, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    sub_1D77FDB90(0, &qword_1EE0951C0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D77FB8B4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PurchaseContext(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager + 8);
  ObjectType = swift_getObjectType();
  v9 = v6[13];
  v18[12] = v6[12];
  v18[13] = v9;
  v10 = v6[15];
  v18[14] = v6[14];
  v18[15] = v10;
  v11 = v6[9];
  v18[8] = v6[8];
  v18[9] = v11;
  v12 = v6[11];
  v18[10] = v6[10];
  v18[11] = v12;
  v13 = v6[5];
  v18[4] = v6[4];
  v18[5] = v13;
  v14 = v6[7];
  v18[6] = v6[6];
  v18[7] = v14;
  v15 = v6[1];
  v18[0] = *v6;
  v18[1] = v15;
  v16 = v6[3];
  v18[2] = v6[2];
  v18[3] = v16;
  return (*(v7 + 16))(v2 + v5, v18, ObjectType, v7);
}

void sub_1D77FB9E0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &a2[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    v22 = a4;
    ObjectType = swift_getObjectType();
    (*(v13 + 80))(a3, &protocol witness table for PaywallInteractor, ObjectType, v13);
    swift_unknownObjectRelease();
    sub_1D77FDA40(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HideMyEmailSignupDataModel);
    v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    sub_1D77FDAA8(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for HideMyEmailSignupDataModel);
    v17 = a2;
    v18 = sub_1D78B4014();
    sub_1D77FDB90(0, &unk_1EC9CA730, MEMORY[0x1E69E6720]);
    v19 = sub_1D78B4094();
    a4 = v22;
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *a4 = v20;
}

void sub_1D77FBC1C(uint64_t a1)
{
  if (!qword_1EC9CA9B0)
  {
    sub_1D77FDB90(255, &unk_1EC9CA730, MEMORY[0x1E69E6720]);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA9B0);
    }
  }
}

uint64_t sub_1D77FBC90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 64))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_1D77FBD48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v9 = a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 80))(a3, &protocol witness table for PaywallInteractor, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  *&v43 = a1;
  v12 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v13 = v59;
  if (v59 < 2)
  {
    sub_1D77FDA30(v59);
LABEL_6:
    v14 = sub_1D78B6094();
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC9D9DF0;
    sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D78BCAB0;
    swift_getErrorValue();
    v17 = sub_1D78B67B4();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D775ABD4();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1D78B42D4(v14, &dword_1D7739000, v15, "Skipping Hide My Email flow because of an error creating the data model. Error: %@", 82, 2, v16);

    v20 = *(a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 24);
    v21 = *(a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability + 32);
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability), v20);
    v22 = (*(v21 + 8))(v20, v21);
    v23 = a3 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      v25 = swift_getObjectType();
      v26 = *(a5 + 28);
      v27 = a5[13];
      v55 = a5[12];
      v56 = v27;
      v28 = a5[15];
      v57 = a5[14];
      v58 = v28;
      v29 = a5[9];
      v51 = a5[8];
      v52 = v29;
      v30 = a5[11];
      v53 = a5[10];
      v54 = v30;
      v31 = a5[5];
      v47 = a5[4];
      v48 = v31;
      v32 = a5[7];
      v49 = a5[6];
      v50 = v32;
      v33 = a5[1];
      v43 = *a5;
      v44 = v33;
      v34 = a5[3];
      v45 = a5[2];
      v46 = v34;
      v35 = PaywallModel.purchaseType.getter();
      v42 = (v22 & 1) == 0;
      (*(v24 + 8))(a4, v26, v35, &v42, v25, v24);
      swift_unknownObjectRelease();
    }

    return;
  }

  v36 = sub_1D78B6094();
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v37 = qword_1EC9D9DF0;
  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D78BCAB0;
  swift_getErrorValue();
  v39 = sub_1D78B67B4();
  v41 = v40;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1D775ABD4();
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  sub_1D78B42D4(v36, &dword_1D7739000, v37, "Stopping buy flow because HME is configured and user is not authenticated %@", 76, 2, v38);

  sub_1D77FDA30(v13);
}

void sub_1D77FC174(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D77FBD48(a1, a2, v7, v2 + v6, v8);
}

uint64_t PaywallInteractor.requestAMSSheet(with:purchaseSessionID:paywallModel:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v49[0] = a3;
  sub_1D77FB750(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v49 - v11;
  v13 = type metadata accessor for PurchaseContext(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[9];
  v76 = a1[8];
  v77 = v17;
  v78 = *(a1 + 20);
  v18 = a1[5];
  v72 = a1[4];
  v73 = v18;
  v19 = a1[7];
  v74 = a1[6];
  v75 = v19;
  v20 = a1[1];
  v68 = *a1;
  v69 = v20;
  v21 = a1[3];
  v70 = a1[2];
  v71 = v21;
  v22 = a4[13];
  v91 = a4[12];
  v92 = v22;
  v23 = a4[15];
  v93 = a4[14];
  v94 = v23;
  v24 = a4[9];
  v87 = a4[8];
  v88 = v24;
  v25 = a4[11];
  v89 = a4[10];
  v90 = v25;
  v26 = a4[5];
  v83 = a4[4];
  v84 = v26;
  v27 = a4[7];
  v85 = a4[6];
  v86 = v27;
  v28 = a4[1];
  v79 = *a4;
  v80 = v28;
  v29 = a4[3];
  v81 = a4[2];
  v82 = v29;
  v30 = *(v4 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager + 8);
  ObjectType = swift_getObjectType();
  v32 = a4[12];
  v33 = a4[14];
  v34 = a4[15];
  v65 = a4[13];
  v66 = v33;
  v67 = v34;
  v35 = a4[8];
  v36 = a4[10];
  v37 = a4[11];
  v61 = a4[9];
  v62 = v36;
  v63 = v37;
  v64 = v32;
  v38 = a4[4];
  v39 = a4[6];
  v40 = a4[7];
  v57 = a4[5];
  v58 = v39;
  v59 = v40;
  v60 = v35;
  v41 = a4[1];
  v52 = *a4;
  v53 = v41;
  v42 = a4[3];
  v54 = a4[2];
  v55 = v42;
  v56 = v38;
  v51[0] = 0;
  v51[1] = 0;
  v43 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D7759064(v5 + v43, v50, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v44 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
  (*(v30 + 24))(&v52, v51, a2, v49[0], v50, v12, 0, ObjectType, v30);
  sub_1D77FC830(v12, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  sub_1D7759154(v50, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v45 = v5 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(v45 + 8);
    v47 = swift_getObjectType();
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v58 = v74;
    v52 = v68;
    v53 = v69;
    *&v62 = v78;
    v54 = v70;
    (*(v46 + 16))(&v52, v16, v47, v46);
    swift_unknownObjectRelease();
  }

  return sub_1D7791954(v16);
}

uint64_t sub_1D77FC830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77FB750(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PaywallInteractor.requestAMSSheet(with:purchaseSessionID:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v45 = a1;
  v46 = a3;
  sub_1D77FB750(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for PurchaseContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4[13];
  v77 = a4[12];
  v78 = v16;
  v17 = a4[15];
  v79 = a4[14];
  v80 = v17;
  v18 = a4[9];
  v73 = a4[8];
  v74 = v18;
  v19 = a4[11];
  v75 = a4[10];
  v76 = v19;
  v20 = a4[5];
  v69 = a4[4];
  v70 = v20;
  v21 = a4[7];
  v71 = a4[6];
  v72 = v21;
  v22 = a4[1];
  v65 = *a4;
  v66 = v22;
  v23 = a4[3];
  v67 = a4[2];
  v68 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager + 8);
  ObjectType = swift_getObjectType();
  v26 = a4[12];
  v27 = a4[14];
  v28 = a4[15];
  v62 = a4[13];
  v63 = v27;
  v64 = v28;
  v29 = a4[8];
  v30 = a4[10];
  v31 = a4[11];
  v58 = a4[9];
  v59 = v30;
  v60 = v31;
  v61 = v26;
  v32 = a4[4];
  v33 = a4[6];
  v34 = a4[7];
  v54 = a4[5];
  v55 = v33;
  v56 = v34;
  v57 = v29;
  v35 = a4[1];
  v49 = *a4;
  v50 = v35;
  v36 = a4[3];
  v51 = a4[2];
  v52 = v36;
  v53 = v32;
  v48[0] = 0;
  v48[1] = 0;
  v37 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D7759064(v5 + v37, v47, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v38 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
  (*(v24 + 24))(&v49, v48, a2, v46, v47, v11, 0, ObjectType, v24);
  v39 = v45;
  sub_1D77FC830(v11, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  sub_1D7759154(v47, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  v40 = v5 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v40 + 8);
    v42 = swift_getObjectType();
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v58 = v74;
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    (*(v41 + 24))(v39, v15, &v49, v42, v41);
    swift_unknownObjectRelease();
  }

  return sub_1D7791954(v15);
}

uint64_t PaywallInteractor.requestTopChannelsClause(paywallModel:)(_OWORD *a1)
{
  sub_1D77FD188(0);
  sub_1D78B41F4();
  v1 = sub_1D78B4014();
  v2 = sub_1D78B4134();

  return v2;
}

uint64_t sub_1D77FCF70(void *a1, uint64_t a2)
{
  v4 = sub_1D78B4274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B4254();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v20 - v16;
  sub_1D77FD1BC(a1, (&v20 - v16));
  (*(v10 + 16))(v14, v17, v9);
  sub_1D78B4264();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService), *(a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService + 24));
  v18 = sub_1D78B4284();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v17, v9);
  return v18;
}

uint64_t sub_1D77FD1BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (v5 > 2)
  {
    if (v5 - 4 >= 5)
    {
      v6 = [swift_unknownObjectRetain() identifier];
      v7 = sub_1D78B5C74();
      v9 = v8;

      sub_1D77CA6AC(v3, v4, 3u);
      *a2 = v7;
LABEL_7:
      a2[1] = v9;
      v13 = MEMORY[0x1E69B69F0];
      goto LABEL_9;
    }

LABEL_8:
    v13 = MEMORY[0x1E69B69F8];
    goto LABEL_9;
  }

  if (*(a1 + 16))
  {
    if (v5 == 1)
    {
      v10 = [objc_msgSend(v3 sourceChannel)];
      swift_unknownObjectRelease();
      v11 = sub_1D78B5C74();
      v9 = v12;

      sub_1D77CA6AC(v3, v4, 1u);
      *a2 = v11;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  *a2 = v3;
  v13 = MEMORY[0x1E69B6A00];
LABEL_9:
  v14 = *v13;
  v15 = sub_1D78B4254();
  v16 = *(*(v15 - 8) + 104);

  return v16(a2, v14, v15);
}

uint64_t sub_1D77FD33C(uint64_t a1)
{
  sub_1D77FD188(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B6094();
  sub_1D7758FA8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D78BCAB0;
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  v9 = v13;
  v10 = v14;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D775ABD4();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_1D78B42C4("Recovering from error while fetching top channels clause: %{public}@", 68, 2, &dword_1D7739000, v6, v7, v8);

  v11 = sub_1D78B42B4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1D77FB750(0, &unk_1EE095278, sub_1D77FD188, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}