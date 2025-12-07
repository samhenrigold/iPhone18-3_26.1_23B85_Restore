uint64_t sub_100018B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100018C00(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100004F70(&qword_100082EF0, &qword_100069310);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100018ECC();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100018ECC();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_100018ECC()
{
  result = qword_100083460;
  if (!qword_100083460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083460);
  }

  return result;
}

uint64_t sub_100018F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018FAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10001904C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000190B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001913C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000191E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_10001923C(uint64_t a1)
{
  if (!qword_100083018)
  {
    type metadata accessor for FBKSInteraction.FeatureDomain();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100083018);
    }
  }
}

uint64_t sub_1000192A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019374(uint64_t a1)
{
  v2 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000193E0()
{
  v1 = v0;
  v2 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v3 = __chkstk_darwin(v2 - 8);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v39 - v5;
  v6 = type metadata accessor for Date();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v39 - v9;
  sub_100004F70(&qword_100083040, &qword_1000693C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000693B0;
  *&v49 = 0x736572756C696166;
  *(&v49 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v11 = type metadata accessor for FormLaunchConfiguration(0);
  v12 = *(v0 + v11[7]);
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v12;
  *&v49 = 1702125924;
  *(&v49 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v6;
  sub_100019A2C((inited + 144));
  static Date.now.getter();
  *&v49 = 0x6F43657A6F6F6E73;
  *(&v49 + 1) = 0xEB00000000746E75;
  AnyHashable.init<A>(_:)();
  v13 = *(v0 + v11[10]);
  *(inited + 240) = &type metadata for Int;
  *(inited + 216) = v13;
  *&v49 = 0xD000000000000013;
  *(&v49 + 1) = 0x800000010006B740;
  AnyHashable.init<A>(_:)();
  v14 = *(v0 + 80);
  v51 = *(v0 + 64);
  v52 = v14;
  v53 = *(v0 + 96);
  v54 = *(v0 + 112);
  v15 = *(v0 + 48);
  v49 = *(v0 + 32);
  v50 = v15;
  v16 = sub_100013F98();
  v17 = [v16 asJSON];

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(inited + 312) = &type metadata for Data;
  *(inited + 288) = v18;
  *(inited + 296) = v20;
  v48[0] = 1836216166;
  v48[1] = 0xE400000000000000;
  v21 = v41;
  AnyHashable.init<A>(_:)();
  v22 = sub_100014430(*v1, v1[1], v1[2], v1[3]);
  v23 = [v22 asJSON];

  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(inited + 384) = &type metadata for Data;
  *(inited + 360) = v24;
  *(inited + 368) = v26;
  v27 = sub_1000159A0(inited);
  swift_setDeallocating();
  sub_100004F70(&unk_100083920, qword_1000693D0);
  v28 = v42;
  swift_arrayDestroy();
  sub_10000F9EC(v1 + v11[8], v28);
  v29 = *(v21 + 48);
  if (v29(v28, 1, v6) == 1)
  {
    sub_10001A28C(v28);
  }

  else
  {
    v30 = v39;
    (*(v21 + 32))(v39, v28, v6);
    *&v46 = 0x75614C7466617264;
    *(&v46 + 1) = 0xEF6574614468636ELL;
    AnyHashable.init<A>(_:)();
    v47 = v6;
    v31 = sub_100019A2C(&v46);
    (*(v21 + 16))(v31, v30, v6);
    sub_100007274(&v46, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v27;
    sub_10005E0B0(v45, v48, isUniquelyReferenced_nonNull_native);
    sub_100006FC4(v48);
    (*(v21 + 8))(v30, v6);
    v27 = v44;
  }

  v33 = v1 + v11[9];
  v34 = v43;
  sub_10000F9EC(v33, v43);
  if (v29(v34, 1, v6) == 1)
  {
    sub_10001A28C(v34);
  }

  else
  {
    v35 = v40;
    (*(v21 + 32))(v40, v34, v6);
    *&v46 = 0xD000000000000017;
    *(&v46 + 1) = 0x800000010006B760;
    AnyHashable.init<A>(_:)();
    v47 = v6;
    v36 = sub_100019A2C(&v46);
    (*(v21 + 16))(v36, v35, v6);
    sub_100007274(&v46, v45);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v27;
    sub_10005E0B0(v45, v48, v37);
    sub_100006FC4(v48);
    (*(v21 + 8))(v35, v6);
    return v44;
  }

  return v27;
}

uint64_t type metadata accessor for FormLaunchConfiguration(uint64_t a1)
{
  result = qword_1000830A0;
  if (!qword_1000830A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100019A2C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100019A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v74 = 0xD000000000000013;
  v75 = 0x800000010006B740;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v10 = sub_10005BC6C(v76);
  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007018(*(a1 + 56) + 32 * v10, v77);
  sub_100006FC4(v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v25 = type metadata accessor for FormLaunchConfiguration(0);
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }

  v13 = v74;
  v12 = v75;
  type metadata accessor for FBKSLaunchConfiguration();
  v14 = static FBKSLaunchConfiguration.fromJSON(data:)();
  if (!v14)
  {
LABEL_35:
    sub_100013C98(v13, v12);
    goto LABEL_19;
  }

  v15 = v14;
  v74 = 1836216166;
  v75 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_10005BC6C(v76), (v17 & 1) == 0))
  {
    sub_100013C98(v13, v12);

LABEL_18:
    sub_100006FC4(v76);
    goto LABEL_19;
  }

  sub_100007018(*(a1 + 56) + 32 * v16, v77);
  sub_100006FC4(v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100013C98(v13, v12);

    goto LABEL_19;
  }

  v18 = v75;
  v73 = v74;
  v74 = 0x6F43657A6F6F6E73;
  v75 = 0xEB00000000746E75;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v72 = v18, v19 = sub_10005BC6C(v76), v18 = v72, (v20 & 1) == 0))
  {
    sub_100013C98(v13, v12);

    sub_100013C98(v73, v18);
    goto LABEL_18;
  }

  sub_100007018(*(a1 + 56) + 32 * v19, v77);
  sub_100006FC4(v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100013C98(v13, v12);

    sub_100013C98(v73, v18);
    goto LABEL_19;
  }

  v71 = v74;
  type metadata accessor for FBKSForm();
  v70 = static FBKSForm.fromJSON(data:)();
  if (!v70)
  {
    sub_100013C98(v73, v72);

    goto LABEL_35;
  }

  v77[0] = 0x736572756C696166;
  v77[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v21 = sub_10005BC6C(v76), (v22 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v21, v77);
    sub_100006FC4(v76);
    v23 = swift_dynamicCast();
    v24 = v74;
    if (!v23)
    {
      v24 = 0;
    }

    v69 = v24;
  }

  else
  {
    sub_100006FC4(v76);
    v69 = 0;
  }

  v74 = 0x75614C7466617264;
  v75 = 0xEF6574614468636ELL;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v27 = sub_10005BC6C(v76), (v28 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v27, v77);
    sub_100006FC4(v76);
    v29 = type metadata accessor for Date();
    v30 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v9, v30 ^ 1u, 1, v29);
  }

  else
  {
    sub_100006FC4(v76);
    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  }

  v74 = 0xD000000000000017;
  v75 = 0x800000010006B760;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v32 = sub_10005BC6C(v76), (v33 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v32, v77);
    sub_100006FC4(v76);
    v34 = type metadata accessor for Date();
    v35 = swift_dynamicCast();
    (*(*(v34 - 8) + 56))(v7, v35 ^ 1u, 1, v34);
  }

  else
  {
    sub_100006FC4(v76);
    v36 = type metadata accessor for Date();
    (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
  }

  v37 = v73;
  v38 = v70;
  v73 = dispatch thunk of FBKSForm.identifier.getter();
  v68 = v39;
  v67 = dispatch thunk of FBKSForm.authenticationMethod.getter();
  v66 = dispatch thunk of FBKSForm.answers.getter();
  v40 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.getter();
  v64 = v41;
  v65 = v40;
  v63 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.getter();
  v62 = v42;
  v61 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewProceedButtonTitle.getter();
  v60 = v43;
  v59 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewDeclineButtonTitle.getter();
  v58 = v44;
  v57 = dispatch thunk of FBKSLaunchConfiguration.skipsPrompt.getter();
  v56 = dispatch thunk of FBKSLaunchConfiguration.alwaysLaunchInRemoteAlert.getter();
  v55 = dispatch thunk of FBKSLaunchConfiguration.promptStyle.getter();
  v45 = dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.getter();
  v46 = type metadata accessor for FormLaunchConfiguration(0);
  sub_10000F9EC(v9, a2 + v46[8]);
  sub_10000F9EC(v7, a2 + v46[9]);
  Date.init()();
  sub_100013C98(v13, v12);

  sub_100013C98(v37, v72);
  v48 = v67;
  v47 = v68;
  *a2 = v73;
  *(a2 + 8) = v47;
  v50 = v65;
  v49 = v66;
  *(a2 + 16) = v48;
  *(a2 + 24) = v49;
  v51 = v64;
  *(a2 + 32) = v50;
  *(a2 + 40) = v51;
  v52 = v62;
  *(a2 + 48) = v63;
  *(a2 + 56) = v52;
  v53 = v60;
  *(a2 + 64) = v61;
  *(a2 + 72) = v53;
  v54 = v58;
  *(a2 + 80) = v59;
  *(a2 + 88) = v54;
  *(a2 + 96) = v57;
  *(a2 + 97) = v56;
  *(a2 + 104) = v55;
  *(a2 + 112) = v45;
  *(a2 + v46[7]) = v69;
  *(a2 + v46[10]) = v71;
  (*(*(v46 - 1) + 56))(a2, 0, 1, v46);
  sub_10001A28C(v7);
  return sub_10001A28C(v9);
}

uint64_t sub_10001A28C(uint64_t a1)
{
  v2 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
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
      v13 = sub_100004F70(&unk_100083410, &qword_100068D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10001A44C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
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
      v13 = sub_100004F70(&unk_100083410, &qword_100068D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10001A57C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10000BC24(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 304) = a6;
  *(v7 + 112) = a5;
  *(v7 + 120) = v6;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  sub_100004F70(&qword_1000830F0, &qword_100069410);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v8 = type metadata accessor for User();
  *(v7 + 152) = v8;
  *(v7 + 160) = *(v8 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = type metadata accessor for SeedPortal();
  sub_10001B92C();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 184) = v10;
  *(v7 + 192) = v9;

  return _swift_task_switch(sub_10001A76C, v10, v9);
}

uint64_t sub_10001A76C()
{
  v9 = v0;
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = sub_100002D00(v1, SharedLog);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD00000000000002ELL, 0x800000010006B780, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v6 = qword_100085E68;
  *(v0 + 208) = qword_100085E68;

  return _swift_task_switch(sub_10001A924, v6, 0);
}

uint64_t sub_10001A924()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  sub_100063510();
  v5 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_10001B984(v1 + v5, v4);
  v6 = *(v3 + 48);
  v0[27] = v6;
  v0[28] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v4, 1, v2) == 1)
  {
    sub_10001B9F4(v0[17]);
    v7 = 1;
  }

  else
  {
    (*(v0[20] + 32))(v0[18], v0[17], v0[19]);
    v7 = 0;
  }

  (*(v0[20] + 56))(v0[18], v7, 1, v0[19]);
  v8 = v0[23];
  v9 = v0[24];

  return _swift_task_switch(sub_10001AA40, v8, v9);
}

uint64_t sub_10001AA40()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  if ((*(v0 + 216))(v2, 1, v1) == 1)
  {
    sub_10001B9F4(v2);
LABEL_3:
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_10001AC38;
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);

    return sub_100063B00(v4, v5);
  }

  (*(*(v0 + 160) + 32))(*(v0 + 168), v2, v1);
  v7 = User.isUnauthenticated.getter();
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  if (v7)
  {
    (*(v9 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    v11 = FBKSForm.AuthenticationMethod.rawValue.getter();
    v12 = FBKSForm.AuthenticationMethod.rawValue.getter();
    (*(v9 + 8))(v8, v10);
    if (v11 == v12)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 248) = static SeedPortal.shared.getter();
  v17 = (&async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:) + async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:));
  v13 = swift_task_alloc();
  *(v0 + 256) = v13;
  *v13 = v0;
  v13[1] = sub_10001AE10;
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);

  return v17(v16, v14, v15);
}

uint64_t sub_10001AC38()
{
  v2 = *v1;
  (*v1)[30] = v0;

  if (v0)
  {
    v3 = v2[23];
    v4 = v2[24];
    v5 = sub_10001AF80;
  }

  else
  {
    sub_10001B9F4(v2[16]);
    v3 = v2[23];
    v4 = v2[24];
    v5 = sub_10001AD54;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001AD54(uint64_t a1)
{
  v1[31] = static SeedPortal.shared.getter();
  v7 = (&async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:) + async function pointer to dispatch thunk of SeedPortal.fetchFormItem(identifier:));
  v2 = swift_task_alloc();
  v1[32] = v2;
  *v2 = v1;
  v2[1] = sub_10001AE10;
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[10];

  return v7(v5, v3, v4);
}

uint64_t sub_10001AE10()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {
    v3 = v2[23];
    v4 = v2[24];

    return _swift_task_switch(sub_10001B00C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_10001AF80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B00C()
{

  v1 = _convertErrorToNSError(_:)();
  v0[34] = v1;
  v2 = [v1 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_16;
  }

  v6 = sub_10005BCB0(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_100007018(*(v3 + 56) + 32 * v6, (v0 + 2));

  sub_100004F70(&qword_100083100, &qword_100069418);
  if (swift_dynamicCast())
  {
    v9 = v0[9];
    if (v9 >> 62)
    {
LABEL_28:
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v14 = [v12 code];

      if (v14 == 16)
      {

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "Found invalid session error. Will clear out user and try again", v20, 2u);
        }

        v21 = swift_task_alloc();
        v0[35] = v21;
        *v21 = v0;
        v21[1] = sub_10001B340;

        return sub_100063734(1);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10001B340()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10001B460, v3, v2);
}

uint64_t sub_10001B460(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 304);
  v3 = Logger.logObject.getter();
  if (v2)
  {
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed with invalid session twice in a row", v5, 2u);
    }

    swift_willThrow();

    v6 = *(v1 + 8);

    return v6();
  }

  else
  {
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000049B8(0xD00000000000002ELL, 0x800000010006B780, &v17);
      _os_log_impl(&_mh_execute_header, v3, v8, "Retrying %{public}s", v9, 0xCu);
      sub_100005ED8(v10);
    }

    v11 = swift_task_alloc();
    *(v1 + 288) = v11;
    *v11 = v1;
    v11[1] = sub_10001B6B8;
    v12 = *(v1 + 112);
    v13 = *(v1 + 96);
    v14 = *(v1 + 104);
    v15 = *(v1 + 80);
    v16 = *(v1 + 88);

    return sub_10001A628(v15, v16, v13, v14, v12, 1);
  }
}

uint64_t sub_10001B6B8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_10001B890;
  }

  else
  {
    v5 = sub_10001B7F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001B7F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B890()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10001B92C()
{
  result = qword_1000830F8;
  if (!qword_1000830F8)
  {
    type metadata accessor for SeedPortal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000830F8);
  }

  return result;
}

uint64_t sub_10001B984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B9F4(uint64_t a1)
{
  v2 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004F70(&unk_100083BB0, &unk_100069420);
  __chkstk_darwin(v5 - 8);
  v28 = &v25 - v6;
  v7 = type metadata accessor for FBKSEvaluation.Action();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKSEvaluation.Subject();
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004F70(&qword_100082808, &qword_100068380);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  result = __chkstk_darwin(v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  UUID.init(uuidString:)();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10001BED8(v14);
    sub_10001BF40();
    swift_allocError();
    *v20 = 12;
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    (*(v16 + 16))(v11, v19, v15);
    v21 = v29;
    (*(v29 + 104))(v11, enum case for FBKSEvaluation.Subject.id(_:), v9);
    if ((a3 - 2) >= 6)
    {
      sub_10001BF40();
      swift_allocError();
      *v23 = 11;
      swift_willThrow();
      v24 = *(v21 + 8);
      a1 = v21 + 8;
      v24(v11, v9);
    }

    else
    {
      (*(v25 + 104))(v27, **(&off_10007E258 + (a3 - 2)), v26);
      v22 = type metadata accessor for FBKSEvaluation.FormResponse();
      (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
      a1 = dispatch thunk of FBKSEvaluation.__allocating_init(subject:action:formResponse:)();
    }

    (*(v16 + 8))(v19, v15);
  }

  return a1;
}

uint64_t sub_10001BED8(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082808, &qword_100068380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001BF40()
{
  result = qword_100083108;
  if (!qword_100083108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083108);
  }

  return result;
}

uint64_t sub_10001BF94()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083110);
  sub_100002D00(v0, qword_100083110);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10001C004(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v8 = 0;
    _StringGuts.grow(_:)(61);
    v5._countAndFlagsBits = 0xD00000000000003BLL;
    v5._object = 0x800000010006BA60;
    String.append(_:)(v5);
  }

  else
  {
    _StringGuts.grow(_:)(40);

    v8 = 0xD000000000000026;
  }

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  return v8;
}

uint64_t sub_10001C0CC()
{
  type metadata accessor for Persistence();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100085DF0 = v0;
  return result;
}

uint64_t sub_10001C108(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for FormLaunchConfiguration(0);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10001C31C, v2, 0);
}

uint64_t sub_10001C31C()
{
  v93 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1000207D8(v2, v1, 1u);
  v0[24] = v3;
  v4 = sub_1000207D8(v2, v1, 2u);
  v5 = sub_1000207D8(v2, v1, 0);
  v0[25] = sub_1000207D8(v2, v1, 3u);
  v0[26] = type metadata accessor for FBKSSharedPersistence();
  v6 = static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)();
  v0[27] = v6;

  sub_10001F348(v7);

  sub_10001F348(v8);
  v9 = *(v3 + 16);
  if (v9 < 2)
  {
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002D00(v10, qword_100083110);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[2];
      v13 = v0[3];
      v90 = v6;
      v15 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_1000049B8(v14, v13, &v92);
      *(v15 + 12) = 2082;
      v16 = Array.description.getter();
      v18 = sub_1000049B8(v16, v17, &v92);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Form identifier [%{public}s] found in more than one queue: [%{public}s]", v15, 0x16u);
      swift_arrayDestroy();

      v6 = v90;
    }
  }

  if (!v6)
  {
    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100083110);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[2];
      v22 = v0[3];
      v24 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v24 = 136446466;
      *(v24 + 4) = sub_1000049B8(v23, v22, &v92);
      *(v24 + 12) = 2082;
      v25 = Array.description.getter();
      v27 = v26;

      v28 = sub_1000049B8(v25, v27, &v92);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Form identifier [%{public}s] found in queue: [%{public}s] but not in FBA inbox", v24, 0x16u);
      swift_arrayDestroy();

      if (!v4[2])
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

LABEL_18:

  if (!v4[2])
  {
LABEL_13:

    if (v5[2])
    {
LABEL_14:
      v30 = v5[4];
      v29 = v5[5];
      v0[28] = v29;

      v31 = swift_task_alloc();
      v0[29] = v31;
      *v31 = v0;
      v31[1] = sub_10001CED0;
      v32 = v0[16];

      return sub_10001E6E0(v32, v30, v29);
    }

    goto LABEL_21;
  }

LABEL_19:
  v34 = v0[18];
  v35 = v0[19];
  v36 = v0[17];
  v37 = v4[4];
  v38 = v4[5];

  sub_10001D9C4(v36, v37, v38);

  if ((*(v35 + 48))(v36, 1, v34) != 1)
  {
    v45 = v0[23];
    v46 = v0[17];
    v47 = v0[18];
    v48 = v0[13];
    v49 = v0[8];
    v50 = v0[9];

    sub_10000F8C8(v46, v45);
    (*(v50 + 16))(v48, v45 + *(v47 + 24), v49);
    v51 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
    v91 = FBKSCampaign.init(state:updatedAt:)();
LABEL_30:

    v60 = v45;
LABEL_31:
    sub_10000F990(v60);
    goto LABEL_32;
  }

  sub_1000071C8(v0[17], &qword_100082CB0, &qword_100068EB0);
  if (v5[2])
  {
    goto LABEL_14;
  }

LABEL_21:

  v39 = v0[24];
  if (v39[2])
  {
    v40 = v0[18];
    v41 = v0[19];
    v42 = v0[15];
    v43 = v39[4];
    v44 = v39[5];

    sub_10001D9C4(v42, v43, v44);

    if ((*(v41 + 48))(v42, 1, v40) != 1)
    {
      v45 = v0[21];
      v54 = v0[18];
      v55 = v0[15];
      v56 = v0[13];
      v57 = v0[8];
      v58 = v0[9];

      sub_10000F8C8(v55, v45);
      (*(v58 + 16))(v56, v45 + *(v54 + 24), v57);
      v59 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
LABEL_29:
      v91 = FBKSCampaign.init(state:updatedAt:)();
      goto LABEL_30;
    }

    sub_1000071C8(v0[15], &qword_100082CB0, &qword_100068EB0);
  }

  else
  {
  }

  v52 = v0[25];
  if (!v0[27])
  {
    if (!v52[2])
    {

      goto LABEL_43;
    }

    v63 = v52[4];
    v62 = v52[5];

    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100002D00(v64, qword_100083110);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v92 = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_1000049B8(v63, v62, &v92);
      _os_log_impl(&_mh_execute_header, v65, v66, "Using alerted campaign [%{public}s]", v67, 0xCu);
      sub_100005ED8(v68);
    }

    v69 = v0[18];
    v70 = v0[19];
    v71 = v0[14];
    sub_10001D76C(v71, v63, v62);

    if ((*(v70 + 48))(v71, 1, v69) == 1)
    {
      sub_1000071C8(v0[14], &qword_100082CB0, &qword_100068EB0);
LABEL_43:
      v91 = 0;
      goto LABEL_32;
    }

    v72 = v0[20];
    v73 = v0[18];
    v74 = v0[9];
    sub_10000F8C8(v0[14], v72);
    v75 = static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)();
    v76 = *(v73 + 32);
    v77 = (v74 + 48);
    v78 = v0[8];
    if (!v75)
    {
      v83 = v0[5];
      sub_10000F9EC(v72 + v76, v83);
      v84 = *v77;
      if ((*v77)(v83, 1, v78) == 1)
      {
        v85 = v0[8];
        v86 = v0[5];
        (*(v0[9] + 16))(v0[10], v0[20] + *(v0[18] + 24), v85);
        if (v84(v86, 1, v85) != 1)
        {
          sub_1000071C8(v0[5], &unk_100083410, &qword_100068D50);
        }
      }

      else
      {
        (*(v0[9] + 32))(v0[10], v0[5], v0[8]);
      }

      v88 = v0[20];
      v89 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
      v91 = FBKSCampaign.init(state:updatedAt:)();
      v60 = v88;
      goto LABEL_31;
    }

    v79 = v0[6];
    sub_10000F9EC(v72 + v76, v79);
    v80 = *v77;
    if ((*v77)(v79, 1, v78) == 1)
    {
      v81 = v0[8];
      v82 = v0[6];
      (*(v0[9] + 16))(v0[11], v0[20] + *(v0[18] + 24), v81);
      if (v80(v82, 1, v81) != 1)
      {
        sub_1000071C8(v0[6], &unk_100083410, &qword_100068D50);
      }
    }

    else
    {
      (*(v0[9] + 32))(v0[11], v0[6], v0[8]);
    }

    v45 = v0[20];
    v87 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
    goto LABEL_29;
  }

  FBKSSInboxTat.dateAdded.getter();
  v53 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
  v91 = FBKSCampaign.init(state:updatedAt:)();

LABEL_32:

  v61 = v0[1];

  return v61(v91);
}

uint64_t sub_10001CED0()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10001CFFC, v1, 0);
}

uint64_t sub_10001CFFC()
{
  v57 = v0;
  v1 = v0[18];
  v2 = v0[16];
  if ((*(v0[19] + 48))(v2, 1, v1) != 1)
  {
    v9 = v0[22];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[7];

    sub_10000F8C8(v2, v9);
    sub_10000F9EC(v9 + *(v1 + 32), v12);
    v13 = *(v11 + 48);
    if (v13(v12, 1, v10) == 1)
    {
      v14 = v0[8];
      v15 = v0[7];
      (*(v0[9] + 16))(v0[12], v0[22] + *(v0[18] + 24), v14);
      if (v13(v15, 1, v14) != 1)
      {
        sub_1000071C8(v0[7], &unk_100083410, &qword_100068D50);
      }
    }

    else
    {
      (*(v0[9] + 32))(v0[12], v0[7], v0[8]);
    }

    v16 = v0[22];
    objc_allocWithZone(type metadata accessor for FBKSCampaign());
    goto LABEL_14;
  }

  sub_1000071C8(v2, &qword_100082CB0, &qword_100068EB0);
  v3 = v0[24];
  if (v3[2])
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[15];
    v7 = v3[4];
    v8 = v3[5];

    sub_10001D9C4(v6, v7, v8);

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v16 = v0[21];
      v19 = v0[18];
      v20 = v0[15];
      v21 = v0[13];
      v22 = v0[8];
      v23 = v0[9];

      sub_10000F8C8(v20, v16);
      (*(v23 + 16))(v21, v16 + *(v19 + 24), v22);
      v24 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
      goto LABEL_14;
    }

    sub_1000071C8(v0[15], &qword_100082CB0, &qword_100068EB0);
  }

  else
  {
  }

  v17 = v0[25];
  if (v0[27])
  {

    FBKSSInboxTat.dateAdded.getter();
    v18 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
    v55 = FBKSCampaign.init(state:updatedAt:)();

    goto LABEL_16;
  }

  if (!v17[2])
  {

    goto LABEL_27;
  }

  v29 = v17[4];
  v28 = v17[5];

  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100002D00(v30, qword_100083110);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_1000049B8(v29, v28, &v56);
    _os_log_impl(&_mh_execute_header, v31, v32, "Using alerted campaign [%{public}s]", v33, 0xCu);
    sub_100005ED8(v34);
  }

  v35 = v0[18];
  v36 = v0[19];
  v37 = v0[14];
  sub_10001D76C(v37, v29, v28);

  if ((*(v36 + 48))(v37, 1, v35) != 1)
  {
    v38 = v0[20];
    v39 = v0[18];
    v40 = v0[9];
    sub_10000F8C8(v0[14], v38);
    v41 = static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)();
    v42 = *(v39 + 32);
    v43 = (v40 + 48);
    v44 = v0[8];
    if (!v41)
    {
      v49 = v0[5];
      sub_10000F9EC(v38 + v42, v49);
      v50 = *v43;
      if ((*v43)(v49, 1, v44) == 1)
      {
        v51 = v0[8];
        v52 = v0[5];
        (*(v0[9] + 16))(v0[10], v0[20] + *(v0[18] + 24), v51);
        if (v50(v52, 1, v51) != 1)
        {
          sub_1000071C8(v0[5], &unk_100083410, &qword_100068D50);
        }
      }

      else
      {
        (*(v0[9] + 32))(v0[10], v0[5], v0[8]);
      }

      v53 = v0[20];
      v54 = objc_allocWithZone(type metadata accessor for FBKSCampaign());
      v55 = FBKSCampaign.init(state:updatedAt:)();
      v25 = v53;
      goto LABEL_15;
    }

    v45 = v0[6];
    sub_10000F9EC(v38 + v42, v45);
    v46 = *v43;
    if ((*v43)(v45, 1, v44) == 1)
    {
      v47 = v0[8];
      v48 = v0[6];
      (*(v0[9] + 16))(v0[11], v0[20] + *(v0[18] + 24), v47);
      if (v46(v48, 1, v47) != 1)
      {
        sub_1000071C8(v0[6], &unk_100083410, &qword_100068D50);
      }
    }

    else
    {
      (*(v0[9] + 32))(v0[11], v0[6], v0[8]);
    }

    v16 = v0[20];
    objc_allocWithZone(type metadata accessor for FBKSCampaign());
LABEL_14:
    v55 = FBKSCampaign.init(state:updatedAt:)();

    v25 = v16;
LABEL_15:
    sub_10000F990(v25);
    goto LABEL_16;
  }

  sub_1000071C8(v0[14], &qword_100082CB0, &qword_100068EB0);
LABEL_27:
  v55 = 0;
LABEL_16:

  v26 = v0[1];

  return v26(v55);
}

uint64_t sub_10001D76C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_10001EF40(a2, a3, a1);
  v4 = type metadata accessor for FormLaunchConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_10001D9C4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_10001EF40(a2, a3, a1);
  v4 = type metadata accessor for FormLaunchConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_10001DC88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 208) = a4;
  *(v6 + 216) = a5;
  *(v6 + 97) = a2;
  *(v6 + 192) = a1;
  *(v6 + 200) = a3;
  *(v6 + 224) = type metadata accessor for FormLaunchConfiguration(0);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_10001DD30, v5, 0);
}

uint64_t sub_10001DD30()
{
  v45 = v0;
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100083110);
  sub_10000F92C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006B990, &v44);
    *(v8 + 12) = 2080;
    v9 = *v7;
    v10 = v7[1];

    sub_10000F990(v7);
    v11 = sub_1000049B8(v9, v10, &v44);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s [%s]", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000F990(v7);
  }

  v12 = *(v0 + 224);
  v13 = *(*(v0 + 192) + *(v12 + 28));
  if (qword_100082658 != -1)
  {
    swift_once();
  }

  v14 = qword_100083A78;

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 integerForKey:v16];

  if (v13 >= v17)
  {
    sub_100020464(*(v0 + 200), *(v0 + 208), *(v0 + 97));
    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 192);
    v40 = qword_100085E18;
    *(v0 + 248) = qword_100085E18;
    *(v0 + 256) = *v39;
    *(v0 + 264) = v39[1];

    return _swift_task_switch(sub_10001E220, v40, 0);
  }

  else
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 192);
    v21 = v20[1];
    v22 = v20[3];
    v42 = v20[2];
    v43 = *v20;
    v23 = *(v20 + 3);
    *(v0 + 16) = *(v20 + 2);
    *(v0 + 32) = v23;
    v25 = *(v20 + 5);
    v24 = *(v20 + 6);
    v26 = *(v20 + 4);
    *(v0 + 96) = *(v20 + 112);
    *(v0 + 64) = v25;
    *(v0 + 80) = v24;
    *(v0 + 48) = v26;
    v41 = v13 + 1;
    v27 = v19[8];
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 56);
    v29(v18 + v27, 1, 1, v28);
    v29(v18 + v19[9], 1, 1, v28);

    sub_10000FA5C(v0 + 16, v0 + 104);
    Date.init()();
    *v18 = v43;
    *(v18 + 8) = v21;
    *(v18 + 16) = v42;
    *(v18 + 24) = v22;
    v30 = *(v0 + 32);
    *(v18 + 32) = *(v0 + 16);
    *(v18 + 48) = v30;
    v31 = *(v0 + 48);
    v32 = *(v0 + 64);
    v33 = *(v0 + 80);
    *(v18 + 112) = *(v0 + 96);
    *(v18 + 80) = v32;
    *(v18 + 96) = v33;
    *(v18 + 64) = v31;
    *(v18 + *(v12 + 28)) = v41;
    *(v18 + v19[10]) = 0;
    v34 = [objc_opt_self() standardUserDefaults];
    sub_1000193E0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = String._bridgeToObjectiveC()();
    [v34 setObject:isa forKey:v36];

    sub_10000F990(v18);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_10001E220()
{
  sub_100033994(*(v0 + 256), *(v0 + 264), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for FormLaunchConfiguration(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001E394, v3, 0);
}

uint64_t sub_10001E394()
{
  String.append(_:)(*(v0 + 24));
  *(v0 + 80) = 0xD000000000000013;
  *(v0 + 88) = 0x800000010006B8C0;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10001E468;
  v2 = *(v0 + 48);

  return sub_10001E6E0(v2, 0xD000000000000013, 0x800000010006B8C0);
}

uint64_t sub_10001E468()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10001E578, v1, 0);
}

uint64_t sub_10001E578()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 48))(v1, 1, v0[7]);
  v3 = v0[11];
  if (v2 == 1)
  {

    sub_1000071C8(v1, &qword_100082CB0, &qword_100068EB0);
    v4 = sub_100004F70(&unk_1000832F0, &qword_1000696B0);
    v5 = 1;
  }

  else
  {
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[2];
    sub_10000F8C8(v1, v6);
    v4 = sub_100004F70(&unk_1000832F0, &qword_1000696B0);
    v9 = (v8 + *(v4 + 48));
    sub_10000F8C8(v6, v8);
    v5 = 0;
    *v9 = v7;
    v9[1] = v3;
  }

  (*(*(v4 - 8) + 56))(v0[2], v5, 1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_10001E704, v3, 0);
}

uint64_t sub_10001E704()
{
  sub_10001EF40(v0[7], v0[8], v0[6]);
  v1 = v0[6];
  v2 = type metadata accessor for FormLaunchConfiguration(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10001EA28()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  sub_100033994(*(v0 + 80), *(v0 + 88), v1);

  return _swift_task_switch(sub_10001EAC4, v2, 0);
}

uint64_t sub_10001EAC4()
{

  v1 = *(v0 + 48);
  v2 = type metadata accessor for FormLaunchConfiguration(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001EB68(uint64_t a1, unint64_t a2)
{
  v2 = sub_100004F70(&qword_1000832C0, &qword_100069488);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_100004F70(&qword_1000832C8, &qword_100069490);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_100004F70(&qword_1000832D0, &qword_100069498);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_100004F70(&qword_1000832D8, &qword_1000694A0);
  Regex.init(_regexString:version:)();
  sub_100021B58();
  dispatch thunk of RegexComponent.regex.getter();
  String.subscript.getter();
  Regex.wholeMatch(in:)();
  v16 = *(v10 + 8);
  v16(v13, v9);

  v17 = v22;
  if ((*(v23 + 48))(v4, 1, v22) == 1)
  {
    v16(v15, v9);
    sub_1000071C8(v4, &qword_1000832C0, &qword_100069488);
    return 0;
  }

  else
  {
    v19 = v23;
    (*(v23 + 32))(v8, v4, v17);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v20 = static String._fromSubstring(_:)();

    (*(v19 + 8))(v8, v17);
    v16(v15, v9);
    return v20;
  }
}

uint64_t sub_10001EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_1000071C8(v19, &qword_100082860, &unk_1000683C0);
    goto LABEL_9;
  }

  sub_100004F70(&qword_100082818, &qword_100068388);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  sub_100019A90(v16[1], v8);

  v12 = type metadata accessor for FormLaunchConfiguration(0);
  if ((*(*(v12 - 8) + 48))(v8, 1, v12) == 1)
  {
    sub_1000071C8(v8, &qword_100082CB0, &qword_100068EB0);
    v13 = 1;
LABEL_10:
    sub_100021C94();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = v13;
    swift_willThrow();
  }

  return sub_10000F8C8(v8, a3);
}

uint64_t sub_10001F184(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001F43C(v3);
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

void *sub_10001F210(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100004FD8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100007018(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100004FD8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10001F348(uint64_t result)
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

  result = sub_100065BA0(result, v10, 1, v3);
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

void *sub_10001F450()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

void *sub_10001F528(unsigned __int8 a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 arrayForKey:v2];

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10001F210(v5);

    if (v6)
    {
      return v6;
    }
  }

  return v4;
}

void sub_10001F660(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10001F528(a3);
  v7 = v6;
  v8 = v6[2];
  if (v8)
  {
    v9 = v6 + 5;
    v10 = v6[2];
    while (1)
    {
      v11 = *(v9 - 1) == a1 && *v9 == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002D00(v17, qword_100083110);

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v19 = 136446722;
      *(v19 + 4) = sub_1000049B8(0xD000000000000015, 0x800000010006B820, &v28);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1000049B8(a1, a2, &v28);
      *(v19 + 22) = 2082;
      v20 = 0xD000000000000013;
      v21 = "pendingNotifications";
      v22 = "alertedCampaigns";
      v23 = 0xD000000000000010;
      if (a3 == 2)
      {
        v23 = 0xD000000000000014;
      }

      else
      {
        v22 = "addToIndex(key:type:)";
      }

      if (a3)
      {
        v20 = 0xD000000000000014;
        v21 = "snoozedNotifications";
      }

      if (a3 <= 1u)
      {
        v24 = v20;
      }

      else
      {
        v24 = v23;
      }

      if (a3 <= 1u)
      {
        v25 = v21;
      }

      else
      {
        v25 = v22;
      }

      v26 = sub_1000049B8(v24, v25 | 0x8000000000000000, &v28);

      *(v19 + 24) = v26;
      _os_log_impl(&_mh_execute_header, oslog, v18, "%{public}s key [%{public}s] already present in index [%{public}s]", v19, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {
LABEL_9:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100065BA0(0, v8 + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_100065BA0((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[16 * v13];
    *(v14 + 4) = a1;
    *(v14 + 5) = a2;
    v15 = [objc_opt_self() standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    oslog = String._bridgeToObjectiveC()();

    [v15 setObject:isa forKey:oslog];
  }
}

unint64_t sub_10001FA24(Swift::String *a1)
{
  sub_1000193E0();
  String.append(_:)(*a1);
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];

  sub_10001F660(0xD000000000000013, 0x800000010006B8C0, 0);
  return 0xD000000000000013;
}

unint64_t sub_10001FB30(Swift::String *a1)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083110);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000049B8(0xD000000000000026, 0x800000010006B9E0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100005ED8(v6);
  }

  return sub_10001FA24(a1);
}

uint64_t sub_10001FC88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v9 = type metadata accessor for FormLaunchConfiguration(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v10[10];
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v15(&v12[v13], 1, 1, v14);
  v15(&v12[v10[11]], 1, 1, v14);
  Date.init()();
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = v29;
  *(v12 + 3) = a5;
  v16 = *(a1 + 48);
  *(v12 + 4) = *(a1 + 32);
  *(v12 + 5) = v16;
  *(v12 + 6) = *(a1 + 64);
  v12[112] = *(a1 + 80);
  v17 = *(a1 + 16);
  *(v12 + 2) = *a1;
  *(v12 + 3) = v17;
  *&v12[v10[9]] = 0;
  *&v12[v10[12]] = 0;

  sub_10000FA5C(a1, &v30);
  sub_1000193E0();
  sub_10000F990(v12);
  v30 = 0xD000000000000014;
  v31 = 0x800000010006BA10;
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);
  v20 = v30;
  v19 = v31;
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100002D00(v21, qword_100083110);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_1000049B8(0xD00000000000002ELL, 0x800000010006BA30, &v30);
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_1000049B8(v20, v19, &v30);
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s [%{public}s]", v24, 0x16u);
    swift_arrayDestroy();
  }

  v25 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = String._bridgeToObjectiveC()();
  [v25 setObject:isa forKey:v27];

  sub_10001F660(v20, v19, 1u);
  return v20;
}

void *sub_100020014()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

void *sub_1000200EC()
{
  v0 = sub_10001F450();
  v1 = v0[2];
  if (v1)
  {
    v2 = v0 + 5;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(v2 - 1);
      v4 = *v2;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100065CAC(0, v3[2] + 1, 1, v3);
      }

      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        v3 = sub_100065CAC((v6 > 1), v7 + 1, 1, v3);
      }

      v3[2] = v7 + 1;
      v8 = &v3[3 * v7];
      v8[4] = v5;
      v8[5] = v4;
      *(v8 + 48) = 0;
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100020014();
  v10 = v9[2];
  if (v10)
  {
    v11 = v9 + 5;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100065CAC(0, v3[2] + 1, 1, v3);
      }

      v15 = v3[2];
      v14 = v3[3];
      if (v15 >= v14 >> 1)
      {
        v3 = sub_100065CAC((v14 > 1), v15 + 1, 1, v3);
      }

      v3[2] = v15 + 1;
      v16 = &v3[3 * v15];
      v16[4] = v13;
      v16[5] = v12;
      *(v16 + 48) = 1;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return v3;
}

void sub_100020290(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_10001F528(a3);
  v6 = v5[2];
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 5;
    while (1)
    {
      v9 = *(v8 - 1) == a1 && *v8 == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    sub_10001F184(v7);

    v10 = [objc_opt_self() standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = String._bridgeToObjectiveC()();

    [v10 setObject:isa forKey:v12];
  }

  else
  {
LABEL_9:
  }
}

void sub_100020464(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083110);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000049B8(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Removing %{public}s", v9, 0xCu);
    sub_100005ED8(v10);
  }

  if (a3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  sub_100020290(a1, a2, v11);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  [v12 removeObjectForKey:v13];
}

void sub_100020630()
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002D00(v0, qword_100083110);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_1000049B8(0x6C416574656C6564, 0xEF2928617461446CLL, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100005ED8(v4);
  }

  v5 = [objc_opt_self() standardUserDefaults];
  static Strings.Daemon.bundleIdentifier.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 removePersistentDomainForName:v6];
}

uint64_t sub_1000207D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = sub_10001F528(a3);
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 40;
    v17 = _swiftEmptyArrayStorage;
    v16 = result + 40;
    do
    {
      v8 = (v7 + 16 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 - 1);
        v11 = *v8;
        v6 = v9 + 1;
        sub_1000070C4();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v8 += 2;
        ++v9;
        if (v5 == v6)
        {
          goto LABEL_15;
        }
      }

      v12 = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100004FD8(0, v17[2] + 1, 1);
        v12 = v17;
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_100004FD8((v13 > 1), v14 + 1, 1);
        v12 = v17;
      }

      v12[2] = v14 + 1;
      v17 = v12;
      v15 = &v12[2 * v14];
      v15[4] = v10;
      v15[5] = v11;
      v7 = v16;
    }

    while (v5 - 1 != v9);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v17;
}

void sub_10002096C(uint64_t a1, unint64_t a2)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083110);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 removeObjectForKey:v10];

  sub_100020290(a1, a2, 0);
}

void sub_100020B20(uint64_t a1, unint64_t a2)
{
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083110);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  sub_100020290(a1, a2, 3u);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 removeObjectForKey:v10];
}

BOOL sub_100020CD8(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1000207D8(a1, a2, 0) + 16);

  if (v4)
  {
    return 1;
  }

  v5 = *(sub_1000207D8(a1, a2, 3u) + 16);

  if (v5)
  {
    return 1;
  }

  v7 = *(sub_1000207D8(a1, a2, 1u) + 16);

  result = 1;
  if (!v7)
  {
    v8 = *(sub_1000207D8(a1, a2, 2u) + 16);

    return v8 != 0;
  }

  return result;
}

uint64_t sub_100020D7C(uint64_t a1, uint64_t a2)
{
  v55 = sub_1000207D8(a1, a2, 0);
  v2 = *(v55 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = (v55 + 40);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = qword_1000825F0;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100002D00(v10, qword_100083110);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v61 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_1000049B8(v7, v8, &v61);
        _os_log_impl(&_mh_execute_header, v11, v12, "Removing %{public}s", v13, 0xCu);
        sub_100005ED8(v14);
      }

      v5 = [v3 standardUserDefaults];
      v6 = String._bridgeToObjectiveC()();
      [v5 removeObjectForKey:v6];

      sub_100020290(v7, v8, 0);

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v56 = sub_1000207D8(a1, a2, 1u);
  v15 = *(v56 + 16);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = (v56 + 40);
    do
    {
      v20 = *(v17 - 1);
      v21 = *v17;
      v22 = qword_1000825F0;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002D00(v23, qword_100083110);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v61 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_1000049B8(v20, v21, &v61);
        _os_log_impl(&_mh_execute_header, v24, v25, "Removing %{public}s", v26, 0xCu);
        sub_100005ED8(v27);
      }

      sub_100020290(v20, v21, 1u);
      v18 = [v16 standardUserDefaults];
      v19 = String._bridgeToObjectiveC()();
      [v18 removeObjectForKey:v19];

      v17 += 2;
      --v15;
    }

    while (v15);
  }

  v57 = sub_1000207D8(a1, a2, 2u);
  v28 = *(v57 + 16);
  if (v28)
  {
    v29 = objc_opt_self();
    v30 = (v57 + 40);
    do
    {
      v33 = *(v30 - 1);
      v34 = *v30;
      v35 = qword_1000825F0;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100002D00(v36, qword_100083110);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v61 = v40;
        *v39 = 136446210;
        *(v39 + 4) = sub_1000049B8(v33, v34, &v61);
        _os_log_impl(&_mh_execute_header, v37, v38, "Removing %{public}s", v39, 0xCu);
        sub_100005ED8(v40);
      }

      sub_100020290(v33, v34, 2u);
      v31 = [v29 standardUserDefaults];
      v32 = String._bridgeToObjectiveC()();
      [v31 removeObjectForKey:v32];

      v30 += 2;
      --v28;
    }

    while (v28);
  }

  v60 = sub_1000207D8(a1, a2, 3u);
  v41 = *(v60 + 16);
  if (v41)
  {
    v42 = objc_opt_self();
    v43 = (v60 + 40);
    do
    {
      v47 = *(v43 - 1);
      v46 = *v43;
      v48 = qword_1000825F0;

      if (v48 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100002D00(v49, qword_100083110);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v61 = v53;
        *v52 = 136446210;
        *(v52 + 4) = sub_1000049B8(v47, v46, &v61);
        _os_log_impl(&_mh_execute_header, v50, v51, "Removing %{public}s", v52, 0xCu);
        sub_100005ED8(v53);
      }

      sub_100020290(v47, v46, 3u);
      v44 = [v42 standardUserDefaults];
      v45 = String._bridgeToObjectiveC()();
      [v44 removeObjectForKey:v45];

      v43 += 2;
      --v41;
    }

    while (v41);
  }
}

uint64_t sub_10002150C(uint64_t a1)
{
  v2 = type metadata accessor for FormLaunchConfiguration(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v32 = *(a1 + 16);
  v40 = *(a1 + 112);
  v9 = *(a1 + 96);
  v10 = *(a1 + 64);
  v38 = *(a1 + 80);
  v39 = v9;
  v11 = *(a1 + 32);
  v36 = *(a1 + 48);
  v37 = v10;
  v35 = v11;
  v12 = v3[10];
  v31 = *(a1 + v3[9]);

  sub_10000FA5C(&v35, &v33);
  Date.init()();
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v5[v12], 0, 1, v13);
  v15 = *(a1 + v3[12]);
  v14(&v5[v3[11]], 1, 1, v13);
  Date.init()();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v32;
  *(v5 + 3) = v8;
  v16 = v38;
  v17 = v39;
  *(v5 + 4) = v37;
  *(v5 + 5) = v16;
  *(v5 + 6) = v17;
  v5[112] = v40;
  v18 = v36;
  *(v5 + 2) = v35;
  *(v5 + 3) = v18;
  *&v5[v3[9]] = v31;
  *&v5[v3[12]] = v15;
  sub_1000193E0();
  v33 = 0xD000000000000010;
  v34 = 0x800000010006B7D0;
  v19._countAndFlagsBits = v6;
  v19._object = v7;
  String.append(_:)(v19);
  v20 = v33;
  v21 = v34;
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100002D00(v22, qword_100083110);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000049B8(0xD00000000000002DLL, 0x800000010006B7F0, &v33);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1000049B8(v20, v21, &v33);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s [%{public}s]", v25, 0x16u);
    swift_arrayDestroy();
  }

  v26 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = String._bridgeToObjectiveC()();
  [v26 setObject:isa forKey:v28];

  sub_10001F660(v20, v21, 3u);
  sub_10000F990(v5);
  return v20;
}

unint64_t sub_100021900(Swift::String *a1)
{
  sub_1000193E0();
  v2 = *a1;
  v11[0] = 0xD000000000000014;
  v11[1] = 0x800000010006B8E0;
  String.append(_:)(v2);
  if (qword_1000825F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100083110);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006B900, v11);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_1000049B8(0xD000000000000014, 0x800000010006B8E0, v11);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s [%{public}s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  sub_10001F660(0xD000000000000014, 0x800000010006B8E0, 2u);
  return 0xD000000000000014;
}

unint64_t sub_100021B58()
{
  result = qword_1000832E0;
  if (!qword_1000832E0)
  {
    sub_100005F88(&qword_1000832D0, &qword_100069498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000832E0);
  }

  return result;
}

void *sub_100021BBC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001F210(v4);

    if (v5)
    {
      return v5;
    }
  }

  return v3;
}

unint64_t sub_100021C94()
{
  result = qword_1000832E8;
  if (!qword_1000832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000832E8);
  }

  return result;
}

__n128 sub_100021CFC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100021D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100021D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100021DB8(uint64_t a1, void *a2)
{
  v3 = sub_100013DAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100021E64(uint64_t a1, void *a2)
{
  v3 = sub_100013DAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100021EC8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100013DAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100021F94()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083300);
  sub_100002D00(v0, qword_100083300);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100022004()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100085DF8);
  v1 = sub_100002D00(v0, qword_100085DF8);
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100083300);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000220CC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_1000220F0, 0, 0);
}

uint64_t sub_1000220F0()
{
  v21 = v0;
  if (qword_100082650 != -1)
  {
    swift_once();
  }

  v1 = qword_100083A60;

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 integerForKey:v3];

  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083300);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 16);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446722;
    *(v12 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006BCD0, &v20);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *&v11[OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount];

    *(v12 + 22) = 2048;
    *(v12 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Notifications posted in this interval: %ld. Max allowed: %ld", v12, 0x20u);
    sub_100005ED8(v13);
  }

  else
  {
  }

  if (*(*(v0 + 16) + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount) >= v4)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reached maximum number of notifications for this interval.", v17, 2u);
    }

    v14 = *(v0 + 24);
  }

  else
  {
    v14 = 1;
  }

  v18 = *(v0 + 8);

  return v18(v14 & 1);
}

id sub_1000223C4()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationController()) init];
  qword_100085E10 = result;
  return result;
}

id sub_1000223F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount] = 0;
  v6 = OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter;
  static Strings.fbaBundleIdentifier.getter();
  sub_100008714(0, &qword_100083480, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  v8 = objc_allocWithZone(UNUserNotificationCenter);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithBundleIdentifier:v9 queue:v7];

  *&v1[v6] = v10;
  v11 = type metadata accessor for NotificationController();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_1000225C0()
{
  v1 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083300);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006BCB0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100005ED8(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  [v7 removeAllPendingNotificationRequests];
  result = [v7 removeAllDeliveredNotifications];
  *(v1 + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount) = 0;
  return result;
}

uint64_t sub_10002273C()
{
  v1[43] = v0;
  v2 = type metadata accessor for Date();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  v1[50] = swift_task_alloc();
  v3 = type metadata accessor for FormLaunchConfiguration(0);
  v1[51] = v3;
  v1[52] = *(v3 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();

  return _swift_task_switch(sub_1000228F8, 0, 0);
}

uint64_t sub_1000228F8()
{
  v1 = *(v0[43] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  v0[56] = v1;
  [v1 setDelegate:?];
  [v1 setWantsNotificationResponsesDelivered];
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0[57] = qword_100085DF0;
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_1000229F4;

  return sub_1000249D4();
}

uint64_t sub_1000229F4(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_100022AF4, 0, 0);
}

uint64_t sub_100022AF4()
{
  v1 = v0;
  v2 = v0 + 2;
  v25 = v0 + 39;
  v24 = v0[56];
  *(v0[43] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount) = v0[59];
  static Strings.Notification.snoozeActionIdentifier.getter();
  v3._countAndFlagsBits = 0x657A6F6F6E53;
  v3._object = 0xE600000000000000;
  FBKSLocalizedString(key:)(v3);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = [v6 actionWithIdentifier:v4 title:v5 options:0];
  v0[60] = v7;

  static Strings.Notification.declineActionIdentifier.getter();
  v8._countAndFlagsBits = 0x656E696C636544;
  v8._object = 0xE700000000000000;
  FBKSLocalizedString(key:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 actionWithIdentifier:v9 title:v10 options:2];
  v1[61] = v11;

  static Strings.Notification.categoryIdentifier.getter();
  sub_100004F70(&qword_100083450, &qword_100069710);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000695C0;
  *(v12 + 32) = v7;
  *(v12 + 40) = v11;
  v13 = v7;
  v14 = v11;
  v15 = String._bridgeToObjectiveC()();

  sub_100008714(0, &qword_100083458, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = Array._bridgeToObjectiveC()().super.isa;
  v18 = [objc_opt_self() categoryWithIdentifier:v15 actions:isa intentIdentifiers:v17 options:0];
  v1[62] = v18;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000695D0;
  *(inited + 32) = v18;
  v20 = v18;
  sub_100018C00(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100008714(0, &qword_100083460, UNNotificationCategory_ptr);
  sub_10002DED0();
  v21 = Set._bridgeToObjectiveC()().super.isa;

  [v24 setNotificationCategories:v21];

  v1[2] = v1;
  v1[7] = v25;
  v1[3] = sub_100022F08;
  v22 = swift_continuation_init();
  v1[17] = sub_100004F70(&qword_100083400, &unk_1000696D0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000255A4;
  v1[13] = &unk_10007E4D0;
  v1[14] = v22;
  [v24 getDeliveredNotificationsWithCompletionHandler:?];

  return _swift_continuation_await(v2);
}

uint64_t sub_100022F08()
{

  return _swift_task_switch(sub_100022FE8, 0, 0);
}

uint64_t sub_100022FE8(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v33 = v4;
  v5 = v4[39];
  v4[40] = &_swiftEmptySetSingleton;
  if (v5 >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v6 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_20:
    v28 = v4[57];

    a1 = sub_10002337C;
    a2 = v28;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = &off_100081000;
    a4.n128_u64[0] = 138412290;
    v30 = a4;
    v31 = v5;
    while (1)
    {
      v16 = v8 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v5 + 8 * v7 + 32);
      v17 = v16;
      v18 = [v16 v9[296]];
      v19 = [v18 content];

      v20 = [v19 userInfo];
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v4[35] = 7955819;
      v4[36] = 0xE300000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v21 + 16))
      {
        break;
      }

      v22 = sub_10005BC6C((v4 + 23));
      if ((v23 & 1) == 0)
      {
        break;
      }

      sub_100007018(*(v21 + 56) + 32 * v22, (v4 + 28));
      sub_100006FC4((v4 + 23));

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_10002A8D8(&v32, v4[37], v4[38]);

LABEL_6:
      if (v6 == ++v7)
      {
        goto LABEL_20;
      }
    }

    sub_100006FC4((v4 + 23));
LABEL_15:
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100083300);
    v25 = v17;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v10 = swift_slowAlloc();
      v11 = v6;
      v12 = v8;
      v13 = v9;
      v14 = swift_slowAlloc();
      *v10 = v30.n128_u32[0];
      *(v10 + 4) = v25;
      *v14 = v25;
      v15 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Found invalid payload for notification %@", v10, 0xCu);
      sub_1000071C8(v14, &qword_100082708, &qword_100068320);
      v9 = v13;
      v8 = v12;
      v6 = v11;
      v5 = v31;
    }

    else
    {
    }

    goto LABEL_6;
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10002337C()
{
  *(v0 + 504) = sub_100021BBC();

  return _swift_task_switch(sub_1000233E4, 0, 0);
}

uint64_t sub_1000233E4()
{
  v35 = v2;
  v3 = *(v2 + 504);
  v4 = v3[2];
  *(v2 + 512) = v4;
  if (v4)
  {
    *(v2 + 544) = &_swiftEmptyDictionarySingleton;
    *(v2 + 536) = 0;
    *(v2 + 528) = &_swiftEmptyDictionarySingleton;
    *(v2 + 520) = 0;
    if (v3[2])
    {
      v5 = *(v2 + 456);
      *(v2 + 552) = v3[4];
      *(v2 + 560) = v3[5];

      return _swift_task_switch(sub_100023880, v5, 0);
    }

    __break(1u);
    goto LABEL_30;
  }

  *(v2 + 616) = &_swiftEmptyDictionarySingleton;

  v7 = sub_100025628(v6);
  v8 = *(v2 + 320);
  *(v2 + 624) = v8;
  if (*(v8 + 16) <= v7[2] >> 3)
  {
    v34 = v7;
    sub_10002AA28(v8);
    v9 = v34;
  }

  else
  {
    v9 = sub_10002AB54(v8, v7);
  }

  *(v2 + 632) = v9;
  v10 = *(v9 + 32);
  *(v2 + 273) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-(-1 << v10) < 64)
  {
    v11 = ~(-1 << -(-1 << v10));
  }

  v13 = v11 & v9[7];
  if (v13)
  {
    v14 = 0;
LABEL_16:
    *(v2 + 648) = v14;
    *(v2 + 640) = v13;
    v17 = *(v2 + 616);
    v18 = (v9[6] + ((v14 << 10) | (16 * __clz(__rbit64(v13)))));
    v1 = *v18;
    v0 = v18[1];
    *(v2 + 656) = v0;
    v19 = *(v17 + 16);

    if (v19)
    {
      v20 = sub_10005BCB0(v1, v0);
      if (v21)
      {
        sub_10000F92C(*(*(v2 + 616) + 56) + *(*(v2 + 416) + 72) * v20, *(v2 + 424));
        if (qword_100082600 == -1)
        {
LABEL_19:
          v22 = type metadata accessor for Logger();
          sub_100002D00(v22, qword_100083300);

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v34 = v26;
            *v25 = 136315138;
            *(v25 + 4) = sub_1000049B8(v1, v0, &v34);
            _os_log_impl(&_mh_execute_header, v23, v24, "Found dismissed notification %s. Will put it in snoozed queue", v25, 0xCu);
            sub_100005ED8(v26);
          }

          v27 = swift_task_alloc();
          *(v2 + 664) = v27;
          *v27 = v2;
          v27[1] = sub_100024514;
          v28 = *(v2 + 424);

          return sub_10005F074(v28, v1, v0);
        }

LABEL_30:
        swift_once();
        goto LABEL_19;
      }
    }

    v30 = *(v2 + 480);
    v29 = *(v2 + 488);
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v12) >> 6) - 1;
    while (v16 != v15)
    {
      v14 = v15 + 1;
      v13 = v9[v15++ + 8];
      if (v13)
      {
        goto LABEL_16;
      }
    }

    v31 = *(v2 + 480);
  }

  v32 = *(v2 + 8);

  return v32();
}

uint64_t sub_100023880()
{
  v19 = v0;
  v1 = v0[65];
  sub_10001EF40(v0[69], v0[70], v0[50]);
  if (!v1)
  {
    v11 = 0;
LABEL_15:
    v0[71] = 0;
    (*(v0[52] + 56))(v0[50], v11, 1, v0[51]);
    v9 = sub_100023B74;
    v10 = 0;
    goto LABEL_16;
  }

  v0[41] = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_1000825F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002D00(v12, qword_100083110);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006B960, &v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown error in %s", v15, 0xCu);
      sub_100005ED8(v16);
    }

    goto LABEL_14;
  }

  v3 = v0[32];
  v2 = v0[33];
  sub_10002096C(v3, v2);
  v4 = sub_10001EB68(v3, v2);
  v6 = v5;
  v0[72] = v4;
  v0[73] = v5;
  sub_100021CE8(v3, v2);
  if (!v6)
  {

LABEL_14:
    v11 = 1;
    goto LABEL_15;
  }

  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v7 = qword_100085E18;
  v0[74] = qword_100085E18;
  sub_10000BCE0();
  v0[75] = swift_allocError();
  *v8 = 6;
  v0[76] = _convertErrorToNSError(_:)();
  v9 = sub_1000243E0;
  v10 = v7;
LABEL_16:

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100023B74()
{
  v82 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  if ((*(*(v0 + 416) + 48))(v2, 1, v1) == 1)
  {

    v3 = &qword_100082CB0;
    v4 = &qword_100068EB0;
    v5 = v2;
LABEL_7:
    sub_1000071C8(v5, v3, v4);
LABEL_8:
    v15 = *(v0 + 544);
    isUniquelyReferenced_nonNull_native = *(v0 + 528);
    goto LABEL_9;
  }

  v6 = *(v0 + 440);
  v7 = *(v0 + 392);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  sub_10000F8C8(v2, v6);
  sub_10000C0A0(v6 + *(v1 + 32), v7, &unk_100083410, &qword_100068D50);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    v1 = *(v0 + 392);
    sub_10000F990(*(v0 + 440));

    v3 = &unk_100083410;
    v4 = &qword_100068D50;
    v5 = v1;
    goto LABEL_7;
  }

  v11 = *(v0 + 440);
  v12 = *(v0 + 408);
  v13 = *(v0 + 384);
  v14 = *(v0 + 352);
  sub_1000071C8(*(v0 + 392), &unk_100083410, &qword_100068D50);
  sub_10000C0A0(v11 + *(v12 + 36), v13, &unk_100083410, &qword_100068D50);
  if (v10(v13, 1, v14) == 1)
  {
    sub_1000071C8(*(v0 + 384), &unk_100083410, &qword_100068D50);
  }

  else
  {
    v49 = *(v0 + 368);
    v1 = *(v0 + 376);
    v50 = *(v0 + 352);
    v51 = *(v0 + 360);
    (*(v51 + 32))(v1, *(v0 + 384), v50);
    static Date.now.getter();
    sub_10002DF9C(&qword_100083470, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v52 = dispatch thunk of static Comparable.< infix(_:_:)();
    v53 = *(v51 + 8);
    v53(v49, v50);
    v53(v1, v50);
    if ((v52 & 1) == 0)
    {
      sub_10000F990(*(v0 + 440));

      goto LABEL_8;
    }
  }

  v54 = *(v0 + 560);
  v1 = *(v0 + 552);
  v55 = *(v0 + 528);
  sub_10000F92C(*(v0 + 440), *(v0 + 432));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 336) = v55;
  v56 = sub_10005BCB0(v1, v54);
  v58 = *(v55 + 16);
  v59 = (v57 & 1) == 0;
  v60 = __OFADD__(v58, v59);
  v61 = v58 + v59;
  if (v60)
  {
    goto LABEL_49;
  }

  v1 = v57;
  if (*(*(v0 + 528) + 24) >= v61)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = v56;
      sub_10005E8F8();
      v56 = v73;
      v67 = *(v0 + 560);
      if (v1)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v62 = *(v0 + 560);
    v63 = *(v0 + 552);
    sub_10005CFA8(v61, isUniquelyReferenced_nonNull_native);
    v56 = sub_10005BCB0(v63, v62);
    if ((v1 & 1) != (v64 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }
  }

  v67 = *(v0 + 560);
  if (v1)
  {
LABEL_42:
    v1 = *(v0 + 432);
    v68 = *(v0 + 440);
    v69 = *(v0 + 416);
    v70 = v56;

    isUniquelyReferenced_nonNull_native = *(v0 + 336);
    sub_10002DF38(v1, *(isUniquelyReferenced_nonNull_native + 56) + *(v69 + 72) * v70);
    sub_10000F990(v68);
    v15 = isUniquelyReferenced_nonNull_native;
    goto LABEL_9;
  }

LABEL_52:
  v74 = *(v0 + 552);
  v75 = *(v0 + 432);
  v76 = *(v0 + 440);
  v77 = *(v0 + 416);
  isUniquelyReferenced_nonNull_native = *(v0 + 336);
  *(isUniquelyReferenced_nonNull_native + 8 * (v56 >> 6) + 64) |= 1 << v56;
  v78 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v56);
  *v78 = v74;
  v78[1] = v67;
  sub_10000F8C8(v75, *(isUniquelyReferenced_nonNull_native + 56) + *(v77 + 72) * v56);
  v26 = sub_10000F990(v76);
  v79 = *(isUniquelyReferenced_nonNull_native + 16);
  v60 = __OFADD__(v79, 1);
  v80 = v79 + 1;
  if (v60)
  {
    __break(1u);
    return _swift_task_switch(v26, v27, v28);
  }

  *(isUniquelyReferenced_nonNull_native + 16) = v80;
  v15 = isUniquelyReferenced_nonNull_native;
LABEL_9:
  v17 = *(v0 + 536) + 1;
  if (v17 != *(v0 + 512))
  {
    v22 = *(v0 + 568);
    *(v0 + 544) = v15;
    *(v0 + 536) = v17;
    *(v0 + 528) = isUniquelyReferenced_nonNull_native;
    *(v0 + 520) = v22;
    v23 = *(v0 + 504);
    if (v17 < *(v23 + 16))
    {
      v24 = *(v0 + 456);
      v25 = v23 + 16 * v17;
      *(v0 + 552) = *(v25 + 32);
      *(v0 + 560) = *(v25 + 40);

      v26 = sub_100023880;
      v27 = v24;
      v28 = 0;

      return _swift_task_switch(v26, v27, v28);
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 616) = v15;

  v19 = sub_100025628(v18);
  v20 = *(v0 + 320);
  *(v0 + 624) = v20;
  if (*(v20 + 16) <= v19[2] >> 3)
  {
    v81 = v19;
    sub_10002AA28(v20);
    v21 = v81;
  }

  else
  {
    v21 = sub_10002AB54(v20, v19);
  }

  *(v0 + 632) = v21;
  v29 = *(v21 + 32);
  *(v0 + 273) = v29;
  v30 = -1;
  v31 = -1 << v29;
  if (-(-1 << v29) < 64)
  {
    v30 = ~(-1 << -(-1 << v29));
  }

  v32 = v30 & v21[7];
  if (v32)
  {
    v33 = 0;
LABEL_24:
    *(v0 + 648) = v33;
    *(v0 + 640) = v32;
    v36 = *(v0 + 616);
    v37 = (v21[6] + ((v33 << 10) | (16 * __clz(__rbit64(v32)))));
    isUniquelyReferenced_nonNull_native = *v37;
    v1 = v37[1];
    *(v0 + 656) = v1;
    v38 = *(v36 + 16);

    if (v38)
    {
      v39 = sub_10005BCB0(isUniquelyReferenced_nonNull_native, v1);
      if (v40)
      {
        sub_10000F92C(*(*(v0 + 616) + 56) + *(*(v0 + 416) + 72) * v39, *(v0 + 424));
        if (qword_100082600 == -1)
        {
LABEL_27:
          v41 = type metadata accessor for Logger();
          sub_100002D00(v41, qword_100083300);

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v81 = v45;
            *v44 = 136315138;
            *(v44 + 4) = sub_1000049B8(isUniquelyReferenced_nonNull_native, v1, &v81);
            _os_log_impl(&_mh_execute_header, v42, v43, "Found dismissed notification %s. Will put it in snoozed queue", v44, 0xCu);
            sub_100005ED8(v45);
          }

          v46 = swift_task_alloc();
          *(v0 + 664) = v46;
          *v46 = v0;
          v46[1] = sub_100024514;
          v47 = *(v0 + 424);

          return sub_10005F074(v47, isUniquelyReferenced_nonNull_native, v1);
        }

LABEL_50:
        swift_once();
        goto LABEL_27;
      }
    }

    v66 = *(v0 + 480);
    v65 = *(v0 + 488);
  }

  else
  {
    v34 = 0;
    v35 = ((63 - v31) >> 6) - 1;
    while (v35 != v34)
    {
      v33 = v34 + 1;
      v32 = v21[v34++ + 8];
      if (v32)
      {
        goto LABEL_24;
      }
    }

    v71 = *(v0 + 480);
  }

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1000243E0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 456);
  sub_100033994(*(v0 + 576), *(v0 + 584), v1);

  return _swift_task_switch(sub_100024488, v2, 0);
}

uint64_t sub_100024488()
{

  v0[71] = 0;
  (*(v0[52] + 56))(v0[50], 1, 1, v0[51]);

  return _swift_task_switch(sub_100023B74, 0, 0);
}

uint64_t sub_100024514()
{

  return _swift_task_switch(sub_10002462C, 0, 0);
}

uint64_t sub_10002462C()
{
  v25 = v2;
  sub_10000F990(*(v2 + 424));
  v3 = *(v2 + 648);
  v4 = (*(v2 + 640) - 1) & *(v2 + 640);
  if (!v4)
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v5 = *(v2 + 632);
      if (v6 >= (((1 << *(v2 + 273)) + 63) >> 6))
      {
        v22 = *(v2 + 480);

        goto LABEL_17;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v2 + 632);
LABEL_7:
  *(v2 + 648) = v3;
  *(v2 + 640) = v4;
  v7 = *(v2 + 616);
  v8 = (*(v5 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
  v1 = *v8;
  v0 = v8[1];
  *(v2 + 656) = v0;
  v9 = *(v7 + 16);

  if (v9)
  {
    v10 = sub_10005BCB0(v1, v0);
    if (v11)
    {
      sub_10000F92C(*(*(v2 + 616) + 56) + *(*(v2 + 416) + 72) * v10, *(v2 + 424));
      if (qword_100082600 == -1)
      {
LABEL_10:
        v12 = type metadata accessor for Logger();
        sub_100002D00(v12, qword_100083300);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v24 = v16;
          *v15 = 136315138;
          *(v15 + 4) = sub_1000049B8(v1, v0, &v24);
          _os_log_impl(&_mh_execute_header, v13, v14, "Found dismissed notification %s. Will put it in snoozed queue", v15, 0xCu);
          sub_100005ED8(v16);
        }

        v17 = swift_task_alloc();
        *(v2 + 664) = v17;
        *v17 = v2;
        v17[1] = sub_100024514;
        v18 = *(v2 + 424);

        return sub_10005F074(v18, v1, v0);
      }

LABEL_21:
      swift_once();
      goto LABEL_10;
    }
  }

  v21 = *(v2 + 480);
  v20 = *(v2 + 488);

LABEL_17:

  v23 = *(v2 + 8);

  return v23();
}

uint64_t sub_1000249D4()
{
  v1[2] = v0;
  sub_100004F70(&qword_100082CB0, &qword_100068EB0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for FormLaunchConfiguration(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Calendar.Component();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for Calendar();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100024C24, v0, 0);
}

uint64_t sub_100024C24()
{
  if (qword_100082648 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = qword_100083A48;

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 integerForKey:v6];

  static Date.now.getter();
  static Calendar.current.getter();
  (*(v2 + 104))(v1, enum case for Calendar.Component.hour(_:), v3);
  if (__OFSUB__(0, v7))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v8 = v0[15];
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);
  v17 = (*(v8 + 48))(v10, 1, v9);
  if (v17 == 1)
  {
    __break(1u);
    return _swift_task_switch(v17, v18, v19);
  }

  v20 = v0[16];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[15];
  v24 = v0[13];
  v25 = *(v23 + 8);
  v0[18] = v25;
  v0[19] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v20, v22);
  (*(v23 + 32))(v21, v24, v22);
  if (qword_1000825F8 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = qword_100085DF0;
  v0[20] = qword_100085DF0;
  v17 = sub_100024E7C;
  v19 = 0;

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100024E7C()
{
  v1 = *(v0 + 16);
  *(v0 + 168) = sub_100021BBC();

  return _swift_task_switch(sub_100024EE8, v1, 0);
}

uint64_t sub_100024EE8()
{
  result = v0[21];
  v2 = (result + 16);
  v3 = *(result + 16);
  if (v3)
  {
    v0[22] = 0;
    v0[23] = v3;
    if (v3 > *v2)
    {
      __break(1u);
    }

    else
    {
      v4 = &v2[2 * v3];
      v5 = *v4;
      v0[24] = *v4;
      v6 = v4[1];
      v0[25] = v6;

      v7 = swift_task_alloc();
      v0[26] = v7;
      *v7 = v0;
      v7[1] = sub_100025098;
      v8 = v0[3];

      return sub_10001E6E0(v8, v5, v6);
    }
  }

  else
  {
    v9 = v0[18];
    v10 = v0[17];
    v11 = v0[14];

    v9(v10, v11);

    v12 = v0[1];

    return v12(0);
  }

  return result;
}

uint64_t sub_100025098()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000251A8, v1, 0);
}

uint64_t sub_1000251A8()
{
  v27 = v0;
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) != 1)
  {
    v10 = v0[6];

    sub_10000F8C8(v1, v10);
    sub_10002DF9C(&qword_100083470, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v11 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_10000F990(v10);
    v3 = v0[22];
    if (v11)
    {
      goto LABEL_11;
    }

    v12 = __OFADD__(v3, 1);
    v3 = (v3 + 1);
    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_1000071C8(v1, &qword_100082CB0, &qword_100068EB0);
  if (qword_100082600 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100002D00(v2, qword_100083300);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[25];
    if (v5)
    {
      v7 = v0[24];
      v8 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006BC80, &v26);
      *(v8 + 12) = 2080;
      v9 = sub_1000049B8(v7, v6, &v26);

      *(v8 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s no object for key: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
LABEL_9:
    }

    v3 = v0[22];
LABEL_11:
    v13 = v0[23];
    v14 = v13 - 1;
    if (v13 == 1)
    {
      break;
    }

    v0[22] = v3;
    v0[23] = v14;
    v15 = v0[21];
    if (v14 <= *(v15 + 16))
    {
      v16 = (v15 + 16 * v13);
      v17 = *v16;
      v0[24] = *v16;
      v18 = v16[1];
      v0[25] = v18;

      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_100025098;
      v20 = v0[3];

      return sub_10001E6E0(v20, v17, v18);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[14];

  v22(v23, v24);

  v25 = v0[1];

  return v25(v3);
}

uint64_t sub_1000255A4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100013DAC((a1 + 32), *(a1 + 56));
  sub_100008714(0, &qword_100083408, UNNotification_ptr);
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_100025628(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_10002A8D8(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100025744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[71] = v7;
  v8[70] = a7;
  v8[69] = a6;
  v8[68] = a3;
  v8[67] = a2;
  v8[66] = a1;
  sub_100004F70(&unk_100083410, &qword_100068D50);
  v8[72] = swift_task_alloc();

  return _swift_task_switch(sub_1000257F4, 0, 0);
}

uint64_t sub_1000257F4()
{
  v10 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 584) = sub_100002D00(v1, qword_100083300);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006BC40, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  v6 = *(*(v0 + 560) + 80);
  *(v0 + 672) = v6;
  v7 = swift_task_alloc();
  *(v0 + 592) = v7;
  *v7 = v0;
  v7[1] = sub_1000259B4;

  return sub_1000220CC(v6);
}

uint64_t sub_1000259B4(char a1)
{
  *(*v1 + 673) = a1;

  return _swift_task_switch(sub_100025AB4, 0, 0);
}

uint64_t sub_100025AB4()
{
  if (*(v0 + 673))
  {
    *(v0 + 600) = *(*(v0 + 568) + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
    v1 = swift_task_alloc();
    *(v0 + 608) = v1;
    *v1 = v0;
    v1[1] = sub_100025BCC;

    return sub_100028780();
  }

  else
  {
    sub_10000BF94();
    swift_allocError();
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100025BCC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100025D18, 0, 0);
  }
}

uint64_t sub_100025D18()
{
  v38 = v0;
  v1 = v0;
  v2 = FormItem.isSurvey.getter();
  sub_100014070(v2 & 1, v37);
  v3 = v37[1];
  v5 = v37[2];
  v4 = v37[3];
  v6 = v37[4];
  v7 = v37[5];
  v8 = v37[6];
  v9 = v37[7];
  *(v0 + 80) = v37[0];
  *(v0 + 88) = v3;
  v10 = (v0 + 80);
  *(v1 + 96) = v5;
  *(v1 + 104) = v4;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 128) = v8;
  *(v1 + 136) = v9;
  sub_10000C0A0(v1 + 80, v1 + 144, &unk_100083420, &unk_1000696E0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  sub_1000071C8(v1 + 80, &unk_100083420, &unk_1000696E0);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136446210;
    v15 = *(v1 + 96);
    *(v1 + 400) = *v10;
    *(v1 + 416) = v15;
    v16 = *(v1 + 128);
    *(v1 + 432) = *(v1 + 112);
    *(v1 + 448) = v16;
    sub_10000C0A0(v1 + 80, v1 + 464, &unk_100083420, &unk_1000696E0);
    sub_100004F70(&unk_100083420, &unk_1000696E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000049B8(v17, v18, v37);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using strings %{public}s", v13, 0xCu);
    sub_100005ED8(v14);
  }

  v20 = *(v1 + 544);
  v21 = *(v1 + 536);
  v36 = *(v1 + 560);
  sub_100004F70(&qword_100082E30, &qword_100069120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  strcpy((inited + 32), "formIdentifier");
  *(inited + 47) = -18;
  *(inited + 48) = v21;
  *(inited + 56) = v20;

  v23 = sub_100015C0C(inited);
  swift_setDeallocating();
  sub_1000071C8(inited + 32, &qword_100083430, &qword_1000696F0);
  v24 = [objc_allocWithZone(UNMutableNotificationContent) init];
  *(v1 + 616) = v24;
  sub_10000C0A0(v1 + 80, v1 + 272, &unk_100083420, &unk_1000696E0);

  v25 = String._bridgeToObjectiveC()();

  [v24 setTitle:v25];

  v26 = String._bridgeToObjectiveC()();

  [v24 setBody:v26];

  sub_100015148(v23);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 setUserInfo:isa];

  [v24 setInterruptionLevel:1];
  static Strings.Notification.categoryIdentifier.getter();
  v28 = String._bridgeToObjectiveC()();

  [v24 setCategoryIdentifier:v28];

  [v24 setShouldBackgroundDefaultAction:1];
  [v24 setShouldAuthenticateDefaultAction:1];
  v29 = sub_10002BF94(v36);
  *(v1 + 624) = v29;
  v30 = v29;
  v31 = v24;
  v32 = String._bridgeToObjectiveC()();
  *(v1 + 632) = [objc_opt_self() requestWithIdentifier:v32 content:v31 trigger:v30];

  v33 = swift_task_alloc();
  *(v1 + 640) = v33;
  *v33 = v1;
  v33[1] = sub_10002621C;
  v34 = *(v1 + 672);

  return sub_1000220CC(v34);
}

uint64_t sub_10002621C(char a1)
{
  *(*v1 + 674) = a1;

  return _swift_task_switch(sub_10002631C, 0, 0);
}

uint64_t sub_10002631C()
{
  if (*(v0 + 674))
  {
    v1 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount;
    *(v0 + 648) = OBJC_IVAR____TtC9feedbackd22NotificationController_notificationPostedInThisIntervalCount;
    v4 = *(v0 + 600);
    *(v0 + 656) = *(v2 + v3);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000264DC;
    v5 = swift_continuation_init();
    *(v0 + 392) = sub_100004F70(&qword_100082BC8, &qword_100068D78);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100021DB8;
    *(v0 + 360) = &unk_10007E4A8;
    *(v0 + 368) = v5;
    [v4 addNotificationRequest:v1 withCompletionHandler:v0 + 336];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    sub_10000BF94();
    swift_allocError();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1000264DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_1000268EC;
  }

  else
  {
    v2 = sub_1000265EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000265EC()
{
  v1 = *(v0 + 632);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 632);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = [v4 trigger];
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posted notification with trigger [%{public}@]", v5, 0xCu);
    sub_1000071C8(v6, &qword_100082708, &qword_100068320);
  }

  v8 = *(v0 + 656);
  v9 = *(v0 + 648);
  v10 = *(v0 + 568);

  if (*(v10 + v9) != v8)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Race condition detected in notification posts count", v13, 2u);
    }
  }

  v14 = *(v0 + 648);
  v15 = *(v0 + 568);
  v16 = *(v15 + v14);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = *(v0 + 624);
    *(v15 + v14) = v18;
    if (v19)
    {
      v20 = [*(v0 + 624) nextTriggerDate];
      if (v20)
      {
        v21 = v20;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v26 = *(v0 + 632);
      v27 = *(v0 + 624);
      v28 = *(v0 + 576);
      v29 = *(v0 + 528);

      v30 = type metadata accessor for Date();
      (*(*(v30 - 8) + 56))(v28, v22, 1, v30);
      sub_10002DE60(v28, v29);
    }

    else
    {
      v23 = *(v0 + 632);
      v24 = *(v0 + 528);

      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    }

    v31 = *(v0 + 8);

    v31();
  }
}

uint64_t sub_1000268EC(uint64_t a1)
{
  v2 = v1[79];
  v3 = v1[78];
  v4 = v1[77];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_100026980(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_1000269A4, 0, 0);
}

uint64_t sub_1000269A4()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100026AD0;
  v2 = swift_continuation_init();
  v0[17] = sub_100004F70(&qword_100083400, &unk_1000696D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000255A4;
  v0[13] = &unk_10007E480;
  v0[14] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100026AD0()
{

  return _swift_task_switch(sub_100026BB0, 0, 0);
}

char *sub_100026BB0()
{
  v28 = v0;
  v1 = v0[18];
  v26 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = v0[19];
      v8 = v0[20];
      v27 = v4;
      if (sub_100026ED0(&v27, v7, v8))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  v27 = _swiftEmptyArrayStorage;
  result = sub_100004FD8(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = v27;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage[v11 + 4];
    }

    v14 = v13;
    v15 = [v13 request];
    v16 = [v15 identifier];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v27 = v12;
    v21 = v12[2];
    v20 = v12[3];
    if (v21 >= v20 >> 1)
    {
      sub_100004FD8((v20 > 1), v21 + 1, 1);
      v12 = v27;
    }

    ++v11;
    v12[2] = v21 + 1;
    v22 = &v12[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
  }

  while (v9 != v11);
LABEL_30:

  v23 = v0[22];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 removeDeliveredNotificationsWithIdentifiers:isa];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100026ED0(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 request];
  v7 = [v6 content];

  v8 = [v7 userInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v37, "formIdentifier");
  HIBYTE(v37[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_10005BC6C(v38);
  if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100007018(*(v9 + 56) + 32 * v10, v39);
  sub_100006FC4(v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002D00(v21, qword_100083300);
    v22 = v5;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Found invalid payload for notification %@", v25, 0xCu);
      sub_1000071C8(v26, &qword_100082708, &qword_100068320);
    }

    return 0;
  }

  v12 = v37[1];
  v36 = v37[0];
  v13 = [v5 request];
  v14 = [v13 content];

  v15 = [v14 userInfo];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v37[0] = 7955819;
  v37[1] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_10005BC6C(v38), (v18 & 1) == 0))
  {

LABEL_10:

    sub_100006FC4(v38);
    goto LABEL_11;
  }

  sub_100007018(*(v16 + 56) + 32 * v17, v39);
  sub_100006FC4(v38);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v20 = v37[0];
  v19 = v37[1];
  if (v36 != a2 || v12 != a3)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_20;
    }

    return 0;
  }

LABEL_20:
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100002D00(v30, qword_100083300);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v33 = 136446210;
    v35 = sub_1000049B8(v20, v19, v38);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Will remove posted notification for completed form %{public}s", v33, 0xCu);
    sub_100005ED8(v34);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000273F4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  type metadata accessor for FormLaunchConfiguration(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100027494, 0, 0);
}

uint64_t sub_100027494()
{
  v16 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[28];
  v3 = type metadata accessor for Logger();
  v0[33] = sub_100002D00(v3, qword_100083300);
  sub_10000F92C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_10000F990(v7);
    v12 = sub_1000049B8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Will try re-posting notification for [%{public}s]", v8, 0xCu);
    sub_100005ED8(v9);
  }

  else
  {

    sub_10000F990(v7);
  }

  v13 = swift_task_alloc();
  v0[34] = v13;
  *v13 = v0;
  v13[1] = sub_100027688;

  return sub_100028780();
}

uint64_t sub_100027688()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100027DAC;
  }

  else
  {
    v2 = sub_10002779C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002779C()
{
  v1 = *(v0 + 240);
  v2 = [*(v0 + 232) content];
  *(v0 + 288) = v2;
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() requestWithIdentifier:v4 content:v3 trigger:0];
  *(v0 + 296) = v5;

  v6 = *(v1 + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10002793C;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_100004F70(&qword_100082BC8, &qword_100068D78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100021DB8;
  *(v0 + 104) = &unk_10007E458;
  *(v0 + 112) = v7;
  [v6 addNotificationRequest:v5 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10002793C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_10002828C;
  }

  else
  {
    v2 = sub_100027A4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027A4C()
{
  v15 = v0;
  sub_10000F92C(v0[28], v0[31]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[31];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = *v6;
    v10 = v6[1];

    sub_10000F990(v6);
    v11 = sub_1000049B8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Re-posted notification for form [%{public}s]", v7, 0xCu);
    sub_100005ED8(v8);
  }

  else
  {

    sub_10000F990(v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100027BE0()
{
  sub_100033994(*(v0 + 336), *(v0 + 344), *(v0 + 320));

  return _swift_task_switch(sub_100027C4C, 0, 0);
}

uint64_t sub_100027C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027CC4()
{
  sub_100033994(*(v0 + 368), *(v0 + 376), *(v0 + 352));

  return _swift_task_switch(sub_100027D30, 0, 0);
}

uint64_t sub_100027D30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027DAC()
{
  v27 = v0;
  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  *(v0 + 312) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 384);
    v3 = Logger.logObject.getter();
    if (v2 == 5)
    {
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v5 = 136446466;
        *(v5 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, &v26);
        *(v5 + 12) = 2080;
        v6 = 5;
LABEL_12:
        v20 = sub_100015668(v6);
        v22 = sub_1000049B8(v20, v21, &v26);

        *(v5 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed with: %s", v5, 0x16u);
        swift_arrayDestroy();
      }
    }

    else
    {
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v5 = 136446466;
        *(v5 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, &v26);
        *(v5 + 12) = 2080;
        v6 = v2;
        goto LABEL_12;
      }
    }

    sub_10000BCE0();
    swift_allocError();
    *v23 = v2;
    *(v0 + 320) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 224);
    v18 = qword_100085E18;
    *(v0 + 328) = qword_100085E18;
    *(v0 + 336) = *v24;
    *(v0 + 344) = v24[1];
    v19 = sub_100027BE0;
    goto LABEL_16;
  }

  v7 = (v0 + 144);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, &v26);
    *(v10 + 12) = 2080;
    *(v0 + 216) = v1;
    swift_errorRetain();
    v11 = String.init<A>(describing:)();
    v13 = sub_1000049B8(v11, v12, &v26);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  *(v0 + 168) = v14;
  v16 = sub_100019A2C(v7);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  *(v0 + 352) = static FBKSError.nsError(anyError:)();
  sub_100005ED8(v7);
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 224);
  v18 = qword_100085E18;
  *(v0 + 360) = qword_100085E18;
  *(v0 + 368) = *v17;
  *(v0 + 376) = v17[1];
  v19 = sub_100027CC4;
LABEL_16:

  return _swift_task_switch(v19, v18, 0);
}

uint64_t sub_10002828C(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 296);
  v3 = *(v1 + 288);
  swift_willThrow();

  v4 = *(v1 + 304);
  *(v1 + 200) = v4;
  *(v1 + 312) = v4;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v5 = *(v1 + 384);
    v6 = Logger.logObject.getter();
    if (v5 == 5)
    {
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v29[0] = swift_slowAlloc();
        *v8 = 136446466;
        *(v8 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, v29);
        *(v8 + 12) = 2080;
        v9 = 5;
LABEL_12:
        v23 = sub_100015668(v9);
        v25 = sub_1000049B8(v23, v24, v29);

        *(v8 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s failed with: %s", v8, 0x16u);
        swift_arrayDestroy();
      }
    }

    else
    {
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v29[0] = swift_slowAlloc();
        *v8 = 136446466;
        *(v8 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, v29);
        *(v8 + 12) = 2080;
        v9 = v5;
        goto LABEL_12;
      }
    }

    sub_10000BCE0();
    swift_allocError();
    *v26 = v5;
    *(v1 + 320) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v27 = *(v1 + 224);
    v21 = qword_100085E18;
    *(v1 + 328) = qword_100085E18;
    *(v1 + 336) = *v27;
    *(v1 + 344) = v27[1];
    v22 = sub_100027BE0;
    goto LABEL_16;
  }

  v10 = (v1 + 144);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000049B8(0xD000000000000047, 0x800000010006BBD0, v29);
    *(v13 + 12) = 2080;
    *(v1 + 216) = v4;
    swift_errorRetain();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000049B8(v14, v15, v29);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s failed with: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v18 = *(v1 + 176);
  v17 = *(v1 + 184);
  *(v1 + 168) = v17;
  v19 = sub_100019A2C(v10);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  *(v1 + 352) = static FBKSError.nsError(anyError:)();
  sub_100005ED8(v10);
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v20 = *(v1 + 224);
  v21 = qword_100085E18;
  *(v1 + 360) = qword_100085E18;
  *(v1 + 368) = *v20;
  *(v1 + 376) = v20[1];
  v22 = sub_100027CC4;
LABEL_16:

  return _swift_task_switch(v22, v21, 0);
}

uint64_t sub_1000287A0()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC9feedbackd22NotificationController_notificationCenter);
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1000288CC;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&unk_1000833D0, &qword_100068D38);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021E64;
  v0[21] = &unk_10007E408;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000288CC()
{

  return _swift_task_switch(sub_1000289AC, 0, 0);
}

uint64_t sub_1000289AC()
{
  v1 = v0[28];
  v0[29] = v0[26];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_100028AD4;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&qword_100082BA0, &unk_100068D40);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021EC8;
  v0[21] = &unk_10007E430;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100028AD4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_10000B82C;
  }

  else
  {
    v2 = sub_100028BE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100028BE4()
{
  v26 = v0;
  v1 = *(v0 + 208);
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100083300);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v10 = v1;
    v11 = v25;
    *v8 = 136446722;
    *(v0 + 144) = [v7 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v25);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1026;
    *(v8 + 14) = v10;
    *(v8 + 18) = 2112;
    *(v8 + 20) = v7;
    *v9 = v7;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Previous status [%{public}s], authorized? %{BOOL,public}d\nSettings: %@", v8, 0x1Cu);
    sub_1000071C8(v9, &qword_100082708, &qword_100068320);

    sub_100005ED8(v11);
  }

  v16 = [*(v0 + 232) authorizationStatus];
  if (v16 <= 1)
  {
    if (!v16)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Not Determined";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 1)
    {
      v20 = *(v0 + 232);
      sub_10000BCE0();
      swift_allocError();
      *v21 = 5;
      swift_willThrow();

      v22 = *(v0 + 8);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Provisional";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 4)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Ephemeral";
LABEL_22:
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, v19, v23, 2u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_20:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = "Notification status is Unknown Default";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = "Notification status is Authorized";
    goto LABEL_22;
  }

LABEL_23:

  v22 = *(v0 + 8);
LABEL_24:

  return v22();
}

id sub_100028FAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(sub_100029050, 0, 0);
}

uint64_t sub_100029050()
{
  v46 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  _StringGuts.grow(_:)(23);
  v3 = static Strings.Daemon.bundleIdentifier.getter();
  v5 = v4;

  v45[0] = v3;
  v45[1] = v5;
  v6._object = 0x800000010006BBB0;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v7 == v1)
  {

    goto LABEL_10;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_10:
    v13 = [*(v0 + 56) notification];
    v14 = [v13 request];
    *(v0 + 80) = v14;

    v15 = swift_task_alloc();
    *(v0 + 88) = v15;
    *v15 = v0;
    v15[1] = sub_100029650;
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(v0 + 32);

    return sub_100060864(v18, v16, v17, v14);
  }

  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v12 == v11)
  {

LABEL_14:
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002D00(v21, qword_100083300);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_19;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "dismissed notification", v24, 2u);
LABEL_18:

LABEL_19:

    v25 = *(v0 + 8);

    return v25();
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_14;
  }

  v26 = *(v0 + 16);
  v27 = *(v0 + 24);
  if (static Strings.Notification.declineActionIdentifier.getter() == v26 && v28 == v27)
  {

LABEL_26:
    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 32);
    v31 = qword_100085E18;
    *(v0 + 96) = qword_100085E18;
    *(v0 + 104) = *v30;
    *(v0 + 112) = v30[1];

    return _swift_task_switch(sub_10002975C, v31, 0);
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_26;
  }

  v32 = *(v0 + 16);
  v33 = *(v0 + 24);
  if (static Strings.Notification.snoozeActionIdentifier.getter() == v32 && v34 == v33)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      if (qword_100082600 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100002D00(v40, qword_100083300);

      v22 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v22, v41))
      {
        goto LABEL_19;
      }

      v43 = *(v0 + 16);
      v42 = *(v0 + 24);
      v44 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, v45);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1000049B8(v43, v42, v45);
      _os_log_impl(&_mh_execute_header, v22, v41, "%s action: %s not handled", v44, 0x16u);
      swift_arrayDestroy();

      goto LABEL_18;
    }
  }

  v36 = swift_task_alloc();
  *(v0 + 120) = v36;
  *v36 = v0;
  v36[1] = sub_1000298BC;
  v37 = *(v0 + 64);
  v38 = *(v0 + 72);
  v39 = *(v0 + 32);

  return sub_10005F074(v39, v37, v38);
}

uint64_t sub_100029650()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002975C()
{
  sub_100034A7C(*(v0 + 104), *(v0 + 112));

  return _swift_task_switch(sub_1000297C8, 0, 0);
}

uint64_t sub_1000297C8()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_10002985C, v0, 0);
}

uint64_t sub_10002985C()
{
  sub_10002096C(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000298BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100029B40(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100029C24;

  return sub_10002CF0C(v9);
}

uint64_t sub_100029C24()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100029D94()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002E084;

  return sub_100029B40(v2, v3, v5, v4);
}

uint64_t sub_100029EA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002E084;

  return v6();
}

uint64_t sub_100029F8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002E084;

  return sub_100029EA4(v2, v3, v4);
}

uint64_t sub_10002A04C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000BEA0;

  return v7();
}

uint64_t sub_10002A138()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002A178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E084;

  return sub_10002A04C(a1, v4, v5, v6);
}

uint64_t sub_10002A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000C0A0(a3, v23 - v10, &qword_1000833B0, &qword_100068D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);

    return v21;
  }

LABEL_8:
  sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10002A540(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002A638;

  return v6(a1);
}

uint64_t sub_10002A638()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002A730()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A768(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002E084;

  return sub_10002A540(a1, v4);
}

uint64_t sub_10002A820(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BEA0;

  return sub_10002A540(a1, v4);
}

uint64_t sub_10002A8D8(void *a1, uint64_t a2, uint64_t a3)
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

    sub_10002BE14(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10002AA28(uint64_t result)
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10002B0C4(v12, v13);

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

void *sub_10002AB54(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
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
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10002B698(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_10002B460(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_10002DFE4(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B0C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
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
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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
    sub_10002B8BC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10002BC50(v8);
  *v2 = v16;
  return v12;
}

Swift::Int sub_10002B200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004F70(&qword_100083478, &qword_100069718);
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

unint64_t *sub_10002B460(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
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

          return sub_10002B698(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
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
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
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

Swift::Int sub_10002B698(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004F70(&qword_100083478, &qword_100069718);
  result = static _SetStorage.allocate(capacity:)();
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
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
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
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
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

void *sub_10002B8BC()
{
  v1 = v0;
  sub_100004F70(&qword_100083478, &qword_100069718);
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

Swift::Int sub_10002BA18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004F70(&qword_100083478, &qword_100069718);
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

unint64_t sub_10002BC50(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

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

uint64_t sub_10002BE14(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_10002B200(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002B8BC();
      goto LABEL_16;
    }

    sub_10002BA18(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10002BF94(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v131 = *(v2 - 8);
  __chkstk_darwin(v2);
  v125 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v5 = __chkstk_darwin(v4 - 8);
  v126 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v107 - v7;
  v9 = type metadata accessor for Date();
  v132 = *(v9 - 8);
  v133 = v9;
  v10 = __chkstk_darwin(v9);
  v123 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v127 = &v107 - v13;
  __chkstk_darwin(v12);
  v15 = &v107 - v14;
  v130 = type metadata accessor for DateComponents();
  v16 = *(v130 - 8);
  v17 = __chkstk_darwin(v130);
  v122 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v107 - v19;
  v21 = type metadata accessor for Calendar();
  v22 = *(v21 - 8);
  v128 = v21;
  v129 = v22;
  __chkstk_darwin(v21);
  v134 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 80);
  if (qword_100082678 != -1)
  {
    swift_once();
  }

  v25 = qword_100083AD8;

  v26 = v25;
  v27 = String._bridgeToObjectiveC()();
  LOBYTE(v25) = [v26 BOOLForKey:v27];

  if (v25 & 1) != 0 || (v24)
  {
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100002D00(v59, qword_100083300);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Not using triggers", v62, 2u);
    }

    return 0;
  }

  v124 = v16;
  static Calendar.current.getter();
  v28 = sub_100004F70(&qword_100083438, &unk_1000696F8);
  v29 = v131;
  v121 = v20;
  v30 = *(v131 + 72);
  v31 = *(v131 + 80);
  v32 = (v31 + 32) & ~v31;
  v33 = 2 * v30;
  v116 = 3 * v30;
  v111 = v31;
  v112 = v28;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000695E0;
  v113 = v32;
  v35 = v34 + v32;
  v36 = *(v29 + 104);
  v110 = enum case for Calendar.Component.year(_:);
  v36(v35);
  v114 = v30;
  v37 = v35 + v30;
  v38 = v121;
  v109 = enum case for Calendar.Component.month(_:);
  v36(v37);
  v115 = v33;
  v118 = enum case for Calendar.Component.day(_:);
  v117 = v36;
  v36(v35 + v33);
  sub_10001764C(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();

  v39 = *(v132 + 8);
  v120 = v132 + 8;
  v119 = v39;
  v39(v15, v133);
  DateComponents.second.setter();
  if (qword_100082668 != -1)
  {
    swift_once();
  }

  v40 = qword_100083AA8;

  v41 = v40;
  v42 = String._bridgeToObjectiveC()();
  [v41 integerForKey:v42];

  DateComponents.minute.setter();
  if (qword_100082660 != -1)
  {
    swift_once();
  }

  v43 = qword_100083A90;

  v44 = v43;
  v45 = String._bridgeToObjectiveC()();
  [v44 integerForKey:v45];

  DateComponents.hour.setter();
  v46 = v134;
  if ((DateComponents.isValidDate(in:)() & 1) == 0)
  {
    v51 = v124;
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100002D00(v63, qword_100083300);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();
    v66 = os_log_type_enabled(v64, v65);
    v56 = v130;
    if (v66)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Invalid date for notification trigger", v67, 2u);
    }

    (*(v129 + 8))(v46, v128);
    goto LABEL_26;
  }

  Calendar.date(from:)();
  v47 = v132;
  v48 = v133;
  v49 = *(v132 + 48);
  v50 = v49(v8, 1, v133);
  v51 = v124;
  if (v50 == 1)
  {
    sub_1000071C8(v8, &unk_100083410, &qword_100068D50);
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100002D00(v52, qword_100083300);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v130;
    v57 = v134;
    if (v55)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Error generating date for notification trigger", v58, 2u);
    }

    (*(v129 + 8))(v57, v128);
LABEL_26:
    (*(v51 + 8))(v38, v56);
    return 0;
  }

  v69 = *(v47 + 32);
  v132 = v47 + 32;
  v108 = v69;
  v69(v127, v8, v48);
  Date.init()();
  v70 = static Date.< infix(_:_:)();
  v119(v15, v48);
  if (v70)
  {
    if (qword_100082600 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    v107 = sub_100002D00(v71, qword_100083300);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v118;
    if (v74)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Will post tomorrow", v76, 2u);
    }

    v77 = v125;
    v78 = v75;
    v79 = v117;
    (v117)(v125, v78, v2);
    v80 = v126;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v131 + 8))(v77, v2);
    v81 = v133;
    if (v49(v80, 1, v133) == 1)
    {
      sub_1000071C8(v80, &unk_100083410, &qword_100068D50);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.fault.getter();
      v84 = os_log_type_enabled(v82, v83);
      v56 = v130;
      if (v84)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Error generating date for notification trigger", v85, 2u);
      }

      v119(v127, v133);
      (*(v129 + 8))(v134, v128);
      goto LABEL_26;
    }

    v86 = v123;
    v108(v123, v80, v81);
    v87 = v114;
    v88 = 4 * v114;
    v89 = v113;
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1000693B0;
    v91 = v90 + v89;
    (v79)(v91, v110, v2);
    v92 = v91 + v87;
    v38 = v121;
    (v79)(v92, v109, v2);
    (v79)(v91 + v115, v118, v2);
    (v79)(v91 + v116, enum case for Calendar.Component.hour(_:), v2);
    v93 = v91 + v88;
    v51 = v124;
    (v79)(v93, enum case for Calendar.Component.minute(_:), v2);
    sub_10001764C(v90);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v94 = v122;
    Calendar.dateComponents(_:from:)();

    v119(v86, v81);
    (*(v51 + 40))(v38, v94, v130);
  }

  v95 = v130;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_100002D00(v96, qword_100083300);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v135 = v100;
    *v99 = 136315138;
    swift_beginAccess();
    sub_10002DF9C(&unk_100083440, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = sub_1000049B8(v101, v102, &v135);

    *(v99 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v97, v98, "Trigger date %s", v99, 0xCu);
    sub_100005ED8(v100);
  }

  v104 = v134;
  swift_beginAccess();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v106 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

  v119(v127, v133);
  (*(v129 + 8))(v104, v128);
  (*(v51 + 8))(v38, v95);
  return v106;
}

uint64_t sub_10002CF0C(uint64_t a1)
{
  v1[15] = a1;
  sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v1[16] = swift_task_alloc();
  sub_100004F70(&qword_1000833B8, &qword_1000696A0);
  v1[17] = swift_task_alloc();
  v1[18] = sub_100004F70(&unk_1000833C0, &qword_1000696A8);
  v1[19] = swift_task_alloc();
  v2 = *(type metadata accessor for FormLaunchConfiguration(0) - 8);
  v1[20] = v2;
  v1[21] = *(v2 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10002D088, 0, 0);
}

uint64_t sub_10002D088()
{
  v34 = v0;
  if (qword_100082600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  *(v0 + 192) = sub_100002D00(v2, qword_100083300);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, &v33);
    *(v7 + 12) = 2080;
    v8 = [v6 actionIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000049B8(v9, v11, &v33);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s action: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 120);
  v14 = [v13 notification];
  v15 = [v14 request];

  v16 = [v15 content];
  v17 = [v16 userInfo];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = [v13 actionIdentifier];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  *(v0 + 200) = v19;
  *(v0 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 216) = v20;
  strcpy((v0 + 88), "formIdentifier");
  *(v0 + 103) = -18;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v21 = sub_10005BC6C(v0 + 16), (v22 & 1) != 0))
  {
    sub_100007018(*(v18 + 56) + 32 * v21, v0 + 56);
    sub_100006FC4(v0 + 16);

    if (swift_dynamicCast())
    {
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      *(v0 + 224) = v24;
      *(v0 + 232) = v23;
      if (qword_1000825F8 != -1)
      {
        swift_once();
      }

      v25 = swift_task_alloc();
      *(v0 + 240) = v25;
      *v25 = v0;
      v25[1] = sub_10002D5FC;
      v26 = *(v0 + 136);

      return sub_10001E298(v26, v24, v23);
    }
  }

  else
  {

    sub_100006FC4(v0 + 16);
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, &v33);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s failed to get form identifier from notification", v30, 0xCu);
    sub_100005ED8(v31);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10002D5FC()
{

  return _swift_task_switch(sub_10002D6F8, 0, 0);
}

uint64_t sub_10002D6F8()
{
  v41 = v0;
  v1 = v0[17];
  v2 = sub_100004F70(&unk_1000832F0, &qword_1000696B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];

    sub_1000071C8(v1, &qword_1000833B8, &qword_1000696A0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v40 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BB80, &v40);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s no notification data found. Ignoring response", v6, 0xCu);
      sub_100005ED8(v7);
    }
  }

  else
  {
    v38 = v0[29];
    v39 = v0[28];
    v8 = v0[25];
    v35 = v0[26];
    v9 = v0[23];
    v33 = v0[21];
    v31 = v0[22];
    v32 = v0[20];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[16];
    v36 = v0[15];
    v37 = v0[27];
    v13 = (v1 + *(v2 + 48));
    v15 = *v13;
    v14 = v13[1];
    v16 = (v10 + *(v11 + 48));
    sub_10000F8C8(v1, v10);
    *v16 = v15;
    v16[1] = v14;
    v17 = (v10 + *(v11 + 48));
    v18 = *v17;
    v34 = v17[1];
    sub_10000F8C8(v10, v9);
    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    [v19 logFeedbackdReceivedNotificationResponse:v8 formIdentifier:v20];

    static TaskPriority.utility.getter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
    sub_10000F92C(v9, v31);
    v22 = (*(v32 + 80) + 48) & ~*(v32 + 80);
    v23 = (v33 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v35;
    v25[5] = v37;
    sub_10000F8C8(v31, v25 + v22);
    v26 = (v25 + v23);
    *v26 = v18;
    v26[1] = v34;
    *(v25 + v24) = v36;
    v27 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v39;
    v27[1] = v38;
    v28 = v36;
    sub_100059484(0, 0, v12, &unk_1000696C0, v25);

    sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
    sub_10000F990(v9);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_10002DAC8()
{
  v1 = type metadata accessor for FormLaunchConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v3 = v0 + ((v2 + 48) & ~v2);

  v4 = v1[6];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v8 = v1[8];
  v9 = *(v6 + 48);
  if (!v9(v3 + v8, 1, v5))
  {
    v7(v3 + v8, v5);
  }

  v10 = v1[9];
  if (!v9(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = (((v13 + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10002DCD0(uint64_t a1)
{
  v3 = *(type metadata accessor for FormLaunchConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v13 = v1[2];
  v5 = v1[4];
  v12 = v1[3];
  v6 = v1[5];
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BEA0;

  return sub_100029014(a1, v13, v12, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_10002DE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002DED0()
{
  result = qword_100083468;
  if (!qword_100083468)
  {
    sub_100008714(255, &qword_100083460, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083468);
  }

  return result;
}

uint64_t sub_10002DF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormLaunchConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DF9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002E000()
{
  result = qword_100083488;
  if (!qword_100083488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083488);
  }

  return result;
}

uint64_t sub_10002E088()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_1000834F0);
  sub_100002D00(v0, qword_1000834F0);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

CFUserNotificationRef sub_10002E0EC(uint64_t a1, char a2)
{
  sub_100014070(a2, &v30);
  v2 = *(&v30 + 1);
  v3 = v30;
  v4 = v31;
  v5 = v32;
  v27 = *(&v33 + 1);
  v28 = v33;
  if (qword_100082618 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_1000834F0);
  sub_10002E7FC(&v30, v35);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  sub_10002E86C(&v30);
  if (os_log_type_enabled(v7, v8))
  {
    v26 = v3;
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v9 = 136315138;
    v35[0] = v30;
    v35[1] = v31;
    v35[2] = v32;
    v35[3] = v33;
    sub_10002E7FC(&v30, error);
    sub_100004F70(&unk_100083420, &unk_1000696E0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000049B8(v10, v11, &v34);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Using strings: %s", v9, 0xCu);
    sub_100005ED8(v25);

    v3 = v26;
  }

  sub_100004F70(&qword_100083508, &qword_1000697F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000697E0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = inited;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 40) = v3;
  *(inited + 48) = v2;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 104) = &type metadata for String;
  *(inited + 72) = kCFUserNotificationAlertMessageKey;
  *(inited + 80) = v4;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  *(inited + 144) = &type metadata for String;
  *(inited + 112) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 120) = v5;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_17;
  }

  sub_10002E7FC(&v30, v35);
  sub_10002E7FC(&v30, v35);
  sub_10002E7FC(&v30, v35);
  v15 = kCFUserNotificationAlertHeaderKey;
  v16 = kCFUserNotificationAlertMessageKey;
  v17 = kCFUserNotificationDefaultButtonTitleKey;
  v18 = kCFUserNotificationAlternateButtonTitleKey;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v14[23] = &type metadata for String;
  v14[19] = v18;
  v14[20] = v28;
  v14[21] = v27;
  sub_100015D20(v14);
  swift_setDeallocating();
  sub_100004F70(&qword_100082E50, &qword_100069148);
  swift_arrayDestroy();
  error[0] = 0;
  type metadata accessor for CFString(0);
  sub_10002E8D4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = CFUserNotificationCreate(0, 0.0, 0, error, isa);

  if (!v20)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      swift_beginAccess();
      *(v23 + 4) = error[0];
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to show CFUserNotification. Error: %d", v23, 8u);
    }

    return 0;
  }

  return v20;
}

uint64_t sub_10002E580(uint64_t a1, char a2)
{
  *(v2 + 40) = a2;
  *(v2 + 32) = a1;

  return _swift_task_switch(sub_10002E614, 0, 0);
}

uint64_t sub_10002E614()
{
  v1 = sub_10002E0EC(*(v0 + 32), *(v0 + 40));
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = 0;
    CFUserNotificationReceiveResponse(v1, 0.0, (v0 + 16));
    v3 = *(v0 + 16);
    if (!v3)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (v3 == 1)
    {
      CFUserNotificationCancel(v2);
      v4 = 1;
LABEL_7:

      v5 = *(v0 + 8);

      return v5(v4);
    }

    _StringGuts.grow(_:)(37);

    *(v0 + 24) = *(v0 + 16);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    sub_100015E58(0xD000000000000023, 0x800000010006BD30);

    swift_willThrow();
  }

  else
  {
    sub_100015E58(0xD000000000000023, 0x800000010006BD00);
    swift_willThrow();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002E7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083420, &unk_1000696E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E86C(uint64_t a1)
{
  v2 = sub_100004F70(&unk_100083420, &unk_1000696E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002E8D4()
{
  result = qword_100082998;
  if (!qword_100082998)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082998);
  }

  return result;
}

void *sub_10002E9AC(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v71 = a4;
  v72 = a3;
  v8 = sub_100004F70(&qword_100082808, &qword_100068380);
  __chkstk_darwin(v8 - 8);
  v10 = &v62 - v9;
  v11 = type metadata accessor for FBKSInteraction.FeatureDomain();
  __chkstk_darwin(v11 - 8);
  v75 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v14 = __chkstk_darwin(v13 - 8);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v73 = &v62 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v62 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v62 - v25;
  __chkstk_darwin(v24);
  v76 = &v62 - v27;
  v28 = [a1 commonMetadata];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 featureDomain];
    if (v30)
    {
      v66 = v10;
      v67 = v4;
      v69 = a2;
      v70 = v23;
      v31 = v30;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v32;

      v78 = &_swiftEmptyDictionarySingleton;
      v33 = [v29 prefilledQuestions];
      sub_100008714(0, &qword_100083510, BMEvaluationCommonMetadataQuestionAnswer_ptr);
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10002F564(v34, &v78);

      v77 = &_swiftEmptyDictionarySingleton;
      v35 = [v29 auxiliaryAttributes];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 attributeDict];

        sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
        v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10002F8AC(v38, &v77);
      }

      v4 = v76;
      v39 = type metadata accessor for FBKSInteraction.Content();
      v40 = *(*(v39 - 8) + 56);
      v40(v4, 1, 1, v39);
      if ([a1 originalContent])
      {
        v72();
        if (v5)
        {

          v41 = type metadata accessor for UUID();
          (*(*(v41 - 8) + 8))(v69, v41);
LABEL_14:
          sub_10002F4FC(v4);

LABEL_28:

          return v4;
        }

        sub_10002F4FC(v4);
        sub_10002FB6C(v26, v4);
      }

      v40(v70, 1, 1, v39);
      if ([a1 generatedContent])
      {
        v71();
        v44 = v69;
        if (v5)
        {

          v45 = type metadata accessor for UUID();
          (*(*(v45 - 8) + 8))(v44, v45);
          sub_10002F4FC(v70);
          goto LABEL_14;
        }

        v46 = v70;
        sub_10002F4FC(v70);
        sub_10002FB6C(v20, v46);
      }

      else
      {
        v44 = v69;
        v46 = v70;
      }

      sub_10003A5A8(v65, v68, v75);
      v47 = [v29 bundleId];
      if (v47)
      {
        v48 = v47;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v49;
      }

      else
      {
        v71 = 0;
        v69 = 0;
      }

      v50 = v78;
      sub_100018B48(v4, v73);
      sub_100018B48(v46, v74);

      v51 = [v29 modelVersion];
      if (v51)
      {
        v52 = v51;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v53;
      }

      else
      {
        v68 = 0;
        v65 = 0;
      }

      v54 = [v29 diagnostics];
      v72 = v50;
      if (v54)
      {
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v57;
        v64 = v56;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      [v29 isHighPriority];
      v58 = type metadata accessor for UUID();
      v59 = *(v58 - 8);
      v60 = v66;
      (*(v59 + 16))(v66, v44, v58);
      (*(v59 + 56))(v60, 0, 1, v58);
      v4 = dispatch thunk of FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)();
      sub_100010DB8(v4);
      if (!v5)
      {

        (*(v59 + 8))(v44, v58);
        sub_10002F4FC(v70);
        sub_10002F4FC(v76);

        return v4;
      }

      (*(v59 + 8))(v44, v58);
      sub_10002F4FC(v70);
      sub_10002F4FC(v76);

      goto LABEL_28;
    }
  }

  sub_10001BF40();
  swift_allocError();
  *v42 = 3;
  swift_willThrow();

  v43 = type metadata accessor for UUID();
  (*(*(v43 - 8) + 8))(a2, v43);
  return v4;
}

uint64_t sub_10002F1B8()
{
  v1 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for FBKSInteraction.Content();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v24 = v0;
  dispatch thunk of FBKSInteraction.originalContent.getter();
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    sub_10002F4FC(v6);
    v15 = 3;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = v25;
    v17 = sub_100039C68();
    v25 = v16;
    if (v16)
    {
      return (*(v8 + 8))(v13, v7);
    }

    v15 = v17;
    (*(v8 + 8))(v13, v7);
  }

  dispatch thunk of FBKSInteraction.generatedContent.getter();
  if (v14(v4, 1, v7) == 1)
  {
    sub_10002F4FC(v4);
    v19 = 3;
  }

  else
  {
    (*(v8 + 32))(v11, v4, v7);
    v20 = v25;
    v21 = sub_100039C68();
    if (v20)
    {
      return (*(v8 + 8))(v11, v7);
    }

    v19 = v21;
    (*(v8 + 8))(v11, v7);
  }

  if (v15 <= 1u)
  {
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_16:
    if ((v19 | 2) == 3)
    {
      return 2;
    }

    goto LABEL_19;
  }

  if (v15 == 2)
  {
    goto LABEL_16;
  }

LABEL_13:
  result = 0;
  if (v19 <= 1u)
  {
    return v19 != 0;
  }

  if (v19 == 2)
  {
LABEL_19:
    sub_10001BF40();
    swift_allocError();
    *v22 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10002F4FC(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002F564(unint64_t a1, uint64_t *a2)
{
  v35 = a2;
  v32 = type metadata accessor for FBKSForm.Question();
  v28 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v34 = a1 & 0xC000000000000001;
      v27[1] = v28 + 16;
      v29 = (v28 + 8);
      v30 = v5;
      v31 = a1;
      while (1)
      {
        if (v34)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v33 + 16))
          {
            goto LABEL_25;
          }

          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v10 = [v7 question];
        if (v10)
        {
          break;
        }

LABEL_5:
        ++v6;
        if (v9 == v5)
        {
          return;
        }
      }

      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      FBKSForm.Question.init(stringValue:)();
      v12 = [v8 answer];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v14;
      a1 = v36;
      *v14 = 0x8000000000000000;
      v17 = sub_10005BDDC(v4);
      v18 = *(a1 + 16);
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_26;
      }

      v21 = v16;
      if (*(a1 + 24) < v20)
      {
        sub_10005D2E4(v20, isUniquelyReferenced_nonNull_native);
        v22 = sub_10005BDDC(v4);
        if ((v21 & 1) != (v23 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v17 = v22;
        a1 = v36;
        if ((v21 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        *(*(a1 + 56) + 8 * v17) = v13;

LABEL_23:
        (*v29)(v4, v32);
        *v35 = a1;

        v5 = v30;
        a1 = v31;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        a1 = v36;
        if (v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_10005EB28();
        a1 = v36;
        if (v21)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      *(a1 + 8 * (v17 >> 6) + 64) |= 1 << v17;
      (*(v28 + 16))(*(a1 + 48) + *(v28 + 72) * v17, v4, v32);
      *(*(a1 + 56) + 8 * v17) = v13;
      v24 = *(a1 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_27;
      }

      *(a1 + 16) = v26;
      goto LABEL_23;
    }
  }
}

void sub_10002F8AC(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_29:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v40 = v3;
      v41 = v2;
      v38 = v2 & 0xFFFFFFFFFFFFFF8;
      v39 = v2 & 0xC000000000000001;
      do
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = [v7 name];
        if (v10)
        {
          v11 = v6;
          v12 = v3;
          v13 = v2;
          v14 = v10;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v8 value];
          if (v18)
          {
            v42 = v8;
            v19 = v18;
            v20 = [v18 int64Value];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v22 = *a2;
            *a2 = 0x8000000000000000;
            v2 = v15;
            v23 = v15;
            v24 = v17;
            v26 = sub_10005BCB0(v23, v17);
            v27 = v22[2];
            v28 = (v25 & 1) == 0;
            v29 = v27 + v28;
            if (__OFADD__(v27, v28))
            {
              goto LABEL_27;
            }

            v30 = v25;
            v31 = v20;
            if (v22[3] >= v29)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10005EDA8();
              }
            }

            else
            {
              sub_10005D6C0(v29, isUniquelyReferenced_nonNull_native);
              v32 = sub_10005BCB0(v2, v24);
              if ((v30 & 1) != (v33 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v26 = v32;
            }

            v9 = v4 + 1;
            if (v30)
            {
              *(v22[7] + 8 * v26) = v31;
            }

            else
            {
              v22[(v26 >> 6) + 8] |= 1 << v26;
              v34 = (v22[6] + 16 * v26);
              *v34 = v2;
              v34[1] = v24;
              *(v22[7] + 8 * v26) = v31;
              v35 = v22[2];
              v36 = __OFADD__(v35, 1);
              v37 = v35 + 1;
              if (v36)
              {
                goto LABEL_28;
              }

              v22[2] = v37;
            }

            *a2 = v22;

            v3 = v40;
            v2 = v41;
            v6 = v38;
            v5 = v39;
          }

          else
          {

            v2 = v13;
            v3 = v12;
            v6 = v11;
            v9 = v4 + 1;
          }
        }

        else
        {
        }

        ++v4;
      }

      while (v9 != v3);
    }
  }
}

uint64_t sub_10002FB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10002FBDC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v23 = v1 + 72;
    v24 = v7;
    v25 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v26 = v6;
      v10 = v2;

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v12 = [objc_allocWithZone(BMCustomAttributesBasicValue) initWithBoolValue:0 int64Value:isa doubleValue:0 stringValue:0];

      v13 = objc_allocWithZone(BMCustomAttributesNamedValue);
      v14 = v12;
      v15 = String._bridgeToObjectiveC()();
      [v13 initWithName:v15 value:v14];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v25;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v25 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v16 = *(v4 + 8 * v9);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v10;
      v7 = v24;
      if (v24 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (v23 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_100033578(v5, v24, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_100033578(v5, v24, 0);
      }

LABEL_4:
      v6 = v26 + 1;
      v5 = v8;
      if (v26 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_10002FF14(void *a1, unint64_t *a2, void *a3, uint64_t (*a4)(char *))
{
  v53 = a3;
  v54 = a4;
  v57 = a2;
  v5 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = type metadata accessor for FBKSInteraction.Content();
  v56 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  sub_100008714(0, &qword_100083520, BMEvaluationCommonMetadata_ptr);
  v23 = a1;
  v24 = v58;
  v25 = sub_100032C20(v23);
  if (!v24)
  {
    v47 = v8;
    v48 = v22;
    v58 = 0;
    v50 = v11;
    v51 = v25;
    v46 = v20;
    v52 = v23;
    dispatch thunk of FBKSInteraction.originalContent.getter();
    v26 = v56;
    v49 = *(v56 + 48);
    v27 = v17;
    if (v49(v16, 1, v17) == 1)
    {
      sub_1000071C8(v16, &qword_100082CD8, &qword_100068EC8);
      v28 = 0;
      v29 = v57;
    }

    else
    {
      v11 = v48;
      (*(v26 + 32))(v48, v16, v17);
      sub_100008714(0, &qword_100083528, BMTextContent_ptr);
      (*(v26 + 16))(v14, v11, v17);
      (*(v26 + 56))(v14, 0, 1, v17);
      v30 = v58;
      v31 = sub_1000313B4(v14);
      v29 = v57;
      if (v30)
      {
        v32 = v52;

        (*(v26 + 8))(v11, v27);
        return v11;
      }

      v28 = v31;
      v58 = 0;
      (*(v26 + 8))(v11, v27);
    }

    v33 = v50;
    v34 = v52;
    dispatch thunk of FBKSInteraction.generatedContent.getter();

    v35 = v33;
    v36 = v49(v33, 1, v27);
    v37 = v54;
    v11 = v55;
    if (v36 == 1)
    {
      sub_1000071C8(v35, &qword_100082CD8, &qword_100068EC8);
      v38 = 0;
    }

    else
    {
      v39 = v46;
      (*(v26 + 32))(v46, v35, v27);
      sub_100008714(0, v29, v53);
      v40 = v47;
      (*(v26 + 16))(v47, v39, v27);
      (*(v26 + 56))(v40, 0, 1, v27);
      v41 = v58;
      v42 = v37(v40);
      v58 = v41;
      if (v41)
      {
        (*(v26 + 8))(v39, v27);

        return v11;
      }

      v38 = v42;
      (*(v26 + 8))(v39, v27);
    }

    v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v44 = v51;
    v11 = [v43 initWithCommonMetadata:v51 originalContent:v28 generatedContent:v38];

    return v11;
  }

  return v11;
}

char *sub_1000303F0(void *a1)
{
  v2 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v41 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for FBKSInteraction.Content();
  v50 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  sub_100008714(0, &qword_100083520, BMEvaluationCommonMetadata_ptr);
  v20 = a1;
  v21 = v51;
  v22 = sub_100032C20(v20);
  if (!v21)
  {
    v42 = v5;
    v43 = v19;
    v51 = 0;
    v45 = v8;
    v46 = v17;
    v48 = v22;
    v47 = v20;
    dispatch thunk of FBKSInteraction.originalContent.getter();
    v23 = v50;
    v44 = *(v50 + 48);
    v24 = v14;
    if (v44(v13, 1, v14) == 1)
    {
      sub_1000071C8(v13, &qword_100082CD8, &qword_100068EC8);
      v25 = 0;
      v27 = v46;
      v26 = v47;
    }

    else
    {
      v8 = v43;
      (*(v23 + 32))(v43, v13, v14);
      sub_100008714(0, &qword_100083548, BMTextImageContent_ptr);
      (*(v23 + 16))(v11, v8, v14);
      (*(v23 + 56))(v11, 0, 1, v14);
      v28 = v51;
      v29 = sub_100032094(v11);
      v27 = v46;
      if (v28)
      {
        v30 = v47;

        (*(v23 + 8))(v8, v24);
        return v8;
      }

      v25 = v29;
      v51 = 0;
      (*(v23 + 8))(v8, v24);
      v26 = v47;
    }

    v31 = v45;
    dispatch thunk of FBKSInteraction.generatedContent.getter();
    v32 = v31;

    v33 = v44(v31, 1, v24);
    v8 = v49;
    if (v33 == 1)
    {
      sub_1000071C8(v32, &qword_100082CD8, &qword_100068EC8);
      v34 = 0;
    }

    else
    {
      (*(v23 + 32))(v27, v32, v24);
      sub_100008714(0, &qword_100083540, BMImageContent_ptr);
      v35 = v42;
      (*(v23 + 16))(v42, v27, v24);
      (*(v23 + 56))(v35, 0, 1, v24);
      v36 = v51;
      v37 = sub_100031A90(v35);
      v51 = v36;
      if (v36)
      {
        (*(v23 + 8))(v27, v24);

        return v8;
      }

      v34 = v37;
      (*(v23 + 8))(v27, v24);
    }

    v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v39 = v48;
    v8 = [v38 initWithCommonMetadata:v48 originalContent:v25 generatedContent:v34];

    return v8;
  }

  return v8;
}

id sub_1000308C0(id a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Action();
  __chkstk_darwin(v2 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004F70(&qword_100082808, &qword_100068380);
  __chkstk_darwin(v5 - 8);
  v7 = (v25 - v6);
  v8 = type metadata accessor for FBKSEvaluation.Subject();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  FBKSEvaluation.subject.getter();
  v16 = (*(v9 + 88))(v11, v8);
  if (v16 == enum case for FBKSEvaluation.Subject.id(_:))
  {
    (*(v9 + 96))(v11, v8);
  }

  else
  {
    if (v16 != enum case for FBKSEvaluation.Subject.interaction(_:))
    {
      sub_10001BF40();
      swift_allocError();
      *v23 = 12;
      swift_willThrow();

      (*(v9 + 8))(v11, v8);
      return a1;
    }

    (*(v9 + 96))(v11, v8);
    a1 = *v11;
    dispatch thunk of FBKSInteraction.evaluationID.getter();
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_1000071C8(v7, &qword_100082808, &qword_100068380);
      sub_10001BF40();
      swift_allocError();
      *v22 = 12;
      swift_willThrow();

      return a1;
    }

    v11 = v7;
  }

  v17 = v26;
  (*(v13 + 32))(v15, v11, v12);
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  a1 = v17;
  FBKSEvaluation.action.getter();
  v20 = v25[1];
  v21 = sub_100033310(v4);
  if (v20)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    a1 = [v18 initWithEvaluationUuid:v19.super.isa userResponse:v21];

    (*(v13 + 8))(v15, v12);
  }

  return a1;
}