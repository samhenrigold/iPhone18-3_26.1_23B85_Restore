uint64_t sub_1003473F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100347440()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100347478()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1003474DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100347514()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1003475C4(unint64_t a1)
{
  v3 = *(sub_1004A4A74() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_10034675C(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_100347670()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10034773C(uint64_t a1)
{
  v3 = *(sub_1004A4A74() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100346B20(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_1003477F8()
{

  return _swift_deallocObject(v0, 80, 7);
}

void sub_100347864(uint64_t a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v19 = [v2 initWithEntityName:v3];

  v4 = [objc_allocWithZone(NSMutableArray) init];
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = [objc_allocWithZone(NSNumber) initWithLongLong:*(*(a1 + 48) + ((v10 << 9) | (8 * v11)))];
    [v4 addObject:v12];
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004CEAA0;
      *(v13 + 56) = sub_10019A8E4(0, &qword_1005DA2A0, NSMutableArray_ptr);
      *(v13 + 32) = v4;
      v14 = v4;
      v15 = sub_1004A5734();
      isa = sub_1004A5C04().super.isa;

      v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

      [v19 setPredicate:v17];
      [v19 setFetchLimit:1082];
      [v19 setReturnsObjectsAsFaults:0];
      v18 = sub_1004A5C04().super.isa;
      [v19 setRelationshipKeyPathsForPrefetching:v18];

      [v19 setFetchBatchSize:541];
      return;
    }

    v7 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_100347B40(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v12 = sub_100351418(_swiftEmptyArrayStorage);
  varA8[0] = 0;
  v13 = a4;
  v14 = [v13 execute:varA8];
  if (!v14)
  {
    v21 = varA8[0];
    sub_1004A4274();

    swift_willThrow();

    if (qword_1005D8788 != -1)
    {
      swift_once();
    }

    v22 = sub_1004A4A74();
    sub_1001C203C(v22, qword_1005DA1C0);

    swift_errorRetain();
    v23 = sub_1004A4A54();
    v24 = sub_1004A6014();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      varA8[0] = v27;
      *v25 = 141558531;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2085;
      *(v25 + 14) = sub_10015BA6C(a1, a2, varA8);
      *(v25 + 22) = 2112;
      v28 = sub_1004A4264();
      *(v25 + 24) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{sensitive,mask.hash}s] Search request failed: %@", v25, 0x20u);
      sub_100025F40(v26, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(v27);
    }

    v29 = sub_100351418(_swiftEmptyArrayStorage);

    return v29;
  }

  v15 = v14;
  v99 = v12;
  v16 = varA8[0];

  v100 = v15;
  v101 = [v15 count];
  if (v101 < 1)
  {
    v20 = v100;
LABEL_10:

    return v99;
  }

  v96 = v11;
  v97 = v9;
  v98 = v8;
  v17 = 0;
  v102 = a3 + 56;
  p_attr = (&stru_1005CAFF8 + 8);
  v20 = v100;
  v19 = v101;
  while (1)
  {
    v31 = [v20 p_attr[449]];
    sub_1004A64E4();
    swift_unknownObjectRelease();
    _s7MessageCMa();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v32 = v103;
    v33 = sub_1004A5734();
    [v32 willAccessValueForKey:v33];

    v34 = [v32 primitiveUid];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 longLongValue];

      v37 = (v36 - 0x100000000) < 0xFFFFFFFF00000001;
      if ((v36 - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
      v37 = 1;
    }

    v39 = sub_1004A5734();
    [v32 didAccessValueForKey:v39];

    if (v37)
    {
      goto LABEL_12;
    }

    v40 = [v32 mailbox];
    if (!v40)
    {
      goto LABEL_12;
    }

    v41 = v40;
    v42 = [v40 objectID];
    v43 = [v42 entity];
    v44 = [v43 name];

    if (!v44)
    {

      p_attr = (&stru_1005CAFF8 + 8);
      goto LABEL_13;
    }

    v45 = sub_1004A5764();
    v47 = v46;

    if (v45 == 0x786F626C69616DLL && v47 == 0xE700000000000000)
    {

      p_attr = (&stru_1005CAFF8 + 8);
    }

    else
    {
      v48 = sub_1004A6D34();

      p_attr = (&stru_1005CAFF8 + 8);
      if ((v48 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if ([v42 isTemporaryID])
    {
LABEL_29:

LABEL_30:
      v19 = v101;
      goto LABEL_13;
    }

    if (!*(a3 + 16))
    {

      goto LABEL_30;
    }

    sub_1004A6E94();
    sub_1004A6304();
    v49 = sub_1004A6F14();
    v50 = a3;
    v51 = -1 << *(a3 + 32);
    v52 = v49 & ~v51;
    if (((*(v102 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
LABEL_36:

      a3 = v50;
      v20 = v100;
      v19 = v101;
      p_attr = (&stru_1005CAFF8 + 8);
      goto LABEL_13;
    }

    v53 = ~v51;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    while (1)
    {
      v54 = *(*(v50 + 48) + 8 * v52);
      v55 = sub_1004A62F4();

      if (v55)
      {
        break;
      }

      v52 = (v52 + 1) & v53;
      if (((*(v102 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v56 = [v32 mailbox];
    v19 = v101;
    p_attr = &stru_1005CAFF8.attr;
    if (!v56)
    {

      a3 = v50;
      v20 = v100;
      goto LABEL_13;
    }

    v57 = v56;
    v58 = sub_1004A5734();
    [v57 willAccessValueForKey:v58];

    v94 = v57;
    v59 = [v57 primitiveName];
    a3 = v50;
    if (v59)
    {
      v60 = v59;
      v61 = sub_100359E0C(v60);

      v62._rawValue = v61;
      v19 = v101;
      v63 = MailboxName.init(_:)(v62);
      rawValue = v63.bytes._rawValue;
      value = v63._hashValue._value;
    }

    else
    {
      rawValue = 0;
      value = 0;
    }

    v20 = v100;
    v64 = sub_1004A5734();
    v65 = v94;
    [v94 didAccessValueForKey:v64];

    if (!rawValue)
    {

LABEL_12:
      goto LABEL_13;
    }

    v67 = sub_100340AF8(v66);
    if (!v68)
    {

      goto LABEL_12;
    }

    LODWORD(v103) = v38;
    v69 = v99;
    v70 = v67;
    v71 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    varA8[0] = v69;
    v91 = v70;
    v92 = v71;
    v73 = v71;
    v74 = rawValue;
    v76 = sub_10035E2D4(v70, v73, rawValue, value);
    v77 = v69[2];
    v78 = (v75 & 1) == 0;
    v79 = v77 + v78;
    if (__OFADD__(v77, v78))
    {
      __break(1u);
    }

    if (v69[3] >= v79)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = v76;
        v89 = v75;
        sub_10036163C();
        v75 = v89;
        v76 = v88;
      }
    }

    else
    {
      v80 = v75;
      sub_10035FC68(v79, isUniquelyReferenced_nonNull_native);
      v81 = sub_10035E2D4(v91, v92, v74, value);
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_58;
      }

      v76 = v81;
      v75 = v80;
    }

    p_attr = (&stru_1005CAFF8 + 8);
    v83 = v76;
    v84 = varA8[0];
    if (v75)
    {

      v85 = v94;
    }

    else
    {
      sub_100016D2C();
      rawValue = v74;
      v86 = v96;
      sub_1004A7114();
      v87 = v86;
      v85 = v94;
      sub_100376E18(v83, v91, v92, rawValue, value, v87, v84);
    }

    v99 = v84;
    MessageIdentifierSet.insert(_:)(varA8, &v103, v98);

LABEL_13:
    if (++v17 == v19)
    {
      goto LABEL_10;
    }
  }

  LODWORD(vars8) = 0;
  varA8[21] = 74;
  sub_1004A69A4();
  __break(1u);
LABEL_58:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1003484F8()
{
  v1 = *(v0 + 16);
  sub_100344B60(*(v0 + 32));
  v1();
}

uint64_t sub_10034854C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003485BC(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

id sub_100348658(uint64_t a1, void *a2, char *a3)
{
  v39 = a3;
  v40 = sub_1004A44E4();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A4874();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v12 = sub_1004A6CE4();
  v14 = v13;
  sub_1004A47F4();
  v15 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1004A4814().super.isa;
  v17 = [v15 initWithContentType:isa];

  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for PendingItem.AddMessage(0);
  sub_100348C2C((a2 + *(v18 + 24)), v12, v14);
  v19 = a2 + *(v18 + 28);
  v20 = 256;
  if ((v19[1] & 1) == 0)
  {
    v20 = 0;
  }

  v21 = 0x10000;
  if ((v19[2] & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0x1000000;
  if ((v19[3] & 1) == 0)
  {
    v22 = 0;
  }

  v23 = &_mh_execute_header;
  if ((v19[4] & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x10000000000;
  if ((v19[5] & 1) == 0)
  {
    v24 = 0;
  }

  sub_1003499B0(*v19 & 1 | (v19[6] << 48) | v20 | v21 | v22 | v23 | v24 | (v19[7] << 56));
  v25 = sub_1004A4484().super.isa;
  [v17 setMailDateReceived:v25];

  v26 = sub_1004A5734();
  [v17 setAccountIdentifier:v26];

  sub_100349B34(a2[2]);
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v28 = sub_1004A5734();

  v29 = sub_1004A5734();
  v30 = [v27 initWithUniqueIdentifier:v28 domainIdentifier:v29 attributeSet:v17];

  v31 = v30;
  v32 = v39;
  sub_1004A4474();
  v33 = sub_1004A4484().super.isa;
  v34 = *(v5 + 8);
  v35 = v7;
  v36 = v40;
  v34(v35, v40);
  [v31 setExpirationDate:v33];

  v34(v32, v36);
  sub_100349CE4(a2);
  return v31;
}

id sub_100348A18(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(CSSearchableItemAttributeSet) init];
  sub_1003499B0(a2 & 0xFFFF010101010101);
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20[1] = a1;
  sub_1004A6CE4();
  v13 = sub_1004A5734();

  v14 = sub_1004A5734();
  v15 = [v12 initWithUniqueIdentifier:v13 domainIdentifier:v14 attributeSet:v11];

  v16 = v15;
  [v16 setIsUpdate:1];
  sub_1004A4474();
  isa = sub_1004A4484().super.isa;
  v18 = *(v8 + 8);
  v18(v10, v7);
  [v16 setExpirationDate:isa];

  v18(a4, v7);
  return v16;
}

void sub_100348C2C(void *a1, uint64_t a2, uint64_t a3)
{
  v114 = a2;
  v115 = a3;
  v4 = sub_1004A46E4();
  v116 = *(v4 - 8);
  v117 = v4;
  __chkstk_darwin(v4);
  v113 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v6 - 8);
  v8 = &v110 - v7;
  v9 = type metadata accessor for IndexableMessageInfo(0);
  v10 = (a1 + v9[9]);
  v11 = *v10;
  v111 = v10[1];
  v112 = v11;
  if (v111)
  {
    v12 = sub_1004A5734();
  }

  else
  {
    v12 = 0;
  }

  [v121 setSubject:v12];

  sub_10000E268(a1 + v9[6], v8, &qword_1005D0F20, &qword_1004E9390);
  v13 = sub_1004A44E4();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v8, 1, v13) != 1)
  {
    isa = sub_1004A4484().super.isa;
    (*(v14 + 8))(v8, v13);
  }

  v16 = v121;
  [v121 setContentCreationDate:isa];

  v17 = a1 + v9[7];
  v18 = *(v17 + 3);
  if (v18)
  {
    v131 = *v17;
    v19 = *(v17 + 2);
    v20 = *(v17 + 3);
    v134 = *(v17 + 2);
    v135 = v20;
    v21 = *(v17 + 5);
    v136 = *(v17 + 4);
    v137 = v21;
    v132 = v19;
    v133 = v18;
    sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004D3930;
    sub_10019A8E4(0, &qword_1005DA2B0, CSPerson_ptr);
    v124 = *v17;
    *&v125 = *(v17 + 2);
    *(&v125 + 1) = v18;
    v23 = *(v17 + 3);
    v126 = *(v17 + 2);
    v127 = v23;
    v24 = *(v17 + 5);
    v128 = *(v17 + 4);
    v129 = v24;
    sub_100275568(&v124, v123);
    *(v22 + 32) = sub_100373100(&v131);
  }

  v120 = sub_10019A8E4(0, &qword_1005DA2B0, CSPerson_ptr);
  v25 = sub_1004A5C04().super.isa;

  [v16 setAuthors:v25];

  v26 = *(a1 + v9[10]);
  v27 = *(v26 + 16);
  v118 = v9;
  v119 = a1;
  if (v27)
  {
    v130 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v28 = (v26 + 32);
    v29 = v27 - 1;
    v122 = xmmword_1004CEAA0;
    while (1)
    {
      v30 = v28[1];
      v124 = *v28;
      v125 = v30;
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[5];
      v128 = v28[4];
      v129 = v33;
      v126 = v31;
      v127 = v32;
      if (*(&v124 + 1))
      {
        sub_100275568(&v124, v123);

        v34 = sub_1004A5734();
      }

      else
      {
        sub_100275568(&v124, v123);
        v34 = 0;
      }

      v35 = v125;
      v36 = objc_allocWithZone(CSPerson);
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      v37 = swift_allocObject();
      *(v37 + 16) = v122;
      *(v37 + 32) = v35;

      sub_1002755F4(&v124);
      v38 = sub_1004A5C04().super.isa;

      [v36 initWithDisplayName:v34 handles:v38 handleIdentifier:CNContactEmailAddressesKey];

      sub_1004A6814();
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      if (!v29)
      {
        break;
      }

      --v29;
      v28 += 6;
    }

    v9 = v118;
    a1 = v119;
  }

  v39 = sub_1004A5C04().super.isa;

  [v121 setPrimaryRecipients:v39];

  v40 = a1[1];
  v41 = *(v40 + 16);
  if (v41)
  {
    v130 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v42 = (v40 + 32);
    v43 = v41 - 1;
    v122 = xmmword_1004CEAA0;
    while (1)
    {
      v44 = v42[1];
      v124 = *v42;
      v125 = v44;
      v45 = v42[2];
      v46 = v42[3];
      v47 = v42[5];
      v128 = v42[4];
      v129 = v47;
      v126 = v45;
      v127 = v46;
      if (*(&v124 + 1))
      {
        sub_100275568(&v124, v123);

        v48 = sub_1004A5734();
      }

      else
      {
        sub_100275568(&v124, v123);
        v48 = 0;
      }

      v49 = v125;
      v50 = objc_allocWithZone(CSPerson);
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      v51 = swift_allocObject();
      *(v51 + 16) = v122;
      *(v51 + 32) = v49;

      sub_1002755F4(&v124);
      v52 = sub_1004A5C04().super.isa;

      [v50 initWithDisplayName:v48 handles:v52 handleIdentifier:CNContactEmailAddressesKey];

      sub_1004A6814();
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      if (!v43)
      {
        break;
      }

      --v43;
      v42 += 6;
    }

    v9 = v118;
    a1 = v119;
    v53 = v121;
  }

  else
  {
    v53 = v121;
  }

  v54 = sub_1004A5C04().super.isa;

  [v53 setAdditionalRecipients:v54];

  v55 = *a1;
  v56 = *(*a1 + 16);
  if (v56)
  {
    v130 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v57 = (v55 + 32);
    v58 = v56 - 1;
    v122 = xmmword_1004CEAA0;
    while (1)
    {
      v59 = v57[1];
      v124 = *v57;
      v125 = v59;
      v60 = v57[2];
      v61 = v57[3];
      v62 = v57[5];
      v128 = v57[4];
      v129 = v62;
      v126 = v60;
      v127 = v61;
      if (*(&v124 + 1))
      {
        sub_100275568(&v124, v123);

        v63 = sub_1004A5734();
      }

      else
      {
        sub_100275568(&v124, v123);
        v63 = 0;
      }

      v64 = v125;
      v65 = objc_allocWithZone(CSPerson);
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      v66 = swift_allocObject();
      *(v66 + 16) = v122;
      *(v66 + 32) = v64;

      sub_1002755F4(&v124);
      v67 = sub_1004A5C04().super.isa;

      [v65 initWithDisplayName:v63 handles:v67 handleIdentifier:CNContactEmailAddressesKey];

      sub_1004A6814();
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      if (!v58)
      {
        break;
      }

      --v58;
      v57 += 6;
    }

    v9 = v118;
    a1 = v119;
  }

  v68 = v121;
  v69 = sub_1004A5C04().super.isa;

  [v68 setHiddenAdditionalRecipients:v69];

  v70 = a1 + v9[11];
  if (v70[1])
  {
    v71 = 0;
  }

  else
  {
    v71 = [objc_allocWithZone(NSNumber) initWithInteger:*v70];
  }

  [v68 setMailPriority:v71];

  v72 = *(a1 + v9[8] + 8);
  if (v72)
  {
    v73 = sub_1004A5734();
  }

  else
  {
    v73 = 0;
  }

  v74 = v121;
  [v121 setMailMessageID:v73];

  v75 = a1 + v9[15];
  v76 = v75[16];
  if (v76 != 255)
  {
    v77 = *v75;
    v78 = *(v75 + 1);
    if (v76)
    {
      IndexingDiagnostics.unindexed.getter(*v75, *(v75 + 1));
      v79 = sub_1001D9734(v77, v78);
      v81 = v80;
      v82.super.isa = sub_1004A4404().super.isa;
      sub_100014D40(v79, v81);
      v83 = &selRef_setHTMLContentData_;
    }

    else
    {
      v82.super.isa = sub_1004A5734();
      v83 = &selRef_setTextContent_;
    }

    v74 = v121;
    [v121 *v83];
  }

  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  v84 = sub_1004A62D4(0).super.super.isa;
  [v74 setPartiallyDownloaded:v84];

  v85 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  [v74 setDataOwnerType:v85];

  v86 = [v74 accountIdentifier];
  [v74 setAccountIdentifier:v86];

  v87 = [v74 accountType];
  [v74 setAccountType:v87];

  sub_100349D40(*(a1 + v9[16]));
  if (v72)
  {
    v88 = sub_1004A5734();
  }

  else
  {
    v88 = 0;
  }

  v89 = v121;
  [v121 setMailMessageHeader:v88];

  v90 = [v89 mailboxIdentifiers];
  if (v90)
  {
    v91 = v90;
    v92 = sub_1004A5C14();

    v93 = *(v92 + 16);
    *&v122 = CSMailboxDrafts;
    v94 = (v92 + 40);
    v95 = -v93;
    v96 = -1;
    while (1)
    {
      if (v95 + v96 == -1)
      {

        *&v122 = 0xD000000000000011;
        v89 = v121;
        goto LABEL_61;
      }

      if (++v96 >= *(v92 + 16))
      {
        break;
      }

      v97 = *(v94 - 1);
      v98 = *v94;
      if (v97 == sub_1004A5764() && v98 == v99)
      {

LABEL_60:

        *&v122 = 0xD000000000000012;
        v89 = v121;
        goto LABEL_61;
      }

      v94 += 2;
      v101 = sub_1004A6D34();

      if (v101)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
  }

  else
  {
    *&v122 = 0xD000000000000011;
LABEL_61:
    v102 = v89;

    sub_1004A46D4();
    v103 = v113;
    sub_1004A46C4();
    sub_1004A46B4();
    (*(v116 + 8))(v103, v117);
    sub_100252424(_swiftEmptyArrayStorage);
    sub_1004A6264();

    v104 = sub_1004A5D24().super.super.isa;
    v105 = sub_1004A5734();
    [v102 setAttribute:v104 forKey:v105];

    v106 = sub_1004A5D24().super.super.isa;
    v107 = sub_1004A5734();
    [v102 setAttribute:v106 forKey:v107];

    v108 = sub_1004A5D24().super.super.isa;
    v109 = sub_1004A5734();
    [v102 setAttribute:v108 forKey:v109];
  }
}

void sub_1003499B0(unint64_t a1)
{
  v2 = HIBYTE(a1);
  v3 = (a1 >> 16) & 1;
  v4 = [objc_allocWithZone(NSNumber) initWithBool:(a1 & 1) == 0];
  [v1 setMailRead:v4];

  v5 = [objc_allocWithZone(NSNumber) initWithBool:v2 != 0];
  [v1 setMailFlagged:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithBool:v3];
  [v1 setMailRepliedTo:v6];

  if (v2 > 3)
  {
    v9 = 5;
    if (v2 != 6)
    {
      v9 = 6;
    }

    v10 = 3;
    if (v2 != 4)
    {
      v10 = 4;
    }

    if (v2 <= 5)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }

    goto LABEL_15;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  if (v2)
  {
LABEL_15:
    v8 = [objc_allocWithZone(NSNumber) initWithInteger:v7];
  }

  v11 = v8;
  [v1 setMailFlagColor:?];
}

void sub_100349B34(void *a1)
{
  v2 = v1;
  v4 = sub_1004A4374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v15 - v10;
  v12 = [a1 URIRepresentation];
  sub_1004A4344();

  sub_1004A4284();
  v13 = *(v5 + 8);
  v13(v11, v4);
  sub_1004A42B4();
  v13(v7, v4);
  v14 = sub_1004A5734();

  if (qword_1005D8790 != -1)
  {
    swift_once();
  }

  [v2 setValue:v14 forCustomKey:qword_1005DA2A8];
}

uint64_t sub_100349CE4(uint64_t a1)
{
  v2 = type metadata accessor for PendingItem.AddMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100349D40(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v51 = sub_1004A4874();
  __chkstk_darwin(v51);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v47 = (v5 + 32);
    v48 = (v5 + 48);
    v46 = (v5 + 8);
    v8 = (a1 + 80);
    v9 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage;
    v52 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage;
    v49 = v4;
    do
    {
      v53 = v9;
      v12 = *(v8 - 2);
      v55[0] = *(v8 - 3);
      v55[1] = v12;
      v56 = *(v8 - 16);
      if (*v8)
      {
        v13 = *(v8 - 1);
      }

      else
      {
        v13 = 0;
      }

      if (*v8)
      {
        v14 = *v8;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      sub_100270CA4(v55, v54);

      v15 = String.init(_:)(v55);
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100085070(0, *(v11 + 2) + 1, 1, v11);
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_100085070((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v17;
      v21 = v49;
      static MediaType.uniformType(filename:mimeType:)(v15, v17, v49);

      v22 = v51;
      if ((*v48)(v21, 1, v51) == 1)
      {
        sub_10028B4FC(v21);
      }

      else
      {
        (*v47)(v50, v21, v22);
        v23 = sub_1004A47E4();
        v25 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_100085070(0, *(v52 + 2) + 1, 1, v52);
        }

        v27 = *(v52 + 2);
        v26 = *(v52 + 3);
        if (v27 >= v26 >> 1)
        {
          v52 = sub_100085070((v26 > 1), v27 + 1, 1, v52);
        }

        (*v46)(v50, v51);
        v28 = v52;
        *(v52 + 2) = v27 + 1;
        v29 = &v28[16 * v27];
        *(v29 + 4) = v23;
        *(v29 + 5) = v25;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100085070(0, *(v10 + 2) + 1, 1, v10);
      }

      v31 = *(v10 + 2);
      v30 = *(v10 + 3);
      if (v31 >= v30 >> 1)
      {
        v10 = sub_100085070((v30 > 1), v31 + 1, 1, v10);
      }

      *(v10 + 2) = v31 + 1;
      v32 = &v10[16 * v31];
      *(v32 + 4) = v13;
      *(v32 + 5) = v14;
      v9 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100085070(0, *(v9 + 2) + 1, 1, v9);
      }

      v34 = *(v9 + 2);
      v33 = *(v9 + 3);
      if (v34 >= v33 >> 1)
      {
        v9 = sub_100085070((v33 > 1), v34 + 1, 1, v9);
      }

      v8 += 7;
      *(v9 + 2) = v34 + 1;
      v35 = &v9[16 * v34];
      *(v35 + 4) = 0;
      *(v35 + 5) = 0xE000000000000000;
      --v7;
    }

    while (v7);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  isa = sub_1004A5C04().super.isa;

  v37 = sub_1004A5734();
  v38 = v45;
  [v45 setAttribute:isa forKey:v37];

  v39 = sub_1004A5C04().super.isa;

  v40 = sub_1004A5734();
  [v38 setAttribute:v39 forKey:v40];

  v41 = sub_1004A5C04().super.isa;

  v42 = sub_1004A5734();
  [v38 setAttribute:v41 forKey:v42];

  v43 = sub_1004A5C04().super.isa;

  v44 = sub_1004A5734();
  [v38 setAttribute:v43 forKey:v44];
}

void sub_10034A2C0()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_1004A5734();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:1 multiValued:0];

  if (v2)
  {
    qword_1005DA2A8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_10034A3A8(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v26 = a2;
  v8 = v5;
  v10 = _s6LoggerVMa_0(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  sub_100351AB4(v8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v13, _s6LoggerVMa_0);
  v15 = (v14 + *(v11 + 28));
  v16 = *v15;
  v17 = *(v15 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v18 = sub_1004A4A54();
  v19 = sub_1004A4A74();
  (*(*(v19 - 8) + 8))(v13, v19);
  v20 = sub_1004A6034();
  if (os_log_type_enabled(v18, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 68158720;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    *(v21 + 10) = v16;
    *(v21 + 11) = 1040;
    *(v21 + 13) = 8;
    *(v21 + 17) = 1024;
    *(v21 + 19) = v17;
    *(v21 + 23) = 1024;
    *(v21 + 25) = a1;
    _os_log_impl(&_mh_execute_header, v18, v20, v26, v21, 0x1Du);
  }

  v22 = *(v8 + 48);
  v23 = swift_allocObject();
  *(v23 + 16) = v8;
  *(v23 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = a5;
  v24 = _Block_copy(aBlock);

  [v22 performBlock:v24];
  _Block_release(v24);
}

uint64_t sub_10034A618@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003364B8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = v9[2];
    v12 = v9[3];
    v13 = *(v9 + 8);
    v14 = *(v9 + 36);
    v15 = v9[5];
    result = memmove(v9, v9 + 6, 48 * (v7 - 1 - a1));
    v5[2] = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 36) = v14;
    *(a2 + 40) = v15;
  }

  return result;
}

uint64_t sub_10034A6EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003364E0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for MessageBeingDownloaded(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100351BB4(v11, a2, type metadata accessor for MessageBeingDownloaded);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10034A820(char *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v60 = a3;
  v59 = a4;
  v63 = a2;
  v62 = type metadata accessor for MessageBeingDownloaded(0);
  v7 = *(v62 - 1);
  __chkstk_darwin(v62);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v49 - v10;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v50 = &v49 - v15;
  __chkstk_darwin(v16);
  v55 = &v49 - v17;
  v18 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  __chkstk_darwin(v18 - 8);
  v53 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v49 - v21;
  __chkstk_darwin(v22);
  v57 = &v49 - v23;
  v25 = __chkstk_darwin(v24);
  v58 = &v49 - v26;
  v54 = v4;
  v27 = *v4;
  v28 = v7;
  v29 = v27[2];
  if (!v29)
  {
LABEL_12:
    v31 = v58;
    v40 = v62;
    (*(v28 + 56))(v58, 1, 1, v62, v25);
    v41 = v28;
    v42 = v61;
    v60(v31);
    if (v42)
    {
LABEL_13:
      v39 = v31;
    }

    else
    {
      v44 = v57;
      sub_10000E268(v31, v57, &qword_1005D97C8, &unk_1004F6A70);
      if ((*(v41 + 48))(v44, 1, v40) != 1)
      {
        v5 = v55;
        sub_100351BB4(v44, v55, type metadata accessor for MessageBeingDownloaded);
        if (*v5 != a1 || *(v5 + 16) != v63 || (v29 = v41, v45 = sub_10033A5E0(), (v45 & 0x100000000) != 0) || v45 != v63)
        {
          sub_100025F40(v31, &qword_1005D97C8, &unk_1004F6A70);
          return sub_100351D64(v5, type metadata accessor for MessageBeingDownloaded);
        }

        a1 = v50;
        sub_100351AB4(v5, v50, type metadata accessor for MessageBeingDownloaded);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_22:
          v47 = v27[2];
          v46 = v27[3];
          if (v47 >= v46 >> 1)
          {
            v27 = sub_10035D8CC((v46 > 1), v47 + 1, 1, v27);
          }

          sub_100025F40(v31, &qword_1005D97C8, &unk_1004F6A70);
          v27[2] = v47 + 1;
          sub_100351BB4(a1, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v47, type metadata accessor for MessageBeingDownloaded);
          *v54 = v27;
          return sub_100351D64(v5, type metadata accessor for MessageBeingDownloaded);
        }

LABEL_34:
        v27 = sub_10035D8CC(0, v27[2] + 1, 1, v27);
        goto LABEL_22;
      }

      sub_100025F40(v31, &qword_1005D97C8, &unk_1004F6A70);
      v39 = v44;
    }

    return sub_100025F40(v39, &qword_1005D97C8, &unk_1004F6A70);
  }

  v30 = 0;
  v49 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = v27 + v49;
  while (1)
  {
    if (v30 >= v27[2])
    {
      __break(1u);
      goto LABEL_31;
    }

    v5 = *(v28 + 72) * v30;
    sub_100351AB4(v31 + v5, v13, type metadata accessor for MessageBeingDownloaded);
    if (*v13 == a1)
    {
      break;
    }

    sub_100351D64(v13, type metadata accessor for MessageBeingDownloaded);
LABEL_4:
    if (v29 == ++v30)
    {
      goto LABEL_12;
    }
  }

  v32 = *(v13 + 4);
  sub_100351D64(v13, type metadata accessor for MessageBeingDownloaded);
  if (v32 != v63)
  {
    goto LABEL_4;
  }

  if (v30 >= v27[2])
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v27 = sub_1003364E0(v27);
    goto LABEL_28;
  }

  v33 = v31 + v5;
  v31 = v56;
  sub_100351AB4(v33, v56, type metadata accessor for MessageBeingDownloaded);
  a1 = v62;
  (*(v28 + 56))(v31, 0, 1, v62);
  v34 = v28;
  v35 = v61;
  v60(v31);
  if (v35)
  {
    goto LABEL_13;
  }

  v36 = v53;
  sub_10000E268(v31, v53, &qword_1005D97C8, &unk_1004F6A70);
  v37 = *(v34 + 48);
  v29 = v34 + 48;
  if (v37(v36, 1, a1) == 1)
  {
    sub_100025F40(v36, &qword_1005D97C8, &unk_1004F6A70);
    v38 = v51;
    sub_10034A6EC(v30, v51);
    sub_100351D64(v38, type metadata accessor for MessageBeingDownloaded);
    v39 = v31;
    return sub_100025F40(v39, &qword_1005D97C8, &unk_1004F6A70);
  }

  v48 = v36;
  v28 = v52;
  sub_100351BB4(v48, v52, type metadata accessor for MessageBeingDownloaded);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  sub_100025F40(v31, &qword_1005D97C8, &unk_1004F6A70);
  if (v30 >= v27[2])
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_100331A08(v28, v27 + v49 + v5);
  *v54 = v27;
  return result;
}

uint64_t sub_10034AF00@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v7 = sub_1004A5734();
  v8 = [a1 primitiveValueForKey:v7];

  if (v8)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    result = sub_100025F40(&v22, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_9;
  }

  sub_100351A14();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  sub_10033C238();
  v10 = v19;
  v11 = sub_1004A4414();
  v13 = v12;

  sub_100351A60();
  sub_1004A3F34();
  if (!v4)
  {

    sub_100014D40(v11, v13);

    v17 = 0;
    v16 = v22;
    v18 = v23;
    v15 = v24;
    v14 = v25 | (v26 << 32);
    goto LABEL_11;
  }

  sub_100014D40(v11, v13);

  v14 = 0;
  v15 = 0;
LABEL_10:
  v16 = 0uLL;
  v17 = 1;
  v18 = 0uLL;
LABEL_11:
  *a4 = v16;
  *(a4 + 16) = v18;
  *(a4 + 32) = v15;
  *(a4 + 40) = v14;
  *(a4 + 44) = BYTE4(v14);
  *(a4 + 45) = v17;
  return result;
}

uint64_t sub_10034B0D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10034B130();
  }

  return result;
}

uint64_t sub_10034B130()
{
  v142 = sub_1004A4374();
  v1 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = _s6LoggerVMa_0(0);
  v127 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v137 = &v117 - v5;
  __chkstk_darwin(v6);
  v125 = &v117 - v7;
  __chkstk_darwin(v8);
  v124 = &v117 - v9;
  __chkstk_darwin(v10);
  v123 = &v117 - v11;
  __chkstk_darwin(v12);
  v122 = &v117 - v13;
  v126 = v14;
  __chkstk_darwin(v15);
  v17 = &v117 - v16;
  swift_beginAccess();
  v18 = v0[18];
  v140 = v0;
  v136 = v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  v128 = v17;
  v19 = v17;
  v20 = v18;
  sub_100351AB4(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v19, _s6LoggerVMa_0);
  if (v20 >> 62)
  {
    goto LABEL_87;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v135 = OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger;

  v117 = v20;
  if (v21)
  {
    v23 = v20;
    v24 = 0;
    v20 = 0;
    v121 = v23 & 0xC000000000000001;
    v120 = v23 & 0xFFFFFFFFFFFFFF8;
    v119 = v23 + 32;
    v134 = (v1 + 8);
    p_attr = (&stru_1005CAFF8 + 8);
    *&v22 = 68158978;
    v132 = v22;
    *&v22 = 136315138;
    v131 = v22;
    v118 = v21;
    while (1)
    {
      if (v121)
      {
        v26 = sub_1004A6794();
        v27 = __OFADD__(v24, 1);
        v28 = v24 + 1;
        if (v27)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v24 >= *(v120 + 16))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v26 = *(v119 + 8 * v24);

        v27 = __OFADD__(v24, 1);
        v28 = v24 + 1;
        if (v27)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }
      }

      v130 = v28;
      v29 = v122;
      sub_100351AB4(v128, v122, _s6LoggerVMa_0);
      v30 = v123;
      sub_100351AB4(v29, v123, _s6LoggerVMa_0);
      v31 = v124;
      sub_100351BB4(v29, v124, _s6LoggerVMa_0);
      v32 = v125;
      sub_100351AB4(v30, v125, _s6LoggerVMa_0);
      v33 = (*(v127 + 80) + 24) & ~*(v127 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v26;
      sub_100351BB4(v32, v34 + v33, _s6LoggerVMa_0);
      sub_10000C9C0(&qword_1005DA488, &qword_1004F7710);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_100351CF0;
      *(v35 + 24) = v34;

      v1 = _s6LoggerVMa_0;
      sub_100351D64(v30, _s6LoggerVMa_0);

      sub_100351D64(v31, _s6LoggerVMa_0);
      sub_10000C9C0(&qword_1005DA490, &qword_1004F7718);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;

      v129 = v36;
      v0 = *(v36 + 16);
      v147 = v0;
      sub_1004A6AA4();
      v37 = __src;
      if (__src)
      {
        break;
      }

LABEL_5:
      v20 = v129;
      v24 = v130;
      if (v130 == v118)
      {
        goto LABEL_76;
      }
    }

    v1 = v151;
    v38 = v154;
    while (1)
    {
      v40 = [v37 p_attr[450]];
      v41 = [v40 isTemporaryID];

      if (!v41)
      {
        break;
      }

      v42 = sub_1004A5734();
      [v37 willAccessValueForKey:v42];

      v43 = [v37 primitiveName];
      if (v43)
      {
        v0 = v43;
        v20 = sub_1004A6294();
        v44 = sub_1004A62A4();
        v1 = sub_1004A6294();
        v45 = sub_1004A62A4();
        if (v20 < v1 || v45 < v20)
        {
          goto LABEL_78;
        }

        v1 = sub_1004A6294();
        v46 = sub_1004A62A4();
        if (v44 < v1 || v46 < v44)
        {
          goto LABEL_79;
        }

        v47 = v44 - v20;
        if (__OFSUB__(v44, v20))
        {
          goto LABEL_80;
        }

        if (v47)
        {
          if (v47 < 1)
          {
            sub_1004A6294();
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v1 = swift_allocObject();
          v48 = j__malloc_size(v1);
          *(v1 + 16) = v47;
          *(v1 + 24) = 2 * v48 - 64;
          v49 = sub_1004A6294();
          if (v49 != sub_1004A62A4())
          {
            v50 = (v1 + 32);
            v51 = ~v20 + v44;
            while (1)
            {
              v20 = sub_1004A62B4();
              v52 = sub_1004A6294();
              v53 = sub_1004A62A4();
              if (v49 < v52 || v49 >= v53)
              {
                break;
              }

              *v50 = v20;
              if (!v51)
              {
                p_attr = (&stru_1005CAFF8 + 8);
                goto LABEL_71;
              }

              ++v50;
              ++v49;
              --v51;
              if (v49 == sub_1004A62A4())
              {
                goto LABEL_86;
              }
            }

            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

LABEL_86:

          __break(1u);
LABEL_87:
          v21 = sub_1004A6A34();
          goto LABEL_3;
        }

        v1 = _swiftEmptyArrayStorage;
LABEL_71:

        MailboxName.init(_:)(v1);
      }

      v39 = sub_1004A5734();
      [v37 didAccessValueForKey:v39];

LABEL_12:
      v0 = v147;
      sub_1004A6AA4();
      v37 = __src;
      v1 = v151;
      v38 = v154;
      if (!__src)
      {
        goto LABEL_5;
      }
    }

    v148 = v1;
    v54 = [v37 p_attr[450]];
    v55 = [v54 URIRepresentation];

    v20 = v141;
    sub_1004A4344();

    v0 = v20;
    v56 = sub_1004A42E4();
    v58 = v57;
    (*v134)(v20, v142);
    v59 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v59 != 2)
      {
        goto LABEL_57;
      }

      v1 = *(v56 + 16);
      v63 = *(v56 + 24);
      v0 = (v58 & 0x3FFFFFFFFFFFFFFFLL);
      v20 = sub_1004A40D4();
      if (v20)
      {
        v0 = (v58 & 0x3FFFFFFFFFFFFFFFLL);
        v64 = sub_1004A4104();
        if (__OFSUB__(v1, v64))
        {
          goto LABEL_83;
        }

        v20 += v1 - v64;
      }

      v27 = __OFSUB__(v63, v1);
      v1 = v63 - v1;
      if (v27)
      {
        goto LABEL_82;
      }

      v65 = sub_1004A40F4();
      v66 = v65 >= v1 ? v1 : v65;
      if (!v20 || !v66)
      {
        goto LABEL_57;
      }

      v67 = sub_10015BEAC(v66, 0);
      if (v66 <= 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (!v59)
      {
        __src = v56;
        LOWORD(v151) = v58;
        BYTE2(v151) = BYTE2(v58);
        HIBYTE(v151) = BYTE3(v58);
        v152 = BYTE4(v58);
        v153 = BYTE5(v58);
        if (BYTE6(v58))
        {
          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v60 = swift_allocObject();
          v61 = j__malloc_size(v60);
          v60[2] = BYTE6(v58);
          v60[3] = 2 * v61 - 64;
          memcpy(v60 + 4, &__src, BYTE6(v58));
          v62 = v60;
LABEL_58:
          v71 = OpaqueMailboxID.init(rawValue:)(v62);
          rawValue = v71.rawValue._rawValue;
          hashValue = v71.hashValue;
          sub_100014D40(v56, v58);
          v74 = v136;
          v75 = v137;
          sub_100351AB4(v136, v137, _s6LoggerVMa_0);
          v76 = v74 + *(v139 + 20);
          v77 = *v76;
          v78 = *(v76 + 4);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v79 = v37;

          v80 = sub_1004A4A54();
          v81 = sub_1004A4A74();
          v82 = *(v81 - 8);
          v83 = *(v82 + 8);
          v143 = v82 + 8;
          v144 = v83;
          v83(v75, v81);
          v84 = sub_1004A6034();
          v85 = os_log_type_enabled(v80, v84);
          v86 = v148;
          v145 = v81;
          v146 = v79;
          if (v85)
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v133 = v71.hashValue;
            v89 = v88;
            __src = v88;
            *v87 = v132;
            *(v87 + 4) = 2;
            *(v87 + 8) = 256;
            *(v87 + 10) = v77;
            *(v87 + 11) = 1040;
            *(v87 + 13) = 8;
            *(v87 + 17) = 1024;
            *(v87 + 19) = v78;
            *(v87 + 23) = 2048;
            *(v87 + 25) = *(v38 + 16);

            *(v87 + 33) = 2080;
            v149 = v86;
            sub_1000D40AC();
            v90 = sub_1004A5A84();
            v92 = sub_10015BA6C(v90, v91, &__src);

            *(v87 + 35) = v92;
            _os_log_impl(&_mh_execute_header, v80, v84, "[%.*hhx-%.*X] Sending deferred messages-to-download reply with %ld message(s). (%s)", v87, 0x2Bu);
            sub_1000197E0(v89);
            rawValue = v71.rawValue._rawValue;
            hashValue = v133;
          }

          else
          {
          }

          v93 = swift_allocObject();
          *(v93 + 16) = rawValue;
          *(v93 + 24) = hashValue;
          *(v93 + 32) = 0;
          v94 = *(v38 + 16);
          if (v94)
          {
            __src = _swiftEmptyArrayStorage;
            sub_100091FA8(0, v94, 0);
            v95 = 0;
            v96 = __src;
            v97 = __src[2];
            v98 = 3 * v97;
            do
            {
              v99 = *(v38 + v95 + 32);
              v100 = *(v38 + v95 + 40);
              v101 = *(v38 + v95 + 48);
              __src = v96;
              v102 = v96[3];
              v103 = v97 + 1;
              if (v97 >= v102 >> 1)
              {
                sub_100091FA8((v102 > 1), v97 + 1, 1);
                v96 = __src;
              }

              v96[2] = v103;
              v104 = &v96[v98 + v95 / 8];
              *(v104 + 8) = v99;
              v104[5] = v100;
              *(v104 + 48) = v101;
              *(v104 + 49) = 1;
              v95 += 24;
              v97 = v103;
              --v94;
            }

            while (v94);
            v86 = v148;
          }

          else
          {
            v96 = _swiftEmptyArrayStorage;
          }

          *(v93 + 40) = v96;
          v105 = v140;
          v106 = v140[11];
          v106(v93 | 0x6000000000000000, 1);

          v107 = v105 + v135;
          v108 = v138;
          sub_100351AB4(v107, v138, _s6LoggerVMa_0);
          v109 = sub_1004A4A54();
          v144(v108, v145);
          v110 = sub_1004A6034();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            __src = v112;
            *v111 = v131;
            v149 = v86;
            sub_1000D40AC();
            v113 = sub_1004A5A84();
            v115 = sub_10015BA6C(v113, v114, &__src);

            *(v111 + 4) = v115;
            _os_log_impl(&_mh_execute_header, v109, v110, "%s <- complete", v111, 0xCu);
            sub_1000197E0(v112);
          }

          v39 = v146;
          v106(v86, 0);

          p_attr = &stru_1005CAFF8.attr;
          goto LABEL_12;
        }

LABEL_57:
        v62 = _swiftEmptyArrayStorage;
        goto LABEL_58;
      }

      v1 = (v56 >> 32) - v56;
      if (v56 >> 32 < v56)
      {
        goto LABEL_81;
      }

      v20 = sub_1004A40D4();
      if (v20)
      {
        v0 = (v58 & 0x3FFFFFFFFFFFFFFFLL);
        v68 = sub_1004A4104();
        if (__OFSUB__(v56, v68))
        {
          goto LABEL_84;
        }

        v20 += v56 - v68;
      }

      v69 = sub_1004A40F4();
      if (v69 >= v1)
      {
        v66 = (v56 >> 32) - v56;
      }

      else
      {
        v66 = v69;
      }

      if (!v20 || !v66)
      {
        goto LABEL_57;
      }

      v67 = sub_10015BEAC(v66, 0);
      if (v66 <= 0)
      {
        goto LABEL_89;
      }
    }

    v70 = v67;
    memmove(v67 + 4, v20, v66);
    v62 = v70;
    goto LABEL_58;
  }

LABEL_76:

  return sub_100351D64(v128, _s6LoggerVMa_0);
}

uint64_t sub_10034BFE4()
{

  swift_unknownObjectRelease();

  sub_100351D64(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, _s6LoggerVMa_0);
  sub_100351D64(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, _s6LoggerVMa_0);
  return v0;
}

uint64_t sub_10034C0B0()
{
  sub_10034BFE4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchIndexPersistence(uint64_t a1)
{
  result = qword_1005DA2E0;
  if (!qword_1005DA2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034C15C(uint64_t a1)
{
  result = _s6LoggerVMa_0(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10034C254(unint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);

  os_unfair_lock_lock(v7 + 5);
  os_unfair_lock_opaque = v7[4]._os_unfair_lock_opaque;
  v7[4]._os_unfair_lock_opaque = (os_unfair_lock_opaque + 1) & 0xFFFFFF;
  os_unfair_lock_unlock(v7 + 5);

  sub_100351AB4(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, v6, _s6LoggerVMa_0);
  sub_10011D8FC(a1);
  v9 = sub_1004A4A54();
  v10 = sub_1004A4A74();
  (*(*(v10 - 8) + 8))(v6, v10);
  v11 = sub_1004A6034();
  sub_100020EDC(a1);
  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136315394;
    v24[3] = os_unfair_lock_opaque;
    sub_1000D40AC();
    v13 = sub_1004A5A84();
    v15 = sub_10015BA6C(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = Action.kind.getter(a1);
    v17 = Action.Kind.description.getter(v16);
    v19 = sub_10015BA6C(v17, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v11, "%s -> %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v2 + 48);
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = a1;
  *(v21 + 32) = os_unfair_lock_opaque;
  aBlock[4] = sub_10034C6A4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5018;
  v22 = _Block_copy(aBlock);
  sub_10011D8FC(a1);

  [v20 performBlock:v22];
  _Block_release(v22);
  return os_unfair_lock_opaque;
}

uint64_t sub_10034C56C(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = 0;
  (*(a1 + 88))(v4 | 0x1000000000000004, 1);
}

uint64_t sub_10034C5E8(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  (*(a1 + 88))(v4 | 0x1000000000000000, 1);
}

uint64_t sub_10034C664()
{

  sub_100020EDC(*(v0 + 24));

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_10034C6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034C6E8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v39);
  __chkstk_darwin(v6);
  v38 = &v33 - v7;
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v37 = OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger;
  sub_100351AB4(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, &v33 - v9, _s6LoggerVMa_0);
  v11 = sub_1004A4A54();
  v12 = sub_1004A4A74();
  v13 = *(*(v12 - 8) + 8);
  v13(v10, v12);
  v14 = sub_1004A6034();
  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v3;
    v16 = v15;
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v16 = 136315138;
    v40 = v4;
    sub_1000D40AC();
    v17 = sub_1004A5A84();
    v34 = v11;
    v19 = v13;
    v20 = v4;
    v21 = sub_10015BA6C(v17, v18, v41);

    *(v16 + 4) = v21;
    v4 = v20;
    v13 = v19;
    v22 = v34;
    _os_log_impl(&_mh_execute_header, v34, v14, "%s -- on context", v16, 0xCu);
    sub_1000197E0(v35);

    v3 = v36;
  }

  else
  {
  }

  sub_10034CCC8(a1, v4);
  if (v23)
  {
    v24 = v38;
    sub_100351AB4(v3 + v37, v38, _s6LoggerVMa_0);
    v25 = sub_1004A4A54();
    v13(v24, v12);
    v26 = sub_1004A6034();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136315138;
      v40 = v4;
      sub_1000D40AC();
      v29 = sub_1004A5A84();
      v31 = sub_10015BA6C(v29, v30, v41);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s -- async", v27, 0xCu);
      sub_1000197E0(v28);
    }
  }

  else
  {
    sub_10034F078(v4);
  }

  return sub_100309448();
}

void sub_10034CCC8(unint64_t a1, int a2)
{
  LODWORD(v369) = a2;
  v3 = type metadata accessor for Activity(0);
  __chkstk_darwin(v3 - 8);
  v366 = &v356 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageSectionData(0);
  __chkstk_darwin(v5 - 8);
  v367 = &v356 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v357);
  v358 = &v356 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s11QueuedItemsV4ItemVMa(0);
  v371 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v370 = &v356 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = _s5StateV7RequestVMa(0);
  __chkstk_darwin(v359);
  v360 = (&v356 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v11 - 8);
  v362 = &v356 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v361 = &v356 - v14;
  __chkstk_darwin(v15);
  v368 = &v356 - v16;
  __chkstk_darwin(v17);
  v363 = &v356 - v18;
  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v364 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v356 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v365 = &v356 - v23;
  v24 = sub_10000C9C0(&qword_1005DA3F0, &qword_1004F7668);
  __chkstk_darwin(v24);
  v26 = &v356 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v356 - v28;
  __chkstk_darwin(v30);
  v32 = &v356 - v31;
  v33 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v33 - 8);
  v35 = &v356 - v34;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v159 = *(v372 + 14);

      v159(v160);
      goto LABEL_100;
    case 2uLL:
    case 5uLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x1BuLL:
    case 0x21uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x2AuLL:
      return;
    case 3uLL:

      v77 = v372;
      v78 = v416;
      v79 = sub_10035276C(v76);
      if (v78)
      {
        goto LABEL_100;
      }

      v80 = v79;
      v416 = 0;

      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v83 = *(v77 + 88);
      v82 = *(v77 + 96);

      v83(v81 | 0x2000000000000000, 1);

      v84 = *(v80 + 16);
      if (v84)
      {
        v371 = v82;
        v372 = v83;
        v379[0] = _swiftEmptyArrayStorage;
        sub_1000923A8(0, v84, 0);
        v85 = v379[0];
        v370 = v80;
        v86 = (v80 + 40);
        do
        {
          v87 = *(v86 - 1);
          v88 = *v86;
          v379[0] = v85;
          v90 = v85[2];
          v89 = v85[3];

          if (v90 >= v89 >> 1)
          {
            sub_1000923A8((v89 > 1), v90 + 1, 1);
            v85 = v379[0];
          }

          v86 += 12;
          v85[2] = v90 + 1;
          v91 = &v85[2 * v90];
          v91[4] = v87;
          v91[5] = v88;
          --v84;
        }

        while (v84);

        v83 = v372;
      }

      else
      {

        v85 = _swiftEmptyArrayStorage;
      }

      v329 = swift_allocObject();
      *(v329 + 16) = _swiftEmptySetSingleton;
      *(v329 + 24) = v85;
      v83(v329 | 0x2000000000000004, 1);
      goto LABEL_145;
    case 4uLL:
      v110 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v111 = _swiftEmptyArrayStorage;
      v376 = _swiftEmptyArrayStorage;
      v112 = 1 << *(v110 + 32);
      v113 = -1;
      if (v112 < 64)
      {
        v113 = ~(-1 << v112);
      }

      v114 = v113 & *(v110 + 56);
      v115 = (v112 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v116 = 0;
      while (2)
      {
        if (v114)
        {
          goto LABEL_38;
        }

LABEL_34:
        v117 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_163:

          [a1 didAccessValueForKey:sub_1004A5734()];
          __break(1u);
          goto LABEL_164;
        }

        if (v117 < v115)
        {
          v114 = *(v110 + 56 + 8 * v117);
          ++v116;
          if (v114)
          {
            v116 = v117;
LABEL_38:
            v118 = *(v110 + 48) + ((v116 << 10) | (16 * __clz(__rbit64(v114))));
            a1 = *v118;
            LODWORD(v118) = *(v118 + 8);
            v379[0] = a1;
            LODWORD(v379[1]) = v118;

            v119 = v416;
            sub_10034F258(v379, v372, &v373);
            v416 = v119;

            if (v373)
            {
              sub_1004A5BF4();
              if (*((v376 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v376 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1004A5C44();
              }

              a1 = &v376;
              sub_1004A5C84();
              v111 = v376;
            }

            v114 &= v114 - 1;
            continue;
          }

          goto LABEL_34;
        }

        break;
      }

      sub_1003530B8(v111);
LABEL_100:

      return;
    case 6uLL:
      v161 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v162 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      LODWORD(v371) = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v163 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v164 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v165 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v369 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v370 = v164;
      v166 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v167 = v372;
      v168 = v416;
      v170 = sub_10032F358(v161, v162);
      v416 = v168;
      if (!v168)
      {
        v276 = v169;
        (*(v364 + 56))(v35, 1, 1, v19, v170);
        sub_10030B530(v276, v35, *(v167 + 64));
        sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
        LOBYTE(v379[0]) = v163;
        LOBYTE(v376) = v165;
        LOBYTE(v373) = v166;
        v375 = 1;
        LODWORD(v398) = v371;
        BYTE4(v398) = v163;
        *(&v398 + 1) = v370;
        v399 = v165;
        v400 = v369;
        v401 = v166;
        v402 = 0;
        v403 = 1;
        sub_10033BB90(&v398);
      }

      return;
    case 7uLL:
      v105 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v106 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);

      v108 = v416;
      sub_10032F358(v107, v106);
      if (v108)
      {
        goto LABEL_100;
      }

      v266 = v109;
      v267 = sub_1004A5734();
      [v266 willAccessValueForKey:v267];

      sub_10034AF00(v266, v380);
      v268 = v380[4];
      v269 = v381;
      v270 = v382;
      v271 = sub_1004A5734();
      [v266 didAccessValueForKey:v271];

      v416 = 0;
      if (v383)
      {
        goto LABEL_100;
      }

      v379[0] = v268;
      LODWORD(v379[1]) = v269;
      if (v270)
      {
        goto LABEL_100;
      }

      v272 = HIDWORD(v379[0]);
      v273 = v379[1];
      v274 = swift_allocObject();
      *(v274 + 16) = v105;
      *(v274 + 24) = v106;
      *(v274 + 32) = v272;
      *(v274 + 36) = v273;
      (*(v372 + 11))(v274 | 0x4000000000000000, 1);
      goto LABEL_145;
    case 8uLL:
      v209 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v210 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v211 = v416;
      sub_10032F358(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      if (v211)
      {
        return;
      }

      a1 = v212;
      v372 = v209;
      v213 = sub_1004A5734();
      [a1 willAccessValueForKey:v213];

      sub_10034AF00(a1, v384);
      v416 = 0;
      v214 = v384[0];
      v215 = v384[1];
      v217 = v385;
      v216 = v386;
      v218 = v387;
      v219 = sub_1004A5734();
      [a1 didAccessValueForKey:v219];

      if (v388)
      {
        LODWORD(v214) = 0;
        v215 = 0;
        v216 = 0;
        LOBYTE(v220) = 1;
        LOBYTE(v379[0]) = 1;
        LOBYTE(v376) = 1;
        LOBYTE(v373) = 1;
        v217 = 1;
        v218 = 1;
      }

      else
      {
        v220 = HIDWORD(v214) & 1;
      }

      LOBYTE(v379[0]) = v220;
      LOBYTE(v376) = v217 & 1;
      LOBYTE(v373) = v218 & 1;
      v375 = v210;
      LODWORD(v404) = v214;
      BYTE4(v404) = v220;
      *(&v404 + 1) = v215;
      v405 = v217 & 1;
      v406 = v216;
      v407 = v218 & 1;
      v408 = v372;
      v409 = v210;
      sub_10033BB90(&v404);
      goto LABEL_53;
    case 9uLL:
      v221 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v222 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v223 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v370 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v371 = v223;
      v369 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);

      v225 = v416;
      sub_10032F358(v224, v222);
      if (v225)
      {
        goto LABEL_100;
      }

      v368 = v222;
      v279 = v226;
      sub_1003533D8(v32, v226, v371, v370, v369);
      v416 = 0;
      v331 = v330;

      *&v32[*(v24 + 48)] = v331;
      v332 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
      v371 = swift_allocBox();
      v334 = v333;
      v335 = *(v332 + 48);
      v336 = *(v332 + 64);
      v337 = v368;
      *v333 = v221;
      v333[1] = v337;
      sub_10000E268(v32, v29, &qword_1005DA3F0, &qword_1004F7668);
      sub_100020950(v29, v334 + v335);
      sub_10000E268(v32, v26, &qword_1005DA3F0, &qword_1004F7668);
      *(v334 + v336) = *&v26[*(v24 + 48)];
      (*(v372 + 11))(v371 | 0x4000000000000004, 1);

      sub_100025F40(v32, &qword_1005DA3F0, &qword_1004F7668);
      v321 = &unk_1005D91B0;
      v322 = &unk_1004CF400;
      v320 = v26;
      goto LABEL_156;
    case 0xAuLL:
      v67 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      v68 = swift_projectBox();
      v69 = *v68;
      v70 = v68[1];
      v71 = v365;
      sub_10000E268(v68 + *(v67 + 48), v365, &qword_1005CD1D0, &unk_1004CF2C0);
      v72 = v372;

      v74 = v416;
      sub_10032F358(v73, v70);
      if (v74)
      {
        sub_100025F40(v71, &qword_1005CD1D0, &unk_1004CF2C0);
        goto LABEL_100;
      }

      v264 = v363;
      v265 = v75;
      sub_1003538F0(v75, v71);
      v416 = 0;

      v323 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
      v324 = swift_allocBox();
      v326 = v325;
      v327 = *(v323 + 48);
      v328 = *(v323 + 64);
      *v325 = v69;
      v325[1] = v70;
      sub_10000E268(v264, v325 + v327, &unk_1005D91B0, &unk_1004CF400);
      v103 = &qword_1005CD1D0;
      v104 = &unk_1004CF2C0;
      sub_10000E268(v71, v326 + v328, &qword_1005CD1D0, &unk_1004CF2C0);
      (*(v72 + 88))(v324 | 0x5000000000000000, 1);

      sub_100025F40(v264, &unk_1005D91B0, &unk_1004CF400);
      v320 = v71;
LABEL_142:
      v321 = v103;
      v322 = v104;
      goto LABEL_156;
    case 0xBuLL:
      v182 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v183 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v184 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v185 = v416;
      sub_10032F358(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      if (v185)
      {
        return;
      }

      v416 = 0;
      v187 = v186;
      sub_100353C00(v186, v182, v183, v184);
      goto LABEL_84;
    case 0xCuLL:
      v188 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
      v189 = swift_projectBox();
      v190 = *(v189 + 8);
      sub_10000E268(v189 + *(v188 + 48), v21, &qword_1005CD1D0, &unk_1004CF2C0);
      v191 = v372;

      v193 = v416;
      sub_10032F358(v192, v190);
      v416 = v193;
      if (v193)
      {
        sub_100025F40(v21, &qword_1005CD1D0, &unk_1004CF2C0);

        return;
      }

      v277 = v194;

      sub_10000E268(v21, v35, &qword_1005CD1D0, &unk_1004CF2C0);
      (*(v364 + 56))(v35, 0, 1, v19);
      sub_10030B530(v277, v35, *(v191 + 64));

      sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
      v320 = v21;
      v321 = &qword_1005CD1D0;
      v322 = &unk_1004CF2C0;
      goto LABEL_156;
    case 0xDuLL:
      v227 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v228 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v229 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v230 = v416;
      sub_10032F358(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      if (v230)
      {
        return;
      }

      v416 = 0;
      v187 = v231;
      sub_10035434C(v231, v227, v228, v229);
LABEL_84:

      return;
    case 0xFuLL:
      v258 = v416;
      sub_10032F358(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      if (v258)
      {
        return;
      }

      v416 = 0;
      goto LABEL_97;
    case 0x11uLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v37 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v140 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v141 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v142 = sub_10032EB08(*(v372 + 2), *(v372 + 3), v36, v37);
      if (!v142)
      {
        goto LABEL_50;
      }

      a1 = v142;
      LODWORD(v371) = v141;
      v372 = v140;
      v143 = sub_1004A5734();
      [a1 willAccessValueForKey:v143];

      v144 = v416;
      sub_10034AF00(a1, v389);
      v416 = v144;
      if (v144)
      {
        goto LABEL_163;
      }

      v145 = v389[0];
      v146 = v389[1];
      v147 = v390;
      v148 = v391;
      v149 = v393;
      v150 = v392;
      v151 = sub_1004A5734();
      [a1 didAccessValueForKey:v151];

      if (v394)
      {
        v152 = 0;
        LODWORD(v145) = 0;
        v146 = 0;
        LOBYTE(v153) = 1;
        LOBYTE(v379[0]) = 1;
        LOBYTE(v376) = 1;
        LOBYTE(v373) = 1;
        v147 = 1;
        LOBYTE(v154) = 1;
      }

      else
      {
        v379[0] = v148;
        LODWORD(v379[1]) = v150;
        v152 = *(v379 + 4);
        v153 = HIDWORD(v145) & 1;
        v154 = ((v150 | (v149 << 32)) >> 32) & 1;
      }

      LOBYTE(v376) = v153;
      LOBYTE(v373) = v147 & 1;
      v375 = v371;
      v374 = v154;
      LODWORD(v410) = v145;
      BYTE4(v410) = v153;
      *(&v410 + 1) = v146;
      v411 = v147 & 1;
      v412 = v372;
      v413 = v371;
      v414 = v152;
      v415 = v154;
      sub_10033BB90(&v410);
      goto LABEL_53;
    case 0x12uLL:
      v129 = sub_10000C9C0(&qword_1005CEE60, &unk_1004D1AC0);
      v130 = swift_projectBox();
      v131 = *v130;
      v132 = *(v130 + 8);
      v133 = *(v130 + 16);
      v134 = *(v130 + *(v129 + 96));
      v135 = v368;
      sub_10000E268(v130 + *(v129 + 64), v368, &unk_1005D91B0, &unk_1004CF400);
      v136 = v372;

      v138 = v416;
      sub_10032F358(v137, v132);
      if (v138)
      {
        sub_100025F40(v135, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_100;
      }

      v416 = 0;
      if (v133)
      {

        v275 = _swiftEmptyArrayStorage;
LABEL_155:
        v354 = swift_allocObject();
        *(v354 + 16) = v131;
        *(v354 + 24) = v132;
        *(v354 + 32) = v133;
        *(v354 + 40) = v275;
        v355 = *(v136 + 88);

        v355(v354 | 0x6000000000000000, 1);

        sub_100351888(v275, 0, 0, 0, 1);
        v321 = &unk_1005D91B0;
        v322 = &unk_1004CF400;
        v320 = v135;
LABEL_156:
        sub_100025F40(v320, v321, v322);
        return;
      }

      LODWORD(v363) = v133;
      v364 = v132;
      v367 = v131;
      v281 = *(v136 + 72);
      v282 = v139;
      swift_beginAccess();
      v366 = v282;
      v283 = sub_100334C28(v282, v281);
      swift_endAccess();
      v365 = v136 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      v285 = v359;
      v284 = v360;
      sub_10000E268(v135, v360 + *(v359 + 20), &unk_1005D91B0, &unk_1004CF400);
      *v284 = v369;
      *(v284 + *(v285 + 24)) = v134;
      v286 = *(v283 + 24);
      swift_beginAccess();
      v287 = *(v286 + 48);

      os_unfair_lock_lock((v287 + 48));
      a1 = *(v287 + 16);
      v289 = *(a1 + 24);
      v288 = *(a1 + 32);
      if (*(a1 + 16) >= v288 + v289)
      {
        v290 = v288 + v289;
      }

      else
      {
        v290 = *(a1 + 16);
      }

      v291 = (*(v371 + 80) + 40) & ~*(v371 + 80);
      v376 = *(v287 + 16);
      v377 = v288;
      v378 = v290;

      v292 = 0;
      while (2)
      {
        v293 = v288 == v290;
        v294 = v370;
        if (!v293)
        {
          goto LABEL_130;
        }

        if (sub_1002D98D4())
        {
          a1 = v376;
          v288 = v377;
LABEL_130:
          v377 = v288 + 1;
          sub_100351AB4(a1 + v291 + *(v371 + 72) * v288, v294, _s11QueuedItemsV4ItemVMa);
          v295 = *(v294 + *(type metadata accessor for PendingItem(0) + 28));
          v296 = __OFADD__(v292, v295);
          v292 += v295;
          if (v296)
          {
            goto LABEL_160;
          }

          sub_100351D64(v294, _s11QueuedItemsV4ItemVMa);
          v290 = v378;
          ++v288;
          continue;
        }

        break;
      }

      os_unfair_lock_unlock((v287 + 48));

      swift_beginAccess();

      v297 = v360;
      v298 = v365;
      sub_10033913C(v360, v289, 457, v292, 80000000, v365, (v283 + 40), v283, &v395);
      v299 = v395;
      swift_endAccess();

      sub_100351D64(v297, _s5StateV7RequestVMa);

      if (v397)
      {
        v376 = v299;

        v300 = v416;
        sub_100350364(&v376);
        if (!v300)
        {
          v416 = 0;
          v301 = v376;
          v302 = *(v376 + 16);
          if (v302)
          {
            v376 = _swiftEmptyArrayStorage;
            v371 = v301;
            sub_100091FA8(0, v302, 0);
            v303 = v371;
            v304 = 0;
            v275 = v376;
            v305 = *(v376 + 16);
            v306 = 24 * v305;
            do
            {
              v307 = *(v303 + v304 + 32);
              v308 = *(v303 + v304 + 40);
              v309 = *(v303 + v304 + 48);
              v376 = v275;
              v310 = *(v275 + 3);
              v311 = v305 + 1;
              if (v305 >= v310 >> 1)
              {
                v313 = v306;
                sub_100091FA8((v310 > 1), v305 + 1, 1);
                v306 = v313;
                v303 = v371;
                v275 = v376;
              }

              *(v275 + 2) = v311;
              v312 = &v275[v306 + v304];
              *(v312 + 8) = v307;
              *(v312 + 5) = v308;
              v312[48] = v309;
              v312[49] = 1;
              v304 += 24;
              v305 = v311;
              --v302;
            }

            while (v302);

            sub_100351894(&v395);
          }

          else
          {

            sub_100351894(&v395);
            v275 = _swiftEmptyArrayStorage;
          }

          v136 = v372;
          v131 = v367;
          v135 = v368;
          v132 = v364;
          LOBYTE(v133) = v363;
          goto LABEL_155;
        }

LABEL_164:

        __break(1u);
        JUMPOUT(0x10034EFC4);
      }

      v338 = *(&v395 + 1);
      v339 = v396;

      v340 = v358;
      sub_100351AB4(v298, v358, _s6LoggerVMa_0);
      v341 = v298 + *(v357 + 20);
      v342 = *v341;
      v343 = *(v341 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v344 = sub_1004A4A54();
      v345 = sub_1004A4A74();
      (*(*(v345 - 8) + 8))(v340, v345);
      v346 = sub_1004A6034();
      if (os_log_type_enabled(v344, v346))
      {
        v347 = swift_slowAlloc();
        v348 = swift_slowAlloc();
        v372 = v338;
        v349 = v348;
        v376 = v348;
        *v347 = 68159490;
        *(v347 + 4) = 2;
        *(v347 + 8) = 256;
        *(v347 + 10) = v342;
        *(v347 + 11) = 1040;
        *(v347 + 13) = 8;
        *(v347 + 17) = 1024;
        *(v347 + 19) = v343;
        *(v347 + 23) = 2080;
        LODWORD(v373) = v369;
        sub_1000D40AC();
        v350 = sub_1004A5A84();
        v352 = sub_10015BA6C(v350, v351, &v376);

        *(v347 + 25) = v352;
        *(v347 + 33) = 2048;
        *(v347 + 35) = v299;
        *(v347 + 43) = 2048;
        *(v347 + 45) = v372;
        *(v347 + 53) = 1024;
        if (v339 == v339)
        {
          v353 = v339;
        }

        else
        {
          v353 = 0;
        }

        *(v347 + 55) = v353;
        _os_log_impl(&_mh_execute_header, v344, v346, "[%.*hhx-%.*X] (%s) Deferring returning messages-to-download. Queue is full: %ld of %ld items, queued memory pressure %{iec-bytes}d", v347, 0x3Bu);
        sub_1000197E0(v349);
      }

      sub_100025F40(v368, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x13uLL:
      v40 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v41 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v42 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v43 = v372;

      v45 = v416;
      sub_10032F358(v44, v41);
      if (v45)
      {
        goto LABEL_100;
      }

      v47 = v46;
      v48 = v361;
      sub_1003546E4(v46, v42, v361);
      v416 = 0;

      v314 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
      v315 = swift_allocBox();
      v317 = v316;
      v318 = *(v314 + 48);
      v319 = *(v314 + 64);
      *v316 = v40;
      v316[1] = v41;
      sub_10000E268(v48, v316 + v318, &unk_1005D91B0, &unk_1004CF400);
      *(v317 + v319) = v42;
      (*(v43 + 88))(v315 | 0x5000000000000004, 1);

      v320 = v48;
      v321 = &unk_1005D91B0;
      v322 = &unk_1004CF400;
      goto LABEL_156;
    case 0x14uLL:
      v49 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v50 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v53 = v372;
      v54 = *(v372 + 2);
      v55 = *(v372 + 3);

      v56 = sub_10032EB08(v54, v55, v49, v50);
      if (!v56)
      {
        goto LABEL_91;
      }

      v57 = v56;
      sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1004CEAA0;
      *(v58 + 32) = _swiftEmptyArrayStorage;

      v59 = swift_allocObject();
      *(v59 + 16) = v49;
      *(v59 + 24) = v50;
      *(v59 + 28) = v51;
      *(v59 + 32) = v52;
      *(v59 + 40) = v58;
      *(v59 + 48) = 0;
      (*(v53 + 88))(v59 | 0x6000000000000004, 1);
      goto LABEL_145;
    case 0x15uLL:
      v232 = swift_projectBox();
      v49 = *v232;
      v50 = *(v232 + 8);
      v233 = *(v372 + 2);
      v234 = *(v372 + 3);

      v235 = sub_10032EB08(v233, v234, v49, v50);
      if (!v235)
      {
        goto LABEL_91;
      }

      goto LABEL_115;
    case 0x16uLL:
      v248 = swift_projectBox();
      v249 = v367;
      sub_100351AB4(v248, v367, type metadata accessor for MessageSectionData);
      v250 = *v249;
      v251 = *(v249 + 8);
      v252 = v372;
      v253 = sub_10032EB08(*(v372 + 2), *(v372 + 3), *v249, v251);
      if (v253)
      {
        v254 = v253;
        v255 = *(v249 + 12);
        __chkstk_darwin(v253);
        *(&v356 - 4) = v249;
        *(&v356 - 3) = v252;
        *(&v356 - 2) = v256;
        swift_beginAccess();
        v257 = v416;
        sub_10034A820(v254, v255, sub_10035180C, (&v356 - 6));
        if (!v257)
        {
          v416 = 0;
          swift_endAccess();

          v122 = type metadata accessor for MessageSectionData;
          v123 = v249;
LABEL_42:
          sub_100351D64(v123, v122);
          return;
        }

        swift_endAccess();
      }

      else
      {
        sub_10034F4FC();
        swift_allocError();
        *v280 = v250;
        *(v280 + 8) = v251;
        swift_willThrow();
      }

      sub_100351D64(v249, type metadata accessor for MessageSectionData);
      return;
    case 0x17uLL:
      v195 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v196 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v197 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v198 = v372;
      v199 = sub_10032EB08(*(v372 + 2), *(v372 + 3), v195, v196);
      if (!v199)
      {
        sub_10034F4FC();
        swift_allocError();
        *v278 = v195;
        *(v278 + 8) = v196;
        swift_willThrow();

        return;
      }

      v200 = v199;
      swift_beginAccess();

      a1 = v200;
      v201 = v416;
      sub_100330BD4(a1, v197, (v198 + 128), v198, v197, a1);
      v416 = v201;
      if (!v201)
      {
        swift_endAccess();
LABEL_53:

        return;
      }

      swift_endAccess();
      __break(1u);
      goto LABEL_163;
    case 0x18uLL:
      v156 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v157 = v416;
      sub_10032F358(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      if (v157)
      {
        return;
      }

      a1 = v158;
      sub_10035A590(v158, v156);
      v416 = 0;
      goto LABEL_53;
    case 0x19uLL:
      v202 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v203 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v204 = v372;

      v206 = v416;
      sub_10032F358(v205, v203);
      if (v206)
      {
        goto LABEL_100;
      }

      v416 = 0;

      v208 = swift_allocObject();
      *(v208 + 16) = v202;
      *(v208 + 24) = v203;
      *(v208 + 32) = _swiftEmptyArrayStorage;
      *(v208 + 40) = 1;
      (*(v204 + 88))(v208 | 0x8000000000000000, 1);
      goto LABEL_145;
    case 0x1AuLL:
      v92 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v93 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v94 = v372;

      v96 = v416;
      sub_10032F358(v95, v93);
      if (v96)
      {
        goto LABEL_100;
      }

      v416 = 0;

      sub_100016D2C();
      v98 = v362;
      sub_1004A7114();
      v99 = sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480);
      v100 = swift_allocBox();
      v101 = *(v99 + 48);
      *v102 = v92;
      v102[1] = v93;
      v103 = &unk_1005D91B0;
      v104 = &unk_1004CF400;
      sub_10000E268(v98, v102 + v101, &unk_1005D91B0, &unk_1004CF400);
      (*(v94 + 88))(v100 | 0x8000000000000004, 1);

      v320 = v98;
      goto LABEL_142;
    case 0x1CuLL:
      v60 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v61 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v62 = v372;
      v63 = *(v372 + 2);
      v64 = *(v372 + 3);

      v65 = sub_10032EB08(v63, v64, v60, v61);
      if (v65)
      {

        v66 = swift_allocObject();
        *(v66 + 16) = v60;
        *(v66 + 24) = v61;
        *(v66 + 32) = _swiftEmptyArrayStorage;
        *(v66 + 40) = 1;
        (*(v62 + 88))(v66 | 0x7000000000000000, 1);
        goto LABEL_145;
      }

      sub_10034F4FC();
      swift_allocError();
      *v263 = v60;
      *(v263 + 8) = v61;
      goto LABEL_103;
    case 0x1DuLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v37 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v39 = sub_10032EB08(*(v372 + 2), *(v372 + 3), v36, v37);
      if (!v39)
      {
        goto LABEL_50;
      }

      a1 = v39;
      sub_100351764();
      swift_allocError();
      swift_willThrow();
      goto LABEL_53;
    case 0x1EuLL:
    case 0x1FuLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v37 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v38 = sub_10032EB08(*(v372 + 2), *(v372 + 3), v36, v37);
      if (v38)
      {
LABEL_97:
      }

      else
      {
LABEL_50:
        sub_10034F4FC();
        swift_allocError();
        *v155 = v36;
        *(v155 + 8) = v37;
        swift_willThrow();
      }

      return;
    case 0x20uLL:
      v259 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v260 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v261 = swift_allocObject();
      *(v261 + 16) = v259;
      *(v261 + 24) = v260;
      *(v261 + 32) = _swiftEmptyArrayStorage;
      *(v261 + 40) = 1;
      v262 = *(v372 + 11);

      v262(v261 | 0x9000000000000000, 1);
      goto LABEL_145;
    case 0x22uLL:
      v236 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);

      v238 = v236;
      v239 = v416;
      sub_10032F358(v237, v238);
      if (v239)
      {
        goto LABEL_100;
      }

      v416 = 0;
LABEL_115:
      a1 = v235;

      goto LABEL_53;
    case 0x25uLL:
      v120 = swift_projectBox();
      v121 = v366;
      sub_100351AB4(v120, v366, type metadata accessor for Activity);
      sub_100354CA8(v121);
      v122 = type metadata accessor for Activity;
      v123 = v121;
      goto LABEL_42;
    case 0x26uLL:
      v171 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v172 = 1 << *(v171 + 32);
      v173 = -1;
      if (v172 < 64)
      {
        v173 = ~(-1 << v172);
      }

      v174 = v173 & *(v171 + 64);
      v175 = (v172 + 63) >> 6;

      v176 = 0;
      v177 = v416;
      if (v174)
      {
        goto LABEL_61;
      }

      do
      {
LABEL_62:
        v178 = v176 + 1;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_159;
        }

        if (v178 >= v175)
        {
          v416 = v177;
LABEL_145:

          return;
        }

        v174 = *(v171 + 64 + 8 * v178);
        ++v176;
      }

      while (!v174);
      while (1)
      {
        v179 = *(*(v171 + 48) + ((v178 << 10) | (16 * __clz(__rbit64(v174)))) + 8);

        sub_10032F358(v180, v179);
        if (v177)
        {
          break;
        }

        a1 = v181;
        v174 &= v174 - 1;

        v176 = v178;
        if (!v174)
        {
          goto LABEL_62;
        }

LABEL_61:
        v178 = v176;
      }

      return;
    case 0x29uLL:
      v49 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v50 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v240 = v372;
      v241 = *(v372 + 2);
      v242 = *(v372 + 3);

      v243 = sub_10032EB08(v241, v242, v49, v50);
      if (v243)
      {
        v244 = v243;
        v245 = sub_10016324C(_swiftEmptyArrayStorage);

        v246 = swift_allocObject();
        *(v246 + 16) = v49;
        *(v246 + 24) = v50;
        *(v246 + 32) = v245;
        (*(v240 + 88))(v246 | 0xA000000000000004, 1);
        goto LABEL_145;
      }

LABEL_91:
      sub_10034F4FC();
      swift_allocError();
      *v247 = v49;
      *(v247 + 8) = v50;
LABEL_103:
      swift_willThrow();
      return;
    case 0x2BuLL:
      sub_10035527C(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      return;
    case 0x2CuLL:
      if (a1 == 0xB000000000000010)
      {
        sub_1003525AC();
      }

      return;
    default:
      v124 = *(a1 + 16);
      v125 = *(v372 + 4);
      v126 = swift_allocObject();
      swift_weakInit();
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      v128 = v369;
      *(v127 + 24) = v124;
      *(v127 + 28) = v128;

      v125(sub_100351A08, v127);

      return;
  }
}

uint64_t sub_10034F078(unsigned int a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100351AB4(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, v6, _s6LoggerVMa_0);
  v7 = sub_1004A4A54();
  v8 = sub_1004A4A74();
  (*(*(v8 - 8) + 8))(v6, v8);
  v9 = sub_1004A6034();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v16[1] = a1;
    sub_1000D40AC();
    v12 = sub_1004A5A84();
    v14 = sub_10015BA6C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v9, "%s <- complete", v10, 0xCu);
    sub_1000197E0(v11);
  }

  return (*(v2 + 88))(a1, 0);
}

void sub_10034F258(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_10032EB08(*(a2 + 16), *(a2 + 24), *a1, v10);
  if (!v11)
  {
    v12 = a2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    sub_100351AB4(a2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v8, _s6LoggerVMa_0);
    v13 = (v12 + *(v6 + 20));
    v14 = *v13;
    v15 = *(v13 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v16 = sub_1004A4A54();
    v17 = sub_1004A4A74();
    (*(*(v17 - 8) + 8))(v8, v17);
    v18 = sub_1004A6014();

    if (os_log_type_enabled(v16, v18))
    {
      v19 = swift_slowAlloc();
      v28 = v15;
      v20 = v19;
      v21 = swift_slowAlloc();
      v22 = v14;
      v23 = v21;
      v31 = v21;
      *v20 = 68158979;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      *(v20 + 10) = v22;
      *(v20 + 11) = 1040;
      *(v20 + 13) = 8;
      *(v20 + 17) = 1024;
      *(v20 + 19) = v28;
      *(v20 + 23) = 2160;
      *(v20 + 25) = 0x786F626C69616DLL;
      *(v20 + 33) = 2085;
      v29 = v9;
      v30 = v10;

      v24 = sub_1004A5824();
      v26 = sub_10015BA6C(v24, v25, &v31);

      *(v20 + 35) = v26;
      _os_log_impl(&_mh_execute_header, v16, v18, "[%.*hhx-%.*X] Unknown mailbox '%{sensitive,mask.mailbox}s' got de-selected. Ignoring.", v20, 0x2Bu);
      sub_1000197E0(v23);
    }
  }

  *a3 = v11;
}

unint64_t sub_10034F4FC()
{
  result = qword_1005DA3F8;
  if (!qword_1005DA3F8)
  {
    result = swift_getWitnessTable(byte_1004F69E4, &_s16NoMailboxForNameVN, v0, v1);
    atomic_store(result, &qword_1005DA3F8);
  }

  return result;
}

char *sub_10034F550(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034F6E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F570(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034F800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F590(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034F904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F5B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034FA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F5D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034FB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F5F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034FC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F610(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034FD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F630(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034FEC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F650(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10035000C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F670(char *a1, int64_t a2, char a3)
{
  result = sub_100137558(a1, a2, a3, *v3, &qword_1005DA4B8, &qword_1004F7738);
  *v3 = result;
  return result;
}

char *sub_10034F6A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100350134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F6C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100350244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F6E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA4A8, &qword_1004F7728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10034F800(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA410, &qword_1004F7680);
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

char *sub_10034F904(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA438, &unk_1004F76B0);
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

void *sub_10034FA10(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA458, &qword_1004F76D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DA460, &unk_1004F76E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10034FB44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6598, &qword_1004F76C0);
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

void *sub_10034FC50(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA470, &qword_1004F76F0);
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
    sub_10000C9C0(&qword_1005DA478, &qword_1004F76F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10034FD94(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA480, &unk_1004F7700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D8C98, &qword_1004F5F18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10034FEC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA448, &qword_1004F76C8);
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
    sub_10000C9C0(&qword_1005DA450, &qword_1004F76D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035000C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA4B0, &qword_1004F7730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100350134(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA418, &qword_1004F7688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 96 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100350244(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA4D0, &unk_1004F7758);
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

Swift::Int sub_100350364(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100367F7C(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *(v12 - 2))
          {
            break;
          }

          v14 = *(v12 + 3);
          v15 = v12[32];
          *(v12 + 1) = *(v12 - 8);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 2) = v13;
          *v12 = v14;
          v12[8] = v15;
          v12 -= 24;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_1003504C4(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1003504C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000B2CEC((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = *(v21 + 16);
            v26 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v26;
            *(v22 - 4) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_100085288((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_1000B2CEC((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 24);
    if (v33 >= *v32)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    *(v32 + 24) = *v32;
    *(v32 + 40) = *(v32 + 16);
    *v32 = v33;
    *(v32 + 8) = v34;
    *(v32 + 16) = v35;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

unint64_t sub_100350A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA4D8, &qword_1004F7768);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100064090(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA4A0, &qword_1004F7940);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350D8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA468, &unk_1004F7930);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA498, &qword_1004F7720);
    v3 = sub_1004A6A74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v9 = v5;

      result = sub_10035E1DC(v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v12 = (v3[7] + 24 * result);
      *v12 = v9;
      v12[1] = v7;
      v12[2] = v6;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA440, &unk_1004F7980);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003510AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005DA420, &unk_1004F7690);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  v18 = *(a1 + 104);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  result = sub_10035E144(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v7 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = v3[7] + 72 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 5;
    v4 = *(v7 - 1);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 8);
    v14 = *v7;
    v15 = v7[1];
    result = sub_10035E144(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003511F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_100067004();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_100067004();
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003512F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
    v3 = sub_1004A6A74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10035E248(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v8;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100351418(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DA4C0, &qword_1004F7740);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005DA4C8, &unk_1004F7748);
    v7 = sub_1004A6A74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v8;

    while (1)
    {
      sub_10000E268(v9, v5, &qword_1005DA4C0, &qword_1004F7740);
      v11 = *v5;
      v10 = *(v5 + 1);
      v12 = *(v5 + 2);
      v13 = *(v5 + 6);
      result = sub_10035E2D4(*v5, v10, v12, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v7[6] + 32 * result;
      *v17 = v11;
      *(v17 + 8) = v10;
      *(v17 + 16) = v12;
      *(v17 + 24) = v13;
      v18 = v7[7];
      v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = sub_100020950(&v5[v24], v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v23;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100351620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005DA408, &qword_1004F7678);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  LODWORD(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100063B5C(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v21 = v6;
    return v3;
  }

  v9 = v7;
  result = v4;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v5 = *(v11 - 2);
    v18 = *v11;

    v19 = v6;
    v9 = sub_100063B5C(v17, v5);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100351764()
{
  result = qword_1005DA400;
  if (!qword_1005DA400)
  {
    result = swift_getWitnessTable(byte_1004F77D4, &_s8NoUploadVN, v0, v1);
    atomic_store(result, &qword_1005DA400);
  }

  return result;
}

uint64_t sub_1003517C0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10035183C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100351888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return v5;
}

uint64_t sub_1003518E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100351920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100351958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100351998()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003519D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100351A14()
{
  result = qword_1005D9000;
  if (!qword_1005D9000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D9000);
  }

  return result;
}

unint64_t sub_100351A60()
{
  result = qword_1005DA428;
  if (!qword_1005DA428)
  {
    result = swift_getWitnessTable(aA_17, &_s7MailboxC8MetadataVN, v0, v1);
    atomic_store(result, &qword_1005DA428);
  }

  return result;
}

uint64_t sub_100351AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100351B1C()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100351B7C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100351BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100351C1C()
{
  v1 = *(_s6LoggerVMa_0(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

int *sub_100351CF0@<X0>(void *a1@<X8>)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100335868(v4, v5, a1);
}

uint64_t sub_100351D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100351DE4(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100351E90(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1004A6794();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1004A6A34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100351FB8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 4)
  {
    v8 = i[1];
    v24[0] = *i;
    v24[1] = v8;
    v9 = i[3];
    v11 = *i;
    v10 = i[1];
    v24[2] = i[2];
    v24[3] = v9;
    v20 = v11;
    v21 = v10;
    v12 = i[3];
    v22 = i[2];
    v23 = v12;
    sub_10000E268(v24, &v16, &qword_1005D8C98, &qword_1004F5F18);
    v13 = a1(&v20);
    if (v3)
    {
      break;
    }

    v14 = v13;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    sub_100025F40(&v16, &qword_1005D8C98, &qword_1004F5F18);
    if (v14)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  sub_100025F40(&v16, &qword_1005D8C98, &qword_1004F5F18);
  return v6;
}

uint64_t sub_1003520F0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MessageBeingDownloaded(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1003521DC(uint64_t (**a1)(__int128 *))
{
  v2 = v1;
  v4 = [v1 userInfo];
  v22 = *a1;
  v18 = *a1;
  sub_10035A4AC(&v22, v20);
  swift_bridgeObjectRetain_n();
  v5 = [v4 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v21[0] = v18;
  v21[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_100025F40(v21, &qword_1005D4768, &unk_1004F5B20);
LABEL_8:
    v9 = [v2 persistentStoreCoordinator];
    if (v9)
    {
      v10 = v9;
      v11 = sub_100358330(a1);
      v13 = v12;

      sub_1002F9A9C(&v22);
      if ((v13 & 1) == 0)
      {
        *&v18 = v11;
        v14 = [v2 userInfo];
LABEL_13:
        v15 = v14;
        v16 = a1[4](&v18);
        v21[0] = v22;
        [v15 __swift_setObject:v16 forKeyedSubscript:sub_1004A6DF4()];

        swift_unknownObjectRelease();
        return v18;
      }
    }

    else
    {
      sub_1002F9A9C(&v22);
    }

    (a1[6])(&v18, 0);
    v14 = [v2 userInfo];
    goto LABEL_13;
  }

  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1002F9A9C(&v22);
  sub_1002F9A9C(&v22);
  v6 = v20[0];
  v7 = a1[6];
  v8 = v20[0];
  (v7)(&v18, v6);

  return v18;
}

void sub_10035249C(uint64_t a1, uint64_t (**a2)(uint64_t *), uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v18 = a1;
  v13 = a2[4](&v18);
  v14 = [v11 userInfo];
  v19 = *a2;
  v17 = *a2;
  sub_10035A4AC(&v19, &v16);
  v15 = v13;
  [v14 __swift_setObject:v15 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  sub_1003585D0(a2, a3, a4, a5, a6);
}

uint64_t sub_1003525AC()
{
  v1 = v0;
  v2 = _s6LoggerVMa_0(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v5, _s6LoggerVMa_0);
  v7 = (v6 + *(v3 + 28));
  v8 = *v7;
  v9 = *(v7 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v10 = sub_1004A4A54();
  v11 = sub_1004A4A74();
  (*(*(v11 - 8) + 8))(v5, v11);
  v12 = sub_1004A6014();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 68158464;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = v8;
    *(v13 + 11) = 1040;
    *(v13 + 13) = 8;
    *(v13 + 17) = 1024;
    *(v13 + 19) = v9;
    _os_log_impl(&_mh_execute_header, v10, v12, "[%.*hhx-%.*X] Failed to authenticate. Marking server as temporarily unavailable.", v13, 0x17u);
  }

  return (*(v1 + 112))(2);
}

void *sub_10035276C(uint64_t a1)
{
  v4 = sub_1004A4374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100355800();
  sub_1003559D4(a1);
  v8 = sub_1003595B4(a1);
  v9 = sub_10035BCC0(v8);
  if (v2)
  {

    swift_beginAccess();
    goto LABEL_55;
  }

  v10 = v9;

  if (v10 >> 62)
  {
    goto LABEL_60;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_61:

    v66 = _swiftEmptyArrayStorage;
LABEL_62:
    swift_beginAccess();
    sub_100334E18();
    swift_endAccess();
    return v66;
  }

LABEL_5:
  v67 = v1;
  v90 = _swiftEmptyArrayStorage;
  v1 = &v90;
  sub_100092088(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    goto LABEL_65;
  }

  v12 = 0;
  v13 = v90;
  v74 = v10 & 0xC000000000000001;
  v68 = v10 & 0xFFFFFFFFFFFFFF8;
  v73 = (v5 + 8);
  v71 = v11 - 1;
  v70 = v4;
  v69 = v7;
  v72 = v10;
  while (1)
  {
    v80 = v13;
    if (v74)
    {
      v14 = sub_1004A6794();
    }

    else
    {
      if (v12 >= *(v68 + 16))
      {
        goto LABEL_57;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = sub_1004A5734();
    [v14 willAccessValueForKey:v15];

    v16 = [v14 primitiveName];
    if (v16)
    {
      v17 = v16;
      v18 = sub_100359E0C(v17);

      v19 = MailboxName.init(_:)(v18);
      rawValue = v19.bytes._rawValue;
      value = v19._hashValue._value;
    }

    else
    {
      rawValue = 0;
      value = 0;
    }

    v21 = sub_1004A5734();
    [v14 didAccessValueForKey:v21];

    if (!rawValue)
    {

      sub_100359C04();
      swift_allocError();
      goto LABEL_54;
    }

    v75 = v12;
    v22 = sub_1004A5734();
    [v14 willAccessValueForKey:v22];

    sub_10034AF00(v14, v95);
    v23 = v95[0];
    v84 = v95[2];
    v82 = v95[1];
    v83 = v95[3];
    v81 = v95[4];
    v24 = sub_1004A5734();
    v85 = v14;
    [v14 didAccessValueForKey:v24];

    v78 = rawValue;
    if (v96)
    {
      v77 = 0;
      v82 = 0;
      v83 = 0;
      v76 = 1;
      v84 = 1;
      v81 = 1;
    }

    else
    {
      v77 = v23;
      v76 = HIDWORD(v23) & 1;
    }

    v14 = v85;
    v25 = [v85 objectID];
    v26 = [v25 isTemporaryID];

    if (v26)
    {
      break;
    }

    v27 = [v14 objectID];
    v28 = [v27 URIRepresentation];

    sub_1004A4344();
    v1 = v7;
    v5 = sub_1004A42E4();
    v10 = v29;
    (*v73)(v7, v4);
    v30 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      v31 = v75;
      if (!v30)
      {
        __src.rawValue._rawValue = v5;
        LOWORD(__src.hashValue) = v10;
        BYTE2(__src.hashValue) = BYTE2(v10);
        BYTE3(__src.hashValue) = BYTE3(v10);
        BYTE4(__src.hashValue) = BYTE4(v10);
        BYTE5(__src.hashValue) = BYTE5(v10);
        v32 = v84;
        v33 = v85;
        if (BYTE6(v10))
        {
          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v34 = swift_allocObject();
          v35 = j__malloc_size(v34);
          v34[2] = BYTE6(v10);
          v34[3] = 2 * v35 - 64;
          memcpy(v34 + 4, &__src, BYTE6(v10));
        }

        else
        {
          v34 = _swiftEmptyArrayStorage;
        }

        v1 = 1;
        v50 = OpaqueMailboxID.init(rawValue:)(v34);
        v48 = v50.rawValue._rawValue;
        hashValue = v50.hashValue;

        sub_100014D40(v5, v10);
        goto LABEL_46;
      }

      v4 = v5;
      v7 = ((v5 >> 32) - v5);
      v38 = v85;
      if (v5 >> 32 < v5)
      {
        goto LABEL_58;
      }

      v37 = sub_1004A40D4();
      if (v37)
      {
        v43 = sub_1004A4104();
        if (__OFSUB__(v5, v43))
        {
          goto LABEL_64;
        }

        v37 += v5 - v43;
      }

      v44 = sub_1004A40F4();
      if (v44 >= v7)
      {
        v42 = (v5 >> 32) - v5;
      }

      else
      {
        v42 = v44;
      }

      goto LABEL_39;
    }

    v31 = v75;
    if (v30 == 2)
    {
      v36 = *(v5 + 16);
      v7 = *(v5 + 24);
      v1 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v37 = sub_1004A40D4();
      v38 = v85;
      if (v37)
      {
        v1 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v39 = sub_1004A4104();
        if (__OFSUB__(v36, v39))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        v37 += v36 - v39;
      }

      v40 = __OFSUB__(v7, v36);
      v4 = &v7[-v36];
      if (v40)
      {
        goto LABEL_59;
      }

      v41 = sub_1004A40F4();
      if (v41 >= v4)
      {
        v42 = v4;
      }

      else
      {
        v42 = v41;
      }

LABEL_39:
      v45 = &v37[v42];
      if (v37)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      sub_10032F72C(v37, v46, &__src);

      sub_100014D40(v5, v10);
      v48 = __src.rawValue._rawValue;
      hashValue = __src.hashValue;
      goto LABEL_43;
    }

    v47 = OpaqueMailboxID.init(rawValue:)(_swiftEmptyArrayStorage);
    v48 = v47.rawValue._rawValue;
    hashValue = v47.hashValue;

    sub_100014D40(v5, v10);
LABEL_43:
    v1 = 1;
    v32 = v84;
LABEL_46:
    v51 = v76;
    v89 = v76;
    v52 = v32 & 1;
    v88 = v32 & 1;
    v53 = v81 & 1;
    v87 = v81 & 1;
    v86 = 1;
    v13 = v80;
    v90 = v80;
    v55 = v80[2];
    v54 = v80[3];
    v5 = v55 + 1;
    v56 = v77;
    if (v55 >= v54 >> 1)
    {
      sub_100092088((v54 > 1), v55 + 1, 1);
      v51 = v76;
      v56 = v77;
      v1 = 1;
      v13 = v90;
    }

    v13[2] = v5;
    v57 = &v13[12 * v55];
    v57[4] = v48;
    v57[5] = hashValue;
    v57[6] = v78;
    *(v57 + 14) = value;
    *(v57 + 16) = v56;
    *(v57 + 68) = v51;
    v58 = v93;
    *(v57 + 69) = v92;
    *(v57 + 71) = v58;
    v57[9] = v82;
    *(v57 + 80) = v52;
    v59 = *(&__src.rawValue._rawValue + 3);
    *(v57 + 81) = __src.rawValue._rawValue;
    *(v57 + 21) = v59;
    v57[11] = v83;
    *(v57 + 96) = v53;
    v60 = *&v91[3];
    *(v57 + 97) = *v91;
    *(v57 + 25) = v60;
    v57[13] = 0;
    v57[14] = 0;
    *(v57 + 120) = 1;
    if (v71 == v31)
    {
      v66 = v13;

      goto LABEL_62;
    }

    v12 = v31 + 1;
    v4 = v70;
    v7 = v69;
    v10 = v72;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v11 = sub_1004A6A34();
      if (!v11)
      {
        goto LABEL_61;
      }

      goto LABEL_5;
    }
  }

  v61 = sub_10033A824();
  v63 = v62;
  sub_100359C58();
  swift_allocError();
  *v64 = v61;
  *(v64 + 8) = v63;
LABEL_54:
  swift_willThrow();

  swift_beginAccess();
LABEL_55:
  sub_100334E18();
  return swift_endAccess();
}

void sub_1003530B8(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v29 = a1;
  v28[2] = &v29;
  v4 = 0;
  v5 = sub_100358B50(sub_100359FD0, v28);
  v6 = *(*(v1 + 128) + 16);
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_100336E58(v5, v6);
    swift_endAccess();
    swift_beginAccess();

    v4 = sub_10035A16C((v1 + 144), a1);

    v7 = *(v1 + 144);
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v4)
      {
        goto LABEL_4;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      v9 = sub_1004A6A34();
      if (!v9)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  v8 = sub_1004A6A34();
  if (v8 < v4)
  {
    goto LABEL_29;
  }

LABEL_4:
  sub_100336C30(v4, v8);
  swift_endAccess();
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return;
  }

LABEL_6:
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_1004A6794();
      }

      else
      {
        v13 = *(a1 + 8 * v10 + 32);
      }

      v12 = v13;
      v14 = [v13 objectID];
      v15 = [v14 entity];
      v16 = [v15 name];

      if (!v16)
      {
        goto LABEL_8;
      }

      v17 = sub_1004A5764();
      v19 = v18;

      if (v17 == 0x786F626C69616DLL && v19 == 0xE700000000000000)
      {
      }

      else
      {
        v21 = sub_1004A6D34();

        if ((v21 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if (([v14 isTemporaryID] & 1) == 0)
      {
        swift_beginAccess();
        v22 = sub_10035E1DC(v14);
        if (v23)
        {
          v24 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *(v2 + 152);
          v29 = v26;
          *(v2 + 152) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100361B98();
            v26 = v29;
          }

          v27 = *(*(v26 + 56) + 24 * v24);

          sub_100359018(v24, v26);
          *(v2 + 152) = v26;
        }

        swift_endAccess();
        v11 = v14;
        goto LABEL_9;
      }

LABEL_8:
      v11 = v12;
      v12 = v14;
LABEL_9:
      ++v10;

      if (v9 == v10)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1003533D8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v11);
  v13 = v47 - v12;
  sub_100355ECC(a2, a3, a4, a5);
  if (!v5)
  {
    v47[2] = 0;
    v48 = a1;
    if (v14 >> 62)
    {
      v44 = v15;
      v45 = sub_1004A6A34();
      v15 = v44;
      if (!v45)
      {
        goto LABEL_24;
      }
    }

    else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (v15 >= 1)
    {
      v16 = v15;
      v17 = objc_allocWithZone(NSFetchRequest);
      v18 = sub_1004A5734();
      v19 = [v17 initWithEntityName:v18];

      sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1004CEAA0;
      sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
      isa = sub_1004A5C04().super.isa;

      *(v20 + 56) = sub_10019A8E4(0, &qword_1005DA4F0, NSArray_ptr);
      *(v20 + 32) = isa;
      v22 = sub_1004A5734();
      v23 = sub_1004A5C04().super.isa;

      v24 = [objc_opt_self() predicateWithFormat:v22 argumentArray:v23];

      [v19 setPredicate:v24];
      sub_100016D2C();
      sub_1004A7114();
      v51 = 0;
      v25 = [v19 execute:&v51];
      v26 = v51;
      if (!v25)
      {
        v43 = v51;
        sub_1004A4274();

        swift_willThrow();
        sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      v27 = v25;
      _s7MessageCMa();
      v28 = sub_1004A5C14();
      v29 = v26;

      v30 = v28;
      v47[0] = v19;
      v47[1] = v16;
      if (v28 >> 62)
      {
        v46 = sub_1004A6A34();
        v30 = v28;
        v31 = v46;
        if (v46)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
LABEL_8:
          if (v31 < 1)
          {
            __break(1u);
          }

          v32 = 0;
          v49 = v30 & 0xC000000000000001;
          v33 = v30;
          do
          {
            if (v49)
            {
              v34 = sub_1004A6794();
            }

            else
            {
              v34 = *(v30 + 8 * v32 + 32);
            }

            v35 = v34;
            v36 = v11;
            v37 = sub_1004A5734();
            [v35 willAccessValueForKey:{v37, v47[0]}];

            v38 = [v35 primitiveUid];
            v39 = v38;
            if (v38)
            {
              v40 = [v38 longLongValue];

              v41 = (v40 - 0x100000000) < 0xFFFFFFFF00000001;
              if ((v40 - 0x100000000) >= 0xFFFFFFFF00000001)
              {
                LODWORD(v39) = v40;
              }

              else
              {
                LODWORD(v39) = 0;
              }
            }

            else
            {
              v41 = 1;
            }

            v42 = sub_1004A5734();
            [v35 didAccessValueForKey:v42];

            if (v41)
            {

              v11 = v36;
            }

            else
            {
              v50 = v39;
              v11 = v36;
              MessageIdentifierSet.insert(_:)(&v51, &v50, v36);
            }

            v30 = v33;
            ++v32;
          }

          while (v31 != v32);
        }
      }

      sub_100020950(v13, v48);
      return;
    }

LABEL_24:

    sub_100016D2C();
    sub_1004A7114();
  }
}

void sub_1003538F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10033BCE8();
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 6580597;
  *(v4 + 40) = 0xE300000000000000;
  v5 = &type metadata for Any;
  isa = sub_1004A5C04().super.isa;

  [v3 setPropertiesToFetch:isa];

  v7 = sub_10037A73C();
  [v3 appendPredicate:v7];

  [v3 setFetchBatchSize:1000];
  _s7MessageCMa();
  sub_1004A6224();
  if (v2)
  {
  }

  else
  {
    v22 = 0;
    v23 = v3;
    v8 = sub_1004A5C04().super.isa;

    v24 = v8;
    v9 = [(objc_class *)v8 count];
    sub_100016D2C();
    sub_1004A7114();
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = [(objc_class *)v24 objectAtIndex:v10, v22, v23];
        sub_1004A64E4();
        swift_unknownObjectRelease();
        swift_dynamicCast();
        v12 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = v5;
        v14 = v26;
        v15 = sub_1004A5734();
        [v14 willAccessValueForKey:v15];

        v16 = [v14 primitiveUid];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 longLongValue];

          v19 = (v18 - 0x100000000) < 0xFFFFFFFF00000001;
          if ((v18 - 0x100000000) < 0xFFFFFFFF00000001)
          {
            LODWORD(v18) = 0;
          }
        }

        else
        {
          LODWORD(v18) = 0;
          v19 = 1;
        }

        v20 = sub_1004A5734();
        [v14 didAccessValueForKey:v20];

        if (!v19)
        {
          LODWORD(v26) = v18;
          v21 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.insert(_:)(v25, &v26, v21);
        }

        ++v10;
        v5 = v13;
        if (v12 == v9)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
    }
  }
}

void sub_100353C00(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a4;
  v55 = a3;
  v63 = a1;
  v62 = sub_1004A44E4();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageMetadata(0);
  __chkstk_darwin(v9);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 16);
  if (v14)
  {
    v61 = *(v10 + 36);
    v15 = *(v4 + 48);
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    v59 = (v6 + 8);
    v60 = v17;
    v57 = v15;
    v58 = v8;
    do
    {
      v64 = v14;
      sub_10035A508(v16, v13, type metadata accessor for MessageMetadata);
      v65 = *v13;
      v18 = 256;
      if ((*(v13 + 17) & 1) == 0)
      {
        v18 = 0;
      }

      v19 = 0x10000;
      if ((*(v13 + 18) & 1) == 0)
      {
        v19 = 0;
      }

      v20 = 0x1000000;
      if ((*(v13 + 19) & 1) == 0)
      {
        v20 = 0;
      }

      v21 = Flags.init(_:)((*(v13 + 20) << 32) | (*(v13 + 21) << 40) | (*(v13 + 22) << 48) | v13[4] & 1 | v18 | v19 | v20 | (*(v13 + 23) << 56));
      v66 = v22;
      v23 = *(v13 + v61);
      v67 = v21;
      v68 = v23;
      v24 = *(v13 + 1);
      sub_10035A8B4(v13, type metadata accessor for MessageMetadata);
      ServerMessageDate.date.getter(v24, v8);
      v25 = [objc_allocWithZone(_s7MessageCMa()) initWithContext:v15];
      if (qword_1005D87B8 != -1)
      {
        swift_once();
      }

      v84[2] = xmmword_1005DAA68;
      v84[3] = *&qword_1005DAA78;
      v84[4] = xmmword_1005DAA88;
      v84[0] = xmmword_1005DAA48;
      v84[1] = *&qword_1005DAA58;
      v26 = sub_1003521DC(v84);
      v83[2] = xmmword_1005DAA68;
      v83[3] = *&qword_1005DAA78;
      v83[4] = xmmword_1005DAA88;
      v83[0] = xmmword_1005DAA48;
      v83[1] = *&qword_1005DAA58;
      sub_10035249C(v26 + 1, v83, &qword_1005DA4F8, &qword_1004F7790, &qword_1005DA500, &qword_1004F7798);
      v27 = sub_1004A5734();
      [v25 willChangeValueForKey:v27];

      v28 = [objc_allocWithZone(NSNumber) initWithLongLong:v26 + 1];
      [v25 setPrimitiveSpotlightID:v28];

      v29 = sub_1004A5734();
      [v25 didChangeValueForKey:v29];

      [v25 setMailbox:v63];
      v30 = sub_1004A5734();
      [v25 willChangeValueForKey:v30];

      v31 = objc_allocWithZone(NSNumber);
      v32 = [v31 initWithLongLong:v65];
      [v25 setPrimitiveUid:v32];

      v33 = sub_1004A5734();
      [v25 didChangeValueForKey:v33];

      v34 = sub_1004A5734();
      [v25 willChangeValueForKey:v34];

      v35 = [objc_allocWithZone(NSNumber) initWithLongLong:sub_10031FD9C(v67 & 0xFFFF010101010101)];
      [v25 setPrimitiveFlags:v35];

      v36 = sub_1004A5734();
      [v25 didChangeValueForKey:v36];

      v37 = sub_1004A5734();
      [v25 willChangeValueForKey:v37];

      v38 = objc_allocWithZone(NSNumber);
      v39 = [v38 initWithInteger:v68];
      [v25 setPrimitiveMessageSize:v39];

      v15 = v57;
      v40 = sub_1004A5734();
      [v25 didChangeValueForKey:v40];

      v8 = v58;
      isa = sub_1004A4484().super.isa;
      [v25 setServerDate:isa];

      (*v59)(v8, v62);
      v16 += v60;
      v14 = v64 - 1;
    }

    while (v64 != 1);
  }

  if ((v56 & 1) == 0)
  {
    v42 = sub_1004A5734();
    v43 = v63;
    [v63 willAccessValueForKey:v42];

    sub_10034AF00(v43, v73);
    v44 = v73[0];
    v45 = v73[3];
    v46 = v73[4];
    v47 = v75;
    v48 = v74;
    v49 = sub_1004A5734();
    [v43 didAccessValueForKey:v49];

    if (v76)
    {
      LODWORD(v44) = 0;
      v45 = 0;
      v50 = 0;
      LOBYTE(v51) = 1;
      LOBYTE(v77) = 1;
      v72 = 1;
      v71 = 1;
      LOBYTE(v46) = 1;
      LOBYTE(v52) = 1;
    }

    else
    {
      *(&v53 + 1) = v48 | (v47 << 32);
      *&v53 = v46;
      v50 = v53 >> 32;
      v51 = HIDWORD(v44) & 1;
      v52 = HIDWORD(*(&v53 + 1)) & 1;
    }

    v72 = v51;
    v71 = 0;
    v70 = v46 & 1;
    v69 = v52;
    LODWORD(v77) = v44;
    BYTE4(v77) = v51;
    *(&v77 + 1) = v55;
    v78 = 0;
    v79 = v45;
    v80 = v46 & 1;
    v81 = v50;
    v82 = v52;
    sub_10033BB90(&v77);
  }
}

void sub_10035434C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v39[0] = a2;
  v12 = sub_100016948();
  *&v45 = Range<>.init<A>(_:)(v39, &type metadata for UID, v12);
  sub_100016D2C();
  sub_1004A7124();
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_10030B530(a1, v11, *(v4 + 64));
  sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
  if (a4)
  {
    if (!a3)
    {
      return;
    }

    v14 = sub_1004A5734();
    [a1 willAccessValueForKey:v14];

    sub_10034AF00(a1, v39);
    v15 = v39[0];
    v16 = v40;
    v17 = v41;
    v18 = v43;
    v19 = v42;
    v20 = sub_1004A5734();
    [a1 didAccessValueForKey:v20];

    if (v44)
    {
      LODWORD(v15) = 0;
      v16 = 0;
      v21 = 0;
      LOBYTE(v22) = 1;
      LOBYTE(v45) = 1;
      v38 = 1;
      v37 = 1;
      LOBYTE(v17) = 1;
      LOBYTE(v23) = 1;
    }

    else
    {
      *(&v33 + 1) = v19 | (v18 << 32);
      *&v33 = v17;
      v21 = v33 >> 32;
      v22 = HIDWORD(v15) & 1;
      v23 = HIDWORD(*(&v33 + 1)) & 1;
    }

    v38 = v22;
    v37 = 1;
    v36 = v17 & 1;
    v35 = v23;
    LODWORD(v45) = v15;
    BYTE4(v45) = v22;
    *(&v45 + 1) = 0;
    v46 = 1;
    v47 = v16;
    v48 = v17 & 1;
  }

  else
  {
    v24 = sub_1004A5734();
    [a1 willAccessValueForKey:v24];

    sub_10034AF00(a1, v39);
    v25 = v39[0];
    v26 = v40;
    v27 = v41;
    v28 = v43;
    v29 = v42;
    v30 = sub_1004A5734();
    [a1 didAccessValueForKey:v30];

    if (v44)
    {
      LODWORD(v25) = 0;
      v26 = 0;
      v21 = 0;
      LOBYTE(v31) = 1;
      LOBYTE(v45) = 1;
      v38 = 1;
      v37 = 1;
      LOBYTE(v27) = 1;
      LOBYTE(v23) = 1;
    }

    else
    {
      *(&v32 + 1) = v29 | (v28 << 32);
      *&v32 = v27;
      v21 = v32 >> 32;
      v31 = HIDWORD(v25) & 1;
      v23 = HIDWORD(*(&v32 + 1)) & 1;
    }

    v38 = v31;
    v37 = 0;
    v36 = v27 & 1;
    v35 = v23;
    LODWORD(v45) = v25;
    BYTE4(v45) = v31;
    *(&v45 + 1) = a3;
    v46 = 0;
    v47 = v26;
    v48 = v27 & 1;
  }

  v49 = v21;
  v50 = v23;
  sub_10033BB90(&v45);
}

uint64_t sub_1003546E4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v70 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v70);
  v71 = &v64 - v10;
  v11 = sub_1004A4A74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s6LoggerVMa_0(0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100372E50([a1 objectID]);
  if (!v69)
  {
    sub_100016D2C();
    return sub_1004A7114();
  }

  v74 = a2;
  swift_beginAccess();
  v19 = *(v6 + 152);
  v20 = *(v19 + 16);
  v67 = a3;
  if (!v20 || (v21 = sub_10035E1DC(v69), (v22 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  v23 = *(v19 + 56) + 24 * v21;
  v24 = *(v23 + 8);
  v68 = *v23;
  v25 = *(v23 + 16);
  swift_endAccess();
  if (v24 != v74)
  {
LABEL_7:
    v29 = *(v6 + 48);
    sub_10035A508(v6 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v18, _s6LoggerVMa_0);
    (*(v12 + 32))(v14, v18, v11);
    v30 = v29;
    v31 = a1;
    v32 = sub_100340D2C(v30, v31, v74, v14);
    v34 = v33;
    v28 = v35;
    v36 = *(v6 + 152);
    v37 = *(v36 + 16);
    v38 = v32;

    if (v37 >= 5)
    {
      do
      {
        v42 = 0;
        v43 = (v36 + 64);
        v39 = 1 << *(v36 + 32);
        v44 = (v39 + 63) >> 6;
        while (1)
        {
          v46 = *v43++;
          v45 = v46;
          if (v46)
          {
            break;
          }

          v42 -= 64;
          if (!--v44)
          {
            goto LABEL_10;
          }
        }

        v39 = __clz(__rbit64(v45)) - v42;
LABEL_10:
        v40 = *(v36 + 36);
        swift_beginAccess();
        v41 = sub_100359D2C(v73, v39, v40);
        swift_endAccess();

        v36 = *(v6 + 152);
      }

      while (*(v36 + 16) > 4uLL);
    }

    swift_beginAccess();
    v27 = v38;

    v47 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = *(v6 + 152);
    *(v6 + 152) = 0x8000000000000000;
    sub_1003592F8(v27, v34, v28, v47, isUniquelyReferenced_nonNull_native);

    *(v6 + 152) = v72[0];
    swift_endAccess();
    goto LABEL_16;
  }

  v26 = v68;
  swift_retain_n();
  v27 = v26;
  v28 = v25;
LABEL_16:
  v68 = v5;
  v49 = sub_100341120(v28);

  v65 = v27;

  sub_100016D2C();
  sub_1004A7114();
  v66 = v28;
  if (v49 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v51 = 0;
    v74 = v49 & 0xC000000000000001;
    v52 = v49 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v74)
      {
        v53 = sub_1004A6794();
      }

      else
      {
        if (v51 >= *(v52 + 16))
        {
          goto LABEL_34;
        }

        v53 = *(v49 + 8 * v51 + 32);
      }

      v54 = v53;
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      v56 = v49;
      v57 = sub_1004A5734();
      [v54 willAccessValueForKey:v57];

      v58 = [v54 primitiveUid];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 longLongValue];

        v61 = (v60 - 0x100000000) < 0xFFFFFFFF00000001;
        if ((v60 - 0x100000000) < 0xFFFFFFFF00000001)
        {
          LODWORD(v60) = 0;
        }
      }

      else
      {
        LODWORD(v60) = 0;
        v61 = 1;
      }

      v62 = sub_1004A5734();
      [v54 didAccessValueForKey:v62];

      if (!v61)
      {
        LODWORD(v72[0]) = v60;
        MessageIdentifierSet.insert(_:)(v73, v72, v70);
      }

      v49 = v56;
      ++v51;
      if (v55 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  return sub_100020950(v71, v67);
}

uint64_t sub_100354CA8(uint64_t a1)
{
  v3 = sub_1004A44E4();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v50 - v6;
  v7 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for ConnectionStatus.Error(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Activity(0);
  sub_10000E268(a1 + *(v17 + 24), v12, &qword_1005CCEB0, &qword_1004E9140);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_100025F40(v12, &qword_1005CCEB0, &qword_1004E9140);
  }

  sub_10035A84C(v12, v16, type metadata accessor for ConnectionStatus.Error);
  v19 = *v16;
  result = sub_10035A8B4(v16, type metadata accessor for ConnectionStatus.Error);
  if (v19 == 2 && (*(v1 + 160) & 1) == 0)
  {
    *(v1 + 160) = 1;
    v20 = v1;
    v21 = v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v9, _s6LoggerVMa_0);
    v22 = (v21 + *(v7 + 20));
    v23 = *v22;
    v24 = *(v22 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = sub_1004A4A54();
    v26 = sub_1004A4A74();
    (*(*(v26 - 8) + 8))(v9, v26);
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 68158464;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      *(v28 + 10) = v23;
      *(v28 + 11) = 1040;
      *(v28 + 13) = 8;
      *(v28 + 17) = 1024;
      *(v28 + 19) = v24;
      _os_log_impl(&_mh_execute_header, v25, v27, "[%.*hhx-%.*X] Server temporarily unavailable.", v28, 0x17u);
    }

    v29 = v20[7];
    v30 = v54;
    v31 = v52;
    if (v29)
    {
      v32 = v20[7];
    }

    else
    {
      v33 = sub_1003070C0(v20[2], v20[3]);
      v34 = v20[7];
      v20[7] = v33;
      v32 = v33;

      v29 = 0;
    }

    v35 = v53;
    v36 = v29;
    v55 = sub_10033A6CC();
    sub_1004A44D4();
    v37 = v51;
    (*(v35 + 16))(v51, v31, v30);
    sub_1004A4464();
    v39 = round(v38 / 21600.0);
    v40 = *(v35 + 8);
    result = v40(v37, v30);
    v41 = v20;
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    if (v39 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v39 < 9.22337204e18)
    {
      sub_100375B9C(v39, &v55);
LABEL_14:
      v40(v31, v30);
      v42 = v55;
      v43 = sub_1004A5734();
      [v32 willChangeValueForKey:v43];

      v45 = sub_100373DA8(v42, v44);
      v47 = v46;

      isa = sub_1004A4404().super.isa;
      sub_100014D40(v45, v47);
      [v32 setPrimitiveDataUsage:isa];

      v49 = sub_1004A5734();
      [v32 didChangeValueForKey:v49];

      return (v41[14])(2);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10035527C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v6 - 8);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A44E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = v2[7];
  if (v17)
  {
    v18 = v2[7];
  }

  else
  {
    v19 = sub_1003070C0(v2[2], v2[3]);
    v20 = v2[7];
    v3[7] = v19;
    v18 = v19;

    v17 = 0;
  }

  v21 = v17;
  v51 = sub_10033A6CC();
  sub_1004A44D4();
  (*(v9 + 16))(v13, v16, v8);
  sub_1004A4464();
  v23 = round(v22 / 21600.0);
  v24 = *(v9 + 8);
  result = v24(v13, v8);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  sub_100375E64(v23, &v51, a1, a2);
LABEL_8:
  v24(v16, v8);
  v26 = v51;
  v27 = sub_1004A5734();
  [v18 willChangeValueForKey:v27];

  v29 = sub_100373DA8(v26, v28);
  v31 = v30;

  isa = sub_1004A4404().super.isa;
  sub_100014D40(v29, v31);
  [v18 setPrimitiveDataUsage:isa];

  v33 = sub_1004A5734();
  [v18 didChangeValueForKey:v33];

  v34 = v3[7];
  if (v34)
  {
    v35 = v3[7];
  }

  else
  {
    v36 = sub_1003070C0(v3[2], v3[3]);
    v37 = v3[7];
    v3[7] = v36;
    v35 = v36;

    v34 = 0;
  }

  v38 = v34;
  v39 = sub_10033A6CC();

  v40 = v50;
  sub_1004A44D4();
  sub_100374128(v40, v39);
  v42 = v41;

  result = v24(v40, v8);
  if (v42 == 1)
  {
    v43 = v49;
    sub_10035A508(v3 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v49, _s6LoggerVMa_0);
    v44 = sub_1004A4A54();
    v45 = sub_1004A4A74();
    (*(*(v45 - 8) + 8))(v43, v45);
    v46 = sub_1004A6014();
    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v44, v46, "Account’s data usage is above threshold.", v47, 2u);
    }

    return (v3[14])(1);
  }

  return result;
}

uint64_t sub_100355708(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a1;
    v10 = *(v8 + 88);

    v10(v9 | 4, 1);

    sub_10034F078(a4);
  }

  return result;
}

uint64_t sub_1003557C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100355800()
{
  v1 = v0;
  v2 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 161) & 1) == 0)
  {
    *(v1 + 161) = 1;
    v5 = v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v4, _s6LoggerVMa_0);
    v6 = (v5 + *(v2 + 20));
    v7 = *v6;
    v8 = *(v6 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v9 = sub_1004A4A54();
    v10 = sub_1004A4A74();
    (*(*(v10 - 8) + 8))(v4, v10);
    v11 = sub_1004A6034();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68158464;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = v7;
      *(v12 + 11) = 1040;
      *(v12 + 13) = 8;
      *(v12 + 17) = 1024;
      *(v12 + 19) = v8;
      _os_log_impl(&_mh_execute_header, v9, v11, "[%.*hhx-%.*X] Did receive remote mailboxes: Sending sync-did-start.", v12, 0x17u);
    }

    (*(v1 + 112))(0);
  }
}

void sub_1003559D4(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = 0;
  v11 = 0;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  while (v14)
  {
    v15 = v10;
LABEL_10:
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = *(a1 + 56) + 72 * (v16 | (v15 << 6));
    if (*(v17 + 65))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 24);
    }

    v19 = __OFADD__(v11, v18);
    v11 += v18;
    if (v19)
    {
      __break(1u);
LABEL_16:
      v20 = v2[7];
      if (v20)
      {
        v21 = v2[7];
      }

      else
      {
        v22 = sub_1003070C0(v2[2], v2[3]);
        v23 = v2[7];
        v2[7] = v22;
        v21 = v22;

        v20 = 0;
      }

      v24 = v20;
      v25 = sub_10033AD14();

      v26 = v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      if (v11 == v25)
      {
        sub_10035A508(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v9, _s6LoggerVMa_0);
        v27 = &v26[*(v4 + 20)];
        v28 = *v27;
        v29 = *(v27 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v30 = sub_1004A4A54();
        v31 = sub_1004A4A74();
        (*(*(v31 - 8) + 8))(v9, v31);
        v32 = sub_1004A6034();
        if (os_log_type_enabled(v30, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 68158720;
          *(v33 + 4) = 2;
          *(v33 + 8) = 256;
          *(v33 + 10) = v28;
          *(v33 + 11) = 1040;
          *(v33 + 13) = 8;
          *(v33 + 17) = 1024;
          *(v33 + 19) = v29;
          *(v33 + 23) = 2048;
          *(v33 + 25) = v11;
          _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx-%.*X] Account message count unchanged at %ld.", v33, 0x21u);
        }
      }

      else
      {
        sub_10035A508(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v6, _s6LoggerVMa_0);
        v34 = &v26[*(v4 + 20)];
        v35 = *v34;
        v36 = *(v34 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v37 = sub_1004A4A54();
        v38 = sub_1004A4A74();
        (*(*(v38 - 8) + 8))(v6, v38);
        v39 = sub_1004A6034();
        if (os_log_type_enabled(v37, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 68158976;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          *(v40 + 10) = v35;
          *(v40 + 11) = 1040;
          *(v40 + 13) = 8;
          *(v40 + 17) = 1024;
          *(v40 + 19) = v36;
          *(v40 + 23) = 2048;
          *(v40 + 25) = v25;
          *(v40 + 33) = 2048;
          *(v40 + 35) = v11;
          _os_log_impl(&_mh_execute_header, v37, v39, "[%.*hhx-%.*X] Account message count %ld -> %ld.", v40, 0x2Bu);
        }

        v41 = v2[7];
        if (v41)
        {
          v42 = v2[7];
        }

        else
        {
          v43 = sub_1003070C0(v2[2], v2[3]);
          v44 = v2[7];
          v2[7] = v43;
          v42 = v43;

          v41 = 0;
        }

        v45 = v41;
        v46 = sub_1004A5734();
        [v42 willChangeValueForKey:v46];

        v47 = [objc_allocWithZone(NSNumber) initWithInteger:v11 & ~(v11 >> 63)];
        [v42 setPrimitiveMessageCount:v47];

        v30 = sub_1004A5734();
        [v42 didChangeValueForKey:v30];
      }

      return;
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= ((v12 + 63) >> 6))
    {
      goto LABEL_16;
    }

    v14 = *(a1 + 64 + 8 * v15);
    ++v10;
    if (v14)
    {
      v10 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100355ECC(void *a1, unint64_t a2, int64_t a3, void *a4)
{
  v8 = HIDWORD(a2);
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_1004A5734();
  v49 = [v9 initWithEntityName:v10];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004CEA80;
  v12 = [a1 objectID];
  *(v11 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v11 + 32) = v12;
  v13 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:a2];
  v14 = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  *(v11 + 88) = v14;
  *(v11 + 64) = v13;
  v15 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v8];
  *(v11 + 120) = v14;
  *(v11 + 96) = v15;
  v16 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

  [v49 setPredicate:v18];
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004D3930;
  v20 = objc_allocWithZone(NSSortDescriptor);
  v21 = sub_1004A5734();
  v22 = [v20 initWithKey:v21 ascending:0];

  *(v19 + 32) = v22;
  v23 = v49;
  sub_10019A8E4(0, &qword_1005D9940, NSSortDescriptor_ptr);
  v24 = sub_1004A5C04().super.isa;

  [v49 setSortDescriptors:v24];

  [v49 setResultType:1];
  v55 = 0;
  v25 = [v49 execute:&v55];
  v26 = v55;
  if (!v25)
  {
    v48 = v55;
    sub_1004A4274();

    swift_willThrow();
    return;
  }

  v27 = v25;
  v28 = sub_1004A5C14();
  v29 = v26;

  if (v28 >> 62)
  {
    goto LABEL_53;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_56;
  }

  v55 = _swiftEmptySetSingleton;
  if (!a3)
  {
LABEL_55:
    __break(1u);
LABEL_56:

    return;
  }

  while (1)
  {
    if (v30 == 0x8000000000000000 && a3 == -1)
    {
      goto LABEL_60;
    }

    v31 = v30 / a3 + 1;
    if (__OFADD__(v30 / a3, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v31 < 0)
    {
      goto LABEL_58;
    }

    if (v30 / a3 == -1)
    {
      break;
    }

    v32 = 0;
    while (1)
    {
      v33 = v32 * a3;
      if ((v32 * a3) >> 64 != (v32 * a3) >> 63)
      {
        break;
      }

      v34 = v33 - a4;
      if (__OFSUB__(v33, a4))
      {
        goto LABEL_44;
      }

      if ((v34 & 0x8000000000000000) == 0 && v34 < v30)
      {
        sub_1003624CC(&v54, v34);
      }

      if (v31 == ++v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    if (!sub_1004A6A34())
    {
      goto LABEL_56;
    }

    v55 = _swiftEmptySetSingleton;
    v30 = sub_1004A6A34();
    if (!a3)
    {
      goto LABEL_55;
    }
  }

LABEL_17:
  sub_1003624CC(&v54, 0);
  if (__OFSUB__(v30, 1))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  sub_1003624CC(&v54, v30 - 1);
  a4 = v55;
  v35 = v55[2];
  if (v35)
  {
    v54 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v36 = a4 + 7;
    v37 = sub_1004A6554();
    v23 = 0;
    v38 = *(a4 + 9);
    v53 = v28 & 0xC000000000000001;
    v51 = v28 & 0xFFFFFFFFFFFFFF8;
    v50 = v28 + 32;
    v52 = v35;
    do
    {
      if (v37 < 0 || v37 >= 1 << *(a4 + 32))
      {
        goto LABEL_45;
      }

      a3 = v37 >> 6;
      v28 = 1 << v37;
      if ((v36[v37 >> 6] & (1 << v37)) == 0)
      {
        goto LABEL_46;
      }

      if (v38 != *(a4 + 9))
      {
        goto LABEL_47;
      }

      v40 = *(a4[6] + 8 * v37);
      if (v53)
      {
        sub_1004A6794();
      }

      else
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (v40 >= *(v51 + 16))
        {
          goto LABEL_52;
        }

        v41 = *(v50 + 8 * v40);
      }

      sub_1004A6814();
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      v39 = 1 << *(a4 + 32);
      if (v37 >= v39)
      {
        goto LABEL_48;
      }

      v36 = a4 + 7;
      v42 = a4[a3 + 7];
      if ((v42 & v28) == 0)
      {
        goto LABEL_49;
      }

      if (v38 != *(a4 + 9))
      {
        goto LABEL_50;
      }

      v43 = v42 & (-2 << (v37 & 0x3F));
      if (v43)
      {
        v39 = __clz(__rbit64(v43)) | v37 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = a3 << 6;
        v45 = a3 + 1;
        v46 = &a4[a3 + 8];
        while (v45 < (v39 + 63) >> 6)
        {
          v47 = *v46++;
          a3 = v47;
          v44 += 64;
          ++v45;
          if (v47)
          {
            sub_100020944(v37, v38, 0);
            v39 = __clz(__rbit64(a3)) + v44;
            goto LABEL_21;
          }
        }

        sub_100020944(v37, v38, 0);
      }

LABEL_21:
      ++v23;
      v37 = v39;
    }

    while (v23 != v52);
  }

  else
  {
  }
}

void sub_1003565B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v119 = a4;
  v116 = a3;
  v121 = a2;
  v5 = type metadata accessor for MessageSectionData(0);
  __chkstk_darwin(v5);
  v109 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v108 - v8;
  __chkstk_darwin(v9);
  v111 = &v108 - v10;
  v115 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v115);
  v108 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v113 = &v108 - v13;
  __chkstk_darwin(v14);
  v110 = &v108 - v15;
  v16 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  __chkstk_darwin(v16 - 8);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  v22 = type metadata accessor for MessageBeingDownloaded(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v112 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v108 - v26;
  sub_10000E268(a1, v21, &qword_1005D97C8, &unk_1004F6A70);
  v117 = v23;
  v118 = v22;
  v28 = *(v23 + 48);
  if (v28(v21, 1, v22) == 1)
  {
    v29 = v5;
    v30 = a1;
    sub_100025F40(v21, &qword_1005D97C8, &unk_1004F6A70);
    v31 = v120;
    v32 = v121;
    v33 = v119;
    sub_100333518(*(v121 + 12));
    v120 = v31;
    if (!v31)
    {
      v35 = v34;
      v36 = v33;
      sub_100331300(v36, v35, v18);
      if (v28(v18, 1, v118) == 1)
      {
        sub_100025F40(v18, &qword_1005D97C8, &unk_1004F6A70);
        v37 = v116 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
        v38 = v110;
        sub_10035A508(v116 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v110, _s6LoggerVMa_0);
        v39 = v37 + *(v115 + 20);
        v40 = *v39;
        v41 = *(v39 + 4);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v42 = v111;
        sub_10035A508(v32, v111, type metadata accessor for MessageSectionData);
        v43 = v36;
        v44 = sub_1004A4A54();
        v45 = sub_1004A4A74();
        (*(*(v45 - 8) + 8))(v38, v45);
        v46 = sub_1004A6014();

        if (os_log_type_enabled(v44, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v124 = v48;
          *v47 = 68159235;
          *(v47 + 4) = 2;
          *(v47 + 8) = 256;
          *(v47 + 10) = v40;
          *(v47 + 11) = 1040;
          *(v47 + 13) = 8;
          *(v47 + 17) = 1024;
          *(v47 + 19) = v41;
          *(v47 + 23) = 1024;
          v49 = *(v42 + 12);
          sub_10035A8B4(v42, type metadata accessor for MessageSectionData);
          *(v47 + 25) = v49;
          *(v47 + 29) = 2160;
          *(v47 + 31) = 0x786F626C69616DLL;
          *(v47 + 39) = 2085;
          v50 = sub_10033A824();
          if (v50)
          {
            v122 = v50;
            v123 = v51;
            v52 = sub_1004A5824();
            v54 = v53;
          }

          else
          {
            v52 = 8425698;
            v54 = 0xA300000000000000;
          }

          v105 = sub_10015BA6C(v52, v54, &v124);

          *(v47 + 41) = v105;
          _os_log_impl(&_mh_execute_header, v44, v46, "[%.*hhx-%.*X] Unable to create downloaded data for %u in '%{sensitive,mask.mailbox}s'.", v47, 0x31u);
          sub_1000197E0(v48);
        }

        else
        {
          sub_10035A8B4(v42, type metadata accessor for MessageSectionData);
        }
      }

      else
      {
        v79 = v112;
        sub_10035A84C(v18, v112, type metadata accessor for MessageBeingDownloaded);
        v80 = v120;
        sub_1003315B8(v81, v32 + *(v29 + 28));
        if (v80)
        {
          v82 = v116 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
          v83 = v108;
          sub_10035A508(v116 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v108, _s6LoggerVMa_0);
          v84 = v82 + *(v115 + 20);
          v85 = *v84;
          LODWORD(v119) = *(v84 + 4);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v86 = v32;
          v87 = v109;
          sub_10035A508(v86, v109, type metadata accessor for MessageSectionData);
          v88 = v36;
          swift_errorRetain();
          v89 = sub_1004A4A54();
          v90 = sub_1004A4A74();
          (*(*(v90 - 8) + 8))(v83, v90);
          v91 = sub_1004A6014();

          if (os_log_type_enabled(v89, v91))
          {
            v120 = v80;
            v92 = swift_slowAlloc();
            v93 = v87;
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v124 = v95;
            *v92 = 68159491;
            *(v92 + 4) = 2;
            *(v92 + 8) = 256;
            *(v92 + 10) = v85;
            *(v92 + 11) = 1040;
            *(v92 + 13) = 8;
            *(v92 + 17) = 1024;
            *(v92 + 19) = v119;
            *(v92 + 23) = 1024;
            v96 = *(v93 + 12);
            sub_10035A8B4(v93, type metadata accessor for MessageSectionData);
            *(v92 + 25) = v96;
            *(v92 + 29) = 2160;
            *(v92 + 31) = 0x786F626C69616DLL;
            *(v92 + 39) = 2085;
            v97 = sub_10033A824();
            if (v97)
            {
              v122 = v97;
              v123 = v98;
              v99 = sub_1004A5824();
              v101 = v100;
            }

            else
            {
              v99 = 8425698;
              v101 = 0xA300000000000000;
            }

            v106 = sub_10015BA6C(v99, v101, &v124);

            *(v92 + 41) = v106;
            *(v92 + 49) = 2112;
            v107 = sub_1004A4264();
            *(v92 + 51) = v107;
            *v94 = v107;
            _os_log_impl(&_mh_execute_header, v89, v91, "[%.*hhx-%.*X] Failed to append initial downloaded data to %u in '%{sensitive,mask.mailbox}s': %@", v92, 0x3Bu);
            sub_100025F40(v94, &qword_1005D51A0, &qword_1004D0940);

            sub_1000197E0(v95);

            v104 = v112;
          }

          else
          {
            sub_10035A8B4(v87, type metadata accessor for MessageSectionData);

            v104 = v79;
          }

          sub_10035A8B4(v104, type metadata accessor for MessageBeingDownloaded);
        }

        else
        {
          sub_100025F40(v30, &qword_1005D97C8, &unk_1004F6A70);
          sub_10035A84C(v79, v30, type metadata accessor for MessageBeingDownloaded);
          (*(v117 + 56))(v30, 0, 1, v118);
        }
      }
    }
  }

  else
  {
    v55 = v119;
    sub_100025F40(a1, &qword_1005D97C8, &unk_1004F6A70);
    sub_10035A84C(v21, v27, type metadata accessor for MessageBeingDownloaded);
    v56 = *(v5 + 28);
    v57 = v120;
    v58 = v121;
    sub_1003315B8(v59, v121 + v56);
    if (v57)
    {
      v112 = v27;
      v60 = v116 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      v61 = v113;
      sub_10035A508(v116 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v113, _s6LoggerVMa_0);
      v62 = v60 + *(v115 + 20);
      v63 = *v62;
      LODWORD(v116) = *(v62 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v64 = v114;
      sub_10035A508(v58, v114, type metadata accessor for MessageSectionData);
      v65 = v55;
      swift_errorRetain();
      v66 = sub_1004A4A54();
      v67 = sub_1004A4A74();
      (*(*(v67 - 8) + 8))(v61, v67);
      v68 = sub_1004A6014();

      if (os_log_type_enabled(v66, v68))
      {
        v120 = v57;
        v121 = a1;
        v69 = v64;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v124 = v72;
        *v70 = 68159491;
        *(v70 + 4) = 2;
        *(v70 + 8) = 256;
        *(v70 + 10) = v63;
        *(v70 + 11) = 1040;
        *(v70 + 13) = 8;
        *(v70 + 17) = 1024;
        *(v70 + 19) = v116;
        *(v70 + 23) = 1024;
        v73 = *(v69 + 12);
        sub_10035A8B4(v69, type metadata accessor for MessageSectionData);
        *(v70 + 25) = v73;
        *(v70 + 29) = 2160;
        *(v70 + 31) = 0x786F626C69616DLL;
        *(v70 + 39) = 2085;
        v74 = sub_10033A824();
        if (v74)
        {
          v122 = v74;
          v123 = v75;
          v76 = sub_1004A5824();
          v78 = v77;
        }

        else
        {
          v76 = 8425698;
          v78 = 0xA300000000000000;
        }

        v102 = sub_10015BA6C(v76, v78, &v124);

        *(v70 + 41) = v102;
        *(v70 + 49) = 2112;
        v103 = sub_1004A4264();
        *(v70 + 51) = v103;
        *v71 = v103;
        _os_log_impl(&_mh_execute_header, v66, v68, "[%.*hhx-%.*X] Failed to append downloaded data to %u in '%{sensitive,mask.mailbox}s': %@", v70, 0x3Bu);
        sub_100025F40(v71, &qword_1005D51A0, &qword_1004D0940);

        sub_1000197E0(v72);

        sub_10035A8B4(v112, type metadata accessor for MessageBeingDownloaded);
        a1 = v121;
      }

      else
      {
        sub_10035A8B4(v64, type metadata accessor for MessageSectionData);

        sub_10035A8B4(v112, type metadata accessor for MessageBeingDownloaded);
      }

      (*(v117 + 56))(a1, 1, 1, v118);
    }

    else
    {
      sub_10035A84C(v27, a1, type metadata accessor for MessageBeingDownloaded);
      (*(v117 + 56))(a1, 0, 1, v118);
    }
  }
}

id sub_100357308(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v100 = a3;
  v8 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  __chkstk_darwin(v8 - 8);
  v103 = &v96 - v9;
  v10 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v10);
  v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v96 - v13;
  __chkstk_darwin(v15);
  v17 = &v96 - v16;
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  v21 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  __chkstk_darwin(v21 - 8);
  v23 = &v96 - v22;
  v104 = a2;
  v105 = sub_100358040(a1);
  if (v24)
  {
    if (v24 == 1)
    {
LABEL_31:
      sub_100025F40(a1, &qword_1005D97C8, &unk_1004F6A70);
      v94 = type metadata accessor for MessageBeingDownloaded(0);
      return (*(*(v94 - 8) + 56))(a1, 1, 1, v94);
    }

    v101 = v24;
    v102 = v4;
    sub_10000E268(a1, v23, &qword_1005D97C8, &unk_1004F6A70);
    v25 = type metadata accessor for MessageBeingDownloaded(0);
    v26 = (*(*(v25 - 8) + 48))(v23, 1, v25);
    sub_100025F40(v23, &qword_1005D97C8, &unk_1004F6A70);
    v27 = v104 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    if (v26 == 1)
    {
      sub_10035A508(v104 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v20, _s6LoggerVMa_0);
      v28 = v27 + *(v10 + 20);
      LOBYTE(v29) = *v28;
      v30 = *(v28 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v31 = a4;
      v32 = sub_1004A4A54();
      v33 = sub_1004A4A74();
      (*(*(v33 - 8) + 8))(v20, v33);
      v34 = sub_1004A6014();

      if (os_log_type_enabled(v32, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v107 = v36;
        *v35 = 68159235;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        *(v35 + 10) = v29;
        *(v35 + 11) = 1040;
        *(v35 + 13) = 8;
        *(v35 + 17) = 1024;
        *(v35 + 19) = v30;
        *(v35 + 23) = 1024;
        *(v35 + 25) = v100;
        *(v35 + 29) = 2160;
        *(v35 + 31) = 0x786F626C69616DLL;
        *(v35 + 39) = 2085;
        v37 = sub_10033A824();
        if (v37)
        {
          *&v106[0] = v37;
          DWORD2(v106[0]) = v38;
          v39 = sub_1004A5824();
          v41 = v40;
        }

        else
        {
          v39 = 8425698;
          v41 = 0xA300000000000000;
        }

        v69 = sub_10015BA6C(v39, v41, &v107);

        *(v35 + 41) = v69;
        v70 = "[%.*hhx-%.*X] Download did complete for unknown message %u in '%{sensitive,mask.mailbox}s'.";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v32, v34, v70, v35, 0x31u);
        sub_1000197E0(v36);
      }
    }

    else
    {
      sub_10035A508(v104 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v17, _s6LoggerVMa_0);
      v58 = v27 + *(v10 + 20);
      LOBYTE(v29) = *v58;
      v30 = *(v58 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v59 = a4;
      v32 = sub_1004A4A54();
      v60 = sub_1004A4A74();
      (*(*(v60 - 8) + 8))(v17, v60);
      v34 = sub_1004A6014();

      if (os_log_type_enabled(v32, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v107 = v36;
        *v35 = 68159235;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        *(v35 + 10) = v29;
        *(v35 + 11) = 1040;
        *(v35 + 13) = 8;
        *(v35 + 17) = 1024;
        *(v35 + 19) = v30;
        *(v35 + 23) = 1024;
        *(v35 + 25) = v100;
        *(v35 + 29) = 2160;
        *(v35 + 31) = 0x786F626C69616DLL;
        *(v35 + 39) = 2085;
        v61 = sub_10033A824();
        if (v61)
        {
          *&v106[0] = v61;
          DWORD2(v106[0]) = v62;
          v63 = sub_1004A5824();
          v65 = v64;
        }

        else
        {
          v63 = 8425698;
          v65 = 0xA300000000000000;
        }

        v71 = sub_10015BA6C(v63, v65, &v107);

        *(v35 + 41) = v71;
        v70 = "[%.*hhx-%.*X] Download did complete, but unable to enqueue message %u in '%{sensitive,mask.mailbox}s'.";
        goto LABEL_20;
      }
    }

    v46 = v105;
    goto LABEL_22;
  }

  v98 = a1;
  v101 = v24;
  v102 = v4;
  v42 = v104 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  sub_10035A508(v104 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v14, _s6LoggerVMa_0);
  v43 = (v42 + *(v10 + 20));
  v29 = *v43;
  v44 = *(v43 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v45 = a4;
  v46 = v105;
  sub_10035A570(v105, 0);
  v47 = sub_1004A4A54();
  v48 = sub_1004A4A74();
  (*(*(v48 - 8) + 8))(v14, v48);
  v49 = sub_1004A6014();

  if (os_log_type_enabled(v47, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v107 = v52;
    *v50 = 68159491;
    *(v50 + 4) = 2;
    *(v50 + 8) = 256;
    v96 = v29;
    v97 = v44;
    *(v50 + 10) = v29;
    *(v50 + 11) = 1040;
    *(v50 + 13) = 8;
    *(v50 + 17) = 1024;
    *(v50 + 19) = v44;
    *(v50 + 23) = 1024;
    *(v50 + 25) = v100;
    *(v50 + 29) = 2160;
    *(v50 + 31) = 0x786F626C69616DLL;
    *(v50 + 39) = 2085;
    v53 = sub_10033A824();
    if (v53)
    {
      *&v106[0] = v53;
      DWORD2(v106[0]) = v54;
      v55 = sub_1004A5824();
      v57 = v56;
    }

    else
    {
      v55 = 8425698;
      v57 = 0xA300000000000000;
    }

    a1 = v98;
    v66 = sub_10015BA6C(v55, v57, &v107);

    *(v50 + 41) = v66;
    *(v50 + 49) = 2112;
    v67 = v105;
    v68 = sub_1004A4264();
    sub_10035A580(v67, 0);
    *(v50 + 51) = v68;
    *v51 = v68;
    _os_log_impl(&_mh_execute_header, v47, v49, "[%.*hhx-%.*X] Failed to parse downloaded message %u in '%{sensitive,mask.mailbox}s': %@", v50, 0x3Bu);
    sub_100025F40(v51, &qword_1005D51A0, &qword_1004D0940);

    sub_1000197E0(v52);
    v46 = v67;

    LOBYTE(v29) = v96;
    v30 = v97;
  }

  else
  {

    sub_10035A580(v46, 0);
    v30 = v44;
    a1 = v98;
  }

LABEL_22:
  v72 = type metadata accessor for MessageBeingDownloaded(0);
  v73 = (*(*(v72 - 8) + 48))(a1, 1, v72);
  v74 = v103;
  if (v73)
  {
    sub_10035A580(v46, v101);
    goto LABEL_31;
  }

  v75 = v30;
  v76 = *(a1 + 8);
  v77 = [v76 managedObjectContext];
  if (!v77)
  {
    sub_10035A580(v46, v101);

    goto LABEL_31;
  }

  v78 = v77;
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v106[2] = xmmword_1005D9218;
  v106[3] = *&qword_1005D9228;
  v106[4] = xmmword_1005D9238;
  v106[0] = xmmword_1005D91F8;
  v106[1] = *&qword_1005D9208;
  v79 = sub_1003521DC(v106);

  v80 = v99;
  sub_10035A508(v104 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v99, _s6LoggerVMa_0);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v81 = sub_1004A4A54();
  v82 = sub_1004A4A74();
  (*(*(v82 - 8) + 8))(v80, v82);
  v83 = sub_1004A6034();
  if (os_log_type_enabled(v81, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 68158464;
    *(v84 + 4) = 2;
    *(v84 + 8) = 256;
    *(v84 + 10) = v29;
    *(v84 + 11) = 1040;
    *(v84 + 13) = 8;
    *(v84 + 17) = 1024;
    *(v84 + 19) = v75;
    _os_log_impl(&_mh_execute_header, v81, v83, "[%.*hhx-%.*X] Marking message as indexed.", v84, 0x17u);
    v74 = v103;
  }

  v85 = type metadata accessor for IndexableMessageInfo(0);
  (*(*(v85 - 8) + 56))(v74, 1, 1, v85);
  v86 = sub_1004A5734();
  [v76 willChangeValueForKey:v86];

  v87 = v102;
  sub_10033B644(v76, v74);
  if (!v87)
  {
    v88 = sub_1004A5734();
    [v76 didChangeValueForKey:v88];

    sub_100025F40(v74, &qword_1005D6670, &qword_1004EBFB0);
    v89 = sub_1004A5734();
    [v76 willChangeValueForKey:v89];

    v90 = [objc_allocWithZone(NSNumber) initWithLongLong:v79];
    [v76 setPrimitiveIndexGeneration:v90];

    v91 = sub_1004A5734();
    [v76 didChangeValueForKey:v91];

    v92 = sub_1004A5734();
    [v76 willChangeValueForKey:v92];

    [v76 setPrimitiveAttributeChange:0];
    v93 = sub_1004A5734();
    [v76 didChangeValueForKey:v93];

    sub_10035A580(v105, v101);
    goto LABEL_31;
  }

  result = [v76 didChangeValueForKey:sub_1004A5734()];
  __break(1u);
  return result;
}

uint64_t sub_100358040(uint64_t a1)
{
  v3 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000C9C0(&qword_1005DA518, &qword_1004F77A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-v7];
  v9 = type metadata accessor for EnqueueableItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MessageBeingDownloaded(0);
  if ((*(*(v13 - 8) + 48))(a1, 1, v13))
  {
    return 0;
  }

  v15 = v1[17];

  v16 = sub_100331A6C(820000, v15);

  v17 = v1[2];
  v18 = v1[3];
  sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v5, _s6LoggerVMa_0);
  v19 = v16;

  sub_100327A94(v17, v18, v19, v5, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_100025F40(v8, &qword_1005DA518, &qword_1004F77A0);
    return 0;
  }

  sub_10035A84C(v8, v12, type metadata accessor for EnqueueableItem);
  v20 = sub_1003288B4(v12, v19);
  v22 = v21;

  sub_10035A8B4(v12, type metadata accessor for EnqueueableItem);
  if (v22)
  {
    return 0;
  }

  return v20;
}

uint64_t sub_100358330(uint64_t *a1)
{
  v3 = [v1 persistentStores];
  sub_10019A8E4(0, &qword_1005DA510, NSPersistentStore_ptr);
  v4 = sub_1004A5C14();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

LABEL_22:
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  if (!sub_1004A6A34())
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004A6794();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v5 = *(v4 + 32);
  }

  v3 = v5;

  v6 = [v1 persistentStores];
  v7 = sub_1004A5C14();

  if (v7 >> 62)
  {
    v8 = sub_1004A6A34();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 != 1)
  {
    goto LABEL_21;
  }

  v9 = [v1 metadataForPersistentStore:v3];
  v10 = sub_1004A5514();

  if (*(v10 + 16) && (v11 = sub_100064090(*a1, a1[1]), (v12 & 1) != 0))
  {
    sub_1001659C8(*(v10 + 56) + 32 * v11, v17);

    sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v13 = a1[6];
      v14 = v16;
      v13(v17);

      return v17[0];
    }
  }

  else
  {
  }

  return 0;
}

void sub_1003585D0(_OWORD *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = v5;
  v12 = [v10 userInfo];
  v28 = a1[1];
  v27[0] = a1[1];
  swift_bridgeObjectRetain_n();
  v13 = [v12 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v13)
  {
    sub_1002F9A9C(&v28);
    sub_1004A64E4();
    swift_unknownObjectRelease();
    sub_100025F40(v27, &qword_1005D4768, &unk_1004F5B20);
  }

  else
  {
    memset(v27, 0, 32);
    sub_100025F40(v27, &qword_1005D4768, &unk_1004F5B20);
    v14 = sub_10000C9C0(a2, a3);
    v15 = objc_allocWithZone(v14);
    v16 = &v15[qword_1005DAB70];
    *v16 = *a1;
    v17 = a1[1];
    v18 = a1[2];
    v19 = a1[4];
    *(v16 + 3) = a1[3];
    *(v16 + 4) = v19;
    *(v16 + 1) = v17;
    *(v16 + 2) = v18;
    sub_10000E268(a1, v27, a4, a5);
    v26.receiver = v15;
    v26.super_class = v14;
    v20 = objc_msgSendSuper2(&v26, "init");
    v21 = [v10 userInfo];
    v27[0] = v28;
    v22 = v20;
    [v21 __swift_setObject:v22 forKeyedSubscript:sub_1004A6DF4()];

    swift_unknownObjectRelease();
    v23 = [objc_opt_self() defaultCenter];
    sub_10019A8E4(0, &qword_1005DA508, NSManagedObjectContext_ptr);
    v24 = v22;
    v25 = sub_1004A6214();
    [v23 addObserver:v24 selector:"managedObjectContextWillSave:" name:v25 object:v10];
  }
}

uint64_t sub_10035885C(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_100351FB8(a1, a2, *v2);
  v68 = v3;
  if (!v3)
  {
    if (v8)
    {
      return *(v6 + 16);
    }

    v9 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        return result;
      }

      v44 = v2;
      v45 = a1;
      v12 = (result << 6) + 96;
      while (v9 < v10)
      {
        v46 = result;
        v13 = v6;
        v14 = (v6 + v12);
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[3];
        v66 = v14[2];
        v67 = v17;
        v65[0] = v15;
        v65[1] = v16;
        v61 = v15;
        v62 = v16;
        v63 = v66;
        v64 = v17;
        sub_10000E268(v65, &v57, &qword_1005D8C98, &qword_1004F5F18);
        v18 = v4;
        v19 = v68;
        v20 = v45(&v61);
        v68 = v19;
        if (v19)
        {
          v57 = v61;
          v58 = v62;
          v59 = v63;
          v60 = v64;
          return sub_100025F40(&v57, &qword_1005D8C98, &qword_1004F5F18);
        }

        v21 = v20;
        v57 = v61;
        v58 = v62;
        v59 = v63;
        v60 = v64;
        sub_100025F40(&v57, &qword_1005D8C98, &qword_1004F5F18);
        if (v21)
        {
          v4 = v18;
          v6 = v13;
          result = v46;
        }

        else
        {
          result = v46;
          if (v9 == v46)
          {
            v4 = v18;
            v6 = v13;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v22 = *v11;
            if (v46 >= *v11)
            {
              goto LABEL_27;
            }

            v23 = &v13[8 * v46 + 4];
            v24 = *v23;
            v25 = v23[1];
            v26 = v23[3];
            v51 = v23[2];
            v52 = v26;
            v49 = v24;
            v50 = v25;
            if (v9 >= v22)
            {
              goto LABEL_28;
            }

            v27 = *v14;
            v28 = v14[1];
            v29 = v14[3];
            v55 = v14[2];
            v56 = v29;
            v53 = v27;
            v54 = v28;
            sub_10000E268(&v49, v48, &qword_1005D8C98, &qword_1004F5F18);
            sub_10000E268(&v53, v48, &qword_1005D8C98, &qword_1004F5F18);
            result = swift_isUniquelyReferenced_nonNull_native();
            v6 = v13;
            if ((result & 1) == 0)
            {
              result = sub_1003364CC(v13);
              v6 = result;
            }

            v4 = v18;
            if (v46 >= *(v6 + 16))
            {
              goto LABEL_29;
            }

            v30 = (v6 + (v46 << 6));
            v31 = v30[2];
            v32 = v30[3];
            v33 = v30[5];
            v47[2] = v30[4];
            v47[3] = v33;
            v47[0] = v31;
            v47[1] = v32;
            v34 = v53;
            v35 = v54;
            v36 = v56;
            v30[4] = v55;
            v30[5] = v36;
            v30[2] = v34;
            v30[3] = v35;
            result = sub_100025F40(v47, &qword_1005D8C98, &qword_1004F5F18);
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_30;
            }

            v37 = (v6 + v12);
            v38 = *(v6 + v12);
            v39 = *(v6 + v12 + 16);
            v40 = *(v6 + v12 + 48);
            v48[2] = *(v6 + v12 + 32);
            v48[3] = v40;
            v48[0] = v38;
            v48[1] = v39;
            v41 = v49;
            v42 = v50;
            v43 = v52;
            v37[2] = v51;
            v37[3] = v43;
            *v37 = v41;
            v37[1] = v42;
            sub_100025F40(v48, &qword_1005D8C98, &qword_1004F5F18);
            *v44 = v6;
            result = v46;
          }

          ++result;
        }

        ++v9;
        v11 = (v6 + 16);
        v10 = *(v6 + 16);
        v12 += 64;
        if (v9 == v10)
        {
          return result;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100358B50(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for MessageBeingDownloaded(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_1003520F0(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v12;
    v37 = v9;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_10035A508(v23 + v24 * v19, v39, type metadata accessor for MessageBeingDownloaded);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_10035A8B4(v25, type metadata accessor for MessageBeingDownloaded);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_10035A508(v23 + v24 * v43, v36, type metadata accessor for MessageBeingDownloaded);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_10035A508(v23 + v42, v37, type metadata accessor for MessageBeingDownloaded);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1003364E0(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_100331A08(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_100331A08(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

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

    __break(1u);
  }

  return result;
}