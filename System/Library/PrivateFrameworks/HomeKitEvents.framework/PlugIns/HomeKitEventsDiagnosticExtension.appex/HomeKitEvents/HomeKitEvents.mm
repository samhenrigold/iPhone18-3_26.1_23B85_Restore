uint64_t sub_100001258()
{
  v0 = sub_100004774();
  sub_100004260(v0, qword_10000C260);
  *sub_100003750(v0, qword_10000C260) = 300;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_1000012E8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v77 = sub_100004724();
  v85 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000047A4();
  v4 = *(v80 - 8);
  v5 = __chkstk_darwin(v80);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v72 - v8);
  v10 = sub_100003464(&qword_10000C168, &qword_100004CF8);
  __chkstk_darwin(v10 - 8);
  v12 = &v72 - v11;
  v13 = sub_100004764();
  v14 = *(v13 - 8);
  v82 = v13;
  v83 = v14;
  v15 = __chkstk_darwin(v13);
  v81 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v76 = &v72 - v18;
  __chkstk_darwin(v17);
  v20 = &v72 - v19;
  v79 = sub_1000044DC(&qword_10000C170, v21, type metadata accessor for HomeKitEventsDiagnosticExtension, "e6");
  v84 = ObjectType;
  sub_100004734();

  v22 = sub_100004754();
  v23 = sub_100004894();
  if (os_log_type_enabled(v22, v23))
  {
    v73 = v7;
    v74 = v9;
    v78 = v4;
    v24 = v83;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v88 = v26;
    *v25 = 136315138;
    if (!a1)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v27 = v26;

    v28 = sub_1000047C4();
    v30 = sub_100003978(v28, v29, &v88);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting with parameters: %s", v25, 0xCu);
    sub_1000040A4(v27);

    v31 = *(v24 + 8);
    v31(v20, v82);
    v4 = v78;
    v9 = v74;
    v7 = v73;
  }

  else
  {

    v31 = *(v83 + 8);
    v31(v20, v82);
    if (!a1)
    {
LABEL_31:
      __break(1u);
      return;
    }
  }

  v86 = sub_1000047D4();
  v87 = v32;
  sub_1000048F4();
  v33 = *(a1 + 16);
  v78 = v31;
  if (v33 && (v34 = sub_100003F20(&v88), (v35 & 1) != 0))
  {
    sub_1000040F0(*(a1 + 56) + 32 * v34, &v90);
    sub_100004584(&v88);
    sub_10000404C(0, &qword_10000C188, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v36 = v86;
      v37 = [v86 BOOLValue];

      goto LABEL_11;
    }
  }

  else
  {
    sub_100004584(&v88);
  }

  v37 = 0;
LABEL_11:
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = v38 + 16;
  *(v38 + 24) = &_swiftEmptyArrayStorage;
  v40 = dispatch_semaphore_create(0);
  v41 = sub_100004844();
  (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v37;
  *(v42 + 40) = v38;
  *(v42 + 48) = v40;
  *(v42 + 56) = v84;

  v43 = v40;
  sub_1000022B8(0, 0, v12, &unk_100004D18, v42);

  sub_100004784();
  if (qword_10000C1D0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v44 = sub_100004774();
  sub_100003750(v44, qword_10000C260);
  sub_100004794();
  v45 = *(v4 + 1);
  v46 = v80;
  v45(v7, v80);
  v47 = sub_1000048A4();
  v45(v9, v46);
  if ((v47 & 1) == 0)
  {
    os_unfair_lock_lock(v39);
    v52 = *(v38 + 24);

    os_unfair_lock_unlock(v39);
    sub_100004734();

    v53 = sub_100004754();
    v54 = sub_100004894();

    v55 = os_log_type_enabled(v53, v54);
    v84 = v52;
    v74 = v43;
    if (v55)
    {
      v56 = v38;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v88 = v58;
      *v57 = 136315138;
      v59 = sub_100004814();
      v61 = sub_100003978(v59, v60, &v88);

      *(v57 + 4) = v61;
      v52 = v84;
      _os_log_impl(&_mh_execute_header, v53, v54, "Finished collecting attachments: %s", v57, 0xCu);
      sub_1000040A4(v58);

      v38 = v56;
      v43 = v74;
    }

    v78(v81, v82);
    v62 = *(v52 + 16);
    if (!v62)
    {

      return;
    }

    v82 = v38;
    v90 = &_swiftEmptyArrayStorage;
    sub_10000402C(0, v62, 0);
    v39 = 0;
    v83 = v52 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v7 = v90;
    v9 = (v85 + 8);
    v4 = v77;
    v38 = v75;
    while (1)
    {
      if (v39 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v43 = v62;
      (*(v85 + 16))(v38, v83 + *(v85 + 72) * v39, v4);
      v63 = objc_allocWithZone(DEAttachmentItem);
      sub_100004714(v64);
      v66 = v65;
      v67 = [v63 initWithPathURL:v65];

      if (!v67)
      {
        break;
      }

      sub_10000404C(0, &qword_10000C188, NSNumber_ptr);
      isa = sub_1000048C4(1).super.super.isa;
      [v67 setShouldCompress:isa];

      v69 = sub_1000048C4(1).super.super.isa;
      [v67 setDeleteOnAttach:v69];

      v89 = sub_10000404C(0, &qword_10000C190, DEAttachmentItem_ptr);
      *&v88 = v67;
      (v9->isa)(v38, v4);
      v90 = v7;
      v71 = v7[2];
      v70 = v7[3];
      if (v71 >= v70 >> 1)
      {
        sub_10000402C((v70 > 1), v71 + 1, 1);
        v38 = v75;
        v4 = v77;
        v7 = v90;
      }

      ++v39;
      v7[2] = v71 + 1;
      sub_100004094(&v88, &v7[4 * v71 + 4]);
      v62 = v43;
      v52 = v84;
      if (v43 == v39)
      {

        return;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v48 = v76;
  sub_100004734();
  v49 = sub_100004754();
  v50 = sub_100004884();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Timed out collecting attachments", v51, 2u);
  }

  v78(v48, v82);
}

uint64_t sub_100001D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = sub_100004764();
  v7[5] = v9;
  v7[6] = *(v9 - 8);
  v7[7] = swift_task_alloc();
  v10 = sub_100004724();
  v7[8] = v10;
  v7[9] = *(v10 - 8);
  v11 = swift_task_alloc();
  v7[10] = v11;
  v12 = swift_task_alloc();
  v7[11] = v12;
  *v12 = v7;
  v12[1] = sub_100001EE8;

  return collectDiagnostics(includeSensitiveData:)(v11, a4);
}

uint64_t sub_100001EE8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000020D4;
  }

  else
  {
    v2 = sub_100001FFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100001FFC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = sub_1000026FC(v1);
  (*(v2 + 8))(v1, v3);
  os_unfair_lock_lock((v4 + 16));

  *(v4 + 24) = v5;
  os_unfair_lock_unlock((v4 + 16));
  sub_1000048B4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000020D4(uint64_t a1, uint64_t a2)
{
  sub_1000044DC(&qword_10000C170, a2, type metadata accessor for HomeKitEventsDiagnosticExtension, "e6");
  sub_100004734();
  swift_errorRetain();
  v3 = sub_100004754();
  v4 = sub_100004884();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to collect attachments: %@", v5, 0xCu);
    sub_100004524(v6, &qword_10000C1A8, &qword_100004D48);
  }

  else
  {
  }

  (*(v2[6] + 8))(v2[7], v2[5]);
  sub_1000048B4();

  v8 = v2[1];

  return v8();
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003464(&qword_10000C168, &qword_100004CF8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000042C4(a3, v25 - v10);
  v12 = sub_100004844();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004524(v11, &qword_10000C168, &qword_100004CF8);
  }

  else
  {
    sub_100004834();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100004824();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000047E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100004524(a3, &qword_10000C168, &qword_100004CF8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004524(a3, &qword_10000C168, &qword_100004CF8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1000026A0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HomeKitEventsDiagnosticExtension();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1000026FC(char *a1)
{
  v2 = sub_100003464(&qword_10000C1B0, &qword_100004D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v83 - v3;
  v5 = sub_1000046F4();
  v97 = *(v5 - 8);
  v98 = v5;
  __chkstk_darwin(v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004724();
  v109 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v92 = &v83 - v13;
  v14 = __chkstk_darwin(v12);
  v105 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v104 = &v83 - v17;
  __chkstk_darwin(v16);
  v19 = &v83 - v18;
  v108 = sub_100004764();
  v107 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v93 = &v83 - v24;
  v25 = __chkstk_darwin(v23);
  v103 = &v83 - v26;
  __chkstk_darwin(v25);
  v28 = &v83 - v27;
  v29 = [objc_opt_self() defaultManager];
  v106 = sub_100004864();
  if (v106)
  {
    v30 = type metadata accessor for HomeKitEventsDiagnosticExtension();
    v95 = sub_1000044DC(&qword_10000C170, v31, type metadata accessor for HomeKitEventsDiagnosticExtension, "e6");
    v96 = v30;
    sub_100004734();
    v32 = *(v109 + 16);
    v91 = a1;
    v101 = v32;
    v102 = v109 + 16;
    v32(v19, a1, v8);
    v33 = sub_100004754();
    v34 = sub_100004874();
    v35 = os_log_type_enabled(v33, v34);
    v99 = v29;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v111 = v94;
      *v36 = 136315138;
      sub_1000044DC(&qword_10000C1B8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v37 = sub_100004924();
      v39 = v38;
      v100 = *(v109 + 8);
      v100(v19, v8);
      v40 = sub_100003978(v37, v39, &v111);
      v41 = v108;

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Enumerating '%s' for attachments", v36, 0xCu);
      sub_1000040A4(v94);

      v42 = v107;
      v94 = *(v107 + 8);
      (v94)(v28, v41);
      v43 = v109;
    }

    else
    {

      v43 = v109;
      v100 = *(v109 + 8);
      v100(v19, v8);
      v42 = v107;
      v94 = *(v107 + 8);
      (v94)(v28, v108);
    }

    sub_100004854();
    sub_1000046E4();
    if (v112)
    {
      v55 = (v43 + 56);
      v89 = (v43 + 32);
      v90 = v43 + 8;
      v88 = v42 + 8;
      v56 = 1;
      *&v54 = 136315138;
      v87 = v54;
      do
      {
        while (1)
        {
          v57 = swift_dynamicCast();
          v58 = *v55;
          if ((v57 & 1) == 0)
          {
            break;
          }

          v58(v4, 0, 1, v8);
          v59 = v104;
          (*v89)(v104, v4, v8);
          sub_100004734();
          v101(v105, v59, v8);
          v60 = sub_100004754();
          v61 = sub_100004874();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v86 = v62;
            v85 = swift_slowAlloc();
            v110 = v85;
            *v62 = v87;
            v84 = v60;
            v63 = v105;
            v83 = sub_100004704();
            v65 = v64;
            v100(v63, v8);
            v66 = sub_100003978(v83, v65, &v110);

            v67 = v86;
            *(v86 + 1) = v66;
            v43 = v109;
            v68 = v84;
            _os_log_impl(&_mh_execute_header, v84, v61, "Adding '%s' to attachments", v67, 0xCu);
            sub_1000040A4(v85);

            (v94)(v103, v108);
            v100(v104, v8);
          }

          else
          {

            v69 = v100;
            v100(v105, v8);
            (v94)(v103, v108);
            v69(v104, v8);
            v43 = v109;
          }

          sub_1000046E4();
          v56 = 0;
          if (!v112)
          {
            (*(v97 + 8))(v7, v98);
LABEL_18:
            sub_100003464(&qword_10000C1C0, &qword_100004D58);
            v70 = (*(v43 + 80) + 32) & ~*(v43 + 80);
            v71 = swift_allocObject();
            *(v71 + 1) = xmmword_100004C90;
            v101(&v71[v70], v91, v8);

            v29 = v99;
            goto LABEL_27;
          }
        }

        v58(v4, 1, 1, v8);
        sub_100004524(v4, &qword_10000C1B0, &qword_100004D50);
        sub_1000046E4();
      }

      while (v112);
      (*(v97 + 8))(v7, v98);
      if ((v56 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      (*(v97 + 8))(v7, v98);
    }

    v72 = v93;
    sub_100004734();
    v73 = v92;
    v101(v92, v91, v8);
    v74 = sub_100004754();
    v75 = sub_100004874();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v111 = v77;
      *v76 = 136315138;
      sub_1000044DC(&qword_10000C1B8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v78 = sub_100004924();
      v80 = v79;
      v100(v73, v8);
      v81 = sub_100003978(v78, v80, &v111);

      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Directory '%s' is empty", v76, 0xCu);
      sub_1000040A4(v77);
    }

    else
    {

      v100(v73, v8);
    }

    (v94)(v72, v108);
    v29 = v99;
  }

  else
  {
    type metadata accessor for HomeKitEventsDiagnosticExtension();
    sub_1000044DC(&qword_10000C170, v44, type metadata accessor for HomeKitEventsDiagnosticExtension, "e6");
    sub_100004734();
    (*(v109 + 16))(v11, a1, v8);
    v45 = sub_100004754();
    v46 = sub_100004884();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v99 = v29;
      v48 = v47;
      v49 = swift_slowAlloc();
      v111 = v49;
      *v48 = 136315138;
      sub_1000044DC(&qword_10000C1B8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = sub_100004924();
      v52 = v51;
      (*(v109 + 8))(v11, v8);
      v53 = sub_100003978(v50, v52, &v111);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Could not enumerate '%s'", v48, 0xCu);
      sub_1000040A4(v49);

      v29 = v99;
    }

    else
    {

      (*(v109 + 8))(v11, v8);
    }

    (*(v107 + 8))(v22, v108);
  }

  v71 = &_swiftEmptyArrayStorage;
LABEL_27:

  return v71;
}

uint64_t sub_100003464(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000034AC()
{
  v1 = sub_100003464(&qword_10000C178, &qword_100004D00);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = sub_100003464(&qword_10000C180, &qword_100004D08);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003564()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000035AC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000365C;

  return sub_100001D84(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_10000365C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003750(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003788(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003880;

  return v6(a1);
}

uint64_t sub_100003880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100003978(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003A44(v11, 0, 0, 1, a1, a2);
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
    sub_1000040F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000040A4(v11);
  return v7;
}

unint64_t sub_100003A44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003B50(a5, a6);
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
    result = sub_100004914();
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

char *sub_100003B50(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003B9C(a1, a2);
  sub_100003CCC(&off_1000083C0);
  return v3;
}

char *sub_100003B9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003DB8(v5, 0);
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

  result = sub_100004914();
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
        v10 = sub_1000047F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003DB8(v10, 0);
        result = sub_100004904();
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

uint64_t sub_100003CCC(uint64_t result)
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

  result = sub_100003E2C(result, v11, 1, v3);
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

void *sub_100003DB8(uint64_t a1, uint64_t a2)
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

  sub_100003464(&qword_10000C198, &qword_100004D20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003464(&qword_10000C198, &qword_100004D20);
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

unint64_t sub_100003F20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000048D4(*(v2 + 40));

  return sub_100003F64(a1, v4);
}

unint64_t sub_100003F64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000045D8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000048E4();
      sub_100004584(v8);
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

char *sub_10000402C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000404C(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_100004094(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000040A4(void *a1)
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

uint64_t sub_1000040F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100004150(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003464(&qword_10000C1A0, &qword_100004D28);
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

uint64_t *sub_100004260(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000042C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003464(&qword_10000C168, &qword_100004CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004334(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000046E0;

  return sub_100003788(a1, v4);
}

uint64_t sub_1000043EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000365C;

  return sub_100003788(a1, v4);
}

uint64_t sub_1000044DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100004524(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003464(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004644(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004664(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10000C1C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C1C8);
    }
  }
}