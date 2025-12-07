uint64_t sub_100019A04@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  result = sub_100084AA8();
  *a3 = result;
  return result;
}

void sub_100019A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_100019B24(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100019B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a5;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = *(v11 + 16);
  if (*(a1 + 24) != 1)
  {
    v17(v14, a3, v10);
    sub_100014EE0(a2, v14, a4);
    v18 = v5;
    if (!v5)
    {
      return (*(v11 + 8))(v14, v10);
    }

    v16 = v14;
LABEL_6:
    result = (*(v11 + 8))(v16, v10);
    *v21 = v18;
    return result;
  }

  v17(&v20 - v15, a3, v10);
  sub_100019CE8(a2, v16, a4);
  v18 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  v14 = v16;
  return (*(v11 + 8))(v14, v10);
}

void sub_100019CE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v58 = a3;
  v68 = a2;
  v66 = a1;
  v67 = sub_100084668();
  v59 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v6 = __chkstk_darwin(v5 - 8);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v55 - v8;
  strcpy(v74, "identifier title hasMedia children ");
  v61 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75[0] = AssociatedTypeWitness;
  v75[1] = sub_100011888(&qword_1000A5BB0, &qword_10008B7B8);
  v75[2] = &type metadata for Bool;
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  v75[3] = sub_100085278();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v63 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v11 = &v55 - v10;
  v12 = sub_100084B28();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = sub_1000847C8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v57 = &v55 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v70 = *(v17 + 16);
  v71 = v17 + 16;
  v70(&v55 - v25, v68, v16);
  (*(v13 + 16))(v15, v66, v12);
  if ((*(v13 + 88))(v15, v12) != enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v17 + 8))(v26, v16);
    (*(v13 + 8))(v15, v12);
    return;
  }

  v55 = v26;
  v73 = v17;
  v69 = v16;
  (*(v13 + 96))(v15, v12);
  v27 = swift_projectBox();
  (*(v63 + 16))(v11, v27, TupleTypeMetadata);

  (*(*(AssociatedTypeWitness - 8) + 8))(v11, AssociatedTypeWitness);

  v28 = [objc_opt_self() defaultManager];
  v29 = v65;
  v30 = sub_100085358();
  if (v29)
  {
    (*(v73 + 8))(v55, v69);

    return;
  }

  v31 = v30;

  v32 = v69;
  TupleTypeMetadata = *(v31 + 16);
  if (TupleTypeMetadata)
  {
    v33 = 0;
    v68 = v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v34 = (v59 + 8);
    v63 = v73 + 8;
    v65 = xmmword_10008B5D0;
    while (v33 < *(v31 + 16))
    {
      v70(v24, v68 + *(v73 + 72) * v33, v32);
      sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
      inited = swift_initStackObject();
      *(inited + 16) = v65;
      *(inited + 32) = NSURLIsDirectoryKey;
      v36 = NSURLIsDirectoryKey;
      sub_100079F54(inited);
      swift_setDeallocating();
      sub_10001C2BC(inited + 32, type metadata accessor for URLResourceKey);
      v37 = v72;
      sub_1000846C8();

      v38 = sub_100084638();
      (*v34)(v37, v67);
      if (v38 != 2 && (v38 & 1) != 0)
      {

        v39 = v73;
        v32 = v69;
        (*(v73 + 32))(v62, v24, v69);
        v40 = 0;
        goto LABEL_13;
      }

      ++v33;
      v32 = v69;
      (*v63)(v24, v69);
      if (TupleTypeMetadata == v33)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v40 = 1;
    v39 = v73;
LABEL_13:
    v41 = v62;
    (*(v39 + 56))(v62, v40, 1, v32);
    v42 = v41;
    v43 = v60;
    sub_100005888(v42, v60, &qword_1000A56E8, &qword_10008D350);
    v44 = (*(v39 + 48))(v43, 1, v32);
    v45 = v61;
    v46 = v66;
    v47 = v55;
    if (v44 == 1)
    {
      sub_1000058F0(v43, &qword_1000A56E8, &qword_10008D350);
      v76 = 0;
      if (*(v45 + 24) == 1 && *(v45 + 25) == 2)
      {
        v48 = objc_autoreleasePoolPush();
        sub_10001A968(v45, v46, &v76, v75);
        objc_autoreleasePoolPop(v48);
        if (v76)
        {
          sub_1000058F0(v62, &qword_1000A56E8, &qword_10008D350);
          (*(v39 + 8))(v47, v32);
          return;
        }
      }

      if (*(v45 + 25) == 1)
      {
        v52 = 0x656D686361747461;
      }

      else
      {
        v52 = 0x656D686361747441;
      }

      v53 = v56;
      sub_1000154B4(v52, 0xEB0000000073746ELL, v47, 0, 0, v56);

      sub_100014EE0(v46, v53, v58);
      v54 = v62;
      v50 = *(v39 + 8);
      v50(v53, v32);
      v51 = v54;
    }

    else
    {
      v49 = v57;
      (*(v39 + 32))(v57, v43, v32);
      sub_100014EE0(v46, v49, v58);
      v50 = *(v39 + 8);
      v50(v49, v32);
      v51 = v62;
    }

    sub_1000058F0(v51, &qword_1000A56E8, &qword_10008D350);
    v50(v47, v32);
  }
}

void sub_10001A820(char a1)
{
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    sub_100084C08();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      v3 = qword_1000A53E0;
      swift_unknownObjectRetain();
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_100084FB8();
      sub_10000B614(v4, qword_1000A5AA0);
      v5 = sub_100084FA8();
      v6 = sub_100085368();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Resetting context…", v7, 2u);
      }

      v8 = sub_100084BF8();
      [v8 reset];
      swift_unknownObjectRelease();

      v1 = v2;
    }

    *(v1 + 120) = 0;
  }
}

void sub_10001A968(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  sub_100084A68();
  if (v4)
  {
    *a4 = v4;
    return;
  }

  if (v12[3])
  {
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_10001C024(&v13, v16);
        sub_10001C118(v16, &v13);
        sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
        if (swift_dynamicCast())
        {
          v7 = [v12[0] isTable];

          sub_100006304(v16);
          if (v7)
          {
            *a3 = 1;
          }
        }

        else
        {
          sub_100006304(v16);
        }

        return;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_1000058F0(v12, &qword_1000A5AD0, &unk_10008B5E0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_1000058F0(&v13, &qword_1000A5BA8, &qword_10008F750);
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v8 = sub_100084FB8();
  sub_10000B614(v8, qword_1000A5AA0);
  v9 = sub_100084FA8();
  v10 = sub_100085388();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Object to be exported does not exist anymore — skipping", v11, 2u);
  }
}

void sub_10001ABCC(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000626C(a1, v9);
  v11 = (*(v10 + 72))(v9, v10);
  if (v12 >> 60 != 15)
  {
    v24 = *(a2 + 96);
    v13 = v11;
    v14 = v12;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v24 = v14;
      (*(v6 + 8))(v8, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v15 = sub_100084FB8();
      sub_10000B614(v15, qword_1000A5AA0);
      swift_errorRetain();
      v16 = sub_100084FA8();
      v17 = sub_100085378();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_100085988();
        v22 = sub_100038A4C(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot export attachment preview image file — skipping {error: %s}", v18, 0xCu);
        sub_100006304(v19);

        sub_10001C19C(v13, v24);
      }

      else
      {
        sub_10001C19C(v13, v24);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_10001C19C(v13, v14);
    }
  }
}

void sub_10001AEFC(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000626C(a1, v9);
  v11 = (*(v10 + 80))(v9, v10);
  if (v12 >> 60 != 15)
  {
    v24 = *(a2 + 96);
    v13 = v11;
    v14 = v12;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v24 = v14;
      (*(v6 + 8))(v8, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v15 = sub_100084FB8();
      sub_10000B614(v15, qword_1000A5AA0);
      swift_errorRetain();
      v16 = sub_100084FA8();
      v17 = sub_100085378();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_100085988();
        v22 = sub_100038A4C(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot export attachment fallback PDF file — skipping {error: %s}", v18, 0xCu);
        sub_100006304(v19);

        sub_10001C19C(v13, v24);
      }

      else
      {
        sub_10001C19C(v13, v24);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_10001C19C(v13, v14);
    }
  }
}

void sub_10001B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_100014EE0(a1, a3, a4);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_10001B29C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 1;
  }

  return result;
}

void sub_10001B49C()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    swift_getObjectType();
    if (qword_1000A5428 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1000B17A0;
    v4 = unk_1000B17A8;
    v6 = xmmword_1000B17B0;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 0;
    sub_10001C494(v2, &v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001B668@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a2;
  v32 = sub_100005740(&qword_1000A5BD0, &unk_10008B7C8);
  __chkstk_darwin(v32);
  v5 = &v25 - v4;
  v6 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v25 - v7;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100085718())
  {
    v9 = 0;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1 & 0xC000000000000001;
    v29 = (v27 + 32);
    v30 = (v27 + 48);
    v36 = _swiftEmptyArrayStorage;
    v28 = (v27 + 56);
    while (1)
    {
      if (v35)
      {
        v10 = sub_100085648();
      }

      else
      {
        if (v9 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = v6;
      v14 = [v10 managedObjectContext];
      if (v14)
      {
        v15 = v14;
        v16 = a1;
        __chkstk_darwin(v14);
        v17 = v33;
        *(&v25 - 2) = v11;
        *(&v25 - 1) = v17;
        v18 = v37;
        sub_100085488();
        v37 = v18;

        v6 = v13;
        if ((*v30)(v5, 1, v13) != 1)
        {
          v19 = *v29;
          (*v29)(v31, v5, v13);
          v20 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_10000F014(0, v20[2] + 1, 1, v20);
          }

          v22 = v20[2];
          v21 = v20[3];
          v36 = v20;
          if (v22 >= v21 >> 1)
          {
            v36 = sub_10000F014((v21 > 1), v22 + 1, 1, v36);
          }

          v23 = v36;
          v36[2] = v22 + 1;
          v6 = v13;
          v19(&v23[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22], v31, v13);
          a1 = v16;
          goto LABEL_6;
        }
      }

      else
      {

        (*v28)(v5, 1, 1, v6);
      }

      sub_1000058F0(v5, &qword_1000A5BD0, &unk_10008B7C8);
LABEL_6:
      ++v9;
      if (v12 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_23:
  sub_100069B38(v36, v26, v25);
}

uint64_t sub_10001BD64(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 104) = 0;
  *(v4 + 112) = 32;
  *(v4 + 120) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = a2[2];
  *(v4 + 69) = *(a2 + 45);
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100011C60();
  return v4;
}

void sub_10001BDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_10001BEE4(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 sub_10001BF08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001BF24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 61))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10001BF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10001C024(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001C03C(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_10001C0C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10001C118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001C19C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000650C(result, a2);
  }

  return result;
}

uint64_t sub_10001C1E8(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_10001C220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_10001C274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001C2BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001C348()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C3A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C3E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001C494(void *a1, _OWORD *a2)
{
  sub_100084C08();
  swift_allocObject();
  v4 = a1;
  v5 = sub_100084BE8();
  v6 = [objc_opt_self() defaultManager];
  sub_100005740(&qword_1000A5BD8, &qword_10008B7D8);
  v7 = swift_allocObject();
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  v8 = a2[1];
  *(v7 + 24) = *a2;
  *(v7 + 104) = 0;
  *(v7 + 112) = 32;
  *(v7 + 120) = 0;
  *(v7 + 16) = v5;
  *(v7 + 40) = v8;
  *(v7 + 56) = a2[2];
  *(v7 + 69) = *(a2 + 45);
  *(v7 + 88) = v6;
  *(v7 + 96) = &protocol witness table for NSFileManager;

  v9 = v6;
  sub_1000699CC();

  v10 = type metadata accessor for ICArchiveExporterObjCBridge();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___ICArchiveExporter_exporter] = v7;
  v14.receiver = v11;
  v14.super_class = v10;

  v12 = objc_msgSendSuper2(&v14, "init");

  return v12;
}

void sub_10001C5F0()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_1000A5428 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1000B17A0;
    v4 = unk_1000B17A8;
    v6 = xmmword_1000B17B0;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 256;
    sub_10001C494(v2, &v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10001C720()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_1000A5428 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1000B17A0;
    v4 = unk_1000B17A8;
    v6 = xmmword_1000B17B0;

    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 513;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v13 = IsAlexandriaDemoModeEnabled;
    v14 = 1;
    v15 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v16 = 0;
    sub_10001C494(v2, &v8);
  }

  else
  {
    __break(1u);
  }
}

_OWORD *sub_10001C864(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static ICArchive.archiveTitle<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100084B28();
  v5 = sub_1000854E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  if (sub_100085268() != 1)
  {
    goto LABEL_9;
  }

  v22[1] = a1;
  sub_100085278();
  swift_getWitnessTable();
  sub_100085308();
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
LABEL_9:
    v18 = [objc_opt_self() mainBundle];
    v19 = sub_100085068();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    v14 = sub_100085098();
    return v14;
  }

  sub_100084AE8();
  v11 = v10;
  (*(v9 + 8))(v8, v4);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = sub_100085068();

  v13 = [v12 ic_sanitizedFilenameString];

  v14 = sub_100085098();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_9;
  }

  return v14;
}

uint64_t static ICArchive.markdownArchiveFilename(forTitle:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100085068();
  v3 = [v2 ic_sanitizedFilenameString];

  v4 = sub_100085098();
  return v4;
}

uint64_t static ICArchive.archiveFilename(forTitle:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100085068();
  v3 = [v2 ic_sanitizedFilenameString];

  v4 = sub_100085098();
  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  sub_100085158(v6);
  v7._countAndFlagsBits = 0x6372617365746F6ELL;
  v7._object = 0xEC00000065766968;
  sub_100085158(v7);
  return v4;
}

unint64_t sub_10001CD08(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_10001CD4C()
{
  v0 = sub_1000844E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528();
  swift_allocObject();
  v4 = sub_100084518();
  (*(v1 + 104))(v3, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  result = sub_1000844F8();
  qword_1000B1780 = v4;
  return result;
}

uint64_t sub_10001CE40()
{
  v0 = sub_100084498();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000844D8();
  swift_allocObject();
  v4 = sub_1000844C8();
  (*(v1 + 104))(v3, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v0);
  result = sub_1000844A8();
  qword_1000B1788 = v4;
  return result;
}

uint64_t sub_10001CF34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_10001CFE0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100085948() & 1;
  }
}

uint64_t sub_10001D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(a4 + 32))(a3, a4);
  v11 = v9;
  v12 = v10;
  if (v10)
  {
    v26 = v9;
    v27 = v10;
    __chkstk_darwin(v9);
    *(&v25 - 2) = &v26;
    v13 = sub_10001CF34(sub_10001D2E4, (&v25 - 4), &off_10009DD00);
    swift_arrayDestroy();
    if (v13)
    {
      v26 = v11;
      v27 = v12;
      v30 = 46;
      v31 = 0xE100000000000000;
      sub_10001D33C();
      v14 = sub_1000854F8();

      v16 = (v14 + 16);
      v15 = *(v14 + 16);
      v26 = v14;
      v27 = v14 + 32;
      if (v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * v15 - 1;
      }

      v28 = 0;
      v29 = v17;

      sub_100005740(&qword_1000A5BE8, &unk_10008B7F0);
      sub_10001D390();
      v18 = sub_100085038();
      v20 = v19;
      swift_unknownObjectRelease();
      if (*v16)
      {
        v21 = &v16[2 * *v16];
        v22 = *v21;
        v23 = v21[1];

        v26 = v18;
        v27 = v20;
        v32._countAndFlagsBits = 3027488;
        v32._object = 0xE300000000000000;
        sub_100085158(v32);
        v33._countAndFlagsBits = v22;
        v33._object = v23;
        sub_100085158(v33);
      }

      else
      {

        v26 = v18;
        v27 = v20;
        v34._countAndFlagsBits = 12832;
        v34._object = 0xE200000000000000;
        sub_100085158(v34);
      }

      v11 = v26;
    }
  }

  (*(v6 + 8))(v8, a3);
  return v11;
}

uint64_t sub_10001D2E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100085948() & 1;
  }
}

unint64_t sub_10001D33C()
{
  result = qword_1000A5BE0;
  if (!qword_1000A5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BE0);
  }

  return result;
}

unint64_t sub_10001D390()
{
  result = qword_1000A5BF0;
  if (!qword_1000A5BF0)
  {
    sub_100011888(&qword_1000A5BE8, &unk_10008B7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BF0);
  }

  return result;
}

uint64_t sub_10001D3F4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A5BF8);
  sub_10000B614(v0, qword_1000A5BF8);
  return sub_100084F98();
}

uint64_t sub_10001D440(uint64_t a1, char *a2, CGColor *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  v12 = _s16AttributedStringV9AttributeVMa(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a6;

  sub_10001D5C8(v17, a2, a3, a6, v7, v15);
  v18 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_10000F220(0, v18[2] + 1, 1, v18);
    *(a5 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_10000F220((v20 > 1), v21 + 1, 1, v18);
    *(a5 + 16) = v18;
  }

  v18[2] = v21 + 1;
  return sub_100032CA4(v15, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, _s16AttributedStringV9AttributeVMa);
}

void sub_10001D5C8(uint64_t a1@<X0>, char *a2@<X1>, CGColor *a3@<X2>, void *a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v233 = a5;
  v256 = a4;
  v257 = a2;
  v254 = a3;
  v258 = a1;
  v7 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
  __chkstk_darwin(v7 - 8);
  v232 = &v226 - v8;
  v9 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v9 - 8);
  v261 = &v226 - v10;
  v11 = sub_1000847C8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v227 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v246 = &v226 - v15;
  v16 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  __chkstk_darwin(v16 - 8);
  v238 = &v226 - v17;
  v18 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v18 - 8);
  v245.i64[0] = &v226 - v19;
  v20 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v20 - 8);
  v22 = &v226 - v21;
  v23 = sub_100084918();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v240 = &v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s16AttributedStringV9AttributeVMa(0);
  v27 = v26[5];
  v251 = v24;
  v28 = *(v24 + 56);
  v239 = v27;
  v253 = v28;
  v28(&a6[v27], 1, 1, v23);
  v29 = v26[6];
  v30 = sub_1000848B8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v243 = v30;
  v244.i64[0] = v29;
  v241 = (v31 + 56);
  v242 = v32;
  (v32)(&a6[v29], 1, 1);
  v33 = &a6[v26[7]];
  *v33 = xmmword_10008B800;
  *(v33 + 1) = 0u;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *(v33 + 8) = 0;
  v34 = v26[8];
  v35 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v236 = v35;
  v237 = v34;
  v234 = v36 + 56;
  v235 = v37;
  (v37)(&a6[v34], 1, 1);
  v249 = v26[9];
  a6[v249] = 5;
  v38 = v26[10];
  v252 = v12;
  v39 = *(v12 + 56);
  v248 = v38;
  v255 = v11;
  v259 = v39;
  v260 = v12 + 56;
  v39(&a6[v38], 1, 1, v11);
  v250 = v26[11];
  a6[v250] = 5;
  v40 = &a6[v26[12]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v247 = v40;
  v41 = v26[13];
  v42 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v230 = v42;
  v231 = v41;
  v228 = v43 + 56;
  v229 = v44;
  (v44)(&a6[v41], 1, 1);
  v45 = v257;
  v46 = v258;
  v257 = a6;
  v47 = v254;
  *a6 = v45;
  *(a6 + 1) = v47;
  if (!*(v46 + 16))
  {
    goto LABEL_6;
  }

  v48 = ICTTAttributeNameReplicaID;
  v49 = sub_1000392C8(v48);
  if ((v50 & 1) == 0)
  {

LABEL_6:
    v253(v22, 1, 1, v23);
    goto LABEL_7;
  }

  sub_1000056E4(*(v46 + 56) + 32 * v49, &v271);

  v51 = swift_dynamicCast();
  v52 = v253;
  v253(v22, v51 ^ 1u, 1, v23);
  v53 = v251;
  if ((*(v251 + 48))(v22, 1, v23) != 1)
  {
    v254 = *(v53 + 32);
    v54 = v240;
    (v254)(v240, v22, v23);
    v55 = v257;
    v56 = v239;
    sub_1000058F0(&v257[v239], &qword_1000A5C20, &unk_10008B840);
    (v254)(&v55[v56], v54, v23);
    v52(&v55[v56], 0, 1, v23);
    goto LABEL_8;
  }

LABEL_7:
  sub_1000058F0(v22, &qword_1000A5C20, &unk_10008B840);
LABEL_8:
  v57 = v261;
  if (!*(v46 + 16))
  {
    goto LABEL_12;
  }

  v58 = ICTTAttributeNameTimestamp;
  v59 = sub_1000392C8(v58);
  if (v60)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v59, &v271);

    if (swift_dynamicCast())
    {
      v61 = v245.i64[0];
      sub_100084868();
      v242(v61, 0, 1, v243);
      sub_100005820(v61, &v257[v244.i64[0]], &qword_1000A5490, &qword_10008CD80);
    }

LABEL_12:
    if (!*(v46 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*(v46 + 16))
  {
    goto LABEL_29;
  }

LABEL_15:
  v62 = ICTTAttributeNameFont;
  v63 = sub_1000392C8(v62);
  if ((v64 & 1) == 0)
  {

    if (!*(v46 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_1000056E4(*(v46 + 56) + 32 * v63, v276);

  sub_100008250(0, &qword_1000A5C48, ICTTFont_ptr);
  if (swift_dynamicCast())
  {
    v65 = v262;
    v66 = *(v33 + 1);
    v271 = *v33;
    v272 = v66;
    v67 = *(v33 + 2);
    v68 = *(v33 + 3);
    v273 = v67;
    v274 = v68;
    v275 = *(v33 + 8);
    v69 = *(&v271 + 1);
    if (*(&v271 + 1) == 1)
    {
      v253 = 0;
      v254 = 0;
      v69 = 0;
      v251 = 0;
      v245.i64[0] = 0;
      v70 = 0;
      v71 = 0;
      v67.i64[0] = 0x2000200020002;
      v244 = v67;
      v72 = 1;
      v73 = 1;
    }

    else
    {
      v253 = v272;
      v254 = v271;
      v67.i32[0] = *(&v272 + 9);
      v244 = vmovl_u8(*v67.i8);
      v251 = v273.i64[0];
      v70 = *(&v274 + 1);
      v245.i64[0] = v274;
      v71 = v275;
      v73 = v273.i8[8];
      v72 = BYTE8(v272);
    }

    v74 = v72 & 1;
    v265 = v72 & 1;
    v75 = v73 & 1;
    v264 = v73 & 1;
    v76 = *(v33 + 3);
    v268 = *(v33 + 2);
    v269 = v76;
    v270 = *(v33 + 8);
    v77 = *(v33 + 1);
    v266 = *v33;
    v267 = v77;
    sub_100005888(&v271, v263, &qword_1000A5C40, &qword_10008B858);
    sub_1000058F0(&v266, &qword_1000A5C40, &qword_10008B858);
    v78 = v253;
    *v33 = v254;
    *(v33 + 1) = v69;
    *(v33 + 2) = v78;
    v33[24] = v74;
    *(v33 + 25) = vuzp1_s8(*v244.i8, *v244.i8).u32[0];
    *(v33 + 4) = v251;
    v33[40] = v75;
    *(v33 + 6) = v245.i64[0];
    *(v33 + 7) = v70;
    *(v33 + 8) = v71;
    v79 = v65;
    v80 = [(CGColor *)v65 fontName];
    if (v80)
    {
      v81 = v80;
      v82 = sub_100085098();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v46 = v258;
    v57 = v261;

    *v33 = v82;
    *(v33 + 1) = v84;
    if (v84 != 1)
    {
      [(CGColor *)v79 pointSize];
      *(v33 + 2) = v85;
      v33[24] = 0;
      if (*(v33 + 1) != 1)
      {
        v33[25] = [(CGColor *)v79 fontHints]& 1;
        if (*(v33 + 1) != 1)
        {
          v225 = [(CGColor *)v79 fontHints];

          v33[26] = (v225 & 2) != 0;
          if (!*(v46 + 16))
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_29:
  if (!*(v46 + 16))
  {
    goto LABEL_37;
  }

LABEL_30:
  v86 = ICTTAttributeNameFontHints;
  v87 = sub_1000392C8(v86);
  if (v88)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v87, v276);

    if (swift_dynamicCast())
    {
      v89 = v262;
      v90 = *(v33 + 1);
      v271 = *v33;
      v272 = v90;
      v91 = *(v33 + 3);
      v273 = *(v33 + 2);
      v274 = v91;
      v275 = *(v33 + 8);
      v92 = *(&v271 + 1);
      if (*(&v271 + 1) == 1)
      {
        v253 = 0;
        v254 = 0;
        v92 = 0;
        v251 = 0;
        v245.i64[0] = 0;
        v242 = 0;
        v243 = 0;
        v244.i32[0] = 2;
        v93 = 1;
        v94 = 2;
        v95 = 1;
      }

      else
      {
        v253 = v272;
        v254 = v271;
        v244.i32[0] = BYTE11(v272);
        v94 = BYTE12(v272);
        v251 = v273.i64[0];
        v245.i64[0] = v274;
        v242 = v275;
        v243 = *(&v274 + 1);
        v95 = v273.i8[8];
        v93 = BYTE8(v272);
      }

      v96 = v93 & 1;
      v265 = v93 & 1;
      v97 = v95 & 1;
      v264 = v95 & 1;
      v98 = *(v33 + 3);
      v268 = *(v33 + 2);
      v269 = v98;
      v270 = *(v33 + 8);
      v99 = *(v33 + 1);
      v266 = *v33;
      v267 = v99;
      sub_100005888(&v271, v263, &qword_1000A5C40, &qword_10008B858);
      sub_1000058F0(&v266, &qword_1000A5C40, &qword_10008B858);
      v100 = v253;
      *v33 = v254;
      *(v33 + 1) = v92;
      *(v33 + 2) = v100;
      v33[24] = v96;
      v33[27] = v244.i8[0];
      v33[28] = v94;
      *(v33 + 4) = v251;
      v33[40] = v97;
      v101 = v242;
      v102 = v243;
      *(v33 + 6) = v245.i64[0];
      *(v33 + 7) = v102;
      *(v33 + 8) = v101;
      v33[25] = v89 & 1;
      v33[26] = (v89 & 2) != 0;
      v57 = v261;
    }
  }

  else
  {
  }

LABEL_37:
  if (*(v46 + 16))
  {
    v103 = ICTTAttributeNameUnderline;
    v104 = sub_1000392C8(v103);
    if (v105)
    {
      sub_1000056E4(*(v46 + 56) + 32 * v104, v276);

      if (swift_dynamicCast())
      {
        LODWORD(v254) = v262;
        v106 = *(v33 + 1);
        v271 = *v33;
        v272 = v106;
        v107 = *(v33 + 3);
        v273 = *(v33 + 2);
        v274 = v107;
        v275 = *(v33 + 8);
        v108 = *(&v271 + 1);
        if (*(&v271 + 1) == 1)
        {
          v253 = 0;
          v108 = 0;
          v251 = 0;
          v245.i64[0] = 0;
          v242 = 0;
          v243 = 0;
          v241 = 0;
          v244.i32[0] = 2;
          v109 = 1;
          v110 = 2;
          v111 = 2;
          v112 = 1;
        }

        else
        {
          v253 = v271;
          v251 = v272;
          v244.i32[0] = BYTE9(v272);
          v110 = BYTE10(v272);
          v111 = BYTE12(v272);
          v245.i64[0] = v273.i64[0];
          v242 = *(&v274 + 1);
          v243 = v274;
          v241 = v275;
          v112 = v273.i8[8];
          v109 = BYTE8(v272);
        }

        v123 = v109 & 1;
        v265 = v109 & 1;
        v124 = v112 & 1;
        v264 = v112 & 1;
        v125 = *(v33 + 3);
        v268 = *(v33 + 2);
        v269 = v125;
        v270 = *(v33 + 8);
        v126 = *(v33 + 1);
        v266 = *v33;
        v267 = v126;
        sub_100005888(&v271, v263, &qword_1000A5C40, &qword_10008B858);
        sub_1000058F0(&v266, &qword_1000A5C40, &qword_10008B858);
        *v33 = v253;
        *(v33 + 1) = v108;
        *(v33 + 2) = v251;
        v33[24] = v123;
        v33[25] = v244.i8[0];
        v33[26] = v110;
        v33[28] = v111;
        *(v33 + 4) = v245.i64[0];
        v33[40] = v124;
        v127 = v242;
        *(v33 + 6) = v243;
        *(v33 + 7) = v127;
        *(v33 + 8) = v241;
        v33[27] = v254;
        v57 = v261;
        if (!*(v46 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  if (!*(v46 + 16))
  {
    goto LABEL_54;
  }

LABEL_44:
  v113 = ICTTAttributeNameStrikethrough;
  v114 = sub_1000392C8(v113);
  if (v115)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v114, v276);

    if (swift_dynamicCast())
    {
      LODWORD(v254) = v262;
      v116 = *(v33 + 1);
      v271 = *v33;
      v272 = v116;
      v117 = *(v33 + 3);
      v273 = *(v33 + 2);
      v274 = v117;
      v275 = *(v33 + 8);
      v118 = *(&v271 + 1);
      if (*(&v271 + 1) == 1)
      {
        v253 = 0;
        v118 = 0;
        v251 = 0;
        v245.i64[0] = 0;
        v242 = 0;
        v243 = 0;
        v241 = 0;
        v244.i32[0] = 2;
        v119 = 1;
        v120 = 2;
        v121 = 2;
        v122 = 1;
      }

      else
      {
        v253 = v271;
        v251 = v272;
        v244.i32[0] = BYTE9(v272);
        v120 = BYTE10(v272);
        v121 = BYTE11(v272);
        v245.i64[0] = v273.i64[0];
        v242 = *(&v274 + 1);
        v243 = v274;
        v241 = v275;
        v122 = v273.i8[8];
        v119 = BYTE8(v272);
      }

      v128 = v119 & 1;
      v265 = v119 & 1;
      v129 = v122 & 1;
      v264 = v122 & 1;
      v130 = *(v33 + 3);
      v268 = *(v33 + 2);
      v269 = v130;
      v270 = *(v33 + 8);
      v131 = *(v33 + 1);
      v266 = *v33;
      v267 = v131;
      sub_100005888(&v271, v263, &qword_1000A5C40, &qword_10008B858);
      sub_1000058F0(&v266, &qword_1000A5C40, &qword_10008B858);
      *v33 = v253;
      *(v33 + 1) = v118;
      *(v33 + 2) = v251;
      v33[24] = v128;
      v33[25] = v244.i8[0];
      v33[26] = v120;
      v33[27] = v121;
      *(v33 + 4) = v245.i64[0];
      v33[40] = v129;
      v132 = v242;
      *(v33 + 6) = v243;
      *(v33 + 7) = v132;
      *(v33 + 8) = v241;
      v33[28] = v254;
      v57 = v261;
    }
  }

  else
  {
  }

LABEL_54:
  if (!*(v46 + 16))
  {
    goto LABEL_60;
  }

  v133 = ICTTAttributeNameSuperscript;
  v134 = sub_1000392C8(v133);
  if ((v135 & 1) == 0)
  {

LABEL_60:
    if (!*(v46 + 16))
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  sub_1000056E4(*(v46 + 56) + 32 * v134, v276);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v254 = v262;
  v136 = *(v33 + 1);
  v271 = *v33;
  v272 = v136;
  v137 = *(v33 + 2);
  v138 = *(v33 + 3);
  v273 = v137;
  v274 = v138;
  v275 = *(v33 + 8);
  v139 = *(&v271 + 1);
  if (*(&v271 + 1) == 1)
  {
    v253 = 0;
    v139 = 0;
    v251 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v137.i64[0] = 0x2000200020002;
    v245 = v137;
    v143 = 1;
  }

  else
  {
    v253 = v271;
    v251 = v272;
    v137.i32[0] = *(&v272 + 9);
    v245 = vmovl_u8(*v137.i8);
    v141 = *(&v274 + 1);
    v140 = v274;
    v142 = v275;
    v143 = BYTE8(v272);
  }

  v177 = v143 & 1;
  v265 = v143 & 1;
  v178 = *(v33 + 3);
  v268 = *(v33 + 2);
  v269 = v178;
  v270 = *(v33 + 8);
  v179 = *(v33 + 1);
  v266 = *v33;
  v267 = v179;
  sub_100005888(&v271, v263, &qword_1000A5C40, &qword_10008B858);
  sub_1000058F0(&v266, &qword_1000A5C40, &qword_10008B858);
  *v33 = v253;
  *(v33 + 1) = v139;
  *(v33 + 2) = v251;
  v33[24] = v177;
  *(v33 + 25) = vuzp1_s8(*v245.i8, *v245.i8).u32[0];
  *(v33 + 6) = v140;
  *(v33 + 7) = v141;
  *(v33 + 8) = v142;
  *(v33 + 4) = v254;
  v33[40] = 0;
  v57 = v261;
  if (!*(v46 + 16))
  {
LABEL_83:
    v166 = v255;
    v165 = v256;
    if (!*(v46 + 16))
    {
LABEL_89:
      v259(v57, 1, 1, v166);
LABEL_90:
      sub_1000058F0(v57, &qword_1000A56E8, &qword_10008D350);
      if (!*(v46 + 16))
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }

    goto LABEL_84;
  }

LABEL_61:
  v144 = ICTTAttributeNameForegroundColor;
  v145 = sub_1000392C8(v144);
  if (v146)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v145, v276);

    v147 = *(v33 + 1);
    v271 = *v33;
    v272 = v147;
    v148 = *(v33 + 2);
    v149 = *(v33 + 3);
    v273 = v148;
    v274 = v149;
    v275 = *(v33 + 8);
    v150 = *(&v271 + 1);
    if (*(&v271 + 1) == 1)
    {
      v253 = 0;
      v254 = 0;
      v150 = 0;
      v251 = 0;
      v245.i64[0] = 0;
      v151 = 0;
      v152 = 0;
      v148.i64[0] = 0x2000200020002;
      v244 = v148;
      v153 = 1;
      v154 = 1;
    }

    else
    {
      v253 = v272;
      v254 = v271;
      v148.i32[0] = *(&v272 + 9);
      v244 = vmovl_u8(*v148.i8);
      v251 = v273.i64[0];
      v151 = *(&v274 + 1);
      v245.i64[0] = v274;
      v152 = v275;
      v154 = v273.i8[8];
      v153 = BYTE8(v272);
    }

    v155 = v153 & 1;
    v265 = v153 & 1;
    v156 = v154 & 1;
    v264 = v154 & 1;
    v157 = *(v33 + 3);
    v268 = *(v33 + 2);
    v269 = v157;
    v270 = *(v33 + 8);
    v158 = *(v33 + 1);
    v266 = *v33;
    v267 = v158;
    sub_100005888(&v271, v263, &qword_1000A5C40, &qword_10008B858);
    sub_1000058F0(&v266, &qword_1000A5C40, &qword_10008B858);
    v159 = v253;
    *v33 = v254;
    *(v33 + 1) = v150;
    *(v33 + 2) = v159;
    v33[24] = v155;
    *(v33 + 25) = vuzp1_s8(*v244.i8, *v244.i8).u32[0];
    *(v33 + 4) = v251;
    v33[40] = v156;
    *(v33 + 6) = v245.i64[0];
    *(v33 + 7) = v151;
    *(v33 + 8) = v152;
    sub_1000056E4(v276, v263);
    type metadata accessor for CGColor(0);
    swift_dynamicCast();
    v160 = sub_100030B30(v262);
    v162 = v161;
    v164 = v163;
    sub_100006304(v276);
    sub_100031130(*(v33 + 6), *(v33 + 7), *(v33 + 8));
    *(v33 + 6) = v160;
    *(v33 + 7) = v162;
    *(v33 + 8) = v164;
    v57 = v261;
  }

  else
  {
  }

  v166 = v255;
  v165 = v256;
  if (*(v46 + 16))
  {
    v167 = ICTTAttributeNameParagraphStyle;
    v168 = sub_1000392C8(v167);
    if (v169)
    {
      sub_1000056E4(*(v46 + 56) + 32 * v168, &v271);

      sub_100008250(0, &qword_1000A5C38, ICTTParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v170 = v266;
        v171 = v238;
        sub_1000228C8(v170, v238);
        v235(v171, 0, 1, v236);
        v172 = v257;
        sub_100005820(v171, &v257[v237], &qword_1000A5C18, &unk_10008B830);
        v173 = [v170 writingDirection];

        v174 = v173 + 1;
        if (v173 == 3)
        {
          v175 = 4;
        }

        else
        {
          v175 = 5;
        }

        if (v174 >= 4)
        {
          v176 = v175;
        }

        else
        {
          v176 = 0x2030100u >> (8 * v174);
        }

        v172[v250] = v176;
        if (!*(v46 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      }
    }

    else
    {
    }
  }

  if (!*(v46 + 16))
  {
    goto LABEL_89;
  }

LABEL_84:
  v180 = ICTTNSLinkAttributeName;
  v181 = sub_1000392C8(v180);
  if ((v182 & 1) == 0)
  {

    goto LABEL_89;
  }

  sub_1000056E4(*(v46 + 56) + 32 * v181, &v271);

  v183 = swift_dynamicCast();
  v259(v57, v183 ^ 1u, 1, v166);
  if ((*(v252 + 48))(v57, 1, v166) == 1)
  {
    goto LABEL_90;
  }

  v184 = *(v252 + 32);
  v185 = v246;
  v184(v246, v57, v166);
  v186 = v257;
  v187 = v248;
  sub_1000058F0(&v257[v248], &qword_1000A56E8, &qword_10008D350);
  v184(&v186[v187], v185, v166);
  v259(&v186[v187], 0, 1, v166);
  if (!*(v46 + 16))
  {
LABEL_87:
    v271 = 0u;
    v272 = 0u;
    goto LABEL_105;
  }

LABEL_91:
  v188 = ICTTNSWritingDirectionAttributeName;
  v189 = sub_1000392C8(v188);
  if (v190)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v189, &v271);
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      v191 = v266 + 1;
      if (v266 == 3)
      {
        v192 = 4;
      }

      else
      {
        v192 = 5;
      }

      if (v191 < 4)
      {
        v192 = 0x2030100u >> (8 * v191);
      }

      v257[v250] = v192;
    }

    if (!*(v46 + 16))
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

LABEL_105:
  sub_1000058F0(&v271, &qword_1000A5AD0, &unk_10008B5E0);
  if (!*(v46 + 16))
  {
LABEL_106:
    v271 = 0u;
    v272 = 0u;
    goto LABEL_114;
  }

LABEL_103:
  v193 = ICTTAttributeNameEmphasis;
  v194 = sub_1000392C8(v193);
  if (v195)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v194, &v271);
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      v196 = ICEmphasisColorTypeForTag();
      v197 = sub_100031030(v196);
      v257[v249] = v197;
    }

    if (!*(v46 + 16))
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_114:
  sub_1000058F0(&v271, &qword_1000A5AD0, &unk_10008B5E0);
  if (!*(v46 + 16))
  {
LABEL_115:
    v271 = 0u;
    v272 = 0u;
    goto LABEL_118;
  }

LABEL_112:
  v198 = ICTTNSAttachmentAttributeName;
  v199 = sub_1000392C8(v198);
  if (v200)
  {
    sub_1000056E4(*(v46 + 56) + 32 * v199, &v271);
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

LABEL_118:

  if (!*(&v272 + 1))
  {

    sub_1000058F0(&v271, &qword_1000A5AD0, &unk_10008B5E0);
    return;
  }

  sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_139;
  }

  v201 = v266;
  if ([objc_opt_self() isInlineAttachment:v266])
  {
    if (v165)
    {
      v202 = v165;
      v203 = [v201 inlineAttachmentInContext:v202];
      if (v203)
      {
        v204 = v203;
        v205 = v232;
        sub_100023F00(v204, v232);
        v229(v205, 0, 1, v230);
        sub_100005820(v205, &v257[v231], &qword_1000A5C10, &unk_10008B820);
        if ((v233 & 1) != 0 && (v206 = [v204 tokenContentIdentifier]) != 0 && (v207 = v206, v208 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(), v207, v208))
        {
          v209 = v227;
          sub_100084768();

          v210 = v257;
          v211 = v248;
          sub_1000058F0(&v257[v248], &qword_1000A56E8, &qword_10008D350);
          (*(v252 + 32))(&v210[v211], v209, v166);
          v259(&v210[v211], 0, 1, v166);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v218 = sub_100084FB8();
    sub_10000B614(v218, qword_1000A5BF8);
    v219 = v201;
    v220 = sub_100084FA8();
    v221 = sub_100085368();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      *v222 = 138412290;
      *(v222 + 4) = v219;
      *v223 = v219;
      v224 = v219;
      _os_log_impl(&_mh_execute_header, v220, v221, "Cannot resolve inline attachment — skipping {attachment: %@}", v222, 0xCu);
      sub_1000058F0(v223, &qword_1000A5C30, &qword_10008B850);
    }

    else
    {
    }

LABEL_139:

    return;
  }

  v212 = [v201 attachmentIdentifier];
  if (v212)
  {
    v213 = v212;
    v214 = sub_100085098();
    v216 = v215;
  }

  else
  {

    v214 = 0;
    v216 = 0;
  }

  v217 = v247;
  *v247 = v214;
  v217[1] = v216;
}

uint64_t sub_10001EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100031408(&qword_1000A5660, type metadata accessor for Key, &unk_10008ADFC);
  v9 = sub_100085008();
  v8(v9, a3, a4, a5);
}

id sub_10001F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v9 = _s16AttributedStringV9AttributeVMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = objc_allocWithZone(NSMutableAttributedString);
  v14 = sub_100085068();
  v15 = [v13 initWithString:v14];

  v16 = *(a7 + 16);
  if (v16)
  {
    v17 = a7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);
    while (1)
    {
      sub_100032EB8(v17, v12, _s16AttributedStringV9AttributeVMa);
      sub_10001F27C(v26, v27, v28, v29);
      if (v7)
      {
        break;
      }

      type metadata accessor for Key(0);
      sub_100031408(&qword_1000A5660, type metadata accessor for Key, &unk_10008ADFC);
      isa = sub_100084FF8().super.isa;

      v21 = *v12;
      v20 = v12[1];
      v31.location = [v15 ic_range];
      v31.length = v22;
      v30.location = v21;
      v30.length = v20;
      v23 = NSIntersectionRange(v30, v31);
      [v15 addAttributes:isa range:{v23.location, v23.length}];

      sub_100032F20(v12, _s16AttributedStringV9AttributeVMa);
      v17 += v18;
      if (!--v16)
      {
        return v15;
      }
    }

    sub_100032F20(v12, _s16AttributedStringV9AttributeVMa);
  }

  return v15;
}

unint64_t sub_10001F27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v104 = a3;
  v103 = a2;
  v112 = a1;
  v5 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
  __chkstk_darwin(v5 - 8);
  v115 = &v100 - v6;
  v114 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v105 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v8 - 8);
  v109 = &v100 - v9;
  v111 = sub_1000847C8();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v102 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  __chkstk_darwin(v11 - 8);
  v108 = &v100 - v12;
  v13 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v13 - 8);
  v15 = &v100 - v14;
  v107 = sub_1000848B8();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v101 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v17 - 8);
  v19 = &v100 - v18;
  v20 = sub_100084918();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s16AttributedStringV9AttributeVMa(0);
  v25 = v4;
  v26 = (v4 + v24[7]);
  v27 = v26[1];
  if (v27 == 1)
  {
    v28 = sub_10003E63C(_swiftEmptyArrayStorage);
  }

  else
  {
    v121 = *v26;
    v122 = v27;
    v29 = *(v26 + 2);
    v123 = *(v26 + 1);
    v124 = v29;
    v125 = *(v26 + 3);
    v126 = v26[8];
    v28 = sub_100020D70();
  }

  v30 = v28;
  sub_100005888(v4 + v24[5], v19, &qword_1000A5C20, &unk_10008B840);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000058F0(v19, &qword_1000A5C20, &unk_10008B840);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    v31 = ICTTAttributeNameReplicaID;
    v120 = v20;
    v32 = sub_100032F80(&v119);
    (*(v21 + 16))(v32, v23, v20);
    sub_10001C864(&v119, v118);
    v33 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_10003B0C4(v118, v33, isUniquelyReferenced_nonNull_native);

    (*(v21 + 8))(v23, v20);
    v30 = v127;
  }

  v35 = v117;
  v36 = v25;
  sub_100005888(v25 + v24[6], v15, &qword_1000A5490, &qword_10008CD80);
  v37 = v106;
  v38 = v107;
  if ((*(v106 + 48))(v15, 1, v107) == 1)
  {
    sub_1000058F0(v15, &qword_1000A5490, &qword_10008CD80);
  }

  else
  {
    v39 = *(v37 + 32);
    v117 = v36;
    v40 = v35;
    v41 = v101;
    v39(v101, v15, v38);
    v42 = ICTTAttributeNameTimestamp;
    sub_100084878();
    v44 = v43 + *(v116 + 8);
    v120 = &type metadata for Double;
    *&v119 = v44;
    sub_10001C864(&v119, v118);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_10003B0C4(v118, v42, v45);

    v46 = v41;
    v35 = v40;
    v36 = v117;
    (*(v37 + 8))(v46, v38);
    v30 = v127;
  }

  v47 = v108;
  v48 = v24;
  sub_100005888(v36 + v24[8], v108, &qword_1000A5C18, &unk_10008B830);
  v49 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v50 = (*(*(v49 - 8) + 48))(v47, 1, v49);
  v51 = v111;
  if (v50 == 1)
  {
    sub_1000058F0(v47, &qword_1000A5C18, &unk_10008B830);
    v52 = *(v36 + v24[11]);
    v53 = v110;
    if (*(v36 + v48[11]) > 2u)
    {
      if (v52 == 3)
      {
        v54 = 1;
      }

      else
      {
        if (v52 != 4)
        {
          goto LABEL_34;
        }

        v54 = 3;
      }
    }

    else if (v52)
    {
      if (v52 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = 2;
      }
    }

    else
    {
      v54 = -1;
    }

    v58 = ICTTNSWritingDirectionAttributeName;
    v120 = &type metadata for Int;
    *&v119 = v54;
    sub_10001C864(&v119, v118);
    v59 = v58;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_10003B0C4(v118, v59, v60);

    v30 = v127;
  }

  else
  {
    v55 = sub_100022C98();
    sub_100032F20(v47, _s16AttributedStringV14ParagraphStyleVMa);
    v56 = *(v36 + v24[11]);
    v53 = v110;
    if (*(v36 + v48[11]) > 2u)
    {
      if (v56 == 3)
      {
        v57 = 1;
      }

      else if (v56 == 4)
      {
        v57 = 3;
      }

      else
      {
        v57 = [v55 writingDirection];
      }
    }

    else if (v56)
    {
      if (v56 == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = 2;
      }
    }

    else
    {
      v57 = -1;
    }

    [v55 setWritingDirection:v57];
    v61 = ICTTAttributeNameParagraphStyle;
    [v55 copy];
    sub_100085528();
    swift_unknownObjectRelease();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v118[0] = v30;
    sub_10003B0C4(&v119, v61, v62);

    v30 = *&v118[0];
  }

LABEL_34:
  v63 = v109;
  sub_100005888(v36 + v48[10], v109, &qword_1000A56E8, &qword_10008D350);
  if ((*(v53 + 48))(v63, 1, v51) == 1)
  {
    sub_1000058F0(v63, &qword_1000A56E8, &qword_10008D350);
  }

  else
  {
    v64 = v102;
    (*(v53 + 32))(v102, v63, v51);
    v65 = ICTTNSLinkAttributeName;
    sub_1000846F8(v66);
    v68 = v67;
    v120 = sub_100008250(0, &qword_1000A5C98, NSURL_ptr);
    *&v119 = v68;
    sub_10001C864(&v119, v118);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_10003B0C4(v118, v65, v69);

    (*(v53 + 8))(v64, v51);
    v30 = v127;
  }

  v70 = *(v36 + v48[9]);
  if (v70 != 5)
  {
    v71 = ICTTAttributeNameEmphasis;
    v72 = qword_10008C9C0[v70];
    v120 = &type metadata for Int;
    *&v119 = v72;
    sub_10001C864(&v119, v118);
    v73 = v71;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_10003B0C4(v118, v73, v74);

    v30 = v127;
  }

  v75 = v112;
  v76 = (v36 + v48[12]);
  v77 = v76[1];
  if (v77)
  {
    if (*(v112 + 16))
    {
      v78 = sub_100039138(*v76, v77);
      if (v79)
      {
        v80 = *(*(v75 + 56) + 8 * v78);
        v81 = ICTTNSAttachmentAttributeName;
        v120 = sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
        *&v119 = v80;
        sub_10001C864(&v119, v118);
        v82 = v80;
        v83 = v81;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v30;
        sub_10003B0C4(v118, v83, v84);

        v30 = v127;
      }
    }
  }

  v85 = v115;
  sub_100005888(v36 + v48[13], v115, &qword_1000A5C10, &unk_10008B820);
  if ((*(v113 + 48))(v85, 1, v114) == 1)
  {
    sub_1000058F0(v85, &qword_1000A5C10, &unk_10008B820);
  }

  else
  {
    v86 = v105;
    sub_100032CA4(v85, v105, _s16AttributedStringV16InlineAttachmentVMa);
    v87 = sub_100024174(v103, v104, v116);
    if (v35)
    {
      sub_100032F20(v86, _s16AttributedStringV16InlineAttachmentVMa);
    }

    else
    {
      v88 = v87;
      v89 = [v87 identifier];
      if (v89)
      {
        v90 = v89;
        sub_100085098();
      }

      v91 = [v88 typeUTI];
      if (v91)
      {
        v92 = v91;
        sub_100085098();
      }

      v93 = sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
      v94 = sub_100085398();
      v95 = ICTTNSAttachmentAttributeName;
      v120 = v93;
      *&v119 = v94;
      sub_10001C864(&v119, v118);
      v96 = v95;
      v97 = v94;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v30;
      sub_10003B0C4(v118, v96, v98);

      sub_100032F20(v105, _s16AttributedStringV16InlineAttachmentVMa);
      return v127;
    }
  }

  return v30;
}

void *sub_10001FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100005740(&qword_1000A5C90, &qword_10008B898);
  result = sub_100085728();
  v9 = 0;
  v41 = a1;
  v42 = result;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v40 = result + 8;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v41 + 48) + 16 * v20);
      v44 = *v21;
      v22 = *(*(v41 + 56) + 8 * v20);
      v45 = v21[1];

      v23 = v22;
      v24 = [v23 identifier];
      if (v24)
      {
        v25 = v24;
        sub_100085098();
      }

      v26 = [v23 typeUTI];
      if (v26)
      {
        v27 = v26;
        sub_100085098();
      }

      sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
      v28 = sub_100085398();

      *(v40 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v42;
      v29 = (v42[6] + 16 * v20);
      *v29 = v44;
      v29[1] = v45;
      *(v42[7] + 8 * v20) = v28;
      v30 = v42[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v42[2] = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        v33 = sub_10001F010(result, a2, a3, a4, a5, a6, a7);

        return v33;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020234(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_100005740(&qword_1000A61E8, &qword_10008C0F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000626C(a1, a1[3]);
  sub_100034C48();
  sub_100085A78();
  v13 = 0;
  sub_100085898();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_100005740(&qword_1000A61D0, &qword_10008C0E8);
    sub_100034C9C(&qword_1000A61F0, &qword_1000A61F8, &unk_10008BCA4, &protocol conformance descriptor for <A> [A]);
    sub_1000858D8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100020430()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_100020468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100020558(uint64_t a1)
{
  v2 = sub_100034C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020594(uint64_t a1)
{
  v2 = sub_100034C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

CGColorRef sub_10002061C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100085068();
  v7 = CGColorSpaceCreateWithName(v6);

  if (!v7)
  {
    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v15 = sub_100084FB8();
    sub_10000B614(v15, qword_1000A5BF8);

    v16 = sub_100084FA8();
    v17 = sub_100085378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100038A4C(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color space with name — returning nil {name: %s}", v18, 0xCu);
      sub_100006304(v19);
    }

    return 0;
  }

  v8 = *(a3 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_10003BE4C(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = (a3 + 32);
    v11 = _swiftEmptyArrayStorage[2];
    do
    {
      v12 = *v10;
      v29 = v9;
      v13 = v9[3];
      if (v11 >= v13 >> 1)
      {
        sub_10003BE4C((v13 > 1), v11 + 1, 1);
        v9 = v29;
      }

      v9[2] = v11 + 1;
      v9[v11 + 4] = v12;
      ++v10;
      ++v11;
      --v8;
    }

    while (v8);
  }

  v14 = CGColorCreate(v7, v9 + 4);

  if (!v14)
  {
    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v20 = sub_100084FB8();
    sub_10000B614(v20, qword_1000A5BF8);

    v21 = sub_100084FA8();
    v22 = sub_100085378();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_100085218();
      v27 = sub_100038A4C(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create color with components — returning nil {components: %s}", v23, 0xCu);
      sub_100006304(v24);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_100020994(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_100005740(&qword_1000A62C8, &qword_10008C8A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000626C(a1, a1[3]);
  sub_100035954();
  sub_100085A78();
  v13 = 0;
  sub_100085898();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_100005740(&qword_1000A62B8, &qword_10008C8A0);
    sub_1000359A8(&qword_1000A62D0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    sub_1000858D8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100020B5C()
{
  if (*v0)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x6563617073;
  }
}

uint64_t sub_100020B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563617073 && a2 == 0xE500000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100020C78(uint64_t a1)
{
  v2 = sub_100035954();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020CB4(uint64_t a1)
{
  v2 = sub_100035954();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100020D1C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_100020D70()
{
  v1 = v0;
  v47 = &_swiftEmptyDictionarySingleton;
  v2 = *(v0 + 26);
  if (v2)
  {
    v3 = *(v0 + 25) & 1 | 2;
  }

  else
  {
    v3 = *(v0 + 25) & 1;
  }

  if (v2 == 2)
  {
    v4 = *(v0 + 25) & 1;
  }

  else
  {
    v4 = v3;
  }

  if (*(v0 + 8))
  {
    if (*(v0 + 24))
    {
      v5 = objc_allocWithZone(ICTTFont);
      v6 = sub_100085068();
      v7 = [v5 initWithName:v6 size:v4 hints:0.0];
    }

    else
    {
      v11 = *(v0 + 16);
      v12 = objc_allocWithZone(ICTTFont);
      v6 = sub_100085068();
      v7 = [v12 initWithName:v6 size:v4 hints:v11];
    }

    v13 = v7;

    v14 = ICTTAttributeNameFont;
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_18:
    v46 = sub_100008250(0, &qword_1000A5C48, ICTTFont_ptr);
    *&v45 = v13;
    sub_10001C864(&v45, v44);
    v16 = v14;
    v9 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v44, v16, isUniquelyReferenced_nonNull_native);

    goto LABEL_19;
  }

  if ((*(v0 + 24) & 1) == 0)
  {
    v15 = [objc_allocWithZone(ICTTFont) initWithName:0 size:v4 hints:*(v0 + 16)];
    v14 = ICTTAttributeNameFont;
    if (!v15)
    {
LABEL_20:
      v18 = v14;
      sub_10002B8C4(v44, v18);

      sub_1000058F0(v44, &qword_1000A5AD0, &unk_10008B5E0);
      goto LABEL_21;
    }

    v13 = v15;
    goto LABEL_18;
  }

  if (v4)
  {
    v8 = ICTTAttributeNameFontHints;
    v46 = &type metadata for UInt32;
    LODWORD(v45) = v4;
    sub_10001C864(&v45, v44);
    v9 = v8;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v44, v9, v10);
LABEL_19:

    v47 = &_swiftEmptyDictionarySingleton;
  }

LABEL_21:
  v19 = *(v0 + 27);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    v20 = ICTTAttributeNameUnderline;
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_10001C864(&v45, v44);
    v21 = v20;
    v22 = v47;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v44, v21, v23);

    v47 = v22;
  }

  v24 = *(v1 + 28);
  if (v24 != 2 && (v24 & 1) != 0)
  {
    v25 = ICTTAttributeNameStrikethrough;
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_10001C864(&v45, v44);
    v26 = v25;
    v27 = v47;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v44, v26, v28);

    v47 = v27;
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v29 = *(v1 + 32);
    v30 = ICTTAttributeNameSuperscript;
    v46 = &type metadata for Int;
    *&v45 = v29;
    sub_10001C864(&v45, v44);
    v31 = v30;
    v32 = v47;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v44, v31, v33);

    v47 = v32;
  }

  v34 = *(v1 + 56);
  if (v34)
  {
    v35 = sub_10002061C(*(v1 + 48), v34, *(v1 + 64));
    if (v35)
    {
      v36 = v35;
      v37 = ICTTAttributeNameForegroundColor;
      type metadata accessor for CGColor(0);
      v46 = v38;
      *&v45 = v36;
      sub_10001C864(&v45, v44);
      v39 = v37;
      v40 = v36;
      v41 = v47;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003B0C4(v44, v39, v42);

      return v41;
    }
  }

  return v47;
}

uint64_t sub_1000211A4(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6090, &qword_10008C098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000626C(a1, a1[3]);
  sub_100034454();
  sub_100085A78();
  LOBYTE(v11) = 0;
  sub_100085848();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_100085868();
    LOBYTE(v11) = 2;
    sub_100085858();
    LOBYTE(v11) = 3;
    sub_100085858();
    LOBYTE(v11) = 4;
    sub_100085858();
    LOBYTE(v11) = 5;
    sub_100085858();
    LOBYTE(v11) = 6;
    sub_100085878();
    v11 = *(v3 + 48);
    v12 = *(v3 + 64);
    v10[15] = 7;
    sub_100034564();
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100021434()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7263737265707573;
  if (v1 != 6)
  {
    v3 = 0x726F6C6F63;
  }

  v4 = 0x6C7265646E557369;
  if (v1 != 4)
  {
    v4 = 0x656B697274537369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646C6F427369;
  if (v1 != 2)
  {
    v5 = 0x63696C6174497369;
  }

  if (*v0)
  {
    v2 = 0x7A6953746E696F70;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100021540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000318B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100021568(uint64_t a1)
{
  v2 = sub_100034454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000215A4(uint64_t a1)
{
  v2 = sub_100034454();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000215E0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100031B58(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_100021658()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10002171C(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_1000217CC(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_10002188C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000321AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000218BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454C50525550;
  v5 = 0xE600000000000000;
  v6 = 0x45474E41524FLL;
  v7 = 1414416717;
  if (v2 != 3)
  {
    v7 = 1163217986;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1263421776;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100021A00(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4C5F444548534144;
    v6 = 0x44455245424D554ELL;
    if (a1 != 8)
    {
      v6 = 0x53494C4B43454843;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x434150534F4E4F4DLL;
    if (a1 != 5)
    {
      v7 = 0x4C5F54454C4C5542;
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
    v1 = 0x454C544954;
    v2 = 0x4944414548425553;
    v3 = 1497648962;
    if (a1 != 3)
    {
      v3 = 0x4E4F4954504143;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x474E4944414548;
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

uint64_t sub_100021B5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100021A00(*a1);
  v5 = v4;
  if (v3 == sub_100021A00(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100085948();
  }

  return v8 & 1;
}

Swift::Int sub_100021BE4()
{
  v1 = *v0;
  sub_100085A08();
  sub_100021A00(v1);
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100021C48(uint64_t a1)
{
  sub_100021A00(*v1);
  sub_100085118();
}

Swift::Int sub_100021C9C(uint64_t a1)
{
  v2 = *v1;
  sub_100085A08();
  sub_100021A00(v2);
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_100021CFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000321F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100021D2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021A00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100021E14()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100021EEC(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_100021FB0(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_100022084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032244(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000220B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1413891404;
  v5 = 0xE500000000000000;
  v6 = 0x5448474952;
  v7 = 0xE900000000000044;
  v8 = 0x454946495453554ALL;
  if (v2 != 3)
  {
    v8 = 0x4C41525554414ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5245544E4543;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000221F8(void *a1)
{
  v3 = sub_100005740(&qword_1000A6068, &qword_10008C088);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000626C(a1, a1[3]);
  sub_100034400();
  sub_100085A78();
  v8[15] = 0;
  sub_100084918();
  sub_100031408(&qword_1000A6070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000858D8();
  if (!v1)
  {
    _s16AttributedStringV13ChecklistItemVMa(0);
    v8[14] = 1;
    sub_1000858A8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000223B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100084918();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005740(&qword_1000A6050, &qword_10008C080);
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v20 - v7;
  v9 = _s16AttributedStringV13ChecklistItemVMa(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000626C(a1, a1[3]);
  sub_100034400();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  v20 = v11;
  v12 = v22;
  v13 = v23;
  v27 = 0;
  sub_100031408(&qword_1000A6060, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v24;
  sub_100085828();
  (*(v13 + 32))(v20, v6, v14);
  v26 = 1;
  v15 = sub_1000857F8();
  (*(v12 + 8))(v8, v25);
  v16 = v15 & 1;
  v18 = v20;
  v17 = v21;
  v20[*(v9 + 20)] = v16;
  sub_100032EB8(v18, v17, _s16AttributedStringV13ChecklistItemVMa);
  sub_100006304(a1);
  return sub_100032F20(v18, _s16AttributedStringV13ChecklistItemVMa);
}

uint64_t sub_100022704()
{
  if (*v0)
  {
    return 0x656E6F447369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_100022740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100022820(uint64_t a1)
{
  v2 = sub_100034400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002285C(uint64_t a1)
{
  v2 = sub_100034400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000228C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v11 = v10[8];
  v12 = _s16AttributedStringV13ChecklistItemVMa(0);
  v13 = *(v12 - 8);
  v35 = *(v13 + 56);
  v36 = v11;
  v34 = v13 + 56;
  v35(a2 + v11, 1, 1, v12);
  v14 = v10[10];
  v15 = sub_100084918();
  v16 = *(v15 - 8);
  v38 = *(v16 + 56);
  v39 = v14;
  v37 = v16 + 56;
  v38(a2 + v14, 1, 1, v15);
  v17 = sub_100030DD0([a1 style]);
  if (v17 == 10)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  *a2 = v18;
  v19 = sub_100030F48([a1 alignment]);
  if (v19 == 5)
  {
    v20 = 4;
  }

  else
  {
    v20 = v19;
  }

  *(a2 + 1) = v20;
  *(a2 + 8) = [a1 indent];
  if (sub_100021A00(v18) == 0x44455245424D554ELL && v21 == 0xED00005453494C5FLL)
  {

LABEL_11:
    v23 = [a1 startingItemNumber];
    v24 = 0;
    goto LABEL_13;
  }

  v22 = sub_100085948();

  if (v22)
  {
    goto LABEL_11;
  }

  v23 = 0;
  v24 = 1;
LABEL_13:
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  v25 = [a1 todo];
  if (v25)
  {
    v26 = v25;
    v27 = [v26 uuid];
    sub_1000848F8();

    LOBYTE(v27) = [v26 done];
    v28 = 0;
    v9[*(v12 + 20)] = v27;
  }

  else
  {
    v28 = 1;
  }

  v29 = 1;
  v35(v9, v28, 1, v12);
  v30 = a2 + v10[9];
  sub_100005820(v9, a2 + v36, &qword_1000A5C50, &qword_10008B860);
  *v30 = [a1 blockQuoteLevel];
  *(v30 + 8) = 0;
  v31 = [a1 uuid];
  if (v31)
  {
    v32 = v31;
    sub_1000848F8();

    v29 = 0;
    a1 = v32;
  }

  v38(v6, v29, 1, v15);
  return sub_100005820(v6, a2 + v39, &qword_1000A5C20, &unk_10008B840);
}

id sub_100022C98()
{
  v1 = v0;
  v2 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000219EC(*v1);
  v9 = [objc_opt_self() paragraphStyleNamed:v8];
  [v9 setAlignment:*(v1 + 1)];
  [v9 setIndent:*(v1 + 8)];
  if (*(v1 + 24) == 1)
  {
    v10 = [v9 startingItemNumber];
  }

  else
  {
    v10 = *(v1 + 16);
  }

  [v9 setStartingItemNumber:v10];
  v11 = _s16AttributedStringV14ParagraphStyleVMa(0);
  sub_100005888(v1 + v11[8], v7, &qword_1000A5C50, &qword_10008B860);
  v12 = _s16AttributedStringV13ChecklistItemVMa(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000058F0(v7, &qword_1000A5C50, &qword_10008B860);
    v13 = 0;
  }

  else
  {
    v14 = v7[*(v12 + 20)];
    v15 = objc_allocWithZone(ICTTTodo);
    isa = sub_1000848E8().super.isa;
    v13 = [v15 initWithIdentifier:isa done:v14];

    sub_100032F20(v7, _s16AttributedStringV13ChecklistItemVMa);
  }

  [v9 setTodo:v13];

  v17 = (v1 + v11[9]);
  if (*(v17 + 8))
  {
    v18 = 0;
  }

  else
  {
    v18 = *v17;
  }

  [v9 setBlockQuoteLevel:v18];
  sub_100005888(v1 + v11[10], v4, &qword_1000A5C20, &unk_10008B840);
  v19 = sub_100084918();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v4, 1, v19) != 1)
  {
    v21 = sub_1000848E8().super.isa;
    (*(v20 + 8))(v4, v19);
  }

  [v9 setUuid:v21];

  return v9;
}

uint64_t sub_100022FEC(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A60C8, &qword_10008C0A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000626C(a1, a1[3]);
  sub_1000345B8();
  sub_100085A78();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1000346B4();
  sub_1000858D8();
  if (!v2)
  {
    v10[13] = v3[1];
    v10[12] = 1;
    sub_100034708();
    sub_1000858D8();
    v10[11] = 2;
    sub_1000858C8();
    v10[10] = 3;
    sub_100085878();
    _s16AttributedStringV14ParagraphStyleVMa(0);
    v10[9] = 4;
    _s16AttributedStringV13ChecklistItemVMa(0);
    sub_100031408(&qword_1000A60E0, _s16AttributedStringV13ChecklistItemVMa, &unk_10008BFC4);
    sub_100085888();
    v10[8] = 5;
    sub_100085878();
    v10[7] = 6;
    sub_100084918();
    sub_100031408(&qword_1000A6070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000232FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - v4;
  v5 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - v6;
  v7 = sub_100005740(&qword_1000A60A0, &qword_10008C0A0);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  v15 = _s16AttributedStringV13ChecklistItemVMa(0);
  v16 = v14;
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v17 = *(v10 + 40);
  v18 = sub_100084918();
  v19 = *(*(v18 - 8) + 56);
  v41 = v17;
  v20 = v13;
  v19(&v13[v17], 1, 1, v18);
  v21 = a1[3];
  v42 = a1;
  sub_10000626C(a1, v21);
  sub_1000345B8();
  v39 = v9;
  v22 = v40;
  sub_100085A68();
  if (v22)
  {
    sub_100006304(v42);
    sub_1000058F0(v20 + v16, &qword_1000A5C50, &qword_10008B860);
    return sub_1000058F0(v20 + v41, &qword_1000A5C20, &unk_10008B840);
  }

  else
  {
    v40 = v15;
    v23 = v37;
    v50 = 0;
    sub_10003460C();
    sub_100085828();
    *v20 = v51;
    v48 = 1;
    sub_100034660();
    sub_100085828();
    v24 = v23;
    *(v20 + 1) = v49;
    v47 = 2;
    *(v20 + 8) = sub_100085818();
    v46 = 3;
    *(v20 + 16) = sub_1000857C8();
    *(v20 + 24) = v25 & 1;
    v45 = 4;
    sub_100031408(&qword_1000A60C0, _s16AttributedStringV13ChecklistItemVMa, &unk_10008BFEC);
    v26 = v36;
    sub_1000857D8();
    sub_100005820(v26, v20 + v16, &qword_1000A5C50, &qword_10008B860);
    v44 = 5;
    v27 = sub_1000857C8();
    v28 = v20 + *(v10 + 36);
    *v28 = v27;
    *(v28 + 8) = v29 & 1;
    v43 = 6;
    sub_100031408(&qword_1000A6060, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = v35;
    v31 = v38;
    v32 = v39;
    sub_1000857D8();
    (*(v24 + 8))(v32, v31);
    sub_100005820(v30, v20 + v41, &qword_1000A5C20, &unk_10008B840);
    sub_100032EB8(v20, v34, _s16AttributedStringV14ParagraphStyleVMa);
    sub_100006304(v42);
    return sub_100032F20(v20, _s16AttributedStringV14ParagraphStyleVMa);
  }
}

uint64_t sub_10002389C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F75516B636F6C62;
  if (v1 != 5)
  {
    v3 = 1684632949;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x73696C6B63656863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x746E65646E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100023984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100032290(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000239B8(uint64_t a1)
{
  v2 = sub_1000345B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000239F4(uint64_t a1)
{
  v2 = sub_1000345B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100023A6C()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100023B70(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_100023C60(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_100023E10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000324F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100023E40(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4C41525554414ELL;
  v5 = 0x8000000100086450;
  v6 = 0xD000000000000016;
  v7 = 0xED00005446454C5FLL;
  v8 = 0x4F545F5448474952;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x8000000100086480;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F4F545F5446454CLL;
    v3 = 0xED00005448474952;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_100023F00(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v37 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v7 = *(v37 + 24);
  v8 = sub_1000848B8();
  v9 = *(*(v8 - 8) + 56);
  v9(&a2[v7], 1, 1, v8);
  v10 = [a1 typeUTI];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100085098();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a2 = v12;
  *(a2 + 1) = v14;
  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100085098();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *(a2 + 2) = v17;
  *(a2 + 3) = v19;
  v20 = [a1 creationDate];
  if (v20)
  {
    v21 = v20;
    sub_100084888();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v9(v6, v22, 1, v8);
  sub_100005820(v6, &a2[v7], &qword_1000A5490, &qword_10008CD80);
  v23 = [a1 tokenContentIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100085098();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = v37;
  v29 = &a2[*(v37 + 28)];
  *v29 = v25;
  v29[1] = v27;
  v30 = [a1 altText];
  if (v30)
  {
    v31 = v30;
    v32 = sub_100085098();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0;
  }

  v35 = &a2[*(v28 + 32)];
  *v35 = v32;
  v35[1] = v34;
}

id sub_100024174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1000848B8();
  v40 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  ObjectType = swift_getObjectType();
  v18 = (*(a2 + 48))(*(v5 + 16), *(v5 + 24), a3, ObjectType, a2);
  v19 = v18;
  if (!v4)
  {
    v38 = 0;
    v39 = v18;
    v36 = v10;
    v37 = v16;
    v20 = v40;
    v21 = *(v3 + 8);
    if (v21)
    {
      v22 = v39;
      v23 = v39;
      v24 = v5;
      v21 = sub_100085068();
    }

    else
    {
      v24 = v5;
      v22 = v39;
      v25 = v39;
    }

    v26 = v14;
    [v22 setTypeUTI:{v21, v36}];

    v27 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v28 = v36;
    sub_100005888(v24 + v27[6], v36, &qword_1000A5490, &qword_10008CD80);
    v29 = *(v20 + 48);
    if (v29(v28, 1, v11) == 1)
    {
      sub_1000848A8();
      if (v29(v28, 1, v11) != 1)
      {
        sub_1000058F0(v28, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      (*(v20 + 32))(v26, v28, v11);
    }

    v30 = v37;
    sub_100084858();
    v31 = *(v20 + 8);
    v31(v26, v11);
    isa = sub_100084848().super.isa;
    v31(v30, v11);
    v19 = v39;
    [v39 setCreationDate:isa];

    if (*(v5 + v27[7] + 8))
    {
      v33 = sub_100085068();
    }

    else
    {
      v33 = 0;
    }

    [v19 setTokenContentIdentifier:v33];

    if (*(v5 + v27[8] + 8))
    {
      v34 = sub_100085068();
    }

    else
    {
      v34 = 0;
    }

    [v19 setAltText:v34];
  }

  return v19;
}

uint64_t sub_1000244F0(void *a1)
{
  v3 = sub_100005740(&qword_1000A6108, &qword_10008C0B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000626C(a1, a1[3]);
  sub_100034804();
  sub_100085A78();
  v8[15] = 0;
  sub_100085848();
  if (!v1)
  {
    v8[14] = 1;
    sub_100085898();
    _s16AttributedStringV16InlineAttachmentVMa(0);
    v8[13] = 2;
    sub_1000848B8();
    sub_100031408(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    v8[12] = 3;
    sub_100085848();
    v8[11] = 4;
    sub_100085848();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100024760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_100005740(&qword_1000A60F8, &qword_10008C0B0);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 24);
  v14 = sub_1000848B8();
  v15 = *(*(v14 - 8) + 56);
  v42 = v13;
  v16 = v12;
  v15(v12 + v13, 1, 1, v14);
  v17 = a1[3];
  v43 = a1;
  sub_10000626C(a1, v17);
  sub_100034804();
  v41 = v8;
  v18 = v44;
  sub_100085A68();
  if (v18)
  {
    v44 = v18;
    v21 = 0;
    v22 = v42;
  }

  else
  {
    v20 = v39;
    v19 = v40;
    v49 = 0;
    *v16 = sub_100085798();
    v16[1] = v24;
    v48 = 1;
    v25 = sub_1000857E8();
    v44 = 0;
    v22 = v42;
    v16[2] = v25;
    v16[3] = v26;
    v47 = 2;
    sub_100031408(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v27 = v44;
    sub_1000857D8();
    v44 = v27;
    if (v27)
    {
      (*(v20 + 8))(v41, v19);
    }

    else
    {
      sub_100005820(v5, v16 + v22, &qword_1000A5490, &qword_10008CD80);
      v46 = 3;
      v28 = v44;
      v29 = sub_100085798();
      if (!v28)
      {
        v31 = (v16 + *(v9 + 28));
        *v31 = v29;
        v31[1] = v30;
        v45 = 4;
        v32 = sub_100085798();
        v44 = 0;
        v33 = v32;
        v35 = v34;
        v36 = (v16 + *(v9 + 32));
        (*(v20 + 8))(v41, v40);
        *v36 = v33;
        v36[1] = v35;
        sub_100032EB8(v16, v38, _s16AttributedStringV16InlineAttachmentVMa);
        sub_100006304(v43);
        return sub_100032F20(v16, _s16AttributedStringV16InlineAttachmentVMa);
      }

      v44 = v28;
      (*(v20 + 8))(v41, v40);
    }

    v21 = 1;
  }

  sub_100006304(v43);

  if (v21)
  {
  }

  sub_1000058F0(v16 + v22, &qword_1000A5490, &qword_10008CD80);
}

unint64_t sub_100024BC8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x4164657461657263;
  v4 = 0x74786554746C61;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100024C70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100032540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100024CA4(uint64_t a1)
{
  v2 = sub_100034804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024CE0(uint64_t a1)
{
  v2 = sub_100034804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100024D4C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005740(&qword_1000A61B8, &qword_10008C0D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100034BF4();
  sub_100085A78();
  v12 = 0;
  sub_1000858C8();
  if (!v3)
  {
    v11 = 1;
    sub_1000858C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100024ED4()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x7441737472617473;
  }
}

uint64_t sub_100024F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7441737472617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100024FE4(uint64_t a1)
{
  v2 = sub_100034BF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025020(uint64_t a1)
{
  v2 = sub_100034BF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002505C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003270C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1000250A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7369736168706D65;
    if (a1 != 5)
    {
      v7 = 1802398060;
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
    v1 = 0x65676E6172;
    v2 = 0x6D617473656D6974;
    v3 = 1953394534;
    if (a1 != 3)
    {
      v3 = 0x7061726761726170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
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

uint64_t sub_1000251F4(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6158, &qword_10008C0C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100034858();
  sub_100085A78();
  v26[0] = *v3;
  LOBYTE(v21) = 0;
  sub_1000349FC();
  sub_1000858D8();
  if (!v2)
  {
    v9 = _s16AttributedStringV9AttributeVMa(0);
    LOBYTE(v26[0]) = 1;
    sub_100084918();
    sub_100031408(&qword_1000A6070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100085888();
    v30[0] = 2;
    sub_1000848B8();
    sub_100031408(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    v10 = v3 + v9[7];
    v11 = *(v10 + 1);
    v12 = *(v10 + 3);
    v27 = *(v10 + 2);
    v28 = v12;
    v13 = *(v10 + 1);
    v26[0] = *v10;
    v26[1] = v13;
    v22 = v11;
    v23 = v27;
    v24 = *(v10 + 3);
    v29 = *(v10 + 8);
    v25 = *(v10 + 8);
    v21 = v26[0];
    v20 = 3;
    sub_100005888(v26, v18, &qword_1000A5C40, &qword_10008B858);
    sub_100034A50();
    sub_100085888();
    v18[2] = v23;
    v18[3] = v24;
    v19 = v25;
    v18[1] = v22;
    v18[0] = v21;
    sub_1000058F0(v18, &qword_1000A5C40, &qword_10008B858);
    v17 = 4;
    _s16AttributedStringV14ParagraphStyleVMa(0);
    sub_100031408(&qword_1000A6170, _s16AttributedStringV14ParagraphStyleVMa, &unk_10008BF24);
    sub_100085888();
    v17 = *(v3 + v9[9]);
    v16 = 5;
    sub_100034AA4();
    sub_100085888();
    v17 = 6;
    sub_1000847C8();
    sub_100031408(&qword_1000A6180, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_100085888();
    v17 = *(v3 + v9[11]);
    v16 = 7;
    sub_100034AF8();
    sub_100085888();
    v17 = 8;
    sub_100085848();
    v17 = 9;
    _s16AttributedStringV16InlineAttachmentVMa(0);
    sub_100031408(&qword_1000A6190, _s16AttributedStringV16InlineAttachmentVMa, &unk_10008BCF4);
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000257B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
  __chkstk_darwin(v3 - 8);
  v64 = v61 - v4;
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v5 - 8);
  v65 = v61 - v6;
  v7 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  __chkstk_darwin(v7 - 8);
  v66 = v61 - v8;
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v9 - 8);
  v67 = v61 - v10;
  v11 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v11 - 8);
  v69 = v61 - v12;
  v72 = sub_100005740(&qword_1000A6110, &qword_10008C0C0);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v14 = v61 - v13;
  v15 = _s16AttributedStringV9AttributeVMa(0);
  v16 = __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 20);
  v20 = sub_100084918();
  v21 = *(*(v20 - 8) + 56);
  v77 = v19;
  v68 = v20;
  v21(&v18[v19], 1, 1);
  v22 = v15[6];
  v23 = sub_1000848B8();
  v24 = *(*(v23 - 8) + 56);
  v76 = v22;
  v24(&v18[v22], 1, 1, v23);
  v25 = &v18[v15[7]];
  *v25 = xmmword_10008B800;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  v96 = v25;
  *(v25 + 8) = 0;
  v26 = v15[8];
  v27 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v28 = *(*(v27 - 8) + 56);
  v80 = v26;
  v28(&v18[v26], 1, 1, v27);
  v29 = v15[10];
  v30 = sub_1000847C8();
  v31 = *(*(v30 - 8) + 56);
  v79 = v29;
  v31(&v18[v29], 1, 1, v30);
  v32 = v15[13];
  v33 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v34 = *(*(v33 - 8) + 56);
  v74 = v32;
  v78 = v18;
  v34(&v18[v32], 1, 1, v33);
  v35 = a1[3];
  v75 = a1;
  sub_10000626C(a1, v35);
  sub_100034858();
  v71 = v14;
  v36 = v73;
  sub_100085A68();
  if (v36)
  {
    v38 = v77;
    v39 = v76;
    v40 = v78;
    sub_100006304(v75);
    sub_1000058F0(v40 + v38, &qword_1000A5C20, &unk_10008B840);
    sub_1000058F0(v40 + v39, &qword_1000A5490, &qword_10008CD80);
    v41 = *(v96 + 3);
    v93 = *(v96 + 2);
    v94 = v41;
    v95 = *(v96 + 8);
    v42 = *(v96 + 1);
    v91 = *v96;
    v92 = v42;
    sub_1000058F0(&v91, &qword_1000A5C40, &qword_10008B858);
    sub_1000058F0(v40 + v80, &qword_1000A5C18, &unk_10008B830);
    sub_1000058F0(v40 + v79, &qword_1000A56E8, &qword_10008D350);

    return sub_1000058F0(v40 + v74, &qword_1000A5C10, &unk_10008B820);
  }

  else
  {
    v37 = v69;
    v73 = v27;
    v62 = v15;
    v61[1] = v33;
    LOBYTE(v88[0]) = 0;
    sub_1000348AC();
    sub_100085828();
    v43 = v78;
    *v78 = v91;
    LOBYTE(v91) = 1;
    sub_100031408(&qword_1000A6060, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000857D8();
    sub_100005820(v37, v43 + v77, &qword_1000A5C20, &unk_10008B840);
    LOBYTE(v91) = 2;
    sub_100031408(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v44 = v67;
    sub_1000857D8();
    sub_100005820(v44, v43 + v76, &qword_1000A5490, &qword_10008CD80);
    v90 = 3;
    sub_100034900();
    sub_1000857D8();
    v45 = v43;
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v84 = v92;
    v83 = v91;
    v46 = v96;
    v47 = *(v96 + 2);
    v88[3] = *(v96 + 3);
    v89 = *(v96 + 8);
    v48 = *v96;
    v88[1] = *(v96 + 1);
    v88[2] = v47;
    v88[0] = v48;
    sub_1000058F0(v88, &qword_1000A5C40, &qword_10008B858);
    v49 = v86;
    *(v46 + 2) = v85;
    *(v46 + 3) = v49;
    *(v46 + 8) = v87;
    v50 = v84;
    *v46 = v83;
    *(v46 + 1) = v50;
    v82 = 4;
    sub_100031408(&qword_1000A6130, _s16AttributedStringV14ParagraphStyleVMa, &unk_10008BF4C);
    v51 = v66;
    sub_1000857D8();
    sub_100005820(v51, v43 + v80, &qword_1000A5C18, &unk_10008B830);
    v81 = 5;
    sub_100034954();
    sub_1000857D8();
    *(v43 + v62[9]) = v82;
    v82 = 6;
    sub_100031408(&qword_1000A6140, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v52 = v65;
    sub_1000857D8();
    sub_100005820(v52, v45 + v79, &qword_1000A56E8, &qword_10008D350);
    v81 = 7;
    sub_1000349A8();
    sub_1000857D8();
    v53 = v62;
    *(v45 + v62[11]) = v82;
    v82 = 8;
    v54 = sub_100085798();
    v55 = (v45 + v53[12]);
    *v55 = v54;
    v55[1] = v56;
    v82 = 9;
    sub_100031408(&qword_1000A6150, _s16AttributedStringV16InlineAttachmentVMa, &unk_10008BD1C);
    v57 = v72;
    v58 = v71;
    sub_1000857D8();
    (*(v70 + 8))(v58, v57);
    v59 = v78;
    sub_100005820(v64, v78 + v74, &qword_1000A5C10, &unk_10008B820);
    sub_100032EB8(v59, v63, _s16AttributedStringV9AttributeVMa);
    sub_100006304(v75);
    return sub_100032F20(v59, _s16AttributedStringV9AttributeVMa);
  }
}

uint64_t sub_100026490@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000328B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000264C4(uint64_t a1)
{
  v2 = sub_100034858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026500(uint64_t a1)
{
  v2 = sub_100034858();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10002656C(uint64_t a1)
{
  v2 = sub_1000847C8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownStyle(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032EB8(v1, v8, type metadata accessor for MarkdownStyle);
  v9 = (*(v3 + 48))(v8, 6, v2);
  if (v9 <= 2)
  {
    if (!v9)
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_100085A18(6uLL);
      sub_100031408(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      sub_100085028();
      (*(v3 + 8))(v5, v2);
      return;
    }

    v10 = v9 != 1;
  }

  else if (v9 > 4)
  {
    if (v9 == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }
  }

  else if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  sub_100085A18(v10);
}

Swift::Int sub_100026788()
{
  sub_100085A08();
  sub_10002656C(v1);
  return sub_100085A38();
}

Swift::Int sub_1000267CC(uint64_t a1)
{
  sub_100085A08();
  sub_10002656C(v2);
  return sub_100085A38();
}

void sub_10002680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100005888(a1, aBlock, &qword_1000A5AD0, &unk_10008B5E0);
  if (v46)
  {
    sub_100008250(0, &qword_1000A5C38, ICTTParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      if ([v44 style] == 4)
      {
        v17 = sub_100030DD0([v44 style]);
        if (v17 <= 4u)
        {
          v18 = v17;
          v30 = 0xE200000000000000;
          v31 = 8227;
          v32 = 0xE400000000000000;
          v33 = 539173667;
          v34 = 0xE000000000000000;
          v35 = 0x2023232323;
          if (v17 == 3)
          {
            v35 = 0;
          }

          else
          {
            v34 = 0xE500000000000000;
          }

          if (v17 != 2)
          {
            v33 = v35;
            v32 = v34;
          }

          if (v17)
          {
            v31 = 2106147;
            v30 = 0xE300000000000000;
          }

          if (v17 <= 1u)
          {
            v20 = v31;
          }

          else
          {
            v20 = v33;
          }

          if (v17 <= 1u)
          {
            v19 = v30;
          }

          else
          {
            v19 = v32;
          }

          goto LABEL_34;
        }

        if (v17 <= 7u)
        {
          if (v17 == 5)
          {
            v18 = v17;
            v19 = 0xE400000000000000;
            v20 = 174088288;
            goto LABEL_34;
          }

          if (v17 == 6)
          {
            v18 = v17;
            v19 = 0xE200000000000000;
            v20 = 8234;
LABEL_34:
            swift_beginAccess();
            v49._countAndFlagsBits = v20;
            v49._object = v19;
            sub_100085158(v49);
            swift_endAccess();

            v36 = [a6 attributedSubstringFromRange:{a2, a3}];
            v37 = [v36 string];

            v38 = sub_100085098();
            v40 = v39;

            swift_beginAccess();
            v50._countAndFlagsBits = v38;
            v50._object = v40;
            sub_100085158(v50);

            if (v18 == 5)
            {
              v41._countAndFlagsBits = 1616928778;
            }

            else
            {
              v41._countAndFlagsBits = 0;
            }

            if (v18 == 5)
            {
              v42 = 0xE400000000000000;
            }

            else
            {
              v42 = 0xE000000000000000;
            }

            v41._object = v42;
            sub_100085158(v41);

            v51._countAndFlagsBits = 10;
            v51._object = 0xE100000000000000;
            sub_100085158(v51);
            swift_endAccess();

            swift_beginAccess();
            *(a7 + 16) = 0;
            swift_beginAccess();
            *(a8 + 16) = 0;
            return;
          }

LABEL_31:
          v18 = v17;
          v19 = 0xE200000000000000;
          v20 = 8237;
          goto LABEL_34;
        }

        if (v17 == 8)
        {
          v18 = v17;
          v20 = 0;
          v19 = 0xE000000000000000;
          goto LABEL_34;
        }

        if (v17 == 9)
        {
          goto LABEL_31;
        }

        v43 = a2;
        v21 = a5;
        v22 = a7;
        v23 = a8;
      }

      else
      {
        v21 = a5;
        v22 = a7;
        v23 = a8;
        v43 = a2;
      }

      v24 = a3;
    }

    else
    {
      v21 = a5;
      v22 = a7;
      v23 = a8;
      v43 = a2;
      v24 = a3;
    }
  }

  else
  {
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v43 = a2;
    v24 = a3;
    sub_1000058F0(aBlock, &qword_1000A5AD0, &unk_10008B5E0);
  }

  v25 = [a6 string];
  if (!v25)
  {
    sub_100085098();
    v25 = sub_100085068();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  *(v26 + 56) = a11;
  *(v26 + 64) = v21;
  v47 = sub_10003133C;
  v48 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002A60C;
  v46 = &unk_10009F110;
  v27 = _Block_copy(aBlock);
  v28 = a6;

  v29 = a11;

  [v25 ic_enumerateParagraphsInRange:v43 usingBlock:{v24, v27}];
  _Block_release(v27);
}

uint64_t sub_100026CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (**a8)(char *, uint64_t), char a9, void *a10, uint64_t a11)
{
  v156 = a8;
  v161 = sub_1000847C8();
  v16 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MarkdownStyle(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v162 = &v136 - v24;
  if (__OFSUB__(a3, a1))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v172 = 0;
  v173 = 0xE000000000000000;
  v171 = 0;
  if ([a5 attribute:ICTTAttributeNameParagraphStyle atIndex:a1 effectiveRange:0])
  {
    sub_100085528();
    swift_unknownObjectRelease();
  }

  else
  {
    v169 = 0u;
    v170 = 0u;
  }

  aBlock = v169;
  v165 = v170;
  v151 = v16;
  v150 = a1;
  v149 = a5;
  v157 = a3 - a1;
  if (!*(&v170 + 1))
  {
    sub_1000058F0(&aBlock, &qword_1000A5AD0, &unk_10008B5E0);
LABEL_10:
    v155 = 0;
    v26._countAndFlagsBits = 0;
    v27 = 0;
    v28 = 0;
    v153 = 0;
    v29 = 0;
    v154 = 0xE000000000000000;
    v30 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v32 = 0xE000000000000000;
    v152 = 0xE000000000000000;
    v33 = 0xE000000000000000;
LABEL_11:
    v26._object = v30;
    sub_100085158(v26);

    v174._countAndFlagsBits = v27;
    v174._object = v31;
    sub_100085158(v174);

    v175._countAndFlagsBits = v28;
    v175._object = v32;
    sub_100085158(v175);

    v176._countAndFlagsBits = v29;
    v176._object = v33;
    sub_100085158(v176);

    v34 = v157;
    if (v157 < 1)
    {
      v58 = 0;
      v59 = 0;
      v60 = v155;
      v61 = v154;
LABEL_42:
      v180._countAndFlagsBits = v153;
      v180._object = v152;
      sub_100085158(v180);

      v181._countAndFlagsBits = v60;
      v181._object = v61;
      sub_100085158(v181);

      v182._countAndFlagsBits = 663584;
      v182._object = 0xE300000000000000;
      sub_100085158(v182);
      v62 = v172;
      v63 = v173;
      swift_beginAccess();

      v183._countAndFlagsBits = v62;
      v183._object = v63;
      sub_100085158(v183);
      swift_endAccess();

      return sub_10000852C(v58, v59);
    }

    v35 = v151;
    v168 = _swiftEmptyArrayStorage;
    v36 = swift_allocObject();
    v37 = v149;
    *(v36 + 16) = v149;
    *(v36 + 24) = &v171;
    *(v36 + 32) = &v172;
    *(v36 + 40) = a9;
    *(v36 + 48) = a10;
    *(v36 + 56) = &v168;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1000313D4;
    *(v38 + 24) = v36;
    v148 = v36;
    v166 = sub_100035C90;
    v167 = v38;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v165 = sub_10001EF40;
    *(&v165 + 1) = &unk_10009F188;
    v39 = _Block_copy(&aBlock);
    v40 = v37;
    v41 = a10;

    [v40 enumerateAttributesInRange:v150 options:v34 usingBlock:{0, v39}];
    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      v42 = v168;
      v43 = v168[2];
      if (v43)
      {
        v44 = v168 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v45 = (v35 + 48);
        v157 = v35 + 32;
        v156 = (v35 + 8);

        v158 = v19;
        v159 = v22;
        while (v43 <= v42[2])
        {
          --v43;
          v51 = v162;
          sub_100032EB8(&v44[*(v19 + 72) * v43], v162, type metadata accessor for MarkdownStyle);
          sub_100032EB8(v51, v22, type metadata accessor for MarkdownStyle);
          v52 = (*v45)(v22, 6, v161);
          if (v52 > 2)
          {
            v46 = 32382;
            if (v52 != 5)
            {
              v46 = 15677;
            }

            v47 = 2763306;
            if (v52 != 3)
            {
              v47 = 11051;
            }

            v48 = 0xE300000000000000;
            if (v52 != 3)
            {
              v48 = 0xE200000000000000;
            }

            if (v52 <= 4)
            {
              v49 = v47;
            }

            else
            {
              v49 = v46;
            }

            if (v52 <= 4)
            {
              v50 = v48;
            }

            else
            {
              v50 = 0xE200000000000000;
            }
          }

          else if (v52)
          {
            if (v52 == 1)
            {
              v49 = 10794;
            }

            else
            {
              v49 = 42;
            }

            if (v52 == 1)
            {
              v50 = 0xE200000000000000;
            }

            else
            {
              v50 = 0xE100000000000000;
            }
          }

          else
          {
            v53 = v160;
            v54 = v22;
            v55 = v161;
            (*v157)(v160, v54, v161);
            *&aBlock = 10333;
            *(&aBlock + 1) = 0xE200000000000000;
            sub_100031408(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v178._countAndFlagsBits = sub_100085908();
            sub_100085158(v178);

            v179._countAndFlagsBits = 41;
            v179._object = 0xE100000000000000;
            sub_100085158(v179);
            v50 = *(&aBlock + 1);
            v49 = aBlock;
            v56 = v53;
            v19 = v158;
            v57 = v55;
            v22 = v159;
            (*v156)(v56, v57);
          }

          v177._countAndFlagsBits = v49;
          v177._object = v50;
          sub_100085158(v177);

          sub_100032F20(v162, type metadata accessor for MarkdownStyle);
          if (!v43)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_40:
      }

      v60 = v155;

      v58 = sub_1000313D4;
      v61 = v154;
      v59 = v148;
      goto LABEL_42;
    }

    goto LABEL_147;
  }

  sub_100008250(0, &qword_1000A5C38, ICTTParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v163;
  LODWORD(v153) = sub_100030DD0([v163 style]);
  if (v153 == 10)
  {

    goto LABEL_10;
  }

  v147 = a6;
  v146 = a7;
  if ([v25 writingDirection] == 1)
  {
    v139 = 0xEF3E226C7472223DLL;
    v140 = 0x726964207669643CLL;
    v64 = 0xE600000000000000;
    v65 = 0x3E7669642F3CLL;
  }

  else
  {
    v65 = 0;
    v140 = 0;
    v64 = 0xE000000000000000;
    v139 = 0xE000000000000000;
  }

  v66 = [v25 isList];
  v148 = v25;
  if (v66 && [v25 indent] >= 1)
  {
    result = [v25 indent];
    if (result < 1)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v67 = result;
    v68 = 0;
    v69 = 0xE000000000000000;
    v25 = 1;
    while (1)
    {
      *&aBlock = v68;
      *(&aBlock + 1) = v69;
      v184._countAndFlagsBits = 538976288;
      v184._object = 0xE400000000000000;
      sub_100085158(v184);
      v69 = *(&aBlock + 1);
      v68 = aBlock;
      if (v67 == v25)
      {
        break;
      }

      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        goto LABEL_54;
      }
    }

    v25 = v148;
  }

  else
  {
LABEL_54:
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  if ([v25 blockQuoteLevel])
  {
    v71 = v147;
    swift_beginAccess();
    v72 = *(v71 + 16);
    if (v72 < 1)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
    }

    else
    {
      v73 = v146;
      swift_beginAccess();
      v74 = 0;
      v75 = 0xE000000000000000;
      if (*(v73 + 16) >= 1 && v157 >= 1)
      {
        v76 = [v148 blockQuoteLevel];
        if (v76 >= v72)
        {
          v76 = v72;
        }

        *&aBlock = sub_100032C00(v76);
        *(&aBlock + 1) = v77;
        v185._countAndFlagsBits = 10;
        v185._object = 0xE100000000000000;
        sub_100085158(v185);
        v75 = *(&aBlock + 1);
        v74 = aBlock;
      }
    }

    *&aBlock = v74;
    *(&aBlock + 1) = v75;
    v81 = v148;
    v187._countAndFlagsBits = sub_100032C00([v148 blockQuoteLevel]);
    sub_100085158(v187);

    v80 = *(&aBlock + 1);
    v142 = aBlock;
    goto LABEL_71;
  }

  v78 = v147;
  swift_beginAccess();
  if (*(v78 + 16) < 1)
  {
    v142 = 0;
    v80 = 0xE000000000000000;
    goto LABEL_70;
  }

  v79 = v146;
  swift_beginAccess();
  v142 = 0;
  v80 = 0xE000000000000000;
  if (*(v79 + 16) < 1)
  {
LABEL_70:
    v81 = v148;
    goto LABEL_71;
  }

  v81 = v148;
  if (v157 >= 1)
  {
    v186._countAndFlagsBits = 10;
    v186._object = 0xE100000000000000;
    sub_100085158(v186);
    v142 = 0;
    v80 = 0xE000000000000000;
  }

LABEL_71:
  v138 = v80;
  v82 = sub_100021A00(v153);
  v145 = v83;
  v159 = v22;
  v155 = v65;
  v154 = v64;
  v143 = v82;
  if (v82 != 0x44455245424D554ELL || v83 != 0xED00005453494C5FLL)
  {
    v84 = sub_100085948();

    if (v84)
    {
      goto LABEL_75;
    }

    v99 = 0;
    v100 = 0xE000000000000000;
    if (v153 > 4u)
    {
      v101 = v145;
      v102 = v143;
      if (v153 <= 6u)
      {
        if (v153 == 5)
        {
          v100 = 0xE400000000000000;
          v99 = 174088288;
        }

        else
        {
          v100 = 0xE200000000000000;
          v99 = 8234;
        }
      }

      else if (v153 != 8)
      {
        v100 = 0xE200000000000000;
        v99 = 8237;
      }
    }

    else
    {
      v101 = v145;
      v102 = v143;
      if (v153 <= 1u)
      {
        if (v153)
        {
          v100 = 0xE300000000000000;
          v99 = 2106147;
        }

        else
        {
          v100 = 0xE200000000000000;
          v99 = 8227;
        }
      }

      else if (v153 == 2)
      {
        v100 = 0xE400000000000000;
        v99 = 539173667;
      }

      else if (v153 != 3)
      {
        v100 = 0xE500000000000000;
        v99 = 0x2023232323;
      }
    }

    v144 = v100;
    if (v102 == 0x53494C4B43454843 && v101 == 0xE900000000000054)
    {
    }

    else
    {
      v103 = sub_100085948();

      if ((v103 & 1) == 0)
      {
LABEL_110:
        v137 = v99;
        v108 = v153 == 5;
        v109 = 1616928778;
        if (v153 != 5)
        {
          v109 = 0;
        }

        v153 = v109;
        v110 = 0xE000000000000000;
        if (v108)
        {
          v110 = 0xE400000000000000;
        }

        v152 = v110;
        v111 = [v81 indent];
        v112 = v156;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v112[2];
        v112[2] = 0x8000000000000000;
        sub_10003B204(0, v111, isUniquelyReferenced_nonNull_native);
        v98 = v163;
        v112[2] = v163;
        swift_endAccess();
        goto LABEL_115;
      }
    }

    v104 = [v81 todo];
    if (v104)
    {
      v105 = v104;
      v106 = [v104 done];

      if (v106)
      {
        v107 = 120;
      }

      else
      {
        v107 = 32;
      }
    }

    else
    {
      v107 = 32;
    }

    *&aBlock = v99;
    *(&aBlock + 1) = v144;
    v189._countAndFlagsBits = 91;
    v189._object = 0xE100000000000000;
    sub_100085158(v189);
    v190._countAndFlagsBits = v107;
    v190._object = 0xE100000000000000;
    sub_100085158(v190);
    v191._countAndFlagsBits = 8285;
    v191._object = 0xE200000000000000;
    sub_100085158(v191);
    v144 = *(&aBlock + 1);
    v99 = aBlock;
    goto LABEL_110;
  }

LABEL_75:
  v85 = [v81 indent];
  v86 = v156;
  swift_beginAccess();
  v87 = v86[2];
  if (!*(v87 + 2) || (v88 = sub_1000391B0(v85), (v89 & 1) == 0))
  {
    swift_endAccess();
LABEL_81:
    v92 = v148;
    v93 = [v148 startingItemNumber];
    if (v93 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v93;
    }

    goto LABEL_84;
  }

  v90 = *(*(v87 + 7) + 8 * v88);
  result = swift_endAccess();
  if (!v90)
  {
    goto LABEL_81;
  }

  v91 = v90 + 1;
  if (!__OFADD__(v90, 1))
  {
    v92 = v148;
LABEL_84:
    v163 = v91;
    *&aBlock = sub_100085908();
    *(&aBlock + 1) = v94;
    v188._countAndFlagsBits = 8238;
    v188._object = 0xE200000000000000;
    sub_100085158(v188);
    v144 = *(&aBlock + 1);
    v137 = aBlock;
    v95 = [v92 indent];
    v96 = v156;
    swift_beginAccess();
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v96[2];
    v96[2] = 0x8000000000000000;
    sub_10003B204(v91, v95, v97);
    v98 = v163;
    v96[2] = v163;
    swift_endAccess();
    v153 = 0;
    v152 = 0xE000000000000000;
LABEL_115:

    v114 = 0;
    v115 = 1 << *(v98 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v117 = v116 & *(v98 + 8);
    v118 = (v115 + 63) >> 6;
    v141 = v68;
    while (v117)
    {
LABEL_125:
      v120 = __clz(__rbit64(v117));
      v117 &= v117 - 1;
      v121 = *(*(v98 + 6) + ((v114 << 9) | (8 * v120)));
      result = [v148 indent];
      if (result < v121)
      {
        swift_beginAccess();
        v122 = sub_1000391B0(v121);
        v123 = v156;
        if (v124)
        {
          v125 = v122;
          v126 = swift_isUniquelyReferenced_nonNull_native();
          v127 = v123;
          v128 = v123[2];
          v163 = v128;
          v127[2] = 0x8000000000000000;
          if (!v126)
          {
            sub_10002C350();
            v128 = v163;
          }

          sub_10002BB2C(v125, v128);
          v127[2] = v128;
          v68 = v141;
        }

        result = swift_endAccess();
      }
    }

    while (1)
    {
      v119 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v119 >= v118)
      {

        v129 = [v148 blockQuoteLevel];
        v130 = v147;
        swift_beginAccess();
        *(v130 + 16) = v129;
        v131 = v146;
        swift_beginAccess();
        *(v131 + 16) = v157;
        v132 = v143;
        if (v143 == 0x454C544954 && v145 == 0xE500000000000000)
        {
          v32 = v69;
          v28 = v68;

          v22 = v159;
          v30 = v139;
          v27 = v142;
          goto LABEL_138;
        }

        v133 = sub_100085948();

        v22 = v159;
        v30 = v139;
        v27 = v142;
        if (v133)
        {
LABEL_133:
          v32 = v69;
          v28 = v68;

          goto LABEL_138;
        }

        if (v132 == 0x474E4944414548 && v145 == 0xE700000000000000)
        {
          v32 = v69;
          goto LABEL_137;
        }

        v134 = sub_100085948();

        if (v134)
        {
          goto LABEL_133;
        }

        v32 = v69;
        if (v132 == 0x4944414548425553 && v145 == 0xEA0000000000474ELL)
        {
LABEL_137:
          v28 = v68;
        }

        else
        {
          v28 = v68;
          v135 = sub_100085948();

          if ((v135 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

LABEL_138:
        v171 = 1;
LABEL_139:
        v26._countAndFlagsBits = v140;
        v31 = v138;
        v29 = v137;
        v33 = v144;
        goto LABEL_11;
      }

      v117 = *(v98 + v119 + 8);
      ++v114;
      if (v117)
      {
        v114 = v119;
        goto LABEL_125;
      }
    }

    __break(1u);
    goto LABEL_146;
  }

LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_100027F70(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, int a8, void *a9, uint64_t *a10)
{
  LODWORD(v185) = a8;
  v198 = a7;
  v181 = a6;
  v14 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v14 - 8);
  v199 = (&v177 - v15);
  v200 = sub_1000847C8();
  v187 = *(v200 - 8);
  v16 = __chkstk_darwin(v200);
  v193 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v177 - v18;
  v20 = type metadata accessor for MarkdownStyle(0);
  v194 = *(v20 - 8);
  v21 = __chkstk_darwin(v20 - 8);
  v190 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v188 = &v177 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v177 - v26;
  v28 = __chkstk_darwin(v25);
  v195 = &v177 - v29;
  v30 = __chkstk_darwin(v28);
  v197 = &v177 - v31;
  v32 = __chkstk_darwin(v30);
  v183 = &v177 - v33;
  v34 = __chkstk_darwin(v32);
  v196 = &v177 - v35;
  v36 = __chkstk_darwin(v34);
  v192 = (&v177 - v37);
  v38 = __chkstk_darwin(v36);
  v182 = &v177 - v39;
  v40 = __chkstk_darwin(v38);
  v191 = (&v177 - v41);
  v42 = __chkstk_darwin(v40);
  v189 = &v177 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v177 - v45;
  v47 = __chkstk_darwin(v44);
  v180 = &v177 - v48;
  v49 = __chkstk_darwin(v47);
  v179 = &v177 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v177 - v52;
  __chkstk_darwin(v51);
  v55 = &v177 - v54;
  v56 = [a5 attributedSubstringFromRange:{a2, a3}];
  v57 = [v56 string];

  v184 = sub_100085098();
  v186 = v58;

  if (a1[2])
  {
    v59 = ICTTAttributeNameFont;
    v60 = sub_1000392C8(v59);
    if (v61)
    {
      sub_1000056E4(a1[7] + 32 * v60, &v203);

      sub_100008250(0, &qword_1000A5C48, ICTTFont_ptr);
      if (swift_dynamicCast())
      {
        v177 = v46;
        v62 = v202;
        if (([v202 fontHints] & 1) != 0 && (*v181 & 1) == 0)
        {
          v178 = v19;
          (*(v187 + 56))(v55, 1, 6, v200);
          v63 = sub_10000F248(0, 1, 1, _swiftEmptyArrayStorage);
          v173 = v63[2];
          v172 = v63[3];
          if (v173 >= v172 >> 1)
          {
            v63 = sub_10000F248((v172 > 1), v173 + 1, 1, v63);
          }

          v63[2] = v173 + 1;
          sub_100032CA4(v55, v63 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v173, type metadata accessor for MarkdownStyle);
          v19 = v178;
        }

        else
        {
          v63 = _swiftEmptyArrayStorage;
        }

        if (([v62 fontHints] & 2) != 0)
        {
          (*(v187 + 56))(v53, 2, 6, v200);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v194;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = sub_10000F248(0, v63[2] + 1, 1, v63);
          }

          v176 = v63[2];
          v175 = v63[3];
          if (v176 >= v175 >> 1)
          {
            v63 = sub_10000F248((v175 > 1), v176 + 1, 1, v63);
          }

          v63[2] = v176 + 1;
          sub_100032CA4(v53, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v176, type metadata accessor for MarkdownStyle);
        }

        else
        {

          v64 = v194;
        }

        v46 = v177;
        if (!a1[2])
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v63 = _swiftEmptyArrayStorage;
  v64 = v194;
  if (a1[2])
  {
LABEL_9:
    v65 = ICTTAttributeNameFontHints;
    v66 = sub_1000392C8(v65);
    if (v67)
    {
      sub_1000056E4(a1[7] + 32 * v66, &v203);

      if (swift_dynamicCast())
      {
        v68 = v46;
        v69 = v202;
        if ((v202 & 1) != 0 && (*v181 & 1) == 0)
        {
          v178 = v19;
          (*(v187 + 56))(v179, 1, 6, v200);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_10000F248(0, v63[2] + 1, 1, v63);
          }

          v71 = v63[2];
          v70 = v63[3];
          if (v71 >= v70 >> 1)
          {
            v63 = sub_10000F248((v70 > 1), v71 + 1, 1, v63);
          }

          v63[2] = v71 + 1;
          sub_100032CA4(v179, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v71, type metadata accessor for MarkdownStyle);
          v19 = v178;
        }

        if ((v69 & 2) != 0)
        {
          (*(v187 + 56))(v180, 2, 6, v200);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_10000F248(0, v63[2] + 1, 1, v63);
          }

          v73 = v63[2];
          v72 = v63[3];
          if (v73 >= v72 >> 1)
          {
            v63 = sub_10000F248((v72 > 1), v73 + 1, 1, v63);
          }

          v63[2] = v73 + 1;
          sub_100032CA4(v180, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v73, type metadata accessor for MarkdownStyle);
        }

        v46 = v68;
      }
    }

    else
    {
    }
  }

LABEL_26:
  if (a1[2])
  {
    v74 = ICTTAttributeNameUnderline;
    v75 = sub_1000392C8(v74);
    if (v76)
    {
      sub_1000056E4(a1[7] + 32 * v75, &v203);

      sub_1000058F0(&v203, &qword_1000A5AD0, &unk_10008B5E0);
      (*(v187 + 56))(v46, 4, 6, v200);
      v77 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_29;
    }
  }

  v203 = 0u;
  v204 = 0u;
  sub_1000058F0(&v203, &qword_1000A5AD0, &unk_10008B5E0);
  if (a1[2])
  {
    goto LABEL_35;
  }

LABEL_43:
  v203 = 0u;
  v204 = 0u;
  sub_1000058F0(&v203, &qword_1000A5AD0, &unk_10008B5E0);
  if (a1[2])
  {
    goto LABEL_44;
  }

LABEL_52:
  v203 = 0u;
  v204 = 0u;
  sub_1000058F0(&v203, &qword_1000A5AD0, &unk_10008B5E0);
  if (a1[2])
  {
    goto LABEL_53;
  }

LABEL_62:
  v94 = v199;
  (*(v187 + 56))(v199, 1, 1, v200);
LABEL_63:
  sub_1000058F0(v94, &qword_1000A56E8, &qword_10008D350);
  if (!a1[2])
  {
    goto LABEL_68;
  }

LABEL_64:
  v110 = ICTTNSAttachmentAttributeName;
  v111 = sub_1000392C8(v110);
  if ((v112 & 1) == 0)
  {

    while (1)
    {
LABEL_68:
      v199 = a10;

      v115 = sub_10007A868(v114);

      v117 = sub_10007A868(v116);
      v185 = v63;

      if (*(v117 + 2) <= v115[2] >> 3)
      {
        *&v203 = v115;

        sub_10002C888(v117);
        v63 = v203;
      }

      else
      {

        v63 = sub_10002CA90(v117, v115);
      }

      v202 = v63;
      if (v115[2] <= *(v117 + 2) >> 3)
      {
        *&v203 = v117;

        sub_10002C888(v115);

        v118 = v203;
      }

      else
      {

        v118 = sub_10002CA90(v115, v117);
      }

      a1 = v192;
      v201 = v118;
      v77 = *v199;
      v119 = *(*v199 + 16);
      v189 = v27;
      if (!v119)
      {

LABEL_88:
        v126 = *v199;
        v127 = *(*v199 + 16);
        v128 = v195;
        v129 = v197;
        if (v127)
        {
          v130 = v202;
          v131 = v126 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
          v132 = (v187 + 48);
          v191 = (v187 + 8);
          v192 = (v187 + 32);

          while (v127 <= *(v126 + 16))
          {
            --v127;
            sub_100032EB8(v131 + *(v64 + 72) * v127, v129, type metadata accessor for MarkdownStyle);
            if (sub_100029E10(v129, v130))
            {
              sub_100032EB8(v129, v128, type metadata accessor for MarkdownStyle);
              v140 = (*v132)(v128, 6, v200);
              if (v140 > 2)
              {
                v133 = 32382;
                if (v140 != 5)
                {
                  v133 = 15677;
                }

                v134 = 0xE200000000000000;
                v135 = 2763306;
                if (v140 == 3)
                {
                  v134 = 0xE300000000000000;
                }

                else
                {
                  v135 = 11051;
                }

                v136 = v140 <= 4;
                if (v140 <= 4)
                {
                  v137._countAndFlagsBits = v135;
                }

                else
                {
                  v137._countAndFlagsBits = v133;
                }

                if (v136)
                {
                  v138 = v134;
                }

                else
                {
                  v138 = 0xE200000000000000;
                }
              }

              else if (v140)
              {
                v141 = v140 == 1;
                if (v140 == 1)
                {
                  v137._countAndFlagsBits = 10794;
                }

                else
                {
                  v137._countAndFlagsBits = 42;
                }

                if (v141)
                {
                  v138 = 0xE200000000000000;
                }

                else
                {
                  v138 = 0xE100000000000000;
                }
              }

              else
              {
                v142 = v193;
                v143 = v200;
                (*v192)(v193, v195, v200);
                *&v203 = 10333;
                *(&v203 + 1) = 0xE200000000000000;
                sub_100031408(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v206._countAndFlagsBits = sub_100085908();
                sub_100085158(v206);

                v207._countAndFlagsBits = 41;
                v207._object = 0xE100000000000000;
                sub_100085158(v207);
                v138 = *(&v203 + 1);
                v144 = v203;
                v145 = v142;
                v146 = v143;
                v64 = v194;
                v128 = v195;
                (*v191)(v145, v146);
                v137._countAndFlagsBits = v144;
              }

              v137._object = v138;
              sub_100085158(v137);

              v139 = v196;
              sub_10002A4D8(*(*v199 + 16) - 1, v196);
              sub_100032F20(v139, type metadata accessor for MarkdownStyle);
              v129 = v197;
            }

            sub_100032F20(v129, type metadata accessor for MarkdownStyle);
            if (!v127)
            {
              goto LABEL_115;
            }
          }

          __break(1u);
LABEL_115:

          v27 = v189;
        }

        v147 = v185[2];
        if (v147)
        {
          v148 = v201;
          v149 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v150 = v185 + v149;
          v151 = (v187 + 48);
          v152 = *(v64 + 72);
          do
          {
            sub_100032EB8(v150, v27, type metadata accessor for MarkdownStyle);
            if (sub_100029E10(v27, v148))
            {
              v153 = v188;
              sub_100032EB8(v27, v188, type metadata accessor for MarkdownStyle);
              v154 = (*v151)(v153, 6, v200);
              if (v154 <= 2)
              {
                if (v154)
                {
                  v161 = v154 == 1;
                  if (v154 == 1)
                  {
                    v159._countAndFlagsBits = 10794;
                  }

                  else
                  {
                    v159._countAndFlagsBits = 42;
                  }

                  if (v161)
                  {
                    v160 = 0xE200000000000000;
                  }

                  else
                  {
                    v160 = 0xE100000000000000;
                  }
                }

                else
                {
                  sub_100032F20(v188, type metadata accessor for MarkdownStyle);
                  v160 = 0xE100000000000000;
                  v159._countAndFlagsBits = 91;
                }
              }

              else
              {
                v155 = 32382;
                if (v154 != 5)
                {
                  v155 = 15677;
                }

                v156 = 2763306;
                if (v154 != 3)
                {
                  v156 = 11051;
                }

                v157 = 0xE300000000000000;
                if (v154 != 3)
                {
                  v157 = 0xE200000000000000;
                }

                v158 = v154 <= 4;
                if (v154 <= 4)
                {
                  v159._countAndFlagsBits = v156;
                }

                else
                {
                  v159._countAndFlagsBits = v155;
                }

                if (v158)
                {
                  v160 = v157;
                }

                else
                {
                  v160 = 0xE200000000000000;
                }
              }

              v159._object = v160;
              sub_100085158(v159);

              sub_100032EB8(v27, v190, type metadata accessor for MarkdownStyle);
              v162 = v199;
              v163 = *v199;
              v164 = swift_isUniquelyReferenced_nonNull_native();
              *v162 = v163;
              if ((v164 & 1) == 0)
              {
                v163 = sub_10000F248(0, v163[2] + 1, 1, v163);
                *v199 = v163;
              }

              v166 = v163[2];
              v165 = v163[3];
              if (v166 >= v165 >> 1)
              {
                v170 = sub_10000F248((v165 > 1), v166 + 1, 1, v163);
                *v199 = v170;
              }

              v167 = v189;
              sub_100032F20(v189, type metadata accessor for MarkdownStyle);
              v168 = *v199;
              *(v168 + 16) = v166 + 1;
              v169 = v168 + v149 + v166 * v152;
              v27 = v167;
              sub_100032CA4(v190, v169, type metadata accessor for MarkdownStyle);
            }

            else
            {
              sub_100032F20(v27, type metadata accessor for MarkdownStyle);
            }

            v150 += v152;
            --v147;
          }

          while (v147);
        }

        v208._countAndFlagsBits = v184;
        v208._object = v186;
        sub_100085158(v208);
      }

      v27 = v117;
      v19 = (v77 + ((*(v64 + 80) + 32) & ~*(v64 + 80)));

      v120 = 0;
      v121 = 0;
      while (v121 < *(v77 + 16))
      {
        sub_100032EB8(&v19[*(v64 + 72) * v121], a1, type metadata accessor for MarkdownStyle);
        v122 = sub_100029E10(a1, v63);
        if (v120)
        {
          if (v122)
          {
            goto LABEL_77;
          }

          v123 = v183;
          sub_100032EB8(a1, v183, type metadata accessor for MarkdownStyle);
          v124 = v196;
          sub_1000769E4(v196, v123);
          a1 = v192;
          sub_100032F20(v124, type metadata accessor for MarkdownStyle);
          if (sub_100029E10(a1, v27))
          {
            sub_100032EB8(a1, v123, type metadata accessor for MarkdownStyle);
            sub_1000769E4(v124, v123);
            a1 = v192;
            sub_100032F20(v124, type metadata accessor for MarkdownStyle);
            v125 = a1;
            goto LABEL_84;
          }

LABEL_83:
          v125 = a1;
LABEL_84:
          sub_100032F20(v125, type metadata accessor for MarkdownStyle);
          if (v119 - 1 == v121)
          {
LABEL_86:

            v27 = v189;
            goto LABEL_88;
          }

          v63 = v202;
          ++v121;
          v120 = 1;
        }

        else
        {
          if (v122)
          {
            goto LABEL_83;
          }

LABEL_77:
          ++v121;
          sub_100032F20(a1, type metadata accessor for MarkdownStyle);
          if (v119 == v121)
          {
            goto LABEL_86;
          }
        }
      }

      __break(1u);
LABEL_162:
      v63 = sub_10000F248(0, v63[2] + 1, 1, v63);
LABEL_29:
      v79 = v63[2];
      v78 = v63[3];
      if (v79 >= v78 >> 1)
      {
        v63 = sub_10000F248((v78 > 1), v79 + 1, 1, v63);
      }

      v63[2] = v79 + 1;
      sub_100032CA4(v77, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v79, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_43;
      }

LABEL_35:
      v80 = ICTTAttributeNameStrikethrough;
      v81 = sub_1000392C8(v80);
      if ((v82 & 1) == 0)
      {

        goto LABEL_43;
      }

      sub_1000056E4(a1[7] + 32 * v81, &v203);

      sub_1000058F0(&v203, &qword_1000A5AD0, &unk_10008B5E0);
      (*(v187 + 56))(v189, 5, 6, v200);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_10000F248(0, v63[2] + 1, 1, v63);
      }

      v84 = v63[2];
      v83 = v63[3];
      if (v84 >= v83 >> 1)
      {
        v63 = sub_10000F248((v83 > 1), v84 + 1, 1, v63);
      }

      v63[2] = v84 + 1;
      sub_100032CA4(v189, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v84, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_52;
      }

LABEL_44:
      v85 = ICTTAttributeNameEmphasis;
      v86 = sub_1000392C8(v85);
      if ((v87 & 1) == 0)
      {

        goto LABEL_52;
      }

      sub_1000056E4(a1[7] + 32 * v86, &v203);

      sub_1000058F0(&v203, &qword_1000A5AD0, &unk_10008B5E0);
      (*(v187 + 56))(v191, 6, 6, v200);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_10000F248(0, v63[2] + 1, 1, v63);
      }

      v89 = v63[2];
      v88 = v63[3];
      if (v89 >= v88 >> 1)
      {
        v63 = sub_10000F248((v88 > 1), v89 + 1, 1, v63);
      }

      v63[2] = v89 + 1;
      sub_100032CA4(v191, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v89, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_62;
      }

LABEL_53:
      v90 = ICTTNSLinkAttributeName;
      v91 = sub_1000392C8(v90);
      if ((v92 & 1) == 0)
      {

        goto LABEL_62;
      }

      v178 = v19;
      sub_1000056E4(a1[7] + 32 * v91, &v203);

      v94 = v199;
      v93 = v200;
      v95 = swift_dynamicCast();
      v96 = v63;
      v97 = v187;
      v98 = *(v187 + 56);
      v98(v94, v95 ^ 1u, 1, v93);
      v99 = v97;
      v63 = v96;
      if ((*(v99 + 48))(v94, 1, v93) == 1)
      {
        goto LABEL_63;
      }

      v100 = v187;
      v101 = v94;
      v102 = v178;
      v103 = v200;
      (*(v187 + 32))(v178, v101, v200);
      v104 = v100;
      v105 = v96;
      v106 = v182;
      (*(v104 + 16))(v182, v102, v103);
      v98(v106, 0, 6, v103);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_10000F248(0, v105[2] + 1, 1, v105);
      }

      v108 = v105[2];
      v107 = v105[3];
      v109 = v105;
      if (v108 >= v107 >> 1)
      {
        v109 = sub_10000F248((v107 > 1), v108 + 1, 1, v105);
      }

      (*(v187 + 8))(v178, v200);
      v109[2] = v108 + 1;
      v63 = v109;
      sub_100032CA4(v106, v109 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v108, type metadata accessor for MarkdownStyle);
      if (a1[2])
      {
        goto LABEL_64;
      }
    }
  }

  sub_1000056E4(a1[7] + 32 * v111, &v203);

  sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_68;
  }

  v113 = v202;

  v205._countAndFlagsBits = sub_1000296BC(v113, v185, a9);
  sub_100085158(v205);
}

NSObject *sub_1000296BC(void *a1, char a2, void *a3)
{
  v6 = sub_100084568();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isInlineAttachment:a1])
  {
    v14 = [a1 inlineAttachmentInContext:a3];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 displayText];
      v17 = sub_100085098();

      return v17;
    }

    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v23 = sub_100084FB8();
    sub_10000B614(v23, qword_1000A5BF8);
    v24 = a1;
    v19 = sub_100084FA8();
    v25 = sub_100085368();

    if (os_log_type_enabled(v19, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v19, v25, "Cannot resolve inline attachment — skipping {attachment: %@}", v26, 0xCu);
      sub_1000058F0(v27, &qword_1000A5C30, &qword_10008B850);
    }

    goto LABEL_40;
  }

  result = [a1 attachmentInContext:a3];
  if (!result)
  {
    return result;
  }

  v19 = result;
  if ([result isTable]&& a2 == 2)
  {
    v20 = [v19 tableModel];
    sub_10002A758(v20, a3);
    v22 = v21;

    return v22;
  }

  if ([v19 isURL]&& (v29 = [v19 URL]) != 0)
  {
    v30 = v29;
    sub_100084768();

    v66 = 91;
    v67 = 0xE100000000000000;
    v31 = [v19 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_100085098();
      object = v34;

      v36._countAndFlagsBits = v33;
    }

    else
    {
      v36._countAndFlagsBits = sub_1000846A8();
      object = v36._object;
    }

    v36._object = object;
    sub_100085158(v36);

    v72._countAndFlagsBits = 10333;
    v72._object = 0xE200000000000000;
    sub_100085158(v72);
    sub_100031408(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v73._countAndFlagsBits = sub_100085908();
    sub_100085158(v73);

    v74._countAndFlagsBits = 41;
    v74._object = 0xE100000000000000;
    sub_100085158(v74);

    v61 = v66;
    (*(v11 + 8))(v13, v10);
    return v61;
  }

  else
  {
    v37 = ([v19 hasFallbackImage]& 1) != 0 || ([v19 hasFallbackPDF]& 1) != 0 || [v19 attachmentType]== 3 || [v19 attachmentType]== 5;
    v63 = v37;
    v38 = [v19 title];
    if (!v38)
    {
      v38 = [v19 userTitle];
      if (!v38)
      {
        v38 = [v19 defaultTitle];
      }
    }

    v39 = v38;
    v40 = sub_100085098();
    v42 = v41;

    v43 = sub_100067784();
    if (!v44)
    {

      if (qword_1000A5400 != -1)
      {
        swift_once();
      }

      v57 = sub_100084FB8();
      sub_10000B614(v57, qword_1000A5BF8);
      v58 = sub_100084FA8();
      v59 = sub_100085378();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "could not get filename for attachment we're exporting", v60, 2u);
      }

LABEL_40:
      return 0;
    }

    v45 = v43;
    v46 = v44;
    v66 = 0;
    v67 = 0xE000000000000000;
    if (a2 == 1)
    {
      v47._countAndFlagsBits = 0x656D686361747461;
    }

    else
    {
      v47._countAndFlagsBits = 0x656D686361747441;
    }

    v47._object = 0xEC0000002F73746ELL;
    sub_100085158(v47);

    v64 = v45;
    v65 = v46;
    sub_100084548();
    sub_10001D33C();
    v48 = sub_100085518();
    v50 = v49;
    (*(v7 + 8))(v9, v6);

    if (v50)
    {
      v51._countAndFlagsBits = v48;
    }

    else
    {
      v51._countAndFlagsBits = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v51._object = v52;
    sub_100085158(v51);

    v54 = v66;
    v53 = v67;
    if (v63)
    {
      v55 = 23329;
      v56 = 0xE200000000000000;
    }

    else
    {
      v55 = 91;
      v56 = 0xE100000000000000;
    }

    v66 = v55;
    v67 = v56;
    v68._countAndFlagsBits = v40;
    v68._object = v42;
    sub_100085158(v68);

    v69._countAndFlagsBits = 10333;
    v69._object = 0xE200000000000000;
    sub_100085158(v69);
    v70._countAndFlagsBits = v54;
    v70._object = v53;
    sub_100085158(v70);

    v71._countAndFlagsBits = 41;
    v71._object = 0xE100000000000000;
    sub_100085158(v71);

    return v66;
  }
}

uint64_t sub_100029E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  __chkstk_darwin(v41);
  v9 = &v31[-v8];
  v10 = type metadata accessor for MarkdownStyle(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v31[-v15];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v35 = v5;
  sub_100085A08();
  sub_10002656C(v42);
  v17 = sub_100085A38();
  v18 = a2 + 56;
  v19 = -1 << *(a2 + 32);
  v20 = v17 & ~v19;
  if (((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v36 = v14;
  v40 = a1;
  v21 = ~v19;
  v22 = *(v11 + 72);
  v38 = v21;
  v39 = v22;
  v23 = (v35 + 6);
  v37 = (v35 + 1);
  v34 = v7;
  v35 += 4;
  while (1)
  {
    sub_100032EB8(*(a2 + 48) + v39 * v20, v16, type metadata accessor for MarkdownStyle);
    v24 = *(v41 + 48);
    sub_100032EB8(v16, v9, type metadata accessor for MarkdownStyle);
    sub_100032EB8(v40, &v9[v24], type metadata accessor for MarkdownStyle);
    v25 = *v23;
    v26 = (*v23)(v9, 6, v4);
    if (v26 > 2)
    {
      if (v26 > 4)
      {
        if (v26 == 5)
        {
          sub_100032F20(v16, type metadata accessor for MarkdownStyle);
          if (v25(&v9[v24], 6, v4) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_100032F20(v16, type metadata accessor for MarkdownStyle);
          if (v25(&v9[v24], 6, v4) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v26 == 3)
      {
        sub_100032F20(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100032F20(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    if (v26)
    {
      if (v26 == 1)
      {
        sub_100032F20(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100032F20(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 2)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v27 = v36;
    sub_100032EB8(v9, v36, type metadata accessor for MarkdownStyle);
    if (!v25(&v9[v24], 6, v4))
    {
      break;
    }

    sub_100032F20(v16, type metadata accessor for MarkdownStyle);
    (*v37)(v27, v4);
    v21 = v38;
LABEL_23:
    sub_1000058F0(v9, &qword_1000A5C60, &qword_10008B870);
LABEL_24:
    v20 = (v20 + 1) & v21;
    if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v34;
  (*v35)(v34, &v9[v24], v4);
  v32 = sub_100084758();
  v33 = v18;
  v29 = *v37;
  (*v37)(v28, v4);
  sub_100032F20(v16, type metadata accessor for MarkdownStyle);
  v29(v27, v4);
  v18 = v33;
  v21 = v38;
  if ((v32 & 1) == 0)
  {
    sub_100032F20(v9, type metadata accessor for MarkdownStyle);
    goto LABEL_24;
  }

LABEL_29:
  sub_100032F20(v9, type metadata accessor for MarkdownStyle);
  return 1;
}

uint64_t sub_10002A3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100085A08();
  sub_100085118();
  v6 = sub_100085A38();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100085948() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10002A4D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002E11C(v5);
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
    v9 = *(type metadata accessor for MarkdownStyle(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100032CA4(v11, a2, type metadata accessor for MarkdownStyle);
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

uint64_t sub_10002A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_10002A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10001C864(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1000058F0(v13, &qword_1000A5AD0, &unk_10008B5E0);
}

void sub_10002A758(void *a1, void *a2)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v43 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 table];
    v5 = swift_allocObject();
    v5[2] = &v43;
    v5[3] = v3;
    v5[4] = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100032D4C;
    *(v6 + 24) = v5;
    v41 = sub_100032D58;
    v42 = v6;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100055E30;
    v40 = &unk_10009F200;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = a2;

    [v4 enumerateColumnsWithBlock:v7];

    _Block_release(v7);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 1 << v43[32];
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v43 + 8);
      v15 = (v12 + 63) >> 6;
      do
      {
        if (!v14)
        {
          while (1)
          {
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v16 >= v15)
            {
              goto LABEL_15;
            }

            v14 = *&v43[8 * v16 + 64];
            ++v11;
            if (v14)
            {
              v11 = v16;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v16 = v11;
LABEL_12:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = *(*(v43 + 7) + ((v16 << 9) | (8 * v17)));
        v19 = __OFADD__(v10, v18);
        v10 += v18;
      }

      while (!v19);
      __break(1u);
LABEL_15:
      v20 = [v8 table];
      v21 = [v20 columnCount];

      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_25;
      }

      v23 = (v22 * 3) >> 64;
      v24 = 3 * v22;
      if (v23 != v24 >> 63)
      {
        goto LABEL_26;
      }

      v19 = __OFADD__(v10, v24);
      v25 = v10 + v24;
      if (!v19)
      {
        v19 = __OFADD__(v25, 4);
        v26 = v25 + 4;
        if (v19)
        {
          goto LABEL_28;
        }

        v27 = v26 < 80;
        v45._countAndFlagsBits = 10;
        v45._object = 0xE100000000000000;
        sub_100085158(v45);
        v36 = 1;
        v28 = [v8 table];
        v29 = swift_allocObject();
        *(v29 + 16) = v8;
        *(v29 + 24) = v9;
        *(v29 + 32) = v27;
        *(v29 + 40) = &v43;
        *(v29 + 48) = v44;
        *(v29 + 56) = &v36;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_100032DA0;
        *(v30 + 24) = v29;
        v41 = sub_100035D2C;
        v42 = v30;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_100055E30;
        v40 = &unk_10009F278;
        v31 = _Block_copy(&aBlock);
        v32 = v8;
        v33 = v9;

        [v28 enumerateRowsWithBlock:v31];

        _Block_release(v31);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {

          v34 = sub_100032DA0;
          v35 = sub_100032D4C;
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v35 = 0;
  v5 = 0;
  v34 = 0;
  v29 = 0;
LABEL_22:

  sub_10000852C(v35, v5);
  sub_10000852C(v34, v29);
}

uint64_t sub_10002ABF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = sub_100084948();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_10003B204(0, a2, isUniquelyReferenced_nonNull_native);
  *a4 = aBlock[0];

  v15 = [a5 table];
  sub_100084938();
  sub_100084928(v16);
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a4;
  v19[4] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100032EAC;
  *(v20 + 24) = v19;
  aBlock[4] = sub_100035C94;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B0AC;
  aBlock[3] = &unk_10009F3E0;
  v21 = _Block_copy(aBlock);
  v22 = a6;

  [v15 enumerateCellObjectsInCellSelectionContainingColumnIndices:v18 rowIndices:0 copyItems:0 usingBlock:v21];

  _Block_release(v21);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

id sub_10002AE80(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (result)
  {
    v19 = result;
    result = [result attributedString];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result ic_attributedStringByFlatteningInlineAttachmentsWithContext:a5];
    v12 = [v11 string];

    sub_100085098();
    sub_10001D33C();
    sub_100085508();

    sub_100085508();

    v13 = sub_100085128();
    v14 = *a6;
    if (*(*a6 + 16) && (v15 = sub_1000391B0(a7), (v16 & 1) != 0))
    {
      if (*(*(v14 + 56) + 8 * v15) >= v13)
      {
        goto LABEL_9;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_9;
    }

    v17 = sub_100085128();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a6;
    *a6 = 0x8000000000000000;
    sub_10003B204(v17, a7, isUniquelyReferenced_nonNull_native);
    *a6 = v20;
LABEL_9:

    return v19;
  }

  return result;
}

id sub_10002B0AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = v9(a2, a3, a4, a5);

  return v11;
}

uint64_t sub_10002B130(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v14 = sub_100084948();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  v18 = [a4 table];
  sub_100084938();
  sub_100084928(v19);
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  v22 = swift_allocObject();
  *(v22 + 16) = &v41;
  *(v22 + 24) = a5;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  *(v22 + 48) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100032E14;
  *(v23 + 24) = v22;
  v39 = sub_100032E44;
  v40 = v23;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10002B0AC;
  v38 = &unk_10009F2F0;
  v24 = _Block_copy(&aBlock);
  v25 = a5;
  v26 = a4;

  [v18 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v21 copyItems:0 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v28 = v41;
    v29 = v42;

    v43._countAndFlagsBits = v28;
    v43._object = v29;
    sub_100085158(v43);

    v44._countAndFlagsBits = 10;
    v44._object = 0xE100000000000000;
    sub_100085158(v44);
    if (*a9 != 1)
    {
      v34 = 0;
      v31 = 0;
      goto LABEL_6;
    }

    v30 = [v26 table];
    v31 = swift_allocObject();
    *(v31 + 16) = a8;
    *(v31 + 24) = a7;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_100032E6C;
    *(v32 + 24) = v31;
    v39 = sub_100035D2C;
    v40 = v32;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100055E30;
    v38 = &unk_10009F368;
    v33 = _Block_copy(&aBlock);

    [v30 enumerateColumnsWithBlock:v33];

    _Block_release(v33);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      v45._countAndFlagsBits = 687136;
      v45._object = 0xE300000000000000;
      sub_100085158(v45);
      *a9 = 0;
      v34 = sub_100032E6C;
LABEL_6:

      return sub_10000852C(v34, v31);
    }
  }

  __break(1u);
  return result;
}

void sub_10002B55C(void *a1, char *a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t *a8, id a9)
{
  if (a1)
  {
    v11 = a1;
    if (a2)
    {
      v12._countAndFlagsBits = 2128928;
      v12._object = 0xE300000000000000;
    }

    else
    {
      v12._countAndFlagsBits = 8316;
      v12._object = 0xE200000000000000;
    }

    sub_100085158(v12);
    v13 = [v11 attributedString];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = [v13 ic_attributedStringByFlatteningInlineAttachmentsWithContext:a6];
    v16 = [v15 string];

    sub_100085098();
    v17 = sub_10001D33C();
    sub_100085508();

    v30 = v17;
    v31 = v17;
    v29 = v17;
    v18 = sub_100085508();
    v20 = v19;

    v34._countAndFlagsBits = v18;
    v34._object = v20;
    sub_100085158(v34);
    if (a7)
    {
      v21 = *a8;
      if (*(*a8 + 16) && (v22 = sub_1000391B0(a2), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v24 = 0;
      }

      v25 = sub_100085128();

      v26 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v26 < 1)
      {
LABEL_16:
        v27 = [a9 table];
        v28 = [v27 columnCount];

        if (!__OFSUB__(v28, 1))
        {
          if (v28 - 1 == a2)
          {
            v37._countAndFlagsBits = 31776;
            v37._object = 0xE200000000000000;
            sub_100085158(v37);
          }

          return;
        }

        __break(1u);
        goto LABEL_21;
      }

      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36._countAndFlagsBits = sub_100085188(v35, v26);
      sub_100085158(v36);
    }

    goto LABEL_16;
  }
}

uint64_t sub_10002B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v7._countAndFlagsBits = 2128928;
    v7._object = 0xE300000000000000;
  }

  else
  {
    v7._countAndFlagsBits = 8316;
    v7._object = 0xE200000000000000;
  }

  sub_100085158(v7);
  v8 = *a5;
  v9 = *(*a5 + 16);
  if (v9)
  {
    v10 = sub_1000391B0(a2);
    if (v11)
    {
      v9 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  v16._countAndFlagsBits = sub_100085188(v15, v12);
  sub_100085158(v16);
}

double sub_10002B8C4@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_1000392C8(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002C1D0();
      v9 = v11;
    }

    sub_10001C864((*(v9 + 56) + 32 * v7), a1);
    sub_10002B964(v7, v9);
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

void sub_10002B964(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100085558() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_100085098();
      sub_100085A08();
      v11 = v10;
      sub_100085118();
      v12 = sub_100085A38();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_10002BB2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100085558() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1000859F8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_10002BC9C()
{
  v1 = v0;
  v37 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - v2;
  sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
  v3 = *v0;
  v4 = sub_100085728();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v21 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v23 = 24 * v18;
        v24 = *(v3 + 56) + 24 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v38;
        v28 = *(v19 + 32);
        LOBYTE(v19) = *(v24 + 16);
        v28(*(v38 + 48) + v20, v21, v22);
        v29 = *(v27 + 56);
        v3 = v35;
        v30 = v29 + v23;
        *v30 = v25;
        *(v30 + 8) = v26;
        *(v30 + 16) = v19;
        result = sub_1000112CC(v25, v26, v19);
        v13 = v40;
      }

      while (v40);
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

        v1 = v31;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v32 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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

char *sub_10002BF44()
{
  v1 = v0;
  v35 = sub_100084918();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
  v3 = *v0;
  v4 = sub_100085728();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

id sub_10002C1D0()
{
  v1 = v0;
  sub_100005740(&qword_1000A5CA0, &unk_10008B8A0);
  v2 = *v0;
  v3 = sub_100085728();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000056E4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10001C864(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_10002C350()
{
  v1 = v0;
  sub_100005740(&qword_1000A5C58, &qword_10008B868);
  v2 = *v0;
  v3 = sub_100085728();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10002C49C()
{
  v1 = v0;
  sub_100005740(&qword_1000A5C88, &qword_10008B890);
  v2 = *v0;
  v3 = sub_100085728();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

char *sub_10002C608()
{
  v1 = v0;
  v33 = sub_1000847C8();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005740(&qword_1000A5CA8, &qword_10008CD30);
  v3 = *v0;
  v4 = sub_100085728();
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
        result = swift_errorRetain();
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

uint64_t sub_10002C888(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A5C68, &qword_10008B878);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for MarkdownStyle(0);
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_1000058F0(v5, &qword_1000A5C68, &qword_10008B878))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_100032EB8(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for MarkdownStyle);
      sub_10002E130(v10, v5);
      sub_100032F20(v10, type metadata accessor for MarkdownStyle);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10002CA90(uint64_t a1, void *a2)
{
  v156 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v4 = __chkstk_darwin(v156);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v148 = (&v123 - v7);
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v133 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v125 = &v123 - v13;
  __chkstk_darwin(v12);
  v131 = &v123 - v14;
  v15 = sub_100005740(&qword_1000A5C68, &qword_10008B878);
  v16 = __chkstk_darwin(v15 - 8);
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v123 - v18;
  v144 = type metadata accessor for MarkdownStyle(0);
  v20 = *(v144 - 8);
  v21 = __chkstk_darwin(v144);
  v22 = __chkstk_darwin(v21);
  v154 = &v123 - v23;
  v24 = __chkstk_darwin(v22);
  v143 = &v123 - v25;
  v26 = __chkstk_darwin(v24);
  v153 = &v123 - v27;
  v28 = __chkstk_darwin(v26);
  v29 = __chkstk_darwin(v28);
  v155 = &v123 - v30;
  v31 = __chkstk_darwin(v29);
  v129 = &v123 - v32;
  __chkstk_darwin(v31);
  v149 = &v123 - v35;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v130 = v34;
  v127 = v19;
  v150 = v33;
  v159 = v8;
  v124 = 0;
  v37 = a1 + 56;
  v36 = *(a1 + 56);
  v38 = -1 << *(a1 + 32);
  v141 = ~v38;
  if (-v38 < 64)
  {
    v39 = ~(-1 << -v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v36;
  v136 = (63 - v38) >> 6;
  v140 = (v20 + 56);
  v139 = (v20 + 48);
  v161 = (v9 + 48);
  v134 = (v9 + 32);
  v151 = (v9 + 8);
  v157 = a2 + 7;
  v142 = a1;

  v42 = 0;
  v43 = v153;
  v145 = a1 + 56;
  for (i = v20; ; v20 = i)
  {
    v44 = v40;
    v45 = v42;
    v160 = v40;
    if (v40)
    {
LABEL_15:
      v49 = (v44 - 1) & v44;
      v50 = v142;
      v51 = *(v142 + 48) + *(v20 + 72) * (__clz(__rbit64(v44)) | (v45 << 6));
      v52 = v127;
      sub_100032EB8(v51, v127, type metadata accessor for MarkdownStyle);
      v53 = 0;
      v47 = v45;
    }

    else
    {
      v46 = v136 <= v42 + 1 ? v42 + 1 : v136;
      v47 = v46 - 1;
      v48 = v42;
      while (1)
      {
        v45 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_124;
        }

        if (v45 >= v136)
        {
          break;
        }

        v44 = *(v37 + 8 * v45);
        ++v48;
        if (v44)
        {
          goto LABEL_15;
        }
      }

      v49 = 0;
      v53 = 1;
      v50 = v142;
      v52 = v127;
    }

    v54 = v144;
    v138 = *v140;
    v138(v52, v53, 1, v144);
    v162 = v50;
    v163 = v37;
    v164 = v141;
    v165 = v47;
    v152 = v49;
    v166 = v49;
    v137 = *v139;
    if (v137(v52, 1, v54) == 1)
    {
      sub_1000058F0(v52, &qword_1000A5C68, &qword_10008B878);
      v117 = v142;
      goto LABEL_119;
    }

    v55 = v149;
    sub_100032CA4(v52, v149, type metadata accessor for MarkdownStyle);
    sub_100085A08();
    v56 = v55;
    v57 = v129;
    sub_100032EB8(v56, v129, type metadata accessor for MarkdownStyle);
    v58 = v159;
    v160 = *v161;
    v59 = v160(v57, 6, v159);
    if (v59 <= 2)
    {
      if (!v59)
      {
        v61 = v131;
        (*v134)(v131, v129, v58);
        sub_100085A18(6uLL);
        sub_100031408(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        sub_100085028();
        v62 = v61;
        v43 = v153;
        (*v151)(v62, v58);
        goto LABEL_30;
      }

      v60 = v59 != 1;
    }

    else if (v59 > 4)
    {
      v60 = v59 == 5 ? 4 : 5;
    }

    else
    {
      v60 = v59 == 3 ? 2 : 3;
    }

    sub_100085A18(v60);
LABEL_30:
    v63 = sub_100085A38();
    v64 = -1 << *(a2 + 32);
    v40 = v63 & ~v64;
    v65 = v40 >> 6;
    v20 = 1 << v40;
    if (((1 << v40) & v157[v40 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_100032F20(v149, type metadata accessor for MarkdownStyle);
    v42 = v47;
    v40 = v152;
  }

  v147 = ~v64;
  v158 = *(i + 72);
  while (1)
  {
    v146 = v65;
    v66 = v155;
    sub_100032EB8(a2[6] + v158 * v40, v155, type metadata accessor for MarkdownStyle);
    v67 = *(v156 + 48);
    v68 = v66;
    v69 = v148;
    sub_100032EB8(v68, v148, type metadata accessor for MarkdownStyle);
    sub_100032EB8(v149, v69 + v67, type metadata accessor for MarkdownStyle);
    v70 = v160(v69, 6, v159);
    if (v70 > 2)
    {
      if (v70 > 4)
      {
        if (v70 == 5)
        {
          sub_100032F20(v155, type metadata accessor for MarkdownStyle);
          if (v160(v69 + v67, 6, v159) == 5)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_100032F20(v155, type metadata accessor for MarkdownStyle);
          if (v160(v69 + v67, 6, v159) == 6)
          {
            goto LABEL_57;
          }
        }
      }

      else if (v70 == 3)
      {
        sub_100032F20(v155, type metadata accessor for MarkdownStyle);
        if (v160(v69 + v67, 6, v159) == 3)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_100032F20(v155, type metadata accessor for MarkdownStyle);
        if (v160(v69 + v67, 6, v159) == 4)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_52;
    }

    if (v70)
    {
      break;
    }

    v72 = v130;
    sub_100032EB8(v69, v130, type metadata accessor for MarkdownStyle);
    v73 = v159;
    if (v160(v69 + v67, 6, v159))
    {
      sub_100032F20(v155, type metadata accessor for MarkdownStyle);
      (*v151)(v72, v73);
      v37 = v145;
LABEL_52:
      sub_1000058F0(v69, &qword_1000A5C60, &qword_10008B870);
      goto LABEL_53;
    }

    v74 = v69 + v67;
    v75 = v125;
    (*v134)(v125, v74, v73);
    v126 = sub_100084758();
    v76 = v75;
    v77 = *v151;
    (*v151)(v76, v73);
    sub_100032F20(v155, type metadata accessor for MarkdownStyle);
    v77(v72, v73);
    v69 = v148;
    v37 = v145;
    if (v126)
    {
      goto LABEL_57;
    }

    sub_100032F20(v148, type metadata accessor for MarkdownStyle);
LABEL_53:
    v40 = (v40 + 1) & v147;
    v65 = v40 >> 6;
    v20 = 1 << v40;
    if ((v157[v40 >> 6] & (1 << v40)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v70 == 1)
  {
    sub_100032F20(v155, type metadata accessor for MarkdownStyle);
    v71 = v160(v69 + v67, 6, v159) == 1;
  }

  else
  {
    sub_100032F20(v155, type metadata accessor for MarkdownStyle);
    v71 = v160(v69 + v67, 6, v159) == 2;
  }

  if (!v71)
  {
    goto LABEL_52;
  }

LABEL_57:
  sub_100032F20(v69, type metadata accessor for MarkdownStyle);
  v78 = sub_100032F20(v149, type metadata accessor for MarkdownStyle);
  v79 = *(a2 + 32);
  v129 = ((1 << v79) + 63) >> 6;
  v41 = 8 * v129;
  v80 = v135;
  if ((v79 & 0x3Fu) > 0xD)
  {
    goto LABEL_125;
  }

  while (2)
  {
    v130 = &v123;
    __chkstk_darwin(v78);
    v82 = &v123 - ((v81 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v82, v157, v81);
    v83 = *&v82[8 * v146] & ~v20;
    v148 = v82;
    *&v82[8 * v146] = v83;
    v84 = a2[2] - 1;
    v20 = v142;
    v40 = v159;
    v85 = v136;
    v86 = v152;
    v132 = v6;
LABEL_59:
    v147 = v84;
    while (2)
    {
      if (v86)
      {
        v87 = v47;
LABEL_71:
        v90 = __clz(__rbit64(v86));
        v91 = (v86 - 1) & v86;
        sub_100032EB8(*(v20 + 48) + (v90 | (v87 << 6)) * v158, v80, type metadata accessor for MarkdownStyle);
        v92 = 0;
LABEL_72:
        v93 = v144;
        v138(v80, v92, 1, v144);
        v162 = v20;
        v163 = v37;
        v164 = v141;
        v165 = v47;
        v166 = v91;
        if (v137(v80, 1, v93) == 1)
        {
          sub_1000058F0(v80, &qword_1000A5C68, &qword_10008B878);
          a2 = sub_10002F274(v148, v129, v147, a2);
          goto LABEL_118;
        }

        sub_100032CA4(v80, v43, type metadata accessor for MarkdownStyle);
        sub_100085A08();
        v94 = v43;
        v95 = v143;
        sub_100032EB8(v94, v143, type metadata accessor for MarkdownStyle);
        v96 = v160(v95, 6, v40);
        v152 = v91;
        if (v96 <= 2)
        {
          v97 = v154;
          if (v96)
          {
            sub_100085A18(v96 != 1);
          }

          else
          {
            v99 = v131;
            (*v134)(v131, v143, v40);
            sub_100085A18(6uLL);
            sub_100031408(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            sub_100085028();
            v97 = v154;
            (*v151)(v99, v40);
          }

          v43 = v153;
        }

        else
        {
          v97 = v154;
          if (v96 > 4)
          {
            v43 = v153;
            if (v96 == 5)
            {
              v98 = 4;
            }

            else
            {
              v98 = 5;
            }
          }

          else
          {
            v43 = v153;
            if (v96 == 3)
            {
              v98 = 2;
            }

            else
            {
              v98 = 3;
            }
          }

          sub_100085A18(v98);
        }

        v100 = sub_100085A38();
        v101 = -1 << *(a2 + 32);
        v102 = v100 & ~v101;
        v103 = v102 >> 6;
        v104 = 1 << v102;
        if (((1 << v102) & v157[v102 >> 6]) == 0)
        {
LABEL_60:
          sub_100032F20(v43, type metadata accessor for MarkdownStyle);
          v20 = v142;
          v40 = v159;
          v37 = v145;
          v85 = v136;
          v86 = v152;
          v80 = v135;
          continue;
        }

        v155 = ~v101;
LABEL_89:
        v105 = a2;
        sub_100032EB8(a2[6] + v102 * v158, v97, type metadata accessor for MarkdownStyle);
        v106 = *(v156 + 48);
        sub_100032EB8(v97, v6, type metadata accessor for MarkdownStyle);
        sub_100032EB8(v43, &v6[v106], type metadata accessor for MarkdownStyle);
        v107 = v159;
        v108 = v160(v6, 6, v159);
        if (v108 <= 2)
        {
          if (v108)
          {
            if (v108 == 1)
            {
              sub_100032F20(v97, type metadata accessor for MarkdownStyle);
              if (v160(&v6[v106], 6, v107) == 1)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_100032F20(v97, type metadata accessor for MarkdownStyle);
              if (v160(&v6[v106], 6, v107) == 2)
              {
                goto LABEL_113;
              }
            }

            goto LABEL_108;
          }

          v109 = v150;
          sub_100032EB8(v6, v150, type metadata accessor for MarkdownStyle);
          if (v160(&v6[v106], 6, v107))
          {
            v110 = v154;
            sub_100032F20(v154, type metadata accessor for MarkdownStyle);
            v111 = v109;
            v97 = v110;
            (*v151)(v111, v107);
            v43 = v153;
            goto LABEL_108;
          }

          v112 = v133;
          (*v134)(v133, &v6[v106], v107);
          LODWORD(v149) = sub_100084758();
          v113 = *v151;
          (*v151)(v112, v107);
          v114 = v154;
          sub_100032F20(v154, type metadata accessor for MarkdownStyle);
          v115 = v109;
          v97 = v114;
          v113(v115, v107);
          v6 = v132;
          v43 = v153;
          if (v149)
          {
LABEL_113:
            sub_100032F20(v6, type metadata accessor for MarkdownStyle);
            sub_100032F20(v43, type metadata accessor for MarkdownStyle);
            v116 = v148[v103];
            v148[v103] = v116 & ~v104;
            v71 = (v116 & v104) == 0;
            a2 = v105;
            v20 = v142;
            v40 = v159;
            v37 = v145;
            v85 = v136;
            v86 = v152;
            v80 = v135;
            if (!v71)
            {
              v84 = v147 - 1;
              if (__OFSUB__(v147, 1))
              {
                __break(1u);
              }

              if (v147 == 1)
              {

                a2 = &_swiftEmptySetSingleton;
                goto LABEL_118;
              }

              goto LABEL_59;
            }

            continue;
          }

          sub_100032F20(v132, type metadata accessor for MarkdownStyle);
        }

        else
        {
          if (v108 > 4)
          {
            if (v108 == 5)
            {
              sub_100032F20(v97, type metadata accessor for MarkdownStyle);
              if (v160(&v6[v106], 6, v107) == 5)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_100032F20(v97, type metadata accessor for MarkdownStyle);
              if (v160(&v6[v106], 6, v107) == 6)
              {
                goto LABEL_113;
              }
            }
          }

          else if (v108 == 3)
          {
            sub_100032F20(v97, type metadata accessor for MarkdownStyle);
            if (v160(&v6[v106], 6, v107) == 3)
            {
              goto LABEL_113;
            }
          }

          else
          {
            sub_100032F20(v97, type metadata accessor for MarkdownStyle);
            if (v160(&v6[v106], 6, v107) == 4)
            {
              goto LABEL_113;
            }
          }

LABEL_108:
          sub_1000058F0(v6, &qword_1000A5C60, &qword_10008B870);
        }

        a2 = v105;
        v102 = (v102 + 1) & v155;
        v103 = v102 >> 6;
        v104 = 1 << v102;
        if ((v157[v102 >> 6] & (1 << v102)) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_89;
      }

      break;
    }

    if (v85 <= v47 + 1)
    {
      v88 = v47 + 1;
    }

    else
    {
      v88 = v85;
    }

    v89 = v88 - 1;
    while (1)
    {
      v87 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v87 >= v85)
      {
        v91 = 0;
        v92 = 1;
        v47 = v89;
        goto LABEL_72;
      }

      v86 = *(v37 + 8 * v87);
      ++v47;
      if (v86)
      {
        v47 = v87;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    v119 = v41;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v80 = v135;
      continue;
    }

    break;
  }

  v120 = swift_slowAlloc();
  memcpy(v120, v157, v119);
  v121 = v124;
  v122 = sub_10002E7D0(v120, v129, a2, v40, &v162);

  if (v121)
  {

    __break(1u);
  }

  else
  {

    a2 = v122;
LABEL_118:
    v117 = v162;
LABEL_119:
    sub_100010FF4(v117);
    return a2;
  }

  return result;
}

uint64_t sub_10002E130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000847C8();
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  __chkstk_darwin(v51);
  v8 = &v39 - v7;
  v9 = type metadata accessor for MarkdownStyle(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = v2;
  v16 = *v2;
  sub_100085A08();
  v52 = a1;
  sub_10002656C(v53);
  v17 = sub_100085A38();
  v18 = v16 + 56;
  v19 = -1 << *(v16 + 32);
  v20 = v17 & ~v19;
  if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    v33 = 1;
    return (*(v10 + 56))(a2, v33, 1, v9);
  }

  v42 = v9;
  v39 = v15;
  v43 = a2;
  v49 = ~v19;
  v41 = v10;
  v50 = *(v10 + 72);
  v21 = v45;
  v22 = (v45 + 6);
  v45 += 4;
  v46 = (v21 + 1);
  v47 = v16;
  while (1)
  {
    v23 = v50 * v20;
    sub_100032EB8(*(v16 + 48) + v50 * v20, v14, type metadata accessor for MarkdownStyle);
    v24 = *(v51 + 48);
    sub_100032EB8(v14, v8, type metadata accessor for MarkdownStyle);
    sub_100032EB8(v52, &v8[v24], type metadata accessor for MarkdownStyle);
    v25 = *v22;
    v26 = (*v22)(v8, 6, v5);
    if (v26 > 2)
    {
      if (v26 > 4)
      {
        if (v26 == 5)
        {
          sub_100032F20(v14, type metadata accessor for MarkdownStyle);
          if (v25(&v8[v24], 6, v5) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_100032F20(v14, type metadata accessor for MarkdownStyle);
          if (v25(&v8[v24], 6, v5) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v26 == 3)
      {
        sub_100032F20(v14, type metadata accessor for MarkdownStyle);
        if (v25(&v8[v24], 6, v5) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100032F20(v14, type metadata accessor for MarkdownStyle);
        if (v25(&v8[v24], 6, v5) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v27 = v18;
    v28 = v48;
    if (v26)
    {
      break;
    }

    sub_100032EB8(v8, v48, type metadata accessor for MarkdownStyle);
    if (v25(&v8[v24], 6, v5))
    {
      sub_100032F20(v14, type metadata accessor for MarkdownStyle);
      (*v46)(v28, v5);
      v18 = v27;
      v16 = v47;
LABEL_23:
      sub_1000058F0(v8, &qword_1000A5C60, &qword_10008B870);
      goto LABEL_24;
    }

    v30 = v44;
    (*v45)(v44, &v8[v24], v5);
    v40 = sub_100084758();
    v31 = v30;
    v32 = *v46;
    (*v46)(v31, v5);
    sub_100032F20(v14, type metadata accessor for MarkdownStyle);
    v32(v28, v5);
    v18 = v27;
    v16 = v47;
    if (v40)
    {
      goto LABEL_29;
    }

    sub_100032F20(v8, type metadata accessor for MarkdownStyle);
LABEL_24:
    v20 = (v20 + 1) & v49;
    if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      v33 = 1;
      a2 = v43;
      goto LABEL_32;
    }
  }

  if (v26 == 1)
  {
    sub_100032F20(v14, type metadata accessor for MarkdownStyle);
    v29 = v25(&v8[v24], 6, v5) == 1;
  }

  else
  {
    sub_100032F20(v14, type metadata accessor for MarkdownStyle);
    v29 = v25(&v8[v24], 6, v5) == 2;
  }

  v18 = v27;
  v16 = v47;
  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_100032F20(v8, type metadata accessor for MarkdownStyle);
  v34 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v34;
  v53[0] = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100078DB4();
    v36 = v53[0];
  }

  v37 = *(v36 + 48) + v23;
  a2 = v43;
  sub_100032CA4(v37, v43, type metadata accessor for MarkdownStyle);
  sub_10002F734(v20);
  v33 = 0;
  *v34 = v53[0];
LABEL_32:
  v10 = v41;
  v9 = v42;
  return (*(v10 + 56))(a2, v33, 1, v9);
}

void *sub_10002E7D0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v67[0] = a2;
  v83 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  __chkstk_darwin(v83);
  v10 = v67 - v9;
  v87 = sub_1000847C8();
  v11 = *(v87 - 8);
  v12 = __chkstk_darwin(v87);
  v71 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = v67 - v14;
  v15 = sub_100005740(&qword_1000A5C68, &qword_10008B878);
  __chkstk_darwin(v15 - 8);
  v74 = v67 - v16;
  v77 = type metadata accessor for MarkdownStyle(0);
  v17 = __chkstk_darwin(v77);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v67 - v21;
  v23 = __chkstk_darwin(v20);
  v79 = v67 - v24;
  result = __chkstk_darwin(v23);
  v88 = v67 - v26;
  v27 = *(a3 + 16);
  v28 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v29 = *(a1 + v28) & ((-1 << a4) - 1);
  v70 = a1;
  *(a1 + v28) = v29;
  v30 = v27 - 1;
  v76 = (v31 + 56);
  v80 = v31;
  v75 = (v31 + 48);
  v90 = (v11 + 48);
  v72 = (v11 + 32);
  v81 = (v11 + 8);
  v89 = a3;
  v86 = a3 + 56;
  v73 = a5;
  v82 = v19;
LABEL_2:
  v68 = v30;
LABEL_4:
  while (2)
  {
    v33 = *a5;
    v32 = a5[1];
    v35 = a5[2];
    v34 = a5[3];
    v36 = a5[4];
    v85 = v35;
    if (v36)
    {
      v37 = v34;
LABEL_13:
      v41 = (v36 - 1) & v36;
      v42 = v74;
      sub_100032EB8(*(v33 + 48) + *(v80 + 72) * (__clz(__rbit64(v36)) | (v37 << 6)), v74, type metadata accessor for MarkdownStyle);
      v43 = 0;
      v40 = v37;
LABEL_14:
      v44 = v77;
      (*v76)(v42, v43, 1, v77);
      *a5 = v33;
      a5[1] = v32;
      a5[2] = v85;
      a5[3] = v40;
      a5[4] = v41;
      if ((*v75)(v42, 1, v44) == 1)
      {
        sub_1000058F0(v42, &qword_1000A5C68, &qword_10008B878);
        v66 = v89;

        return sub_10002F274(v70, v67[0], v68, v66);
      }

      v45 = v88;
      sub_100032CA4(v42, v88, type metadata accessor for MarkdownStyle);
      sub_100085A08();
      v46 = v45;
      v47 = v79;
      sub_100032EB8(v46, v79, type metadata accessor for MarkdownStyle);
      v48 = *v90;
      v49 = v87;
      v50 = (*v90)(v47, 6, v87);
      if (v50 <= 2)
      {
        v51 = v82;
        if (!v50)
        {
          v53 = v69;
          (*v72)(v69, v79, v49);
          sub_100085A18(6uLL);
          sub_100031408(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          sub_100085028();
          (*v81)(v53, v49);
LABEL_28:
          v54 = sub_100085A38();
          v55 = -1 << *(v89 + 32);
          v56 = v54 & ~v55;
          v57 = v56 >> 6;
          v58 = 1 << v56;
          if (((1 << v56) & *(v86 + 8 * (v56 >> 6))) == 0)
          {
LABEL_3:
            result = sub_100032F20(v88, type metadata accessor for MarkdownStyle);
            a5 = v73;
            continue;
          }

          v84 = ~v55;
          v85 = *(v80 + 72);
          while (1)
          {
            sub_100032EB8(*(v89 + 48) + v85 * v56, v22, type metadata accessor for MarkdownStyle);
            v59 = *(v83 + 48);
            sub_100032EB8(v22, v10, type metadata accessor for MarkdownStyle);
            sub_100032EB8(v88, &v10[v59], type metadata accessor for MarkdownStyle);
            v60 = v87;
            v61 = v48(v10, 6, v87);
            if (v61 > 2)
            {
              if (v61 > 4)
              {
                if (v61 == 5)
                {
                  sub_100032F20(v22, type metadata accessor for MarkdownStyle);
                  if (v48(&v10[v59], 6, v60) == 5)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  sub_100032F20(v22, type metadata accessor for MarkdownStyle);
                  if (v48(&v10[v59], 6, v60) == 6)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else if (v61 == 3)
              {
                sub_100032F20(v22, type metadata accessor for MarkdownStyle);
                if (v48(&v10[v59], 6, v60) == 3)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                sub_100032F20(v22, type metadata accessor for MarkdownStyle);
                if (v48(&v10[v59], 6, v60) == 4)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_49;
            }

            if (v61)
            {
              break;
            }

            sub_100032EB8(v10, v51, type metadata accessor for MarkdownStyle);
            if (v48(&v10[v59], 6, v60))
            {
              sub_100032F20(v22, type metadata accessor for MarkdownStyle);
              (*v81)(v51, v60);
LABEL_49:
              sub_1000058F0(v10, &qword_1000A5C60, &qword_10008B870);
              goto LABEL_50;
            }

            v62 = v71;
            (*v72)(v71, &v10[v59], v60);
            v78 = sub_100084758();
            v63 = *v81;
            v64 = v62;
            v51 = v82;
            (*v81)(v64, v60);
            sub_100032F20(v22, type metadata accessor for MarkdownStyle);
            v63(v51, v87);
            if (v78)
            {
LABEL_54:
              sub_100032F20(v10, type metadata accessor for MarkdownStyle);
              result = sub_100032F20(v88, type metadata accessor for MarkdownStyle);
              v65 = v70[v57];
              v70[v57] = v65 & ~v58;
              a5 = v73;
              if ((v65 & v58) != 0)
              {
                v30 = v68 - 1;
                if (__OFSUB__(v68, 1))
                {
                  goto LABEL_60;
                }

                if (v68 == 1)
                {
                  return &_swiftEmptySetSingleton;
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }

            sub_100032F20(v10, type metadata accessor for MarkdownStyle);
LABEL_50:
            v56 = (v56 + 1) & v84;
            v57 = v56 >> 6;
            v58 = 1 << v56;
            if ((*(v86 + 8 * (v56 >> 6)) & (1 << v56)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v61 == 1)
          {
            sub_100032F20(v22, type metadata accessor for MarkdownStyle);
            if (v48(&v10[v59], 6, v60) == 1)
            {
              goto LABEL_54;
            }
          }

          else
          {
            sub_100032F20(v22, type metadata accessor for MarkdownStyle);
            if (v48(&v10[v59], 6, v60) == 2)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_49;
        }

        v52 = v50 != 1;
      }

      else
      {
        v51 = v82;
        if (v50 > 4)
        {
          if (v50 == 5)
          {
            v52 = 4;
          }

          else
          {
            v52 = 5;
          }
        }

        else if (v50 == 3)
        {
          v52 = 2;
        }

        else
        {
          v52 = 3;
        }
      }

      sub_100085A18(v52);
      goto LABEL_28;
    }

    break;
  }

  v38 = (v35 + 64) >> 6;
  if (v38 <= v34 + 1)
  {
    v39 = v34 + 1;
  }

  else
  {
    v39 = (v35 + 64) >> 6;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      v41 = 0;
      v43 = 1;
      v42 = v74;
      goto LABEL_14;
    }

    v36 = *(v32 + 8 * v37);
    ++v34;
    if (v36)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}