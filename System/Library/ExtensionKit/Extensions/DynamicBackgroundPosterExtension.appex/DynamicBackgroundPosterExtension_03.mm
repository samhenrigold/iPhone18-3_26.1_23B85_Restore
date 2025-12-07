char *sub_100043840(uint64_t a1)
{
  v2 = sub_10004CD3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  sub_1000132A8(v2, qword_100073158);
  sub_10004CCCC(v7);
  v9 = v8;
  v39 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:&v39];

  v11 = v39;
  if (!v10)
  {
    v28 = v39;
    sub_10004CC6C();

    swift_willThrow();
    swift_errorRetain();
    v29 = sub_10004CEDC();
    v30 = sub_10004D38C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v31, 0xCu);
      sub_100024DC8(v32, &qword_1000703F0, &qword_100050B90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v12 = sub_10004D23C();
  v13 = v11;

  v14 = v12;
  v15 = *(v12 + 16);
  if (!v15)
  {

    return &_swiftEmptyArrayStorage;
  }

  v16 = v3 + 16;
  v37 = *(v3 + 16);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35[1] = v14;
  v18 = v14 + v17;
  v19 = *(v3 + 72);
  v20 = &_swiftEmptyArrayStorage;
  v35[2] = v16;
  v36 = v2;
  v37(v5, v14 + v17, v2);
  while (1)
  {
    sub_100049A30(v5, &v39);
    v21 = v40;
    if (v40)
    {
      v22 = v39;
      v23 = v42;
      v44 = v41;
      v38[0] = *v43;
      *(v38 + 9) = *&v43[9];
      if (v39 == *a1 && v40 == *(a1 + 8) || (sub_10004D74C()) && v23 == *(a1 + 32))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100048464(0, *(v20 + 2) + 1, 1, v20);
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100048464((v24 > 1), v25 + 1, 1, v20);
        }

        *(v20 + 2) = v25 + 1;
        v26 = &v20[64 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v21;
        *(v26 + 3) = v44;
        *(v26 + 16) = v23;
        v27 = v38[0];
        *(v26 + 77) = *(v38 + 9);
        *(v26 + 68) = v27;
        v2 = v36;
      }

      else
      {
        sub_100024DC8(&v39, &qword_10006EDA0, &unk_100050800);
      }
    }

    v18 += v19;
    if (!--v15)
    {
      break;
    }

    v37(v5, v18, v2);
  }

  return v20;
}

char *sub_100043CB8(uint64_t a1)
{
  v38 = a1;
  v1 = sub_10004CD3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  sub_1000132A8(v1, qword_100073158);
  sub_10004CCCC(v6);
  v8 = v7;
  v39 = 0;
  v9 = [v5 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:0 error:&v39];

  v10 = v39;
  if (!v9)
  {
    v29 = v39;
    sub_10004CC6C();

    swift_willThrow();
    swift_errorRetain();
    v30 = sub_10004CEDC();
    v31 = sub_10004D38C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v32, 0xCu);
      sub_100024DC8(v33, &qword_1000703F0, &qword_100050B90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v11 = sub_10004D23C();
  v12 = v10;

  v13 = v11;
  v14 = *(v11 + 16);
  if (!v14)
  {

    return &_swiftEmptyArrayStorage;
  }

  v15 = v2 + 16;
  v16 = *(v2 + 16);
  v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v36[1] = v13;
  v18 = v13 + v17;
  v19 = *(v2 + 72);
  v20 = &_swiftEmptyArrayStorage;
  v36[2] = v15;
  v37 = v1;
  v16(v4, v13 + v17, v1);
  while (1)
  {
    sub_100049A30(v4, &v39);
    v21 = v40;
    if (v40)
    {
      v22 = v39;
      v43 = v41;
      v44[0] = v42[0];
      *(v44 + 13) = *(v42 + 13);
      v23 = v39 == *v38 && v40 == *(v38 + 8);
      if (v23 || (sub_10004D74C() & 1) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100048464(0, *(v20 + 2) + 1, 1, v20);
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100048464((v24 > 1), v25 + 1, 1, v20);
        }

        *(v20 + 2) = v25 + 1;
        v26 = &v20[64 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v21;
        v27 = v43;
        v28 = v44[0];
        *(v26 + 77) = *(v44 + 13);
        *(v26 + 3) = v27;
        *(v26 + 4) = v28;
        v1 = v37;
      }

      else
      {
        sub_100024DC8(&v39, &qword_10006EDA0, &unk_100050800);
      }
    }

    v18 += v19;
    if (!--v14)
    {
      break;
    }

    v16(v4, v18, v1);
  }

  return v20;
}

void sub_1000440F4(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = sub_10004CD3C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v53 - v8;
  __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_10004CD0C(1);
  v14 = sub_10004D05C();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = v3;
    v17 = [v12 defaultManager];
    sub_10004CCCC(v18);
    v20 = v19;
    v56 = 0;
    v21 = [v17 removeItemAtURL:v19 error:&v56];

    v22 = v56;
    if (v21)
    {
      (*(v4 + 16))(v11, a1, v3);
      v23 = v22;
      v24 = sub_10004CEDC();
      v25 = sub_10004D36C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v56 = v27;
        *v26 = 136315138;
        sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v28 = sub_10004D73C();
        v30 = v29;
        (*(v4 + 8))(v11, v16);
        v31 = sub_10000C618(v28, v30, &v56);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Removed snapshot at URL: %s", v26, 0xCu);
        sub_10000CF40(v27);
      }

      else
      {

        (*(v4 + 8))(v11, v16);
      }
    }

    else
    {
      v41 = v56;
      sub_10004CC6C();

      swift_willThrow();
      v42 = v54;
      (*(v4 + 16))(v54, a1, v3);
      swift_errorRetain();
      v43 = sub_10004CEDC();
      v44 = sub_10004D38C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v45 = 136315394;
        sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v47 = sub_10004D73C();
        v48 = v42;
        v50 = v49;
        (*(v4 + 8))(v48, v3);
        v51 = sub_10000C618(v47, v50, &v56);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2112;
        swift_errorRetain();
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v52;
        *v46 = v52;
        _os_log_impl(&_mh_execute_header, v43, v44, "Could not remove snapshot at URL: %s. Error: %@.", v45, 0x16u);
        sub_100024DC8(v46, &qword_1000703F0, &qword_100050B90);

        sub_10000CF40(v55);
      }

      else
      {

        (*(v4 + 8))(v42, v3);
      }
    }
  }

  else
  {
    (*(v4 + 16))(v9, a1, v3);
    v32 = sub_10004CEDC();
    v33 = sub_10004D38C();
    v34 = v3;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v56 = v36;
      *v35 = 136315138;
      sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v37 = sub_10004D73C();
      v39 = v38;
      (*(v4 + 8))(v9, v34);
      v40 = sub_10000C618(v37, v39, &v56);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "File doesn't exist. %s", v35, 0xCu);
      sub_10000CF40(v36);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }
  }
}

uint64_t sub_1000447F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  v7 = sub_10004CD3C();
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000448BC, 0, 0);
}

uint64_t sub_1000448BC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v27 = sub_100043CB8(*(v0 + 368));
    v1 = *(v27 + 2);
    if (v1)
    {
      v2 = *(v0 + 368);
      v3 = *v2;
      v4 = *(v2 + 1);
      v30 = v2;
      v5 = (v27 + 32);
      v32 = (*(v0 + 392) + 8);
      v28 = v4;
      v29 = *v2;
      while (1)
      {
        v9 = *v5;
        v10 = v5[1];
        v11 = v5[2];
        *(v0 + 61) = *(v5 + 45);
        *(v0 + 32) = v10;
        *(v0 + 48) = v11;
        *(v0 + 16) = v9;
        v12 = *(v0 + 16) == v3 && *(v0 + 24) == v4;
        if (!v12 && (sub_10004D74C() & 1) == 0)
        {
          break;
        }

        if (*(v0 + 48) != v30[8])
        {
          v19 = v0 + 16;
          v20 = v0 + 144;
LABEL_19:
          sub_1000131F8(v19, v20);
LABEL_20:
          v31 = v1;
          if (qword_10006E0C0 != -1)
          {
            swift_once();
          }

          v21 = *(v0 + 400);
          v22 = *(v0 + 376);
          v23 = *(v0 + 384);
          sub_1000132A8(v23, qword_100073158);
          sub_100042A30();
          v35._countAndFlagsBits = 0x636965682ELL;
          v35._object = 0xE500000000000000;
          sub_10004D16C(v35);
          sub_10004CCEC();

          sub_1000440F4(v21, v22);
          v24 = *v32;
          (*v32)(v21, v23);
          sub_100042A30();
          v36._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v36._object = 0xEB0000000067706ALL;
          sub_10004D16C(v36);
          sub_10004CCEC();

          sub_1000440F4(v21, v22);
          v24(v21, v23);
          if (qword_10006E0C8 != -1)
          {
            swift_once();
          }

          v6 = *(v0 + 400);
          v8 = *(v0 + 376);
          v7 = *(v0 + 384);
          sub_1000132A8(v7, qword_100073170);
          sub_100042A30();
          sub_100013254(v0 + 16);
          v34._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v34._object = 0xEB0000000067706ALL;
          sub_10004D16C(v34);
          sub_10004CCEC();

          sub_1000440F4(v6, v8);
          v24(v6, v7);
          v1 = v31;
          v4 = v28;
          v3 = v29;
          goto LABEL_5;
        }

        v13 = *(v0 + 72);
        if (v13 != 0.0)
        {
          v14 = v30[14];
          if (v13 != v14)
          {
            v15 = *(v0 + 368);
            sub_1000131F8(v0 + 16, v0 + 208);
            sub_1000131F8(v15, v0 + 272);
            v16 = sub_10004CEDC();
            v17 = sub_10004D37C();
            sub_100013254(v15);
            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              *v18 = 134218240;
              *(v18 + 4) = v13;
              *(v18 + 12) = 2048;
              *(v18 + 14) = v14;
              _os_log_impl(&_mh_execute_header, v16, v17, "Removing snapshot because time does not match - snapshot.effectTime: %f. viewConfiguration.effectTime: %f", v18, 0x16u);
            }

            goto LABEL_20;
          }
        }

LABEL_5:
        v5 += 4;
        if (!--v1)
        {
          goto LABEL_24;
        }
      }

      v19 = v0 + 16;
      v20 = v0 + 80;
      goto LABEL_19;
    }

LABEL_24:
  }

  v25 = *(v0 + 8);

  return v25();
}

void sub_100044D30(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100043840(a1);
  v113 = v5;
  v114 = *(v5 + 2);
  if (v114)
  {
    v6 = 0;
    v7 = 32;
    v2 = &type metadata for DefaultStringInterpolation;
    while (1)
    {
      if (v6 >= *(v5 + 2))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v8 = *&v5[v7 + 45];
      v10 = *&v5[v7 + 16];
      v9 = *&v5[v7 + 32];
      v129 = *&v5[v7];
      v130 = v10;
      v131[0] = v9;
      *(v131 + 13) = v8;
      v11 = v129;
      v116 = *(&v10 + 1);
      *&v111 = v10;
      v109 = DWORD1(v9);
      v3 = v9;
      v102 = *(&v131[0] + 1);
      v105 = v8 >> 24;
      v4 = *(&v8 + 1) >> 24;
      v107 = HIBYTE(v8);
      object = 0;
      v125 = 0xE000000000000000;
      sub_1000131F8(&v129, &v126);
      sub_10004D16C(v11);
      v132._countAndFlagsBits = 45;
      v132._object = 0xE100000000000000;
      sub_10004D16C(v132);
      v99 = *(&v131[0] + 1);
      v126._countAndFlagsBits = *(&v131[0] + 1);
      v133._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v133);

      v134._countAndFlagsBits = 45;
      v134._object = 0xE100000000000000;
      sub_10004D16C(v134);
      v98 = *&v131[1];
      v126._countAndFlagsBits = *&v131[1];
      v135._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v135);

      v136._countAndFlagsBits = 45;
      v136._object = 0xE100000000000000;
      sub_10004D16C(v136);
      v12 = v131[0];
      sub_10004D2EC();
      v137._countAndFlagsBits = 45;
      v137._object = 0xE100000000000000;
      sub_10004D16C(v137);
      v13 = DWORD2(v131[1]);
      sub_10004D2EC();
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      sub_10004D16C(*a1);
      v138._countAndFlagsBits = 45;
      v138._object = 0xE100000000000000;
      sub_10004D16C(v138);
      object = a1[2]._object;
      v139._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v139);

      v140._countAndFlagsBits = 45;
      v140._object = 0xE100000000000000;
      sub_10004D16C(v140);
      object = a1[3]._countAndFlagsBits;
      v141._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v141);

      v142._countAndFlagsBits = 45;
      v142._object = 0xE100000000000000;
      sub_10004D16C(v142);
      sub_10004D2EC();
      v143._countAndFlagsBits = 45;
      v143._object = 0xE100000000000000;
      sub_10004D16C(v143);
      sub_10004D2EC();
      if (v126 == __PAIR128__(0xE000000000000000, 0))
      {
        break;
      }

      v14 = sub_10004D74C();

      if (v14)
      {
        goto LABEL_51;
      }

      ++v6;
      sub_100013254(&v129);
      v7 += 64;
      v5 = v113;
      if (v114 == v6)
      {
        goto LABEL_7;
      }
    }

LABEL_51:

    v69 = a1;
    sub_1000131F8(a1, &v126);
    v72 = sub_10004CEDC();
    v73 = sub_10004D37C();
    sub_100013254(a1);
    LODWORD(v18) = v109;
    LOBYTE(v2) = v107;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v126._countAndFlagsBits = swift_slowAlloc();
      *v74 = 136315394;
      v75 = sub_1000428CC();
      v77 = sub_10000C618(v75, v76, &v126._countAndFlagsBits);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = sub_100042698();
      v80 = sub_10000C618(v78, v79, &v126._countAndFlagsBits);

      *(v74 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v72, v73, "SnapshotManager: perfect match  %s - snapshotID: %s", v74, 0x16u);
      swift_arrayDestroy();
    }

    v67 = BYTE12(v131[1]);
    v66 = *(&v130 + 1);
    v65 = v130;
    *&v68 = v99;
    *(&v68 + 1) = v98;
    *&v81 = v102;
    *(&v81 + 1) = v105;
    v101 = v81;
    countAndFlagsBits = v11._countAndFlagsBits;
    v63 = v116;
    v61 = v11._object;
    goto LABEL_54;
  }

LABEL_7:
  v15 = a1;
  sub_1000131F8(a1, &v129);
  v16 = sub_10004CEDC();
  v17 = sub_10004D37C();
  sub_100013254(a1);
  v18 = &OBJC_INSTANCE_METHODS_PRMutablePosterPreferences;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v129._countAndFlagsBits = v20;
    *v19 = 136315138;
    v21 = sub_1000428CC();
    v23 = sub_10000C618(v21, v22, &v129._countAndFlagsBits);

    *(v19 + 4) = v23;
    v15 = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "#SnapshotManager: try to match  %s", v19, 0xCu);
    sub_10000CF40(v20);
  }

  if (!v114)
  {

    countAndFlagsBits = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v18) = 0;
    v70 = 0;
    v71 = 0;
    LOBYTE(v2) = 0;
    v3 = 0;
    v4 = 0;
LABEL_59:
    v94 = sub_10004CEDC();
    v95 = sub_10004D37C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "SnapshotManager: no snapshot found on disk", v96, 2u);
    }

    v93 = 0;
    v92 = a2;
    goto LABEL_62;
  }

  v26 = v15[2]._object;
  v27 = v15[3]._countAndFlagsBits;
  v28 = 0uLL;
  v129 = 0;
  v130 = 0u;
  memset(v131, 0, 29);
  v29 = v113;
  if (*(v113 + 2))
  {
    v30 = 0;
    v31 = v26 / v27;
    v103 = (v26 * v27) >> 64 != (v26 * v27) >> 63;
    v106 = v114 - 1;
    v32 = 32;
    v33 = (v26 * v27);
    do
    {
      v34 = *&v29[v32];
      v35 = *&v29[v32 + 16];
      v36 = *&v29[v32 + 32];
      *&v128[13] = *&v29[v32 + 45];
      v127 = v35;
      *v128 = v36;
      v126 = v34;
      v4 = *&v128[24];
      v118 = *&v128[8];
      v3 = v36;
      v37 = *(&v35 + 1);
      v38 = v35;
      v110 = v34;
      sub_1000131F8(&v126, &object);
      sub_1000131F8(&v126, &object);
      v18 = sub_10004CEDC();
      v39 = sub_10004D37C();
      sub_100013254(&v126);
      v108 = v38;
      if (os_log_type_enabled(v18, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v123 = v41;
        object = 0;
        *v40 = 136315138;
        v125 = 0xE000000000000000;
        if (v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v110._object;

          v38 = v110._countAndFlagsBits;
        }

        v144._countAndFlagsBits = v38;
        v144._object = v42;
        sub_10004D16C(v144);

        v145._countAndFlagsBits = 45;
        v145._object = 0xE100000000000000;
        sub_10004D16C(v145);
        v146._countAndFlagsBits = sub_10004D73C();
        sub_10004D16C(v146);

        v147._countAndFlagsBits = 45;
        v147._object = 0xE100000000000000;
        sub_10004D16C(v147);
        v148._countAndFlagsBits = sub_10004D73C();
        sub_10004D16C(v148);

        v149._countAndFlagsBits = 45;
        v149._object = 0xE100000000000000;
        sub_10004D16C(v149);
        sub_10004D2EC();
        v150._countAndFlagsBits = 45;
        v150._object = 0xE100000000000000;
        sub_10004D16C(v150);
        sub_10004D2EC();
        v44 = sub_10000C618(object, v125, &v123);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v18, v39, "SnapshotManager: with  %s", v40, 0xCu);
        sub_10000CF40(v41);

        v43 = v118;
        v29 = v113;
      }

      else
      {

        v43 = v118;
      }

      v45 = (v43 / *(&v43 + 1)) / v31;
      if (v45 > 1.0)
      {
        v45 = 1.0 / v45;
      }

      if (v45 >= 0.7)
      {
        if ((v43 * *(&v43 + 1)) >> 64 != (v43 * *(&v43 + 1)) >> 63)
        {
          goto LABEL_64;
        }

        if (v103)
        {
          goto LABEL_65;
        }

        if (((v43 * *(&v43 + 1)) / v33) >= 0.8)
        {
          if (v129._object)
          {
            v54 = (*(&v131[0] + 1) / *&v131[1]) / v31;
            if (v54 > 1.0)
            {
              v54 = 1.0 / v54;
            }

            if (v45 >= v54)
            {
              sub_100024DC8(&v129, &qword_10006EDA0, &unk_100050800);
              v55 = v128[28];
              *&v25 = v108;
              v24 = v110;
              *(&v25 + 1) = v37;
              v28 = v118;
            }

            else
            {
              v112 = v130;
              v3 = v131[0];
              v4 = DWORD2(v131[1]);
              v55 = BYTE12(v131[1]);
              v100 = *(v131 + 8);
              v120 = v129;
              sub_100013254(&v126);
              v25 = v112;
              v24 = v120;
              v28 = v100;
            }

            LOBYTE(v2) = v55 & 1;
          }

          else
          {
            v24 = v126;
            v25 = v127;
            v3 = *v128;
            LODWORD(v18) = *&v128[4];
            v28 = *&v128[8];
            v4 = *&v128[24];
            LOBYTE(v2) = v128[28];
          }

          goto LABEL_44;
        }

        sub_1000131F8(&v126, &object);
        v18 = sub_10004CEDC();
        v50 = sub_10004D37C();
        sub_100013254(&v126);
        if (os_log_type_enabled(v18, v50))
        {
          v47 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v123 = v51;
          object = 0;
          *v47 = 136315138;
          v125 = 0xE000000000000000;
          v115 = v32;
          v119 = v51;
          if (v37)
          {
            v52 = v37;
            v53 = v108;
          }

          else
          {
            v52 = v110._object;

            v53 = v110._countAndFlagsBits;
          }

          v158._countAndFlagsBits = v53;
          v158._object = v52;
          sub_10004D16C(v158);

          v159._countAndFlagsBits = 45;
          v159._object = 0xE100000000000000;
          sub_10004D16C(v159);
          v160._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v160);

          v161._countAndFlagsBits = 45;
          v161._object = 0xE100000000000000;
          sub_10004D16C(v161);
          v162._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v162);

          v163._countAndFlagsBits = 45;
          v163._object = 0xE100000000000000;
          sub_10004D16C(v163);
          sub_10004D2EC();
          v164._countAndFlagsBits = 45;
          v164._object = 0xE100000000000000;
          sub_10004D16C(v164);
          sub_10004D2EC();
          sub_100013254(&v126);
          v60 = sub_10000C618(object, v125, &v123);

          *(v47 + 4) = v60;
          v57 = v50;
          v58 = v18;
          v59 = "SnapshotManager: size reject %s";
          goto LABEL_43;
        }
      }

      else
      {
        sub_1000131F8(&v126, &object);
        v18 = sub_10004CEDC();
        v46 = sub_10004D37C();
        sub_100013254(&v126);
        if (os_log_type_enabled(v18, v46))
        {
          v47 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v123 = v119;
          object = 0;
          *v47 = 136315138;
          v125 = 0xE000000000000000;
          v115 = v32;
          if (v37)
          {
            v48 = v37;
            v49 = v108;
          }

          else
          {
            v48 = v110._object;

            v49 = v110._countAndFlagsBits;
          }

          v151._countAndFlagsBits = v49;
          v151._object = v48;
          sub_10004D16C(v151);

          v152._countAndFlagsBits = 45;
          v152._object = 0xE100000000000000;
          sub_10004D16C(v152);
          v153._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v153);

          v154._countAndFlagsBits = 45;
          v154._object = 0xE100000000000000;
          sub_10004D16C(v154);
          v155._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v155);

          v156._countAndFlagsBits = 45;
          v156._object = 0xE100000000000000;
          sub_10004D16C(v156);
          sub_10004D2EC();
          v157._countAndFlagsBits = 45;
          v157._object = 0xE100000000000000;
          sub_10004D16C(v157);
          sub_10004D2EC();
          sub_100013254(&v126);
          v56 = sub_10000C618(object, v125, &v123);

          *(v47 + 4) = v56;
          v57 = v46;
          v58 = v18;
          v59 = "SnapshotManager: ratio reject %s";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v58, v57, v59, v47, 0xCu);
          sub_10000CF40(v119);

          v24 = v129;
          v25 = v130;
          v3 = v131[0];
          LODWORD(v18) = DWORD1(v131[0]);
          v28 = *(v131 + 8);
          v4 = DWORD2(v131[1]);
          LOBYTE(v2) = BYTE12(v131[1]);
          v29 = v113;
          v32 = v115;
          goto LABEL_44;
        }
      }

      sub_100013254(&v126);
      v24 = v129;
      v25 = v130;
      v3 = v131[0];
      LODWORD(v18) = DWORD1(v131[0]);
      v28 = *(v131 + 8);
      v4 = DWORD2(v131[1]);
      LOBYTE(v2) = BYTE12(v131[1]);
LABEL_44:
      if (v106 == v30)
      {
        goto LABEL_47;
      }

      ++v30;
      v129 = v24;
      v130 = v25;
      *&v131[0] = __PAIR64__(v18, v3);
      *(v131 + 8) = v28;
      DWORD2(v131[1]) = v4;
      BYTE12(v131[1]) = v2;
      v32 += 64;
    }

    while (v30 < *(v29 + 2));
  }

  __break(1u);
LABEL_47:
  v101 = v28;
  v121 = v24;
  v111 = v25;

  v61 = v121._object;
  countAndFlagsBits = v121._countAndFlagsBits;
  v63 = *(&v111 + 1);
  v64 = v111;
  if (!v121._object)
  {
    v71 = *(&v101 + 1);
    v70 = v101;
    goto LABEL_59;
  }

  v66 = *(&v111 + 1);
  v65 = v111;
  v12 = v3;
  v13 = v4;
  v67 = v2;
  v68 = v101;
  v69 = a1;
LABEL_54:
  v126._countAndFlagsBits = countAndFlagsBits;
  v126._object = v61;
  v122 = v61;
  *&v127 = v65;
  *(&v127 + 1) = v66;
  *v128 = v12;
  *&v128[8] = v68;
  *&v128[24] = v13;
  v128[28] = v67 & 1;
  v129 = v126;
  v130 = v127;
  v131[0] = *v128;
  *(v131 + 13) = *&v128[13];
  sub_1000131F8(v69, &object);
  sub_1000131F8(&v126, &object);
  v82 = sub_10004CEDC();
  v83 = sub_10004D37C();
  sub_100013254(v69);
  if (os_log_type_enabled(v82, v83))
  {
    v117 = v63;
    v84 = swift_slowAlloc();
    object = swift_slowAlloc();
    *v84 = 136315394;
    v85 = sub_1000428CC();
    v87 = v86;
    sub_100013254(&v126);
    v88 = sub_10000C618(v85, v87, &object);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    v89 = sub_1000428CC();
    v91 = sub_10000C618(v89, v90, &object);

    *(v84 + 14) = v91;
    _os_log_impl(&_mh_execute_header, v82, v83, "SnapshotManager: found usable snapshot on disk: %s. viewConfig: %s", v84, 0x16u);
    swift_arrayDestroy();

    v63 = v117;
  }

  else
  {

    sub_100013254(&v126);
  }

  v71 = *(&v101 + 1);
  v70 = v101;
  v92 = a2;
  v64 = v111;
  v93 = v122;
LABEL_62:
  *v92 = countAndFlagsBits;
  *(v92 + 8) = v93;
  *(v92 + 16) = v64;
  *(v92 + 24) = v63;
  *(v92 + 32) = v3;
  *(v92 + 36) = v18;
  *(v92 + 40) = v70;
  *(v92 + 48) = v71;
  *(v92 + 56) = v4;
  *(v92 + 60) = v2;
}

void sub_100045E60(UIImage *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v60 = a7;
  v11 = sub_10004CD3C();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004CEFC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v65 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = [objc_allocWithZone(CIContext) init];
  v20 = UIImageHEICRepresentation(a1);
  if (v20)
  {
    v61 = a6;
    v58 = v14;
    v59 = v13;
    v21 = v20;
    v22 = sub_10004CD7C();
    v24 = v23;

    sub_10004CD8C();
    if (!a4)
    {
LABEL_15:
      if (v61)
      {
        v61(1);
      }

      sub_100017C6C(v22, v24);
      goto LABEL_18;
    }

    v57 = a3;
    v46 = a4;
    sub_10004CCCC(v47);
    v49 = v48;
    DeviceRGB = [v46 colorSpace];
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    sub_10003A370(&_swiftEmptyArrayStorage);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_10004957C(&qword_10006E500, type metadata accessor for CIImageRepresentationOption, &unk_100050504);
    isa = sub_10004D00C().super.isa;

    v67[0] = 0;
    v56 = v19;
    v52 = [v19 writeJPEGRepresentationOfImage:v46 toURL:v49 colorSpace:DeviceRGB options:isa error:v67];

    v53 = v65;
    if (v52)
    {
      v54 = v67[0];

      goto LABEL_15;
    }

    v55 = v67[0];
    sub_10004CC6C();

    swift_willThrow();
    sub_100017C6C(v22, v24);

    v25 = v63;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v27 = v59;
    v28 = v61;
    v29 = v62;
    v30 = v64;
    if (Strong)
    {
      v31 = v58;
      (*(v58 + 16))(v53, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger, v59);

      (v25[2])(v29, v57, v30);
      swift_errorRetain();
      v32 = v25;
      v33 = sub_10004CEDC();
      v34 = sub_10004D37C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v66 = v63;
        *v35 = 136315394;
        sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        LODWORD(v57) = v34;
        v37 = sub_10004D73C();
        v39 = v38;
        (v32[1])(v29, v30);
        v40 = sub_10000C618(v37, v39, &v66);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2112;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v41;
        *v36 = v41;
        _os_log_impl(&_mh_execute_header, v33, v57, "#SnapshotManager: error saving to path %s: %@", v35, 0x16u);
        sub_100024DC8(v36, &qword_1000703F0, &qword_100050B90);

        sub_10000CF40(v63);

        v28 = v61;

        (*(v31 + 8))(v65, v59);
      }

      else
      {

        (v32[1])(v29, v30);
        (*(v31 + 8))(v53, v27);
      }
    }

    if (v28)
    {
      v28(0);
    }
  }

  else
  {
    swift_beginAccess();
    v42 = swift_weakLoadStrong();
    if (!v42)
    {
LABEL_18:

      return;
    }

    (*(v14 + 16))(v18, v42 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger, v13);

    v43 = sub_10004CEDC();
    v44 = sub_10004D37C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "#SnapshotManager: snapshot heicData failed", v45, 2u);
    }

    (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_10004658C(char *a1, float *a2, void (*a3)(void), void *a4)
{
  v150 = a1;
  v148 = sub_10004CF1C();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10004CF6C();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CF2C();
  v141 = *(v10 - 8);
  __chkstk_darwin(v10);
  Strong = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004CD3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = (&v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v130 - v19;
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v153 = &v130 - v23;
  isUniquelyReferenced_nonNull_native = __chkstk_darwin(v22);
  if (*(v4 + 16) != 1)
  {
    if (a3)
    {
      a3(0);
    }

    return 0;
  }

  v137 = v10;
  *&v140 = v26;
  v138 = a4;
  v139 = a3;
  v147 = v4;
  v149 = v14;
  v151 = &v130 - v25;
  if (qword_10006E0C0 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  v152 = isUniquelyReferenced_nonNull_native;
  sub_1000132A8(isUniquelyReferenced_nonNull_native, qword_100073158);
  aBlock = sub_100042A30();
  v155 = v27;
  v162._countAndFlagsBits = 0x636965682ELL;
  v162._object = 0xE500000000000000;
  sub_10004D16C(v162);
  sub_10004CCEC();

  v134 = a2;
  aBlock = sub_100042A30();
  v155 = v28;
  v163._countAndFlagsBits = 0x2E78616D6E696D2DLL;
  v163._object = 0xEB0000000067706ALL;
  sub_10004D16C(v163);
  sub_10004CCEC();

  v29 = objc_allocWithZone(CIImage);
  result = [v29 initWithImage:v150];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v135 = result;
  v31 = sub_1000479A4(result);
  v32 = v137;
  v136 = v33;
  if ((v31 & 1) == 0)
  {
    v70 = v151;
    v69 = v152;
    if (qword_10006E0C8 != -1)
    {
      v129 = v152;
      swift_once();
      v69 = v129;
    }

    sub_1000132A8(v69, qword_100073170);
    aBlock = sub_100042A30();
    v155 = v71;
    v164._countAndFlagsBits = 0x636965682ELL;
    v164._object = 0xE500000000000000;
    sub_10004D16C(v164);
    v72 = v140;
    sub_10004CCEC();

    v73 = v149;
    (*(v149 + 40))(v70, v72, v152);
    aBlock = sub_100042A30();
    v155 = v74;
    v165._countAndFlagsBits = 0x2E78616D6E696D2DLL;
    v165._object = 0xEB0000000067706ALL;
    sub_10004D16C(v165);
    sub_10004CCEC();
    v75 = v152;

    v76 = *(v73 + 8);
    v77 = v153;
    v76(v153, v75);
    (*(v73 + 32))(v77, v72, v75);
    v78 = sub_10004CEDC();
    v79 = sub_10004D37C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v161 = v81;
      *v80 = 136315138;
      swift_beginAccess();
      sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v82 = sub_10004D73C();
      v84 = sub_10000C618(v82, v83, &v161);

      *(v80 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "#SnapshotManager: snapshot didn't pass validation %s", v80, 0xCu);
      sub_10000CF40(v81);
      v70 = v151;
    }

    if (v139)
    {
      v139(0);

      v85 = v152;
      v76(v153, v152);
    }

    else
    {
      v85 = v152;
      v76(v153, v152);
    }

    v76(v70, v85);
    return 0;
  }

  v34 = *(v149 + 16);
  v131 = v20;
  v35 = v140;
  v133 = v17;
  v36 = v152;
  v34();
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v37 = v141;
  (v141[13])(Strong, enum case for DispatchQoS.QoSClass.default(_:), v32);
  v132 = sub_10004D3FC();
  v37[1](Strong, v32);
  v137 = swift_allocObject();
  swift_weakInit();
  v38 = v131;
  v39 = v35;
  v40 = v36;
  (v34)(v131, v39, v36);
  (v34)(v133, v153, v36);
  v41 = v149;
  v42 = *(v149 + 80);
  v43 = (v42 + 32) & ~v42;
  v44 = (v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v42 + v44 + 8) & ~v42;
  v46 = swift_allocObject();
  v17 = v137;
  *(v46 + 16) = v150;
  *(v46 + 24) = v17;
  v47 = *(v41 + 32);
  v47(v46 + v43, v38, v40);
  v48 = v136;
  *(v46 + v44) = v136;
  v47(v46 + v45, v133, v40);
  v49 = (v46 + ((v15 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
  v50 = v139;
  v51 = v138;
  *v49 = v139;
  v49[1] = v51;
  v158 = sub_1000494B4;
  v159 = v46;
  aBlock = _NSConcreteStackBlock;
  v155 = 1107296256;
  v156 = sub_10002FBD0;
  v157 = &unk_100066F80;
  v52 = _Block_copy(&aBlock);
  v15 = v48;
  v141 = v150;

  sub_10002F790(v50, v51);
  v53 = v142;
  sub_10004CF3C();
  v161 = &_swiftEmptyArrayStorage;
  sub_10004957C(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  v54 = v144;
  Strong = v148;
  sub_10004D57C();
  v55 = v132;
  sub_10004D3EC();
  _Block_release(v52);

  (v146[1])(v54, Strong);
  (*(v143 + 8))(v53, v145);
  v56 = *(v149 + 8);
  v149 += 8;
  (v56)(v140, v152);

  v57 = v147;
  v58 = *(v147 + 32);
  os_unfair_lock_lock(v58);
  swift_beginAccess();
  v59 = *(v57 + 24);
  if (!*(v59 + 16))
  {
    goto LABEL_36;
  }

  v60 = sub_100033238(v134);
  if ((v61 & 1) == 0)
  {

LABEL_36:
    os_unfair_lock_unlock(v58);
    goto LABEL_37;
  }

  v20 = *(*(v59 + 56) + 8 * v60);

  os_unfair_lock_unlock(v58);
  if (!v20)
  {
    goto LABEL_37;
  }

  v139 = v56;
  if (v20 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_10004D67C();
    v62 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v62 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = 0;
  v146 = &_swiftEmptyArrayStorage;
  while (v62 != a2)
  {
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (a2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v63 = *(v20 + 8 * a2 + 32);

      v17 = (a2 + 1);
      if (!__OFADD__(a2, 1))
      {
        goto LABEL_15;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v128 = isUniquelyReferenced_nonNull_native;
      swift_once();
      isUniquelyReferenced_nonNull_native = v128;
      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = sub_10004D62C();
    v63 = isUniquelyReferenced_nonNull_native;
    v17 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      goto LABEL_55;
    }

LABEL_15:
    Strong = swift_unknownObjectWeakLoadStrong();
    v64 = *(v63 + 24);

    a2 = (a2 + 1);
    if (Strong)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100048570(0, v146[2] + 1, 1, v146);
        v146 = isUniquelyReferenced_nonNull_native;
      }

      v66 = v146[2];
      v65 = v146[3];
      if (v66 >= v65 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100048570((v65 > 1), v66 + 1, 1, v146);
        v146 = isUniquelyReferenced_nonNull_native;
      }

      v67 = v146;
      v146[2] = v66 + 1;
      v68 = &v67[2 * v66];
      v68[4] = Strong;
      v68[5] = v64;
      a2 = v17;
    }
  }

  v97 = v146;

  v98 = v134;
  sub_1000131F8(v134, &aBlock);
  v99 = sub_10004CEDC();
  v100 = sub_10004D37C();

  sub_100013254(v98);
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v101 = 136315394;
    sub_10000CC1C(&qword_100070EC0, &qword_100051C48);
    v102 = sub_10004D24C();
    v104 = sub_10000C618(v102, v103, &aBlock);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2080;
    v105 = sub_100042698();
    v107 = sub_10000C618(v105, v106, &aBlock);

    *(v101 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v99, v100, "SnapshotManager: observers for %s %s", v101, 0x16u);
    swift_arrayDestroy();
  }

  v56 = v139;
  v109 = v97[2];
  if (v109)
  {
    v138 = v15;
    v110 = *(v134 + 1);
    v145 = *v134;
    v144 = v110;
    v111 = *(v134 + 6);
    v143 = *(v134 + 5);
    v142 = v111;
    v112 = 4;
    *&v108 = 136315138;
    v140 = v108;
    while (1)
    {
      v150 = v109;
      v113 = v97[v112];
      aBlock = 0;
      v155 = 0xE000000000000000;
      v114 = v113;
      v166._countAndFlagsBits = v145;
      v166._object = v144;
      sub_10004D16C(v166);
      v167._countAndFlagsBits = 45;
      v167._object = 0xE100000000000000;
      sub_10004D16C(v167);
      v160 = v143;
      v168._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v168);

      v169._countAndFlagsBits = 45;
      v169._object = 0xE100000000000000;
      sub_10004D16C(v169);
      v160 = v142;
      v170._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v170);

      v171._countAndFlagsBits = 45;
      v171._object = 0xE100000000000000;
      sub_10004D16C(v171);
      sub_10004D2EC();
      v172._countAndFlagsBits = 45;
      v172._object = 0xE100000000000000;
      sub_10004D16C(v172);
      sub_10004D2EC();
      v116 = aBlock;
      v115 = v155;
      v148 = v114;
      v117 = &v114[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v173 = *&v114[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v118 = *&v114[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 40];
      v119 = *(v117 + 6);
      aBlock = 0;
      v155 = 0xE000000000000000;
      sub_10004D16C(v173);
      v174._countAndFlagsBits = 45;
      v174._object = 0xE100000000000000;
      sub_10004D16C(v174);
      v160 = v118;
      v175._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v175);

      v176._countAndFlagsBits = 45;
      v176._object = 0xE100000000000000;
      sub_10004D16C(v176);
      v160 = v119;
      v177._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v177);

      v178._countAndFlagsBits = 45;
      v178._object = 0xE100000000000000;
      sub_10004D16C(v178);
      sub_10004D2EC();
      v179._countAndFlagsBits = 45;
      v179._object = 0xE100000000000000;
      sub_10004D16C(v179);
      sub_10004D2EC();
      if (v116 == aBlock && v115 == v155)
      {
        break;
      }

      v122 = sub_10004D74C();

      v120 = v150;
      v121 = v148;
      if (v122)
      {
        goto LABEL_51;
      }

LABEL_46:

      v112 += 2;
      v109 = v120 - 1;
      v97 = v146;
      if (!v109)
      {

        v15 = v138;
        v56 = v139;
        goto LABEL_37;
      }
    }

    v120 = v150;
    v121 = v148;
LABEL_51:
    v123 = v121;
    v124 = sub_10004CEDC();
    v125 = sub_10004D37C();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      *v126 = v140;
      *(v126 + 4) = sub_10000C618(*&v123[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID], *&v123[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v124, v125, "#%s snapshotReader: update image from observer ", v126, 0xCu);
      sub_10000CF40(v127);
    }

    (*&v123[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock])(v141, 0);
    goto LABEL_46;
  }

LABEL_37:
  v86 = sub_10004CEDC();
  v87 = sub_10004D37C();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v160 = v89;
    *v88 = 136315138;
    v90 = v151;
    swift_beginAccess();
    sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v91 = v152;
    v92 = sub_10004D73C();
    v94 = v56;
    v95 = sub_10000C618(v92, v93, &v160);

    *(v88 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v86, v87, "#SnapshotManager: saved to path %s", v88, 0xCu);
    sub_10000CF40(v89);

    v94(v153, v91);
    v94(v90, v91);
  }

  else
  {

    v96 = v152;
    (v56)(v153, v152);
    (v56)(v151, v96);
  }

  return 1;
}

id sub_1000479A4(void *a1)
{
  v1 = sub_100049E34(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_10004D26C();
  *(v2 + 16) = 8;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = [objc_allocWithZone(CIContext) init];
  [v1 extent];
  result = [v4 render:v1 toBitmap:v2 + 32 rowBytes:32 bounds:kCIFormatRGBAf format:DeviceRGB colorSpace:?];
  v6 = *(v2 + 16);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 == 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == 5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 < 7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 != 7)
  {
    v7 = ((*(v2 + 32) + *(v2 + 36)) + *(v2 + 40)) + *(v2 + 44);
    v8 = ((*(v2 + 48) + *(v2 + 52)) + *(v2 + 56)) + *(v2 + 60);
    v9 = vabds_f32(v7, v8);
    v10 = v9 > 0.01;
    v11 = sub_10004CEDC();
    v12 = sub_10004D37C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109632;
      *(v13 + 4) = v9 > 0.01;
      *(v13 + 8) = 2048;
      *(v13 + 10) = v7;
      *(v13 + 18) = 2048;
      *(v13 + 20) = v8;
      _os_log_impl(&_mh_execute_header, v11, v12, "#SnapshotManager: checkIfValidSnapshot %{BOOL}d v0: %f v1: %f", v13, 0x1Cu);
    }

    return v10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100047BF0()
{

  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotManager(uint64_t a1)
{
  result = qword_100070CE8;
  if (!qword_100070CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100047CE8(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100047DC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100047DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
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

uint64_t sub_100047E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100047E90()
{
  result = qword_100070EB8;
  if (!qword_100070EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EB8);
  }

  return result;
}

char *sub_100047EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070EF0, &qword_100051C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_100048000(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000CC1C(&qword_100070EE0, &qword_100051C60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10000CC1C(&qword_100070EE8, &qword_100051C68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048148(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070CA8, &qword_100051C70);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100048254(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070F08, &unk_100051C90);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100048358(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070F00, &qword_100051C88);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100048464(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070ED0, &qword_100051C58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100048570(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000CC1C(&qword_100070EC8, &qword_100051C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CC1C(&qword_100070EC0, &qword_100051C48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000486A4(uint64_t a1, unint64_t a2)
{
  v2 = sub_10004D20C();
  v6 = sub_100048724(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100048724(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10004D54C();
    if (!v9 || (v10 = v9, v11 = sub_10000CAB4(v9, 0), v12 = sub_10004887C(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10004D13C();

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
      return sub_10004D13C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10004D64C();
LABEL_4:

  return sub_10004D13C();
}

unint64_t sub_10004887C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100048A9C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10004D1CC();
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
          result = sub_10004D64C();
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

    result = sub_100048A9C(v12, a6, a7);
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

    result = sub_10004D19C();
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

unint64_t sub_100048A9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10004D1DC();
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
    v5 = sub_10004D1AC();
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

unsigned __int8 *sub_100048B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100049F6C();

  result = sub_10004D1FC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000486A4(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10004D64C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

BOOL sub_1000490B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_10004D60C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1000491A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_10004D64C();
  }

  result = sub_1000495C4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100049274(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_10004D74C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 2) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_10004D74C() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v6)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  if (a1[8] != *(a2 + 32) || *(a1 + 5) != *(a2 + 40) || *(a1 + 6) != *(a2 + 48) || a1[14] != *(a2 + 56))
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 60) ^ *(a2 + 60) ^ 1;
  return v8 & 1;
}

uint64_t sub_100049350()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049388()
{
  v1 = sub_10004CD3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v9(v0 + v7, v1);
  if (*(v0 + v8))
  {
  }

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

void sub_1000494B4()
{
  v1 = *(sub_10004CD3C() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_100045E60(v7, v8, v0 + v3, v9, v0 + v6, v11, v12);
}

uint64_t sub_100049564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004957C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000495C4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100048A9C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_10004D1BC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100048A9C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100048A9C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_10004D1BC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100049A30@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004CD3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CCDC();
  v8 = sub_10004CCBC();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v7, v4);
  v52[0] = v8;
  v52[1] = v10;
  sub_100018B44();
  v12 = sub_10004D55C();

  v13 = v12[2];
  if (v13 < 4 || v13 > 5)
  {
    v11(a1, v4);

LABEL_18:
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v23 = 0;
    v31 = 0;
    v37 = 0;
    v38 = 0;
LABEL_19:
    *a2 = v34;
    *(a2 + 8) = v35;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v36;
    *(a2 + 36) = 0;
    *(a2 + 40) = v23;
    *(a2 + 48) = v31;
    *(a2 + 56) = v37;
    *(a2 + 60) = v38;
    return result;
  }

  v51 = a1;

  v15 = sub_10004D12C();
  v17 = v16;

  LODWORD(v52[0]) = 0;
  v18 = sub_1000490B0(v15, v17, v52);

  if (!v18)
  {
    goto LABEL_17;
  }

  if (v12[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  v19 = v12[8];
  v20 = v12[9];
  if ((v20 ^ v19) < 0x4000)
  {
    goto LABEL_17;
  }

  v48 = v52[0];
  v21 = v12[11];
  v49 = v12[10];
  v50 = v19;
  result = sub_1000491A8(v19, v20, v49, v21, 10);
  if ((v22 & 0x100) != 0)
  {

    v23 = sub_100048B18(v50, v20, v49, v21, 10);
    v25 = v24;

    if (v25)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_17;
    }

    v23 = result;
  }

  if (v12[2] < 3uLL)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v26 = v12[12];
  v27 = v12[13];
  if ((v27 ^ v26) < 0x4000)
  {
    goto LABEL_17;
  }

  v28 = v12[14];
  v29 = v12[15];
  v49 = v12[13];
  v50 = v26;
  v47 = v28;
  result = sub_1000491A8(v26, v27, v28, v29, 10);
  v46 = 0;
  if ((v30 & 0x100) == 0)
  {
    if ((v30 & 1) == 0)
    {
      v31 = result;
      goto LABEL_20;
    }

LABEL_17:

    result = (v11)(v51, v4);
    goto LABEL_18;
  }

  v31 = sub_100048B18(v50, v49, v47, v29, 10);
  v33 = v32;

  if (v33)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (v13 != 5)
  {
    goto LABEL_24;
  }

  if (v12[2] >= 5uLL)
  {
    v39 = v12[21];
    v49 = v12[22];
    v50 = v39;

    v50 = sub_10004D12C();
    v41 = v40;

    LODWORD(v52[0]) = 0;
    LOBYTE(v41) = sub_1000490B0(v50, v41, v52);

    if (v41)
    {
      v37 = v52[0];
      goto LABEL_25;
    }

LABEL_24:
    v37 = 0;
LABEL_25:
    if (v12[2])
    {
      v38 = v13 != 5;
      v42 = v12[4];
      v49 = v12[5];
      v50 = v42;
      v43 = v12[6];
      v46 = v12[7];
      v47 = v43;

      v34 = sub_10004D12C();
      v35 = v44;

      result = (v11)(v51, v4);
      v36 = v48;
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_100049E34(void *a1)
{
  v2 = [objc_opt_self() areaMinMaxFilter];
  [v2 setInputImage:a1];
  [a1 extent];
  v3 = CGRectGetWidth(v10) * 0.5;
  [a1 extent];
  v4 = v3 - CGRectGetWidth(v11) * 0.25;
  [a1 extent];
  v5 = CGRectGetHeight(v12) * 0.5;
  [a1 extent];
  v6 = v5 - CGRectGetHeight(v13) * 0.25;
  [a1 extent];
  v7 = CGRectGetWidth(v14) * 0.5;
  [a1 extent];
  [v2 setExtent:{v4, v6, v7, CGRectGetHeight(v15) * 0.5}];
  v8 = [v2 outputImage];

  return v8;
}

unint64_t sub_100049F6C()
{
  result = qword_100070ED8;
  if (!qword_100070ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070ED8);
  }

  return result;
}

_BYTE *sub_100049FC0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_10004A040(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      v47 = [objc_allocWithZone(UIColor) initWithRed:0.894117647 green:0.584313725 blue:0.223529412 alpha:1.0];
      v48 = [objc_allocWithZone(UIColor) initWithRed:0.607843137 green:0.270588235 blue:0.17254902 alpha:1.0];
      v49 = [objc_allocWithZone(UIColor) initWithRed:0.615686275 green:0.603921569 blue:0.560784314 alpha:1.0];

      v4 = sub_10004D73C();
      v5 = v50;
      v7 = &_swiftEmptyArrayStorage;
      v51 = &_swiftEmptyArrayStorage;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_26;
      }

      goto LABEL_60;
    }

    v20 = 0;
    v7 = &_swiftEmptyArrayStorage;
    v21 = 3;
    v95 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v20 > 3)
      {
        v21 = v20;
      }

      v22 = -v21;
      v23 = &off_1000657A0 + 2 * v20++;
      if (v22 + v20 == 1)
      {
        break;
      }

      v24 = v23[4];
      v5 = v23[5];
      swift_bridgeObjectRetain_n();
      v97._countAndFlagsBits = sub_10004100C(v24, v5);
      v26 = v25;
      v28 = v27;
      countAndFlagsBits = v97._countAndFlagsBits;
      object = v97._object;
      sub_10004D16C(v97);
      v88 = object;
      v92 = countAndFlagsBits;
      sub_10003EB10(countAndFlagsBits, object, v28, v26);
      v31 = objc_allocWithZone(PREditingLook);
      v32 = sub_10004D05C();

      v33 = sub_10004D05C();

      [v31 initWithIdentifier:v32 displayName:v33];

      sub_100010F08(v92, v88, v28, v26);
      sub_10004D21C();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004D25C();
      }

      v4 = &v95;
      sub_10004D27C();
      v7 = v95;
      v21 = 3;
      if (v20 == 3)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_60:
      v51 = sub_100048148(0, *(v7 + 2) + 1, 1, v7);
LABEL_26:
      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_100048148((v52 > 1), v53 + 1, 1, v51);
      }

      *(v51 + 2) = v53 + 1;
      v54 = &v51[32 * v53];
      *(v54 + 4) = v4;
      *(v54 + 5) = v5;
      *(v54 + 6) = 0;
      v54[56] = 3;
      v55 = sub_10004D73C();
      v57 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100048148(0, *(v51 + 2) + 1, 1, v51);
      }

      v59 = *(v51 + 2);
      v58 = *(v51 + 3);
      if (v59 >= v58 >> 1)
      {
        v51 = sub_100048148((v58 > 1), v59 + 1, 1, v51);
      }

      *(v51 + 2) = v59 + 1;
      v60 = &v51[32 * v59];
      *(v60 + 4) = v55;
      *(v60 + 5) = v57;
      *(v60 + 6) = 0;
      v60[56] = 3;
      v4 = sub_10004D73C();
      v5 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100048148(0, *(v51 + 2) + 1, 1, v51);
      }

      v63 = *(v51 + 2);
      v62 = *(v51 + 3);
      if (v63 >= v62 >> 1)
      {
        v51 = sub_100048148((v62 > 1), v63 + 1, 1, v51);
      }

      *(v51 + 2) = v63 + 1;
      v64 = &v51[32 * v63];
      *(v64 + 4) = v4;
      *(v64 + 5) = v5;
      *(v64 + 6) = 0;
      v64[56] = 3;
      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      v65 = [qword_1000730A8 enableFantasy];
      v66 = *(v51 + 2);
      if (v65)
      {
        v67 = sub_10004D73C();
        v4 = *(v51 + 2);
        v69 = *(v51 + 3);
        v66 = v4 + 1;
        if (v4 >= v69 >> 1)
        {
          v84 = v67;
          v5 = v68;
          v85 = sub_100048148((v69 > 1), v4 + 1, 1, v51);
          v68 = v5;
          v51 = v85;
          v67 = v84;
        }

        *(v51 + 2) = v66;
        v70 = &v51[32 * v4];
        *(v70 + 4) = v67;
        *(v70 + 5) = v68;
        *(v70 + 6) = 0;
        v70[56] = 3;
        v95 = v7;
      }

      else
      {
        v95 = v7;
        if (!v66)
        {
LABEL_55:

          return v7;
        }
      }

      v7 = 0;
      v71 = (v51 + 56);
      v86 = v66;
      v90 = v51;
      while (v7 < *(v51 + 2))
      {
        v94 = v7;
        v72 = *(v71 - 3);
        v73 = *(v71 - 2);
        v74 = *(v71 - 1);
        v5 = *v71;
        if (*v71 > 1u)
        {
          v76 = *(v71 - 3);
          v77 = *(v71 - 2);
          v78 = *(v71 - 1);
          if (v5 == 2)
          {
            v75 = 2;
          }

          else
          {
            v75 = 3;
          }
        }

        else
        {
          v76 = *(v71 - 3);
          v77 = *(v71 - 2);
          v78 = *(v71 - 1);
          v75 = v5 != 0;
        }

        sub_10003E214(v76, v77, v78, v75);
        v99._countAndFlagsBits = v72;
        v99._object = v73;
        sub_10004D16C(v99);
        sub_10003EB10(v72, v73, v74, v5);
        v79 = v74;
        v80 = objc_allocWithZone(PREditingLook);
        v81 = sub_10004D05C();

        v82 = sub_10004D05C();

        [v80 initWithIdentifier:v81 displayName:v82];

        sub_100010F08(v72, v73, v79, v5);
        sub_10004D21C();
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10004D25C();
        }

        v7 = v94 + 1;
        v4 = &v95;
        sub_10004D27C();
        v71 += 32;
        v51 = v90;
        if (v86 == (v94 + 1))
        {
          v7 = v95;
          goto LABEL_55;
        }
      }
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  if (a4)
  {
    v34 = 6;
    v95 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v6 > 6)
      {
        v34 = v6;
      }

      v35 = -v34;
      v36 = &off_100065720 + 2 * v6++;
      if (v35 + v6 == 1)
      {
        goto LABEL_58;
      }

      v37 = v36[4];
      v5 = v36[5];
      swift_bridgeObjectRetain_n();
      v98._countAndFlagsBits = sub_10004100C(v37, v5);
      v39 = v38;
      v41 = v40;
      v42 = v98._countAndFlagsBits;
      v43 = v98._object;
      sub_10004D16C(v98);
      v89 = v43;
      v93 = v42;
      sub_10003EB10(v42, v43, v41, v39);
      v44 = objc_allocWithZone(PREditingLook);
      v45 = sub_10004D05C();

      v46 = sub_10004D05C();

      [v44 initWithIdentifier:v45 displayName:v46];

      sub_100010F08(v93, v89, v41, v39);
      sub_10004D21C();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004D25C();
      }

      v4 = &v95;
      sub_10004D27C();
      v7 = v95;
      v34 = 6;
      if (v6 == 6)
      {
        goto LABEL_42;
      }
    }
  }

  v95 = &_swiftEmptyArrayStorage;
  do
  {
    v8 = (&off_1000657F0 + 2 * v6++ + 5);
    v9 = *(v8 - 1);
    v10 = *v8;
    swift_bridgeObjectRetain_n();
    v96._countAndFlagsBits = sub_10004100C(v9, v10);
    v12 = v11;
    v14 = v13;
    v15 = v96._countAndFlagsBits;
    v16 = v96._object;
    sub_10004D16C(v96);
    v87 = v16;
    v91 = v15;
    sub_10003EB10(v15, v16, v14, v12);
    v17 = objc_allocWithZone(PREditingLook);
    v18 = sub_10004D05C();

    v19 = sub_10004D05C();

    [v17 initWithIdentifier:v18 displayName:v19];

    sub_100010F08(v91, v87, v14, v12);
    sub_10004D21C();
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10004D25C();
    }

    sub_10004D27C();
    v7 = v95;
  }

  while (v6 != 2);
LABEL_42:
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10004ACBC(uint64_t a1, void *a2)
{

  result = sub_10004100C(a1, a2);
  if (!v2 && v8 == 3)
  {
    v9 = result;
    v10 = v6;
    v11 = v7;
    v12 = sub_10003F3A8(result, v6, v7, 3);
    v15 = sub_10004A040(v12, v13, v14, 3u);
    if (v15 >> 62)
    {
      v16 = sub_10004D67C();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16 >= v12)
    {
      return v9;
    }

    if (qword_10006E0A8 != -1)
    {
      swift_once();
    }

    v17 = [qword_1000730A8 customGlitterVariant];
    if (v17)
    {
      v18 = v17;
      sub_10004D08C();

      sub_10004C820();
      v27 = v19;

      v20 = sub_10004D05C();
      sub_10004B21C(v20, v27);

      v24 = sub_10004A040(v21, v22, v23, 3u);
      if (v24 >> 62)
      {
        v25 = sub_10004D67C();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v25, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_10004D73C();
        sub_100010F08(v9, v10, v11, 3u);
        return v26;
      }
    }

    else
    {
      return v9;
    }
  }

  return result;
}

void sub_10004AEDC(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100051CA0;
  v6 = [v2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_10004CAA0();
  isa = sub_10004D22C().super.isa;

  [v4 activateConstraints:isa];
}

double sub_10004B11C()
{
  v1 = v0;
  v2 = [v0 CGColor];
  v3 = sub_10004D33C();

  if (!v3)
  {
    goto LABEL_5;
  }

  if (*(v3 + 16) != 4)
  {

LABEL_5:
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [v1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    v4.f64[0] = v12;
    v5.f64[0] = v10;
    v4.f64[1] = v11;
    v5.f64[1] = v9;
    goto LABEL_6;
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 48);

  v4 = v7;
  v5 = v8;
LABEL_6:
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v4), v5).u64[0];
  return result;
}

id sub_10004B21C(const __CFString *a1, float32x4_t a2)
{
  v2 = CGColorSpaceCreateWithName(a1);
  if (v2)
  {
    v3 = v2;
    v13[0] = vcvtq_f64_f32(*a2.f32);
    v13[1] = vcvt_hight_f64_f32(a2);
    v4 = CGColorCreate(v2, v13);
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(UIColor) initWithCGColor:v4];

      return v6;
    }
  }

  if (qword_10006E0D0 != -1)
  {
    swift_once();
  }

  v8 = sub_10004CEFC();
  sub_1000132A8(v8, qword_100070F10);
  v9 = sub_10004CEDC();
  v10 = sub_10004D38C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "unable to create cgColor in extended linear SRGB", v11, 2u);
  }

  return [objc_allocWithZone(UIColor) initWithRed:a2.f32[0] green:a2.f32[1] blue:a2.f32[2] alpha:a2.f32[3]];
}

id sub_10004B3BC(double a1)
{
  *v2.i64 = sub_10004B11C();
  v3 = a1;
  v9 = v3;
  v10 = v2;
  v8 = 1.0 - v3;
  *v4.i64 = sub_10004B11C();
  v11 = vaddq_f32(vmulq_n_f32(v10, v8), vmulq_n_f32(v4, v9));
  v5 = sub_10004D05C();
  v6 = sub_10004B21C(v5, v11);

  return v6;
}

uint64_t sub_10004B44C(__n128 a1)
{
  sub_10000CC1C(&qword_1000703B0, &qword_100051190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000513A0;
  *(v1 + 56) = &type metadata for Float;
  *(v1 + 64) = &protocol witness table for Float;
  *(v1 + 32) = a1.n128_u32[0];
  *(v1 + 96) = &type metadata for Float;
  *(v1 + 104) = &protocol witness table for Float;
  *(v1 + 72) = a1.n128_u32[1];
  *(v1 + 136) = &type metadata for Float;
  *(v1 + 144) = &protocol witness table for Float;
  *(v1 + 112) = a1.n128_u32[2];
  *(v1 + 176) = &type metadata for Float;
  *(v1 + 184) = &protocol witness table for Float;
  *(v1 + 152) = a1.n128_u32[3];

  return sub_10004D0AC();
}

unint64_t *sub_10004B50C(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10004BDDC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_10004CBCC();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_10004CBFC();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_10004CBCC();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_10004CBFC();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_10000CC1C(&qword_1000703B0, &qword_100051190);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000505B0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_10004D0AC();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10004BDDC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_10004B888(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004D0EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D0CC();
  v6 = sub_10004D09C();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_10004CC0C();
    swift_allocObject();
    v10 = sub_10004CBDC();
    v15 = 0x1000000000;
    v16 = v10 | 0x4000000000000000;
    sub_10004C9C0(v6, v8);
    sub_10004C2E8(&v15, v6, v8);
    sub_10004CA28(v6, v8);
    v11 = v15;
    v12 = v16;
    v14 = sub_10004B50C(v15, v16);
    sub_10000CC1C(&qword_100070F28, &qword_100051CC0);
    sub_10004CA3C();
    v13 = sub_10004D03C();
    sub_10004CA28(v6, v8);

    sub_100017C6C(v11, v12);
    return v13;
  }

  return result;
}

unsigned __int8 *sub_10004BA64@<X0>(unsigned __int8 *md@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = md;
  v10 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v10)
    {
      data[0] = a3;
      LOWORD(data[1]) = a4;
      BYTE2(data[1]) = BYTE2(a4);
      BYTE3(data[1]) = BYTE3(a4);
      BYTE4(data[1]) = BYTE4(a4);
      BYTE5(data[1]) = BYTE5(a4);
      if (md)
      {
        md = CC_MD5(data, BYTE6(a4), md);
      }

      v11 = 0;
      goto LABEL_20;
    }

    if (a3 >> 32 >= a3)
    {
      v17 = v5;
      v14 = sub_10004CBCC();
      if (!v14)
      {
        goto LABEL_16;
      }

      v16 = sub_10004CBFC();
      if (!__OFSUB__(a3, v16))
      {
        v14 += a3 - v16;
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v10 == 2)
  {
    v17 = v5;
    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v14 = sub_10004CBCC();
    if (v14)
    {
      v15 = sub_10004CBFC();
      if (__OFSUB__(v13, v15))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v14 += v13 - v15;
    }

    if (!__OFSUB__(v12, v13))
    {
LABEL_16:
      sub_10004CBEC();
      md = sub_10004BCA4(v14, v8, a3, a4, data);
      if (!v17)
      {
        v11 = data[0];
LABEL_20:
        *a5 = v11;
        return md;
      }

      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  memset(data, 0, 14);
  md = sub_10004BCA4(data, md, a3, a4, &v18);
  if (!v5)
  {
    v11 = v18;
    goto LABEL_20;
  }

LABEL_25:

  __break(1u);
  return md;
}

unsigned __int8 *sub_10004BCA4@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X4>, unint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  if (!result || !a2)
  {
    goto LABEL_17;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v6)
  {
    LODWORD(v7) = BYTE6(a4);
LABEL_16:
    result = CC_MD5(result, v7, a2);
LABEL_17:
    *a5 = 0;
    return result;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(a3) - a3;
LABEL_12:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v7))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    LODWORD(v7) = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10004BD38()
{
  v0 = sub_10004CEFC();
  sub_10001A538(v0, qword_100070F10);
  sub_1000132A8(v0, qword_100070F10);
  return sub_10004CEEC();
}

char *sub_10004BDBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004BDFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004BDDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004BF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004BDFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070EF0, &qword_100051C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10004BF18(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070F38, &qword_100051CC8);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10004C024(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10004C0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a2 - a1;
  v6 = a2 - a1 + 1;
  v7 = ~(a2 - a1);
  v8 = &_swiftEmptyArrayStorage;
  do
  {
    if (v5 == -1)
    {
      swift_stdlib_random();
      v10 = 0;
    }

    else
    {
      swift_stdlib_random();
      v9 = (0 * v6) >> 64;
      if (v7 % v6)
      {
        do
        {
          swift_stdlib_random();
        }

        while (v7 % v6);
        v9 = (0 * v6) >> 64;
      }

      v10 = v9 + a1;
    }

    v11 = 0;
    v12 = *(v8 + 2);
    while (v12 != v11)
    {
      v13 = &v8[8 * v11++];
      if (*(v13 + 4) == v10)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100048254(0, v12 + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    v12 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v8 = sub_100048254((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v12;
    *&v8[8 * v15 + 32] = v10;
LABEL_4:
    ;
  }

  while (v12 != a3);
  return v8;
}

unsigned __int8 *sub_10004C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_10004CBCC();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_10004CBFC();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_10004CBEC();
  result = sub_10004BA64(&v11[v12], a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unint64_t sub_10004C2E8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_10004C9D4(a2, a3);
      sub_10004C9D4(a2, a3);
      sub_100017C6C(v8, v7);
      *&md = v8;
      WORD4(md) = v7;
      BYTE10(md) = BYTE2(v7);
      BYTE11(md) = BYTE3(v7);
      BYTE12(md) = BYTE4(v7);
      BYTE13(md) = BYTE5(v7);
      BYTE14(md) = BYTE6(v7);
      sub_10004BA64(&md, a2, a3, &v20);
      if (v3)
      {
        v7 = md;
        v10 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100017C6C(a2, a3);
        sub_100017C6C(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v20;
        v16 = md;
        v17 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100017C6C(a2, a3);
        sub_100017C6C(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      return v7;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(v8, v7);
    sub_100017C6C(v8, v7);
    *a1 = xmmword_100051CB0;
    sub_100017C6C(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_10004CBCC() && __OFSUB__(v8, sub_10004CBFC()))
      {
LABEL_23:
        __break(1u);
      }

      sub_10004CC0C();
      swift_allocObject();
      v18 = sub_10004CBBC();

      v14 = v18;
    }

    if (v15 >= v8)
    {
      sub_10004C9D4(a2, a3);

      v7 = sub_10004C234(v8, v8 >> 32, v14, a2, a3);
      sub_100017C6C(a2, a3);

      sub_100017C6C(a2, a3);
      sub_100017C6C(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      return v7;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(v8, v7);
    sub_100017C6C(v8, v7);
    *&md = v8;
    *(&md + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_100051CB0;
    sub_100017C6C(0, 0xC000000000000000);
    sub_10004CD4C();
    v11 = *(&md + 1);
    v7 = *(md + 16);
    v12 = *(md + 24);
    sub_10004C9D4(a2, a3);
    v13 = sub_10004C234(v7, v12, *(&md + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_100017C6C(a2, a3);
    sub_100017C6C(a2, a3);
    sub_100017C6C(a2, a3);
    *a1 = md;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&md + 7) = 0;
    *&md = 0;
    sub_10004BA64(&md, a2, a3, &v20);
    if (!v3)
    {
      return v20;
    }
  }

  return v7;
}

id sub_10004C788()
{
  v0 = vcvtd_n_f64_u64(sub_10004C024(0x20000000000001uLL), 0x35uLL) + 0.0;
  v1 = vcvtd_n_f64_u64(sub_10004C024(0x20000000000001uLL), 0x35uLL) + 0.0;
  v2 = vcvtd_n_f64_u64(sub_10004C024(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = objc_allocWithZone(UIColor);

  return [v3 initWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

uint64_t sub_10004C820()
{
  sub_100018B44();
  v0 = sub_10004D55C();
  if (*(v0 + 16) != 4)
  {
  }

  result = sub_10004D2FC();
  if (*(v0 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    result = sub_10004D2FC();
    if (*(v0 + 16) >= 3uLL)
    {

      result = sub_10004D2FC();
      if (*(v0 + 16) >= 4uLL)
      {

        return sub_10004D2FC();
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10004C9C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10004C9D4(result, a2);
  }

  return result;
}

uint64_t sub_10004C9D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_10004CA28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100017C6C(a1, a2);
  }

  return result;
}

unint64_t sub_10004CA3C()
{
  result = qword_100070F30;
  if (!qword_100070F30)
  {
    sub_10000CD64(&qword_100070F28, &qword_100051CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F30);
  }

  return result;
}

unint64_t sub_10004CAA0()
{
  result = qword_100070F40;
  if (!qword_100070F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070F40);
  }

  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}