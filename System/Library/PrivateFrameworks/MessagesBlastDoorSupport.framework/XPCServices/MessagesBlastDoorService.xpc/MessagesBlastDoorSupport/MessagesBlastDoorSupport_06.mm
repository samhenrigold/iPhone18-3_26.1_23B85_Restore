uint64_t sub_1000AA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = enum case for OrderPreviewImageType.merchantLogo(_:);
    goto LABEL_5;
  }

  if (!a1)
  {
    v3 = enum case for OrderPreviewImageType.productPhoto(_:);
LABEL_5:
    v4 = sub_1000C4224();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  v6 = sub_1000C5554();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v7 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C94D0;
  type metadata accessor for BDOrderPreviewMetadataImageKind(0);
  v9 = sub_1000C5284();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100014FBC();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1000C1A54(v6, &_mh_execute_header, v7, "WARNING: unknown value for BDOrderPreviewMetadataImageKind: %@", 62, 2, v8);

  v12 = sub_1000C5284();
  v14 = v13;
  sub_1000AB2C0();
  swift_allocError();
  *v15 = v12;
  v15[1] = v14;
  sub_1000C4FC4();
  sub_1000AB314(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000C4FD4();
  return swift_willThrow();
}

uint64_t sub_1000AAB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  sub_1000C4CB4();
  sub_1000C4CD4();
  (*(v5 + 8))(v7, v4);
  v9 = sub_1000C51F4();

  LOBYTE(v4) = [v8 fileExistsAtPath:v9 isDirectory:0];

  if (v4)
  {
    __chkstk_darwin(v10);
    *(&v12 - 2) = a2;
    *(&v12 - 1) = a1;
    sub_10001D1A8(0, &qword_1000FDD48, off_1000EEAD0);
    return sub_1000C4C94();
  }

  else
  {
    sub_1000C4FC4();
    sub_1000AB314(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

uint64_t sub_1000AAE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDD40, &qword_1000CFF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AAE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v36 = a3;
  v4 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v4 - 8);
  v39 = &v35 - v5;
  v43 = sub_1000C14E4();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C4CF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = [objc_opt_self() defaultManager];
  v38 = a1;
  sub_1000C4CB4();
  sub_1000C4CD4();
  v18 = *(v9 + 8);
  v18(v16, v8);
  v19 = sub_1000C51F4();

  v20 = [v17 isWritableFileAtPath:v19];

  if (v20)
  {
    sub_1000C4CB4();
    sub_1000C4CE4();
    v18(v14, v8);
    v21 = v41;
    v22 = sub_1000C1504();
    if (v21)
    {
      return (*(v42 + 8))(v7, v43);
    }

    else
    {
      v25 = v42;
      v26 = *(v42 + 8);
      v40 = v23;
      v41 = v22;
      v27 = v7;
      v28 = v43;
      v26(v27, v43);
      v29 = v37;
      sub_1000C4CB4();
      v30 = v39;
      sub_1000C4CE4();
      v18(v29, v8);
      (*(v25 + 56))(v30, 0, 1, v28);
      v31 = objc_allocWithZone(BDOrderPreviewMetadata);
      v33 = v40;
      v32 = v41;
      v34 = sub_1000AB378(v41, v40, v30);
      result = sub_100018CD0(v32, v33);
      *v36 = v34;
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_1000AB314(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1000AB2C0()
{
  result = qword_1000FDD50;
  if (!qword_1000FDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDD50);
  }

  return result;
}

uint64_t sub_1000AB314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000AB378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6.super.isa = sub_1000C1544().super.isa;
  v7 = sub_1000C14E4();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(a3, 1, v7) != 1)
  {
    sub_1000C1494(v9);
    v10 = v11;
    (*(v8 + 8))(a3, v7);
  }

  v16 = 0;
  v12 = [v4 initWithOrderData:v6.super.isa workingDirectory:v10 error:&v16];

  if (v12)
  {
    v13 = v16;
  }

  else
  {
    v14 = v16;
    sub_1000C1474();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1000AB4E8(void *a1, uint64_t a2)
{
  v5 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  __chkstk_darwin(v5 - 8);
  if (*a1)
  {
    sub_10002D3E8(a2, v10 - v6);
    v7 = a1[1];
    v10[1] = a1[5];
    v10[2] = v7;
    v10[3] = v2;
    v11 = a2;

    sub_1000C22B4();
    sub_100016058(a1);
    v8 = v11;
  }

  else
  {
    sub_100016058(a1);
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v8 = a2;
  }

  return sub_1000AB6AC(v8);
}

uint64_t sub_1000AB6AC(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AB76C@<X0>(uint64_t a3@<X8>)
{
  v20 = a3;
  v3 = sub_1000C2364();
  v21 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v23 = &v20 - v7;
  v8 = sub_1000C3F34();
  v22 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = sub_1000C1554();
  v16 = v15;
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000ABA98(&qword_1000FDD60, &type metadata accessor for NameAndPhotoSchema, &protocol conformance descriptor for NameAndPhotoSchema);
  v17 = v24;
  sub_1000C1444();
  if (v17)
  {

    return sub_100018CD0(v14, v16);
  }

  else
  {
    v24 = v6;
    (*(v22 + 16))(v11, v13, v8);
    sub_1000C2354();
    v18 = v21;
    (*(v21 + 16))(v24, v23, v3);
    sub_1000C2374();

    sub_100018CD0(v14, v16);
    (*(v18 + 8))(v23, v3);
    return (*(v22 + 8))(v13, v8);
  }
}

uint64_t sub_1000ABA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000ABB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v101 = a3;
  v96 = sub_1000C30A4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v104 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000124CC(&qword_1000FDD70, &qword_1000D00B0);
  __chkstk_darwin(v5 - 8);
  v107 = &v89 - v6;
  v111 = sub_1000C3454();
  v105 = *(v111 - 8);
  __chkstk_darwin(v111);
  v103 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FDD78, &qword_1000D00B8);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v89 - v14;
  __chkstk_darwin(v13);
  v112 = &v89 - v15;
  v16 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v16 - 8);
  v106 = &v89 - v17;
  v18 = sub_1000C4D84();
  v19 = *(v18 - 8);
  v109 = v18;
  v110 = v19;
  v20 = __chkstk_darwin(v18);
  v94 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v98 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v97 = &v89 - v25;
  __chkstk_darwin(v24);
  v27 = &v89 - v26;
  v28 = sub_1000C4CF4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100014F70();
  v32 = sub_1000C5844();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v34 = sub_1000C4CD4();
  v36 = v35;
  (*(v29 + 8))(v31, v28);
  v113 = v34;
  v114 = v36;
  v37 = sub_1000C4A84();
  v39 = v38;

  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100014FBC();
  *(v33 + 32) = v37;
  *(v33 + 40) = v39;
  v40 = v112;
  v41 = sub_1000C5554();
  sub_1000C1A44("Unpacking image at path %{public}@", 34, 2, &_mh_execute_header, v32, v41, v33);

  v42 = sub_1000C4CC4();
  v115 = v42;
  v116 = &protocol witness table for File;
  v43 = sub_10002E5DC(&v113);
  (*(*(v42 - 8) + 16))(v43, a1, v42);
  sub_1000C25B4();
  v44 = sub_1000C4D54();
  (*(*(v44 - 8) + 56))(v106, 1, 1, v44);
  sub_1000C4D64();
  v45 = sub_1000C25F4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 7);
  v47(v40, 1, 1, v45);
  sub_1000C4D74();
  sub_10001530C(&v113, v115);
  v48 = v108;
  v49 = v107;
  v50 = v111;
  sub_1000C2834();
  if (v48)
  {
    sub_100018F90(v40, &qword_1000FDD78, &qword_1000D00B8);
    (*(v110 + 8))(v27, v109);
    return sub_100015F68(&v113);
  }

  v92 = 0;
  v91 = v46 + 56;
  v108 = v45;
  v90 = v47;
  v106 = v46;
  v53 = v104;
  v52 = v105;
  v54 = v49;
  if ((*(v105 + 48))(v49, 1, v50) == 1)
  {
    sub_100018F90(v49, &qword_1000FDD70, &qword_1000D00B0);
    sub_100015F68(&v113);
    v55 = v101;
    v56 = v106;
    v57 = v40;
  }

  else
  {
    v89 = v27;
    v58 = v103;
    (*(v52 + 32))(v103, v54, v50);
    sub_100015F68(&v113);
    v59 = sub_1000C3414();
    if (!v60)
    {
      sub_1000C4FC4();
      sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      (*(v52 + 8))(v58, v50);
      sub_100018F90(v40, &qword_1000FDD78, &qword_1000D00B8);
      return (*(v110 + 8))(v89, v109);
    }

    v61 = v59;
    v62 = v60;
    if (sub_1000C25A4())
    {
      v63 = v61 == 0x682E63696C627570;
      v64 = v110;
      v65 = v53;
      if ((!v63 || v62 != 0xEB00000000636965) && (sub_1000C5C04() & 1) == 0)
      {

        sub_1000C4FC4();
        sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        (*(v105 + 8))(v103, v111);
        sub_100018F90(v112, &qword_1000FDD78, &qword_1000D00B8);
        return (*(v64 + 8))(v89, v109);
      }

      sub_1000C25C4();
      sub_1000C25B4();
      v113 = 0;
      v114 = 0;
      v66 = v97;
      v67 = v89;
      v68 = v92;
      sub_1000C4D34();
      if (v68)
      {

        (*(v105 + 8))(v103, v111);
        sub_100018F90(v112, &qword_1000FDD78, &qword_1000D00B8);
        return (*(v64 + 8))(v67, v109);
      }

      v82 = v109;
      (*(v64 + 16))(v98, v66, v109);
      (*(v95 + 104))(v65, enum case for StickerEffect.none(_:), v96);
      v83 = v99;
      sub_1000C25E4();
      (*(v64 + 8))(v66, v82);
      (*(v105 + 8))(v103, v111);
      v57 = v112;
      sub_100018F90(v112, &qword_1000FDD78, &qword_1000D00B8);
      v90(v83, 0, 1, v108);
      sub_1000ACE30(v83, v57);
      v27 = v67;
      v55 = v101;
      v92 = 0;
    }

    else
    {
      v107 = v61;
      v69 = sub_10009B58C(v61, v62);
      v70 = v110;
      if ((v69 & 1) != 0 && sub_1000C33F4() > 1)
      {
        v71 = sub_1000C5844();
        v72 = sub_1000C5554();
        sub_1000C1A44("Unpacking image with thumbnailer because it is animated", 55, 2, &_mh_execute_header, v71, v72, _swiftEmptyArrayStorage);

        v73 = sub_1000C25C4();
        v74 = v103;
        v75 = sub_1000C33F4();
        v76 = sub_1000C25D4();
        v77 = v92;
        sub_1000ACEA0(v73, v75, v76);
        v56 = v106;
        if (v77)
        {

          (*(v105 + 8))(v74, v111);
          sub_100018F90(v112, &qword_1000FDD78, &qword_1000D00B8);
          return (*(v110 + 8))(v89, v109);
        }

        sub_1000C25B4();
        sub_1000C4D44();
        v57 = v112;
        v92 = 0;
        sub_1000C33F4();
        sub_1000C3434();
        (*(v95 + 104))(v104, enum case for StickerEffect.none(_:), v96);
        v88 = v93;
        sub_1000C25E4();
        (*(v105 + 8))(v74, v111);
        sub_100018F90(v57, &qword_1000FDD78, &qword_1000D00B8);
        v90(v88, 0, 1, v108);
        sub_1000ACE30(v88, v57);
        v27 = v89;
        v55 = v101;
        goto LABEL_21;
      }

      v78 = sub_1000C5844();
      v79 = sub_1000C5554();
      sub_1000C1A44("Unpacking image with software HEIF->ASTC decoder", 48, 2, &_mh_execute_header, v78, v79, _swiftEmptyArrayStorage);

      v27 = v89;
      (*(v70 + 16))(v98, v89, v109);
      v80 = v103;
      sub_1000C33F4();
      sub_1000C3404();
      sub_1000C3424();
      sub_1000C3094();
      sub_1000C3434();
      v81 = v99;
      sub_1000C25E4();
      (*(v105 + 8))(v80, v111);
      v57 = v112;
      sub_100018F90(v112, &qword_1000FDD78, &qword_1000D00B8);
      v90(v81, 0, 1, v108);
      sub_1000ACE30(v81, v57);
      v55 = v101;
    }

    v56 = v106;
  }

LABEL_21:
  v84 = v100;
  sub_1000ACD78(v57, v100);
  v85 = v108;
  if ((*(v56 + 6))(v84, 1, v108) == 1)
  {
    sub_100018F90(v84, &qword_1000FDD78, &qword_1000D00B8);
    v86 = sub_1000C5844();
    v87 = sub_1000C5554();
    sub_1000C1A44("Failed to generate astc image", 29, 2, &_mh_execute_header, v86, v87, _swiftEmptyArrayStorage);

    sub_1000C4FC4();
    sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018F90(v57, &qword_1000FDD78, &qword_1000D00B8);
    return (*(v110 + 8))(v27, v109);
  }

  else
  {
    sub_100018F90(v57, &qword_1000FDD78, &qword_1000D00B8);
    (*(v110 + 8))(v27, v109);
    return (*(v56 + 4))(v55, v84, v85);
  }
}

uint64_t sub_1000ACCE8@<X0>(uint64_t a2@<X8>)
{
  sub_1000C5594();
  v3 = sub_1000C3454();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_1000ACD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDD78, &qword_1000D00B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ACDE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000ACE30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDD78, &qword_1000D00B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ACEA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    sub_1000C4FC4();
    sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v3 = a2 / a3 * result;
    if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return v3;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1000AD004(uint64_t a1)
{
  result = sub_100012514();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000AD0CC(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v14 = a3;
  v4 = sub_1000C4ED4();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C19B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000AD93C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    v12 = v14;
    sub_1000C1994();
    v12(v6);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1000AD2C4@<X0>(void (*a3)(char *, char *, uint64_t)@<X8>)
{
  v14 = a3;
  v4 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1000C19B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000AD93C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    v12 = sub_1000C3B84();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_10002C370(v6, v14);
    sub_1000AB6AC(v6);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1000AD610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v15 = a4;
  v5 = sub_1000C4ED4();
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C19B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000AD93C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v4)
  {
    v13 = v15;
    sub_1000C1994();
    v13(v7);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1000AD93C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AD984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1000AD9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000ADA48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[1] = a4;
  v7 = sub_1000124CC(&qword_1000FDD98, &qword_1000D01D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10001530C(a1, a1[3]);
  sub_1000AE128();
  sub_1000C5D04();
  v15 = 0;
  sub_1000C5AF4();
  if (!v5)
  {
    v14 = 1;
    sub_1000C5B74();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000ADBE8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000ADF5C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000ADC44(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7299942;
  }

  else
  {
    v2 = 7234918;
  }

  if (*a2)
  {
    v3 = 7299942;
  }

  else
  {
    v3 = 7234918;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000ADCBC()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000ADD24(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000ADD70()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

void sub_1000ADDD4(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F2168;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1000ADE34(uint64_t *a1@<X8>)
{
  v2 = 7234918;
  if (*v1)
  {
    v2 = 7299942;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1000ADE5C()
{
  if (*v0)
  {
    return 7299942;
  }

  else
  {
    return 7234918;
  }
}

void sub_1000ADE80(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F2168;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_1000ADEE4(uint64_t a1)
{
  v2 = sub_1000AE128();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ADF20(uint64_t a1)
{
  v2 = sub_1000AE128();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ADF5C(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FDD88, &qword_1000D01D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000AE128();
  sub_1000C5CF4();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1000C5A04();
    v10 = 1;
    sub_1000C5A84();
    (*(v4 + 8))(v6, v3);
  }

  sub_100015F68(a1);
  return v7;
}

unint64_t sub_1000AE128()
{
  result = qword_1000FDD90;
  if (!qword_1000FDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDD90);
  }

  return result;
}

unint64_t sub_1000AE190()
{
  result = qword_1000FDDA0;
  if (!qword_1000FDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDA0);
  }

  return result;
}

unint64_t sub_1000AE1E8()
{
  result = qword_1000FDDA8;
  if (!qword_1000FDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDA8);
  }

  return result;
}

unint64_t sub_1000AE240()
{
  result = qword_1000FDDB0;
  if (!qword_1000FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDB0);
  }

  return result;
}

uint64_t sub_1000AE2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = sub_1000C4CC4();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v8 = sub_1000C4CF4();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000AE414, 0, 0);
}

uint64_t sub_1000AE414(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[12];
  v5 = v1[9];
  v24 = v1[11];
  v25 = v1[10];
  v23 = v1[8];
  v6 = v1[5];
  v26 = v1[6];
  v27 = v1[7];
  v22 = sub_1000C5554();
  sub_100014F70();
  v7 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v9 = sub_1000C4CD4();
  v11 = v10;
  (*(v2 + 8))(v3, v4);
  v1[2] = v9;
  v1[3] = v11;
  v12 = sub_1000C4A84();
  v14 = v13;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100014FBC();
  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  sub_1000C1A54(v22, &_mh_execute_header, v7, "Processing workout at: %@", 25, 2, v8);

  (*(v5 + 16))(v24, v6, v23);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v1[15] = v16;
  (*(v5 + 32))(v16 + v15, v24, v23);
  v17 = (v16 + ((v25 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v26;
  v17[1] = v27;

  v18 = swift_task_alloc();
  v1[16] = v18;
  v19 = sub_1000C3374();
  *v18 = v1;
  v18[1] = sub_1000AE690;
  v20 = v1[4];

  return File.withResource<A>(_:)(v20, &unk_1000D03C0, v16, v19);
}

uint64_t sub_1000AE690()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000AE7E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000AE7E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  sub_1000C3354();
  v4[23] = swift_task_alloc();
  sub_1000C3334();
  v4[24] = swift_task_alloc();
  v5 = sub_1000C14E4();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = sub_1000C4CF4();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000AE9D4, 0, 0);
}

uint64_t sub_1000AE9D4(uint64_t a1)
{
  v3 = v1[29];
  v2 = v1[30];
  v4 = v1[28];
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v3 + 8))(v2, v4);
  v1[31] = sub_1000C1504();
  v1[32] = v5;
  (*(v1[26] + 8))(v1[27], v1[25]);
  v6 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v1[33] = isa;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1000AECD8;
  v8 = swift_continuation_init();
  v1[17] = sub_1000124CC(&qword_1000FDDC0, &qword_1000D03C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000AF040;
  v1[13] = &unk_1000F5C98;
  v1[14] = v8;
  [v6 getPreviewMetadata:isa withCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1000AECD8()
{

  return _swift_task_switch(sub_1000AEDB8, 0, 0);
}

id sub_1000AEDB8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    [v1 activityType];
    [v1 isIndoor];
    [v1 configurationType];
    sub_1000C3344();
    result = [v1 configurationName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    sub_1000C5224();

    [v1 goalTypeIdentifier];
    sub_1000C3364();
    sub_1000C3324();
    sub_100018CD0(v5, v4);

    v6 = *(v0 + 8);
  }

  else
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    sub_1000C4FC4();
    sub_1000AF314(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CD0(v7, v8);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1000AF040(uint64_t a1, void *a2)
{
  v3 = sub_10001530C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000AF0A4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10003A8F0;

  return sub_1000AE2EC(a1, a2, v8, v7, v6);
}

uint64_t sub_1000AF158()
{
  v1 = sub_1000C4CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AF1F8(uint64_t a1)
{
  v4 = *(sub_1000C4CC4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003A8F0;

  return sub_1000AE85C(a1, v1 + v5, v7, v8);
}

uint64_t sub_1000AF314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AF384(uint64_t a1)
{
  result = sub_100012B50();
  *(a1 + 8) = result;
  return result;
}

void sub_1000AF3F4(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v82 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v3 = &v72 - v2;
  v4 = sub_1000C5974();
  v83 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v81 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v85 = &v72 - v8;
  __chkstk_darwin(v7);
  v10 = &v72 - v9;
  v11 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v11 - 8);
  v86 = &v72 - v12;
  v13 = sub_1000C1974();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C4FC4();
  v87 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C1984();
  if (v21 >> 60 == 15)
  {
    sub_100014F70();
    v22 = sub_1000C5824();
    v23 = sub_1000C5554();
    sub_1000C1A44("Missing encrypted data for SMSFilteringSettingsMessage", 54, 2, &_mh_execute_header, v22, v23, _swiftEmptyArrayStorage);

    sub_1000B0254();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v78 = v17;
  v79 = v20;
  v80 = v21;
  isa = sub_1000C1544().super.isa;
  v25 = [(objc_class *)isa _imOptionallyDecompressData];

  v89 = sub_1000C1564();
  v27 = v26;

  v88 = v27;
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v30 = *(v89 + 16);
      v29 = *(v89 + 24);
      v31 = __OFSUB__(v29, v30);
      v32 = v29 - v30;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v32 > 0)
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    (*(v14 + 104))(v16, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v13);
    sub_1000C1964();
    (*(v14 + 8))(v16, v13);
    sub_1000C4FB4();
    sub_100014F70();
    v54 = sub_1000C5824();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000C94D0;
    v57 = v86;
    v56 = v87;
    v85 = *(v87 + 16);
    v58 = v78;
    (v85)(v86, v19, v78);
    (*(v56 + 56))(v57, 0, 1, v58);
    v59 = sub_1000C4A84();
    v61 = v60;
    sub_100018F90(v57, &qword_1000FC438, &unk_1000C9DC0);
    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = sub_100014FBC();
    *(v55 + 32) = v59;
    *(v55 + 40) = v61;
    v62 = sub_1000C5554();
    sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v54, v62, v55);

    sub_1000B02A8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    (v85)(v63, v19, v58);
    swift_willThrow();
    sub_100018CBC(v79, v80);
    sub_100018CD0(v89, v88);
    (*(v56 + 8))(v19, v58);
    return;
  }

  if (!v28)
  {
    if (!BYTE6(v88))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v89), v89))
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (HIDWORD(v89) - v89 <= 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_1000C1464();
  swift_allocObject();
  v33 = sub_1000C1454();
  sub_1000B02F0();
  v77 = v33;
  v34 = v84;
  sub_1000C1444();
  if (v34)
  {
    v90 = v34;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    if (swift_dynamicCast())
    {

      v35 = v83;
      (*(v83 + 32))(v85, v10, v4);
      v84 = sub_100014F70();
      v72 = sub_1000C5824();
      v82 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v36 = swift_allocObject();
      v76 = xmmword_1000C94D0;
      *(v36 + 16) = xmmword_1000C94D0;
      v73 = *(v35 + 16);
      v74 = v35 + 16;
      v73(v3, v85, v4);
      (*(v35 + 56))(v3, 0, 1, v4);
      v37 = sub_1000C4A84();
      v39 = v38;
      sub_100018F90(v3, &qword_1000FC430, &unk_1000C9B00);
      *(v36 + 56) = &type metadata for String;
      v75 = sub_100014FBC();
      *(v36 + 64) = v75;
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      v40 = sub_1000C5554();
      v41 = v72;
      sub_1000C1A44("SMSFilteringSettingsDictionary unpacking error: %{public}@", 58, 2, &_mh_execute_header, v72, v40, v36);

      (*(v14 + 104))(v16, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v13);
      sub_1000C1964();
      (*(v14 + 8))(v16, v13);
      v73(v81, v85, v4);
      sub_1000C4FA4();
      v42 = sub_1000C5824();
      v43 = swift_allocObject();
      *(v43 + 16) = v76;
      v44 = v87;
      v84 = v4;
      v45 = v19;
      v82 = *(v87 + 16);
      v46 = v86;
      v47 = v78;
      v82(v86, v45, v78);
      (*(v44 + 56))(v46, 0, 1, v47);
      v48 = sub_1000C4A84();
      v50 = v49;
      sub_100018F90(v46, &qword_1000FC438, &unk_1000C9DC0);
      v51 = v75;
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = v51;
      *(v43 + 32) = v48;
      *(v43 + 40) = v50;
      v52 = sub_1000C5554();
      sub_1000C1A44("SMSFilteringSettingsDictionary unpacking explosion: %{public}@", 62, 2, &_mh_execute_header, v42, v52, v43);

      sub_1000B02A8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v82(v53, v45, v47);
      swift_willThrow();
      sub_100018CBC(v79, v80);

      sub_100018CD0(v89, v88);
      (*(v44 + 8))(v45, v47);
      (*(v83 + 8))(v85, v84);
    }

    else
    {

      sub_100014F70();
      v66 = sub_1000C5824();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1000C94D0;
      v90 = v34;
      v68 = sub_1000C4A84();
      v70 = v69;
      *(v67 + 56) = &type metadata for String;
      *(v67 + 64) = sub_100014FBC();
      *(v67 + 32) = v68;
      *(v67 + 40) = v70;
      v71 = sub_1000C5554();
      sub_1000C1A44("SMSFilteringSettingsDictionary unpacking unknown error: %{public}@", 66, 2, &_mh_execute_header, v66, v71, v67);

      swift_getErrorValue();
      swift_getDynamicType();
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_1000C5944(22);

      v90 = 0xD000000000000014;
      v91 = 0x80000001000D5330;
      v92._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v92);

      sub_1000B02A8(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v89, v88);
      sub_100018CBC(v79, v80);
    }
  }

  else
  {
    sub_100014F70();

    v64 = sub_1000C5824();
    v65 = sub_1000C5554();
    sub_1000C1A44("Unpacking SMSFilteringSettingsDictionary", 40, 2, &_mh_execute_header, v64, v65, _swiftEmptyArrayStorage);

    sub_1000C4954();

    sub_1000C4964();
    sub_100018CBC(v79, v80);
    sub_100018CD0(v89, v88);
  }
}

uint64_t sub_1000B00E0@<X0>(void (*a3)(char *, char *, uint64_t)@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000B02A8(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_1000AF3F4(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1000B0254()
{
  result = qword_1000FDDD0;
  if (!qword_1000FDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDD0);
  }

  return result;
}

uint64_t sub_1000B02A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B02F0()
{
  result = qword_1000FDDD8;
  if (!qword_1000FDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDD8);
  }

  return result;
}

uint64_t sub_1000B0354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1000C3244();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = a1[3];
  v16 = a1[4];
  sub_10001530C(a1, v15);
  v43 = (*(v16 + 8))(v15, v16);
  v46 = v17;
  v18 = a1[3];
  v19 = a1[4];
  sub_10001530C(a1, v18);
  v42 = (*(v19 + 16))(v18, v19);
  v45 = v20;
  v21 = [objc_opt_self() sharedInstance];
  v22 = a1[3];
  v23 = a1[4];
  sub_10001530C(a1, v22);
  (*(v23 + 32))(v22, v23);
  if (v24 || (v25 = a1[3], v26 = a1[4], sub_10001530C(a1, v25), (*(v26 + 24))(v25, v26), v27))
  {
    v28 = objc_allocWithZone(MBDMessageToSuperParserContext);
    v29 = sub_1000C51F4();

    v30 = [v28 initWithContent:v29];

    if (![v21 parseContext:v30])
    {

      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      return sub_100015F68(a1);
    }

    _AttributedString.init(fromNSAttributedString:)([v30 body], v12);
    if (v2)
    {

      return sub_100015F68(a1);
    }

    v31 = sub_1000C3D24();
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
    sub_1000B1500(v12, v14);
  }

  else
  {
    v32 = a1[3];
    v33 = a1[4];
    sub_10001530C(a1, v32);
    (*(v33 + 16))(v32, v33);
    if (v34)
    {
    }

    v35 = sub_1000C3D24();
    (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  }

  v36 = v44;
  sub_1000B1428(v14, v9);
  sub_1000C3224();
  sub_1000B1498(v14);

  if (!v2)
  {
    (*(v39 + 32))(v41, v36, v40);
  }

  return sub_100015F68(a1);
}

void __swiftcall MessageEditedPartDictionary.init(xhtmlBody:)(MessagesBlastDoorService::MessageEditedPartDictionary *__return_ptr retstr, Swift::String_optional xhtmlBody)
{
  v6 = xhtmlBody;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10[0] = xhtmlBody;
  memset(&v10[1], 0, 48);
  sub_100060550(&v6, &v5);
  sub_1000605AC(v10);
  v3 = v7;
  retstr->xhtmlBody = v6;
  retstr->plainTextSubject = v3;
  v4 = v9;
  retstr->plainTextBody = v8;
  retstr->auxXHTMLBody = v4;
}

uint64_t MessageContent.init(messageEditedPartDictionary:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v8[3] = &type metadata for MessageEditedPartDictionary;
  v8[4] = &off_1000F5D70;
  v4 = swift_allocObject();
  v8[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  return sub_1000B0354(v8, a2);
}

uint64_t sub_1000B0908()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1000B0958()
{
  v1 = 0x646F426C6D746878;
  v2 = 0x7865546E69616C70;
  if (*v0 != 2)
  {
    v2 = 0x4C4D544858787561;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000B09F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B0DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B0A18(uint64_t a1)
{
  v2 = sub_1000B0C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0A54(uint64_t a1)
{
  v2 = sub_1000B0C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageEditedPartDictionary.encode(to:)(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FDDE0, &qword_1000D04B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001530C(a1, a1[3]);
  sub_1000B0C50();
  sub_1000C5D04();
  v8[15] = 0;
  sub_1000C5AF4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000C5AF4();
  v8[13] = 2;
  sub_1000C5AF4();
  v8[12] = 3;
  sub_1000C5AF4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000B0C50()
{
  result = qword_1000FDDE8;
  if (!qword_1000FDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDE8);
  }

  return result;
}

double MessageEditedPartDictionary.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000B0F40(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1000B0D00()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000B0D30()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1000B0D60()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000B0D90()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1000B0DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F426C6D746878 && a2 == 0xE900000000000079;
  if (v4 || (sub_1000C5C04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000D8E70 == a2 || (sub_1000C5C04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865546E69616C70 && a2 == 0xED000079646F4274 || (sub_1000C5C04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C4D544858787561 && a2 == 0xEC00000079646F42)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000C5C04();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000B0F40@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FDE08, &unk_1000D06C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10001530C(a1, a1[3]);
  sub_1000B0C50();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    return sub_1000605AC(&v35);
  }

  else
  {
    LOBYTE(v35) = 0;
    v9 = sub_1000C5A04();
    v29 = v6;
    v30 = v10;
    v28 = a2;
    LOBYTE(v35) = 1;
    v11 = sub_1000C5A04();
    v13 = v12;
    LOBYTE(v35) = 2;
    v14 = sub_1000C5A04();
    v16 = v15;
    v43 = 3;
    v17 = sub_1000C5A04();
    v18 = *(v29 + 8);
    v29 = v17;
    v19 = v8;
    v21 = v20;
    v18(v19, v5);
    v22 = v30;
    *&v31 = v9;
    *(&v31 + 1) = v30;
    *&v32 = v11;
    *(&v32 + 1) = v13;
    *&v33 = v14;
    *(&v33 + 1) = v16;
    *&v34 = v29;
    *(&v34 + 1) = v21;
    sub_100060550(&v31, &v35);
    sub_100015F68(a1);
    v35 = v9;
    v36 = v22;
    v37 = v11;
    v38 = v13;
    v39 = v14;
    v40 = v16;
    v41 = v29;
    v42 = v21;
    result = sub_1000605AC(&v35);
    v24 = v32;
    v25 = v28;
    *v28 = v31;
    v25[1] = v24;
    v26 = v34;
    v25[2] = v33;
    v25[3] = v26;
  }

  return result;
}

uint64_t sub_1000B1240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1000B129C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000B1324()
{
  result = qword_1000FDDF0;
  if (!qword_1000FDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDF0);
  }

  return result;
}

unint64_t sub_1000B137C()
{
  result = qword_1000FDDF8;
  if (!qword_1000FDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDF8);
  }

  return result;
}

unint64_t sub_1000B13D4()
{
  result = qword_1000FDE00;
  if (!qword_1000FDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE00);
  }

  return result;
}

uint64_t sub_1000B1428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1498(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B1500(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1570(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6580578;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 101;
    }

    else
    {
      v4 = 114;
    }

    v3 = 0xE100000000000000;
  }

  else
  {
    if (a1 == 2)
    {
      v4 = 6581616;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0xE300000000000000;
        v4 = 6580578;
        goto LABEL_12;
      }

      v4 = 6581346;
    }

    v3 = 0xE300000000000000;
  }

LABEL_12:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 101;
    }

    else
    {
      v7 = 114;
    }

    v6 = 0xE100000000000000;
    if (v4 != v7)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 6581346;
    }

    if (a2 == 2)
    {
      v5 = 6581616;
    }

    else
    {
      v5 = v2;
    }

    v6 = 0xE300000000000000;
    if (v4 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v3 != v6)
  {
LABEL_26:
    v8 = sub_1000C5C04();
    goto LABEL_27;
  }

  v8 = 1;
LABEL_27:

  return v8 & 1;
}

uint64_t sub_1000B1698(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x77736E656770;
  if (a1 != 5)
  {
    v5 = 0x637A736E656770;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1701667182;
  if (a1 != 3)
  {
    v7 = 0x68736E656770;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C737365636361;
  if (a1 != 1)
  {
    v9 = 0x692D656C646E7562;
    v8 = 0xE900000000000064;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64692D6D616461;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C737365636361)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE900000000000064;
        if (v10 != 0x692D656C646E7562)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64692D6D616461)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x77736E656770)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x637A736E656770)
      {
LABEL_39:
        v13 = sub_1000C5C04();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x68736E656770)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1000B18B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 101;
    }

    else
    {
      v3 = 115;
    }

    v4 = 0xE100000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE100000000000000;
    v3 = 114;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 102;
    }

    else
    {
      v3 = 29539;
    }

    if (v2 == 3)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 101;
    }

    else
    {
      v6 = 115;
    }

    v5 = 0xE100000000000000;
    if (v3 != v6)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE100000000000000;
    if (v3 != 114)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE100000000000000;
    if (v3 != 102)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    if (v3 != 29539)
    {
LABEL_29:
      v7 = sub_1000C5C04();
      goto LABEL_30;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

  v7 = 1;
LABEL_30:

  return v7 & 1;
}

uint64_t sub_1000B19E4(char a1, char a2)
{
  if (*&aO_0[8 * a1] == *&aO_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000B1A4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6450529;
  v3 = a1;
  if (a1 <= 3u)
  {
    v9 = 6516065;
    v10 = 6581601;
    if (a1 == 2)
    {
      v10 = 6450529;
    }

    if (a1)
    {
      v9 = 7564641;
    }

    if (a1 <= 1u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v10;
    }

    v8 = 0xE300000000000000;
  }

  else
  {
    v4 = 7631733;
    v5 = 7496296;
    if (a1 != 7)
    {
      v5 = 7368052;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v6 = 1650552161;
    if (a1 != 4)
    {
      v6 = 1634954593;
    }

    if (a1 <= 5u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v3 <= 5)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 6581601;
      }
    }

    else
    {
      if (a2)
      {
        v11 = 0xE300000000000000;
        if (v7 != 7564641)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v2 = 6516065;
    }

    v11 = 0xE300000000000000;
    if (v7 != v2)
    {
      goto LABEL_47;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v11 = 0xE400000000000000;
      if (v7 != 1650552161)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v7 != 1634954593)
      {
LABEL_47:
        v12 = sub_1000C5C04();
        goto LABEL_48;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (a2 == 6)
    {
      if (v7 != 7631733)
      {
        goto LABEL_47;
      }
    }

    else if (a2 == 7)
    {
      if (v7 != 7496296)
      {
        goto LABEL_47;
      }
    }

    else if (v7 != 7368052)
    {
      goto LABEL_47;
    }
  }

LABEL_45:
  if (v8 != v11)
  {
    goto LABEL_47;
  }

  v12 = 1;
LABEL_48:

  return v12 & 1;
}

uint64_t sub_1000B1C54(char a1, char a2)
{
  if (*&aSait_1[8 * a1] == *&aSait_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000B1CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778213;
  v3 = a1;
  v4 = 7630949;
  v5 = 0xE300000000000000;
  v6 = 29797;
  if (a1 != 4)
  {
    v6 = 29554;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE200000000000000;
  }

  v7 = 6910053;
  if (a1 != 1)
  {
    v7 = 6451301;
  }

  if (!a1)
  {
    v7 = 6778213;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 2)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE300000000000000;
      if (v8 != 7630949)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (a2 == 4)
      {
        if (v8 != 29797)
        {
          goto LABEL_31;
        }
      }

      else if (v8 != 29554)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v10 = 0xE300000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 6910053)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 6451301;
    }

    if (v8 != v2)
    {
LABEL_31:
      v11 = sub_1000C5C04();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v9 != v10)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_1000B1E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 30311;
    }

    else
    {
      v3 = 30320;
    }

    v4 = 0xE200000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE100000000000000;
    v3 = 110;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 6580583;
    }

    else
    {
      v3 = 112;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 30311;
    }

    else
    {
      v6 = 30320;
    }

    v5 = 0xE200000000000000;
    if (v3 != v6)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE100000000000000;
    if (v3 != 110)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 6580583)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0xE100000000000000;
    if (v3 != 112)
    {
LABEL_29:
      v7 = sub_1000C5C04();
      goto LABEL_30;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

  v7 = 1;
LABEL_30:

  return v7 & 1;
}

uint64_t sub_1000B1F64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 110;
    }

    else
    {
      v3 = 7630191;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 6580583;
    }

    else
    {
      v3 = 112;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 112;
  v7 = 0xE100000000000000;
  v8 = 110;
  if (a2 != 2)
  {
    v8 = 7630191;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v6 = 6580583;
    v5 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000C5C04();
  }

  return v11 & 1;
}

uint64_t sub_1000B2064(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D746E65746E6F63;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xEA00000000006469;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001000D4FC0;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1635017060;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x80000001000D4FE0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x2D746E65746E6F63;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xEA00000000006469;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 1635017060;
    v6 = 0x80000001000D4FE0;
    if (a2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000D4FC0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_1000C5C04();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_1000B21EC()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1000B221C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1000B224C()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1000B227C()
{
  v1 = *(v0 + 56);

  return v1;
}

void MessageDictionary.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a2;
  v3 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  __chkstk_darwin(v3 - 8);
  v5 = &v205[-v4];
  v6 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v6 - 8);
  v228 = sub_1000124CC(&qword_1000FDE10, &qword_1000D06D0);
  v7 = *(v228 - 8);
  __chkstk_darwin(v228);
  v9 = &v205[-v8];
  v10 = type metadata accessor for MessageDictionary(0);
  __chkstk_darwin(v10);
  v12 = &v205[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v231 = a1;
  sub_10001530C(a1, v13);
  sub_1000421CC();
  v229 = v9;
  v14 = v230;
  sub_1000C5CF4();
  if (v14)
  {
    sub_100015F68(v231);
    return;
  }

  v230 = v7;
  v225 = v10;
  v226 = v12;
  LOBYTE(v233) = 0;
  v15 = sub_1000C5A44();
  v16 = v225;
  v17 = v226;
  v18 = &v226[v225[21]];
  *v18 = v15;
  v18[8] = v19 & 1;
  LOBYTE(v233) = 1;
  v20 = sub_1000C5A04();
  v21 = (v17 + v16[22]);
  *v21 = v20;
  v21[1] = v22;
  sub_1000C1614();
  LOBYTE(v233) = 2;
  sub_1000B684C(&qword_1000FDC60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000C5A54();
  sub_10001D860(0, v17 + v16[18], &qword_1000FC520, &qword_1000C9D20);
  LOBYTE(v233) = 3;
  v23 = sub_1000C5A04();
  v24 = (v17 + v16[23]);
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v233) = 4;
  v26 = sub_1000C5A04();
  v27 = (v17 + v16[24]);
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v233) = 5;
  v29 = sub_1000C5A84();
  v30 = v17 + v16[25];
  *v30 = v29;
  v30[8] = v31 & 1;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  LOBYTE(v232) = 6;
  v224 = sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5A54();
  *v17 = v233;
  LOBYTE(v233) = 7;
  v32 = sub_1000C5A04();
  v34 = v226;
  *(v226 + 1) = v32;
  *(v34 + 2) = v33;
  LOBYTE(v233) = 8;
  v35 = sub_1000C5A04();
  v223 = 0;
  v36 = v226;
  *(v226 + 3) = v35;
  *(v36 + 4) = v37;
  LOBYTE(v233) = 9;
  v38 = v223;
  v39 = sub_1000C5A04();
  v223 = v38;
  if (v38)
  {
    (*(v230 + 8))(v229, v228);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    LODWORD(v230) = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    goto LABEL_15;
  }

  v47 = v226;
  *(v226 + 5) = v39;
  *(v47 + 6) = v40;
  LOBYTE(v233) = 10;
  v48 = v223;
  v49 = sub_1000C5A04();
  v223 = v48;
  if (v48)
  {
    (*(v230 + 8))(v229, v228);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    LODWORD(v230) = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    goto LABEL_15;
  }

  v51 = v226;
  *(v226 + 7) = v49;
  *(v51 + 8) = v50;
  LOBYTE(v233) = 11;
  v52 = v223;
  v53 = sub_1000C5A14();
  v223 = v52;
  if (v52 || (v226[72] = v53, LOBYTE(v233) = 12, v54 = v223, v55 = sub_1000C5A14(), (v223 = v54) != 0) || (v226[73] = v55, LOBYTE(v233) = 13, v56 = v223, v57 = sub_1000C5A14(), (v223 = v56) != 0) || (v226[96] = v57, LOBYTE(v233) = 14, v58 = v223, v59 = sub_1000C5A14(), (v223 = v58) != 0) || (v226[98] = v59, LOBYTE(v233) = 15, v60 = v223, v61 = sub_1000C5A14(), (v223 = v60) != 0) || (v226[99] = v61, LOBYTE(v232) = 16, sub_100042DD4(), v62 = v223, sub_1000C5A54(), (v223 = v62) != 0))
  {
    (*(v230 + 8))(v229, v228);
    v43 = 0;
    v44 = 0;
    LODWORD(v230) = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    goto LABEL_15;
  }

  *(v226 + 5) = v233;
  LOBYTE(v233) = 17;
  v75 = v223;
  v76 = sub_1000C5A14();
  v223 = v75;
  if (v75 || (v226[97] = v76, LOBYTE(v233) = 18, v77 = v223, v78 = sub_1000C5A34(), (v223 = v77) != 0) || (v80 = v226, *(v226 + 13) = v78, v80[112] = v79 & 1, LOBYTE(v233) = 19, v81 = v223, v82 = sub_1000C5A04(), (v223 = v81) != 0))
  {
    (*(v230 + 8))(v229, v228);
    v44 = 0;
    LODWORD(v230) = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    goto LABEL_15;
  }

  v84 = v226;
  *(v226 + 15) = v82;
  *(v84 + 16) = v83;
  LOBYTE(v233) = 22;
  v85 = v223;
  v86 = sub_1000C5A04();
  v223 = v85;
  if (v85)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    goto LABEL_15;
  }

  v88 = &v226[v225[26]];
  *v88 = v86;
  v88[1] = v87;
  LOBYTE(v232) = 23;
  v89 = v223;
  sub_1000C5A54();
  v223 = v89;
  if (v89)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v209 = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    goto LABEL_15;
  }

  *&v226[v225[27]] = v233;
  v239 = 24;
  sub_1000B67F8();
  v90 = v223;
  sub_1000C5A54();
  v223 = v90;
  if (v90)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v210 = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    goto LABEL_15;
  }

  v91 = &v226[v225[28]];
  v92 = v236[0];
  *(v91 + 2) = v235;
  *(v91 + 3) = v92;
  *(v91 + 61) = *(v236 + 13);
  v93 = v234;
  *v91 = v233;
  *(v91 + 1) = v93;
  LOBYTE(v232) = 25;
  v94 = v223;
  v95 = sub_1000C5A04();
  v223 = v94;
  if (v94)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v217 = 0;
    v215 = 0;
    v45 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    goto LABEL_15;
  }

  v97 = &v226[v225[31]];
  *v97 = v95;
  v97[1] = v96;
  LOBYTE(v232) = 26;
  v98 = v223;
  v99 = sub_1000C5A04();
  v223 = v98;
  if (v98)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v217 = 0;
    v215 = 0;
    v206 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v45 = 1;
    goto LABEL_15;
  }

  v101 = &v226[v225[32]];
  *v101 = v99;
  v101[1] = v100;
  LOBYTE(v232) = 27;
  v102 = v223;
  v103 = sub_1000C5A04();
  v223 = v102;
  if (v102)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v217 = 0;
    v215 = 0;
    v207 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v45 = 1;
    v206 = 1;
    goto LABEL_15;
  }

  v105 = &v226[v225[33]];
  *v105 = v103;
  v105[1] = v104;
  v238 = 28;
  v106 = v223;
  sub_1000C5A54();
  v223 = v106;
  if (v106)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v217 = 0;
    v215 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v107 = &v240 + 4;
LABEL_105:
    *(v107 - 64) = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    goto LABEL_15;
  }

  *&v226[v225[30]] = v232;
  v238 = 30;
  v108 = v223;
  sub_1000C5A54();
  v223 = v108;
  if (v108)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v217 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v107 = &v241;
    goto LABEL_105;
  }

  *&v226[v225[34]] = v232;
  v238 = 31;
  v109 = v223;
  sub_1000C5A54();
  v223 = v109;
  if (v109)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v217 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v110 = &v240 + 4;
LABEL_110:
    *(v110 - 64) = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    goto LABEL_15;
  }

  *&v226[v225[29]] = v232;
  v238 = 32;
  v111 = v223;
  sub_1000C5A54();
  v223 = v111;
  if (v111)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v110 = &v242;
    goto LABEL_110;
  }

  *&v226[v225[36]] = v232;
  LOBYTE(v232) = 33;
  v112 = v223;
  v113 = sub_1000C5A04();
  v223 = v112;
  if (v112)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v213 = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    goto LABEL_15;
  }

  v115 = &v226[v225[37]];
  *v115 = v113;
  v115[1] = v114;
  v238 = 34;
  v116 = v223;
  sub_1000C5A54();
  v223 = v116;
  if (v116)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v214 = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    goto LABEL_15;
  }

  *&v226[v225[38]] = v232;
  LOBYTE(v232) = 20;
  v117 = v223;
  v118 = sub_1000C5A34();
  v223 = v117;
  if (v117 || (v120 = &v226[v225[19]], *v120 = v118, v120[8] = v119 & 1, sub_1000C15D4(), LOBYTE(v232) = 21, sub_1000B684C(&qword_1000FD4A8, &type metadata accessor for Date, &protocol conformance descriptor for Date), v121 = v223, sub_1000C5A54(), (v223 = v121) != 0))
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v230) = 0;
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
LABEL_118:
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    goto LABEL_15;
  }

  sub_10001D860(v5, &v226[v225[20]], &qword_1000FC5A8, &qword_1000CEA40);
  LOBYTE(v232) = 29;
  v122 = v223;
  v123 = sub_1000C5A84();
  v223 = v122;
  if (v122 || (v125 = &v226[v225[35]], *v125 = v123, v125[8] = v124 & 1, LOBYTE(v232) = 37, v126 = v223, v127 = sub_1000C5A04(), (v223 = v126) != 0))
  {
    (*(v230 + 8))(v229, v228);
    v221 = 0;
    v216 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    goto LABEL_118;
  }

  v129 = &v226[v225[41]];
  *v129 = v127;
  v129[1] = v128;
  LOBYTE(v232) = 36;
  v130 = v223;
  v131 = sub_1000C5A34();
  v223 = v130;
  if (v130 || (v133 = &v226[v225[40]], *v133 = v131, v133[8] = v132 & 1, LOBYTE(v232) = 35, v134 = v223, v135 = sub_1000C5A04(), (v223 = v134) != 0))
  {
    (*(v230 + 8))(v229, v228);
    v221 = 0;
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
LABEL_127:
    v216 = 1;
    goto LABEL_15;
  }

  v137 = &v226[v225[39]];
  *v137 = v135;
  v137[1] = v136;
  v238 = 39;
  v138 = v223;
  sub_1000C5A54();
  v223 = v138;
  if (v138)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v224) = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    goto LABEL_127;
  }

  *&v226[v225[43]] = v232;
  v238 = 38;
  v139 = v223;
  sub_1000C5A54();
  v223 = v139;
  if (v139)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v224) = 0;
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
LABEL_132:
    v218 = 1;
    goto LABEL_15;
  }

  *&v226[v225[42]] = v232;
  v238 = 40;
  v140 = v223;
  sub_1000C5A54();
  v223 = v140;
  if (v140)
  {
    (*(v230 + 8))(v229, v228);
    v220 = 0;
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    goto LABEL_132;
  }

  *&v226[v225[44]] = v232;
  v238 = 42;
  v141 = v223;
  sub_1000C5A54();
  v223 = v141;
  if (v141)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v229) = 0;
    v219 = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    goto LABEL_15;
  }

  *&v226[v225[46]] = v232;
  LOBYTE(v232) = 41;
  v142 = v223;
  v143 = sub_1000C5A04();
  v223 = v142;
  if (v142)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v229) = 0;
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
LABEL_139:
    v219 = 1;
    goto LABEL_15;
  }

  v145 = &v226[v225[45]];
  *v145 = v143;
  v145[1] = v144;
  LOBYTE(v232) = 43;
  v146 = v223;
  v147 = sub_1000C5A04();
  v223 = v146;
  if (v146)
  {
    (*(v230 + 8))(v229, v228);
    v222 = 0;
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    LODWORD(v229) = 1;
    goto LABEL_139;
  }

  v149 = &v226[v225[47]];
  *v149 = v147;
  v149[1] = v148;
  LOBYTE(v232) = 44;
  v150 = v223;
  v151 = sub_1000C5A04();
  v223 = v150;
  if (v150)
  {
    (*(v230 + 8))(v229, v228);
    v237 = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    LODWORD(v229) = 1;
    v219 = 1;
    v222 = 1;
    goto LABEL_15;
  }

  v153 = &v226[v225[48]];
  *v153 = v151;
  v153[1] = v152;
  LOBYTE(v232) = 45;
  v154 = v223;
  v155 = sub_1000C5A04();
  v223 = v154;
  if (v154)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    LODWORD(v229) = 1;
    v219 = 1;
    v222 = 1;
    v237 = 1;
    goto LABEL_15;
  }

  v157 = &v226[v225[49]];
  *v157 = v155;
  v157[1] = v156;
  LOBYTE(v232) = 46;
  v158 = v223;
  v159 = sub_1000C5A04();
  v223 = v158;
  if (v158)
  {
    (*(v230 + 8))(v229, v228);
    LODWORD(v228) = 0;
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    LODWORD(v229) = 1;
    v219 = 1;
    v222 = 1;
    v237 = 1;
    LODWORD(v227) = 1;
    goto LABEL_15;
  }

  v161 = &v226[v225[50]];
  *v161 = v159;
  v161[1] = v160;
  LOBYTE(v232) = 47;
  v162 = v223;
  v163 = sub_1000C5A14();
  v223 = v162;
  if (v162 || (v226[v225[51]] = v163, LOBYTE(v232) = 48, v164 = v223, v165 = sub_1000C5A04(), (v223 = v164) != 0))
  {
    (*(v230 + 8))(v229, v228);
    v46 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    LODWORD(v229) = 1;
    v219 = 1;
    v222 = 1;
    v237 = 1;
    LODWORD(v227) = 1;
    LODWORD(v228) = 1;
    goto LABEL_15;
  }

  v167 = &v226[v225[52]];
  *v167 = v165;
  v167[1] = v166;
  LOBYTE(v232) = 49;
  v168 = v223;
  v169 = sub_1000C5A34();
  v223 = v168;
  if (v168)
  {
    (*(v230 + 8))(v229, v228);
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    LODWORD(v230) = 1;
    v208 = 1;
    v209 = 1;
    v210 = 1;
    v217 = 1;
    v215 = 1;
    v45 = 1;
    v206 = 1;
    v207 = 1;
    v211 = 1;
    v212 = 1;
    v213 = 1;
    v214 = 1;
    v221 = 1;
    v216 = 1;
    LODWORD(v224) = 1;
    v218 = 1;
    v220 = 1;
    LODWORD(v229) = 1;
    v219 = 1;
    v222 = 1;
    v237 = 1;
    LODWORD(v227) = 1;
    LODWORD(v228) = 1;
    v46 = 1;
LABEL_15:
    sub_100015F68(v231);

    if (v41)
    {

      if (v42)
      {
LABEL_17:

        if ((v43 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    else if (v42)
    {
      goto LABEL_17;
    }

    if (!v43)
    {
LABEL_18:
      v63 = v46;
      if (v44)
      {
LABEL_19:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        goto LABEL_20;
      }

LABEL_25:
      v69 = v225;
      v68 = v226;
      sub_100018F90(&v226[v225[18]], &qword_1000FC520, &qword_1000C9D20);
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v64 = 0;
      if (!v230)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:
    v63 = v46;
    sub_100018CBC(*(v226 + 10), *(v226 + 11));
    if (v44)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v171 = &v226[v225[53]];
  *v171 = v169;
  v171[8] = v170 & 1;
  LOBYTE(v232) = 50;
  v172 = v223;
  v173 = sub_1000C5A04();
  v64 = v172 == 0;
  v223 = v172;
  if (v172 || (v175 = &v226[v225[54]], *v175 = v173, v175[1] = v174, LOBYTE(v232) = 54, v176 = v223, v177 = sub_1000C5A04(), (v223 = v176) != 0))
  {
    (*(v230 + 8))(v229, v228);
    sub_100015F68(v231);
    v65 = 0;
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v179 = &v226[v225[58]];
    *v179 = v177;
    v179[1] = v178;
    LOBYTE(v232) = 51;
    v180 = v223;
    v181 = sub_1000C5A04();
    v223 = v180;
    if (v180)
    {
      (*(v230 + 8))(v229, v228);
      sub_100015F68(v231);
      v65 = 0;
      v67 = 0;
      v66 = 1;
    }

    else
    {
      v183 = &v226[v225[55]];
      *v183 = v181;
      v183[1] = v182;
      LOBYTE(v232) = 52;
      v184 = v223;
      v185 = sub_1000C5A44();
      v223 = v184;
      if (v184 || (v187 = &v226[v225[56]], *v187 = v185, v187[8] = v186 & 1, LOBYTE(v232) = 53, v188 = v223, v189 = sub_1000C5A84(), (v223 = v188) != 0) || (v191 = &v226[v225[57]], *v191 = v189, v191[8] = v190 & 1, v238 = 55, v192 = v223, sub_1000C5A54(), (v223 = v192) != 0))
      {
        (*(v230 + 8))(v229, v228);
        sub_100015F68(v231);
        v67 = 0;
        v65 = 1;
        v66 = 1;
      }

      else
      {
        *&v226[v225[59]] = v232;
        LOBYTE(v232) = 56;
        v193 = v223;
        v194 = sub_1000C5A44();
        v223 = v193;
        if (!v193)
        {
          v196 = v194 == 1;
          if (v195)
          {
            v196 = 2;
          }

          v226[v225[60]] = v196;
          LOBYTE(v232) = 57;
          v197 = v223;
          v198 = sub_1000C5A04();
          v223 = v197;
          if (!v197)
          {
            v201 = v198;
            v202 = v199;
            (*(v230 + 8))(v229, v228);
            v203 = v226;
            v204 = &v226[v225[61]];
            *v204 = v201;
            v204[1] = v202;
            sub_10002E640(v203, v227);
            sub_100015F68(v231);
            sub_10002E6A4(v203);
            return;
          }
        }

        (*(v230 + 8))(v229, v228);
        sub_100015F68(v231);
        v65 = 1;
        v66 = 1;
        v67 = 1;
      }
    }
  }

  v200 = v226;

  sub_100018CBC(*(v200 + 10), *(v200 + 11));
  LODWORD(v230) = 1;
  v208 = 1;
  v209 = 1;
  v210 = 1;
  v217 = 1;
  v215 = 1;
  v45 = 1;
  v206 = 1;
  v207 = 1;
  v211 = 1;
  v212 = 1;
  v213 = 1;
  v214 = 1;
  v221 = 1;
  v216 = 1;
  LODWORD(v224) = 1;
  v218 = 1;
  v220 = 1;
  LODWORD(v229) = 1;
  v219 = 1;
  v222 = 1;
  v237 = 1;
  LODWORD(v227) = 1;
  LODWORD(v228) = 1;
  v63 = 1;
LABEL_20:
  v68 = v226;

  v69 = v225;
  sub_100018F90(&v68[v225[18]], &qword_1000FC520, &qword_1000C9D20);
  if (v230)
  {
LABEL_26:
    sub_100018F90(&v68[v69[20]], &qword_1000FC5A8, &qword_1000CEA40);
  }

LABEL_27:

  if (v208)
  {

    if ((v209 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!v209)
  {
LABEL_29:
    if (v210)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

  sub_100018CBC(*&v226[v225[27]], *&v226[v225[27] + 8]);
  if (v210)
  {
LABEL_30:
    v70 = &v226[v225[28]];
    v71 = *(v70 + 3);
    v235 = *(v70 + 2);
    v236[0] = v71;
    *(v236 + 13) = *(v70 + 61);
    v72 = *(v70 + 1);
    v233 = *v70;
    v234 = v72;
    sub_100018F90(&v233, &qword_1000FDE18, &unk_1000D06D8);
    if ((v217 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  if (!v217)
  {
LABEL_31:
    if (v215)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  sub_100018CBC(*&v226[v225[29]], *&v226[v225[29] + 8]);
  if (v215)
  {
LABEL_32:
    sub_100018CBC(*&v226[v225[30]], *&v226[v225[30] + 8]);
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  if (!v45)
  {
LABEL_33:
    v73 = v225;
    if (v206)
    {
      goto LABEL_34;
    }

    goto LABEL_62;
  }

LABEL_61:
  v73 = v225;

  if (v206)
  {
LABEL_34:
    v74 = v226;

    if ((v207 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_63;
  }

LABEL_62:
  v74 = v226;
  if (!v207)
  {
LABEL_35:
    if (v211)
    {
      goto LABEL_36;
    }

    goto LABEL_64;
  }

LABEL_63:

  if (v211)
  {
LABEL_36:
    sub_100018CBC(*&v74[v73[34]], *&v74[v73[34] + 8]);
    if ((v212 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

LABEL_64:
  if (!v212)
  {
LABEL_37:
    if (v213)
    {
      goto LABEL_38;
    }

    goto LABEL_66;
  }

LABEL_65:
  sub_100018CBC(*&v74[v73[36]], *&v74[v73[36] + 8]);
  if (v213)
  {
LABEL_38:

    if ((v214 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_67;
  }

LABEL_66:
  if (!v214)
  {
LABEL_39:
    if (v221)
    {
      goto LABEL_40;
    }

    goto LABEL_68;
  }

LABEL_67:
  sub_100018CBC(*&v74[v73[38]], *&v74[v73[38] + 8]);
  if (v221)
  {
LABEL_40:

    if ((v216 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_69;
  }

LABEL_68:
  if (!v216)
  {
LABEL_41:
    if (v224)
    {
      goto LABEL_42;
    }

    goto LABEL_70;
  }

LABEL_69:

  if (v224)
  {
LABEL_42:
    sub_100018CBC(*&v74[v73[42]], *&v74[v73[42] + 8]);
    if ((v218 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_71;
  }

LABEL_70:
  if (!v218)
  {
LABEL_43:
    if (v220)
    {
      goto LABEL_44;
    }

    goto LABEL_72;
  }

LABEL_71:
  sub_100018CBC(*&v74[v73[43]], *&v74[v73[43] + 8]);
  if (v220)
  {
LABEL_44:
    sub_100018CBC(*&v74[v73[44]], *&v74[v73[44] + 8]);
    if ((v229 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_73;
  }

LABEL_72:
  if (!v229)
  {
LABEL_45:
    if (v219)
    {
      goto LABEL_46;
    }

    goto LABEL_74;
  }

LABEL_73:

  if (v219)
  {
LABEL_46:
    sub_100018CBC(*&v74[v73[46]], *&v74[v73[46] + 8]);
    if ((v222 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

LABEL_74:
  if (!v222)
  {
LABEL_47:
    if (v237)
    {
      goto LABEL_48;
    }

    goto LABEL_76;
  }

LABEL_75:

  if (v237)
  {
LABEL_48:

    if ((v227 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

LABEL_76:
  if (!v227)
  {
LABEL_49:
    if (v228)
    {
      goto LABEL_50;
    }

    goto LABEL_78;
  }

LABEL_77:

  if (v228)
  {
LABEL_50:

    if ((v63 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  if (!v63)
  {
LABEL_51:
    if (v64)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_79:

  if (v64)
  {
LABEL_52:

    if ((v65 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_80:
  if (!v65)
  {
LABEL_53:
    if (v66)
    {
      goto LABEL_54;
    }

LABEL_82:
    if (!v67)
    {
      return;
    }

    goto LABEL_83;
  }

LABEL_81:

  if ((v66 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_54:

  if ((v67 & 1) == 0)
  {
    return;
  }

LABEL_83:
}

uint64_t MessageDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FDE28, &qword_1000D06E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v39 - v7;
  sub_10001530C(a1, a1[3]);
  sub_1000421CC();
  sub_1000C5D04();
  v9 = type metadata accessor for MessageDictionary(0);
  LOBYTE(v50[0]) = 0;
  sub_1000C5B34();
  if (!v2)
  {
    LOBYTE(v50[0]) = 1;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 2;
    sub_1000C1614();
    sub_1000B684C(&qword_1000FDC70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000C5B44();
    LOBYTE(v50[0]) = 3;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 4;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 5;
    sub_1000C5B74();
    *&v50[0] = *v3;
    LOBYTE(v46) = 6;
    v11 = sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    v12 = sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v56 = v11;
    sub_1000C5B44();
    v39[2] = v12;
    LOBYTE(v50[0]) = 7;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 8;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 9;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 10;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 11;
    sub_1000C5B04();
    LOBYTE(v50[0]) = 12;
    sub_1000C5B04();
    LOBYTE(v50[0]) = 13;
    sub_1000C5B04();
    LOBYTE(v50[0]) = 14;
    sub_1000C5B04();
    LOBYTE(v50[0]) = 15;
    sub_1000C5B04();
    v13 = v3[11];
    *&v50[0] = v3[10];
    *(&v50[0] + 1) = v13;
    LOBYTE(v46) = 16;
    sub_100018C54(*&v50[0], v13);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(*&v50[0], *(&v50[0] + 1));
    LOBYTE(v50[0]) = 17;
    sub_1000C5B04();
    LOBYTE(v50[0]) = 18;
    sub_1000C5B24();
    LOBYTE(v50[0]) = 19;
    sub_1000C5AF4();
    LOBYTE(v50[0]) = 20;
    sub_1000C5B24();
    v39[1] = v9[20];
    LOBYTE(v50[0]) = 21;
    sub_1000C15D4();
    sub_1000B684C(&qword_1000FD4D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000C5B44();
    LOBYTE(v50[0]) = 22;
    sub_1000C5AF4();
    v14 = (v3 + v9[27]);
    v15 = v14[1];
    v54 = *v14;
    v55 = v15;
    v53 = 23;
    sub_100018C54(v54, v15);
    sub_1000C5B44();
    sub_100018CBC(v54, v55);
    v16 = v3 + v9[28];
    v17 = *(v16 + 1);
    v18 = *(v16 + 3);
    v51 = *(v16 + 2);
    *v52 = v18;
    v19 = *(v16 + 1);
    v50[0] = *v16;
    v50[1] = v19;
    v20 = *(v16 + 3);
    v48 = v51;
    v49[0] = v20;
    *&v52[13] = *(v16 + 61);
    *(v49 + 13) = *(v16 + 61);
    v46 = v50[0];
    v47 = v17;
    v45 = 24;
    sub_100018F28(v50, v43, &qword_1000FDE18, &unk_1000D06D8);
    sub_1000B6894();
    sub_1000C5B44();
    v43[2] = v48;
    *v44 = v49[0];
    *&v44[13] = *(v49 + 13);
    v43[0] = v46;
    v43[1] = v47;
    sub_100018F90(v43, &qword_1000FDE18, &unk_1000D06D8);
    LOBYTE(v41) = 25;
    sub_1000C5AF4();
    LOBYTE(v41) = 26;
    sub_1000C5AF4();
    LOBYTE(v41) = 27;
    sub_1000C5AF4();
    v21 = (v3 + v9[30]);
    v22 = v21[1];
    v41 = *v21;
    v42 = v22;
    v40 = 28;
    sub_100018C54(v41, v22);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    LOBYTE(v41) = 29;
    sub_1000C5B74();
    v23 = (v3 + v9[34]);
    v24 = v23[1];
    v41 = *v23;
    v42 = v24;
    v40 = 30;
    sub_100018C54(v41, v24);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    v25 = (v3 + v9[29]);
    v26 = v25[1];
    v41 = *v25;
    v42 = v26;
    v40 = 31;
    sub_100018C54(v41, v26);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    v27 = (v3 + v9[36]);
    v28 = v27[1];
    v41 = *v27;
    v42 = v28;
    v40 = 32;
    sub_100018C54(v41, v28);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    LOBYTE(v41) = 33;
    sub_1000C5AF4();
    v29 = (v3 + v9[38]);
    v30 = v29[1];
    v41 = *v29;
    v42 = v30;
    v40 = 34;
    sub_100018C54(v41, v30);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    LOBYTE(v41) = 35;
    sub_1000C5AF4();
    LOBYTE(v41) = 36;
    sub_1000C5B24();
    LOBYTE(v41) = 37;
    sub_1000C5AF4();
    v31 = (v3 + v9[42]);
    v32 = v31[1];
    v41 = *v31;
    v42 = v32;
    v40 = 38;
    sub_100018C54(v41, v32);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    v33 = (v3 + v9[43]);
    v34 = v33[1];
    v41 = *v33;
    v42 = v34;
    v40 = 39;
    sub_100018C54(v41, v34);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    v35 = (v3 + v9[44]);
    v36 = v35[1];
    v41 = *v35;
    v42 = v36;
    v40 = 40;
    sub_100018C54(v41, v36);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    LOBYTE(v41) = 41;
    sub_1000C5AF4();
    v37 = (v3 + v9[46]);
    v38 = v37[1];
    v41 = *v37;
    v42 = v38;
    v40 = 42;
    sub_100018C54(v41, v38);
    sub_1000C5B44();
    sub_100018CBC(v41, v42);
    LOBYTE(v41) = 43;
    sub_1000C5AF4();
    LOBYTE(v41) = 44;
    sub_1000C5AF4();
    LOBYTE(v41) = 45;
    sub_1000C5AF4();
    LOBYTE(v41) = 46;
    sub_1000C5AF4();
    LOBYTE(v41) = 47;
    sub_1000C5B04();
    LOBYTE(v41) = 48;
    sub_1000C5AF4();
    LOBYTE(v41) = 49;
    sub_1000C5B24();
    LOBYTE(v41) = 50;
    sub_1000C5AF4();
    LOBYTE(v41) = 51;
    sub_1000C5AF4();
    LOBYTE(v41) = 52;
    sub_1000C5B34();
    LOBYTE(v41) = 53;
    sub_1000C5B74();
    LOBYTE(v41) = 54;
    sub_1000C5AF4();
    v41 = *(v3 + v9[59]);
    v40 = 55;
    sub_1000C5B44();
    LOBYTE(v41) = 56;
    sub_1000C5B04();
    LOBYTE(v41) = 57;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t MessageDictionary.CodingKeys.rawValue.getter(char a1)
{
  result = 30320;
  switch(a1)
  {
    case 1:
      result = 30311;
      break;
    case 2:
      result = 114;
      break;
    case 3:
      result = 6580583;
      break;
    case 4:
      result = 110;
      break;
    case 5:
      result = 1970434151;
      break;
    case 6:
      result = 112;
      break;
    case 7:
      result = 115;
      break;
    case 8:
      result = 116;
      break;
    case 9:
      result = 120;
      break;
    case 10:
      result = 30825;
      break;
    case 11:
      result = 117;
      break;
    case 12:
      result = 97;
      break;
    case 13:
      result = 29281;
      break;
    case 14:
      result = 7565171;
      break;
    case 15:
      result = 99;
      break;
    case 16:
      result = 808280425;
      break;
    case 17:
      result = 101;
      break;
    case 18:
      result = 28786;
      break;
    case 19:
      result = 29549;
      break;
    case 20:
      result = 29811;
      break;
    case 21:
      result = 25715;
      break;
    case 22:
      result = 6580578;
      break;
    case 23:
      result = 28770;
      break;
    case 24:
      result = 1768190050;
      break;
    case 25:
      result = 26484;
      break;
    case 26:
      result = 6711156;
      break;
    case 27:
      result = 6580585;
      break;
    case 28:
      result = 6515060;
      break;
    case 29:
      result = 1684628084;
      break;
    case 30:
      result = 6910829;
      break;
    case 31:
      result = 6911073;
      break;
    case 32:
      result = 6581363;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0xD00000000000001BLL;
      break;
    case 35:
      result = 0x546567617373654DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 37:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x4B4457524C6ELL;
      break;
    case 39:
      result = 1262770030;
      break;
    case 40:
      result = 1263359854;
      break;
    case 41:
      result = 1145655920;
      break;
    case 42:
      result = 1146241390;
      break;
    case 43:
      result = 6517345;
      break;
    case 44:
      result = 6648417;
      break;
    case 45:
      result = 0x7372676F61;
      break;
    case 46:
      result = 0x6572676F61;
      break;
    case 47:
      result = 1734766451;
      break;
    case 48:
      result = 0x646967666F73;
      break;
    case 49:
      result = 7630177;
      break;
    case 50:
      result = 7040353;
      break;
    case 51:
      result = 6712673;
      break;
    case 52:
      result = 0x636C726D61;
      break;
    case 53:
      result = 0x6E6C726D61;
      break;
    case 54:
      result = 6647137;
      break;
    case 55:
      result = 26226;
      break;
    case 56:
      result = 6383970;
      break;
    case 57:
      result = 1684632162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for MessageDictionary(uint64_t a1)
{
  result = qword_1000FDEC8;
  if (!qword_1000FDEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000B67F8()
{
  result = qword_1000FDE20;
  if (!qword_1000FDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE20);
  }

  return result;
}

uint64_t sub_1000B684C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B6894()
{
  result = qword_1000FDE30;
  if (!qword_1000FDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE30);
  }

  return result;
}

uint64_t sub_1000B68E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MessageDictionary.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MessageDictionary.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_1000B6970()
{
  v1 = *v0;
  sub_1000C5CB4();
  MessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000B69D4(uint64_t a1)
{
  MessageDictionary.CodingKeys.rawValue.getter(*v1);
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000B6A28()
{
  v1 = *v0;
  sub_1000C5CB4();
  MessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_1000B6A88@<X0>(Swift::String *a1@<X0>, MessagesBlastDoorService::MessageDictionary::CodingKeys_optional *a2@<X8>)
{
  result = _s24MessagesBlastDoorService17MessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1000B6AB8@<X0>(unint64_t *a1@<X8>)
{
  result = MessageDictionary.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B6AEC@<X0>(uint64_t a1@<X0>, MessagesBlastDoorService::MessageDictionary::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = _s24MessagesBlastDoorService17MessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_1000B6B20(uint64_t a1)
{
  v2 = sub_1000421CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6B5C(uint64_t a1)
{
  v2 = sub_1000421CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BalloonPluginPayloadAttachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FDE38, &unk_1000D06F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7 - 8];
  sub_10001530C(a1, a1[3]);
  sub_100018E78();
  sub_1000C5D04();
  LOBYTE(v14) = 0;
  sub_1000C5AF4();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v14 = *(v3 + 16);
    v13 = 1;
    sub_100018F28(&v16, v12, &qword_1000FC3F8, &qword_1000CE300);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v14, *(&v14 + 1));
    LOBYTE(v14) = 2;
    sub_1000C5AF4();
    v14 = *(v3 + 48);
    v15 = v14;
    v13 = 3;
    sub_100018F28(&v15, v12, &qword_1000FC3F8, &qword_1000CE300);
    sub_1000C5B44();
    sub_100018CBC(v14, *(&v14 + 1));
    v9 = *(v3 + 68);
    LOBYTE(v14) = 4;
    v12[0] = v9;
    sub_1000C5B54();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 BalloonPluginPayloadAttachment.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000B7134(a2, v6);
  if (!v2)
  {
    v5 = *v7;
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 61) = *&v7[13];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional __swiftcall BalloonPluginPayloadAttachment.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v5._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._rawValue = &off_1000F2748;
  v5._object = object;
  v3 = sub_1000C59F4(v2, v5);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1000B6EE8()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000B6F44(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000B6F84()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional sub_1000B6FDC@<W0>(Swift::String *a1@<X0>, MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional *a2@<X8>)
{
  result.value = BalloonPluginPayloadAttachment.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional sub_1000B7040@<W0>(uint64_t a1@<X0>, MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional *a2@<X8>)
{
  result.value = BalloonPluginPayloadAttachment.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000B7068(uint64_t a1)
{
  v2 = sub_100018E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B70A4(uint64_t a1)
{
  v2 = sub_100018E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t _s24MessagesBlastDoorService17MessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C5C34();

  if (v2 >= 0x3A)
  {
    return 58;
  }

  else
  {
    return v2;
  }
}

void sub_1000B7134(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FDFF8, &unk_1000D0BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100018E78();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
  }

  else
  {
    LOBYTE(v30) = 0;
    *&v25 = sub_1000C5A04();
    *(&v25 + 1) = v9;
    LOBYTE(v26) = 1;
    sub_100042DD4();
    sub_1000C5A54();
    v24 = v30;
    v23 = v31;
    LOBYTE(v30) = 2;
    *&v22 = sub_1000C5A04();
    *(&v22 + 1) = v10;
    LOBYTE(v26) = 3;
    sub_1000C5A54();
    v11 = v31;
    v21 = v30;
    v41 = 4;
    v12 = sub_1000C5A64();
    (*(v6 + 8))(v8, v5);
    v40 = BYTE4(v12) & 1;
    v13 = *(&v25 + 1);
    v26 = v25;
    v14 = v24;
    v15 = v23;
    *&v27 = v24;
    *(&v27 + 1) = v23;
    v16 = *(&v22 + 1);
    v28 = v22;
    *v29 = v21;
    *&v29[8] = v11;
    *&v29[16] = v12;
    v20 = v11;
    v29[20] = BYTE4(v12) & 1;
    sub_100018ECC(&v26, &v30);
    sub_100015F68(a1);
    v30 = v25;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v34 = v22;
    v35 = v16;
    v36 = v21;
    v37 = v20;
    v38 = v12;
    v39 = BYTE4(v12) & 1;
    sub_100018E24(&v30);
    v17 = *v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v17;
    *(a2 + 61) = *&v29[13];
    v18 = v27;
    *a2 = v26;
    *(a2 + 16) = v18;
  }
}

unint64_t sub_1000B7568()
{
  result = qword_1000FDE40;
  if (!qword_1000FDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE40);
  }

  return result;
}

unint64_t sub_1000B75C0()
{
  result = qword_1000FDE48;
  if (!qword_1000FDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE48);
  }

  return result;
}

unint64_t sub_1000B7618()
{
  result = qword_1000FDE50;
  if (!qword_1000FDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE50);
  }

  return result;
}

unint64_t sub_1000B7670()
{
  result = qword_1000FDE58;
  if (!qword_1000FDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE58);
  }

  return result;
}

unint64_t sub_1000B76C8()
{
  result = qword_1000FDE60;
  if (!qword_1000FDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE60);
  }

  return result;
}

unint64_t sub_1000B7720()
{
  result = qword_1000FDE68;
  if (!qword_1000FDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE68);
  }

  return result;
}

uint64_t sub_1000B7788(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 72);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 80);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000B78E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000B7A20(uint64_t a1)
{
  sub_1000B7CD8(319);
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCD00, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCD08, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10005425C(319, &qword_1000FCCF0, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_10005425C(319, &qword_1000FD3C8, &type metadata for Int);
          if (v5 <= 0x3F)
          {
            sub_1000B7D3C(319, &qword_1000FDED8, &type metadata accessor for UUID);
            if (v6 <= 0x3F)
            {
              sub_1000B7D3C(319, &qword_1000FD3E0, &type metadata accessor for Date);
              if (v7 <= 0x3F)
              {
                sub_10005425C(319, &qword_1000FDEE0, &type metadata for UInt);
                if (v8 <= 0x3F)
                {
                  sub_10005425C(319, &unk_1000FD3F8, &type metadata for UInt64);
                  if (v9 <= 0x3F)
                  {
                    sub_10005425C(319, &unk_1000FDEE8, &type metadata for BalloonPluginPayloadAttachment);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000B7CD8(uint64_t a1)
{
  if (!qword_1000FD3D8)
  {
    sub_10001308C(&qword_1000FC378, &qword_1000CA860);
    v1 = sub_1000C5854();
    if (!v2)
    {
      atomic_store(v1, &qword_1000FD3D8);
    }
  }
}

void sub_1000B7D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C5854();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B7EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 69))
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

uint64_t sub_1000B7F3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000B7FDC(uint64_t a1)
{
  result = sub_100012664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B8008()
{
  result = qword_1000FE000;
  if (!qword_1000FE000)
  {
    sub_1000C3464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE000);
  }

  return result;
}

unint64_t sub_1000B80A0(uint64_t a1)
{
  result = sub_1000125BC();
  *(a1 + 8) = result;
  return result;
}

void sub_1000B8110(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v123 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v125 = v111 - v2;
  v129 = sub_1000C5974();
  v134 = *(v129 - 8);
  v3 = __chkstk_darwin(v129);
  v126 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v135 = v111 - v6;
  __chkstk_darwin(v5);
  v128 = v111 - v7;
  v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v8 - 8);
  v131 = v111 - v9;
  *&v124 = sub_1000C4274();
  v122 = *(v124 - 8);
  v10 = __chkstk_darwin(v124);
  v121 = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v127 = v111 - v12;
  v13 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v13 - 8);
  v130 = v111 - v14;
  v15 = sub_1000C1974();
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C4FC4();
  v136 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C4ED4();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v111 - v26;
  v28 = v137;
  sub_1000C1994();
  if (!v28)
  {
    v114 = v25;
    v115 = 0;
    v117 = v17;
    v118 = v20;
    v29 = v136;
    v116 = v18;
    v119 = v27;
    v120 = v22;
    v137 = v21;
    v30 = sub_1000C1984();
    if (v31 >> 60 == 15)
    {
      sub_100014F70();
      v32 = sub_1000C5714();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1000C94D0;
      v34 = v131;
      v35 = v119;
      sub_1000C4EC4();
      v36 = sub_1000C1614();
      (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
      v37 = sub_1000C4A84();
      v39 = v38;
      sub_100018F90(v34, &qword_1000FC520, &qword_1000C9D20);
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_100014FBC();
      *(v33 + 32) = v37;
      *(v33 + 40) = v39;
      v40 = sub_1000C5554();
      sub_1000C1A44("Missing encrypted data (repositionCommandGUID: %@)", 50, 2, &_mh_execute_header, v32, v40, v33);

      sub_1000B97A8();
      swift_allocError();
      swift_willThrow();
      (*(v120 + 8))(v35, v137);
      return;
    }

    v112 = v30;
    v113 = v31;
    isa = sub_1000C1544().super.isa;
    v42 = [(objc_class *)isa _imOptionallyDecompressData];

    v43 = sub_1000C1564();
    v45 = v44;

    v131 = v45;
    v46 = v45 >> 62;
    if ((v45 >> 62) <= 1)
    {
      v47 = v29;
      v48 = v134;
      v49 = v135;
      v50 = v132;
      v51 = v133;
      v52 = v117;
      if (!v46)
      {
        v53 = v118;
        if (!BYTE6(v131))
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v53 = v118;
      if (!__OFSUB__(HIDWORD(v43), v43))
      {
        if (HIDWORD(v43) - v43 <= 0)
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_1000C1464();
        swift_allocObject();
        v58 = sub_1000C1454();
        sub_1000B9844();
        v59 = v115;
        sub_1000C1444();
        v111[1] = v58;
        if (v59)
        {
          v136 = v43;
          *&v139 = v59;
          swift_errorRetain();
          sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
          v61 = v128;
          v60 = v129;
          if (swift_dynamicCast())
          {

            (*(v48 + 32))(v49, v61, v60);
            v128 = sub_100014F70();
            v62 = v60;
            v63 = sub_1000C57C4();
            v127 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v64 = swift_allocObject();
            v65 = v49;
            v66 = v64;
            v124 = xmmword_1000C94D0;
            *(v64 + 16) = xmmword_1000C94D0;
            v123 = *(v48 + 16);
            v67 = v125;
            v123(v125, v65, v62);
            (*(v48 + 56))(v67, 0, 1, v62);
            v68 = sub_1000C4A84();
            v70 = v69;
            sub_100018F90(v67, &qword_1000FC430, &unk_1000C9B00);
            v66[7] = &type metadata for String;
            v125 = sub_100014FBC();
            v66[8] = v125;
            v66[4] = v68;
            v66[5] = v70;
            v71 = sub_1000C5554();
            sub_1000C1A44("stickerRepositioningDictionary unpacking error: %{public}@", 58, 2, &_mh_execute_header, v63, v71, v66);

            v73 = v132;
            v72 = v133;
            v74 = v117;
            (*(v132 + 104))(v117, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v133);
            sub_1000C1964();
            (*(v73 + 8))(v74, v72);
            v123(v126, v135, v129);
            v75 = v118;
            sub_1000C4FA4();
            v76 = sub_1000C57C4();
            v77 = swift_allocObject();
            *(v77 + 16) = v124;
            v133 = *(v47 + 16);
            v78 = v130;
            v79 = v116;
            v133(v130, v75, v116);
            (*(v47 + 56))(v78, 0, 1, v79);
            v80 = v47;
            v81 = sub_1000C4A84();
            v83 = v82;
            sub_100018F90(v78, &qword_1000FC438, &unk_1000C9DC0);
            v84 = v125;
            *(v77 + 56) = &type metadata for String;
            *(v77 + 64) = v84;
            *(v77 + 32) = v81;
            *(v77 + 40) = v83;
            v85 = sub_1000C5554();
            sub_1000C1A44("stickerRepositioningDictionary unpacking explosion: %{public}@", 62, 2, &_mh_execute_header, v76, v85, v77);

            sub_1000B97FC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            v86 = v118;
            v133(v87, v118, v79);
            swift_willThrow();
            sub_100018CBC(v112, v113);

            sub_100018CD0(v136, v131);
            (*(v80 + 8))(v86, v79);
            (*(v134 + 8))(v135, v129);
            (*(v120 + 8))(v119, v137);
          }

          else
          {

            sub_100014F70();
            v103 = sub_1000C57C4();
            sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v104 = swift_allocObject();
            *(v104 + 16) = xmmword_1000C94D0;
            *&v139 = v59;
            v105 = sub_1000C4A84();
            v107 = v106;
            *(v104 + 56) = &type metadata for String;
            *(v104 + 64) = sub_100014FBC();
            *(v104 + 32) = v105;
            *(v104 + 40) = v107;
            v108 = sub_1000C5554();
            sub_1000C1A44("stickerRepositioningDictionary unpacking unknown error: %{public}@", 66, 2, &_mh_execute_header, v103, v108, v104);

            swift_getErrorValue();
            swift_getDynamicType();
            *&v139 = 0;
            *(&v139 + 1) = 0xE000000000000000;
            sub_1000C5944(22);

            *&v139 = 0xD000000000000014;
            *(&v139 + 1) = 0x80000001000D5330;
            v166._countAndFlagsBits = sub_1000C5D34();
            sub_1000C52E4(v166);

            sub_1000B97FC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v112, v113);

            sub_100018CD0(v136, v131);

            (*(v120 + 8))(v119, v137);
          }
        }

        else
        {
          v138[10] = v149;
          v138[11] = v150;
          v138[12] = v151;
          v138[13] = v152;
          v138[6] = v145;
          v138[7] = v146;
          v138[8] = v147;
          v138[9] = v148;
          v138[2] = v141;
          v138[3] = v142;
          v138[4] = v143;
          v138[5] = v144;
          v138[0] = v139;
          v138[1] = v140;
          v163 = v149;
          v164 = v150;
          v165 = v151;
          v159 = v145;
          v160 = v146;
          v161 = v147;
          v162 = v148;
          v155 = v141;
          v156 = v142;
          v157 = v143;
          v158 = v144;
          v153 = v139;
          v154 = v140;
          v101 = v127;
          sub_1000B91E8();
          v102 = v119;
          v136 = v43;
          v109 = v120;
          (*(v120 + 16))(v114, v119, v137);
          v110 = v122;
          (*(v122 + 16))(v121, v101, v124);

          sub_1000B9898(v138);
          sub_1000C4534();
          sub_100018CBC(v112, v113);

          sub_100018CD0(v136, v131);
          (*(v110 + 8))(v127, v124);
          (*(v109 + 8))(v102, v137);
        }

        return;
      }

LABEL_21:
      __break(1u);
      return;
    }

    v47 = v29;
    v52 = v117;
    v53 = v118;
    v48 = v134;
    v49 = v135;
    v50 = v132;
    v51 = v133;
    if (v46 == 2)
    {
      v55 = *(v43 + 16);
      v54 = *(v43 + 24);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      if (v56)
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v57 > 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    v88 = v50;
    (*(v50 + 104))(v52, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v51);
    sub_1000C1964();
    v136 = v43;
    (*(v88 + 8))(v52, v51);
    sub_1000C4FB4();
    sub_100014F70();
    v89 = sub_1000C57C4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1000C94D0;
    v135 = *(v47 + 16);
    v91 = v130;
    v92 = v53;
    v93 = v116;
    (v135)(v130, v92, v116);
    (*(v47 + 56))(v91, 0, 1, v93);
    v94 = v47;
    v95 = sub_1000C4A84();
    v97 = v96;
    sub_100018F90(v91, &qword_1000FC438, &unk_1000C9DC0);
    *(v90 + 56) = &type metadata for String;
    *(v90 + 64) = sub_100014FBC();
    *(v90 + 32) = v95;
    *(v90 + 40) = v97;
    v98 = sub_1000C5554();
    sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v89, v98, v90);

    sub_1000B97FC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v99 = v118;
    (v135)(v100, v118, v93);
    swift_willThrow();
    sub_100018CBC(v112, v113);
    sub_100018CD0(v136, v131);
    (*(v94 + 8))(v99, v93);
    (*(v120 + 8))(v119, v137);
  }
}

void sub_1000B91E8()
{
  if (*(v0 + 72))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 64);
  }

  if (v1 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (*(v0 + 88))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 80);
  }

  if (v2 < 0)
  {
    goto LABEL_17;
  }

  if (*(v0 + 120) & 1) != 0 || (*(v0 + 136) & 1) != 0 || (*(v0 + 152) & 1) != 0 || (*(v0 + 168) & 1) != 0 || (*(v0 + 184))
  {
    sub_1000B98C8();
    swift_allocError();
    swift_willThrow();
  }

  else
  {

    sub_1000C4264();
  }
}

uint64_t sub_1000B93B0(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FE040, &qword_1000D0EC8);
  v51 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22[-v6];
  sub_10001530C(a1, a1[3]);
  sub_1000BA8C0();
  sub_1000C5D04();
  v8 = v3[10];
  v9 = v3[8];
  v47 = v3[9];
  v48 = v8;
  v10 = v3[10];
  v11 = v3[12];
  v49 = v3[11];
  v50 = v11;
  v12 = v3[6];
  v13 = v3[4];
  v43 = v3[5];
  v44 = v12;
  v14 = v3[6];
  v15 = v3[8];
  v45 = v3[7];
  v46 = v15;
  v16 = v3[2];
  v17 = *v3;
  v39 = v3[1];
  v40 = v16;
  v18 = v3[2];
  v19 = v3[4];
  v41 = v3[3];
  v42 = v19;
  v20 = *v3;
  v35 = v10;
  v36 = v49;
  v37 = v3[12];
  v38 = v20;
  v31 = v14;
  v32 = v45;
  v33 = v9;
  v34 = v47;
  v27 = v18;
  v28 = v41;
  v29 = v13;
  v30 = v43;
  v25 = v17;
  v26 = v39;
  v24 = 0;
  sub_1000BA9D0(&v38, v23);
  sub_1000BAA08();
  sub_1000C5BB4();
  v23[10] = v35;
  v23[11] = v36;
  v23[12] = v37;
  v23[6] = v31;
  v23[7] = v32;
  v23[8] = v33;
  v23[9] = v34;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v23[0] = v25;
  v23[1] = v26;
  sub_1000BA968(v23);
  if (!v2)
  {
    v22[15] = 1;
    sub_1000C5B84();
  }

  return (*(v51 + 8))(v7, v5);
}

uint64_t sub_1000B9634@<X0>(void (*a3)(char *, char *, uint64_t)@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000B97FC(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_1000B8110(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1000B97A8()
{
  result = qword_1000FE010;
  if (!qword_1000FE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE010);
  }

  return result;
}

uint64_t sub_1000B97FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B9844()
{
  result = qword_1000FE018;
  if (!qword_1000FE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE018);
  }

  return result;
}

unint64_t sub_1000B98C8()
{
  result = qword_1000FE020;
  if (!qword_1000FE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE020);
  }

  return result;
}

__n128 sub_1000B992C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1000B9968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1000B99B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B9A48(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1734959987;
  }

  else
  {
    v2 = 1768977011;
  }

  if (*a2)
  {
    v3 = 1734959987;
  }

  else
  {
    v3 = 1768977011;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000B9AC0()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000B9B28(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000B9B74()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

void sub_1000B9BD8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F27E0;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1000B9C38(uint64_t *a1@<X8>)
{
  v2 = 1768977011;
  if (*v1)
  {
    v2 = 1734959987;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1000B9C60()
{
  if (*v0)
  {
    return 1734959987;
  }

  else
  {
    return 1768977011;
  }
}

void sub_1000B9C84(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F27E0;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_1000B9CE8(uint64_t a1)
{
  v2 = sub_1000BA8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9D24(uint64_t a1)
{
  v2 = sub_1000BA8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B9D60@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000BA594(a2, v12);
  if (!v2)
  {
    v5 = v12[11];
    a1[10] = v12[10];
    a1[11] = v5;
    v6 = v12[13];
    a1[12] = v12[12];
    a1[13] = v6;
    v7 = v12[7];
    a1[6] = v12[6];
    a1[7] = v7;
    v8 = v12[9];
    a1[8] = v12[8];
    a1[9] = v8;
    v9 = v12[3];
    a1[2] = v12[2];
    a1[3] = v9;
    v10 = v12[5];
    a1[4] = v12[4];
    a1[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a1 = v12[0];
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_1000B9DE4(char a1)
{
  result = 6580595;
  switch(a1)
  {
    case 1:
      result = 6580592;
      break;
    case 2:
      result = 0x6873616873;
      break;
    case 3:
      result = 1684628083;
      break;
    case 4:
      result = 6909043;
      break;
    case 5:
      result = 6906227;
      break;
    case 6:
      result = 7827571;
      break;
    case 7:
      result = 7567475;
      break;
    case 8:
      result = 7567731;
      break;
    case 9:
      result = 6386547;
      break;
    case 10:
      result = 7303795;
      break;
    case 11:
      result = 7498099;
      break;
    case 12:
      result = 7762035;
      break;
    case 13:
      result = 1769108851;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B9F0C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000B9DE4(*a1);
  v5 = v4;
  if (v3 == sub_1000B9DE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_1000B9F94()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000B9DE4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000B9FF8(uint64_t a1)
{
  sub_1000B9DE4(*v1);
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000BA04C()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000B9DE4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_1000BA0AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BAC7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000BA0DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B9DE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000BA124@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BAC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BA158(uint64_t a1)
{
  v2 = sub_1000BB424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BA194(uint64_t a1)
{
  v2 = sub_1000BB424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BA1D0(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FE078, &qword_1000D10E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001530C(a1, a1[3]);
  sub_1000BB424();
  sub_1000C5D04();
  v8[15] = 0;
  sub_1000C5B84();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000C5B84();
    v8[13] = 2;
    sub_1000C5B84();
    v8[12] = 3;
    sub_1000C5AF4();
    v8[11] = 4;
    sub_1000C5B24();
    v8[10] = 5;
    sub_1000C5B24();
    v8[9] = 6;
    sub_1000C5B14();
    v8[8] = 7;
    sub_1000C5B14();
    v8[7] = 8;
    sub_1000C5B14();
    v8[6] = 9;
    sub_1000C5B14();
    v8[5] = 10;
    sub_1000C5B14();
    v8[4] = 11;
    sub_1000C5B04();
    v8[3] = 12;
    sub_1000C5B34();
    v8[2] = 13;
    sub_1000C5AF4();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_1000BA510@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000BACC8(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v10[12];
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000BA594@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = sub_1000124CC(&qword_1000FE028, &qword_1000D0EC0);
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  sub_10001530C(a1, a1[3]);
  sub_1000BA8C0();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v8 = v5;
  v67 = 0;
  sub_1000BA914();
  v9 = v22;
  sub_1000C5AC4();
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v55 = v42;
  v56 = v43;
  v57 = v44;
  v58 = v45;
  v53 = v40;
  v54 = v41;
  v66 = 1;
  v10 = sub_1000C5A94();
  v12 = v11;
  (*(v8 + 8))(v7, v9);
  v33 = v63;
  v34 = v64;
  v35 = v65;
  v29 = v59;
  v30 = v60;
  v31 = v61;
  v32 = v62;
  v25 = v55;
  v26 = v56;
  v27 = v57;
  v28 = v58;
  v23 = v53;
  v24 = v54;
  *&v36 = v10;
  *(&v36 + 1) = v12;
  sub_1000BA998(&v23, v37);
  sub_100015F68(a1);
  v37[10] = v63;
  v37[11] = v64;
  v37[12] = v65;
  v37[6] = v59;
  v37[7] = v60;
  v37[8] = v61;
  v37[9] = v62;
  v37[2] = v55;
  v37[3] = v56;
  v37[4] = v57;
  v37[5] = v58;
  v37[0] = v53;
  v37[1] = v54;
  v38 = v10;
  v39 = v12;
  result = sub_1000B9898(v37);
  v14 = v34;
  a2[10] = v33;
  a2[11] = v14;
  v15 = v36;
  a2[12] = v35;
  a2[13] = v15;
  v16 = v30;
  a2[6] = v29;
  a2[7] = v16;
  v17 = v32;
  a2[8] = v31;
  a2[9] = v17;
  v18 = v26;
  a2[2] = v25;
  a2[3] = v18;
  v19 = v28;
  a2[4] = v27;
  a2[5] = v19;
  v20 = v24;
  *a2 = v23;
  a2[1] = v20;
  return result;
}

unint64_t sub_1000BA8C0()
{
  result = qword_1000FE030;
  if (!qword_1000FE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE030);
  }

  return result;
}

unint64_t sub_1000BA914()
{
  result = qword_1000FE038;
  if (!qword_1000FE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE038);
  }

  return result;
}

unint64_t sub_1000BAA08()
{
  result = qword_1000FE048;
  if (!qword_1000FE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE048);
  }

  return result;
}

__n128 sub_1000BAA6C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1000BAAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1000BAAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BAB78()
{
  result = qword_1000FE050;
  if (!qword_1000FE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE050);
  }

  return result;
}

unint64_t sub_1000BABD0()
{
  result = qword_1000FE058;
  if (!qword_1000FE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE058);
  }

  return result;
}

unint64_t sub_1000BAC28()
{
  result = qword_1000FE060;
  if (!qword_1000FE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE060);
  }

  return result;
}

unint64_t sub_1000BAC7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F2830;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

void sub_1000BACC8(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v120 = sub_1000124CC(&qword_1000FE068, &qword_1000D10D8);
  v5 = *(v120 - 8);
  __chkstk_darwin(v120);
  v7 = &v36 - v6;
  sub_10001530C(a1, a1[3]);
  sub_1000BB424();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
  }

  else
  {
    v8 = v5;
    v60 = a2;
    LOBYTE(v74[0]) = 0;
    v9 = sub_1000C5A94();
    v58 = v10;
    LOBYTE(v74[0]) = 1;
    v11 = sub_1000C5A94();
    v57 = v12;
    v55 = v11;
    LOBYTE(v74[0]) = 2;
    v54 = sub_1000C5A94();
    v56 = v13;
    LOBYTE(v74[0]) = 3;
    v53 = sub_1000C5A04();
    v59 = v14;
    LOBYTE(v74[0]) = 4;
    v52 = sub_1000C5A34();
    v119 = v15 & 1;
    LOBYTE(v74[0]) = 5;
    v51 = sub_1000C5A34();
    v117 = v16 & 1;
    LOBYTE(v74[0]) = 6;
    v50 = sub_1000C5A24();
    v115 = v17 & 1;
    LOBYTE(v74[0]) = 7;
    v49 = sub_1000C5A24();
    v113 = v18 & 1;
    LOBYTE(v74[0]) = 8;
    v48 = sub_1000C5A24();
    v111 = v19 & 1;
    LOBYTE(v74[0]) = 9;
    v20 = sub_1000C5A24();
    v109 = v21 & 1;
    LOBYTE(v74[0]) = 10;
    v22 = sub_1000C5A24();
    v107 = v23 & 1;
    LOBYTE(v74[0]) = 11;
    v47 = sub_1000C5A14();
    LOBYTE(v74[0]) = 12;
    v46 = sub_1000C5A44();
    v104 = v24 & 1;
    v102 = 13;
    v25 = sub_1000C5A04();
    v44 = v26;
    v45 = v25;
    (*(v8 + 8))(v7, v120);
    v27 = v58;
    *&v61 = v9;
    *(&v61 + 1) = v58;
    v28 = v55;
    *&v62 = v55;
    *(&v62 + 1) = v57;
    *&v63 = v54;
    *(&v63 + 1) = v56;
    *&v64 = v53;
    *(&v64 + 1) = v59;
    *&v65 = v52;
    v37 = v119;
    BYTE8(v65) = v119;
    *&v66 = v51;
    v38 = v117;
    BYTE8(v66) = v117;
    *&v67 = v50;
    v39 = v115;
    BYTE8(v67) = v115;
    *&v68 = v49;
    v40 = v113;
    BYTE8(v68) = v113;
    *&v69 = v48;
    v41 = v111;
    BYTE8(v69) = v111;
    *&v70 = v20;
    v42 = v109;
    BYTE8(v70) = v109;
    *&v71 = v22;
    v43 = v107;
    BYTE8(v71) = v107;
    BYTE9(v71) = v47;
    *&v72 = v46;
    LODWORD(v120) = v104;
    BYTE8(v72) = v104;
    *&v73 = v45;
    *(&v73 + 1) = v44;
    sub_1000BA9D0(&v61, v74);
    sub_100015F68(a1);
    v74[0] = v9;
    v74[1] = v27;
    v74[2] = v28;
    v74[3] = v57;
    v74[4] = v54;
    v74[5] = v56;
    v74[6] = v53;
    v74[7] = v59;
    v74[8] = v52;
    v75 = v37;
    *v76 = *v118;
    *&v76[3] = *&v118[3];
    v77 = v51;
    v78 = v38;
    *v79 = *v116;
    *&v79[3] = *&v116[3];
    v80 = v50;
    v81 = v39;
    *&v82[3] = *&v114[3];
    *v82 = *v114;
    v83 = v49;
    v84 = v40;
    *v85 = *v112;
    *&v85[3] = *&v112[3];
    v86 = v48;
    v87 = v41;
    *v88 = *v110;
    *&v88[3] = *&v110[3];
    v89 = v20;
    v90 = v42;
    *&v91[3] = *&v108[3];
    *v91 = *v108;
    v92 = v22;
    v93 = v43;
    v94 = v47;
    v95 = v105;
    v96 = v106;
    v97 = v46;
    v98 = v120;
    *&v99[3] = *&v103[3];
    *v99 = *v103;
    v100 = v45;
    v101 = v44;
    sub_1000BA968(v74);
    v29 = v72;
    v30 = v60;
    v60[10] = v71;
    v30[11] = v29;
    v30[12] = v73;
    v31 = v68;
    v30[6] = v67;
    v30[7] = v31;
    v32 = v70;
    v30[8] = v69;
    v30[9] = v32;
    v33 = v64;
    v30[2] = v63;
    v30[3] = v33;
    v34 = v66;
    v30[4] = v65;
    v30[5] = v34;
    v35 = v62;
    *v30 = v61;
    v30[1] = v35;
  }
}

unint64_t sub_1000BB424()
{
  result = qword_1000FE070;
  if (!qword_1000FE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepositionStickerCommandStickerContents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RepositionStickerCommandStickerContents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BB5CC()
{
  result = qword_1000FE080;
  if (!qword_1000FE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE080);
  }

  return result;
}

unint64_t sub_1000BB624()
{
  result = qword_1000FE088;
  if (!qword_1000FE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE088);
  }

  return result;
}

unint64_t sub_1000BB67C()
{
  result = qword_1000FE090;
  if (!qword_1000FE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE090);
  }

  return result;
}

uint64_t sub_1000BB6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1000C27A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C3EA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v10 = sub_1000C57B4();
  v11 = sub_1000C5554();
  sub_1000C1A44("Entering DT balloon unpacker", 28, 2, &_mh_execute_header, v10, v11, _swiftEmptyArrayStorage);

  if (*(a3 + 16))
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  else
  {
    v16[1] = v9;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    result = sub_1000C3E54();
    if (!v15)
    {
      sub_1000BB9E0(v13, v14, v7);
      (*(v5 + 104))(v7, enum case for BalloonPlugin.Payload.digitalTouchBalloon(_:), v4);
      return sub_1000C4474();
    }
  }

  return result;
}

uint64_t sub_1000BB9E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = sub_1000C3FB4();
  __chkstk_darwin(v6 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C3DA4();
  v15[1] = *(v9 - 8);
  __chkstk_darwin(v9);
  v10 = sub_1000C1774();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for ETP_Header(0);
  __chkstk_darwin(v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_100018C68(a1, a2);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCBD8, type metadata accessor for ETP_Header, &unk_1000CCA28);
  result = sub_1000C1864();
  if (!v3)
  {
    if (v13[*(v11 + 20)] == 8)
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }

    else
    {
      sub_1000BBD6C(v13);
      sub_1000BC14C(v13, v8);
      sub_1000C3F74();
    }

    return sub_1000C0E48(v13, type metadata accessor for ETP_Header);
  }

  return result;
}

uint64_t sub_1000BBD6C(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1000C1614();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for ETP_Header(0);
  v13 = (a1 + v12[6]);
  if ((v13[1] & 1) != 0 || !*(a1 + v12[9] + 8) || (*(a1 + v12[11] + 8) & 1) != 0 || *(a1 + v12[10]) == 2)
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_6:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v16 = *(a1 + v12[10]);
  v17 = v12;
  v15 = *v13;

  sub_1000C15E4();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100018F90(v4, &qword_1000FC520, &qword_1000C9D20);
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_6;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v9, v11, v5);
  v18 = *(a1 + v17[8] + 4);
  sub_1000C3D94();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1000BC14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C27F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ETP_Header(0);
  v10 = *(a1 + *(v9 + 20));
  if (v10 == 4)
  {
    v11 = &enum case for DigitalTouchMessage.readreceipt(_:);
LABEL_3:
    v12 = *v11;
    v13 = sub_1000C3FB4();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  v15 = a1 + *(v9 + 28);
  v16 = *(v15 + 8);
  if (v16 >> 60 == 15)
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (*(a1 + *(v9 + 20)) > 4u)
  {
    if (*(a1 + *(v9 + 20)) <= 6u)
    {
      if (v10 == 5)
      {
        return sub_1000BC8F4(a1, a2);
      }

      else
      {
        return sub_1000BE114(a1, a2);
      }
    }

    if (v10 == 7)
    {
      return sub_1000BE834(a1, a2);
    }

LABEL_19:
    sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
    v19 = sub_1000C57B4();
    v20 = sub_1000C5554();
    sub_1000C1A44("Parsing message type tap", 24, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);

    result = sub_1000BF20C(a1);
    if (!v2)
    {
      v11 = &enum case for DigitalTouchMessage.tap(_:);
      goto LABEL_3;
    }

    return result;
  }

  if (*(a1 + *(v9 + 20)) > 1u)
  {
    if (v10 == 2)
    {
      return sub_1000BC534(a1, a2);
    }

    v21 = *v15;
    sub_100018C54(*v15, *(v15 + 8));
    sub_1000BFD10(v21, v16, v8);
    result = sub_100018CD0(v21, v16);
    if (!v2)
    {
      (*(v6 + 32))(a2, v8, v5);
      v11 = &enum case for DigitalTouchMessage.doodle(_:);
      goto LABEL_3;
    }

    return result;
  }

  if (!*(a1 + *(v9 + 20)))
  {
    goto LABEL_19;
  }

  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v17 = sub_1000C57B4();
  v18 = sub_1000C5554();
  sub_1000C1A44("Parsing message type quicktap", 29, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);

  result = sub_1000BF20C(a1);
  if (!v2)
  {
    v11 = &enum case for DigitalTouchMessage.quicktap(_:);
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1000BC534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C1774();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for ETP_Heartbeat(0);
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v9 = sub_1000C57B4();
  v10 = sub_1000C5554();
  sub_1000C1A44("Parsing message type heartbeat", 30, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

  v11 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v12 = *v11;
  v13 = v11[1];
  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v11;
  }

  v15 = 0xC000000000000000;
  if (v13 >> 60 != 15)
  {
    v15 = v13;
  }

  v21 = v14;
  v22 = v15;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_100018C54(v12, v13);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB98, type metadata accessor for ETP_Heartbeat, &unk_1000CC730);
  result = sub_1000C1864();
  if (!v2)
  {
    if (v8[v6[5] + 4] & 1) != 0 || (v8[v6[6] + 4] & 1) != 0 || (v8[v6[7] + 4] & 1) != 0 || (v8[v6[8] + 4] & 1) != 0 || (v8[v6[10] + 4])
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      return sub_1000C0E48(v8, type metadata accessor for ETP_Heartbeat);
    }

    else
    {
      sub_1000C3554();
      sub_1000C0E48(v8, type metadata accessor for ETP_Heartbeat);
      v17 = enum case for DigitalTouchMessage.heartbeat(_:);
      v18 = sub_1000C3FB4();
      return (*(*(v18 - 8) + 104))(a2, v17, v18);
    }
  }

  return result;
}

uint64_t sub_1000BC8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a1;
  v133 = a2;
  v2 = sub_1000C3DA4();
  __chkstk_darwin(v2 - 8);
  v132 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1000C3FB4();
  v134 = *(v139 - 8);
  v4 = __chkstk_darwin(v139);
  v141 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v129 = (&v122 - v6);
  v128 = sub_1000C27F4();
  v131 = *(v128 - 8);
  v7 = __chkstk_darwin(v128);
  v127 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v122 - v9;
  v142 = sub_1000C3FA4();
  v138 = *(v142 - 8);
  v10 = __chkstk_darwin(v142);
  v135 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v143 = &v122 - v13;
  __chkstk_darwin(v12);
  v140 = (&v122 - v14);
  v15 = sub_1000124CC(&qword_1000FE098, &qword_1000D1260);
  v16 = __chkstk_darwin(v15 - 8);
  v136 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v137 = (&v122 - v19);
  v20 = __chkstk_darwin(v18);
  v146 = &v122 - v21;
  __chkstk_darwin(v20);
  v144 = &v122 - v22;
  v23 = sub_1000124CC(&unk_1000FE0A0, &qword_1000D1268);
  __chkstk_darwin(v23 - 8);
  v25 = &v122 - v24;
  v26 = sub_1000C2644();
  v145 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v122 - v31;
  __chkstk_darwin(v30);
  v34 = &v122 - v33;
  v35 = sub_1000C1774();
  __chkstk_darwin(v35 - 8);
  v36 = type metadata accessor for ETP_Video(0);
  __chkstk_darwin(v36);
  v38 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v39 = sub_1000C57B4();
  v40 = sub_1000C5554();
  sub_1000C1A44("Parsing message type video", 26, 2, &_mh_execute_header, v39, v40, _swiftEmptyArrayStorage);

  v41 = (v147 + *(type metadata accessor for ETP_Header(0) + 28));
  v42 = *v41;
  v43 = v41[1];
  if (v43 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v44 = *v41;
  }

  v45 = 0xC000000000000000;
  if (v43 >> 60 != 15)
  {
    v45 = v43;
  }

  v150[0] = v44;
  v150[1] = v45;
  v152 = 0;
  memset(v151, 0, sizeof(v151));
  sub_100018C54(v42, v43);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB38, type metadata accessor for ETP_Video, &unk_1000CC2F8);
  v46 = v148;
  result = sub_1000C1864();
  if (v46)
  {
    return result;
  }

  v125 = v32;
  v48 = v146;
  v124 = v29;
  v126 = v34;
  v148 = v26;
  v49 = v38[v36[7]];
  if (v49 == 2)
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v50 = v38;
    return sub_1000C0E48(v50, type metadata accessor for ETP_Video);
  }

  v147 = 0;
  v51 = ((v49 & 1) + 1);
  v52 = v25;
  sub_1000C2634();
  v53 = v145;
  v54 = v148;
  if ((*(v145 + 48))(v52, 1, v148) == 1)
  {
    sub_100018F90(v52, &unk_1000FE0A0, &qword_1000D1268);
    *&v151[0] = 0;
    *(&v151[0] + 1) = 0xE000000000000000;
    sub_1000C5944(24);

    *&v151[0] = 0xD000000000000016;
    *(&v151[0] + 1) = 0x80000001000D9280;
    v150[0] = v51;
    v153._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v153);

    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return sub_1000C0E48(v38, type metadata accessor for ETP_Video);
  }

  v55 = v126;
  (*(v53 + 32))(v126, v52, v54);
  v56 = sub_1000C22E4();
  v57 = *(*(v56 - 8) + 56);
  v57(v144, 1, 1, v56);
  v58 = v36[5];
  v123 = v38;
  v59 = &v38[v58];
  v60 = v59[1];
  if (v60 >> 60 != 15)
  {
    v122 = v57;
    v67 = *v59;
    sub_100018C54(*v59, v60);
    v68 = v147;
    sub_1000BB9E0(v67, v60, v140);
    v147 = v68;
    if (v68)
    {
      sub_100018CD0(v67, v60);
    }

    else
    {
      sub_100018CD0(v67, v60);
      v104 = v129;
      sub_1000C3F94();
      v105 = v134;
      v106 = v139;
      if ((*(v134 + 88))(v104, v139) != enum case for DigitalTouchMessage.doodle(_:))
      {
        (*(v105 + 8))(v104, v106);
        sub_1000C4FC4();
        sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        (*(v138 + 8))(v140, v142);
        sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
        (*(v53 + 8))(v126, v54);
        goto LABEL_59;
      }

      (*(v105 + 96))(v104, v106);
      v107 = v130;
      v108 = v104;
      v109 = v128;
      (*(v131 + 32))(v130, v108, v128);
      sub_1000C3F84();
      v110 = v131;
      v111 = v107;
      v112 = v109;
      (*(v131 + 16))(v127, v111, v109);
      v113 = v147;
      sub_1000C22D4();
      v147 = v113;
      v114 = v140;
      if (!v113)
      {
        (*(v110 + 8))(v130, v112);
        (*(v138 + 8))(v114, v142);
        v116 = v144;
        sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
        v122(v48, 0, 1, v56);
        sub_1000C0D90(v48, v116);
        v55 = v126;
        goto LABEL_13;
      }

      (*(v110 + 8))(v130, v112);
      (*(v138 + 8))(v114, v142);
    }

    sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
    (*(v53 + 8))(v126, v54);
    return sub_1000C0E48(v123, type metadata accessor for ETP_Video);
  }

LABEL_13:
  v61 = v123;
  v62 = &v123[v36[6]];
  v63 = v137;
  if (v62[1] >> 60 != 15)
  {
    sub_1000124CC(&qword_1000FC470, &qword_1000C9C80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1000CBEF0;
    v70 = sub_10001D1A8(0, &qword_1000FC8F8, NSArray_ptr);
    *(v69 + 56) = sub_1000124CC(&qword_1000FDCE8, &qword_1000CFEF8);
    *(v69 + 32) = v70;
    v71 = sub_10001D1A8(0, &qword_1000FDCF0, NSMutableArray_ptr);
    *(v69 + 88) = sub_1000124CC(&qword_1000FDCF8, &unk_1000D1270);
    *(v69 + 64) = v71;
    v72 = sub_10001D1A8(0, &qword_1000FC498, NSData_ptr);
    *(v69 + 120) = sub_1000124CC(&qword_1000FC4A0, &qword_1000C9C98);
    *(v69 + 96) = v72;
    v73 = sub_10001D1A8(0, &qword_1000FC4F0, NSMutableData_ptr);
    *(v69 + 152) = sub_1000124CC(&qword_1000FC4F8, &qword_1000D1280);
    *(v69 + 128) = v73;
    sub_10001D1A8(0, &qword_1000FC510, NSSet_ptr);
    v74 = sub_1000C5614();
    v150[0] = 0;
    result = sub_1000C5494();
    if (!v150[0])
    {
      __break(1u);
      return result;
    }

    v75.super.isa = sub_1000C5484().super.isa;

    v76 = *v62;
    v77 = v62[1];
    if (v77 >> 60 == 15)
    {
      v78 = 0;
    }

    else
    {
      v78 = v76;
    }

    if (v77 >> 60 == 15)
    {
      v79 = 0xC000000000000000;
    }

    else
    {
      v79 = v77;
    }

    v80 = objc_opt_self();
    sub_100018C54(v76, v77);
    isa = sub_1000C1544().super.isa;
    sub_100018CD0(v78, v79);
    v150[0] = 0;
    v82 = [v80 _strictlyUnarchivedObjectOfClasses:v75.super.isa fromData:isa error:v150];

    v83 = v150[0];
    if (!v82)
    {
      v115 = v83;
      sub_1000C1474();

      swift_willThrow();
      sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
      (*(v145 + 8))(v55, v148);
      return sub_1000C0E48(v61, type metadata accessor for ETP_Video);
    }

    sub_1000C58C4();
    swift_unknownObjectRelease();
    sub_10001D804(v151, v150);
    sub_1000124CC(&qword_1000FC858, &qword_1000CB040);
    v84 = swift_dynamicCast();
    v85 = v145;
    if (!v84)
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100015F68(v151);
      sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
      (*(v85 + 8))(v55, v148);
      goto LABEL_49;
    }

    v127 = v74;
    v86 = v149;
    v146 = *(v149 + 16);
    if (v146)
    {
      v87 = 0;
      v137 = (v134 + 88);
      LODWORD(v132) = enum case for DigitalTouchMessage.video(_:);
      LODWORD(v130) = enum case for DigitalTouchMessage.readreceipt(_:);
      v131 = v134 + 8;
      v129 = (v138 + 16);
      v140 = (v138 + 8);
      v128 = v138 + 32;
      v88 = (v149 + 40);
      v89 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v87 >= *(v86 + 16))
        {
          __break(1u);
        }

        v90 = v86;
        v92 = *(v88 - 1);
        v91 = *v88;
        sub_100018C68(v92, *v88);
        v93 = v147;
        sub_1000BB9E0(v92, v91, v143);
        v147 = v93;
        if (v93)
        {

          sub_100018CD0(v92, v91);
          sub_100015F68(v151);
          sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
          (*(v145 + 8))(v55, v148);

          return sub_1000C0E48(v123, type metadata accessor for ETP_Video);
        }

        v94 = v55;
        v95 = v141;
        sub_1000C3F94();
        v96 = v139;
        v97 = (*v137)(v95, v139);
        if (v97 == v132)
        {

          (*v131)(v141, v96);
          goto LABEL_58;
        }

        if (v97 == v130)
        {
          break;
        }

        (*v131)(v141, v96);
        v98 = v135;
        (*v129)(v135, v143, v142);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_10004513C(0, v89[2] + 1, 1, v89);
        }

        v100 = v89[2];
        v99 = v89[3];
        if (v100 >= v99 >> 1)
        {
          v89 = sub_10004513C((v99 > 1), v100 + 1, 1, v89);
        }

        ++v87;
        sub_100018CD0(v92, v91);
        v101 = v138;
        v102 = v142;
        (*(v138 + 8))(v143, v142);
        v89[2] = v100 + 1;
        (*(v101 + 32))(v89 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v100, v98, v102);
        v88 += 2;
        v55 = v126;
        v103 = v136;
        v86 = v90;
        if (v146 == v87)
        {
          goto LABEL_52;
        }
      }

LABEL_58:
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v92, v91);
      (*v140)(v143, v142);
      sub_100015F68(v151);
      sub_100018F90(v144, &qword_1000FE098, &qword_1000D1260);
      (*(v145 + 8))(v94, v148);
    }

    else
    {
      v103 = v136;
LABEL_52:

      v117 = v145;
      v118 = v148;
      (*(v145 + 16))(v124, v55, v148);
      v119 = v144;
      sub_1000C0D20(v144, v103);
      v120 = v133;
      v121 = v147;
      sub_1000C2624();
      if (!v121)
      {

        sub_100015F68(v151);
        sub_100018F90(v119, &qword_1000FE098, &qword_1000D1260);
        (*(v117 + 8))(v55, v118);
        sub_1000C0E48(v123, type metadata accessor for ETP_Video);
        return (*(v134 + 104))(v120, enum case for DigitalTouchMessage.video(_:), v139);
      }

      sub_100015F68(v151);
      sub_100018F90(v119, &qword_1000FE098, &qword_1000D1260);
      (*(v117 + 8))(v55, v118);
    }

LABEL_59:
    v50 = v123;
    return sub_1000C0E48(v50, type metadata accessor for ETP_Video);
  }

  (*(v53 + 16))(v125, v55, v54);
  v64 = v144;
  sub_1000C0D20(v144, v63);
  v65 = v133;
  v66 = v147;
  sub_1000C2624();
  if (v66)
  {
    sub_100018F90(v64, &qword_1000FE098, &qword_1000D1260);
    (*(v53 + 8))(v55, v54);
LABEL_49:
    v50 = v61;
    return sub_1000C0E48(v50, type metadata accessor for ETP_Video);
  }

  sub_100018F90(v64, &qword_1000FE098, &qword_1000D1260);
  (*(v53 + 8))(v55, v54);
  sub_1000C0E48(v61, type metadata accessor for ETP_Video);
  return (*(v134 + 104))(v65, enum case for DigitalTouchMessage.video(_:), v139);
}

uint64_t sub_1000BE114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_1000C1E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1774();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for ETP_Kiss(0);
  __chkstk_darwin(v9);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v12 = sub_1000C57B4();
  v13 = sub_1000C5554();
  sub_1000C1A44("Parsing message type kiss", 25, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);

  v14 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v15 = *v14;
  v16 = v14[1];
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v14;
  }

  v18 = 0xC000000000000000;
  if (v16 >> 60 != 15)
  {
    v18 = v16;
  }

  v57 = v17;
  v58 = v18;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  sub_100018C54(v15, v16);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB18, type metadata accessor for ETP_Kiss, &unk_1000CC168);
  result = sub_1000C1864();
  if (!v2)
  {
    v52 = v4;
    v53 = v7;
    v20 = &v11[v9[6]];
    v21 = *(v20 + 1);
    if (v21 >> 60 == 15 || (v22 = &v11[v9[5]], v22[1] >> 60 == 15) || (v23 = &v11[v9[7]], v23[1] >> 60 == 15))
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
LABEL_11:
      sub_1000C4FB4();
      swift_willThrow();
      return sub_1000C0E48(v11, type metadata accessor for ETP_Kiss);
    }

    v24 = *v20;
    sub_100018C54(*v20, *(v20 + 1));
    sub_1000BFAB4(v24, v21);
    v26 = v25;
    sub_100018CD0(v24, v21);
    v27 = v23[1];
    if (v27 >> 60 == 15)
    {
      v28 = 0;
    }

    else
    {
      v28 = *v23;
    }

    if (v27 >> 60 == 15)
    {
      v29 = 0xC000000000000000;
    }

    else
    {
      v29 = v23[1];
    }

    sub_100018C54(*v23, v27);
    sub_1000BFBE4(v28, v29);
    v31 = v30;
    sub_100018CD0(v28, v29);
    v32 = *v22;
    v33 = v22[1];
    v34 = v26;
    if (v33 >> 60 == 15)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    if (v33 >> 60 == 15)
    {
      v36 = 0xC000000000000000;
    }

    else
    {
      v36 = v33;
    }

    sub_100018C54(v32, v33);
    sub_1000BFBE4(v35, v36);
    v38 = v37;
    result = sub_100018CD0(v35, v36);
    v39 = v31;
    v40 = *(v34 + 16);
    if (v40 != *(v31 + 16) || v40 != *(v38 + 16))
    {

      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      goto LABEL_11;
    }

    v51 = v38;
    if (v40)
    {
      v41 = 0;
      v49[1] = v5 + 32;
      v42 = _swiftEmptyArrayStorage;
      v50 = v34;
      while (v41 < *(v34 + 16))
      {
        if (v41 >= *(v39 + 16))
        {
          goto LABEL_41;
        }

        if (v41 >= *(v51 + 16))
        {
          goto LABEL_42;
        }

        v43 = v39;
        sub_1000C1E64();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1000450EC(0, v42[2] + 1, 1, v42);
        }

        v45 = v42[2];
        v44 = v42[3];
        if (v45 >= v44 >> 1)
        {
          v42 = sub_1000450EC((v44 > 1), v45 + 1, 1, v42);
        }

        ++v41;
        v42[2] = v45 + 1;
        result = (*(v5 + 32))(v42 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v45, v53);
        v34 = v50;
        v39 = v43;
        if (v40 == v41)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    else
    {
LABEL_39:

      v46 = v59;
      sub_1000C20E4();
      sub_1000C0E48(v11, type metadata accessor for ETP_Kiss);
      v47 = enum case for DigitalTouchMessage.kiss(_:);
      v48 = sub_1000C3FB4();
      return (*(*(v48 - 8) + 104))(v46, v47, v48);
    }
  }

  return result;
}

uint64_t sub_1000BE834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = sub_1000C2784();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1774();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for ETP_Anger(0);
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v12 = sub_1000C57B4();
  v13 = sub_1000C5554();
  sub_1000C1A44("Parsing message type anger", 26, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);

  v14 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v15 = *v14;
  v16 = v14[1];
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v14;
  }

  v18 = 0xC000000000000000;
  if (v16 >> 60 != 15)
  {
    v18 = v16;
  }

  v65 = v17;
  v66 = v18;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_100018C54(v15, v16);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCAF8, type metadata accessor for ETP_Anger, &unk_1000CC000);
  result = sub_1000C1864();
  if (!v2)
  {
    v60 = v7;
    v20 = v61;
    if (v11[v9[5] + 4] & 1) != 0 || (v11[v9[6] + 4] & 1) != 0 || (v11[v9[7] + 4])
    {
      goto LABEL_10;
    }

    v21 = &v11[v9[9]];
    v22 = v21[1];
    v23 = &v11[v9[8]];
    if (v22 >> 60 == 15)
    {
      if (v23[1] >> 60 == 15)
      {
LABEL_15:
        sub_1000C2224();
        sub_1000C0E48(v11, type metadata accessor for ETP_Anger);
        v24 = enum case for DigitalTouchMessage.anger(_:);
        v25 = sub_1000C3FB4();
        return (*(*(v25 - 8) + 104))(v20, v24, v25);
      }

LABEL_10:
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
LABEL_11:
      sub_1000C4FB4();
      swift_willThrow();
      return sub_1000C0E48(v11, type metadata accessor for ETP_Anger);
    }

    if (v23[1] >> 60 == 15)
    {
      goto LABEL_10;
    }

    v26 = *v21;
    v27 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v27 != 2)
      {
        sub_100018C54(*v21, v21[1]);
        sub_100018CD0(v26, v22);
        goto LABEL_29;
      }

      v29 = *(v26 + 24);
      v58 = *(v26 + 16);
      v59 = v29;
      sub_100018C54(v26, v22);
      sub_100018CD0(v26, v22);
      v28 = v59 - v58;
      if (!__OFSUB__(v59, v58))
      {
LABEL_26:
        if ((v28 & 3) != 0)
        {
          goto LABEL_10;
        }

LABEL_29:
        v30 = *v23;
        v31 = v23[1];
        if (v31 >> 60 == 15)
        {
          v32 = 0;
        }

        else
        {
          v32 = *v23;
        }

        if (v31 >> 60 == 15)
        {
          v33 = 0xC000000000000000;
        }

        else
        {
          v33 = v23[1];
        }

        v34 = v33 >> 62;
        if ((v33 >> 62) > 1)
        {
          if (v34 != 2)
          {
            sub_100018C54(v30, v31);
            sub_100018CD0(v32, v33);
LABEL_46:
            v37 = *v21;
            v38 = v21[1];
            if (v38 >> 60 == 15)
            {
              v39 = 0;
            }

            else
            {
              v39 = *v21;
            }

            if (v38 >> 60 == 15)
            {
              v40 = 0xC000000000000000;
            }

            else
            {
              v40 = v21[1];
            }

            sub_100018C54(v37, v38);
            sub_1000BFAB4(v39, v40);
            v41 = v40;
            v43 = v42;
            sub_100018CD0(v39, v41);
            v44 = *v23;
            v45 = v23[1];
            if (v45 >> 60 == 15)
            {
              v46 = 0;
            }

            else
            {
              v46 = *v23;
            }

            if (v45 >> 60 == 15)
            {
              v47 = 0xC000000000000000;
            }

            else
            {
              v47 = v23[1];
            }

            sub_100018C54(v44, v45);
            sub_1000BFBE4(v46, v47);
            v49 = v48;
            result = sub_100018CD0(v46, v47);
            v50 = v49;
            v51 = *(v43 + 16);
            if (v51 != *(v49 + 16))
            {

              sub_1000C4FC4();
              sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
              swift_allocError();
              goto LABEL_11;
            }

            if (!v51)
            {
LABEL_70:

              goto LABEL_15;
            }

            v52 = 0;
            v56 = v5 + 32;
            v53 = _swiftEmptyArrayStorage;
            v58 = v43;
            v59 = v50;
            v57 = v51;
            while (v52 < *(v43 + 16))
            {
              if (v52 >= *(v50 + 16))
              {
                goto LABEL_72;
              }

              sub_1000C2774();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_100045114(0, v53[2] + 1, 1, v53);
              }

              v55 = v53[2];
              v54 = v53[3];
              if (v55 >= v54 >> 1)
              {
                v53 = sub_100045114((v54 > 1), v55 + 1, 1, v53);
              }

              ++v52;
              v53[2] = v55 + 1;
              result = (*(v5 + 32))(v53 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v55, v60);
              v43 = v58;
              v50 = v59;
              if (v57 == v52)
              {
                goto LABEL_70;
              }
            }

            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v36 = *(v32 + 24);
          v58 = *(v32 + 16);
          v59 = v36;
          sub_100018C54(v30, v31);
          v30 = sub_100018CD0(v32, v33);
          v35 = v59 - v58;
          if (!__OFSUB__(v59, v58))
          {
LABEL_43:
            if (v35)
            {
              goto LABEL_10;
            }

            goto LABEL_46;
          }

          __break(1u);
        }

        else if (!v34)
        {
          v59 = HIWORD(v33);
          sub_100018C54(v30, v31);
          sub_100018CD0(v32, v33);
          v35 = v59;
          goto LABEL_43;
        }

        v59 = HIDWORD(v32);
        sub_100018C54(v30, v31);
        result = sub_100018CD0(v32, v33);
        v35 = v59 - v32;
        if (__OFSUB__(v59, v32))
        {
LABEL_74:
          __break(1u);
          return result;
        }

        goto LABEL_43;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v59 = HIWORD(v22);
      sub_100018C54(v26, v22);
      sub_100018CD0(v26, v22);
      v28 = v59;
      goto LABEL_26;
    }

    v59 = HIDWORD(v26);
    sub_100018C54(v26, v22);
    result = sub_100018CD0(v26, v22);
    v28 = v59 - v26;
    if (__OFSUB__(v59, v26))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1000BF20C(uint64_t a1)
{
  v3 = sub_1000C5074();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C1774();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for ETP_Tap(0);
  __chkstk_darwin(v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v12 = *v11;
  v13 = v11[1];
  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v11;
  }

  v15 = 0xC000000000000000;
  if (v13 >> 60 != 15)
  {
    v15 = v13;
  }

  v72 = v14;
  v73 = v15;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_100018C54(v12, v13);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCBB8, type metadata accessor for ETP_Tap, &unk_1000CC898);
  result = sub_1000C1864();
  if (v1)
  {
    return result;
  }

  v17 = &v10[v8[6]];
  v18 = v17[1];
  if (v18 >> 60 == 15)
  {
    goto LABEL_53;
  }

  v19 = &v10[v8[5]];
  if (*(v19 + 1) >> 60 == 15)
  {
    goto LABEL_53;
  }

  v74 = &v10[v8[7]];
  if (v74[1] >> 60 == 15)
  {
    goto LABEL_53;
  }

  v20 = *v17;
  v21 = v18 >> 62;
  v68 = v19;
  if ((v18 >> 62) <= 1)
  {
    if (!v21)
    {
      v67 = HIWORD(v18);
      sub_100018C54(v20, v18);
      sub_100018CD0(v20, v18);
      v22 = v67;
      goto LABEL_18;
    }

LABEL_17:
    v67 = HIDWORD(v20);
    sub_100018C54(v20, v18);
    result = sub_100018CD0(v20, v18);
    v22 = v67 - v20;
    if (__OFSUB__(v67, v20))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  if (v21 != 2)
  {
    sub_100018C54(v20, v18);
    sub_100018CD0(v20, v18);
    v24 = v68;
    goto LABEL_21;
  }

  v23 = *(v20 + 24);
  v66 = *(v20 + 16);
  v67 = v23;
  sub_100018C54(v20, v18);
  sub_100018CD0(v20, v18);
  v22 = v67 - v66;
  if (__OFSUB__(v67, v66))
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  v24 = v68;
  if ((v22 & 3) != 0)
  {
LABEL_53:
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_54;
  }

LABEL_21:
  v25 = *v24;
  v26 = v24[1];
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v24;
  }

  if (v26 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = v24[1];
  }

  v29 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v29)
    {
      v67 = HIWORD(v28);
      sub_100018C54(v25, v26);
      sub_100018CD0(v27, v28);
      v30 = v67;
      goto LABEL_35;
    }

LABEL_34:
    v67 = HIDWORD(v27);
    sub_100018C54(v25, v26);
    result = sub_100018CD0(v27, v28);
    v30 = v67 - v27;
    if (__OFSUB__(v67, v27))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    goto LABEL_35;
  }

  if (v29 != 2)
  {
    sub_100018C54(v25, v26);
    sub_100018CD0(v27, v28);
    goto LABEL_38;
  }

  v31 = *(v27 + 24);
  v66 = *(v27 + 16);
  v67 = v31;
  sub_100018C54(v25, v26);
  v25 = sub_100018CD0(v27, v28);
  v30 = v67 - v66;
  if (__OFSUB__(v67, v66))
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  if (v30)
  {
    goto LABEL_53;
  }

LABEL_38:
  v32 = *v74;
  v33 = v74[1];
  if (v33 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = *v74;
  }

  if (v33 >> 60 == 15)
  {
    v35 = 0xC000000000000000;
  }

  else
  {
    v35 = v74[1];
  }

  v36 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v36)
    {
      v67 = HIWORD(v35);
      sub_100018C54(v32, v33);
      sub_100018CD0(v34, v35);
      v37 = v67;
      goto LABEL_52;
    }

LABEL_51:
    v67 = HIDWORD(v34);
    sub_100018C54(v32, v33);
    result = sub_100018CD0(v34, v35);
    v37 = v67 - v34;
    if (__OFSUB__(v67, v34))
    {
LABEL_95:
      __break(1u);
      return result;
    }

    goto LABEL_52;
  }

  if (v36 != 2)
  {
    sub_100018C54(v32, v33);
    sub_100018CD0(v34, v35);
    v39 = v68;
    goto LABEL_58;
  }

  v38 = *(v34 + 24);
  v66 = *(v34 + 16);
  v67 = v38;
  sub_100018C54(v32, v33);
  v32 = sub_100018CD0(v34, v35);
  v37 = v67 - v66;
  if (__OFSUB__(v67, v66))
  {
    __break(1u);
    goto LABEL_51;
  }

LABEL_52:
  v39 = v68;
  if ((v37 & 3) != 0)
  {
    goto LABEL_53;
  }

LABEL_58:
  v40 = *v17;
  v41 = v17[1];
  if (v41 >> 60 == 15)
  {
    v42 = 0;
  }

  else
  {
    v42 = *v17;
  }

  if (v41 >> 60 == 15)
  {
    v43 = 0xC000000000000000;
  }

  else
  {
    v43 = v17[1];
  }

  v44 = v39;
  sub_100018C54(v40, v41);
  sub_1000BFAB4(v42, v43);
  v67 = v45;
  sub_100018CD0(v42, v43);
  v46 = v44[1];
  if (v46 >> 60 == 15)
  {
    v47 = 0;
  }

  else
  {
    v47 = *v44;
  }

  if (v46 >> 60 == 15)
  {
    v48 = 0xC000000000000000;
  }

  else
  {
    v48 = v44[1];
  }

  sub_100018C54(*v44, v46);
  sub_1000BFBE4(v47, v48);
  v50 = v49;
  sub_100018CD0(v47, v48);
  v51 = v74[1];
  if (v51 >> 60 == 15)
  {
    v52 = 0;
  }

  else
  {
    v52 = *v74;
  }

  if (v51 >> 60 == 15)
  {
    v53 = 0xC000000000000000;
  }

  else
  {
    v53 = v74[1];
  }

  sub_100018C54(*v74, v51);
  sub_1000BFAB4(v52, v53);
  v68 = v54;
  v55 = v52;
  v56 = v67;
  result = sub_100018CD0(v55, v53);
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = v50;
    if (v57 == *(v50 + 16))
    {
      v59 = v68;
      if (v57 == v68[2])
      {
        v60 = 0;
        v64[1] = v4 + 32;
        v74 = _swiftEmptyArrayStorage;
        v65 = v57;
        v66 = v58;
        while (v60 < *(v56 + 16))
        {
          if (v60 >= *(v58 + 16))
          {
            goto LABEL_91;
          }

          if (v60 >= v59[2])
          {
            goto LABEL_92;
          }

          sub_1000C5064();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_10004509C(0, v74[2] + 1, 1, v74);
          }

          v62 = v74[2];
          v61 = v74[3];
          if (v62 >= v61 >> 1)
          {
            v74 = sub_10004509C((v61 > 1), v62 + 1, 1, v74);
          }

          ++v60;
          v63 = v74;
          v74[2] = v62 + 1;
          result = (*(v4 + 32))(v63 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v62, v6, v3);
          v58 = v66;
          v56 = v67;
          v59 = v68;
          if (v65 == v60)
          {

            sub_1000C1FE4();
            return sub_1000C0E48(v10, type metadata accessor for ETP_Tap);
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }
  }

  sub_1000C4FC4();
  sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
LABEL_54:
  sub_1000C4FB4();
  swift_willThrow();
  return sub_1000C0E48(v10, type metadata accessor for ETP_Tap);
}

void sub_1000BFAB4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_16:
      v3 = _swiftEmptyArrayStorage[2];
LABEL_17:
      if (!(v3 >> 61))
      {
        sub_1000A4648();
        sub_1000C1364();
        return;
      }

      goto LABEL_20;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2) >> 2;
    if (BYTE6(a2) <= 3uLL)
    {
      goto LABEL_16;
    }

LABEL_15:
    v9 = sub_1000C53C4();
    *(v9 + 16) = v3;
    bzero((v9 + 32), 4 * v3);
    goto LABEL_17;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = v7;
LABEL_11:
    v8 = v7 + 3;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    if (v7 < -3)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v3 = v8 >> 2;
    if (v7 <= 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_1000BFBE4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_14:
      v3 = _swiftEmptyArrayStorage[2];
LABEL_15:
      if ((v3 + 0x4000000000000000) >= 0)
      {
        sub_1000A4648();
        sub_1000C1364();
        return;
      }

      goto LABEL_18;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2) >> 1;
    if (BYTE6(a2) <= 1uLL)
    {
      goto LABEL_14;
    }

LABEL_13:
    v8 = sub_1000C53C4();
    *(v8 + 16) = v3;
    bzero((v8 + 32), 2 * v3);
    goto LABEL_15;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = v7;
LABEL_11:
    if (v7 < -1)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v3 = v7 / 2;
    if (v7 <= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
}

void sub_1000BFD10(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v5 = sub_1000C2614();
  v6 = *(v5 - 8);
  v115 = v5;
  v116 = v6;
  __chkstk_darwin(v5);
  v117 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C21A4();
  v9 = *(v8 - 8);
  v119 = v8;
  v120 = v9;
  v10 = __chkstk_darwin(v8);
  v118 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v89 - v13;
  __chkstk_darwin(v12);
  v16 = &v89 - v15;
  v17 = sub_1000C1774();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for ETP_Doodle(0);
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v22 = sub_1000C57B4();
  v23 = sub_1000C5554();
  sub_1000C1A44("Parsing message type doodle", 27, 2, &_mh_execute_header, v22, v23, _swiftEmptyArrayStorage);

  v124 = a1;
  v125 = a2;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  sub_100018C68(a1, a2);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB78, type metadata accessor for ETP_Doodle, &unk_1000CC5C8);
  v24 = v126;
  sub_1000C1864();
  if (v24)
  {
    return;
  }

  v110 = v21;
  v113 = v16;
  v126 = v14;
  v25 = &v20[v18[5]];
  if ((v25[4] & 1) != 0 || (v26 = &v20[v18[6]], v26[1] >> 60 == 15) || (v28 = &v20[v18[7]], v29 = v28[1], v29 >> 60 == 15) || (v30 = *v25, !v30))
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_5;
  }

  v112 = 0;
  v31 = *v28;
  sub_100018C54(*v28, v29);
  sub_1000BFAB4(v31, v29);
  v33 = v32;
  sub_100018CD0(v31, v29);
  v34 = &v20[v18[8]];
  v35 = *v34;
  v36 = v34[1];
  v99 = v34;
  if (v36 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  if (v36 >> 60 == 15)
  {
    v38 = 0xC000000000000000;
  }

  else
  {
    v38 = v36;
  }

  sub_100018C54(v35, v36);
  sub_1000BFBE4(v37, v38);
  v40 = v39;
  sub_100018CD0(v37, v38);
  v96 = *(v33 + 16);
  if (v96 != v30)
  {

    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_5:
    sub_1000C4FB4();
    swift_willThrow();
    v27 = v20;
LABEL_6:
    sub_1000C0E48(v27, type metadata accessor for ETP_Doodle);
    return;
  }

  v90 = v20;
  v41 = v26[1];
  if (v41 >> 60 == 15)
  {
    v42 = 0;
  }

  else
  {
    v42 = *v26;
  }

  if (v41 >> 60 == 15)
  {
    v43 = 0xC000000000000000;
  }

  else
  {
    v43 = v26[1];
  }

  sub_100018C54(*v26, v41);
  sub_1000BFAB4(v42, v43);
  v45 = v44;
  sub_100018CD0(v42, v43);
  v106 = 0;
  v46 = 0;
  v94 = v45 + 32;
  v109 = (v120 + 32);
  v95 = v33;
  v93 = v33 + 32;
  v92 = v116 + 32;
  v91 = v45 + 36;
  v89 = v40 + 32;
  v100 = _swiftEmptyArrayStorage;
  v47 = v119;
  v105 = v45;
  v48 = v40;
  v49 = 0;
  v107 = v48;
  while (1)
  {
    v50 = *(v45 + 16);
    if (v46 >= v50)
    {

      if (v49 == v96)
      {
        v87 = v90;
LABEL_80:
        v88 = *(v45 + 16);

        if (v46 == v88)
        {
          sub_1000C27E4();
LABEL_84:
          v27 = v87;
          goto LABEL_6;
        }
      }

      else
      {

        v87 = v90;
      }

      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      goto LABEL_84;
    }

    if (v46 < 0)
    {
      goto LABEL_89;
    }

    v51 = *(v94 + 4 * v46);
    v111 = v51 >> 16;
    if (__OFADD__(v46 + 1, v51 >> 16))
    {
      goto LABEL_90;
    }

    v108 = v46 + 1 + (v51 >> 16);
    if (v50 < v108)
    {

      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      v27 = v90;
      goto LABEL_6;
    }

    v52 = v46 + 1;
    v97 = v51;
    v98 = v49;
    v53 = v99[1];
    v54 = sub_1000C57B4();
    v55 = sub_1000C5554();
    if (v53 >> 60 == 15)
    {
      sub_1000C1A44("Not using point time delta data", 31, 2, &_mh_execute_header, v54, v55, _swiftEmptyArrayStorage);

      v56 = v108;
      if (v108 <= v46)
      {
        goto LABEL_93;
      }

      v57 = v112;
      if (*(v45 + 16) < v108)
      {
        goto LABEL_94;
      }

      v58 = v108 - v52;
      if (v108 != v52)
      {
        *&v121 = _swiftEmptyArrayStorage;

        sub_1000459D4(0, v58 & ~(v58 >> 63), 0);
        if ((v58 & 0x8000000000000000) == 0)
        {
          v61 = v56 - v52;
          v62 = 0;
          v63 = v121;
          v57 = v112;
          while ((v52 + v62) < v56 && v62 < v61)
          {
            sub_1000C2194();
            if (v57)
            {

              swift_bridgeObjectRelease_n();

              sub_1000C0E48(v90, type metadata accessor for ETP_Doodle);
              return;
            }

            *&v121 = v63;
            v66 = *(v63 + 16);
            v65 = *(v63 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_1000459D4((v65 > 1), v66 + 1, 1);
              v63 = v121;
            }

            ++v62;
            *(v63 + 16) = v66 + 1;
            (*(v120 + 32))(v63 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v66, v118, v119);
            v61 = v56 - v52;
            if (v111 == v62)
            {
              v45 = v105;

              v47 = v119;
              goto LABEL_62;
            }
          }

          __break(1u);
          goto LABEL_86;
        }

        goto LABEL_96;
      }

      goto LABEL_62;
    }

    sub_1000C1A44("Using point time delta data", 27, 2, &_mh_execute_header, v54, v55, _swiftEmptyArrayStorage);

    v59 = v108;
    if (v108 <= v46)
    {
      goto LABEL_92;
    }

    v57 = v112;
    v60 = v107;
    if (*(v45 + 16) < v108)
    {
      goto LABEL_95;
    }

    if (v108 != v52)
    {
      break;
    }

LABEL_62:
    v81 = v98;
    if (v98 >= *(v95 + 16))
    {
      goto LABEL_91;
    }

    sub_1000C2604();
    v112 = v57;
    if (v57)
    {

LABEL_78:

LABEL_79:

      sub_1000C0E48(v90, type metadata accessor for ETP_Doodle);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_1000450C4(0, v100[2] + 1, 1, v100);
    }

    v83 = v100[2];
    v82 = v100[3];
    if (v83 >= v82 >> 1)
    {
      v100 = sub_1000450C4((v82 > 1), v83 + 1, 1, v100);
    }

    v84 = v100;
    v100[2] = v83 + 1;
    (*(v116 + 32))(v84 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v83, v117, v115);
    v49 = v81 + 1;
    v85 = v108;
    v46 = v108;
    if (v49 == v96)
    {

      v87 = v90;
      v46 = v85;
      goto LABEL_80;
    }
  }

  *&v121 = _swiftEmptyArrayStorage;
  v67 = (v108 - v52) & ~((v108 - v52) >> 63);
  v104 = v108 - v52;

  sub_1000459D4(0, v67, 0);
  v68 = v104;
  if ((v104 & 0x8000000000000000) == 0)
  {
    v69 = 0;
    v70 = v121;
    v71 = *(v60 + 16);
    v72 = v106;
    if (v106 > v71)
    {
      v71 = v106;
    }

    v103 = v71 - v106;
    v102 = v91 + 4 * v46;
    v101 = v89 + 2 * v106;
    while (1)
    {
      v73 = v126;
      if ((v52 + v69) >= v59 || v69 >= v68)
      {
        break;
      }

      v74 = v112;
      v75 = v113;
      if (v103 == v69)
      {

        sub_1000C4FC4();
        sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v86 = swift_allocError();
        sub_1000C4FB4();
        v112 = v86;
        swift_willThrow();

        goto LABEL_79;
      }

      if (v72 < 0)
      {
        goto LABEL_87;
      }

      if (v72 + v69 >= *(v60 + 16))
      {
        goto LABEL_88;
      }

      sub_1000C2194();
      v112 = v74;
      if (v74)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_78;
      }

      v76 = *v109;
      (*v109)(v75, v73, v47);
      *&v121 = v70;
      v77 = v47;
      v79 = *(v70 + 16);
      v78 = *(v70 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1000459D4((v78 > 1), v79 + 1, 1);
        v70 = v121;
      }

      ++v69;
      *(v70 + 16) = v79 + 1;
      v76((v70 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v79), v75, v77);
      v47 = v77;
      v45 = v105;
      v60 = v107;
      v59 = v108;
      v72 = v106;
      v68 = v104;
      if (v111 == v69)
      {
        v80 = v106;

        v106 = v80 + v69;
        v57 = v112;
        goto LABEL_62;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000C0D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FE098, &qword_1000D1260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C0D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FE098, &qword_1000D1260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C0E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C0E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000C0F5C(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithLongLong:a1];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Found unexpected event class for event type %{public}@", &v4, 0xCu);
}

void sub_1000C1014(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not unarchive event with error: %{public}@", &v2, 0xCu);
}

void sub_1000C108C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SWHighlightMentionEvent(__BDForwardDeclare) __bdInitWithHighlightURL:mentionedPersonHandle:mentionedPersonIdentity:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%s] SWHighlightMentionEvent did not respond to any of the expected initializers.", &v1, 0xCu);
}