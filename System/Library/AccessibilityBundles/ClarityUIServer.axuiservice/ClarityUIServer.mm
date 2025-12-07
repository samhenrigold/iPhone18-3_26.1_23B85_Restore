uint64_t sub_1CA0()
{
  result = sub_E72C();
  qword_188A8 = result;
  unk_188B0 = v1;
  return result;
}

uint64_t sub_1CD0()
{
  result = sub_E72C();
  qword_188C0 = result;
  *algn_188C8 = v1;
  return result;
}

uint64_t sub_1D00()
{
  result = sub_E72C();
  qword_188D8 = result;
  unk_188E0 = v1;
  return result;
}

uint64_t sub_1D30()
{
  result = sub_E72C();
  qword_188F0 = result;
  *algn_188F8 = v1;
  return result;
}

id sub_1D60(uint64_t a1, uint64_t a2)
{
  sub_79E4(&qword_18928, &qword_F2C0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v7 = result;
    v8 = sub_E6FC();
    [v7 beginTransactionWithIdentifier:v8 forService:a2];

    v9 = sub_E7FC();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v10[5] = a2;

    swift_unknownObjectRetain();
    sub_30B0(0, 0, v5, &unk_F3C0, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_E53C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_2008, 0, 0);
}

uint64_t sub_2008()
{
  v129 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = [objc_opt_self() defaultManager];
  *(v0 + 120) = 1;
  v6 = (v0 + 120);
  v7 = sub_E82C();
  v8 = *(v4 + 16);
  v8(v2, v7, v3);
  v9 = sub_E81C();
  v125 = v8;
  v8(v1, v9, v3);
  sub_E51C();
  v10 = sub_E6FC();

  v124 = v5;
  LODWORD(v2) = [v5 fileExistsAtPath:v10 isDirectory:v0 + 120];

  if (v2)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v11 = sub_E55C();
    sub_7A2C(v11, qword_198C0);
    v12 = sub_E54C();
    v13 = sub_E86C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Found Legacy App icons directory. Removing.", v14, 2u);
    }

    sub_E4FC(v15);
    v17 = v16;
    *(v0 + 40) = 0;
    v18 = [v5 removeItemAtURL:v16 error:v0 + 40];

    v19 = *(v0 + 40);
    if (v18)
    {
      v20 = v19;
      v6 = (v0 + 120);
    }

    else
    {
      v21 = v19;
      sub_E4CC();

      swift_willThrow();
      v22 = sub_E54C();
      v23 = sub_E84C();
      v6 = (v0 + 120);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "Legacy App icons directory could not be deleted", v24, 2u);
      }
    }
  }

  sub_E51C();
  v25 = sub_E6FC();

  v26 = [v5 fileExistsAtPath:v25 isDirectory:v6];

  if (!v26)
  {
    goto LABEL_54;
  }

  v27 = *v6;
  if ((v27 & 1) == 0)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v40 = sub_E55C();
    sub_7A2C(v40, qword_198C0);
    v41 = sub_E54C();
    v42 = sub_E84C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "App icons directory was not a directory. Removing.", v43, 2u);
    }

    sub_E4FC(v44);
    v46 = v45;
    *(v0 + 16) = 0;
    v47 = [v5 removeItemAtURL:v45 error:v6 - 104];

    v48 = *(v0 + 16);
    if (v47)
    {
      v49 = v48;
      goto LABEL_54;
    }

    v93 = v48;
    sub_E4CC();

    swift_willThrow();
    swift_errorRetain();
    v94 = sub_E54C();
    v95 = sub_E84C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      swift_errorRetain();
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 4) = v98;
      *v97 = v98;
      v99 = "Unable to remove file at location of app icons directory: %@";
LABEL_50:
      _os_log_impl(&dword_0, v94, v95, v99, v96, 0xCu);
      sub_91CC(v97, &qword_18930, &qword_F2C8);

      goto LABEL_54;
    }

LABEL_51:

    goto LABEL_54;
  }

  v28 = v6 - 96;
  v29 = *(v0 + 48);
  v30 = *(v29 + 16);
  v31 = &_swiftEmptyArrayStorage;
  if (v30)
  {
    v120 = v6 - 96;
    v122 = v6;
    v32 = *(v0 + 72);
    sub_6738(0, v30, 0);
    v31 = &_swiftEmptyArrayStorage;
    v126 = objc_opt_self();
    v33 = v29 + 40;
    do
    {

      v34 = sub_E6FC();
      v35 = [v126 urlForBundleIdentifier:v34];

      sub_E50C();

      v128[0] = v31;
      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        sub_6738((v36 > 1), v37 + 1, 1);
        v31 = v128[0];
      }

      v38 = *(v0 + 96);
      v39 = *(v0 + 64);
      v31[2] = v37 + 1;
      (*(v32 + 32))(v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v37, v38, v39);
      v33 += 16;
      --v30;
    }

    while (v30);
    v28 = v120;
    v6 = v122;
  }

  sub_E4FC(v27);
  v51 = v50;
  type metadata accessor for URLResourceKey(0);
  isa = sub_E78C().super.isa;
  *(v0 + 24) = 0;
  v53 = [v124 contentsOfDirectoryAtURL:v51 includingPropertiesForKeys:isa options:0 error:v28];

  v54 = *(v0 + 24);
  if (!v53)
  {
    v100 = v54;

    sub_E4CC();

    swift_willThrow();
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v101 = sub_E55C();
    sub_7A2C(v101, qword_198C0);
    swift_errorRetain();
    v94 = sub_E54C();
    v95 = sub_E84C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      swift_errorRetain();
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 4) = v102;
      *v97 = v102;
      v99 = "Unable to list files in ClarityBoard app icons directory: %@";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v55 = *(v0 + 112);
  v56 = sub_E79C();
  v57 = v54;

  v58 = swift_task_alloc();
  *(v58 + 16) = v55;
  v59 = sub_2DB4(sub_945C, v58, v56);

  v121 = v59[2];
  if (v121)
  {
    v60 = 0;
    v117 = v6 - 88;
    v61 = *(v0 + 72);
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v118 = v31 + v62;
    v119 = v59 + v62;
    v63 = *(v61 + 72);
    v123 = (v61 + 8);
    do
    {
      v127 = v60 + 1;
      v125(*(v0 + 88), &v119[v60 * v63], *(v0 + 64));
      v64 = v31[2] + 1;
      v65 = v118;
      while (--v64)
      {
        sub_947C(&qword_189C8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v65 += v63;
        if (sub_E6EC())
        {
          (*v123)(*(v0 + 88), *(v0 + 64));
          goto LABEL_29;
        }
      }

      if (qword_18900 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 80);
      v67 = *(v0 + 88);
      v68 = *(v0 + 64);
      v69 = sub_E55C();
      sub_7A2C(v69, qword_198C0);
      v125(v66, v67, v68);
      v70 = sub_E54C();
      v71 = sub_E86C();
      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 80);
      v74 = *(v0 + 64);
      if (v72)
      {
        buf = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v128[0] = v116;
        *buf = 136315138;
        sub_947C(&qword_189D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v114 = v71;
        v75 = sub_E94C();
        v77 = v76;
        v78 = v74;
        v79 = *v123;
        (*v123)(v73, v78);
        v80 = sub_C568(v75, v77, v128);

        *(buf + 4) = v80;
        _os_log_impl(&dword_0, v70, v114, "Removing unused app icon file: %s", buf, 0xCu);
        sub_7AC8(v116);
      }

      else
      {

        v82 = v74;
        v79 = *v123;
        (*v123)(v73, v82);
      }

      sub_E4FC(v81);
      v84 = v83;
      *(v0 + 32) = 0;
      v85 = [v124 removeItemAtURL:v83 error:v117];

      v86 = *(v0 + 32);
      if (!v85)
      {
        v87 = v86;
        sub_E4CC();

        swift_willThrow();
        swift_errorRetain();
        v88 = sub_E54C();
        v89 = sub_E84C();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 138412290;
          swift_errorRetain();
          v92 = _swift_stdlib_bridgeErrorToNSError();
          *(v90 + 4) = v92;
          *v91 = v92;
          _os_log_impl(&dword_0, v88, v89, "Unable to remove file: %@", v90, 0xCu);
          sub_91CC(v91, &qword_18930, &qword_F2C8);
        }

        else
        {
        }
      }

      v79(*(v0 + 88), *(v0 + 64));
LABEL_29:
      v60 = v127;
    }

    while (v127 != v121);
  }

  else
  {
  }

LABEL_54:
  v103 = [objc_opt_self() sharedServiceManager];
  if (!v103)
  {
    __break(1u);
  }

  v104 = v103;
  v106 = *(v0 + 104);
  v105 = *(v0 + 112);
  v107 = *(v0 + 72);
  v109 = *(v0 + 56);
  v108 = *(v0 + 64);
  v110 = sub_E6FC();
  [v104 endTransactionWithIdentifier:v110 forService:v109];

  v111 = *(v107 + 8);
  v111(v106, v108);
  v111(v105, v108);

  v112 = *(v0 + 8);

  return v112();
}

unint64_t *sub_2DB4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_E53C();
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_6738(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_6738((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2F70()
{
  v0 = sub_E4DC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = sub_E4EC();
  v6[1] = v4;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_94C4();
  sub_E52C();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_30B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_79E4(&qword_18928, &qword_F2C0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_9240(a3, v24 - v9, &qword_18928, &qword_F2C0);
  v11 = sub_E7FC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_91CC(v10, &qword_18928, &qword_F2C0);
  }

  else
  {
    sub_E7EC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_E7BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_E74C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_91CC(a3, &qword_18928, &qword_F2C0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_91CC(a3, &qword_18928, &qword_F2C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_33B0(void *a1, void (*a2)(void, void), uint64_t a3, void (*a4)(void, void), NSObject *a5)
{
  sub_79E4(&qword_18928, &qword_F2C0);
  __chkstk_darwin();
  v11 = &v63 - v10;
  if (a1)
  {
    v12 = a1;
    v13 = [v12 responseDictionary];
    if (v13)
    {
      v14 = v13;
      v15 = sub_E6CC();

      v66 = 1635017060;
      v67 = 0xE400000000000000;
      sub_E8BC();
      if (*(v15 + 16) && (v16 = sub_CB10(&v68), (v17 & 1) != 0))
      {
        sub_7B68(*(v15 + 56) + 32 * v16, &v70);
        sub_7B14(&v68);
        sub_79E4(&qword_18938, &qword_F2D0);
        if (swift_dynamicCast())
        {
          v65 = v12;
          a2 = a4;
          v18 = a5;
          v19 = a3;
          a4 = v66;
          v20 = objc_opt_self();
          v21 = [v20 sharedServiceManager];
          if (!v21)
          {
            goto LABEL_37;
          }

          v22 = v21;

          v23 = sub_E6FC();
          [v22 beginTransactionWithIdentifier:v23 forService:v19];

          a3 = v19;
          v24 = sub_E7FC();
          (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
          v25 = swift_allocObject();
          v25[2] = 0;
          v25[3] = 0;
          v25[4] = v19;
          v25[5] = a4;
          v25[6] = a2;
          v25[7] = v18;
          swift_unknownObjectRetain();

          sub_30B0(0, 0, v11, &unk_F2E0, v25);

          v26 = [v20 sharedServiceManager];
          if (!v26)
          {
            __break(1u);
            goto LABEL_9;
          }

LABEL_35:
          v61 = v26;
          v62 = sub_E6FC();
          [v61 endTransactionWithIdentifier:v62 forService:a3];

          return;
        }
      }

      else
      {
        sub_7B14(&v68);
      }

      if (qword_18900 != -1)
      {
        swift_once();
      }

      v33 = sub_E55C();
      sub_7A2C(v33, qword_198C0);

      v34 = sub_E54C();
      v35 = sub_E85C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v64 = a3;
        v65 = a5;
        v37 = v36;
        v38 = v12;
        v39 = a4;
        v40 = swift_slowAlloc();
        v68 = v40;
        *v37 = 136315138;
        v41 = sub_E6DC();
        v43 = v42;

        v44 = sub_C568(v41, v43, &v68);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_0, v34, v35, "Unexpected format for app icon response dictionary: %s.", v37, 0xCu);
        sub_7AC8(v40);
        a4 = v39;
        v12 = v38;

        a3 = v64;

        goto LABEL_26;
      }
    }

    else
    {
      if (qword_18900 != -1)
      {
        swift_once();
      }

      v45 = sub_E55C();
      sub_7A2C(v45, qword_198C0);
      v46 = sub_E54C();
      v47 = sub_E84C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "Requested app icons, but received no response dictionary.", v48, 2u);
      }

      sub_79E4(&qword_18918, &qword_F2B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F290;
      v68 = sub_E72C();
      v69 = v50;
      sub_E8BC();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      v51 = sub_6C4C(inited);
      swift_setDeallocating();
      sub_91CC(inited + 32, &qword_18920, &qword_F2B8);
      v34 = a5;
      a4(v51, 0);

      v26 = [objc_opt_self() sharedServiceManager];
      if (v26)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

LABEL_26:

    sub_79E4(&qword_18918, &qword_F2B0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_F290;
    v68 = sub_E72C();
    v69 = v53;
    sub_E8BC();
    *(v52 + 96) = &type metadata for Bool;
    *(v52 + 72) = 0;
    v54 = sub_6C4C(v52);
    swift_setDeallocating();
    sub_91CC(v52 + 32, &qword_18920, &qword_F2B8);
    a4(v54, 0);

    v26 = [objc_opt_self() sharedServiceManager];
    if (!v26)
    {
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_9:
  if (!a2)
  {
LABEL_28:
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v55 = sub_E55C();
    sub_7A2C(v55, qword_198C0);
    v28 = sub_E54C();
    v56 = sub_E84C();
    if (os_log_type_enabled(v28, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v28, v56, "Requested app icons, but received neither result nor error.", v57, 2u);
    }

    goto LABEL_32;
  }

  swift_errorRetain();
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v27 = sub_E55C();
  sub_7A2C(v27, qword_198C0);
  swift_errorRetain();
  v28 = sub_E54C();
  v29 = sub_E84C();

  if (!os_log_type_enabled(v28, v29))
  {

    goto LABEL_34;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  *v30 = 138412290;
  swift_errorRetain();
  v32 = _swift_stdlib_bridgeErrorToNSError();
  *(v30 + 4) = v32;
  *v31 = v32;
  _os_log_impl(&dword_0, v28, v29, "Error requesting app icons: %@", v30, 0xCu);
  sub_91CC(v31, &qword_18930, &qword_F2C8);

LABEL_32:

LABEL_34:
  sub_79E4(&qword_18918, &qword_F2B0);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_F290;
  v68 = sub_E72C();
  v69 = v59;
  sub_E8BC();
  *(v58 + 96) = &type metadata for Bool;
  *(v58 + 72) = 1;
  v60 = sub_6C4C(v58);
  swift_setDeallocating();
  sub_91CC(v58 + 32, &qword_18920, &qword_F2B8);
  a4(v60, 0);

  v26 = [objc_opt_self() sharedServiceManager];
  if (v26)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_3DBC, 0, 0);
}

uint64_t sub_3DBC()
{
  v1 = sub_79E4(&qword_18940, &qword_F300);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_79E4(&qword_18948, &qword_F318);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_3EDC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &unk_F310, v2, v1);
}

uint64_t sub_3EDC()
{

  return _swift_task_switch(sub_3FF4, 0, 0);
}

id sub_3FF4()
{
  v1 = v0[5];
  sub_40F4(v0[2]);
  v1();

  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v3 = result;
    v4 = v0[3];

    v5 = sub_E6FC();
    [v3 endTransactionWithIdentifier:v5 forService:v4];

    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_40F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_79E4(&qword_18950, &qword_F320);
    v2 = sub_E92C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_7B68(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_7E8C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_7E8C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_7E8C(v31, v32);
    result = sub_E89C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_7E8C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_43BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_4448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v5 = sub_79E4(&qword_18958, &qword_F328);
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  sub_79E4(&qword_18928, &qword_F2C0);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_455C, 0, 0);
}

uint64_t sub_455C()
{
  v1 = *(v0 + 240);
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = **(v0 + 232);
    v3 = (v1 + 32);
    v4 = sub_E7FC();
    v5 = *(v4 - 8);
    v25 = *(v5 + 56);
    v23 = v4;
    v24 = (v5 + 48);
    v22 = (v5 + 8);
    do
    {
      v27 = v3;
      v28 = v2;
      v8 = *(v0 + 280);
      v7 = *(v0 + 288);
      v9 = *(v0 + 248);
      v10 = *v3;
      v25(v7, 1, 1, v4);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v9;
      v11[5] = v10;
      sub_9240(v7, v8, &qword_18928, &qword_F2C0);
      LODWORD(v8) = (*v24)(v8, 1, v4);

      swift_unknownObjectRetain();
      v13 = *(v0 + 280);
      if (v8 == 1)
      {
        sub_91CC(*(v0 + 280), &qword_18928, &qword_F2C0);
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_E7EC();
        (*v22)(v13, v4);
        if (*v12)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_E7BC();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_9:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_F340;
      *(v17 + 24) = v11;

      sub_79E4(&qword_18940, &qword_F300);
      v18 = v15 | v14;
      if (v15 | v14)
      {
        v18 = v0 + 144;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = v14;
        *(v0 + 168) = v15;
      }

      v6 = *(v0 + 288);
      *(v0 + 176) = 1;
      *(v0 + 184) = v18;
      *(v0 + 192) = v26;
      swift_task_create();

      sub_91CC(v6, &qword_18928, &qword_F2C0);
      v3 = v27 + 1;
      v2 = v28 - 1;
      v4 = v23;
    }

    while (v28 != 1);
  }

  sub_79E4(&qword_18940, &qword_F300);
  sub_E7CC();
  *(v0 + 296) = &_swiftEmptyArrayStorage;
  *(v0 + 217) = 0;
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  v19[1] = sub_48EC;
  v20 = *(v0 + 256);

  return TaskGroup.Iterator.next(isolation:)(v0 + 200, 0, 0, v20);
}

uint64_t sub_48EC()
{

  return _swift_task_switch(sub_49E8, 0, 0);
}

uint64_t sub_49E8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  if (v1 == 1)
  {
    v5 = *(v0 + 217);
    v6 = *(v0 + 296);
    v7 = *(v0 + 224);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_79E4(&qword_18960, &qword_F350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2A0;
    *(inited + 32) = sub_E72C();
    *(inited + 40) = v9;
    *(inited + 72) = sub_79E4(&qword_18968, &qword_F358);
    *(inited + 48) = v6;
    *(inited + 80) = sub_E72C();
    *(inited + 88) = v10;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v5;
    v11 = sub_8134(inited);
    swift_setDeallocating();
    sub_79E4(&qword_18970, &qword_F360);
    swift_arrayDestroy();
    *v7 = v11;

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v3 = *(v0 + 216);
    if (v1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 296);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_660C(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_660C((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[16 * v16];
      *(v17 + 4) = v2;
      *(v17 + 5) = v1;
    }

    else
    {
      v4 = *(v0 + 296);
    }

    v18 = *(v0 + 217) | v3;
    *(v0 + 296) = v4;
    *(v0 + 217) = v18 & 1;
    v19 = swift_task_alloc();
    *(v0 + 304) = v19;
    *v19 = v0;
    v19[1] = sub_48EC;
    v20 = *(v0 + 256);

    return TaskGroup.Iterator.next(isolation:)(v0 + 200, 0, 0, v20);
  }
}

uint64_t sub_4C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_4D20;

  return sub_4E4C(a5, a4);
}

uint64_t sub_4D20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;

  return _swift_task_switch(sub_4E24, 0, 0);
}

uint64_t sub_4E24()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_4E4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_79E4(&qword_18988, &qword_F380);
  v2[4] = swift_task_alloc();
  v3 = sub_E53C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_4F44, 0, 0);
}

uint64_t sub_4F44()
{
  v1 = v0[4];
  sub_52A0(v0[2], v1);
  v2 = sub_79E4(&qword_18990, &qword_F388);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_91CC(v0[4], &qword_18988, &qword_F380);

    v3 = v0[1];

    return v3(0, 0, 0);
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = (v0[4] + *(v2 + 48));
    v8 = *v7;
    v0[8] = *v7;
    v9 = v7[1];
    v0[9] = v9;
    (*(v6 + 32))(v5);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_50DC;
    v11 = v0[7];

    return sub_8390(v11, v8, v9);
  }
}

uint64_t sub_50DC(__int16 a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_51DC, 0, 0);
}

uint64_t sub_51DC()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 64);
  }

  else
  {

    v3 = 0;
    v2 = 0;
  }

  v4 = HIBYTE(*(v0 + 88)) & 1;

  v5 = *(v0 + 8);

  return v5(v3, v2, v4);
}

uint64_t sub_52A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_79E4(&qword_189B8, &qword_F3B0);
  __chkstk_darwin();
  v5 = &v69 - v4;
  v6 = sub_E53C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

  v10 = sub_CB54(0x7475626972747461, 0xEA00000000007365);
  if ((v11 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_7B68(*(a1 + 56) + 32 * v10, v76);
  sub_79E4(&qword_18948, &qword_F318);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v12 = v75[0];
  if (!*(v75[0] + 16))
  {
    goto LABEL_39;
  }

  v13 = sub_CB54(0xD000000000000012, 0x8000000000010F70);
  if ((v14 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_7B68(*(v12 + 56) + 32 * v13, v76);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v15 = v75[0];
  if (!*(v75[0] + 16))
  {
    goto LABEL_39;
  }

  v16 = sub_CB54(7565161, 0xE300000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_7B68(*(v15 + 56) + 32 * v16, v76);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v52 = sub_E55C();
    sub_7A2C(v52, qword_198C0);

    v53 = sub_E54C();
    v54 = sub_E85C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v76[0] = v56;
      *v55 = 136315138;
      v57 = sub_E6DC();
      v59 = sub_C568(v57, v58, v76);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_0, v53, v54, "Unexpected format for app icon dictionary: %s", v55, 0xCu);
      sub_7AC8(v56);
    }

    goto LABEL_45;
  }

  v18 = v75[0];
  if (!*(v75[0] + 16))
  {
    goto LABEL_39;
  }

  v19 = sub_CB54(0x6449656C646E7562, 0xE800000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_7B68(*(v18 + 56) + 32 * v19, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v21 = v75[1];
  if (!*(v18 + 16) || (v74 = v75[0], v22 = sub_CB54(0x6B726F77747261, 0xE700000000000000), (v23 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_7B68(*(v18 + 56) + 32 * v22, v76);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  v72 = v75[0];
  if (qword_188D0 != -1)
  {
    swift_once();
  }

  if (qword_188D8 == v74 && unk_188E0 == v21 || (sub_E95C() & 1) != 0)
  {

    if (qword_188A0 != -1)
    {
      swift_once();
    }

    v24 = &qword_188A8;
LABEL_24:
    v25 = *v24;
    v73 = v24[1];
    v74 = v25;

    goto LABEL_25;
  }

  v73 = v21;
  if (qword_188E8 != -1)
  {
    swift_once();
  }

  if (qword_188F0 == v74 && *algn_188F8 == v73 || (sub_E95C() & 1) != 0)
  {

    if (qword_188B8 != -1)
    {
      swift_once();
    }

    v24 = &qword_188C0;
    goto LABEL_24;
  }

LABEL_25:
  v26 = v72;
  sub_40F4(v72);
  v27 = objc_allocWithZone(AMSMediaArtwork);
  isa = sub_E6BC().super.isa;

  v29 = [v27 initWithDictionary:isa];

  v71 = v29;
  [v29 artworkSize];
  v31 = v30;
  v33 = v32;
  [objc_opt_self() size];
  v78.width = v34;
  v78.height = v35;
  v77.width = v31;
  v77.height = v33;
  if (!CGSizeEqualToSize(v77, v78))
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v36 = sub_E55C();
    sub_7A2C(v36, qword_198C0);

    v37 = sub_E54C();
    v38 = sub_E85C();

    v70 = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75[0] = v69;
      *v39 = 136315394;
      *(v39 + 4) = sub_C568(v74, v73, v75);
      *(v39 + 12) = 2080;
      *v76 = v31;
      *&v76[1] = v33;
      type metadata accessor for CGSize(0);
      v40 = sub_E73C();
      v42 = sub_C568(v40, v41, v75);

      *(v39 + 14) = v42;
      _os_log_impl(&dword_0, v37, v70, "App icon for %s had unexpected size: %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    v26 = v72;
  }

  if (!*(v26 + 16) || (v43 = sub_CB54(7107189, 0xE300000000000000), (v44 & 1) == 0))
  {

LABEL_49:
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v62 = sub_E55C();
    sub_7A2C(v62, qword_198C0);
    v63 = v73;

    v46 = sub_E54C();
    v47 = sub_E85C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76[0] = v49;
      *v48 = 136315138;
      v64 = sub_C568(v74, v63, v76);

      *(v48 + 4) = v64;
      v51 = "Unable to get template URL for artwork: %s";
      goto LABEL_53;
    }

LABEL_54:

    goto LABEL_55;
  }

  sub_7B68(*(v72 + 56) + 32 * v43, v76);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  sub_9184(0, &qword_189C0, AMSMediaArtwork_ptr);
  sub_E72C();
  sub_E87C();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_91CC(v5, &qword_189B8, &qword_F3B0);
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v45 = sub_E55C();
    sub_7A2C(v45, qword_198C0);

    v46 = sub_E54C();
    v47 = sub_E85C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76[0] = v49;
      *v48 = 136315138;
      v50 = sub_C568(v74, v73, v76);

      *(v48 + 4) = v50;
      v51 = "Unable to get artwork URL for app: %s";
LABEL_53:
      _os_log_impl(&dword_0, v46, v47, v51, v48, 0xCu);
      sub_7AC8(v49);

LABEL_55:

LABEL_45:
      v60 = sub_79E4(&qword_18990, &qword_F388);
      return (*(*(v60 - 8) + 56))(a2, 1, 1, v60);
    }

    goto LABEL_54;
  }

  v65 = *(v7 + 32);
  v65(v9, v5, v6);
  v66 = sub_79E4(&qword_18990, &qword_F388);
  v67 = &a2[*(v66 + 48)];
  v65(a2, v9, v6);
  v68 = v73;
  *v67 = v74;
  *(v67 + 1) = v68;
  return (*(*(v66 - 8) + 56))(a2, 0, 1, v66);
}

uint64_t sub_5E98(uint64_t a1, id *a2)
{
  result = sub_E70C();
  *a2 = 0;
  return result;
}

uint64_t sub_5F10(uint64_t a1, id *a2)
{
  v3 = sub_E71C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_5F90@<X0>(uint64_t *a2@<X8>)
{
  sub_E72C();
  v3 = sub_E6FC();

  *a2 = v3;
  return result;
}

uint64_t sub_5FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E72C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_6004(uint64_t a1)
{
  v2 = sub_947C(&qword_18AB0, type metadata accessor for URLResourceKey, &unk_F818);
  v3 = sub_947C(&qword_18AB8, type metadata accessor for URLResourceKey, &unk_F7B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_60C0(uint64_t a1)
{
  v2 = sub_947C(&qword_189A8, type metadata accessor for FileAttributeKey, &unk_F8A8);
  v3 = sub_947C(&unk_18AD0, type metadata accessor for FileAttributeKey, &unk_F54C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_617C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_E6FC();

  *a2 = v3;
  return result;
}

uint64_t sub_61C4(uint64_t a1)
{
  v2 = sub_947C(&qword_18AC0, type metadata accessor for FileProtectionType, &unk_F6C0);
  v3 = sub_947C(&qword_18AC8, type metadata accessor for FileProtectionType, &unk_F660);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_628C()
{
  sub_E72C();
  v0 = sub_E77C();

  return v0;
}

uint64_t sub_62C8(uint64_t a1)
{
  sub_E72C();
  sub_E75C();
}

Swift::Int sub_631C(uint64_t a1)
{
  sub_E72C();
  sub_E9AC();
  sub_E75C();
  v1 = sub_E9CC();

  return v1;
}

uint64_t sub_6394(void *a1, uint64_t *a2)
{
  v2 = sub_E72C();
  v4 = v3;
  if (v2 == sub_E72C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_E95C();
  }

  return v7 & 1;
}

uint64_t sub_641C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_6514;

  return v6(a1);
}

uint64_t sub_6514()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_660C(char *result, int64_t a2, char a3, char *a4)
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
    sub_79E4(&qword_18978, &qword_F368);
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

char *sub_6718(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6758(char *result, int64_t a2, char a3, char *a4)
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
    sub_79E4(&qword_18978, &qword_F368);
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

void *sub_6864(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_79E4(&qword_189E0, &qword_F3C8);
  v10 = *(sub_E53C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_E53C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_6A3C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_6B30;

  return v5(v2 + 16);
}

uint64_t sub_6B30()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v3;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_6C4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_18950, &qword_F320);
    v3 = sub_E92C();
    v4 = a1 + 32;

    while (1)
    {
      sub_9240(v4, v13, &qword_18920, &qword_F2B8);
      result = sub_CB10(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_7E8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_6D88(NSObject *p_aBlock, uint64_t a2, const void *a3)
{
  v65 = a2;
  v68 = sub_E53C();
  v5 = *(v68 - 1);
  __chkstk_darwin();
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = swift_allocObject();
  *(v64 + 16) = a3;
  isa = p_aBlock[2].isa;
  v63 = a3;
  _Block_copy(a3);
  v9 = &_swiftEmptyArrayStorage;
  if (!isa)
  {
    goto LABEL_14;
  }

  v10 = 0;
  v67 = (v5 + 8);
  v11 = p_aBlock + 5;
  v62 = p_aBlock + 5;
  do
  {
    v66 = v9;
    v12 = &v11[2 * v10];
    v9 = v10;
    while (1)
    {
      if (v9 >= isa)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        swift_once();
LABEL_17:
        v27 = sub_E55C();
        sub_7A2C(v27, qword_198C0);

        p_aBlock = sub_E54C();
        v28 = sub_E86C();

        if (os_log_type_enabled(p_aBlock, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          aBlock = v30;
          *v29 = 136315138;
          v31 = sub_E7AC();
          v33 = sub_C568(v31, v32, &aBlock);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_0, p_aBlock, v28, "Downloading missing app icons: %s", v29, 0xCu);
          sub_7AC8(v30);
        }

        v34 = objc_opt_self();
        v35 = [v34 bagSubProfile];
        if (!v35)
        {
          goto LABEL_51;
        }

        p_aBlock = v35;
        v36 = [v34 bagSubProfileVersion];
        if (!v36)
        {
LABEL_52:
          _Block_release(v63);

          __break(1u);
          return;
        }

        v37 = v36;
        v38 = [objc_opt_self() bagForProfile:p_aBlock profileVersion:v36];

        v39 = objc_allocWithZone(AMSMediaTask);
        v40 = sub_E6FC();
        v41 = sub_E6FC();
        v68 = [v39 initWithType:0 clientIdentifier:v40 clientVersion:v41 bag:v38];

        aBlock = &_swiftEmptyArrayStorage;
        sub_6718(0, v12, 0);
        v66 = v9;
        v42 = (v9 + 5);
        v43 = aBlock;
        while (1)
        {
          v45 = *(v42 - 1);
          v44 = *v42;
          v46 = qword_188A0;

          if (v46 != -1)
          {
            swift_once();
          }

          v47 = qword_188A8 == v45 && unk_188B0 == v44;
          if (v47 || (sub_E95C() & 1) != 0)
          {
            v48 = &qword_188D8;
            if (qword_188D0 != -1)
            {
              swift_once();
              v48 = &qword_188D8;
            }
          }

          else
          {
            if (qword_188B8 != -1)
            {
              swift_once();
            }

            v53 = qword_188C0 == v45 && *algn_188C8 == v44;
            if (!v53 && (sub_E95C() & 1) == 0)
            {
              goto LABEL_32;
            }

            v48 = &qword_188F0;
            if (qword_188E8 != -1)
            {
              swift_once();
              v48 = &qword_188F0;
            }
          }

          v45 = *v48;
          v49 = v48[1];

          v44 = v49;
LABEL_32:
          aBlock = v43;
          v51 = v43[2];
          v50 = v43[3];
          if (v51 >= v50 >> 1)
          {
            sub_6718((v50 > 1), v51 + 1, 1);
            v43 = aBlock;
          }

          v43[2] = v51 + 1;
          v52 = &v43[2 * v51];
          v52[4] = v45;
          v52[5] = v44;
          v42 += 2;
          v12 = (v12 - 1);
          if (!v12)
          {

            v54 = sub_E78C().super.isa;

            v55 = v68;
            [v68 setBundleIdentifiers:v54];

            v56 = [v55 perform];
            v57 = swift_allocObject();
            v57[2] = v65;
            v57[3] = sub_79DC;
            v57[4] = v64;
            v73 = sub_7AA4;
            v74 = v57;
            aBlock = _NSConcreteStackBlock;
            v70 = 1107296256;
            v71 = sub_43BC;
            v72 = &unk_14B10;
            v58 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            [(objc_class *)v56 addFinishBlock:v58];
            _Block_release(v58);

            goto LABEL_46;
          }
        }
      }

      v10 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_48;
      }

      v14 = v12[-1].isa;
      v13 = v12->isa;
      v15 = objc_opt_self();

      v16 = [v15 defaultManager];
      v17 = objc_opt_self();
      v18 = sub_E6FC();
      v19 = [v17 urlForBundleIdentifier:v18];

      sub_E50C();
      sub_E51C();
      (*v67)(v7, v68);
      p_aBlock = sub_E6FC();

      LOBYTE(v18) = [v16 fileExistsAtPath:p_aBlock];

      if ((v18 & 1) == 0)
      {
        break;
      }

      v9 = (v9 + 1);
      v12 += 2;
      if (v10 == isa)
      {
        v9 = v66;
        goto LABEL_14;
      }
    }

    v9 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      p_aBlock = &aBlock;
      sub_6718(0, v9[2] + 1, 1);
      v9 = aBlock;
    }

    v11 = v62;
    v22 = v9[2];
    v21 = v9[3];
    if (v22 >= v21 >> 1)
    {
      p_aBlock = &aBlock;
      sub_6718((v21 > 1), v22 + 1, 1);
      v9 = aBlock;
    }

    v9[2] = v22 + 1;
    v23 = &v9[2 * v22];
    v23[4] = v14;
    v23[5] = v13;
  }

  while (v10 != isa);
LABEL_14:
  v12 = v9[2];
  if (v12)
  {
    v24 = [objc_opt_self() sharedServiceManager];
    if (v24)
    {
      v25 = v24;
      v26 = sub_E6FC();
      [v25 beginTransactionWithIdentifier:v26 forService:v65];

      if (qword_18900 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }

    _Block_release(v63);
    __break(1u);
LABEL_51:
    _Block_release(v63);
    __break(1u);
    goto LABEL_52;
  }

  sub_79E4(&qword_18918, &qword_F2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F290;
  aBlock = sub_E72C();
  v70 = v60;
  sub_E8BC();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 0;
  sub_6C4C(inited);
  swift_setDeallocating();
  sub_91CC(inited + 32, &qword_18920, &qword_F2B8);
  v56 = sub_E6BC().super.isa;
  (*(v63 + 2))(v63, v56, 0);

LABEL_46:
}

void sub_7748(uint64_t a1, void *a2)
{
  sub_9184(0, &qword_18910, CLFSettings_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock = a2;
  _Block_copy(a2);
  v4 = [ObjCClassFromMetadata sharedInstance];
  v5 = [v4 applicationBundleIdentifiers];

  v6 = sub_E79C();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 40;
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v22 = v10;
      v11 = (v9 + 16 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v14 = *(v11 - 1);
        v13 = *v11;
        v8 = v12 + 1;
        v15 = objc_opt_self();

        v16 = sub_E6FC();
        LODWORD(v15) = [v15 shouldDownloadForBundleIdentifier:v16];

        if (v15)
        {
          break;
        }

        v11 += 2;
        ++v12;
        if (v7 == v8)
        {
          v10 = v22;
          goto LABEL_15;
        }
      }

      v10 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_6718(0, v22[2].isa + 1, 1);
        v10 = v22;
      }

      isa = v10[2].isa;
      v17 = v10[3].isa;
      if (isa >= v17 >> 1)
      {
        sub_6718((v17 > 1), isa + 1, 1);
        v10 = v22;
      }

      v10[2].isa = (isa + 1);
      v19 = &v10[2 * isa];
      v19[4].isa = v14;
      v19[5].isa = v13;
      v9 = v6 + 40;
    }

    while (v7 - 1 != v12);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  sub_1D60(v10, a1);
  _Block_copy(aBlock);
  sub_6D88(v10, a1, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_79A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_79E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7A2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_7A64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7AC8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_7B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_7BC4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_9820;

  return sub_3D98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_7CE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_9820;

  return sub_641C(a1, v4);
}

uint64_t sub_7DA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7DD8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_9820;

  return sub_4448(a1, a2, v7, v6);
}

_OWORD *sub_7E8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_7EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_9820;

  return sub_4C80(a1, v4, v5, v7, v6);
}

uint64_t sub_7F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8040;

  return sub_6A3C(a1, v4);
}

uint64_t sub_8040()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_8134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_18980, &qword_F370);
    v3 = sub_E92C();
    v4 = a1 + 32;

    while (1)
    {
      sub_9240(v4, &v13, &qword_18970, &qword_F360);
      v5 = v13;
      v6 = v14;
      result = sub_CB54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_7E8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_8268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_189B0, &qword_F3A8);
    v3 = sub_E92C();
    v4 = a1 + 32;

    while (1)
    {
      sub_9240(v4, &v11, &qword_189A0, &qword_F3A0);
      v5 = v11;
      result = sub_CBCC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_7E8C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_8390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = sub_E53C();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_8498, 0, 0);
}

uint64_t sub_8498()
{
  v1 = v0;
  v0[22] = [objc_opt_self() sharedSession];
  v2 = swift_task_alloc();
  v1[23] = v2;
  *v2 = v1;
  v2[1] = sub_8594;
  v3 = v1[21];
  v4 = v1[14];

  return NSURLSession.download(from:delegate:)(v3, v4, 0);
}

uint64_t sub_8594(void *a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_8EF4;
  }

  else
  {
    v6 = *(v4 + 176);

    v5 = sub_86EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_86EC()
{
  v83 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = sub_E82C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = [objc_opt_self() defaultManager];
  sub_E4FC(v6);
  v8 = v7;
  v0[11] = 0;
  v9 = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 11];

  v10 = v0[11];
  if (v9)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = sub_E6FC();
    v14 = [v11 urlForBundleIdentifier:v13];

    sub_E50C();
    sub_E4FC(v15);
    v17 = v16;
    sub_E4FC(v18);
    v20 = v19;
    v0[12] = 0;
    LODWORD(v14) = [v5 copyItemAtURL:v17 toURL:v19 error:v0 + 12];

    v21 = v0[12];
    if (v14)
    {
      v22 = v21;
      sub_E51C();
      sub_79E4(&qword_18998, &qword_F398);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F290;
      *(inited + 32) = NSFileProtectionKey;
      type metadata accessor for FileProtectionType(0);
      *(inited + 64) = v24;
      *(inited + 40) = NSFileProtectionNone;
      v25 = NSFileProtectionKey;
      v26 = NSFileProtectionNone;
      sub_8268(inited);
      swift_setDeallocating();
      sub_91CC(inited + 32, &qword_189A0, &qword_F3A0);
      type metadata accessor for FileAttributeKey(0);
      sub_947C(&qword_189A8, type metadata accessor for FileAttributeKey, &unk_F8A8);
      isa = sub_E6BC().super.isa;

      v28 = sub_E6FC();

      v0[13] = 0;
      v29 = [v5 setAttributes:isa ofItemAtPath:v28 error:v0 + 13];

      v30 = v0[13];
      if (v29)
      {
        v32 = v0[20];
        v31 = v0[21];
        v34 = v0[18];
        v33 = v0[19];
        v35 = v0[17];
        v36 = v30;

        v37 = *(v34 + 8);
        v37(v33, v35);
        v37(v32, v35);
        v37(v31, v35);
      }

      else
      {
        v61 = v30;
        sub_E4CC();

        swift_willThrow();
        if (qword_18900 != -1)
        {
          swift_once();
        }

        v62 = sub_E55C();
        sub_7A2C(v62, qword_198C0);
        swift_errorRetain();
        v63 = sub_E54C();
        v64 = sub_E84C();

        v65 = os_log_type_enabled(v63, v64);
        v66 = v0[21];
        v81 = v0[20];
        v67 = v0[18];
        v68 = v0[19];
        v69 = v0[17];
        if (v65)
        {
          v79 = v0[21];
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          swift_errorRetain();
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v70 + 4) = v72;
          *v71 = v72;
          _os_log_impl(&dword_0, v63, v64, "Unable to set file protection class on app icon: %@", v70, 0xCu);
          sub_91CC(v71, &qword_18930, &qword_F2C8);

          v73 = *(v67 + 8);
          v73(v68, v69);
          v73(v81, v69);
          v73(v79, v69);
        }

        else
        {

          v74 = *(v67 + 8);
          v74(v68, v69);
          v74(v81, v69);
          v74(v66, v69);
        }
      }

      v60 = 1;
      goto LABEL_19;
    }

    v44 = v0[19];
    v43 = v0[20];
    v45 = v0[17];
    v46 = v0[18];
    v47 = v21;
    sub_E4CC();

    swift_willThrow();
    v42 = *(v46 + 8);
    v42(v44, v45);
    v42(v43, v45);
  }

  else
  {
    v38 = v0[20];
    v39 = v0[17];
    v40 = v0[18];
    v41 = v10;
    sub_E4CC();

    swift_willThrow();
    v42 = *(v40 + 8);
    v42(v38, v39);
  }

  if (qword_18900 != -1)
  {
    swift_once();
  }

  v48 = sub_E55C();
  sub_7A2C(v48, qword_198C0);

  swift_errorRetain();
  v49 = sub_E54C();
  v50 = sub_E84C();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[21];
  v53 = v0[17];
  if (v51)
  {
    v80 = v0[21];
    v54 = v0[15];
    v55 = v0[16];
    v78 = v0[17];
    v56 = swift_slowAlloc();
    v77 = v42;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v82 = v58;
    *v56 = 136315394;
    *(v56 + 4) = sub_C568(v54, v55, &v82);
    *(v56 + 12) = 2112;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 14) = v59;
    *v57 = v59;
    _os_log_impl(&dword_0, v49, v50, "Error copying artwork for app with bundle identifier %s: %@", v56, 0x16u);
    sub_91CC(v57, &qword_18930, &qword_F2C8);

    sub_7AC8(v58);

    v77(v80, v78);
  }

  else
  {

    v42(v52, v53);
  }

  v60 = 0;
LABEL_19:

  v75 = v0[1];

  return v75(v60);
}

uint64_t sub_8EF4()
{
  v13 = v0;

  if (qword_18900 != -1)
  {
    swift_once();
  }

  v1 = sub_E55C();
  sub_7A2C(v1, qword_198C0);

  swift_errorRetain();
  v2 = sub_E54C();
  v3 = sub_E84C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_C568(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Error downloading artwork for app with bundle identifier %s: %@", v6, 0x16u);
    sub_91CC(v7, &qword_18930, &qword_F2C8);

    sub_7AC8(v8);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(256);
}

uint64_t sub_9184(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_91CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_79E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_9240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_79E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_92D4(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_933C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_8040;

  return sub_1EEC(a1, v4, v5, v7, v6);
}

void sub_9410(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_947C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_94C4()
{
  result = qword_189D8;
  if (!qword_189D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189D8);
  }

  return result;
}

__n128 sub_9518(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_9528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_982C()
{
  v0 = sub_E55C();
  sub_E084(v0, qword_198C0);
  sub_7A2C(v0, qword_198C0);
  v1 = [objc_opt_self() commonLog];
  return sub_E56C();
}

Swift::Int sub_98A4()
{
  sub_E9AC();
  sub_E9BC(0);
  return sub_E9CC();
}

Swift::Int sub_9910(uint64_t a1)
{
  sub_E9AC();
  sub_E9BC(0);
  return sub_E9CC();
}

void sub_9A68(void *a1)
{
  v1 = UIAccessibilityScreenChangedNotification;
  v3 = a1;
  v2 = [v3 view];
  UIAccessibilityPostNotification(v1, v2);
}

id sub_9AF8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

id sub_9B94(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_9C34()
{
  v0 = sub_E5EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E5FC();
  v12 = 1;
  sub_9EFC(&v25);
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v13 = v25;
  v14 = v26;
  v23[6] = v31;
  v23[7] = v32;
  v23[8] = v33;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v22 = v34;
  v24 = v34;
  v23[0] = v25;
  v23[1] = v26;
  sub_9240(&v13, &v9, &qword_18C50, &qword_F9D0);
  sub_91CC(v23, &qword_18C50, &qword_F9D0);
  *&v11[103] = v19;
  *&v11[119] = v20;
  *&v11[135] = v21;
  *&v11[39] = v15;
  *&v11[55] = v16;
  *&v11[71] = v17;
  *&v11[87] = v18;
  *&v11[7] = v13;
  v11[151] = v22;
  *&v11[23] = v14;
  v5 = v12;
  v6 = sub_E69C();
  v7 = sub_E63C();
  *(&v10[6] + 1) = *&v11[96];
  *(&v10[7] + 1) = *&v11[112];
  *(&v10[8] + 1) = *&v11[128];
  *(&v10[2] + 1) = *&v11[32];
  *(&v10[3] + 1) = *&v11[48];
  *(&v10[4] + 1) = *&v11[64];
  *(&v10[5] + 1) = *&v11[80];
  *(v10 + 1) = *v11;
  v9 = v4;
  LOBYTE(v10[0]) = v5;
  *(&v10[9] + 1) = *&v11[144];
  *(&v10[1] + 1) = *&v11[16];
  *&v10[10] = v6;
  BYTE8(v10[10]) = v7;
  BYTE9(v10[10]) = 1;
  sub_E5DC();
  sub_79E4(&qword_18C58, &qword_F9D8);
  sub_C314();
  sub_E68C();
  (*(v1 + 8))(v3, v0);
  v33 = v10[7];
  v34 = v10[8];
  v35[0] = v10[9];
  *(v35 + 10) = *(&v10[9] + 10);
  v29 = v10[3];
  v30 = v10[4];
  v31 = v10[5];
  v32 = v10[6];
  v25 = v9;
  v26 = v10[0];
  v27 = v10[1];
  v28 = v10[2];
  return sub_91CC(&v25, &qword_18C58, &qword_F9D8);
}

uint64_t sub_9EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_E5BC();
  v12[0] = 1;
  sub_A138(&v25);
  v17 = *v26;
  v18 = *&v26[16];
  v19[0] = *&v26[32];
  *(v19 + 9) = *&v26[41];
  v16 = v25;
  v20[2] = *&v26[16];
  v21[0] = *&v26[32];
  *(v21 + 9) = *&v26[41];
  v20[0] = v25;
  v20[1] = *v26;
  sub_9240(&v16, v22, &qword_18CA0, &qword_F9F8);
  sub_91CC(v20, &qword_18CA0, &qword_F9F8);
  *(&v15[1] + 7) = v17;
  *(&v15[2] + 7) = v18;
  *(&v15[3] + 7) = v19[0];
  v15[4] = *(v19 + 9);
  *(v15 + 7) = v16;
  v3 = sub_E6AC();
  KeyPath = swift_getKeyPath();
  v14 = 1;
  v22[0] = v2;
  v22[1] = 0;
  v23[0] = 1;
  *&v23[1] = v15[0];
  *&v23[17] = v15[1];
  *&v23[33] = v15[2];
  *&v23[49] = v15[3];
  *&v23[65] = v15[4];
  *&v23[88] = KeyPath;
  v24 = v3;
  *&v13[55] = *&v23[32];
  *&v13[39] = *&v23[16];
  *&v13[23] = *v23;
  *&v13[7] = v2;
  *&v13[119] = v3;
  *&v13[103] = *&v23[80];
  *&v13[87] = *&v23[64];
  *&v13[71] = *&v23[48];
  v12[120] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v5 = *v13;
  v6 = *&v13[16];
  v7 = *&v13[32];
  *(a1 + 57) = *&v13[48];
  *(a1 + 41) = v7;
  *(a1 + 25) = v6;
  *(a1 + 9) = v5;
  v8 = *&v13[64];
  v9 = *&v13[80];
  v10 = *&v13[96];
  *(a1 + 120) = *&v13[111];
  *(a1 + 105) = v10;
  *(a1 + 89) = v9;
  *(a1 + 73) = v8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  v25 = v2;
  v26[0] = 1;
  *&v26[1] = v15[0];
  v27 = v15[4];
  *&v26[49] = v15[3];
  *&v26[33] = v15[2];
  *&v26[17] = v15[1];
  v28 = KeyPath;
  v29 = v3;
  sub_9240(v22, v12, &qword_18CA8, &qword_FA30);
  return sub_91CC(&v25, &qword_18CA8, &qword_FA30);
}

uint64_t sub_A138@<X0>(uint64_t a1@<X8>)
{
  sub_E5CC();
  type metadata accessor for CLUIServer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_E64C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8 & 1;
  *(a1 + 40) = v10;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  sub_CF90(v4, v6, v8 & 1);

  sub_CFA0(v4, v6, v8 & 1);
}

id sub_A2CC()
{
  result = [objc_allocWithZone(type metadata accessor for CLUIServer()) init];
  qword_198D8 = result;
  return result;
}

void sub_A358()
{
  swift_getObjectType();
  if (_AXSClarityUIEnabled())
  {
    v63 = -1;
    v1 = [objc_opt_self() sharedConnection];
    if (!v1)
    {
      if (qword_18900 != -1)
      {
        swift_once();
      }

      v32 = sub_E55C();
      sub_7A2C(v32, qword_198C0);
      v2 = sub_E54C();
      v33 = sub_E84C();
      if (os_log_type_enabled(v2, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v2, v33, "Could not get profile connection", v34, 2u);
      }

      goto LABEL_35;
    }

    v2 = v1;
    v3 = [v1 unlockScreenTypeWithOutSimplePasscodeType:&v63];
    if ([v2 isPasscodeSet])
    {
      if (v3 || v63 == -1)
      {
        v5 = [objc_opt_self() sharedDisplayManager];
        if (v5)
        {
          v6 = v5;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v8 = objc_opt_self();
          v9 = [v8 bundleForClass:ObjCClassFromMetadata];
          v57._countAndFlagsBits = 0xE000000000000000;
          v65._object = 0x8000000000011210;
          v65._countAndFlagsBits = 0xD000000000000023;
          v72.value._countAndFlagsBits = 0;
          v72.value._object = 0;
          v10.super.isa = v9;
          v79._countAndFlagsBits = 0;
          v79._object = 0xE000000000000000;
          sub_E4AC(v65, v72, v10, v79, 0, v57);

          v11 = sub_E6FC();

          v12 = [v8 bundleForClass:ObjCClassFromMetadata];
          v58._countAndFlagsBits = 0xE000000000000000;
          v66._countAndFlagsBits = 0xD00000000000002BLL;
          v66._object = 0x8000000000011240;
          v73.value._countAndFlagsBits = 0;
          v73.value._object = 0;
          v13.super.isa = v12;
          v80._countAndFlagsBits = 0;
          v80._object = 0xE000000000000000;
          sub_E4AC(v66, v73, v13, v80, 0, v58);

          v14 = sub_E6FC();

          v15 = [v6 showAlertWithText:v11 subtitleText:v14 iconImage:0 type:4 forService:v0];
LABEL_18:

LABEL_35:
          return;
        }

        goto LABEL_38;
      }
    }

    if ((sub_D000() & 1) == 0)
    {
      if (![objc_opt_self() settingEnabled] || (v35 = objc_msgSend(objc_opt_self(), "server")) == 0 || (v36 = v35, v37 = objc_msgSend(v35, "isScreenLockedWithPasscode:", 0), v36, !v37))
      {
        v44 = OBJC_IVAR___CLUIServer_presentingViewController;
        v45 = *&v0[OBJC_IVAR___CLUIServer_presentingViewController];
        if (v45)
        {
          v46 = v0;
          v47 = qword_18900;
          v48 = v45;
          if (v47 != -1)
          {
            swift_once();
          }

          v49 = sub_E55C();
          sub_7A2C(v49, qword_198C0);
          v50 = sub_E54C();
          v51 = sub_E86C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_0, v50, v51, "Passcode was already presented. Dismissing it.", v52, 2u);
          }

          v53 = swift_allocObject();
          *(v53 + 16) = v48;
          *(v53 + 24) = v46;
          aBlock[4] = sub_E1D8;
          aBlock[5] = v53;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_E42C;
          aBlock[3] = &unk_14E58;
          v54 = _Block_copy(aBlock);
          v55 = v48;
          v56 = v46;

          [v55 dismissViewControllerAnimated:1 completion:v54];

          _Block_release(v54);
          v2 = *&v46[v44];
          *&v46[v44] = 0;
        }

        else
        {
          sub_B094();
        }

        goto LABEL_35;
      }

      v38 = [objc_opt_self() sharedDisplayManager];
      if (v38)
      {
        v39 = v38;
        v40 = swift_getObjCClassFromMetadata();
        v41 = [objc_opt_self() bundleForClass:v40];
        v71._countAndFlagsBits = 0xD000000000000021;
        v57._countAndFlagsBits = 0xE000000000000000;
        v71._object = 0x80000000000111A0;
        v78.value._countAndFlagsBits = 0;
        v78.value._object = 0;
        v42.super.isa = v41;
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        sub_E4AC(v71, v78, v42, v85, 0, v57);

        v43 = sub_E6FC();

        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v25 = [objc_opt_self() sharedDisplayManager];
    if (v25)
    {
      v6 = v25;
      v26 = swift_getObjCClassFromMetadata();
      v27 = objc_opt_self();
      v28 = [v27 bundleForClass:v26];
      v69._countAndFlagsBits = 0xD000000000000015;
      v57._countAndFlagsBits = 0xE000000000000000;
      v69._object = 0x80000000000111D0;
      v76.value._countAndFlagsBits = 0;
      v76.value._object = 0;
      v29.super.isa = v28;
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      sub_E4AC(v69, v76, v29, v83, 0, v57);

      v11 = sub_E6FC();

      v30 = [v27 bundleForClass:v26];
      v70._countAndFlagsBits = 0xD00000000000001DLL;
      v60._countAndFlagsBits = 0xE000000000000000;
      v70._object = 0x80000000000111F0;
      v77.value._countAndFlagsBits = 0;
      v77.value._object = 0;
      v31.super.isa = v30;
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      sub_E4AC(v70, v77, v31, v84, 0, v60);

      v14 = sub_E6FC();

      v15 = [v6 showAlertWithText:v11 subtitleText:v14 iconImage:0 type:4 forService:v0];
      goto LABEL_18;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v16 = [objc_opt_self() sharedDisplayManager];
  if (!v16)
  {
    __break(1u);
    goto LABEL_37;
  }

  v17 = v16;
  v18 = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:v18];
  v67._countAndFlagsBits = 0xD00000000000001BLL;
  v57._countAndFlagsBits = 0xE000000000000000;
  v67._object = 0x8000000000011270;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v21.super.isa = v20;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  sub_E4AC(v67, v74, v21, v81, 0, v57);

  v22 = sub_E6FC();

  v23 = [v19 bundleForClass:v18];
  v59._countAndFlagsBits = 0xE000000000000000;
  v68._object = 0x8000000000011290;
  v68._countAndFlagsBits = 0xD000000000000023;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v24.super.isa = v23;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  sub_E4AC(v68, v75, v24, v82, 0, v59);

  v61 = sub_E6FC();
}

void sub_AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_E6BC().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_E4BC();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_B00C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedDisplayManager];
  if (v4)
  {
    v5 = v4;
    [v4 removeContentViewController:a1 withUserInteractionEnabled:1 forService:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_B094()
{
  v1 = v0;
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v2 = sub_E55C();
  sub_7A2C(v2, qword_198C0);
  v3 = sub_E54C();
  v4 = sub_E86C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Presenting passcode.", v5, 2u);
  }

  type metadata accessor for CLUIServer.SecureViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = *&v1[OBJC_IVAR___CLUIServer_presentingViewController];
  *&v1[OBJC_IVAR___CLUIServer_presentingViewController] = v6;
  v8 = v6;

  v9 = [objc_opt_self() sharedDisplayManager];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = v8;
    v15[4] = sub_E1E0;
    v15[5] = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_E448;
    v15[3] = &unk_14EA8;
    v12 = _Block_copy(v15);
    v13 = v8;
    v14 = v1;

    [v10 addContentViewController:v13 withUserInteractionEnabled:1 forService:v14 context:0 completion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() settingEnabled])
  {
    sub_9184(0, &qword_18CC0, NSDistributedNotificationCenter_ptr);
    v5 = [swift_getObjCClassFromMetadata() defaultCenter];
    [v5 addObserver:a2 selector:"handleRestrictionsPINNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];

    v6 = objc_opt_self();

    [v6 activateRemotePINUI];
  }

  else
  {
    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((AXBackBoardServerClarityUIAdminPasscodeLength & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13._object = [objc_allocWithZone(AXUIPasscodeViewController) initWithPresentationStyle:v8 == &dword_0 + 1 forSetup:0 pinLength:AXBackBoardServerClarityUIAdminPasscodeLength];
      type metadata accessor for CLUIServer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v13._countAndFlagsBits = 0xE000000000000000;
      v16._object = 0x80000000000112C0;
      v16._countAndFlagsBits = 0xD000000000000022;
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v11.super.isa = v10;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      sub_E4AC(v16, v17, v11, v18, 0, v13);

      v12 = sub_E6FC();

      [v14 setPinViewTitle:v12];

      [v14 setDelegate:a2];
      [v14 presentPasscodeViewWithParentViewController:a3 animated:1];
    }
  }
}

void sub_B510()
{
  sub_9184(0, &qword_18CC0, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v2 = sub_E45C();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  *&v11 = sub_E72C();
  *(&v11 + 1) = v4;

  sub_E8BC();
  if (!*(v3 + 16) || (v5 = sub_CB10(v10), (v6 & 1) == 0))
  {

    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v7 = v5;

  sub_7B68(*(v3 + 56) + 32 * v7, v9);

  sub_7B14(v10);
  sub_7E8C(v9, &v11);
  sub_9184(0, &qword_18CC8, NSNumber_ptr);
  swift_dynamicCast();
  if ([v8 BOOLValue])
  {
    sub_B69C();
  }
}

void sub_B69C()
{
  *(v0 + OBJC_IVAR___CLUIServer_isShowingLoadingView) = 1;
  v1 = objc_allocWithZone(type metadata accessor for CLUIServer.SecureHostingController(0));
  v2 = sub_E61C();
  [v2 setModalPresentationStyle:0];
  v3 = *(v0 + OBJC_IVAR___CLUIServer_presentingViewController);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() blackColor];
      [v6 setBackgroundColor:v7];

      aBlock[4] = sub_B9D0;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_E42C;
      aBlock[3] = &unk_14DB8;
      v8 = _Block_copy(aBlock);
      [v4 presentViewController:v2 animated:1 completion:v8];

      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v9 = sub_E55C();
    sub_7A2C(v9, qword_198C0);
    oslog = sub_E54C();
    v10 = sub_E85C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, oslog, v10, "Tried to show loading screen, but had no presenting view controller.", v11, 2u);
    }
  }
}

void sub_B9D0()
{
  _AXFeatureSupportsNonSightedUsage();
  v1[4] = sub_BA84;
  v1[5] = 0;
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 1107296256;
  v1[2] = sub_E42C;
  v1[3] = &unk_14DE0;
  v0 = _Block_copy(v1);
  AXPerformBlockOnMainThreadAfterDelay();
  _Block_release(v0);
}

void sub_BA84()
{
  v0 = [objc_allocWithZone(AXSpringBoardServer) init];
  v2[4] = sub_BB48;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_E42C;
  v2[3] = &unk_14E08;
  v1 = _Block_copy(v2);
  [v0 freezeClarityUILoadingScreenWithCompletion:v1];
  _Block_release(v1);
}

void sub_BB48()
{
  v0 = [objc_allocWithZone(CLFSystemShellSwitcher) init];
  v13 = 0;
  v1 = [v0 setClarityBoardEnabled:1 error:&v13];

  v2 = v13;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v13;
    sub_E4CC();

    swift_willThrow();
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v5 = sub_E55C();
    sub_7A2C(v5, qword_198C0);
    swift_errorRetain();
    v6 = sub_E54C();
    v7 = sub_E85C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_errorRetain();
      sub_79E4(&qword_18CB0, &qword_FA68);
      v10 = sub_E73C();
      v12 = sub_C568(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "Unable to enter ClarityUI: %s", v8, 0xCu);
      sub_7AC8(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_BDB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_BED8(char a1, uint64_t (*a2)(void))
{
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v4 = sub_E55C();
  sub_7A2C(v4, qword_198C0);
  v5 = sub_E54C();
  v6 = sub_E86C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v5, v6, "Passcode is correct: %{BOOL}d", v7, 8u);
  }

  return a2(a1 & 1);
}

uint64_t sub_BFE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_C1C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CLUIServer.SecureHostingController(uint64_t a1)
{
  result = qword_18C00;
  if (!qword_18C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_C314()
{
  result = qword_18C60;
  if (!qword_18C60)
  {
    sub_C3A0(&qword_18C58, &qword_F9D8);
    sub_C3E8();
    sub_C514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18C60);
  }

  return result;
}

uint64_t sub_C3A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_C3E8()
{
  result = qword_18C68;
  if (!qword_18C68)
  {
    sub_C3A0(&qword_18C70, &qword_F9E0);
    sub_C4CC(&qword_18C78, &qword_18C80, &qword_F9E8, &protocol conformance descriptor for VStack<A>);
    sub_C4CC(&qword_18C88, &qword_18C90, &qword_F9F0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18C68);
  }

  return result;
}

uint64_t sub_C4CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_C3A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C514()
{
  result = qword_18C98;
  if (!qword_18C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18C98);
  }

  return result;
}

unint64_t sub_C568(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_C634(v11, 0, 0, 1, a1, a2);
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
    sub_7B68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7AC8(v11);
  return v7;
}

unint64_t sub_C634(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_C740(a5, a6);
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
    result = sub_E8FC();
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

char *sub_C740(uint64_t a1, unint64_t a2)
{
  v3 = sub_C78C(a1, a2);
  sub_C8BC(&off_14A98);
  return v3;
}

char *sub_C78C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_C9A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_E8FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_E76C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_C9A8(v10, 0);
        result = sub_E8DC();
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

uint64_t sub_C8BC(uint64_t result)
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

  result = sub_CA1C(result, v11, 1, v3);
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

void *sub_C9A8(uint64_t a1, uint64_t a2)
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

  sub_79E4(&qword_18CB8, &unk_FA70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_CA1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_79E4(&qword_18CB8, &unk_FA70);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_CB10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E89C(*(v2 + 40));

  return sub_CC60(a1, v4);
}

unint64_t sub_CB54(uint64_t a1, uint64_t a2)
{
  sub_E9AC();
  sub_E75C();
  v4 = sub_E9CC();

  return sub_CD28(a1, a2, v4);
}

unint64_t sub_CBCC(uint64_t a1)
{
  sub_E72C();
  sub_E9AC();
  sub_E75C();
  v2 = sub_E9CC();

  return sub_CDE0(a1, v2);
}

unint64_t sub_CC60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_E0E8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_E8AC();
      sub_7B14(v8);
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

unint64_t sub_CD28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_E95C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_CDE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_E72C();
      v8 = v7;
      if (v6 == sub_E72C() && v8 == v9)
      {
        break;
      }

      v11 = sub_E95C();

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

uint64_t sub_CEE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E57C();
  *a1 = result;
  return result;
}

uint64_t sub_CF3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E59C();
  *a1 = result;
  return result;
}

uint64_t sub_CF90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_CFA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_CFB0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D000()
{
  sub_9184(0, &unk_18CD8, OS_dispatch_queue_ptr);
  v0 = sub_E88C();
  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v0];

  v50 = 0;
  v2 = [v1 getSubscriptionInfoWithError:&v50];
  if (!v2)
  {
    v14 = v50;
    sub_E4CC();

    swift_willThrow();
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v15 = sub_E55C();
    sub_7A2C(v15, qword_198C0);
    swift_errorRetain();
    v16 = sub_E54C();
    v17 = sub_E86C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_0, v16, v17, "Unable to get info about SIMs: %@", v18, 0xCu);
      sub_91CC(v19, &qword_18930, &qword_F2C8);
    }

    else
    {
    }

    return 0;
  }

  v3 = v2;
  v4 = v50;
  v5 = [v3 subscriptionsInUse];
  if (!v5)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v21 = sub_E55C();
    sub_7A2C(v21, qword_198C0);
    v22 = sub_E54C();
    v23 = sub_E86C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Found no SIMs.", v24, 2u);
    }

    goto LABEL_44;
  }

  v6 = v5;
  sub_9184(0, &qword_18CE8, CTXPCServiceSubscriptionContext_ptr);
  v7 = sub_E79C();

  if (qword_18900 != -1)
  {
LABEL_41:
    swift_once();
  }

  v8 = sub_E55C();
  sub_7A2C(v8, qword_198C0);

  v9 = sub_E54C();
  v10 = sub_E86C();
  v11 = v7 >> 62;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v11)
    {
      v13 = sub_E91C();
    }

    else
    {
      v13 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    *(v12 + 4) = v13;

    _os_log_impl(&dword_0, v9, v10, "Checking %ld SIMs...", v12, 0xCu);
  }

  else
  {
  }

  if (v11)
  {
    v25 = sub_E91C();
    if (v25)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

  v25 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!v25)
  {
LABEL_43:

LABEL_44:

    return 0;
  }

LABEL_20:
  v46 = v3;
  v3 = 0;
  v26 = v7 & 0xC000000000000001;
  v49 = v7 & 0xFFFFFFFFFFFFFF8;
  v27 = &AXUIService__prots;
  v47 = v1;
  v48 = v7;
  while (1)
  {
    if (v26)
    {
      v33 = sub_E8EC();
    }

    else
    {
      if (v3 >= *(v49 + 16))
      {
        goto LABEL_40;
      }

      v33 = *(v7 + 8 * v3 + 32);
    }

    v34 = v33;
    v35 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v50 = 0;
    v36 = [v1 v27[167].count];
    if (!v36)
    {
      v39 = v50;
      sub_E4CC();

      swift_willThrow();
      swift_errorRetain();
      v40 = sub_E54C();
      v41 = sub_E84C();

      if (os_log_type_enabled(v40, v41))
      {
        v28 = swift_slowAlloc();
        v29 = v26;
        v30 = v25;
        v31 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_0, v40, v41, "Unable to fetch whether SIM had PIN: %@", v28, 0xCu);
        sub_91CC(v31, &qword_18930, &qword_F2C8);
        v25 = v30;
        v26 = v29;

        v1 = v47;
      }

      else
      {
      }

      v7 = v48;
      v27 = &AXUIService__prots;
      goto LABEL_23;
    }

    v37 = v36;
    v38 = v50;
    if ([v37 BOOLValue])
    {
      break;
    }

LABEL_23:
    ++v3;
    if (v35 == v25)
    {

      return 0;
    }
  }

  v42 = sub_E54C();
  v43 = sub_E86C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "Found SIM with PIN.", v44, 2u);
  }

  return 1;
}

Swift::Int sub_D738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_18CF8, &qword_FA88);
    v3 = sub_E8CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_E0E8(v6 + 40 * v4, v19);
      result = sub_E89C(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_E0E8(*(v3 + 48) + 40 * i, v18);
        v11 = sub_E8AC();
        result = sub_7B14(v18);
        if (v11)
        {
          sub_7B14(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_D898(uint64_t a1)
{
  if (AXTripleClickAttemptToEnterClarityBoardMessageIdentifier == a1)
  {
    sub_79E4(&qword_18CF0, &qword_FA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F900;
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    v2 = sub_D738(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else if (CLFUpdateAppIconsMessageIdentifier == a1)
  {
    sub_79E4(&qword_18CF0, &qword_FA80);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_F290;
    sub_E8BC();
    v2 = sub_D738(v3);
    swift_setDeallocating();
    sub_7B14(v3 + 32);
  }

  else
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v5 = sub_E55C();
    sub_7A2C(v5, qword_198C0);
    v6 = sub_E54C();
    v7 = sub_E85C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_0, v6, v7, "Asked for required entitlements for unknown message identifier: %ld", v8, 0xCu);
    }

    return 0;
  }

  return v2;
}

void sub_DBB8(char a1)
{
  if (a1)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v2 = sub_E55C();
    sub_7A2C(v2, qword_198C0);
    oslog = sub_E54C();
    v3 = sub_E86C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, oslog, v3, "Passcode was shown.", v4, 2u);
    }

    v5 = oslog;
LABEL_16:

    return;
  }

  v6 = v1;
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v7 = sub_E55C();
  sub_7A2C(v7, qword_198C0);
  v8 = sub_E54C();
  v9 = sub_E86C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Passcode was hidden.", v10, 2u);
  }

  if ((*(v6 + OBJC_IVAR___CLUIServer_isShowingLoadingView) & 1) == 0)
  {
    v11 = [objc_opt_self() sharedDisplayManager];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = OBJC_IVAR___CLUIServer_presentingViewController;
    [v11 removeContentViewController:*(v6 + OBJC_IVAR___CLUIServer_presentingViewController) withUserInteractionEnabled:1 forService:v6];

    v5 = *(v6 + v13);
    *(v6 + v13) = 0;
    goto LABEL_16;
  }
}

void sub_DDE4(uint64_t a1)
{
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v2 = sub_E55C();
  sub_7A2C(v2, qword_198C0);
  v3 = sub_E54C();
  v4 = sub_E86C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_0, v3, v4, "Passcode was dismissed with reason: %ld", v5, 0xCu);
  }

  if (a1 == 2)
  {

    sub_B69C();
  }
}

void sub_DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(AXBackBoardServer) init];
  v7 = sub_E6FC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_E064;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_E448;
  v10[3] = &unk_14D90;
  v9 = _Block_copy(v10);

  [v6 validateClarityUIAdminPasscode:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_E02C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E06C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_E084(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_E144()
{
  result = qword_18CD0;
  if (!qword_18CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18CD0);
  }

  return result;
}

uint64_t sub_E198()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for CLUIServer.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CLUIServer.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_E2D8()
{
  result = qword_18D00;
  if (!qword_18D00)
  {
    sub_C3A0(&qword_18D08, qword_FA98);
    sub_C314();
    sub_E364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18D00);
  }

  return result;
}

unint64_t sub_E364()
{
  result = qword_18D10;
  if (!qword_18D10)
  {
    sub_E62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18D10);
  }

  return result;
}

unint64_t sub_E3C4()
{
  result = qword_18D18;
  if (!qword_18D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18D18);
  }

  return result;
}