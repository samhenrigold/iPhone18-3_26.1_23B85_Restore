uint64_t sub_10000200C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_100002054(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v30 = sub_100216CC4();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100216CA4();
  __chkstk_darwin(v9, v10);
  v11 = sub_100216824();
  __chkstk_darwin(v11 - 8, v12);
  v13 = type metadata accessor for CuttlefishCKOperationRunnerCreator();
  v35[3] = v13;
  v35[4] = &off_10027F9F0;
  v35[0] = a1;
  type metadata accessor for ContainerMap();
  v14 = swift_allocObject();
  v15 = sub_1000023C4(v35, v13);
  __chkstk_darwin(v15, v15);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v14[6] = v13;
  v14[7] = &off_10027F9F0;
  v14[3] = v19;
  sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
  sub_100216804();
  v34 = _swiftEmptyArrayStorage;
  sub_100002414(&unk_10029D670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001148C(&unk_1002977F0, &unk_100226580);
  sub_10000245C();
  sub_100216E34();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  v14[2] = sub_100216CF4();
  v20 = sub_1000024C0(_swiftEmptyArrayStorage);
  v21 = v32;
  v14[8] = v31;
  v14[9] = v21;
  v14[10] = v33;
  v14[11] = v20;
  sub_100006128(v35, v22, v23, v24, v25, v26, v27, v28);
  return v14;
}

uint64_t sub_1000023C4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100002414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000245C()
{
  result = qword_10029D680;
  if (!qword_10029D680)
  {
    sub_100011534(&unk_1002977F0, &unk_100226580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D680);
  }

  return result;
}

unint64_t sub_1000024C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D90, &qword_10021D7A8);
    v3 = sub_100217144();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1000158D4(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v19 = (*v3[1].endpoint + 32 * result);
      *v19 = v5;
      v19[1] = v6;
      v19[2] = v7;
      v19[3] = v8;
      *(*v3[1].containerMap + 8 * result) = v10;
      v20 = *v3->endpoint;
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v22;
      if (!--v1)
      {
        v3, v12, v13, v14, v15, v16, v17, v18;
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

uint64_t *sub_1000025E4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002648(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100002680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v18 = sub_1002169B4();
  v19 = _set_user_dir_suffix();
  v18, v20, v21, v22, v23, v24, v25, v26;
  if (v19 && (sub_100216074(), swift_allocObject(), v48 = 0x40000000000, v49 = sub_100216044(), sub_1000027D8(&v48, 0), v49 |= 0x4000000000000000uLL, sub_100002880(&v48, 65537, v27, v28, v29, v30, v31, v32), v34 = v33, sub_100002BF0(v48, v49, v35, v36, v37, v38, v39, v40), v34))
  {

    v34, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
  }

  else
  {
    sub_1002170E4();
    __break(1u);
  }
}

void sub_1000027D8(int *a1, int a2)
{
  sub_1002161B4();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_100216034();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_100216064();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_100216054();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
  v6, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100002880(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v51, 0, 15);
      sub_100002CF0(v51, a2, &v52);
      return;
    }

    sub_100002BF0(v12, v11, v15, v16, v17, v18, v19, v20);
    v52 = v12;
    v53 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000, v21, v22, v23, v24, v25, v26);
    sub_1002161A4();
    v12 = v52;
    sub_100002C44(*(v52 + 16), *(v52 + 24), v53, a2);
    v27 = v53 | 0x8000000000000000;
    if (!v8)
    {
      *a1 = v52;
      a1[1] = v27;
      return;
    }

    goto LABEL_16;
  }

  if (!v13)
  {
    v50 = a2;
    sub_100002BF0(v12, v11, a3, a4, a5, a6, a7, a8);
    v51[0] = v12;
    LOWORD(v51[1]) = v11;
    BYTE2(v51[1]) = BYTE2(v11);
    BYTE3(v51[1]) = BYTE3(v11);
    BYTE4(v51[1]) = BYTE4(v11);
    BYTE5(v51[1]) = BYTE5(v11);
    BYTE6(v51[1]) = BYTE6(v11);
    sub_100002CF0(v51, v50, &v52);
    v14 = LODWORD(v51[1]) | ((WORD2(v51[1]) | (BYTE6(v51[1]) << 16)) << 32);
    *a1 = v51[0];
    a1[1] = v14;
    return;
  }

  v28 = v11 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100002BF0(v12, v11, v29, v30, v31, v32, v33, v34);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000, v35, v36, v37, v38, v39, v40);
  v41 = v12 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v41 < v12)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (sub_100216034() && __OFSUB__(v12, sub_100216064()))
    {
LABEL_20:
      __break(1u);
    }

    sub_100216074();
    swift_allocObject();
    v42 = sub_100216014();

    v28 = v42;
  }

  if (v41 < v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_100002C44(v12, v12 >> 32, v28, a2);
  v28, v43, v44, v45, v46, v47, v48, v49;
  v27 = v28 | 0x4000000000000000;
  if (v8)
  {
LABEL_16:
    *a1 = v12;
    a1[1] = v27;
    return;
  }

  *a1 = v12;
  a1[1] = v27;
}

void sub_100002BF0(_TtC18TrustedPeersHelper6Client *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }

    v9 = a2;
    result, a2, a3, a4, a5, a6, a7, a8;
    a2 = v9;
  }

  (a2 & 0x3FFFFFFFFFFFFFFFLL), a2, a3, a4, a5, a6, a7, a8;
}

void sub_100002C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_100216034();
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216064();
    v10 = a1 - v9;
    if (__OFSUB__(a1, v9))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_100216054();
      sub_100002CF0((v8 + v10), v4, &v11);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100002CF0(char *a1@<X0>, int a2@<W2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    if (qword_100297238 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_100297DD8);
    v8 = sub_100216754();
    v9 = sub_100216C74();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed to bind memory", v10, 2u);
    goto LABEL_12;
  }

  sub_100216794();
  if (confstr(a2, a1, 0x400uLL) > 0)
  {
    *a3 = sub_100216A24();
    a3[1] = v6;
    return;
  }

  if (qword_100297238 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_100297DD8);
  v8 = sub_100216754();
  v12 = sub_100216C74();
  if (os_log_type_enabled(v8, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = a2;
    *(v13 + 8) = 1024;
    *(v13 + 10) = sub_100216784();
    _os_log_impl(&_mh_execute_header, v8, v12, "confstr %d failed: %d", v13, 0xEu);
LABEL_12:
  }

LABEL_13:

  *a3 = 0;
  a3[1] = 0;
}

NSString sub_100002F44()
{
  result = sub_100216964();
  qword_1002B0310 = result;
  return result;
}

void sub_100002F7C(void *a1, void *a2)
{
  v3 = [a1 machines];
  v4 = &_swiftEmptySetSingleton;
  if (v3)
  {
    v5 = v3;
    v54 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();
  }

  v51 = (&_swiftEmptySetSingleton & 0xC000000000000001);
  v52 = v2;
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v4 = v55;
    v6 = v56;
    v7 = v57;
    v8 = v58;
    v9 = v59;
  }

  else
  {
    v10 = -1 << *(&_swiftEmptySetSingleton + 32);
    v6 = &_swiftEmptySetSingleton + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(&_swiftEmptySetSingleton + 7);

    v8 = 0;
  }

  do
  {
    if (v4 < 0)
    {
      v17 = sub_100216F14();
      if (!v17 || (v53 = v17, type metadata accessor for MachineMO(), swift_dynamicCast(), (v13 = v54) == 0))
      {
LABEL_19:
        sub_1001ACCA0(v4);
        &_swiftEmptySetSingleton, v18, v19, v20, v21, v22, v23, v24, a2, v51, v52, v7, &_swiftEmptySetSingleton, v53, v54, v55, v56, v57;
        return;
      }
    }

    else
    {
      v15 = v8;
      v16 = v9;
      if (!v9)
      {
        while (1)
        {
          v8 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v8 >= ((v7 + 64) >> 6))
          {
            goto LABEL_19;
          }

          v16 = *&v6[8 * v8];
          ++v15;
          if (v16)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
      }

LABEL_9:
      v9 = (v16 - 1) & v16;
      v13 = *(*(v4 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    v14 = [v13 allowed];
  }

  while ((v14 & 1) == 0);
  sub_1001ACCA0(v4);
  if (v51)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v26 = v60;
    v25 = v61;
    v27 = v62;
    v28 = v63;
    v29 = v64;
  }

  else
  {
    v26 = &_swiftEmptySetSingleton;
    v30 = -1 << *(&_swiftEmptySetSingleton + 32);
    v25 = &_swiftEmptySetSingleton + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(&_swiftEmptySetSingleton + 7);

    v28 = 0;
  }

  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v33 = sub_100216F14();
  if (v33)
  {
    v53 = v33;
    type metadata accessor for MachineMO();
    swift_dynamicCast();
    v34 = v54;
    v35 = v28;
    v36 = v29;
    if (v54)
    {
      while (1)
      {
        if ([v34 allowed])
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        [v34 setStatus:v39];
        [v34 setAllowed:0];

        v28 = v35;
        v29 = v36;
        if (v26 < 0)
        {
          goto LABEL_27;
        }

LABEL_30:
        v37 = v28;
        v38 = v29;
        v35 = v28;
        if (!v29)
        {
          break;
        }

LABEL_34:
        v36 = (v38 - 1) & v38;
        v34 = *(*(v26 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v38)))));
        if (!v34)
        {
          goto LABEL_40;
        }
      }

      while (1)
      {
        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_44;
        }

        if (v35 >= ((v27 + 64) >> 6))
        {
          break;
        }

        v38 = *&v25[8 * v35];
        ++v37;
        if (v38)
        {
          goto LABEL_34;
        }
      }
    }
  }

LABEL_40:
  sub_1001ACCA0(v26);
  &_swiftEmptySetSingleton, v40, v41, v42, v43, v44, v45, v46, a2, v51, v52, v27, &_swiftEmptySetSingleton, v53, v54, v55, v56, v57;
  v54 = 0;
  if ([v50 save:&v54])
  {
    v47 = v54;
  }

  else
  {
    v48 = v54;
    sub_100216154();

    swift_willThrow();
  }
}

id sub_1000034AC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v564 = a3;
  v11 = a1;
  v12 = [a1 voucherInfo];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216224();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xC000000000000000;
  }

  v17 = [v11 voucherInfoSig];
  v454 = a7;
  v474 = a6;
  if (v17)
  {
    v18 = v17;
    v19 = sub_100216224();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xC000000000000000;
  }

  isa = sub_100216204().super.isa;
  v23 = sub_100216204().super.isa;
  v24 = [objc_opt_self() voucherInfoWithData:isa sig:v23];

  sub_100002BF0(v19, v21, v25, v26, v27, v28, v29, v30);
  sub_100002BF0(v14, v16, v31, v32, v33, v34, v35, v36);
  if (!v24)
  {
    if (qword_100297558 != -1)
    {
      swift_once();
    }

    v68 = sub_100216774();
    sub_100002648(v68, qword_10029E8B0);
    v69 = a4;
    v70 = sub_100216754();
    v71 = sub_100216C74();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v630 = v73;
      *v72 = 136446210;
      v74 = [v69 peerID];
      if (v74)
      {
        v75 = v74;
        v76 = sub_100216974();
        v78 = v77;
      }

      else
      {
        v76 = 7104878;
        v78 = 0xE300000000000000;
      }

      v140 = sub_100005FB0(v76, v78, &v630);
      v78, v141, v142, v143, v144, v145, v146, v147, v454, v474, v496, a8, v540, v564, a5, a4, v630, v631;
      *(v72 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v70, v71, "voucher dedup unable to construct TPVoucher for peerID %{public}s, leaving in DB", v72, 0xCu);
      sub_100006128(v73, v148, v149, v150, v151, v152, v153, v154);
    }

    goto LABEL_88;
  }

  v37 = v24;
  v38 = [v37 sponsorID];
  v39 = sub_100216974();
  v41 = v40;

  v42 = [a5 egoPeerID];
  if (!v42)
  {
    v41, v43, v44, v45, v46, v47, v48, v49, v454, v474, v8, a8, v11, v564, a5, a4, v630, v631;
    goto LABEL_32;
  }

  v50 = v42;
  v51 = sub_100216974();
  v53 = v52;

  if (v39 == v51 && v41 == v53)
  {
    v41, v54, v55, v56, v57, v58, v59, v60, v454, v474, v8, a8, v11, v564, a5, a4, v630, v631;
    v53, v61, v62, v63, v64, v65, v66, v67, v455, v475, v497, v519, v541, v565, v585, v608, v630, v631;
  }

  else
  {
    v79 = sub_1002171A4();
    v41, v80, v81, v82, v83, v84, v85, v86, v454, v474, v8, a8, v11, v564, a5, a4, v630, v631;
    v53, v87, v88, v89, v90, v91, v92, v93, v457, v477, v499, v521, v543, v567, v587, v610, v630, v631;
    if ((v79 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v94 = [v586 egoSponsoredBeneficiaryIDs];
  if (v94)
  {
    v630 = 0;
    v102 = v94;
    sub_100216BA4();
  }

  0, v95, v96, v97, v98, v99, v100, v101, v456, v476, v498, v520, v542, v566, v586, v609, v630, v631;
  v632 = &_swiftEmptySetSingleton;
  v103 = [v37 beneficiaryID];
  v104 = sub_100216974();
  v106 = v105;

  sub_10018B000(&v630, v104, v106);
  v631, v107, v108, v109, v110, v111, v112, v113, v458, v478, v500, v522, v544, v568, v588, v611, v630, v631;
  v114 = v632;

  v115 = sub_100216B94().super.isa;
  v114, v116, v117, v118, v119, v120, v121, v122, v459, v479, v501, v523, v545, v569, v589, v612, v630, v631;
  [v590 setEgoSponsoredBeneficiaryIDs:v115];

  if (qword_100297558 != -1)
  {
    swift_once();
  }

  v123 = sub_100216774();
  sub_100002648(v123, qword_10029E8B0);
  v124 = v613;
  v125 = sub_100216754();
  v126 = sub_100216C94();

  if (os_log_type_enabled(v125, v126))
  {
    v134 = swift_slowAlloc();
    v630 = swift_slowAlloc();
    *v134 = 136446466;
    v135 = [v124 peerID];
    if (v135)
    {
      v136 = v135;
      v137 = sub_100216974();
      v139 = v138;
    }

    else
    {
      v137 = 7104878;
      v139 = 0xE300000000000000;
    }

    v155 = sub_100005FB0(v137, v139, &v630);
    v139, v156, v157, v158, v159, v160, v161, v162, v460, v480, v502, v524, v546, v570, v590, v613, v630, v631;
    *(v134 + 4) = v155;
    *(v134 + 12) = 2082;

    v163 = sub_100216BC4();
    v165 = v164;
    v114, v164, v166, v167, v168, v169, v170, v171, v461, v481, v503, v525, v547, v571, v591, v614, v630, v631;
    v172 = sub_100005FB0(v163, v165, &v630);
    v165, v173, v174, v175, v176, v177, v178, v179, v462, v482, v504, v526, v548, v572, v592, v615, v630, v631;
    *(v134 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v125, v126, "found voucher that ego sponsored, added %{public}s to list of sponsored beneficiaries: %{public}s", v134, 0x16u);
    swift_arrayDestroy();

    v114, v180, v181, v182, v183, v184, v185, v186, v463, v483, v505, v527, v549, v573, v593, v616, v630, v631;

    v11 = v542;
  }

  else
  {
    v114, v127, v128, v129, v130, v131, v132, v133, v460, v480, v502, v524, v546, v570, v590, v613, v630, v631;

    v11 = v542;
  }

LABEL_32:
  v187 = [v37 beneficiaryID];
  v188 = sub_100216974();
  v190 = v189;

  v191 = [v609 peerID];
  if (v191)
  {
    v199 = v191;
    v200 = sub_100216974();
    v202 = v201;

    if (v188 == v200 && v190 == v202)
    {

      v190, v203, v204, v205, v206, v207, v208, v209, v456, v476, v498, v520, v542, v566, v586, v609, v630, v631;
      v202, v210, v211, v212, v213, v214, v215, v216, v464, v484, v506, v528, v550, v574, v594, v617, v630, v631;
LABEL_39:
      v232 = *v529;

      v233 = sub_100005D20(v37, v232);
      v232, v234, v235, v236, v237, v238, v239, v240, v454, v485, v507, v529, v551, v564, v595, v618, v630, v631;
      if (v233)
      {
        if (qword_100297558 != -1)
        {
          swift_once();
        }

        v241 = sub_100216774();
        sub_100002648(v241, qword_10029E8B0);
        v242 = v37;
        v243 = v620;
        v244 = sub_100216754();
        v245 = sub_100216C94();

        if (os_log_type_enabled(v244, v245))
        {
          v246 = swift_slowAlloc();
          v630 = swift_slowAlloc();
          *v246 = 136446978;
          v247 = [v243 peerID];
          if (v247)
          {
            v248 = v247;
            v249 = sub_100216974();
            v251 = v250;
          }

          else
          {
            v249 = 7104878;
            v251 = 0xE300000000000000;
          }

          v387 = sub_100005FB0(v249, v251, &v630);
          v251, v388, v389, v390, v391, v392, v393, v394, v454, v487, v509, v531, v553, v564, v597, v620, v630, v631;
          *(v246 + 4) = v387;
          *(v246 + 12) = 2082;
          v395 = [v242 sponsorID];
          v396 = sub_100216974();
          v398 = v397;

          v399 = sub_100005FB0(v396, v398, &v630);
          v398, v400, v401, v402, v403, v404, v405, v406, v470, v492, v514, v536, v559, v580, v603, v626, v630, v631;
          *(v246 + 14) = v399;
          *(v246 + 22) = 2082;
          v407 = [v242 beneficiaryID];
          v408 = sub_100216974();
          v410 = v409;

          v411 = sub_100005FB0(v408, v410, &v630);
          v410, v412, v413, v414, v415, v416, v417, v418, v471, v493, v515, v537, v560, v581, v604, v627, v630, v631;
          *(v246 + 24) = v411;
          *(v246 + 32) = 2050;
          v419 = [v242 reason];

          *(v246 + 34) = v419;
          _os_log_impl(&_mh_execute_header, v244, v245, "duplicate voucher for peerID %{public}s sponsorID %{public}s beneficiaryID %{public}s reason %{public}lu", v246, 0x2Au);
          swift_arrayDestroy();

          v11 = v561;
        }

        else
        {
        }

        v420 = v11;
        sub_100216B04();
        if (*((*v487 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v487 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        goto LABEL_84;
      }

      v264 = v37;
      sub_100005CF8(&v630, v264);

      if (qword_100297558 != -1)
      {
        swift_once();
      }

      v265 = sub_100216774();
      sub_100002648(v265, qword_10029E8B0);
      v242 = v264;
      v266 = v620;
      v267 = sub_100216754();
      v268 = sub_100216C64();

      if (!os_log_type_enabled(v267, v268))
      {

LABEL_84:
        goto LABEL_88;
      }

      v269 = swift_slowAlloc();
      v630 = swift_slowAlloc();
      *v269 = 136446978;
      v270 = [v266 peerID];
      if (v270)
      {
        v271 = v270;
        v272 = sub_100216974();
        v274 = v273;
      }

      else
      {
        v272 = 7104878;
        v274 = 0xE300000000000000;
      }

      v421 = sub_100005FB0(v272, v274, &v630);
      v274, v422, v423, v424, v425, v426, v427, v428, v454, v487, v509, v531, v553, v564, v597, v620, v630, v631;
      *(v269 + 4) = v421;
      *(v269 + 12) = 2082;
      v429 = [v242 sponsorID];
      v430 = sub_100216974();
      v432 = v431;

      v433 = sub_100005FB0(v430, v432, &v630);
      v432, v434, v435, v436, v437, v438, v439, v440, v472, v494, v516, v538, v562, v582, v605, v628, v630, v631;
      *(v269 + 14) = v433;
      *(v269 + 22) = 2082;
      v441 = [v242 beneficiaryID];
      v442 = sub_100216974();
      v444 = v443;

      v445 = sub_100005FB0(v442, v444, &v630);
      v444, v446, v447, v448, v449, v450, v451, v452, v473, v495, v517, v539, v563, v583, v606, v629, v630, v631;
      *(v269 + 24) = v445;
      *(v269 + 32) = 2050;
      v453 = [v242 reason];

      *(v269 + 34) = v453;
      _os_log_impl(&_mh_execute_header, v267, v268, "voucher kept for peerID %{public}s sponsorID %{public}s beneficiaryID %{public}s reason %{public}lu", v269, 0x2Au);
      swift_arrayDestroy();

LABEL_87:
      v11 = v558;
LABEL_88:
      result = [v11 hasChanges];
      if ((result & 1) == 0)
      {
        return [v564 refreshObject:v11 mergeChanges:0];
      }

      return result;
    }

    v217 = sub_1002171A4();
    v190, v218, v219, v220, v221, v222, v223, v224, v456, v476, v498, v520, v542, v566, v586, v609, v630, v631;
    v202, v225, v226, v227, v228, v229, v230, v231, v465, v486, v508, v530, v552, v575, v596, v619, v630, v631;
    if (v217)
    {

      goto LABEL_39;
    }
  }

  else
  {
    v190, v192, v193, v194, v195, v196, v197, v198, v456, v476, v498, v520, v542, v566, v586, v609, v630, v631;
  }

  if (qword_100297558 != -1)
  {
    swift_once();
  }

  v252 = sub_100216774();
  v253 = sub_100002648(v252, qword_10029E8B0);
  v254 = v37;
  v255 = v618;
  v621 = v253;
  v256 = sub_100216754();
  v257 = sub_100216C94();

  if (os_log_type_enabled(v256, v257))
  {
    v258 = swift_slowAlloc();
    v630 = swift_slowAlloc();
    *v258 = 136446978;
    v259 = [v255 peerID];
    if (v259)
    {
      v260 = v259;
      v261 = sub_100216974();
      v263 = v262;
    }

    else
    {
      v261 = 7104878;
      v263 = 0xE300000000000000;
    }

    v275 = sub_100005FB0(v261, v263, &v630);
    v263, v276, v277, v278, v279, v280, v281, v282, v454, v485, v507, v529, v551, v564, v595, v621, v630, v631;
    *(v258 + 4) = v275;
    *(v258 + 12) = 2082;
    v283 = [v254 sponsorID];
    v284 = sub_100216974();
    v286 = v285;

    v287 = sub_100005FB0(v284, v286, &v630);
    v286, v288, v289, v290, v291, v292, v293, v294, v466, v488, v510, v532, v554, v576, v598, v622, v630, v631;
    *(v258 + 14) = v287;
    *(v258 + 22) = 2082;
    v295 = [v254 beneficiaryID];
    v296 = sub_100216974();
    v298 = v297;

    v299 = sub_100005FB0(v296, v298, &v630);
    v298, v300, v301, v302, v303, v304, v305, v306, v467, v489, v511, v533, v555, v577, v599, v623, v630, v631;
    *(v258 + 24) = v299;
    *(v258 + 32) = 2050;
    v307 = [v254 reason];

    *(v258 + 34) = v307;
    _os_log_impl(&_mh_execute_header, v256, v257, "voucher inconsistency for peerID %{public}s sponsorID %{public}s beneficiaryID %{public}s reason %{public}lu", v258, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v308 = objc_allocWithZone(NSFetchRequest);
  v309 = sub_100216964();
  v242 = [v308 initWithEntityName:v309];

  sub_100006174();
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_10021D420;
  *(v310 + 56) = type metadata accessor for ContainerMO();
  *(v310 + 64) = sub_100006208(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v310 + 32) = v595;
  v311 = v595;
  v312 = [v254 beneficiaryID];
  v313 = sub_100216974();
  v315 = v314;

  *(v310 + 96) = &type metadata for String;
  *(v310 + 104) = sub_100019BD0();
  *(v310 + 72) = v313;
  *(v310 + 80) = v315;
  v316 = sub_100216C34();
  [v242 setPredicate:v316];

  [v242 setFetchLimit:1];
  type metadata accessor for PeerMO();
  v317 = sub_100216D44();
  if (!v507)
  {
    v319 = v317;

    if (!v319)
    {
      v344 = v254;
      v345 = sub_100216754();
      v346 = sub_100216C74();

      v601 = v344;
      if (os_log_type_enabled(v345, v346))
      {
        v347 = swift_slowAlloc();
        v348 = swift_slowAlloc();
        v630 = v348;
        *v347 = 136315138;
        v349 = [v344 beneficiaryID];
        v350 = sub_100216974();
        v352 = v351;

        v353 = sub_100005FB0(v350, v352, &v630);
        v352, v354, v355, v356, v357, v358, v359, v360, v454, v485, 0, v529, v551, v564, v601, v621, v630, v631;
        *(v347 + 4) = v353;
        _os_log_impl(&_mh_execute_header, v345, v346, "deleting voucher due to peerID not found: %s", v347, 0xCu);
        sub_100006128(v348, v361, v362, v363, v364, v365, v366, v367);
      }

      v11 = v551;
      v368 = v551;
      sub_100216B04();
      if (*((*v485 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v485 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100216B44();
      }

      sub_100216B64();

      goto LABEL_84;
    }

    v320 = sub_100216754();
    v321 = sub_100216C94();
    if (os_log_type_enabled(v320, v321))
    {
      v322 = swift_slowAlloc();
      *v322 = 0;
      _os_log_impl(&_mh_execute_header, v320, v321, "moving voucher", v322, 2u);
    }

    v323 = [v254 beneficiaryID];
    v324 = sub_100216974();
    v326 = v325;

    v334 = v454;
    if (*(*v454 + 16))
    {
      sub_100015A28(v324, v326);
      v336 = v335;
      v326, v335, v337, v338, v339, v340, v341, v342, v454, v485, 0, v529, v551, v564, v595, v621, v630, v631;
      if (v336)
      {

LABEL_76:
        v630 = v343;
        v369 = v556;
        sub_100216B04();
        if (*((v630 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v630 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        v370 = v630;
        v371 = [v254 beneficiaryID];
        v372 = sub_100216974();
        v374 = v373;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v632 = *v334;
        *v334 = 0x8000000000000000;
        sub_10018642C(v370, v372, v374, isUniquelyReferenced_nonNull_native, v376, v377, v378, v379, v468, v490, v512, v534, v556, v578, v600, v624, v630, v631);
        v374, v380, v381, v382, v383, v384, v385, v386, v469, v491, v513, v535, v557, v579, v602, v625, v630, v631;
        *v334 = v632;

        goto LABEL_87;
      }
    }

    else
    {
      v326, v327, v328, v329, v330, v331, v332, v333, v454, v485, 0, v529, v551, v564, v595, v621, v630, v631;
    }

    v343 = _swiftEmptyArrayStorage;
    goto LABEL_76;
  }

  result = [v551 hasChanges];
  if ((result & 1) == 0)
  {
    return [v564 refreshObject:v551 mergeChanges:0];
  }

  return result;
}

void sub_100004860(void *a1, void (*a2)(void *, char *), uint64_t a3, void (*a4)(uint64_t), void *a5, uint64_t (*a6)(void))
{
  v12 = a6(0);
  v13 = sub_100216D44();
  if (v7)
  {
    if (qword_100297520 != -1)
    {
LABEL_41:
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    swift_errorRetain();
    v15 = sub_100216754();
    v16 = sub_100216C74();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch count for chunkwise enumeration: %{public}@", v17, 0xCu);
      sub_1000114D4(v18, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
  }

  else
  {
    v20 = v13;
    v21 = [a1 fetchBatchSize];
    if (v21)
    {
      v22 = v20 >= 0;
      if (v21 > 0)
      {
        v22 = v20 < 1;
      }

      if (!v22)
      {
        v23 = v20;
        v84 = a2;
        v24 = 0;
        v25 = &selRef_hasPeerWithID_error_;
        v77 = v12;
        v26 = &type metadata for Any;
        LODWORD(v71) = v6;
        v73 = a4;
        v75 = a5;
        v67 = v21;
        v69 = a1;
        v83 = v23;
        while (1)
        {
          v27 = v21 + v24;
          if (__OFADD__(v24, v21))
          {
            v27 = ((v21 + v24) >> 63) ^ 0x8000000000000000;
          }

          v79 = v27;
          v86 = 0;
          v82 = objc_autoreleasePoolPush();
          [a1 v25[303]];
          sub_100216E24();
          swift_unknownObjectRelease();
          sub_10001148C(&qword_10029D5F0, &qword_100226530);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v28 = v26;
          v20 = v85;
          [v85 setFetchBatchSize:0];
          [v85 setFetchOffset:v24];
          if (__OFSUB__(v83, v24))
          {
            __break(1u);
            goto LABEL_43;
          }

          v29 = [a1 fetchBatchSize];
          if (v29 >= v83 - v24)
          {
            v30 = (v83 - v24);
          }

          else
          {
            v30 = v29;
          }

          [v85 setFetchLimit:v30];
          v31 = sub_100216D54();
          v32 = v31;
          v33 = v31 & 0xFFFFFFFFFFFFFF8;
          if (v31 >> 62)
          {
            v34 = sub_1002170F4();
          }

          else
          {
            v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v42 = 0;
          do
          {
            v43 = v42;
            if (v34 == v42)
            {
              break;
            }

            if ((v32 & 0xC000000000000001) != 0)
            {
              v44 = sub_100217014();
            }

            else
            {
              if (v42 >= *(v33 + 16))
              {
                goto LABEL_40;
              }

              v44 = *(v32 + 8 * v42 + 32);
            }

            v45 = v44;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v46 = objc_autoreleasePoolPush();
            v84(v45, &v86);
            objc_autoreleasePoolPop(v46);

            v42 = v43 + 1;
            v28 = &type metadata for Any;
          }

          while ((v86 & 1) == 0);
          v32, v35, v36, v37, v38, v39, v40, v41, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79;
          v74(v32);
          v32, v47, v48, v49, v50, v51, v52, v53, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80;
          [v71 refreshAllObjects];

          objc_autoreleasePoolPop(v82);
          if (v34 == v43)
          {
            v24 = v81;
            v54 = v83 >= v81;
            v21 = v67;
            a1 = v69;
            if (v67 > 0)
            {
              v54 = v81 >= v83;
            }

            v25 = &selRef_hasPeerWithID_error_;
            v26 = v28;
            if (!v54)
            {
              continue;
            }
          }

          return;
        }

        sub_1002170E4();
        __break(1u);
      }
    }

    else
    {
LABEL_43:
      __break(1u);
      swift_once();
      v55 = sub_100216774();
      sub_100002648(v55, qword_10029D160);
      swift_errorRetain();
      v56 = sub_100216754();
      v57 = sub_100216C74();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138543362;
        swift_errorRetain();
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v60;
        *v59 = v60;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to fetch for chunkwise enumeration: %{public}@", v58, 0xCu);
        sub_1000114D4(v59, &qword_10029D580, &unk_10021CCC0);
      }

      swift_willThrow();
      objc_autoreleasePoolPop(v82);
    }
  }
}

void sub_100004F38(int64_t a1, __objc2_prop *a2, id a3)
{
  v4 = v3;
  if (qword_100297558 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v8 = sub_100216774();
    v9 = sub_100002648(v8, qword_10029E8B0);
    v10 = a1;
    v11 = sub_100216754();
    v12 = sub_100216C94();

    v13 = os_log_type_enabled(v11, v12);
    v149 = v9;
    if (v13)
    {
      v151 = a3;
      v152 = a2;
      v14 = v4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v156 = v16;
      *v15 = 136446210;
      v17 = [v10 peerID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_100216974();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v4 = v14;
      v22 = sub_100005FB0(v19, v21, &v156);
      v21, v23, v24, v25, v26, v27, v28, v29, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "cleaning up vouchers for peer %{public}s", v15, 0xCu);
      sub_100006128(v16, v30, v31, v32, v33, v34, v35, v36);

      a3 = v151;
      a2 = v152;
    }

    else
    {
    }

    v156 = &_swiftEmptySetSingleton;
    v155 = _swiftEmptyArrayStorage;
    v154 = &_swiftEmptyDictionarySingleton;
    v37 = objc_allocWithZone(NSFetchRequest);
    v38 = sub_100216964();
    v39 = [v37 initWithEntityName:v38];

    sub_100006174();
    sub_10001148C(&qword_100297D30, &qword_1002270B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10021D600;
    *(v40 + 56) = type metadata accessor for PeerMO();
    *(v40 + 64) = sub_100006208(&qword_10029E8C8, type metadata accessor for PeerMO);
    *(v40 + 32) = v10;
    v41 = v10;
    v42 = sub_100216C34();
    [v39 setPredicate:v42];

    sub_10001148C(&qword_10029D150, &qword_100226560);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10021D420;
    *(v43 + 32) = 0x4972656863756F76;
    *(v43 + 40) = 0xEB000000006F666ELL;
    *(v43 + 88) = &type metadata for String;
    *(v43 + 56) = &type metadata for String;
    strcpy((v43 + 64), "voucherInfoSig");
    *(v43 + 79) = -18;
    isa = sub_100216B14().super.isa;
    v43, v45, v46, v47, v48, v49, v50, v51, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
    [v39 setPropertiesToFetch:isa];

    v52 = [v39 setFetchBatchSize:10];
    __chkstk_darwin(v52, v53);
    v147[2] = a3;
    v147[3] = v41;
    v147[4] = a2;
    v147[5] = &v155;
    v147[6] = &v154;
    v147[7] = &v156;
    sub_1000060FC(v39, sub_100004F14, v147, EscrowCheckGraphStatus.rawValue.getter, 0);
    if (v4)
    {

LABEL_35:
      v154, v54, v55, v56, v57, v58, v59, v60, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
      v155, v104, v105, v106, v107, v108, v109, v110, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
      v156, v111, v112, v113, v114, v115, v116, v117, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
      return;
    }

    v61 = v155;
    v151 = 0;
    v152 = a2;
    v150 = v39;
    if (v155 >> 62)
    {
      v62 = sub_1002170F4();
    }

    else
    {
      v62 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a3 = a3;
    if (v62)
    {
      v63 = 0;
      a1 = v61 & 0xC000000000000001;
      v64 = v61 & 0xFFFFFFFFFFFFFF8;
      a2 = &stru_100292000;
      while (1)
      {
        if (a1)
        {
          v65 = v61;
          v66 = sub_100217014();
        }

        else
        {
          if (v63 >= *(v64 + 16))
          {
            goto LABEL_38;
          }

          v65 = v61;
          v66 = *&v61[1]._TtCs12_SwiftObject_opaque[8 * v63];
        }

        v67 = v66;
        v4 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          break;
        }

        [a3 deleteObject:v66];

        ++v63;
        v61 = v65;
        if (v4 == v62)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_21:

    v153 = 0;
    if (![a3 save:&v153])
    {
      v96 = v153;
      sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      v97 = sub_100216754();
      v98 = sub_100216C74();

      v99 = os_log_type_enabled(v97, v98);
      v100 = v150;
      if (v99)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138543362;
        swift_errorRetain();
        v103 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&_mh_execute_header, v97, v98, "voucher cleanup unable to save %{public}@", v101, 0xCu);
        sub_10005707C(v102);
      }

      swift_willThrow();
      goto LABEL_35;
    }

    v148 = v61;
    v68 = v154;
    a2 = &v154[2];
    v69 = 1 << v154[1]._TtCs12_SwiftObject_opaque[0];
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v4 = v70 & *v154[2]._TtCs12_SwiftObject_opaque;
    v71 = (v69 + 63) >> 6;
    v72 = v153;
    v149 = v68;

    v73 = 0;
    v74 = v150;
    if (v4)
    {
      break;
    }

LABEL_26:
    while (1)
    {
      a1 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (a1 >= v71)
      {

        v118 = v149;
        v149, v119, v120, v121, v122, v123, v124, v125;
        v148, v126, v127, v128, v129, v130, v131, v132, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
        v118, v133, v134, v135, v136, v137, v138, v139, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
        v156, v140, v141, v142, v143, v144, v145, v146, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
        return;
      }

      v4 = *(&a2->name + a1);
      ++v73;
      if (v4)
      {
        goto LABEL_29;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  while (1)
  {
    a1 = v73;
LABEL_29:
    v75 = __clz(__rbit64(v4)) | (a1 << 6);
    v76 = (*v149[1].endpoint + 16 * v75);
    v77 = *v76;
    v78 = v76[1];
    v79 = *(*v149[1].containerMap + 8 * v75);

    v80 = objc_autoreleasePoolPush();
    v81 = v151;
    sub_100201360(a3, v152, v77, v78, v79);
    v151 = v81;
    if (v81)
    {
      break;
    }

    v4 &= v4 - 1;
    objc_autoreleasePoolPop(v80);
    v79, v82, v83, v84, v85, v86, v87, v88, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
    v78, v89, v90, v91, v92, v93, v94, v95, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
    v73 = a1;
    v74 = v150;
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  objc_autoreleasePoolPop(v80);
  __break(1u);
}

uint64_t sub_1000056E8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_100216EF4();

    if (v17)
    {
      v14, v18, v19, v20, v21, v22, v23, v24, v46, v48, v50, v52, v54, v55, v58, v59, v60, v61;

      sub_10000200C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v56;
    }

    else
    {
      result = sub_100216ED4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v34 = sub_10018B85C(v15, result + 1, a5, a6, a3, a4);
        v35 = v34[2];
        if (v34[3] <= v35)
        {
          sub_100188D90(v35 + 1, a5, a6);
        }

        v36 = v16;
        sub_100188FB0(v36, v34);
        v14, v37, v38, v39, v40, v41, v42, v43, v46, v48, v50, v52, v54, v34, v58, v59, v60, v61;
        *v11 = v34;
        *a1 = v36;
        return 1;
      }
    }
  }

  else
  {
    sub_10000200C(0, a3, a4);
    v26 = sub_100216DB4(*(v14 + 40));
    v27 = -1 << *(v14 + 32);
    v28 = v26 & ~v27;
    if ((*(v14 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      v29 = ~v27;
      while (1)
      {
        v30 = *(*(v14 + 48) + 8 * v28);
        v31 = sub_100216DC4();

        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v14 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v44 = *(*(v14 + 48) + 8 * v28);
      *a1 = v44;
      v45 = v44;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *v11;
      v33 = a2;
      sub_100005B68(v33, v28, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v57;
      *a1 = v33;
      return 1;
    }
  }

  return result;
}

void sub_10000595C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10001148C(a2, a3);
  v6 = sub_100216F94();
  v14 = v6;
  if (*v5->endpoint)
  {
    v35 = v3;
    v15 = 0;
    v16 = 1 << v5[1]._TtCs12_SwiftObject_opaque[0];
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *v5[1].containerMap;
    v19 = (v16 + 63) >> 6;
    v20 = v6 + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v14 + 40);
      v26 = *(*v5[1].endpoint + 8 * (v22 | (v15 << 6)));
      v27 = sub_100216DB4(v25);
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v14 + 48) + 8 * v21) = v26;
      ++*(v14 + 16);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        v5, v7, v8, v9, v10, v11, v12, v13;
        v4 = v35;
        goto LABEL_26;
      }

      v24 = *&v5[1].containerMap[8 * v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_26:
    *v4 = v14;
  }
}

void sub_100005B68(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100188D90(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10018C604(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10000595C(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_100216DB4(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_10000200C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_100216DC4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1002171B4();
  __break(1u);
}

uint64_t sub_100005D20(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100216F24();
  }

  else if (*(a2 + 16) && (sub_10000200C(0, &qword_10029D640, TPVoucher_ptr), v5 = sub_100216DB4(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_100216DC4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100005E68(int64_t a1)
{
  v3 = *(v1 + 16);
  sub_100004F38(a1, *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *v3 = (v4 | *v3) & 1;
  }
}

unint64_t sub_100005EA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1001B436C(a5, a6);
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
    result = sub_100217034();
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

_TtC18TrustedPeersHelper6Client *sub_100005FB0(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t *a3)
{

  v6 = sub_100005EA4(&v18, 0, 0, 1, a1, a2);
  v14 = v18;
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18 = a1;
    v19 = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, ObjectType, v22, v23, v24, v25, v26, v27;
  ObjectType = swift_getObjectType();
  v18 = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000060A0(&v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100006128(&v18, v7, v8, v9, v10, v11, v12, v13);
  return v14;
}

uint64_t sub_1000060A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100006128(_TtC18TrustedPeersHelper6Client **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1[3][-1].containerMap;
  if ((*(v8 + 82) & 2) != 0)
  {
    *a1, a1[3], a3, a4, a5, a6, a7, a8;
  }

  else
  {
    (*(v8 + 8))();
  }
}

unint64_t sub_100006174()
{
  result = qword_10029D570;
  if (!qword_10029D570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10029D570);
  }

  return result;
}

uint64_t sub_1000061C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006208(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_10000625C(_TtC18TrustedPeersHelper6Client *a1, void (*a2)(_TtC18TrustedPeersHelper6Client **))
{
  v11[3] = sub_10001148C(&qword_10029E8D0, qword_1002272A0);
  v11[4] = sub_1000062F8();
  v11[0] = a1;

  a2(v11);
  sub_100006128(v11, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000062F8()
{
  result = qword_10029E8D8;
  if (!qword_10029E8D8)
  {
    sub_100011534(&qword_10029E8D0, qword_1002272A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E8D8);
  }

  return result;
}

void sub_10000635C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006484(a1, a1[3]);
  v6 = swift_allocObject();
  *v6->endpoint = a2;
  v7 = a2;
  sub_100216AF4();
  v6, v8, v9, v10, v11, v12, v13, v14;
}

uint64_t sub_100006448()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100006484(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_10000652C(void *a1, void *a2)
{
  result = [a1 hasChanges];
  if ((result & 1) == 0)
  {

    return [a2 refreshObject:a1 mergeChanges:0];
  }

  return result;
}

id sub_100006598(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 hasChanges];
  if ((result & 1) == 0)
  {

    return [v3 refreshObject:a1 mergeChanges:0];
  }

  return result;
}

void *sub_10000666C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100006760()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000067A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_10000680C()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006884()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000068CC()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 48), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006920(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_1000069F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006A7C()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006B5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006B94()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 48), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006C3C()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  *(v0 + v6 + 8), v11, v12, v13, v14, v15, v16, v17;
  v10(v0 + v7, v1);
  *(v0 + v8 + 8), v18, v19, v20, v21, v22, v23, v24, v54, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8), ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), v64, v67, v70, v73, v76, v79;
  *(v0 + v9), v25, v26, v27, v28, v29, v30, v31;
  *&v57[v0 + 8], v32, v33, v34, v35, v36, v37, v38, v55, v57, v59, v61, v65, v68, v71, v74, v77, v80;
  *&v60[v0 + 8], v39, v40, v41, v42, v43, v44, v45, v56, v58, v60, v62, v66, v69, v72, v75, v78, v81;
  *(v0 + v63 + 8), v46, v47, v48, v49, v50, v51, v52;

  return _swift_deallocObject(v0, v63 + 16, v3 | 7);
}

uint64_t sub_100006E18()
{
  updated = type metadata accessor for UpdateTrustRequest(0);
  v2 = *(*(updated - 1) + 80);
  v105 = ((v2 + 16) & ~v2);
  v3 = &v105[v0];
  *&v105[v0 + 8], v4, v5, v6, v7, v8, v9, v10, v94, *(*(updated - 1) + 64), v105, v0, v116, v122, v128, v134, v140, v146;
  v3[3], v11, v12, v13, v14, v15, v16, v17, v95, v100, v106, v111, v117, v123, v129, v135, v141, v147;
  v3[4], v18, v19, v20, v21, v22, v23, v24, v96, v101, v107, v112, v118, v124, v130, v136, v142, v148;
  v3[5], v25, v26, v27, v28, v29, v30, v31, v97, v102, v108, v113, v119, v125, v131, v137, v143, v149;
  v32 = updated[8];
  v33 = sub_1002164D4();
  v34 = *(*(v33 - 8) + 8);
  v34(v3 + v32, v33);
  v35 = v3 + updated[9];
  v36 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    sub_100002BF0(*v35, *(v35 + 1), v37, v38, v39, v40, v41, v42);
    sub_100002BF0(*(v35 + 2), *(v35 + 3), v43, v44, v45, v46, v47, v48);
    v34(&v35[*(v36 + 24)], v33);
  }

  v49 = v3 + updated[10];
  v50 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
  {
    sub_100002BF0(*v49, *(v49 + 1), v51, v52, v53, v54, v55, v56);
    sub_100002BF0(*(v49 + 2), *(v49 + 3), v57, v58, v59, v60, v61, v62);
    v34(&v49[*(v50 + 24)], v33);
  }

  v63 = (v3 + updated[11]);
  v64 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
  {
    v63[1], v65, v66, v67, v68, v69, v70, v71, v98, v103, v109, v114, v120, v126, v132, v138, v144, v150;
    v34(v63 + *(v64 + 20), v33);
    v72 = *(v64 + 24);
    v73 = sub_1002164A4();
    v74 = *(v73 - 8);
    if (!(*(v74 + 48))(v63 + v72, 1, v73))
    {
      (*(v74 + 8))(v63 + v72, v73);
    }
  }

  v75 = (v3 + updated[12]);
  v76 = type metadata accessor for Metrics(0);
  if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
  {
    v75[1], v77, v78, v79, v80, v81, v82, v83, v98, v103, v109, v114, v120, v126, v132, v138, v144, v150;
    v75[3], v84, v85, v86, v87, v88, v89, v90, v99, v104, v110, v115, v121, v127, v133, v139, v145, v151;
    v34(v75 + *(v76 + 24), v33);
  }

  v91 = v3 + updated[13];
  v92 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
  {
    v34(&v91[*(v92 + 20)], v33);
  }

  return _swift_deallocObject(v114, &v103[v109], v2 | 7);
}

uint64_t sub_1000071E4()
{
  v1 = type metadata accessor for SetRecoveryKeyRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  *(v0 + v3 + 8), v5, v6, v7, v8, v9, v10, v11, v81, *(*(v1 - 1) + 64), v92, v98, v104, v110, v116, v122, v128, v134;
  *(v0 + v3 + 24), v12, v13, v14, v15, v16, v17, v18, v82, v87, v93, v99, v105, v111, v117, v123, v129, v135;
  sub_100002BF0(*(v4 + 32), *(v4 + 40), v19, v20, v21, v22, v23, v24);
  sub_100002BF0(*(v4 + 48), *(v4 + 56), v25, v26, v27, v28, v29, v30);
  *(v0 + v3 + 64), v31, v32, v33, v34, v35, v36, v37, v83, v88, v94, v100, v106, v112, v118, v124, v130, v136;
  *(v0 + v3 + 72), v38, v39, v40, v41, v42, v43, v44, v84, v89, v95, v101, v107, v113, v119, v125, v131, v137;
  v45 = v1[10];
  v46 = sub_1002164D4();
  v47 = *(*(v46 - 8) + 8);
  v47(v0 + v3 + v45, v46);
  v48 = v0 + v3 + v1[11];
  v49 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    sub_100002BF0(*v48, *(v48 + 8), v50, v51, v52, v53, v54, v55);
    sub_100002BF0(*(v48 + 16), *(v48 + 24), v56, v57, v58, v59, v60, v61);
    v47(v48 + *(v49 + 24), v46);
  }

  v62 = v4 + v1[12];
  v63 = type metadata accessor for Metrics(0);
  if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
  {
    *(v62 + 8), v64, v65, v66, v67, v68, v69, v70, v85, v90, v96, v102, v108, v114, v120, v126, v132, v138;
    *(v62 + 24), v71, v72, v73, v74, v75, v76, v77, v86, v91, v97, v103, v109, v115, v121, v127, v133, v139;
    v47(v62 + *(v63 + 24), v46);
  }

  v78 = v4 + v1[13];
  v79 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
  {
    v47(v78 + *(v79 + 20), v46);
  }

  return _swift_deallocObject(v0, &v90[v3], v2 | 7);
}

uint64_t sub_1000074B0()
{
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v2 = *(*(RepairActionRequest - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  *(v0 + v3 + 8), v4, v5, v6, v7, v8, v9, v10, v40, *(*(RepairActionRequest - 1) + 64), v47, v51, v55, v59, v63, v67, v71, v75;
  *(v0 + v3 + 24), v11, v12, v13, v14, v15, v16, v17, v41, v44, v48, v52, v56, v60, v64, v68, v72, v76;
  v18 = RepairActionRequest[11];
  v19 = sub_1002164D4();
  v20 = *(*(v19 - 8) + 8);
  v20(v0 + v3 + v18, v19);
  v21 = v0 + v3 + RepairActionRequest[12];
  v22 = type metadata accessor for Metrics(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    *(v21 + 8), v23, v24, v25, v26, v27, v28, v29, v42, v45, v49, v53, v57, v61, v65, v69, v73, v77;
    *(v21 + 24), v30, v31, v32, v33, v34, v35, v36, v43, v46, v50, v54, v58, v62, v66, v70, v74, v78;
    v20(v21 + *(v22 + 24), v19);
  }

  v37 = v0 + v3 + RepairActionRequest[13];
  v38 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v20(v37 + *(v38 + 20), v19);
  }

  return _swift_deallocObject(v0, &v45[v3], v2 | 7);
}

uint64_t sub_1000076A0()
{
  v1 = type metadata accessor for GetEscrowCheckRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  *(v0 + v3 + 8), v4, v5, v6, v7, v8, v9, v10, v40, *(*(v1 - 1) + 64), v47, v51, v55, v59, v63, v67, v71, v75;
  *(v0 + v3 + 32), v11, v12, v13, v14, v15, v16, v17, v41, v44, v48, v52, v56, v60, v64, v68, v72, v76;
  v18 = v1[11];
  v19 = sub_1002164D4();
  v20 = *(*(v19 - 8) + 8);
  v20(v0 + v3 + v18, v19);
  v21 = v0 + v3 + v1[12];
  v22 = type metadata accessor for Metrics(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    *(v21 + 8), v23, v24, v25, v26, v27, v28, v29, v42, v45, v49, v53, v57, v61, v65, v69, v73, v77;
    *(v21 + 24), v30, v31, v32, v33, v34, v35, v36, v43, v46, v50, v54, v58, v62, v66, v70, v74, v78;
    v20(v21 + *(v22 + 24), v19);
  }

  v37 = v0 + v3 + v1[13];
  v38 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v20(v37 + *(v38 + 20), v19);
  }

  return _swift_deallocObject(v0, &v45[v3], v2 | 7);
}

uint64_t sub_1000078F0()
{
  v1 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  *(v0 + v3 + 8), v5, v6, v7, v8, v9, v10, v11, v69, *(*(v1 - 1) + 64), v76, v80, v84, v88, v92, v96, v100, v104;
  *(v0 + v3 + 24), v12, v13, v14, v15, v16, v17, v18, v70, v73, v77, v81, v85, v89, v93, v97, v101, v105;
  v19 = v1[6];
  v20 = sub_1002164D4();
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v3 + v19, v20);
  v22 = v0 + v3 + v1[7];
  v23 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    sub_100002BF0(*v22, *(v22 + 8), v24, v25, v26, v27, v28, v29);
    sub_100002BF0(*(v22 + 16), *(v22 + 24), v30, v31, v32, v33, v34, v35);
    v21(v22 + *(v23 + 24), v20);
  }

  v36 = v4 + v1[8];
  v37 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    sub_100002BF0(*v36, *(v36 + 8), v38, v39, v40, v41, v42, v43);
    sub_100002BF0(*(v36 + 16), *(v36 + 24), v44, v45, v46, v47, v48, v49);
    v21(v36 + *(v37 + 24), v20);
  }

  v50 = v4 + v1[9];
  v51 = type metadata accessor for Metrics(0);
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    *(v50 + 8), v52, v53, v54, v55, v56, v57, v58, v71, v74, v78, v82, v86, v90, v94, v98, v102, v106;
    *(v50 + 24), v59, v60, v61, v62, v63, v64, v65, v72, v75, v79, v83, v87, v91, v95, v99, v103, v107;
    v21(v50 + *(v51 + 24), v20);
  }

  v66 = v4 + v1[10];
  v67 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
  {
    v21(v66 + *(v67 + 20), v20);
  }

  return _swift_deallocObject(v0, &v74[v3], v2 | 7);
}

uint64_t sub_100007BC8()
{
  v1 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v27 = *(*(v1 - 8) + 64);
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for Metrics(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    *(v6 + 8), v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43;
    *(v6 + 24), v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44;
    v5(v6 + *(v7 + 24), v4);
  }

  v22 = v0 + v3 + *(v1 + 24);
  v23 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v5(v22 + *(v23 + 20), v4);
  }

  return _swift_deallocObject(v0, &v27[v3], v2 | 7);
}

unint64_t sub_100007FD8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_100007FF0()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_10000800C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_100008028(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_100008048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t sub_100008084@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_10000809C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000080B8@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_100008268@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  a1[1] = _swiftEmptyArrayStorage;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t _s18TrustedPeersHelper12ViewKeyClassOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18TrustedPeersHelper12ViewKeyClassOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10000830C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008328(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100008360(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100008490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000085C0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v14 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v15 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_100008840(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v14 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v15 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1002164D4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100008BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1002164D4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100008CC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008D70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008EF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100009048(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000090EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D820, &unk_10021E840);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100009228(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D820, &unk_10021E840);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000093B4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v14 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v17 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_100009634(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v14 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v17 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[13];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1000098B4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_100009A8C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100009C64(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_100009E90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10000A12C(unint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_10000A1D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A2BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000A3EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000A51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
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
    v10 = sub_1002164D4();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 36);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_10001148C(&unk_10029D720, &qword_10021E868);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 40);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_10000A64C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D720, &qword_10021E868);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000A8D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000AA00(unint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10000AAAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000AB50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_10000ACD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10000AE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000AF88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000B0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000B2B0(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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

  v10 = sub_1002164D4();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(&a1[v13], a2, v11);
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[7]];

  return v17(v18, a2, v16);
}

_BYTE *sub_10000B434(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10000B818()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B850()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B890()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B8C8()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B910()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B964()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 24), v7, v8, v9, v10, v11, v12, v13;

  *(v0 + 40), v14, v15, v16, v17, v18, v19, v20;
  *(v0 + 64), v21, v22, v23, v24, v25, v26, v27, v50, v54, v58, v62, v66, v70, v74, v78, vars0, vars8;
  *(v0 + 80), v28, v29, v30, v31, v32, v33, v34, v51, v55, v59, v63, v67, v71, v75, v79, vars0a, vars8a;
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v35, v36, v37, v38, v39, v40, v41, v52, v56, v60, v64, v68, v72, v76, v80, vars0b, vars8b;
  *(v0 + v6 + 8), v42, v43, v44, v45, v46, v47, v48, v53, v57, v61, v65, v69, v73, v77, v81, vars0c, vars8c;

  return _swift_deallocObject(v0, (v6 + 19) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_10000BA94()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 24), v7, v8, v9, v10, v11, v12, v13;
  *(v0 + 48), v14, v15, v16, v17, v18, v19, v20, v50, v54, v58, v62, v66, v70, v74, v78, vars0, vars8;
  *(v0 + 64), v21, v22, v23, v24, v25, v26, v27, v51, v55, v59, v63, v67, v71, v75, v79, vars0a, vars8a;

  *(v0 + 88), v28, v29, v30, v31, v32, v33, v34;
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v35, v36, v37, v38, v39, v40, v41, v52, v56, v60, v64, v68, v72, v76, v80, vars0b, vars8b;
  *(v0 + v6 + 8), v42, v43, v44, v45, v46, v47, v48, v53, v57, v61, v65, v69, v73, v77, v81, vars0c, vars8c;

  return _swift_deallocObject(v0, (v6 + 19) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_10000BBCC()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + v6 + 8), v16, v17, v18, v19, v20, v21, v22, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56;
  *(v0 + v7 + 8), v23, v24, v25, v26, v27, v28, v29, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57;
  *(v0 + v8 + 8), v30, v31, v32, v33, v34, v35, v36;

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_10000BCF8()
{
  v1 = (type metadata accessor for AddCustodianRecoveryKeyResponse(0) - 8);
  v2 = *(*v1 + 80);
  v82 = *(*v1 + 64);
  v89 = sub_1002163D4();
  v3 = *(v89 - 1);
  v4 = *(v3 + 80);
  v78 = *(v3 + 64);

  v5 = (v0 + ((v2 + 24) & ~v2));
  *v5, v6, v7, v8, v9, v10, v11, v12, v78, v82, ((v2 + 24) & ~v2), v89, v93, v97, v101, v105, v109, v113;
  v13 = v1[7];
  v14 = sub_1002164D4();
  v15 = *(*(v14 - 8) + 8);
  v15(v5 + v13, v14);
  v16 = v5 + v1[8];
  v17 = type metadata accessor for Changes(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    *(v16 + 1), v18, v19, v20, v21, v22, v23, v24, v79, v83, v86, v90, v94, v98, v102, v106, v110, v114;
    *(v16 + 2), v25, v26, v27, v28, v29, v30, v31, v80, v84, v87, v91, v95, v99, v103, v107, v111, v115;
    sub_100002BF0(*(v16 + 3), *(v16 + 4), v32, v33, v34, v35, v36, v37);
    sub_100002BF0(*(v16 + 5), *(v16 + 6), v38, v39, v40, v41, v42, v43);
    v15(&v16[*(v17 + 36)], v14);
  }

  v44 = (v83 + v86 + v4) & ~v4;
  v45 = (v79 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = (((v47 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v44, v90);
  *(v0 + v45), v49, v50, v51, v52, v53, v54, v55;
  *(v0 + v46 + 8), v56, v57, v58, v59, v60, v61, v62, v79, v83, v86, v90, v94, v98, v102, v106, v110, v114;
  *(v0 + v47 + 8), v63, v64, v65, v66, v67, v68, v69, v81, v85, v88, v92, v96, v100, v104, v108, v112, v116;
  *(v0 + v48 + 8), v70, v71, v72, v73, v74, v75, v76;

  return _swift_deallocObject(v0, v48 + 16, v2 | v4 | 7);
}

uint64_t sub_10000C338()
{
  v1 = type metadata accessor for Peer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v114 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  *(v0 + v3 + 8), v5, v6, v7, v8, v9, v10, v11, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138;
  *(v0 + v3 + 16), v12, v13, v14, v15, v16, v17, v18, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139;
  v19 = v1[6];
  v20 = sub_1002164D4();
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v3 + v19, v20);
  v22 = v0 + v3 + v1[7];
  v23 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    sub_100002BF0(*v22, *(v22 + 8), v24, v25, v26, v27, v28, v29);
    sub_100002BF0(*(v22 + 16), *(v22 + 24), v30, v31, v32, v33, v34, v35);
    v21(v22 + *(v23 + 24), v20);
  }

  v36 = v4 + v1[8];
  v37 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    sub_100002BF0(*v36, *(v36 + 8), v38, v39, v40, v41, v42, v43);
    sub_100002BF0(*(v36 + 16), *(v36 + 24), v44, v45, v46, v47, v48, v49);
    v21(v36 + *(v37 + 24), v20);
  }

  v50 = v4 + v1[9];
  v51 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    sub_100002BF0(*v50, *(v50 + 8), v52, v53, v54, v55, v56, v57);
    sub_100002BF0(*(v50 + 16), *(v50 + 24), v58, v59, v60, v61, v62, v63);
    v21(v50 + *(v51 + 24), v20);
  }

  v64 = v4 + v1[10];
  v65 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    sub_100002BF0(*v64, *(v64 + 8), v66, v67, v68, v69, v70, v71);
    sub_100002BF0(*(v64 + 16), *(v64 + 24), v72, v73, v74, v75, v76, v77);
    v21(v64 + *(v65 + 24), v20);
  }

  v78 = v4 + v1[11];
  v79 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
  {
    sub_100002BF0(*v78, *(v78 + 8), v80, v81, v82, v83, v84, v85);
    sub_100002BF0(*(v78 + 16), *(v78 + 24), v86, v87, v88, v89, v90, v91);
    v21(v78 + *(v79 + 24), v20);
  }

  v92 = (v116 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + v94 + 8), v96, v97, v98, v99, v100, v101, v102;
  *(v0 + v95 + 8), v103, v104, v105, v106, v107, v108, v109, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140;

  return _swift_deallocObject(v0, v95 + 16, v2 | 7);
}

uint64_t sub_10000C6E8()
{
  v1 = type metadata accessor for Peer(0);
  v160 = *(*(v1 - 1) + 80);
  v2 = (v160 + 24) & ~v160;
  v145 = ((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = (v145 + 15);
  v150 = type metadata accessor for JoinWithVoucherResponse(0);
  v165 = *(*(v150 - 1) + 80);
  v155 = *(*(v150 - 1) + 64);

  v4 = v0 + v2;
  *(v0 + v2 + 8), v5, v6, v7, v8, v9, v10, v11, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185;
  *(v0 + v2 + 16), v12, v13, v14, v15, v16, v17, v18, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186;
  v19 = v1[6];
  v20 = sub_1002164D4();
  v21 = *(*(v20 - 8) + 8);
  v21(v4 + v19, v20);
  v22 = v4 + v1[7];
  v23 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    sub_100002BF0(*v22, *(v22 + 8), v24, v25, v26, v27, v28, v29);
    sub_100002BF0(*(v22 + 16), *(v22 + 24), v30, v31, v32, v33, v34, v35);
    v21(v22 + *(v23 + 24), v20);
  }

  v36 = v3 & 0xFFFFFFFFFFFFFFF8;
  v37 = v4 + v1[8];
  v38 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    sub_100002BF0(*v37, *(v37 + 8), v39, v40, v41, v42, v43, v44);
    sub_100002BF0(*(v37 + 16), *(v37 + 24), v45, v46, v47, v48, v49, v50);
    v21(v37 + *(v38 + 24), v20);
  }

  v51 = v4 + v1[9];
  v52 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
  {
    sub_100002BF0(*v51, *(v51 + 8), v53, v54, v55, v56, v57, v58);
    sub_100002BF0(*(v51 + 16), *(v51 + 24), v59, v60, v61, v62, v63, v64);
    v21(v51 + *(v52 + 24), v20);
  }

  v65 = v4 + v1[10];
  v66 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
  {
    sub_100002BF0(*v65, *(v65 + 8), v67, v68, v69, v70, v71, v72);
    sub_100002BF0(*(v65 + 16), *(v65 + 24), v73, v74, v75, v76, v77, v78);
    v21(v65 + *(v66 + 24), v20);
  }

  v79 = (v36 + v167 + 8) & ~v167;
  v80 = v4 + v1[11];
  v81 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
  {
    sub_100002BF0(*v80, *(v80 + 8), v82, v83, v84, v85, v86, v87);
    sub_100002BF0(*(v80 + 16), *(v80 + 24), v88, v89, v90, v91, v92, v93);
    v21(v80 + *(v81 + 24), v20);
  }

  *(v0 + v79), v94, v95, v96, v97, v98, v99, v100, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187;
  v21(v0 + v79 + v153[5], v20);
  v101 = v0 + v79 + v153[6];
  v102 = type metadata accessor for Changes(0);
  if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
  {
    *(v101 + 8), v103, v104, v105, v106, v107, v108, v109, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188;
    *(v101 + 16), v110, v111, v112, v113, v114, v115, v116, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189;
    sub_100002BF0(*(v101 + 24), *(v101 + 32), v117, v118, v119, v120, v121, v122);
    sub_100002BF0(*(v101 + 40), *(v101 + 48), v123, v124, v125, v126, v127, v128);
    v21(v101 + *(v102 + 36), v20);
  }

  v129 = (v158 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (v129 + 23) & 0xFFFFFFFFFFFFFFF8;
  v131 = v163 | v168;
  *(v0 + v129 + 8), v103, v104, v105, v106, v107, v108, v109;
  *(v0 + v130 + 8), v132, v133, v134, v135, v136, v137, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188;

  return _swift_deallocObject(v0, v130 + 16, v131 | 7);
}

uint64_t sub_10000CDC4()
{
  v1 = type metadata accessor for Peer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 65) & ~v2;
  v131 = *(*(v1 - 1) + 64);

  *(v0 + 40), v4, v5, v6, v7, v8, v9, v10, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171;
  *(v0 + 56), v11, v12, v13, v14, v15, v16, v17, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172;
  v18 = v0 + v3;
  *(v0 + v3 + 8), v19, v20, v21, v22, v23, v24, v25, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173;
  *(v0 + v3 + 16), v26, v27, v28, v29, v30, v31, v32, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174;
  v33 = v1[6];
  v34 = sub_1002164D4();
  v35 = *(*(v34 - 8) + 8);
  v35(v0 + v3 + v33, v34);
  v36 = v0 + v3 + v1[7];
  v37 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    sub_100002BF0(*v36, *(v36 + 8), v38, v39, v40, v41, v42, v43);
    sub_100002BF0(*(v36 + 16), *(v36 + 24), v44, v45, v46, v47, v48, v49);
    v35(v36 + *(v37 + 24), v34);
  }

  v50 = v18 + v1[8];
  v51 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    sub_100002BF0(*v50, *(v50 + 8), v52, v53, v54, v55, v56, v57);
    sub_100002BF0(*(v50 + 16), *(v50 + 24), v58, v59, v60, v61, v62, v63);
    v35(v50 + *(v51 + 24), v34);
  }

  v64 = v18 + v1[9];
  v65 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    sub_100002BF0(*v64, *(v64 + 8), v66, v67, v68, v69, v70, v71);
    sub_100002BF0(*(v64 + 16), *(v64 + 24), v72, v73, v74, v75, v76, v77);
    v35(v64 + *(v65 + 24), v34);
  }

  v78 = v18 + v1[10];
  v79 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
  {
    sub_100002BF0(*v78, *(v78 + 8), v80, v81, v82, v83, v84, v85);
    sub_100002BF0(*(v78 + 16), *(v78 + 24), v86, v87, v88, v89, v90, v91);
    v35(v78 + *(v79 + 24), v34);
  }

  v92 = v18 + v1[11];
  v93 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
  {
    sub_100002BF0(*v92, *(v92 + 8), v94, v95, v96, v97, v98, v99);
    sub_100002BF0(*(v92 + 16), *(v92 + 24), v100, v101, v102, v103, v104, v105);
    v35(v92 + *(v93 + 24), v34);
  }

  v106 = (v135 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
  v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + v109 + 8), v111, v112, v113, v114, v115, v116, v117;
  *(v0 + v110 + 8), v118, v119, v120, v121, v122, v123, v124, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175;

  return _swift_deallocObject(v0, v110 + 16, v2 | 7);
}

uint64_t sub_10000D19C()
{
  v1 = type metadata accessor for Peer(0);
  v190 = *(*(v1 - 1) + 80);
  v2 = (v190 + 72) & ~v190;
  v169 = ((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = (v169 + 15);
  v176 = type metadata accessor for JoinWithVoucherResponse(0);
  v197 = *(*(v176 - 1) + 80);
  v183 = *(*(v176 - 1) + 64);

  *(v0 + 32), v4, v5, v6, v7, v8, v9, v10, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225;
  *(v0 + 48), v11, v12, v13, v14, v15, v16, v17, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226;

  v18 = v0 + v2;
  *(v0 + v2 + 8), v19, v20, v21, v22, v23, v24, v25, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227;
  *(v0 + v2 + 16), v26, v27, v28, v29, v30, v31, v32, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228;
  v33 = v1[6];
  v34 = sub_1002164D4();
  v35 = *(*(v34 - 8) + 8);
  v35(v18 + v33, v34);
  v36 = v18 + v1[7];
  v37 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    sub_100002BF0(*v36, *(v36 + 8), v38, v39, v40, v41, v42, v43);
    sub_100002BF0(*(v36 + 16), *(v36 + 24), v44, v45, v46, v47, v48, v49);
    v35(v36 + *(v37 + 24), v34);
  }

  v50 = v3 & 0xFFFFFFFFFFFFFFF8;
  v51 = v18 + v1[8];
  v52 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
  {
    sub_100002BF0(*v51, *(v51 + 8), v53, v54, v55, v56, v57, v58);
    sub_100002BF0(*(v51 + 16), *(v51 + 24), v59, v60, v61, v62, v63, v64);
    v35(v51 + *(v52 + 24), v34);
  }

  v65 = v18 + v1[9];
  v66 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
  {
    sub_100002BF0(*v65, *(v65 + 8), v67, v68, v69, v70, v71, v72);
    sub_100002BF0(*(v65 + 16), *(v65 + 24), v73, v74, v75, v76, v77, v78);
    v35(v65 + *(v66 + 24), v34);
  }

  v79 = v18 + v1[10];
  v80 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
  {
    sub_100002BF0(*v79, *(v79 + 8), v81, v82, v83, v84, v85, v86);
    sub_100002BF0(*(v79 + 16), *(v79 + 24), v87, v88, v89, v90, v91, v92);
    v35(v79 + *(v80 + 24), v34);
  }

  v93 = (v50 + v201 + 8) & ~v201;
  v94 = v18 + v1[11];
  v95 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v95 - 8) + 48))(v94, 1, v95))
  {
    sub_100002BF0(*v94, *(v94 + 8), v96, v97, v98, v99, v100, v101);
    sub_100002BF0(*(v94 + 16), *(v94 + 24), v102, v103, v104, v105, v106, v107);
    v35(v94 + *(v95 + 24), v34);
  }

  *(v0 + v93), v108, v109, v110, v111, v112, v113, v114, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229;
  v35(v0 + v93 + v181[5], v34);
  v115 = v0 + v93 + v181[6];
  v116 = type metadata accessor for Changes(0);
  if (!(*(*(v116 - 8) + 48))(v115, 1, v116))
  {
    *(v115 + 8), v117, v118, v119, v120, v121, v122, v123, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230;
    *(v115 + 16), v124, v125, v126, v127, v128, v129, v130, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231;
    sub_100002BF0(*(v115 + 24), *(v115 + 32), v131, v132, v133, v134, v135, v136);
    sub_100002BF0(*(v115 + 40), *(v115 + 48), v137, v138, v139, v140, v141, v142);
    v35(v115 + *(v116 + 36), v34);
  }

  v143 = (v188 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v144 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = (v144 + 23) & 0xFFFFFFFFFFFFFFF8;
  v146 = v195 | v202;

  *(v0 + v144 + 8), v147, v148, v149, v150, v151, v152, v153;
  *(v0 + v145 + 8), v154, v155, v156, v157, v158, v159, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230;

  return _swift_deallocObject(v0, v145 + 16, v146 | 7);
}

uint64_t sub_10000D860(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7);
}

uint64_t sub_10000DDBC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100006128((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return _swift_deallocObject(v8, 56, 7);
}

uint64_t sub_10000DDF8()
{
  v1 = (type metadata accessor for UpdateTrustResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  *(v0 + v3), v5, v6, v7, v8, v9, v10, v11, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131;
  v12 = v1[7];
  v13 = sub_1002164D4();
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v3 + v12, v13);
  v15 = v0 + v3 + v1[8];
  v16 = type metadata accessor for Changes(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    *(v15 + 8), v17, v18, v19, v20, v21, v22, v23, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132;
    *(v15 + 16), v24, v25, v26, v27, v28, v29, v30, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133;
    sub_100002BF0(*(v15 + 24), *(v15 + 32), v31, v32, v33, v34, v35, v36);
    sub_100002BF0(*(v15 + 40), *(v15 + 48), v37, v38, v39, v40, v41, v42);
    v14(v15 + *(v16 + 36), v13);
  }

  v43 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + v43 + 8), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + v44), v48, v49, v50, v51, v52, v53, v54, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132;
  *(v0 + v45 + 8), v55, v56, v57, v58, v59, v60, v61, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134;
  *(v0 + v46), v62, v63, v64, v65, v66, v67, v68, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135;
  *(v0 + v47), v69, v70, v71, v72, v73, v74, v75, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136;

  return _swift_deallocObject(v0, ((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10000E1C8()
{
  v1 = (type metadata accessor for ResetResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + v1[7];
  v8 = type metadata accessor for Changes(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    *(v7 + 8), v9, v10, v11, v12, v13, v14, v15, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55;
    *(v7 + 16), v16, v17, v18, v19, v20, v21, v22, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56;
    sub_100002BF0(*(v7 + 24), *(v7 + 32), v23, v24, v25, v26, v27, v28);
    sub_100002BF0(*(v7 + 40), *(v7 + 48), v29, v30, v31, v32, v33, v34);
    v6(v7 + *(v8 + 36), v5);
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + v35 + 8), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v0, v35 + 16, v2 | 7);
}

uint64_t sub_10000E3C8()
{
  v1 = (type metadata accessor for RemoveRecoveryKeyResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + v1[7];
  v8 = type metadata accessor for Changes(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    *(v7 + 8), v9, v10, v11, v12, v13, v14, v15, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55;
    *(v7 + 16), v16, v17, v18, v19, v20, v21, v22, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56;
    sub_100002BF0(*(v7 + 24), *(v7 + 32), v23, v24, v25, v26, v27, v28);
    sub_100002BF0(*(v7 + 40), *(v7 + 48), v29, v30, v31, v32, v33, v34);
    v6(v7 + *(v8 + 36), v5);
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + v35 + 8), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v0, v35 + 16, v2 | 7);
}

uint64_t sub_10000E5F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E6F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_10000E860()
{
  v1 = (type metadata accessor for SetRecoveryKeyResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  *(v0 + v3), v5, v6, v7, v8, v9, v10, v11, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72;
  v12 = v1[7];
  v13 = sub_1002164D4();
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v3 + v12, v13);
  v15 = v0 + v3 + v1[8];
  v16 = type metadata accessor for Changes(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    *(v15 + 8), v17, v18, v19, v20, v21, v22, v23, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73;
    *(v15 + 16), v24, v25, v26, v27, v28, v29, v30, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74;
    sub_100002BF0(*(v15 + 24), *(v15 + 32), v31, v32, v33, v34, v35, v36);
    sub_100002BF0(*(v15 + 40), *(v15 + 48), v37, v38, v39, v40, v41, v42);
    v14(v15 + *(v16 + 36), v13);
  }

  v43 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + v43 + 8), v17, v18, v19, v20, v21, v22, v23;

  return _swift_deallocObject(v0, v43 + 16, v2 | 7);
}

uint64_t sub_10000EAD0()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EE98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EED8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EF10()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F010()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12;

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000F0EC()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  *(v0 + 32), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F1B8()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + v6 + 8), v16, v17, v18, v19, v20, v21, v22, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65;
  *(v0 + v7 + 8), v23, v24, v25, v26, v27, v28, v29, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66;
  *(v0 + v8), v30, v31, v32, v33, v34, v35, v36, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67;

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10000F5BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7);
}

uint64_t sub_10000F6B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F6EC()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 48), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000FA78(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_10000FE30(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 40, 7);
}

uint64_t sub_10000FE70()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10000FFA8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100010268(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100010328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

Swift::Int sub_100010440(uint64_t a1, uint64_t a2)
{
  sub_100217264();
  swift_getWitnessTable();
  sub_100216454();
  return sub_100217284();
}

_DWORD *sub_1000104A8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000104D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_100216444();
}

uint64_t sub_100010554(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError, &unk_10021D158);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000105C0(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError, &unk_10021D158);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10001062C(void *a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError, &unk_10021D158);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000106BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError, &unk_10021D158);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100010748(uint64_t a1)
{
  v2 = sub_100002414(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000107B4(uint64_t a1)
{
  v2 = sub_100002414(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100010820(void *a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000108B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10001092C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_10001098C(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297858, type metadata accessor for CKUnderlyingError, &unk_10021D118);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000109F8(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297858, type metadata accessor for CKUnderlyingError, &unk_10021D118);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100010A64(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError, &unk_10021D158);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100010AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError, &unk_10021D158);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100010B54(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297898, type metadata accessor for CKError, &unk_10021CFFC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100010BC0(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297898, type metadata accessor for CKError, &unk_10021CFFC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100010C2C(uint64_t a1)
{
  v2 = sub_100002414(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100010C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002414(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100010D40(void *a1)
{
  v2 = sub_100216774();
  sub_100002648(v2, &unk_100297200);
  v3 = a1;
  v4 = sub_100216754();
  v5 = sub_100216C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received a new client: %{public}@", v6, 0xCu);
    sub_1000114D4(v7, &qword_10029D580, &unk_10021CCC0);
  }

  v9 = sub_100216964();
  v10 = [v3 valueForEntitlement:v9];

  if (!v10)
  {
    v99 = 0u;
    v100 = 0u;
    sub_1000114D4(&v99, &unk_100297770, &unk_10021DF90);
LABEL_11:
    v43 = v3;
    v44 = sub_100216754();
    v45 = sub_100216C54();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v98[0] = v48;
      *v46 = 138543618;
      *(v46 + 4) = v43;
      *v47 = v43;
      *(v46 + 12) = 2082;
      v49 = v43;
      *(v46 + 14) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, v98);
      _os_log_impl(&_mh_execute_header, v44, v45, "client(%{public}@ is missing entitlement '%{public}s'", v46, 0x16u);
      sub_1000114D4(v47, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v48, v50, v51, v52, v53, v54, v55, v56);
    }

    return 0;
  }

  sub_100216E24();
  swift_unknownObjectRelease();
  v98[0] = v99;
  v98[1] = v100;
  if (swift_dynamicCast() && v97 == 1)
  {
    v11 = sub_100216754();
    v12 = sub_100216C54();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_9:

      sub_100006128(v98, v23, v24, v25, v26, v27, v28, v29);
      v30 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___TrustedPeersHelperProtocol];
      v31 = TrustedPeersHelperSetupProtocol(v30);

      [v3 setExportedInterface:v31];
      v32 = [v3 endpoint];
      v33 = qword_1002B02E8;
      type metadata accessor for Client();
      v34 = swift_allocObject();
      *v34->endpoint = v32;
      *v34->containerMap = v33;

      [v3 setExportedObject:v34];
      [v3 resume];
      v34, v35, v36, v37, v38, v39, v40, v41;
      return 1;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v96 = v14;
    *v13 = 136446210;
    v15 = &v96;
LABEL_8:
    *(v13 + 4) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, v15);
    _os_log_impl(&_mh_execute_header, v11, v12, "client has entitlement '%{public}s'", v13, 0xCu);
    sub_100006128(v14, v16, v17, v18, v19, v20, v21, v22);

    goto LABEL_9;
  }

  if (swift_dynamicCast() && v96 == 1)
  {
    v11 = sub_100216754();
    v12 = sub_100216C54();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_9;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v97 = v14;
    *v13 = 136446210;
    v15 = &v97;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v57 = v97;
    v58 = v3;
    v59 = sub_100216754();
    v60 = sub_100216C54();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v96 = v63;
      *v61 = 138543874;
      *(v61 + 4) = v58;
      *v62 = v58;
      *(v61 + 12) = 2082;
      v64 = v58;
      *(v61 + 14) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, &v96);
      *(v61 + 22) = 2048;
      *(v61 + 24) = v57;
      v65 = "client(%{public}@ has wrong integer value for '%{public}s' (%ld), rejecting";
      v66 = v60;
      v67 = v59;
      v68 = v61;
      v69 = 32;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v67, v66, v65, v68, v69);
      sub_1000114D4(v62, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v63, v82, v83, v84, v85, v86, v87, v88);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (!swift_dynamicCast())
  {
    sub_100006128(v98, v70, v71, v72, v73, v74, v75, v76);
    goto LABEL_11;
  }

  v77 = v96;
  v78 = v3;
  v59 = sub_100216754();
  v79 = sub_100216C54();

  if (os_log_type_enabled(v59, v79))
  {
    v80 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v97 = v63;
    *v80 = 138543874;
    *(v80 + 4) = v78;
    *v62 = v78;
    *(v80 + 12) = 2082;
    v81 = v78;
    *(v80 + 14) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, &v97);
    *(v80 + 22) = 1024;
    *(v80 + 24) = v77;
    v65 = "client(%{public}@ has wrong BOOLean value for '%{public}s' (%{BOOL}d), rejecting";
    v66 = v79;
    v67 = v59;
    v68 = v80;
    v69 = 28;
    goto LABEL_24;
  }

LABEL_25:

  sub_100006128(v98, v89, v90, v91, v92, v93, v94, v95);
  return 0;
}

uint64_t sub_10001148C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000114D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10001148C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011534(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100011814()
{
  result = qword_100297880;
  if (!qword_100297880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297880);
  }

  return result;
}

void sub_100011A2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100011C2C()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_100297950);
  sub_100002648(v0, qword_100297950);
  return sub_100216764();
}

double sub_100011CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000124E8(a1, &v51);
  if (v53)
  {
    sub_1000125AC(&v51, &v54);
    v3 = objc_opt_self();
    sub_100006484(&v54, v56);
    v4 = sub_100217194();
    *&v51 = 0;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v51];
    swift_unknownObjectRelease();
    v6 = v51;
    if (v5)
    {
      v7 = sub_100216224();
      v9 = v8;

      *(a2 + 24) = &type metadata for Data;
      *a2 = v7;
      *(a2 + 8) = v9;
      sub_100006128(&v54, v10, v11, v12, v13, v14, v15, v16);
      return result;
    }

    v18 = v6;
    v19 = sub_100216154();

    swift_willThrow();
    sub_100006128(&v54, v20, v21, v22, v23, v24, v25, v26);
    if (qword_100297218 != -1)
    {
      swift_once();
    }

    v27 = sub_100216774();
    sub_100002648(v27, qword_100297950);
    swift_errorRetain();
    v28 = sub_100216754();
    v29 = sub_100216C54();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v54 = v31;
      *v30 = 136446210;
      *&v51 = v19;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v32 = sub_100216994();
      v34 = v33;
      v35 = sub_100005FB0(v32, v33, &v54);
      v34, v36, v37, v38, v39, v40, v41, v42, v50, v51, *(&v51 + 1), v52, v53, v54, *(&v54 + 1), v55, v56, v57;
      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to serialize a Set: %{public}s", v30, 0xCu);
      sub_100006128(v31, v43, v44, v45, v46, v47, v48, v49);
    }

    else
    {
    }
  }

  else
  {
    sub_100012480(&v51);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_100011FB8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000124E8(a1, &v45);
  if (v48)
  {
    if (swift_dynamicCast())
    {
      v3 = v41;
      v4 = v43;
      v5 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100012558(v41, v43);
      v6 = sub_1001905FC(v41, v43);
      sub_10001148C(&qword_10029D6D0, &qword_1002265B0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10021D420;
      *(v7 + 32) = sub_10000200C(0, &unk_10029D790, NSSet_ptr);
      *(v7 + 40) = sub_10000200C(0, &qword_10029D6E0, NSString_ptr);
      sub_100216974();
      v9 = v8;
      sub_100216D84();

      v7, v10, v11, v12, v13, v14, v15, v16, v37, v39, v41, v43, v45, v46, v47, v48, v49, v50;
      v9, v17, v18, v19, v20, v21, v22, v23, v38, v40, v42, v44, v45, v46, v47, v48, v49, v50;
      sub_100002BF0(v3, v4, v24, v25, v26, v27, v28, v29);
      sub_100002BF0(v3, v4, v30, v31, v32, v33, v34, v35);
      return result;
    }
  }

  else
  {
    sub_100012480(&v45);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

id sub_1000122C8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_TtC18TrustedPeersHelper6Client **__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100216E24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v22, 0, sizeof(v22));
    v7 = a1;
  }

  a4(v23, v22);

  sub_100012480(v22);
  v8 = v24;
  if (v24)
  {
    v9 = sub_100006484(v23, v24);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9, v9);
    v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_100217194();
    (*(v10 + 8))(v12, v8);
    sub_100006128(v23, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_100012448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetValueTransformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012480(uint64_t a1)
{
  v2 = sub_10001148C(&unk_100297770, &unk_10021DF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000124E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001148C(&unk_100297770, &unk_10021DF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012558(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

_OWORD *sub_1000125AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1000125EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryKey();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012654(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_1002163D4();
  __chkstk_darwin(v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 16);
  v47 = a1;
  v12(v9, a1);
  v13 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
  v14 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] publicKey];
  v44 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey;
  v15 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey] publicKey];
  v16 = *&a2[v13];
  v17 = objc_allocWithZone(TPCustodianRecoveryKey);
  v18 = v16;
  isa = sub_1002163B4().super.isa;
  v50 = 0;
  v20 = [v17 initWithUUID:isa signingPublicKey:v14 encryptionPublicKey:v15 signingKeyPair:v18 kind:a3 error:&v50];

  if (v20)
  {
    v42 = v13;
    v21 = v49 + 8;
    v22 = *(v49 + 8);
    v23 = v50;
    v49 = v21;
    v43 = v22;
    v22(v9, v48);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v24 = v46;
    *(v46 + 24) = v20;
    v25 = [v20 peerID];
    v26 = sub_100216974();
    v28 = v27;

    v29 = *&a2[v42];
    v30 = *&a2[v44];
    v31 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
    v32 = v29;
    v33 = v30;
    v34 = v45;
    v35 = sub_1000576E4(v26, v28, v32, v33);
    v36 = v24;
    if (!v34)
    {
      v40 = v35;

      v43(v47, v48);
      *(v24 + 16) = v40;
      return v36;
    }

    v43(v47, v48);
  }

  else
  {
    v37 = v50;
    sub_100216154();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v38 = v48;
    v39 = *(v49 + 8);
    v39(v47, v48);
    v39(v9, v38);
    v36 = v46;
  }

  type metadata accessor for CustodianRecoveryKey();
  swift_deallocPartialClassInstance();
  return v36;
}

uint64_t sub_1000129C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5)
{
  v7 = v5;
  v20 = sub_1001B43B8(a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    v99 = sub_100216A44();
    a3, v100, v101, v102, v103, v104, v105, v106, v107, v108, v110, v112, v114, v115, v117, v118, v119, v120;
    v21 = v99;
  }

  else
  {
    a3, v13, v14, v15, v16, v17, v18, v19, v107, v108, v110, v112, v114, v115, v117, v118, v119, v120;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v21 = a2 & 0xFFFFFFFFFFFFLL;
    }
  }

  v22 = sub_1000139DC(v20[1]._TtCs12_SwiftObject_opaque, v21);
  v24 = v23;
  v20, v23, v25, v26, v27, v28, v29, v30;
  objc_allocWithZone(type metadata accessor for RecoveryKeySet());
  sub_100012558(v22, v24);
  v31 = sub_100014D24(v22, v24, a4, a5);
  if (v6)
  {

    sub_100002BF0(v22, v24, v32, v33, v34, v35, v36, v37);
LABEL_11:
    type metadata accessor for CustodianRecoveryKey();
    swift_deallocPartialClassInstance();
    return v7;
  }

  v113 = v7;
  v116 = v31;
  v111 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
  v38 = [objc_msgSend(*&v31[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] "publicKey")];
  swift_unknownObjectRelease();
  v39 = sub_100216224();
  v41 = v40;

  v42 = [objc_msgSend(a1 "signingPublicKey")];
  swift_unknownObjectRelease();
  v43 = sub_100216224();
  v45 = v44;

  LOBYTE(v42) = sub_100052F18(v39, v41, v43, v45);
  sub_100002BF0(v43, v45, v46, v47, v48, v49, v50, v51);
  sub_100002BF0(v39, v41, v52, v53, v54, v55, v56, v57);
  if ((v42 & 1) == 0 || (v109 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey, v58 = [objc_msgSend(*&v116[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey] "publicKey")], swift_unknownObjectRelease(), v59 = sub_100216224(), v61 = v60, v58, v62 = objc_msgSend(objc_msgSend(a1, "encryptionPublicKey"), "spki"), swift_unknownObjectRelease(), v63 = sub_100216224(), v65 = v64, v62, LOBYTE(v62) = sub_100052F18(v59, v61, v63, v65), sub_100002BF0(v63, v65, v66, v67, v68, v69, v70, v71), sub_100002BF0(v59, v61, v72, v73, v74, v75, v76, v77), (v62 & 1) == 0))
  {
    sub_100012E74();
    swift_allocError();
    swift_willThrow();

    sub_100002BF0(v22, v24, v85, v86, v87, v88, v89, v90);
    v7 = v113;
    goto LABEL_11;
  }

  *(v113 + 24) = a1;
  v78 = a1;
  v79 = [v78 peerID];
  v80 = sub_100216974();
  v82 = v81;

  v83 = *&v116[v111];
  v84 = *&v116[v109];
  objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
  v92 = sub_1000576E4(v80, v82, v83, v84);
  sub_100002BF0(v22, v24, v93, v94, v95, v96, v97, v98);

  v7 = v113;
  *(v113 + 16) = v92;
  return v7;
}

uint64_t sub_100012E0C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100012E74()
{
  result = qword_100297B98;
  if (!qword_100297B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297B98);
  }

  return result;
}

id sub_100012EC8(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 peerID];
  if (!v3)
  {
    sub_100216974();
    v5 = v4;
    v3 = sub_100216964();
    v5, v6, v7, v8, v9, v10, v11, v12, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v13 = [objc_msgSend(v2 "signingPublicKey")];
  swift_unknownObjectRelease();
  v14 = sub_100216224();
  v16 = v15;

  v17 = [objc_msgSend(v2 "encryptionPublicKey")];
  swift_unknownObjectRelease();
  v18 = sub_100216224();
  v20 = v19;

  v21 = objc_allocWithZone(TrustedPeersHelperPeer);
  isa = sub_100216204().super.isa;
  v23 = sub_100216204().super.isa;
  v24 = sub_100216B94().super.isa;
  v25 = [v21 initWithPeerID:v3 signingSPKI:isa encryptionSPKI:v23 secureElementIdentity:0 viewList:v24];

  sub_100002BF0(v18, v20, v26, v27, v28, v29, v30, v31);
  sub_100002BF0(v14, v16, v32, v33, v34, v35, v36, v37);

  return v25;
}

Swift::Int sub_100013090()
{
  sub_100217264();
  sub_100217274(0);
  return sub_100217284();
}

Swift::Int sub_1000130FC()
{
  sub_100217264();
  sub_100217274(0);
  return sub_100217284();
}

uint64_t sub_10001313C(uint64_t a1)
{
  v2 = sub_1000131E0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100013178(uint64_t a1)
{
  v2 = sub_1000131E0();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000131E0()
{
  result = qword_100297BA0;
  if (!qword_100297BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297BA0);
  }

  return result;
}

void sub_100013234(_TtC18TrustedPeersHelper6Client **a1, _TtC18TrustedPeersHelper6Client **a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v13)
    {

      sub_100002BF0(v12, v11, v47, v48, v49, v50, v51, v52);
      *&v61 = v12;
      *(&v61 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000, v53, v54, v55, v56, v57, v58);
      sub_100013798(&v61, a2, a3);
      v18 = v61;
      v19 = *(&v61 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100002BF0(v12, v11, a3, a4, a5, a6, a7, a8);
      *&v61 = v12;
      WORD4(v61) = v11;
      BYTE10(v61) = BYTE2(v11);
      BYTE11(v61) = BYTE3(v11);
      BYTE12(v61) = BYTE4(v11);
      BYTE13(v61) = BYTE5(v11);
      BYTE14(v61) = BYTE6(v11);
      sub_1000134D0(a2, a3, &v61, &v61 + BYTE6(v11), v14, v15, v16, v17);
      v18 = v61;
      v19 = DWORD2(v61) | ((WORD6(v61) | (BYTE14(v61) << 16)) << 32);
    }

    *a1 = v18;
    a1[1] = v19;
    return;
  }

  if (v13 != 2)
  {
    *(&v61 + 7) = 0;
    *&v61 = 0;
    sub_1000134D0(a2, a3, &v61, &v61, a5, a6, a7, a8);
    return;
  }

  sub_100002BF0(v12, v11, v20, v21, v22, v23, v24, v25);
  *&v61 = v12;
  *(&v61 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000, v26, v27, v28, v29, v30, v31);
  sub_1002161A4();
  v32 = *(&v61 + 1);
  v34 = *(v61 + 16);
  v33 = *(v61 + 24);
  v35 = sub_100216034();
  if (!v35)
  {
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = sub_100216064();
  v38 = v34 - v37;
  if (__OFSUB__(v34, v37))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v39 = __OFSUB__(v33, v34);
  v40 = v33 - v34;
  if (v39)
  {
    goto LABEL_17;
  }

  v41 = sub_100216054();
  if (v41 >= v40)
  {
    v46 = v40;
  }

  else
  {
    v46 = v41;
  }

  sub_1000134D0(a2, a3, (v36 + v38), (v36 + v38 + v46), v42, v43, v44, v45);
  *a1 = v61;
  a1[1] = (v32 | 0x8000000000000000);
}

void sub_1000134D0(_TtC18TrustedPeersHelper6Client **result, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *result;
  v10 = result[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      *(&v43 + 7) = 0;
      *&v43 = 0;
      if (a3)
      {
        ccdigest();
        return;
      }

      goto LABEL_18;
    }

    sub_100002BF0(v11, v10, v14, v15, v16, v17, v18, v19);
    *&v43 = v11;
    *(&v43 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *result = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000, v20, v21, v22, v23, v24, v25);
    sub_1002161A4();
    v26 = *(&v43 + 1);
    v28 = *(v43 + 16);
    v27 = *(v43 + 24);
    if (sub_100216034())
    {
      if (__OFSUB__(v28, sub_100216064()))
      {
        __break(1u);
      }

      else if (!__OFSUB__(v27, v28))
      {
        sub_100216054();
        if (a3)
        {
          ccdigest();
          *result = v43;
          result[1] = (v26 | 0x8000000000000000);
          return;
        }

        goto LABEL_19;
      }

      __break(1u);
    }
  }

  else
  {
    if (v12)
    {

      sub_100002BF0(v11, v10, v29, v30, v31, v32, v33, v34);
      *&v43 = v11;
      *(&v43 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000, v35, v36, v37, v38, v39, v40);
      sub_100013864(&v43, a2, a3);
      v41 = *(&v43 + 1) | 0x4000000000000000;
      *result = v43;
      result[1] = v41;
      return;
    }

    sub_100002BF0(v11, v10, a3, a4, a5, a6, a7, a8);
    *&v43 = v11;
    WORD4(v43) = v10;
    BYTE10(v43) = BYTE2(v10);
    BYTE11(v43) = BYTE3(v10);
    BYTE12(v43) = BYTE4(v10);
    BYTE13(v43) = BYTE5(v10);
    BYTE14(v43) = BYTE6(v10);
    if (a3)
    {
      ccdigest();
      v13 = DWORD2(v43) | ((WORD6(v43) | (BYTE14(v43) << 16)) << 32);
      *result = v43;
      result[1] = v13;
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_100013798(int *a1, _TtC18TrustedPeersHelper6Client **a2, uint64_t a3)
{
  sub_1002161B4();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a1 + 1);

  v9 = sub_100216034();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = sub_100216064();
  v12 = v6 - v11;
  if (__OFSUB__(v6, v11))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v7 - v6;
  v14 = sub_100216054();
  if (v14 >= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  sub_1000134D0(a2, a3, (v10 + v12), (v10 + v12 + v19), v15, v16, v17, v18);
  v8, v20, v21, v22, v23, v24, v25, v26;
}

void sub_100013864(int *a1, uint64_t a2, uint64_t a3)
{
  sub_1002161B4();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a1 + 1);

  if (!sub_100216034())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, sub_100216064()))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100216054();
  if (a3)
  {
    ccdigest();
    v6, v7, v8, v9, v10, v11, v12, v13;
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_10001391C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001393C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100216074();
      swift_allocObject();
      sub_100216044();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_1000139DC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100017F84(a1, &a1[a2]);
  }

  sub_100216074();
  swift_allocObject();
  sub_100216024();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1002161D4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

id sub_100013A8C(uint64_t a1, unint64_t a2, id a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v16 = sub_1001B43B8(a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v89 = sub_100216A44();
    a2, v90, v91, v92, v93, v94, v95, v96, v97, v99, v101, v104, v107.receiver, v107.super_class, v108, v109, v110, v111;
    v17 = v89;
  }

  else
  {
    a2, v9, v10, v11, v12, v13, v14, v15, v97, v99, v101, v104, v107.receiver, v107.super_class, v108, v109, v110, v111;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v17 = a1 & 0xFFFFFFFFFFFFLL;
    }
  }

  v18 = sub_1000139DC(v16[1]._TtCs12_SwiftObject_opaque, v17);
  v20 = v19;
  v16, v19, v21, v22, v23, v24, v25, v26;
  objc_allocWithZone(type metadata accessor for RecoveryKeySet());
  sub_100012558(v18, v20);
  v27 = sub_100014D24(v18, v20, a3, a4);
  if (!v4)
  {
    v34 = v27;
    v112 = type metadata accessor for RecoveryKey();
    v105 = objc_allocWithZone(v112);
    v102 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
    v35 = [*&v34[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] publicKey];
    v36 = [v35 keyData];

    v37 = sub_100216224();
    v39 = v38;

    v40 = ccsha384_di();
    v41 = [objc_opt_self() ccsha384_diSize];
    v110 = sub_10001393C(v41);
    v111 = v42;
    v108 = v37;
    v109 = v39;
    sub_100012558(v37, v39);
    sub_100013234(&v110, &v108, v40, v43, v44, v45, v46, v47);
    v48 = v110;
    v49 = v111;
    v50 = sub_100216214(0);
    v52 = v51;
    sub_100002BF0(v48, v49, v53, v54, v55, v56, v57, v58);
    sub_100002BF0(v108, v109, v59, v60, v61, v62, v63, v64);
    v110 = 2968402;
    v111 = 0xE300000000000000;
    v113._countAndFlagsBits = v50;
    v113._object = v52;
    sub_100216A14(v113);
    v52, v65, v66, v67, v68, v69, v70, v71, v98, 0, v102, v105, v107.receiver, v107.super_class, v108, v109, v110, v111;
    sub_100002BF0(v37, v39, v72, v73, v74, v75, v76, v77);
    v78 = *&v34[v103];
    v79 = v110;
    a3 = v111;
    v80 = *&v34[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey];
    objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
    v81 = sub_1000576E4(v79, a3, v78, v80);
    if (!v100)
    {
      *&v106[OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys] = v81;
      v107.receiver = v106;
      v107.super_class = v112;
      a3 = objc_msgSendSuper2(&v107, "init");

      sub_100002BF0(v18, v20, v83, v84, v85, v86, v87, v88);
      return a3;
    }

    swift_deallocPartialClassInstance();
  }

  sub_100002BF0(v18, v20, v28, v29, v30, v31, v32, v33);
  return a3;
}

id sub_100013D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = sub_100216204().super.isa;
  v10 = 0;
  v6 = [v3 initWithData:isa specifier:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100216154();

    swift_willThrow();
  }

  return v6;
}

void sub_100013E34(void *a1, void *a2)
{
  v4 = [a1 signingKeyData];
  v5 = sub_100216224();
  v7 = v6;

  v8 = ccsha384_di();
  v9 = [objc_opt_self() ccsha384_diSize];
  v145 = sub_10001393C(v9);
  v146 = v10;
  v143 = v5;
  v144 = v7;
  sub_100012558(v5, v7);
  sub_100013234(&v145, &v143, v8, v11, v12, v13, v14, v15);
  v16 = v145;
  v17 = v146;
  v18 = sub_100216214(0);
  v20 = v19;
  sub_100002BF0(v16, v17, v21, v22, v23, v24, v25, v26);
  sub_100002BF0(v143, v144, v27, v28, v29, v30, v31, v32);
  v145 = 2968402;
  v146 = 0xE300000000000000;
  v149._countAndFlagsBits = v18;
  v149._object = v20;
  sub_100216A14(v149);
  v20, v33, v34, v35, v36, v37, v38, v39, v130, v134, v137, a2, v143, v144, v145, v146, v147, v148;
  sub_100002BF0(v5, v7, v40, v41, v42, v43, v44, v45);
  v46 = v145;
  v148 = v146;
  v47 = [a1 signingKeyData];
  v48 = sub_100216224();
  v50 = v49;

  v51 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
  v52 = objc_allocWithZone(_SFECPublicKey);
  sub_100012558(v48, v50);
  v53 = sub_100013D6C(v48, v50, v51);

  sub_100002BF0(v48, v50, v54, v55, v56, v57, v58, v59);
  if (v2)
  {
    sub_100002BF0(v48, v50, v60, v61, v62, v63, v64, v65);
    v148, v88, v89, v90, v91, v92, v93, v94, v131, v135, v138, v142, v143, v144, v145, v146, v147, v148;
  }

  else
  {
    v136 = v46;
    v66 = [v53 encodeSubjectPublicKeyInfo];
    v139 = sub_100216224();
    v68 = v67;

    sub_100002BF0(v48, v50, v69, v70, v71, v72, v73, v74);
    v75 = [a1 encryptionKeyData];
    v76 = sub_100216224();
    v78 = v77;

    v79 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
    v80 = objc_allocWithZone(_SFECPublicKey);
    sub_100012558(v76, v78);
    v81 = sub_100013D6C(v76, v78, v79);

    sub_100002BF0(v76, v78, v82, v83, v84, v85, v86, v87);
    v132 = v68;
    v95 = [v81 encodeSubjectPublicKeyInfo];
    v96 = sub_100216224();
    v98 = v97;

    sub_100002BF0(v76, v78, v99, v100, v101, v102, v103, v104);
    v105 = objc_allocWithZone(TrustedPeersHelperPeer);
    v106 = v148;
    v107 = sub_100216964();
    v106, v108, v109, v110, v111, v112, v113, v114, v132, v136, v139, v142, v143, v144, v145, v146, v147, v148;
    isa = sub_100216204().super.isa;
    v116 = sub_100216204().super.isa;
    v117 = sub_100216B94().super.isa;
    [v105 initWithPeerID:v107 signingSPKI:isa encryptionSPKI:v116 secureElementIdentity:0 viewList:v117];

    sub_100002BF0(v96, v98, v118, v119, v120, v121, v122, v123);
    sub_100002BF0(v140, v133, v124, v125, v126, v127, v128, v129);
  }
}

uint64_t sub_100014204(uint64_t a1, uint64_t a2)
{
  v2 = sub_100216974();
  v4 = v3;
  v21 = &type metadata for String;
  *&v19 = 0xD000000000000045;
  *(&v19 + 1) = 0x8000000100227950;
  sub_1000125AC(&v19, &v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100185894(&v16, v2, v4, isUniquelyReferenced_nonNull_native);
  v4, v6, v7, v8, v9, v10, v11, v12, v14, &_swiftEmptyDictionarySingleton, v16, *(&v16 + 1), v17, v18, v19, *(&v19 + 1), v20, v21;
  return v15;
}

uint64_t getEnumTagSinglePayload for RecoveryKey.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RecoveryKey.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001439C()
{
  result = qword_100297BA8;
  if (!qword_100297BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297BA8);
  }

  return result;
}

id sub_100014664(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PolicyRedactionCrypter();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1000146BC(void *a1, _TtC18TrustedPeersHelper6Client *a2, char *a3)
{
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v6, "aes256BitSize")}];
  v8 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v7];

  v9 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v6, "aes256BitSize")}];
  v10 = objc_allocWithZone(_SFAESKey);
  sub_100012558(a2, a3);
  v11 = sub_100013D6C(a2, a3, v9);

  sub_100002BF0(a2, a3, v12, v13, v14, v15, v16, v17);
  if (v3)
  {

    return a3;
  }

  result = [a1 ciphertext];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  v57 = v11;
  v20 = sub_100216224();
  v22 = v21;

  result = [a1 authenticationCode];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  v56 = v8;
  v24 = sub_100216224();
  v26 = v25;

  result = [a1 initializationVector];
  if (result)
  {
    v27 = result;
    v28 = sub_100216224();
    v30 = v29;

    v31 = objc_allocWithZone(_SFAuthenticatedCiphertext);
    isa = sub_100216204().super.isa;
    v59 = v20;
    a3 = sub_100216204().super.isa;
    v33 = sub_100216204().super.isa;
    v34 = [v31 initWithCiphertext:isa authenticationCode:a3 initializationVector:v33];

    sub_100002BF0(v28, v30, v35, v36, v37, v38, v39, v40);
    sub_100002BF0(v24, v26, v41, v42, v43, v44, v45, v46);

    sub_100002BF0(v59, v22, v47, v48, v49, v50, v51, v52);
    v60 = 0;
    v53 = [v56 decrypt:v34 withKey:v57 error:&v60];
    v54 = v60;
    if (v53)
    {
      a3 = sub_100216224();
    }

    else
    {
      v55 = v54;
      sub_100216154();

      swift_willThrow();
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

__objc2_prop *sub_1000149F0(uint64_t a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, const char *a4)
{
  v7 = objc_opt_self();
  v8 = &stru_100292000;
  v9 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v7, "aes256BitSize")}];
  v10 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v9];

  v11 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v7, "aes256BitSize")}];
  v12 = objc_allocWithZone(_SFAESKey);
  sub_100012558(a3, a4);
  v13 = sub_100013D6C(a3, a4, v11);

  sub_100002BF0(a3, a4, v14, v15, v16, v17, v18, v19);
  if (v4)
  {
    goto LABEL_2;
  }

  isa = sub_100216204().super.isa;
  v59 = 0;
  v21 = [v10 encrypt:isa withKey:v13 additionalAuthenticatedData:0 error:&v59];

  v8 = v59;
  if (!v21)
  {
    v58 = v59;
    sub_100216154();

    swift_willThrow();
LABEL_2:

    return v8;
  }

  v22 = objc_allocWithZone(TPPBPolicyRedactionAuthenticatedCiphertext);
  v23 = v8;
  result = [v22 init];
  if (result)
  {
    v8 = result;
    v25 = [v21 ciphertext];
    v26 = sub_100216224();
    v28 = v27;

    v29 = sub_100216204().super.isa;
    sub_100002BF0(v26, v28, v30, v31, v32, v33, v34, v35);
    [(__objc2_prop *)v8 setCiphertext:v29];

    v36 = [v21 authenticationCode];
    v37 = sub_100216224();
    v39 = v38;

    v40 = sub_100216204().super.isa;
    sub_100002BF0(v37, v39, v41, v42, v43, v44, v45, v46);
    [(__objc2_prop *)v8 setAuthenticationCode:v40];

    v47 = [v21 initializationVector];
    v48 = sub_100216224();
    v50 = v49;

    v51 = sub_100216204().super.isa;
    sub_100002BF0(v48, v50, v52, v53, v54, v55, v56, v57);
    [(__objc2_prop *)v8 setInitializationVector:v51];

    return v8;
  }

  __break(1u);
  return result;
}

char *sub_100014D24(_TtC18TrustedPeersHelper6Client *a1, const char *a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v10 = sub_100018144(1, a1, a2, a3, a4);
  if (v5)
  {
    a4, v11, v12, v13, v14, v15, v16, v17, v120, v121, v123, v126, v129, v131, v135.receiver, v135.super_class, v136, v137;
    sub_100002BF0(a1, a2, v18, v19, v20, v21, v22, v23);
    type metadata accessor for RecoveryKeySet();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v132 = v10;
    v140 = v11;
    v24 = sub_10001853C(v10, v11);
    v25 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v24];

    v26 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey;
    *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey) = v25;
    v27 = sub_100018144(0, a1, a2, a3, a4);
    v29 = v28;
    a4, v28, v30, v31, v32, v33, v34, v35, v120, v121, v123, v126, v129, v132, v135.receiver, v135.super_class, v136, v137;
    v36 = v27;
    v38 = sub_10001853C(v27, v29);
    v124 = v36;
    v127 = v29;
    v130 = v26;
    v39 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v38];

    v122 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
    *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey) = v39;
    v40 = [objc_msgSend(v39 "publicKey")];
    swift_unknownObjectRelease();
    v41 = sub_100216224();
    v43 = v42;

    v44 = ccsha384_di();
    v45 = [objc_opt_self() ccsha384_diSize];
    v138 = sub_10001393C(v45);
    v139 = v46;
    v136 = v41;
    v137 = v43;
    sub_100012558(v41, v43);
    sub_100013234(&v138, &v136, v44, v47, v48, v49, v50, v51);
    v52 = v138;
    v53 = v139;
    v54 = sub_100216214(0);
    v56 = v55;
    sub_100002BF0(v41, v43, v57, v58, v59, v60, v61, v62);
    sub_100002BF0(v52, v53, v63, v64, v65, v66, v67, v68);
    sub_100002BF0(v136, v137, v69, v70, v71, v72, v73, v74);
    v75 = [*(v4 + v122) keyData];
    v76 = sub_100216224();
    v78 = v77;

    sub_100018A14(v76, v78, v54, v56);
    sub_100002BF0(v76, v78, v79, v80, v81, v82, v83, v84);
    v85 = [*&v130[v4] keyData];
    v86 = sub_100216224();
    v88 = v87;

    sub_100018D0C(v86, v88, v54, v56);
    sub_100002BF0(v86, v88, v89, v90, v91, v92, v93, v94);
    v56, v95, v96, v97, v98, v99, v100, v101, 0, v54, v124, v127, v130, v133, v135.receiver, v135.super_class, v136, v137;
    sub_100002BF0(v125, v128, v102, v103, v104, v105, v106, v107);
    sub_100002BF0(v134, v140, v108, v109, v110, v111, v112, v113);
    v135.receiver = v4;
    v135.super_class = type metadata accessor for RecoveryKeySet();
    v4 = [(Client *)&v135 init];
    sub_100002BF0(a1, a2, v114, v115, v116, v117, v118, v119);
  }

  return v4;
}

id sub_10001517C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecoveryKeySet();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100015220()
{
  result = qword_100297CD8;
  if (!qword_100297CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297CD8);
  }

  return result;
}

uint64_t sub_100015274(uint64_t a1)
{
  v2 = sub_10001573C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000152B0(uint64_t a1)
{
  v2 = sub_10001573C();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000152EC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_100216FD4(23);
      0xE000000000000000, v29, v30, v31, v32, v33, v34, v35, v38, v40, 0, 0xE000000000000000, v45, v47, v49, v51, vars0, vars8;
      v43 = 0xD000000000000015;
      v58._countAndFlagsBits = a1;
      v58._object = a2;
      sub_100216A14(v58);
      return v43;
    }

    sub_100216FD4(35);
    0xE000000000000000, v4, v5, v6, v7, v8, v9, v10, v38, v40, 0, 0xE000000000000000, v45, v47, v49, v51, vars0, vars8;
    v11 = 0x8000000100227B00;
    v12 = 0xD000000000000021;
LABEL_6:
    v42 = v12;
    v44 = v11;
    HIDWORD(v41) = a1;
    v57._countAndFlagsBits = sub_100217174();
    object = v57._object;
    sub_100216A14(v57);
    object, v21, v22, v23, v24, v25, v26, v27, v39, v41, v42, v44, v46, v48, v50, v52, vars0a, vars8a;
    return v43;
  }

  if (a3 == 2)
  {
    sub_100216FD4(31);
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19, v38, v40, 0, 0xE000000000000000, v45, v47, v49, v51, vars0, vars8;
    v11 = 0x8000000100227AC0;
    v12 = 0xD00000000000001DLL;
    goto LABEL_6;
  }

  if (a1 ^ 1 | a2)
  {
    v37 = 0xD00000000000001DLL;
  }

  else
  {
    v37 = 0xD000000000000013;
  }

  if (a1 | a2)
  {
    return v37;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void *sub_1000154B0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10001900C(_swiftEmptyArrayStorage);
  v7 = sub_1000152EC(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_100216974();
    v13 = v12;
    v46 = &type metadata for String;
    *&v44 = v9;
    *(&v44 + 1) = v10;
    sub_1000125AC(&v44, &v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(&v41, v11, v13, isUniquelyReferenced_nonNull_native);
    v13, v15, v16, v17, v18, v19, v20, v21, v38, v6, v41, *(&v41 + 1), v42, v43, v44, *(&v44 + 1), v45, v46;
    v6 = v39;
  }

  if (a3 == 2)
  {
    v22 = sub_100216974();
    v24 = v26;
    v27 = objc_allocWithZone(NSError);
    v28 = sub_100216964();
    v25 = [v27 initWithDomain:v28 code:a1 userInfo:0];

    goto LABEL_7;
  }

  if (!a3)
  {
    v22 = sub_100216974();
    v24 = v23;
    v25 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
LABEL_7:
    v46 = sub_10000200C(0, &qword_100297CE8, NSError_ptr);
    *&v44 = v25;
    sub_1000125AC(&v44, &v41);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(&v41, v22, v24, v29);
    v24, v30, v31, v32, v33, v34, v35, v36, v38, v6, v41, *(&v41 + 1), v42, v43, v44, *(&v44 + 1), v45, v46;
    return v40;
  }

  return v6;
}

uint64_t sub_1000156EC()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 5;
    }

    else
    {
      return qword_10021D848[*v0];
    }
  }

  else if (*(v0 + 16))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_10001573C()
{
  result = qword_100297CE0;
  if (!qword_100297CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297CE0);
  }

  return result;
}

double sub_100015790@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_100015974(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018676C();
      v9 = v11;
    }

    sub_1000125AC((*(v9 + 56) + 32 * v7), a1);
    sub_100184D2C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_1000158D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100217264();
  sub_1002169C4();
  sub_1002169C4();
  v8 = sub_100217284();

  return sub_100015BC0(a1, a2, a3, a4, v8);
}

unint64_t sub_100015974(uint64_t a1)
{
  sub_100217264();
  type metadata accessor for CFString(0);
  sub_100019C24(&qword_100297D40, type metadata accessor for CFString, &unk_10021D368);
  sub_100216454();
  v2 = sub_100217284();

  return sub_100015CC0(a1, v2);
}

unint64_t sub_100015A28(uint64_t a1, uint64_t a2)
{
  sub_100217264();
  sub_1002169C4();
  v4 = sub_100217284();

  return sub_100015DCC(a1, a2, v4);
}

unint64_t sub_100015AA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100216F54(*(v2 + 40));

  return sub_100015E84(a1, v4);
}

unint64_t sub_100015AE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100216DB4(*(v2 + 40));

  return sub_100015F4C(a1, v4);
}

unint64_t sub_100015B28(uint64_t a1)
{
  sub_100216194();
  sub_100019C24(&unk_10029D660, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = sub_1002168F4();

  return sub_100016020(a1, v2);
}

unint64_t sub_100015BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1002171A4() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1002171A4() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100015CC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100019C24(&qword_100297D40, type metadata accessor for CFString, &unk_10021D368);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100216444();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100015DCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1002171A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100015E84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100019390(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100216F64();
      sub_1000193EC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100015F4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100216DC4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100016020(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100216194();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100019C24(&qword_100297D00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = sub_100216954();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1000161E0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int *a5, _BYTE *a6, uint64_t a7, char a8, uint64_t a9, void *a10, uint64_t *a11)
{
  v12 = a2;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v279 = a4;
      v280 = a5;
      v281 = a6;
      sub_100012558(a2, a3);

      sub_100002BF0(v15, v14, v32, v33, v34, v35, v36, v37);
      *&v286 = v15;
      *(&v286 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v275 = a1;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000, v38, v39, v40, v41, v42, v43);
      sub_1002161A4();
      v44 = v286;
      v45 = *(v286 + 16);
      v46 = *(v286 + 24);
      v47 = sub_100216034();
      if (!v47)
      {
        sub_100002BF0(v12, a3, v48, v49, v50, v51, v52, v53);
        __break(1u);
        goto LABEL_151;
      }

      v54 = v47;
      v55 = sub_100216064();
      v56 = v45 - v55;
      if (__OFSUB__(v45, v55))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v57 = __OFSUB__(v46, v45);
      v58 = v46 - v45;
      if (v57)
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v59 = sub_100216054();
      if (v59 >= v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = v59;
      }

      v61 = v54 + v56;
      v62 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v62 != 2)
        {
          memset(v285, 0, 14);
          v63 = *v279;
          v64 = v279[1];
          sub_100012558(*v279, v64);
          v270 = a11;
          v65 = &v60[v61];
          v267 = a10;
          v264 = a9;
          LOBYTE(v263) = a8 & 1;
          v260 = a7;
          v70 = v285;
          v66 = v280;
          v67 = v63;
          v68 = v64;
          v69 = v61;
          goto LABEL_80;
        }

        v277 = v60;
        v124 = *(v12 + 16);
        v125 = *(v12 + 24);
        v126 = sub_100216034();
        if (v126)
        {
          v127 = sub_100216064();
          if (__OFSUB__(v124, v127))
          {
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v126 += v124 - v127;
        }

        v57 = __OFSUB__(v125, v124);
        v128 = v125 - v124;
        if (v57)
        {
          __break(1u);
LABEL_47:
          v100 = v275;
          if (v274 >> 32 >= v274)
          {
            v129 = sub_100216034();
            if (!v129)
            {
              v103 = 0;
LABEL_107:
              v211 = sub_100216054();
              if (v211 >= (v274 >> 32) - v274)
              {
                v210 = (v274 >> 32) - v274;
              }

              else
              {
                v210 = v211;
              }

              goto LABEL_110;
            }

            v130 = v129;
            v131 = sub_100216064();
            if (!__OFSUB__(v274, v131))
            {
              v103 = v274 - v131 + v130;
              goto LABEL_107;
            }

            goto LABEL_144;
          }

          goto LABEL_135;
        }
      }

      else
      {
        if (!v62)
        {
          v285[0] = v12;
          LOWORD(v285[1]) = a3;
          BYTE2(v285[1]) = BYTE2(a3);
          BYTE3(v285[1]) = BYTE3(a3);
          BYTE4(v285[1]) = BYTE4(a3);
          BYTE5(v285[1]) = BYTE5(a3);
          v63 = *v279;
          v64 = v279[1];
          sub_100012558(*v279, v64);
          v270 = a11;
          v65 = &v60[v61];
          v267 = a10;
          v264 = a9;
          LOBYTE(v263) = a8 & 1;
          v260 = a7;
          v66 = v280;
          v67 = v63;
          v68 = v64;
          v69 = v61;
          v70 = v285 + BYTE6(a3);
LABEL_80:
          sub_100017474(v67, v68, v66, v69, v65, v285, v70, v281, v260, v263, v264, v267, v270);
          v162 = v63;
LABEL_81:
          sub_100002BF0(v162, v64, v156, v157, v158, v159, v160, v161);
          sub_100002BF0(v12, a3, v163, v164, v165, v166, v167, v168);
          sub_100002BF0(v12, a3, v169, v170, v171, v172, v173, v174);
          *a1 = v44;
          a1[1] = *(&v44 + 1) | 0x8000000000000000;
          return;
        }

        v277 = v60;
        v128 = (v12 >> 32) - v12;
        if (v12 >> 32 < v12)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v126 = sub_100216034();
        if (v126)
        {
          v150 = sub_100216064();
          if (__OFSUB__(v12, v150))
          {
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
          }

          v126 += v12 - v150;
        }
      }

      v151 = sub_100216054();
      if (v151 >= v128)
      {
        v152 = v128;
      }

      else
      {
        v152 = v151;
      }

      v153 = v152 + v126;
      if (v126)
      {
        v154 = v153;
      }

      else
      {
        v154 = 0;
      }

      v155 = *v279;
      v64 = v279[1];
      sub_100012558(*v279, v64);
      LOBYTE(v263) = a8 & 1;
      sub_100017474(v155, v64, v280, v61, &v277[v61], v126, v154, v281, a7, v263, a9, a10, a11);
      v162 = v155;
      goto LABEL_81;
    }

    v86 = a3 >> 62;
    *(&v286 + 7) = 0;
    *&v286 = 0;
    if ((a3 >> 62) > 1)
    {
      if (v86 != 2)
      {
        memset(v285, 0, 14);
        v87 = *a4;
        v88 = a4[1];
        sub_100012558(*a4, v88);
        LOBYTE(v263) = a8 & 1;
        sub_100017474(v87, v88, a5, &v286, &v286, v285, v285, a6, a7, v263, a9, a10, a11);
        goto LABEL_66;
      }

      v107 = *(a2 + 16);
      v108 = *(a2 + 24);
      v109 = sub_100216034();
      if (v109)
      {
        v110 = sub_100216064();
        if (__OFSUB__(v107, v110))
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v109 += v107 - v110;
      }

      v57 = __OFSUB__(v108, v107);
      v111 = v108 - v107;
      if (v57)
      {
        goto LABEL_137;
      }

      v112 = sub_100216054();
      if (v112 >= v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = v112;
      }

      v114 = v113 + v109;
      if (v109)
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }

      v116 = *a4;
      v117 = a4[1];
      sub_100012558(*a4, v117);
      v271 = a11;
      v268 = a10;
      v265 = a9;
      LOBYTE(v263) = a8 & 1;
      v261 = a7;
      v118 = v116;
      v119 = v117;
      v120 = a5;
      v121 = v109;
      v122 = v115;
      v123 = a6;
    }

    else
    {
      if (!v86)
      {
        v285[0] = a2;
        LOWORD(v285[1]) = a3;
        BYTE2(v285[1]) = BYTE2(a3);
        BYTE3(v285[1]) = BYTE3(a3);
        BYTE4(v285[1]) = BYTE4(a3);
        BYTE5(v285[1]) = BYTE5(a3);
        v87 = *a4;
        v88 = a4[1];
        sub_100012558(*a4, v88);
        LOBYTE(v263) = a8 & 1;
        sub_100017474(v87, v88, a5, &v286, &v286, v285, v285 + BYTE6(a3), a6, a7, v263, a9, a10, a11);
LABEL_66:
        v141 = v87;
        v142 = v88;
        goto LABEL_67;
      }

      v132 = (a2 >> 32) - a2;
      if (a2 >> 32 < a2)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v135 = sub_100216034();
      if (v135)
      {
        v136 = sub_100216064();
        if (__OFSUB__(v12, v136))
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v135 += v12 - v136;
      }

      v137 = sub_100216054();
      if (v137 >= v132)
      {
        v138 = (v12 >> 32) - v12;
      }

      else
      {
        v138 = v137;
      }

      v139 = v138 + v135;
      if (v135)
      {
        v140 = v139;
      }

      else
      {
        v140 = 0;
      }

      v116 = *a4;
      v117 = a4[1];
      sub_100012558(*a4, v117);
      v271 = a11;
      v268 = a10;
      v265 = a9;
      LOBYTE(v263) = a8 & 1;
      v261 = a7;
      v118 = v116;
      v119 = v117;
      v120 = a5;
      v121 = v135;
      v122 = v140;
      v123 = a6;
    }

    sub_100017474(v118, v119, v120, &v286, &v286, v121, v122, v123, v261, v263, v265, v268, v271);
    v141 = v116;
    v142 = v117;
LABEL_67:
    sub_100002BF0(v141, v142, v91, v92, v93, v94, v95, v96);
    sub_100002BF0(v12, a3, v144, v145, v146, v147, v148, v149);
    return;
  }

  v279 = a4;
  v280 = a5;
  v281 = a6;
  if (!v16)
  {
    v275 = a1;
    v277 = a3;
    v274 = a2;
    sub_100012558(a2, a3);
    sub_100002BF0(v15, v14, v17, v18, v19, v20, v21, v22);
    *&v286 = v15;
    WORD4(v286) = v14;
    BYTE10(v286) = BYTE2(v14);
    BYTE11(v286) = BYTE3(v14);
    BYTE12(v286) = BYTE4(v14);
    BYTE13(v286) = BYTE5(v14);
    v12 = &v286 + BYTE6(v14);
    v23 = v277 >> 62;
    BYTE14(v286) = BYTE6(v14);
    if ((v277 >> 62) > 1)
    {
      if (v23 != 2)
      {
        memset(v285, 0, 14);
        v24 = *v279;
        v25 = v279[1];
        sub_100012558(*v279, v25);
        LOBYTE(v263) = a8 & 1;
        sub_100017474(v24, v25, v280, &v286, &v286 + BYTE6(v14), v285, v285, v281, a7, v263, a9, a10, a11);
        goto LABEL_64;
      }

      v97 = *(v274 + 16);
      v98 = *(v274 + 24);
      v99 = sub_100216034();
      v100 = v275;
      if (v99)
      {
        v101 = v99;
        v102 = sub_100216064();
        if (__OFSUB__(v97, v102))
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v103 = v97 - v102 + v101;
      }

      else
      {
        v103 = 0;
      }

      if (!__OFSUB__(v98, v97))
      {
        v209 = sub_100216054();
        if (v209 >= v98 - v97)
        {
          v210 = v98 - v97;
        }

        else
        {
          v210 = v209;
        }

LABEL_110:
        v212 = v210 + v103;
        if (v103)
        {
          v213 = v212;
        }

        else
        {
          v213 = 0;
        }

        v214 = *v279;
        v25 = v279[1];
        sub_100012558(*v279, v25);
        LOBYTE(v263) = a8 & 1;
        sub_100017474(v214, v25, v280, &v286, v12, v103, v213, v281, a7, v263, a9, a10, a11);
        v143 = v214;
        goto LABEL_114;
      }

      goto LABEL_138;
    }

    if (!v23)
    {
      v285[0] = v274;
      LODWORD(v285[1]) = v277;
      WORD2(v285[1]) = WORD2(v277);
      v24 = *v279;
      v25 = v279[1];
      sub_100012558(*v279, v25);
      LOBYTE(v263) = a8 & 1;
      sub_100017474(v24, v25, v280, &v286, &v286 + BYTE6(v14), v285, v285 + BYTE6(v277), v281, a7, v263, a9, a10, a11);
LABEL_64:
      v100 = v275;
      v143 = v24;
LABEL_114:
      sub_100002BF0(v143, v25, v26, v27, v28, v29, v30, v31);
      v215 = v286;
      v216 = DWORD2(v286) | ((WORD6(v286) | (BYTE14(v286) << 16)) << 32);
      sub_100002BF0(v274, v277, v217, v218, v219, v220, v221, v222);
      sub_100002BF0(v274, v277, v223, v224, v225, v226, v227, v228);
      *v100 = v215;
      v100[1] = v216;
      return;
    }

    goto LABEL_47;
  }

  v71 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100012558(a2, a3);
  sub_100012558(v15, v14);
  sub_100002BF0(v15, v14, v72, v73, v74, v75, v76, v77);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000, v78, v79, v80, v81, v82, v83);
  sub_100012558(v12, a3);
  v84 = v15;
  v85 = v15 >> 32;
  v273 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v85 < v15)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (sub_100216034() && __OFSUB__(v15, sub_100216064()))
    {
      goto LABEL_134;
    }

    sub_100216074();
    swift_allocObject();
    v175 = sub_100216014();

    v71 = v175;
  }

  v176 = v85 - v15;
  if (v85 < v15)
  {
    goto LABEL_130;
  }

  v177 = sub_100216034();
  if (v177)
  {
    v178 = v177;
    v179 = sub_100216064();
    v180 = v84 - v179;
    if (!__OFSUB__(v84, v179))
    {
      v181 = sub_100216054();
      if (v181 < v176)
      {
        v176 = v181;
      }

      v182 = v178 + v180;
      v183 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v183 != 2)
        {
          *(&v286 + 6) = 0;
          *&v286 = 0;
          v184 = *v279;
          v185 = v279[1];
          sub_100012558(*v279, v185);
          v272 = a11;
          v186 = v182 + v176;
          v269 = a10;
          v266 = a9;
          LOBYTE(v263) = a8 & 1;
          v262 = a7;
          v191 = &v286;
          v187 = v280;
          v188 = v184;
          v189 = v185;
          v190 = v182;
          v192 = v281;
          goto LABEL_100;
        }

        v276 = v176;
        v278 = v178 + v180;
        v193 = *(v12 + 16);
        v194 = *(v12 + 24);
        v195 = sub_100216034();
        if (v195)
        {
          v196 = v195;
          v197 = sub_100216064();
          if (__OFSUB__(v193, v197))
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v198 = v193 - v197 + v196;
        }

        else
        {
          v198 = 0;
        }

        if (__OFSUB__(v194, v193))
        {
          goto LABEL_141;
        }

        v229 = sub_100216054();
        if (v229 >= v194 - v193)
        {
          v230 = v194 - v193;
        }

        else
        {
          v230 = v229;
        }
      }

      else
      {
        if (!v183)
        {
          *&v286 = v12;
          WORD4(v286) = a3;
          BYTE10(v286) = BYTE2(a3);
          BYTE11(v286) = BYTE3(a3);
          BYTE12(v286) = BYTE4(a3);
          BYTE13(v286) = BYTE5(a3);
          v184 = *v279;
          v185 = v279[1];
          sub_100012558(*v279, v185);
          v272 = a11;
          v186 = v182 + v176;
          v269 = a10;
          v266 = a9;
          LOBYTE(v263) = a8 & 1;
          v262 = a7;
          v187 = v280;
          v188 = v184;
          v189 = v185;
          v190 = v182;
          v191 = &v286 + BYTE6(a3);
          v192 = v281;
LABEL_100:
          sub_100017474(v188, v189, v187, v190, v186, &v286, v191, v192, v262, v263, v266, v269, v272);
          v208 = v184;
LABEL_128:
          sub_100002BF0(v208, v185, v202, v203, v204, v205, v206, v207);
          v71, v235, v236, v237, v238, v239, v240, v241;
          sub_100002BF0(v12, a3, v242, v243, v244, v245, v246, v247);
          sub_100002BF0(v12, a3, v248, v249, v250, v251, v252, v253);
          sub_100002BF0(v12, a3, v254, v255, v256, v257, v258, v259);
          *a1 = v273;
          a1[1] = v71 | 0x4000000000000000;
          return;
        }

        v276 = v176;
        v278 = v178 + v180;
        if (v12 >> 32 < v12)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v199 = sub_100216034();
        if (v199)
        {
          v200 = v199;
          v201 = sub_100216064();
          if (__OFSUB__(v12, v201))
          {
            goto LABEL_149;
          }

          v198 = v12 - v201 + v200;
        }

        else
        {
          v198 = 0;
        }

        v231 = sub_100216054();
        if (v231 >= (v12 >> 32) - v12)
        {
          v230 = (v12 >> 32) - v12;
        }

        else
        {
          v230 = v231;
        }
      }

      v232 = v230 + v198;
      if (v198)
      {
        v233 = v232;
      }

      else
      {
        v233 = 0;
      }

      v234 = *v279;
      v185 = v279[1];
      sub_100012558(*v279, v185);
      LOBYTE(v263) = a8 & 1;
      sub_100017474(v234, v185, v280, v278, v278 + v276, v198, v233, v281, a7, v263, a9, a10, a11);
      v208 = v234;
      goto LABEL_128;
    }

    goto LABEL_132;
  }

LABEL_151:
  __break(1u);
}

uint64_t sub_100017104(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      return ccec_x963_export();
    }

    sub_100002BF0(v10, v9, v13, v14, v15, v16, v17, v18);
    *a1 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000, v19, v20, v21, v22, v23, v24);
    sub_1002161A4();
    v25 = v9 & 0x3FFFFFFFFFFFFFFFLL;
    v26 = *(v10 + 16);
    result = sub_100216034();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!__OFSUB__(v26, sub_100216064()))
    {
      sub_100216054();
      result = ccec_x963_export();
      *a1 = v10;
      a1[1] = v25 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v11)
  {
    sub_100002BF0(v10, v9, a3, a4, a5, a6, a7, a8);
    LOWORD(v50) = v9;
    BYTE2(v50) = BYTE2(v9);
    HIBYTE(v50) = BYTE3(v9);
    LOBYTE(v51) = BYTE4(v9);
    HIBYTE(v51) = BYTE5(v9);
    result = ccec_x963_export();
    *a1 = v10;
    a1[1] = v50 | ((v51 | (BYTE6(v9) << 16)) << 32);
    return result;
  }

  v27 = v9 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100002BF0(v10, v9, v28, v29, v30, v31, v32, v33);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000, v34, v35, v36, v37, v38, v39);
  v40 = v10 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v40 < v10)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_100216034() && __OFSUB__(v10, sub_100216064()))
    {
LABEL_23:
      __break(1u);
    }

    sub_100216074();
    swift_allocObject();
    v41 = sub_100216014();

    v27 = v41;
  }

  if (v40 < v10)
  {
    goto LABEL_20;
  }

  result = sub_100216034();
  if (result)
  {
    if (!__OFSUB__(v10, sub_100216064()))
    {
      sub_100216054();
      v42 = ccec_x963_export();
      v27, v43, v44, v45, v46, v47, v48, v49;
      *a1 = v10;
      a1[1] = v27 | 0x4000000000000000;
      return v42;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100017474(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13)
{
  v16 = a3;
  v17 = a12;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v68 = a13;
      memset(v163, 0, 14);
      ccsha384_di();
      if (a4)
      {
        if (a6)
        {
          if (a8)
          {
            key_deterministic = cchkdf();
            *v16 = key_deterministic;
            if (key_deterministic)
            {
              goto LABEL_54;
            }

            if (ccrng())
            {
              key_deterministic = ccec_generate_key_deterministic();
              *v16 = key_deterministic;
              if (!key_deterministic)
              {
                if (a12)
                {
                  v71 = sub_100019CD4(a12);
                  v170 = sub_10001393C(v71);
                  v171 = v72;
                  sub_100017104(&v170, a12, v73, v74, v75, v76, v77, v78);
                  v28 = v170;
                  v29 = v171;
                  v168 = &type metadata for Data;
                  v169 = &protocol witness table for Data;
                  v166 = v170;
                  v167 = v171;
                  v79 = sub_100006484(&v166, &type metadata for Data);
                  v31 = *v79;
                  v32 = v79[1];
                  v80 = v32 >> 62;
                  if ((v32 >> 62) <= 1)
                  {
                    if (!v80)
                    {
                      v34 = a13;
                      goto LABEL_59;
                    }

                    goto LABEL_95;
                  }

                  goto LABEL_67;
                }

                goto LABEL_152;
              }

              goto LABEL_54;
            }

            goto LABEL_148;
          }

          goto LABEL_138;
        }

        goto LABEL_136;
      }

      goto LABEL_134;
    }

    v160 = a13;
    v16 = *(a1 + 16);
    v35 = *(a1 + 24);
    v36 = sub_100216034();
    if (v36)
    {
      v37 = sub_100216064();
      if (__OFSUB__(v16, v37))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v36 += v16 - v37;
    }

    if (__OFSUB__(v35, v16))
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    sub_100216054();
    ccsha384_di();
    if (!a4)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (!a6)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (!v36)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (!a8)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    key_deterministic = cchkdf();
    *a3 = key_deterministic;
    if (key_deterministic)
    {
      goto LABEL_54;
    }

    if (!ccrng())
    {
      goto LABEL_149;
    }

    key_deterministic = ccec_generate_key_deterministic();
    *a3 = key_deterministic;
    if (key_deterministic)
    {
      goto LABEL_54;
    }

    if (!a12)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v38 = sub_100019CD4(a12);
    v170 = sub_10001393C(v38);
    v171 = v39;
    sub_100017104(&v170, a12, v40, v41, v42, v43, v44, v45);
    v46 = v170;
    v47 = v171;
    v168 = &type metadata for Data;
    v169 = &protocol witness table for Data;
    v166 = v170;
    v167 = v171;
    v48 = sub_100006484(&v166, &type metadata for Data);
    v49 = *v48;
    v17 = v48[1];
    v50 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v50 != 2)
      {
        goto LABEL_89;
      }

      v92 = *(v49 + 16);
      v93 = *(v49 + 24);
      sub_100012558(v46, v47);
      a8 = sub_100216034();
      if (a8)
      {
        v94 = sub_100216064();
        v49 = v92 - v94;
        if (__OFSUB__(v92, v94))
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        a8 += v49;
      }

      v87 = __OFSUB__(v93, v92);
      a6 = v93 - v92;
      if (!v87)
      {
        goto LABEL_111;
      }

      __break(1u);
LABEL_82:
      if (v65 == 2)
      {
        v95 = *(v49 + 16);
        v96 = *(v49 + 24);
        sub_100012558(v46, v47);
        a8 = sub_100216034();
        if (a8)
        {
          v97 = sub_100216064();
          if (__OFSUB__(v95, v97))
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
          }

          a8 += v95 - v97;
        }

        v87 = __OFSUB__(v96, v95);
        a6 = v96 - v95;
        if (!v87)
        {
          goto LABEL_111;
        }

        __break(1u);
      }

LABEL_89:
      memset(v163, 0, 14);
      sub_100012558(v46, v47);
      v66 = v163;
      v67 = v163;
      goto LABEL_118;
    }

    if (!v50)
    {
LABEL_47:
      v163[0] = v49;
      LOWORD(v163[1]) = v17;
      BYTE2(v163[1]) = BYTE2(v17);
      BYTE3(v163[1]) = BYTE3(v17);
      BYTE4(v163[1]) = BYTE4(v17);
      BYTE5(v163[1]) = BYTE5(v17);
      sub_100012558(v46, v47);
      v66 = v163;
      v67 = v163 + BYTE6(v17);
LABEL_118:
      sub_100017EF0(v66, v67, &v164);
      sub_100002BF0(v46, v47, v136, v137, v138, v139, v140, v141);
      v142 = v164;
      v143 = v165;
      sub_100006128(&v166, v144, v145, v146, v147, v148, v149, v150);
      v151 = *v160;
      v152 = v160[1];
      *v160 = v142;
      v160[1] = v143;
      sub_100002BF0(v151, v152, v153, v154, v155, v156, v157, v158);
      return;
    }

    a4 = v49;
    v51 = v49 >> 32;
    a6 = v51 - a4;
    if (v51 < a4)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    sub_100012558(v46, v47);
    a8 = sub_100216034();
    if (!a8)
    {
      goto LABEL_111;
    }

    a1 = sub_100216064();
    v52 = a4 - a1;
    if (!__OFSUB__(a4, a1))
    {
LABEL_110:
      a8 += v52;
      goto LABEL_111;
    }

    __break(1u);
  }

  else
  {
    v160 = a13;
    if (!v18)
    {
      v163[0] = a1;
      LOWORD(v163[1]) = a2;
      BYTE2(v163[1]) = BYTE2(a2);
      BYTE3(v163[1]) = BYTE3(a2);
      BYTE4(v163[1]) = BYTE4(a2);
      BYTE5(v163[1]) = BYTE5(a2);
      ccsha384_di();
      if (a4)
      {
        if (a6)
        {
          if (a8)
          {
            key_deterministic = cchkdf();
            *v16 = key_deterministic;
            if (key_deterministic)
            {
              goto LABEL_54;
            }

            if (ccrng())
            {
              key_deterministic = ccec_generate_key_deterministic();
              *v16 = key_deterministic;
              if (!key_deterministic)
              {
                if (a12)
                {
                  v20 = sub_100019CD4(a12);
                  v170 = sub_10001393C(v20);
                  v171 = v21;
                  sub_100017104(&v170, a12, v22, v23, v24, v25, v26, v27);
                  v28 = v170;
                  v29 = v171;
                  v168 = &type metadata for Data;
                  v169 = &protocol witness table for Data;
                  v166 = v170;
                  v167 = v171;
                  v30 = sub_100006484(&v166, &type metadata for Data);
                  v31 = *v30;
                  v32 = v30[1];
                  v33 = v32 >> 62;
                  if ((v32 >> 62) <= 1)
                  {
                    if (!v33)
                    {
                      v34 = a13;
LABEL_59:
                      v162[0] = v31;
                      LOWORD(v162[1]) = v32;
                      BYTE2(v162[1]) = BYTE2(v32);
                      BYTE3(v162[1]) = BYTE3(v32);
                      BYTE4(v162[1]) = BYTE4(v32);
                      BYTE5(v162[1]) = BYTE5(v32);
                      sub_100012558(v28, v29);
                      v81 = v162;
                      v82 = v162 + BYTE6(v32);
LABEL_106:
                      sub_100017EF0(v81, v82, &v164);
                      sub_100002BF0(v28, v29, v107, v108, v109, v110, v111, v112);
                      v113 = v164;
                      v114 = v165;
                      sub_100006128(&v166, v115, v116, v117, v118, v119, v120, v121);
                      v122 = *v34;
                      v123 = v34[1];
                      *v34 = v113;
                      v34[1] = v114;
                      sub_100002BF0(v122, v123, v124, v125, v126, v127, v128, v129);
                      return;
                    }

                    v34 = a13;
                    v98 = v31;
                    v99 = v31 >> 32;
                    v88 = v99 - v98;
                    if (v99 >= v98)
                    {
                      sub_100012558(v28, v29);
                      v85 = sub_100216034();
                      if (!v85)
                      {
                        goto LABEL_99;
                      }

                      v68 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
                      v100 = sub_100216064();
                      v31 = v98 - v100;
                      if (!__OFSUB__(v98, v100))
                      {
                        goto LABEL_98;
                      }

                      __break(1u);
LABEL_95:
                      v101 = v31;
                      v102 = v31 >> 32;
                      v88 = v102 - v101;
                      if (v102 >= v101)
                      {
                        v34 = v68;
                        sub_100012558(v28, v29);
                        v85 = sub_100216034();
                        if (v85)
                        {
                          v103 = sub_100216064();
                          v31 = v101 - v103;
                          if (!__OFSUB__(v101, v103))
                          {
LABEL_98:
                            v85 += v31;
                            goto LABEL_99;
                          }

                          goto LABEL_129;
                        }

LABEL_99:
                        v104 = sub_100216054();
                        if (v104 >= v88)
                        {
                          v105 = v88;
                        }

                        else
                        {
                          v105 = v104;
                        }

                        v106 = (v105 + v85);
                        if (v85)
                        {
                          v82 = v106;
                        }

                        else
                        {
                          v82 = 0;
                        }

                        v81 = v85;
                        goto LABEL_106;
                      }

                      goto LABEL_124;
                    }

LABEL_123:
                    __break(1u);
LABEL_124:
                    __break(1u);
                    goto LABEL_125;
                  }

                  v34 = a13;
                  if (v33 != 2)
                  {
LABEL_74:
                    memset(v162, 0, 14);
                    sub_100012558(v28, v29);
                    v81 = v162;
                    v82 = v162;
                    goto LABEL_106;
                  }

                  v83 = *(v31 + 16);
                  v84 = *(v31 + 24);
                  sub_100012558(v28, v29);
                  v68 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
                  v85 = sub_100216034();
                  if (v85)
                  {
                    v68 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
                    v86 = sub_100216064();
                    v31 = v83 - v86;
                    if (__OFSUB__(v83, v86))
                    {
LABEL_127:
                      __break(1u);
                      goto LABEL_128;
                    }

                    v85 += v31;
                  }

                  v87 = __OFSUB__(v84, v83);
                  v88 = v84 - v83;
                  if (!v87)
                  {
                    goto LABEL_99;
                  }

                  __break(1u);
LABEL_67:
                  v34 = v68;
                  if (v80 == 2)
                  {
                    v89 = *(v31 + 16);
                    v90 = *(v31 + 24);
                    sub_100012558(v28, v29);
                    v85 = sub_100216034();
                    if (v85)
                    {
                      v91 = sub_100216064();
                      if (__OFSUB__(v89, v91))
                      {
LABEL_128:
                        __break(1u);
LABEL_129:
                        __break(1u);
                        goto LABEL_130;
                      }

                      v85 += v89 - v91;
                    }

                    v87 = __OFSUB__(v90, v89);
                    v88 = v90 - v89;
                    if (!v87)
                    {
                      goto LABEL_99;
                    }

                    __break(1u);
                  }

                  goto LABEL_74;
                }

                goto LABEL_151;
              }

LABEL_54:
              v69 = key_deterministic;
              sub_100015220();
              swift_allocError();
              *v70 = v69;
              *(v70 + 8) = 0;
              *(v70 + 16) = 2;
              swift_willThrow();
              return;
            }

            goto LABEL_147;
          }

          goto LABEL_137;
        }

        goto LABEL_135;
      }

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
      goto LABEL_139;
    }
  }

  v53 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_120;
  }

  v159 = v17;
  v54 = sub_100216034();
  if (!v54)
  {
    goto LABEL_37;
  }

  v55 = sub_100216064();
  if (__OFSUB__(v53, v55))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v54 += v53 - v55;
LABEL_37:
  sub_100216054();
  ccsha384_di();
  if (!a4)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (!a6)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (!v54)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (!a8)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  key_deterministic = cchkdf();
  *v16 = key_deterministic;
  if (key_deterministic)
  {
    goto LABEL_54;
  }

  if (!ccrng())
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  key_deterministic = ccec_generate_key_deterministic();
  *v16 = key_deterministic;
  if (key_deterministic)
  {
    goto LABEL_54;
  }

  if (v159)
  {
    v56 = sub_100019CD4(v159);
    v170 = sub_10001393C(v56);
    v171 = v57;
    sub_100017104(&v170, v159, v58, v59, v60, v61, v62, v63);
    v46 = v170;
    v47 = v171;
    v168 = &type metadata for Data;
    v169 = &protocol witness table for Data;
    v166 = v170;
    v167 = v171;
    v64 = sub_100006484(&v166, &type metadata for Data);
    v49 = *v64;
    v17 = v64[1];
    v65 = v17 >> 62;
    if ((v17 >> 62) <= 1)
    {
      if (!v65)
      {
        goto LABEL_47;
      }

      v130 = v49;
      v131 = v49 >> 32;
      a6 = v131 - v130;
      if (v131 < v130)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      sub_100012558(v46, v47);
      a8 = sub_100216034();
      if (a8)
      {
        v132 = sub_100216064();
        v52 = v130 - v132;
        if (__OFSUB__(v130, v132))
        {
          goto LABEL_132;
        }

        goto LABEL_110;
      }

LABEL_111:
      v133 = sub_100216054();
      if (v133 >= a6)
      {
        v134 = a6;
      }

      else
      {
        v134 = v133;
      }

      v135 = &a8[v134];
      if (a8)
      {
        v67 = v135;
      }

      else
      {
        v67 = 0;
      }

      v66 = a8;
      goto LABEL_118;
    }

    goto LABEL_82;
  }

LABEL_154:
  __break(1u);
}

_BYTE *sub_100017EF0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100017F84(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100018044(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000180C0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_100017F84(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_10001391C(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100018044(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100216074();
  swift_allocObject();
  result = sub_100216024();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1002161D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000180C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100216074();
  swift_allocObject();
  result = sub_100216024();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100018144(char a1, _TtC18TrustedPeersHelper6Client *a2, const char *a3, uint64_t a4, unint64_t a5)
{
  v144 = xmmword_10021D470;
  v10 = "Recoveryed Signing Key-%@";
  if (a1)
  {
    v10 = "Recovery Signing Private Key";
    v11 = 0xD00000000000001FLL;
  }

  else
  {
    v11 = 0xD00000000000001CLL;
  }

  v12 = sub_1001B43B8(v11, v10 | 0x8000000000000000);
  v13 = sub_1000139DC(v12[1]._TtCs12_SwiftObject_opaque, *v12->endpoint);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  v145 = v13;
  v146 = v15;
  v22 = ccec_cp_384();
  if (!v22)
  {
    sub_100015220();
    swift_allocError();
    *v86 = 0;
    *(v86 + 8) = 0;
    *(v86 + 16) = 3;
    swift_willThrow();
    goto LABEL_21;
  }

  v23 = v22;
  v147 = 0;
  v140 = objc_opt_self();
  v139 = [v140 ccec384Context];
  sub_100216074();
  swift_allocObject();
  v24 = sub_100216044();
  v142 = a2;
  v143 = a3;
  v25 = sub_1001B43B8(a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v26 = sub_100216A44();
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v26 = a4 & 0xFFFFFFFFFFFFLL;
  }

  sub_100012558(a2, a3);
  v27 = sub_1000139DC(v25[1]._TtCs12_SwiftObject_opaque, v26);
  v29 = v28;
  v25, v28, v30, v31, v32, v33, v34, v35;
  sub_100012558(v27, v29);
  sub_100012558(v27, v29);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {

    if (sub_100216034())
    {
      result = sub_100216064();
      if (__OFSUB__(0, result))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    swift_allocObject();
    v37 = sub_100216014();

    v24 = v37;
  }

  result = sub_100216034();
  if (result)
  {
    v38 = result;
    result = sub_100216064();
    v39 = -result;
    if (!__OFSUB__(0, result))
    {
      v40 = sub_100216054();
      if (v40 >= 56)
      {
        v41 = 56;
      }

      else
      {
        v41 = v40;
      }

      a5 = v38 + v39;
      sub_100012558(v27, v29);
      sub_1000161E0(&v142, v27, v29, &v145, &v147, a5, a5 + v41, a1 & 1, v23, v139, &v144);
      if (!v141)
      {
        v24, v42, v43, v44, v45, v46, v47, v48;
        sub_100002BF0(v27, v29, v93, v94, v95, v96, v97, v98);
        sub_100002BF0(v27, v29, v99, v100, v101, v102, v103, v104);
        sub_100002BF0(v27, v29, v105, v106, v107, v108, v109, v110);
        v111 = *(&v144 + 1);
        a5 = v144;
        v112 = v142;
        v113 = v143;
        sub_100012558(v144, *(&v144 + 1));
        sub_100002BF0(v112, v113, v114, v115, v116, v117, v118, v119);
        [v140 contextFree:v139];
        v24, v120, v121, v122, v123, v124, v125, v126;
        sub_100002BF0(a5, v111, v127, v128, v129, v130, v131, v132);
        sub_100002BF0(v145, v146, v133, v134, v135, v136, v137, v138);
        return a5;
      }

      v24, v42, v43, v44, v45, v46, v47, v48;
      sub_100002BF0(v27, v29, v49, v50, v51, v52, v53, v54);
      sub_100002BF0(v27, v29, v55, v56, v57, v58, v59, v60);
      sub_100002BF0(v27, v29, v61, v62, v63, v64, v65, v66);
      sub_100002BF0(v142, v143, v67, v68, v69, v70, v71, v72);
      [v140 contextFree:v139];
      v24, v73, v74, v75, v76, v77, v78, v79;
LABEL_21:
      sub_100002BF0(v144, *(&v144 + 1), v80, v81, v82, v83, v84, v85);
      sub_100002BF0(v145, v146, v87, v88, v89, v90, v91, v92);
      return a5;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
  return result;
}

SecKeyRef sub_10001853C(uint64_t a1, uint64_t a2)
{
  sub_10001148C(&qword_100297D48, &qword_10021D758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D420;
  *(inited + 32) = kSecAttrKeyClass;
  *(inited + 40) = kSecAttrKeyClassPrivate;
  *(inited + 48) = kSecAttrKeyType;
  *(inited + 56) = kSecAttrKeyTypeEC;
  v3 = kSecAttrKeyClass;
  v4 = kSecAttrKeyClassPrivate;
  v5 = kSecAttrKeyType;
  v6 = kSecAttrKeyTypeEC;
  v7 = sub_100019468(inited, &qword_100297D58, &qword_10021D768, sub_100015974);
  swift_setDeallocating();
  sub_10001148C(&qword_100297D50, &qword_10021D760);
  swift_arrayDestroy();
  isa = sub_100216204().super.isa;
  type metadata accessor for CFString(0);
  sub_100019C24(&qword_1002978D0, type metadata accessor for CFString, &unk_10021D394);
  v9 = sub_1002168C4().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29;
  v17 = SecKeyCreateWithData(isa, v9, 0);

  if (!v17)
  {
    sub_100015220();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 3;
    swift_willThrow();
  }

  return v17;
}

unint64_t sub_100018728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029D690, &qword_10021D750);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, &v18, &unk_10029D970, &unk_10021D740);
      v5 = v18;
      result = sub_100015974(v18);
      if (v7)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      *(*v3[1].endpoint + 8 * result) = v5;
      result = sub_1000125AC(&v19, (*v3[1].containerMap + 32 * result));
      v15 = *v3->endpoint;
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v17;
      v4 += 40;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
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

uint64_t sub_100018850(_TtC18TrustedPeersHelper6Client *a1)
{
  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_100019C24(&qword_1002978D0, type metadata accessor for CFString, &unk_10021D394);
  isa = sub_1002168C4().super.isa;
  v3 = SecItemAdd(isa, result);

  if (v3)
  {
    if (v3 != -25299 || (v16 = a1, , sub_100015790(&v17, kSecClass), sub_100012480(&v17), v4 = sub_1002168C4().super.isa, v5 = sub_1002168C4().super.isa, v16, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, v19, result[0], result[1], result[2], result[3], v3 = SecItemUpdate(v4, v5), v4, v5, v3))
    {
      sub_100015220();
      swift_allocError();
      *v13 = v3;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_100018A14(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v5;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = objc_allocWithZone(NSUUID);
  v8 = kSecClass;
  v9 = kSecClassKey;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecAttrAccessGroup;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrApplicationLabel;
  v16 = [v7 init];
  v17 = [v16 UUIDString];

  v18 = sub_100216974();
  v20 = v19;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100019BD0();
  *(v6 + 32) = v18;
  *(v6 + 40) = v20;
  *(inited + 240) = sub_100216984();
  *(inited + 248) = v21;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrLabel;
  *(inited + 280) = a3;
  *(inited + 288) = a4;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v22 = kSecAttrLabel;

  v23 = kSecValueData;
  sub_100012558(a1, a2);
  v24 = sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v25 = sub_100018850(v24);
  v24, v26, v27, v28, v29, v30, v31, v32, v34, kSecClassKey, kSecClass, "Recoveryed Encryption Key-%@", a3, a4, a1, a2, (inited + 32), v39;
  return v25 & 1;
}

uint64_t sub_100018D0C(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v7;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v7;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrLabel;
  *(inited + 240) = a3;
  *(inited + 248) = a4;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10021D600;
  v9 = objc_allocWithZone(NSUUID);
  v10 = kSecClass;
  v11 = kSecClassKey;
  v12 = kSecAttrAccessible;
  v13 = kSecAttrAccessibleWhenUnlocked;
  v14 = kSecUseDataProtectionKeychain;
  v15 = kSecAttrAccessGroup;
  v16 = kSecAttrSynchronizable;
  v17 = kSecAttrLabel;

  v18 = kSecAttrApplicationLabel;
  v19 = [v9 init];
  v20 = [v19 UUIDString];

  v21 = sub_100216974();
  v23 = v22;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100019BD0();
  *(v8 + 32) = v21;
  *(v8 + 40) = v23;
  *(inited + 280) = sub_100216984();
  *(inited + 288) = v24;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v25 = kSecValueData;
  sub_100012558(a1, a2);
  v26 = sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v27 = sub_100018850(v26);
  v26, v28, v29, v30, v31, v32, v33, v34, v36, a4, kSecAttrAccessibleWhenUnlocked, kSecClassKey, kSecClass, "com.apple.security.octagon", a1, a2, (inited + 32), v40;
  return v27 & 1;
}

unint64_t sub_10001900C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, &v20, &qword_100297CF0, &qword_10021D6F8);
      v5 = v20;
      v6 = v21;
      result = sub_100015A28(v20, v21);
      if (v8)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v9 = (*v3[1].endpoint + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000125AC(&v22, (*v3[1].containerMap + 32 * result));
      v17 = *v3->endpoint;
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v19;
      v4 += 48;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
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

unint64_t sub_10001913C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D70, &unk_10021D780);
    v3 = sub_100217144();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100012558(v7, v8);
      result = sub_100015A28(v5, v6);
      if (v10)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v17 = (*v3[1].endpoint + 16 * result);
      *v17 = v5;
      v17[1] = v6;
      v18 = (*v3[1].containerMap + 16 * result);
      *v18 = v7;
      v18[1] = v8;
      v19 = *v3->endpoint;
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v21;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
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

unint64_t sub_100019254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, v20, &unk_1002983E0, &qword_10021D708);
      result = sub_100015AA0(v20);
      if (v6)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v7 = *v3[1].endpoint + 40 * result;
      v8 = v20[0];
      v9 = v20[1];
      *(v7 + 32) = v21;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000125AC(&v22, (*v3[1].containerMap + 32 * result));
      v17 = *v3->endpoint;
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v19;
      v4 += 72;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
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

unint64_t sub_100019468(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10001148C(a2, a3);
    v7 = sub_100217144();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *&v7[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      *(*v7[1].endpoint + 8 * result) = v10;
      *(*v7[1].containerMap + 8 * result) = v11;
      v20 = *v7->endpoint;
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      *v7->endpoint = v22;
      if (!--v4)
      {
        v7, v13, v14, v15, v16, v17, v18, v19;
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

unint64_t sub_100019574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029D8F0, &qword_100226690);
    v3 = sub_100217144();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100015A28(v5, v6);
      if (v9)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v16 = (*v3[1].endpoint + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(*v3[1].containerMap + 8 * result) = v7;
      v17 = *v3->endpoint;
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
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

unint64_t sub_100019678(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100297D08, &qword_10021D710);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v27 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10001148C(&qword_100297D10, &qword_10021D718);
    v8 = sub_100217144();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100019C6C(v10, v6, &qword_100297D08, &qword_10021D710);
      result = sub_100015B28(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *&v8[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v15 = *v8[1].endpoint;
      v16 = sub_100216194();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(*v8[1].containerMap + 8 * v14) = *&v6[v9];
      v24 = *v8->endpoint;
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      *v8->endpoint = v26;
      v10 += v11;
      if (!--v7)
      {
        v8, v17, v18, v19, v20, v21, v22, v23;
        return v8;
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

unint64_t sub_100019860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D88, &qword_10021D7A0);
    v3 = sub_100217144();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100015A28(v5, v6);
      if (v10)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v17 = (*v3[1].endpoint + 16 * result);
      *v17 = v5;
      v17[1] = v6;
      v18 = (*v3[1].containerMap + 16 * result);
      *v18 = v8;
      v18[1] = v7;
      v19 = *v3->endpoint;
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v21;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
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

unint64_t sub_10001999C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10001148C(a2, a3);
    v5 = sub_100217144();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100015A28(v7, v8);
      if (v12)
      {
        break;
      }

      *&v5[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v19 = (*v5[1].endpoint + 16 * result);
      *v19 = v7;
      v19[1] = v8;
      *(*v5[1].containerMap + 8 * result) = v10;
      v20 = *v5->endpoint;
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      *v5->endpoint = v22;
      if (!--v3)
      {
        v5, v12, v13, v14, v15, v16, v17, v18;
        return v5;
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

unint64_t sub_100019A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D18, &qword_10021D720);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, &v22, &qword_100297D20, &qword_10021D728);
      v5 = v22;
      v6 = v23;
      result = sub_100015A28(v22, v23);
      if (v8)
      {
        break;
      }

      *&v3[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
      v15 = (*v3[1].endpoint + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = *v3[1].containerMap + 40 * result;
      v17 = v24;
      v18 = v25;
      *(v16 + 32) = v26;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = *v3->endpoint;
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      *v3->endpoint = v21;
      v4 += 56;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
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