void sub_F38()
{
  v1 = v0;
  v2 = sub_2860();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2880();
  v5 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = [v1 delegate];
  if (v11)
  {
    v12 = v11;
    v13 = sub_28A0();
    [v12 diagnosticOperation:v1 logMessage:v13];

    swift_unknownObjectRelease();
  }

  v14 = [objc_allocWithZone(HKHealthStore) init];
  sub_2850();
  v15 = objc_allocWithZone(HKDeviceKeyValueStore);
  v16 = v14;
  v17 = sub_28A0();

  v18 = [v15 initWithProtectionCategory:1 domain:v17 healthStore:v16];

  v35 = v16;
  v19 = dispatch_semaphore_create(0);
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = v19;
  aBlock[4] = sub_2360;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_15C4;
  aBlock[3] = &unk_43A0;
  v21 = _Block_copy(aBlock);
  v22 = v1;
  v23 = v19;

  v36 = v18;
  [v18 fetchEntriesForKey:0 completion:v21];
  _Block_release(v21);
  sub_2870();
  *v4 = 10;
  v25 = v38;
  v24 = v39;
  (*(v38 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v39);
  sub_2890();
  (*(v25 + 8))(v4, v24);
  v26 = *(v5 + 8);
  v27 = v8;
  v28 = v37;
  v26(v27, v37);
  v29 = sub_2900();
  v26(v10, v28);
  v30 = [v22 delegate];
  v31 = v30;
  if (v29)
  {
    if (v30)
    {
      v32 = sub_28A0();
      [v31 diagnosticOperation:v22 logMessage:v32];

      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  if (!v30)
  {
LABEL_8:

    goto LABEL_9;
  }

  v33 = sub_28A0();
  [v31 diagnosticOperation:v22 logMessage:v33];

  swift_unknownObjectRelease();
LABEL_9:
}

void sub_13B0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    [v2 appendStrongSeparator];
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2950())
    {
      v12 = v3;
      if (!i)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_2940();
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_20;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        sub_16B0(v6);

        ++v3;
        if (v8 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_13:
  }

  else
  {
    v9 = [v2 delegate];
    if (v9)
    {
      v10 = v9;
      sub_2930(24);

      swift_errorRetain();
      sub_240C(0, &qword_8318, sub_23A8);
      v14._countAndFlagsBits = sub_28C0();
      sub_28D0(v14);

      v11 = sub_28A0();

      [v10 diagnosticOperation:v2 logMessage:v11];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_15C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2460(0, &qword_8310, HKDeviceKeyValueStorageGroup_ptr);
    v4 = sub_28F0();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_16B0(void *a1)
{
  v2 = v1;
  sub_240C(0, &qword_8328, &type metadata accessor for TimeZone);
  __chkstk_darwin(v4 - 8);
  v6 = &v55 - v5;
  v89 = sub_2840();
  v91 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_27F0();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_27D0();
  v69 = *(v87 - 8);
  __chkstk_darwin(v87);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_27B0();
  v71 = *(v86 - 8);
  __chkstk_darwin(v86);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_27C0();
  v73 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2800();
  *&v65 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2820();
  v63 = *(v80 - 8);
  __chkstk_darwin(v80);
  v92 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 deviceContext];
  v18 = [v17 description];
  sub_28B0();

  v19 = sub_28A0();

  [v2 appendString:v19];

  [v2 appendSeparator];
  v20 = objc_allocWithZone(HKTableFormatter);
  isa = sub_28E0().super.isa;
  v22 = [v20 initWithColumnTitles:isa];

  v23 = [a1 storageEntries];
  sub_2460(0, &qword_8330, HKDeviceKeyValueStorageEntry_ptr);
  v24 = sub_28F0();

  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_20;
  }

  v26 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
  if (v26)
  {
    do
    {
      v79 = v13;
      v75 = v11;
      v76 = v9;
      v77 = v6;
      v56 = v2;
      v13 = 0;
      v57 = 0;
      v78 = v25 & 0xC000000000000001;
      v58 = v25 & 0xFFFFFFFFFFFFFF8;
      v74 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
      v73 += 13;
      v72 = enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:);
      v71 += 13;
      v70 = enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:);
      v69 += 13;
      v68 = enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:);
      v67 = v90 + 104;
      v66 = (v91 + 48);
      v61 = (v91 + 32);
      v60 = (v65 + 8);
      v59 = (v63 + 8);
      v65 = xmmword_2CB0;
      v6 = v92;
      v2 = &type metadata for String;
      v63 = v25;
      v64 = v22;
      v62 = v26;
      while (v78)
      {
        v27 = sub_2940();
        v9 = v79;
        v28 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        v91 = v28;
        sub_24A8();
        v29 = swift_allocObject();
        *(v29 + 16) = v65;
        v30 = [v27 key];
        v31 = sub_28B0();
        v33 = v32;

        *(v29 + 56) = &type metadata for String;
        *(v29 + 32) = v31;
        *(v29 + 40) = v33;
        v93 = 0;
        v34 = [v27 numberValue:&v93];
        v92 = v13;
        if (!v34)
        {
          v43 = v93;
          sub_2760();

          swift_willThrow();

          v57 = 0;
          v41 = (v29 + 64);
          *(v29 + 88) = &type metadata for String;
LABEL_14:
          v42 = v77;
          *v41 = 45;
          v40 = 0xE100000000000000;
          goto LABEL_15;
        }

        v35 = v34;
        v36 = v93;
        v37 = [v35 stringValue];

        v38 = sub_28B0();
        v40 = v39;

        v41 = (v29 + 64);
        *(v29 + 88) = &type metadata for String;
        if (!v40)
        {
          goto LABEL_14;
        }

        *v41 = v38;
        v42 = v77;
LABEL_15:
        v44 = v84;
        *(v29 + 72) = v40;
        v45 = [v27 modificationDate];
        sub_2810();

        (*v73)(v44, v74, v85);
        (*v71)(v9, v72, v86);
        (*v69)(v75, v70, v87);
        (*v67)(v76, v68, v88);
        sub_2830();
        v46 = v89;
        v47 = (*v66)(v42, 1, v89);
        v90 = v27;
        if (v47 == 1)
        {
          __break(1u);
        }

        (*v61)(v83, v42, v46);
        v48 = v81;
        sub_27E0();
        v49 = sub_27A0();
        v11 = v50;
        (*v60)(v48, v82);
        (*v59)(v6, v80);
        v2 = &type metadata for String;
        *(v29 + 120) = &type metadata for String;
        *(v29 + 96) = v49;
        *(v29 + 104) = v11;
        v51 = sub_28E0().super.isa;

        v22 = v64;
        [v64 appendHeterogenousRow:v51];

        v13 = (v92 + 1);
        v25 = v63;
        if (v91 == v62)
        {

          v2 = v56;
          goto LABEL_22;
        }
      }

      v9 = v79;
      if (v13 >= *(v58 + 16))
      {
        goto LABEL_19;
      }

      v27 = *(v25 + 8 * v13 + 32);
      v28 = (v13 + 1);
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v52 = v25;
      v53 = sub_2950();
      v25 = v52;
      v26 = v53;
    }

    while (v53);
  }

LABEL_22:
  v54 = [v22 formattedTable];
  if (!v54)
  {
    sub_28B0();
    v54 = sub_28A0();
  }

  [v2 appendString:v54];
}

id sub_22C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_2320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A8()
{
  result = qword_8320;
  if (!qword_8320)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_8320);
  }

  return result;
}

void sub_240C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2460(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_24A8()
{
  if (!qword_8338)
  {
    v0 = sub_2960();
    if (!v1)
    {
      atomic_store(v0, &qword_8338);
    }
  }
}

void sub_26C0()
{
  if (!qword_83C8)
  {
    v0 = sub_2960();
    if (!v1)
    {
      atomic_store(v0, &qword_83C8);
    }
  }
}

unint64_t sub_2714()
{
  result = qword_83D0;
  if (!qword_83D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_83D0);
  }

  return result;
}