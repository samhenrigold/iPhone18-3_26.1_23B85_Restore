int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001940(&qword_100018090, &qword_10000FFB0);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v17 = sub_10000EEA0();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000EEB0();
  __chkstk_darwin(v9);
  v10 = sub_10000E9A0();
  __chkstk_darwin(v10 - 8);
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10000EA10();
  qword_1000181F0 = sub_10000E9E0();
  qword_1000181F8 = &off_100014950;
  sub_10000E9B0();
  qword_100018200 = &off_100014D40;
  sub_10000E9C0();
  sub_10000EA70();
  sub_100001988();
  sub_10000E9F0();
  v16[1] = qword_1000181F0;
  sub_1000019DC();
  sub_10000E990();
  v18 = &_swiftEmptyArrayStorage;
  sub_100001A28();
  sub_100001940(&qword_1000180B0, &qword_10000FFB8);
  sub_100001A80();
  sub_10000EF40();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v17);
  v11 = sub_10000EEC0();
  v18 = v11;
  sub_10000EB90();
  sub_100001B2C();
  sub_10000EA00();

  v12 = enum case for SandboxID.blastdoor(_:);
  v13 = sub_10000ED30();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v5, v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_10000E9D0();
  sub_100001B80(v5);
  return 0;
}

uint64_t sub_100001940(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001988()
{
  result = qword_100018098;
  if (!qword_100018098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018098);
  }

  return result;
}

unint64_t sub_1000019DC()
{
  result = qword_1000180A0;
  if (!qword_1000180A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000180A0);
  }

  return result;
}

unint64_t sub_100001A28()
{
  result = qword_1000180A8;
  if (!qword_1000180A8)
  {
    sub_10000EEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180A8);
  }

  return result;
}

unint64_t sub_100001A80()
{
  result = qword_1000180B8;
  if (!qword_1000180B8)
  {
    sub_100001AE4(&qword_1000180B0, &qword_10000FFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180B8);
  }

  return result;
}

uint64_t sub_100001AE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001B2C()
{
  result = qword_1000180C0;
  if (!qword_1000180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180C0);
  }

  return result;
}

uint64_t sub_100001B80(uint64_t a1)
{
  v2 = sub_100001940(&qword_100018090, &qword_10000FFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100001BEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100001C00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_100001C6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001C78(uint64_t a1, int a2)
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

uint64_t sub_100001C98(uint64_t result, int a2, int a3)
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

__n128 sub_100001CD4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100001CE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void sub_100001D70(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100001DBC(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000012 && 0x800000010000F480 == a2;
  if (v2 || (sub_10000EFE0() & 1) != 0 || a1 == 0x702E63696C627570 && a2 == 0xEA0000000000676ELL)
  {
    return 1;
  }

  if ((sub_10000EFE0() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010000F9A0 == a2)
  {
    return 1;
  }

  if ((sub_10000EFE0() & 1) != 0 || a1 == 0x682E63696C627570 && a2 == 0xEB00000000666965)
  {
    return 1;
  }

  v6 = sub_10000EFE0();
  v7 = a1 == 0x682E63696C627570 && a2 == 0xEB00000000636965;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    return 1;
  }

  v9 = sub_10000EFE0();
  v10 = a1 == 0x682E63696C627570 && a2 == 0xEC00000073636965;
  v11 = v10;
  if ((v9 & 1) != 0 || v11 || (sub_10000EFE0() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010000FA20 == a2)
  {
    return 1;
  }

  return sub_10000EFE0();
}

uint64_t sub_100002004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v101 = a3;
  v96 = sub_10000EBC0();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v104 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001940(&qword_1000180F8, &qword_100010110);
  __chkstk_darwin(v5 - 8);
  v107 = &v89 - v6;
  v111 = sub_10000EC20();
  v105 = *(v111 - 8);
  __chkstk_darwin(v111);
  v103 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001940(&qword_100018100, &qword_100010118);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v89 - v14;
  __chkstk_darwin(v13);
  v112 = &v89 - v15;
  v16 = sub_100001940(&qword_100018108, &qword_100010120);
  __chkstk_darwin(v16 - 8);
  v106 = &v89 - v17;
  v18 = sub_10000ED00();
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
  v28 = sub_10000ECA0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100003244();
  v32 = sub_10000EF30();
  sub_100001940(&qword_100018118, &unk_100010128);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100010090;
  sub_10000EC60();
  v34 = sub_10000EC80();
  v36 = v35;
  (*(v29 + 8))(v31, v28);
  v113 = v34;
  v114 = v36;
  v37 = sub_10000EC40();
  v39 = v38;

  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100003290();
  *(v33 + 32) = v37;
  *(v33 + 40) = v39;
  v40 = v112;
  v41 = sub_10000EE60();
  sub_10000E970("Unpacking image at path %{public}@", 34, 2, &_mh_execute_header, v32, v41, v33);

  v42 = sub_10000EC70();
  v115 = v42;
  v116 = &protocol witness table for File;
  v43 = sub_1000032E4(&v113);
  (*(*(v42 - 8) + 16))(v43, a1, v42);
  sub_10000EA30();
  v44 = sub_10000ECD0();
  (*(*(v44 - 8) + 56))(v106, 1, 1, v44);
  sub_10000ECE0();
  v45 = sub_10000EA70();
  v46 = *(v45 - 8);
  v47 = *(v46 + 7);
  v47(v40, 1, 1, v45);
  sub_10000ECF0();
  sub_100003348(&v113, v115);
  v48 = v108;
  v49 = v107;
  v50 = v111;
  sub_10000EBA0();
  if (v48)
  {
    sub_1000033D8(v40, &qword_100018100, &qword_100010118);
    (*(v110 + 8))(v27, v109);
    return sub_10000338C(&v113);
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
    sub_1000033D8(v49, &qword_1000180F8, &qword_100010110);
    sub_10000338C(&v113);
    v55 = v101;
    v56 = v106;
    v57 = v40;
  }

  else
  {
    v89 = v27;
    v58 = v103;
    (*(v52 + 32))(v103, v54, v50);
    sub_10000338C(&v113);
    v59 = sub_10000EBF0();
    if (!v60)
    {
      sub_10000ED20();
      sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_10000ED10();
      swift_willThrow();
      (*(v52 + 8))(v58, v50);
      sub_1000033D8(v40, &qword_100018100, &qword_100010118);
      return (*(v110 + 8))(v89, v109);
    }

    v61 = v59;
    v62 = v60;
    if (sub_10000EA20())
    {
      v63 = v61 == 0x682E63696C627570;
      v64 = v110;
      v65 = v53;
      if ((!v63 || v62 != 0xEB00000000636965) && (sub_10000EFE0() & 1) == 0)
      {

        sub_10000ED20();
        sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_10000ED10();
        swift_willThrow();
        (*(v105 + 8))(v103, v111);
        sub_1000033D8(v112, &qword_100018100, &qword_100010118);
        return (*(v64 + 8))(v89, v109);
      }

      sub_10000EA40();
      sub_10000EA30();
      v113 = 0;
      v114 = 0;
      v66 = v97;
      v67 = v89;
      v68 = v92;
      sub_10000ECB0();
      if (v68)
      {

        (*(v105 + 8))(v103, v111);
        sub_1000033D8(v112, &qword_100018100, &qword_100010118);
        return (*(v64 + 8))(v67, v109);
      }

      v82 = v109;
      (*(v64 + 16))(v98, v66, v109);
      (*(v95 + 104))(v65, enum case for StickerEffect.none(_:), v96);
      v83 = v99;
      sub_10000EA60();
      (*(v64 + 8))(v66, v82);
      (*(v105 + 8))(v103, v111);
      v57 = v112;
      sub_1000033D8(v112, &qword_100018100, &qword_100010118);
      v90(v83, 0, 1, v108);
      sub_1000034F0(v83, v57);
      v27 = v67;
      v55 = v101;
      v92 = 0;
    }

    else
    {
      v107 = v61;
      v69 = sub_100001DBC(v61, v62);
      v70 = v110;
      if ((v69 & 1) != 0 && sub_10000EBD0() > 1)
      {
        v71 = sub_10000EF30();
        v72 = sub_10000EE60();
        sub_10000E970("Unpacking image with thumbnailer because it is animated", 55, 2, &_mh_execute_header, v71, v72, &_swiftEmptyArrayStorage);

        v73 = sub_10000EA40();
        v74 = v103;
        v75 = sub_10000EBD0();
        v76 = sub_10000EA50();
        v77 = v92;
        sub_100003560(v73, v75, v76);
        v56 = v106;
        if (v77)
        {

          (*(v105 + 8))(v74, v111);
          sub_1000033D8(v112, &qword_100018100, &qword_100010118);
          return (*(v110 + 8))(v89, v109);
        }

        sub_10000EA30();
        sub_10000ECC0();
        v57 = v112;
        v92 = 0;
        sub_10000EBD0();
        sub_10000EC10();
        (*(v95 + 104))(v104, enum case for StickerEffect.none(_:), v96);
        v88 = v93;
        sub_10000EA60();
        (*(v105 + 8))(v74, v111);
        sub_1000033D8(v57, &qword_100018100, &qword_100010118);
        v90(v88, 0, 1, v108);
        sub_1000034F0(v88, v57);
        v27 = v89;
        v55 = v101;
        goto LABEL_21;
      }

      v78 = sub_10000EF30();
      v79 = sub_10000EE60();
      sub_10000E970("Unpacking image with software HEIF->ASTC decoder", 48, 2, &_mh_execute_header, v78, v79, &_swiftEmptyArrayStorage);

      v27 = v89;
      (*(v70 + 16))(v98, v89, v109);
      v80 = v103;
      sub_10000EBD0();
      sub_10000EBE0();
      sub_10000EC00();
      sub_10000EBB0();
      sub_10000EC10();
      v81 = v99;
      sub_10000EA60();
      (*(v105 + 8))(v80, v111);
      v57 = v112;
      sub_1000033D8(v112, &qword_100018100, &qword_100010118);
      v90(v81, 0, 1, v108);
      sub_1000034F0(v81, v57);
      v55 = v101;
    }

    v56 = v106;
  }

LABEL_21:
  v84 = v100;
  sub_100003438(v57, v100);
  v85 = v108;
  if ((*(v56 + 6))(v84, 1, v108) == 1)
  {
    sub_1000033D8(v84, &qword_100018100, &qword_100010118);
    v86 = sub_10000EF30();
    v87 = sub_10000EE60();
    sub_10000E970("Failed to generate astc image", 29, 2, &_mh_execute_header, v86, v87, &_swiftEmptyArrayStorage);

    sub_10000ED20();
    sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10000ED10();
    swift_willThrow();
    sub_1000033D8(v57, &qword_100018100, &qword_100010118);
    return (*(v110 + 8))(v27, v109);
  }

  else
  {
    sub_1000033D8(v57, &qword_100018100, &qword_100010118);
    (*(v110 + 8))(v27, v109);
    return (*(v56 + 4))(v55, v84, v85);
  }
}

uint64_t sub_1000031B4@<X0>(uint64_t a1@<X8>)
{
  sub_10000EE70();
  v2 = sub_10000EC20();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

unint64_t sub_100003244()
{
  result = qword_100018110;
  if (!qword_100018110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018110);
  }

  return result;
}

unint64_t sub_100003290()
{
  result = qword_100018120;
  if (!qword_100018120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018120);
  }

  return result;
}

uint64_t *sub_1000032E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100003348(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000338C(void *a1)
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

uint64_t sub_1000033D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001940(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001940(&qword_100018100, &qword_100010118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000034A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000034F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001940(&qword_100018100, &qword_100010118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003560(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    sub_10000ED20();
    sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10000ED10();
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

uint64_t sub_10000370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v42 = a4;
  v5 = sub_100001940(&qword_100018138, &qword_100010210);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v30 - v6;
  v36 = sub_10000ECA0();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000E910();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000EC70();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000EE40();
  sub_10000E838(0, &qword_100018110, OS_os_log_ptr);
  v16 = sub_10000EF20();
  v17 = *(v12 + 16);
  v37 = a1;
  v17(v14, a1, v11);
  v33 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v5;
    v20 = v19;
    v43 = v19;
    *v18 = 136446210;
    sub_10000EC60();
    sub_10000EC90();
    (*(v34 + 8))(v8, v36);
    sub_10000D468(&qword_100018148, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = v32;
    v22 = sub_10000EFC0();
    v24 = v23;
    (*(v35 + 8))(v10, v21);
    (*(v12 + 8))(v14, v11);
    v25 = sub_10000CEC0(v22, v24, &v43);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v33, "BlastDoor processing thumbnail for video: %{public}s", v18, 0xCu);
    sub_10000338C(v20);
    v5 = v31;
  }

  else
  {

    v26 = (*(v12 + 8))(v14, v11);
  }

  __chkstk_darwin(v26);
  v28 = v40;
  v27 = v41;
  *(&v30 - 4) = v37;
  *(&v30 - 3) = v28;
  *(&v30 - 2) = v27;
  sub_100001940(&qword_100018140, &qword_100010218);
  (*(v39 + 104))(v38, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_10000EE00();
}

uint64_t sub_100003BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  v37 = a3;
  v33 = a1;
  v38 = sub_100001940(&qword_100018158, &qword_100010228);
  v4 = *(v38 - 8);
  v36 = *(v4 + 64);
  __chkstk_darwin(v38);
  v6 = &v27 - v5;
  v30 = &v27 - v5;
  v31 = sub_10000EAD0();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000EC70();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001940(&qword_100018160, &qword_100010230);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v32 = &v27 - v14;
  v16 = sub_10000EDD0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v34, v9);
  v17 = v31;
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v31);
  v18 = v4;
  (*(v4 + 16))(v6, v33, v38);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = (v8 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v12, v28);
  v24 = v37;
  *(v23 + v20) = v37;
  (*(v7 + 32))(v23 + v21, v29, v17);
  (*(v18 + 32))(v23 + v22, v30, v38);
  v25 = v24;
  sub_10000C9BC(0, 0, v32, &unk_100010240, v23);
}

uint64_t sub_100003F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_100001940(&qword_100018158, &qword_100010228);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = sub_10000EAD0();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  v12 = sub_10000ECA0();
  v7[15] = v12;
  v7[16] = *(v12 - 8);
  v7[17] = swift_task_alloc();
  v13 = sub_10000E910();
  v7[18] = v13;
  v7[19] = *(v13 - 8);
  v7[20] = swift_task_alloc();
  v14 = sub_10000EC70();
  v7[21] = v14;
  v15 = *(v14 - 8);
  v7[22] = v15;
  v7[23] = *(v15 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000041EC, 0, 0);
}

uint64_t sub_1000041EC(uint64_t a1)
{
  v51 = v1;
  v2 = v1[25];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[3];
  v6 = sub_10000EE40();
  v1[26] = sub_10000E838(0, &qword_100018110, OS_os_log_ptr);
  v7 = sub_10000EF20();
  v47 = *(v4 + 16);
  (v47)(v2, v5, v3);
  v8 = os_log_type_enabled(v7, v6);
  v9 = v1[25];
  v10 = v1[21];
  v11 = v1[22];
  if (v8)
  {
    v13 = v1[19];
    v12 = v1[20];
    v14 = v1[17];
    v41 = v1[18];
    v48 = v6;
    v15 = v1[16];
    v38 = v1[15];
    buf = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *buf = 136446210;
    v39 = v10;
    sub_10000EC60();
    sub_10000EC90();
    (*(v15 + 8))(v14, v38);
    sub_10000D468(&qword_100018148, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = sub_10000EFC0();
    v18 = v17;
    (*(v13 + 8))(v12, v41);
    (*(v11 + 8))(v9, v39);
    v19 = sub_10000CEC0(v16, v18, &v50);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v48, "Task running for video: %{public}s)", buf, 0xCu);
    sub_10000338C(v45);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v20 = v1[22];
  v40 = v1[21];
  v42 = v1[24];
  v21 = v1[14];
  v36 = v1[23];
  v37 = v1[13];
  v23 = v1[11];
  v22 = v1[12];
  v24 = v1[10];
  bufa = v21;
  v46 = v24;
  v25 = v1[7];
  v26 = v1[8];
  v28 = v1[5];
  v27 = v1[6];
  v49 = v1[4];
  v47();
  (*(v22 + 16))(v21, v28, v23);
  (*(v26 + 16))(v24, v27, v25);
  v29 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v30 = (v36 + *(v22 + 80) + v29) & ~*(v22 + 80);
  v31 = (v37 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v32 = swift_allocObject();
  v1[27] = v32;
  *(v32 + 16) = v49;
  (*(v20 + 32))(v32 + v29, v42, v40);
  (*(v22 + 32))(v32 + v30, bufa, v23);
  (*(v26 + 32))(v32 + v31, v46, v25);
  v33 = v49;
  v34 = swift_task_alloc();
  v1[28] = v34;
  *v34 = v1;
  v34[1] = sub_100004614;

  return File.withResource<A>(_:)();
}

uint64_t sub_100004614()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000047D8;
  }

  else
  {

    v2 = sub_100004730;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000047D8()
{

  v1 = sub_10000EE50();
  v2 = sub_10000EF20();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Caught error: %@", v3, 0xCu);
    sub_1000033D8(v4, &qword_100018168, &qword_100010270);
  }

  v6 = v0[29];

  v0[2] = v6;
  sub_10000EDF0();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100004964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10000498C, 0, 0);
}

uint64_t sub_10000498C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_10000DE68();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  sub_100001940(&qword_100018178, &qword_100010288);
  *v5 = v0;
  v5[1] = sub_100004AC8;
  v6 = *(v0 + 24);

  return _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v6, v2, v3, 0, 0, &unk_100010280, v4, &type metadata for () + 8);
}

uint64_t sub_100004AC8()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100004C00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100004C00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a2;
  v6[56] = a3;
  sub_100001940(&qword_100018140, &qword_100010218);
  v6[59] = swift_task_alloc();
  v7 = sub_100001940(&qword_100018180, &unk_100010290);
  v6[60] = v7;
  v6[61] = *(v7 - 8);
  v6[62] = swift_task_alloc();
  v8 = sub_10000EB90();
  v6[63] = v8;
  v6[64] = *(v8 - 8);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v9 = sub_10000EAB0();
  v6[67] = v9;
  v6[68] = *(v9 - 8);
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v10 = sub_10000EA90();
  v6[71] = v10;
  v6[72] = *(v10 - 8);
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  sub_100001940(&qword_100018108, &qword_100010120);
  v6[75] = swift_task_alloc();
  v11 = sub_10000ED00();
  v6[76] = v11;
  v6[77] = *(v11 - 8);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v12 = sub_10000EE20();
  v6[80] = v12;
  v6[81] = *(v12 - 8);
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v13 = sub_10000EB50();
  v6[84] = v13;
  v6[85] = *(v13 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v14 = sub_10000EB70();
  v6[89] = v14;
  v6[90] = *(v14 - 8);
  v6[91] = swift_task_alloc();
  v15 = sub_10000EAE0();
  v6[92] = v15;
  v6[93] = *(v15 - 8);
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v16 = sub_10000E910();
  v6[99] = v16;
  v6[100] = *(v16 - 8);
  v6[101] = swift_task_alloc();
  v17 = sub_10000ECA0();
  v6[102] = v17;
  v6[103] = *(v17 - 8);
  v6[104] = swift_task_alloc();

  return _swift_task_switch(sub_1000051EC, 0, 0);
}

uint64_t sub_1000051EC()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  sub_10000EC60();
  sub_10000EC90();
  (*(v2 + 8))(v1, v3);
  v0[105] = sub_100001940(&qword_100018188, &qword_1000102A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100010090;
  *(v7 + 32) = sub_10000ED50();
  *(v7 + 40) = v8;
  *(v7 + 72) = &type metadata for Bool;
  *(v7 + 48) = 1;
  sub_10000E6E0(v7);
  swift_setDeallocating();
  sub_1000033D8(v7 + 32, &qword_100018190, &qword_1000102A8);
  swift_deallocClassInstance();
  v9 = objc_allocWithZone(AVURLAsset);
  sub_10000E900(v10);
  v12 = v11;
  isa = sub_10000ED40().super.isa;

  v14 = [v9 initWithURL:v12 options:isa];
  v0[106] = v14;

  (*(v5 + 8))(v4, v6);
  v15 = sub_10000EE40();
  v0[107] = sub_10000E838(0, &qword_100018110, OS_os_log_ptr);
  v16 = sub_10000EF20();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v16, v15, "Created asset: %{public}@", v17, 0xCu);
    sub_1000033D8(v18, &qword_100018168, &qword_100010270);
  }

  sub_10000EE40();
  v20 = sub_10000EF20();
  sub_10000E980();

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_1000055D8;
  v21 = swift_continuation_init();
  v0[17] = sub_100001940(&qword_100018198, &qword_1000102B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000C8CC;
  v0[13] = &unk_100015130;
  v0[14] = v21;
  [v14 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000055D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 864) = v2;
  if (v2)
  {
    v3 = *(v1 + 848);

    v4 = sub_10000AB38;
  }

  else
  {
    v4 = sub_100005720;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005720(uint64_t a1)
{
  v2 = *(v1 + 400);
  sub_10000EE40();
  v3 = sub_10000EF20();
  sub_10000E980();

  if (v2 >> 62)
  {
    v5 = sub_10000EF80();
    v4 = sub_10000EF80();
    *(v1 + 872) = v5;
    if (v4)
    {
LABEL_3:
      v6 = __OFSUB__(v4, 1);
      v7 = v4 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v2 + 8 * v7 + 32);
LABEL_8:
          v9 = v8;

          goto LABEL_11;
        }

        __break(1u);
      }

      v8 = sub_10000EF60();
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
    *(v1 + 872) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_11:
  *(v1 + 880) = v9;
  v10 = sub_10000EE40();
  v11 = sub_10000EF20();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v11, v10, "Tracks found: %{public}ld)", v12, 0xCu);
  }

  v13 = *(v1 + 848);
  if (v9)
  {
    v14 = *(v1 + 784);
    v15 = *(v1 + 744);
    v16 = *(v1 + 736);
    v17 = objc_opt_self();
    v18 = v9;
    *(v1 + 1484) = [v17 videoAssetIsSpatial:v13];
    sub_10000EAC0();
    v19 = *(v15 + 88);
    *(v1 + 888) = v19;
    *(v1 + 896) = (v15 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v20 = v19(v14, v16);
    *(v1 + 1460) = v20;
    v21 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    *(v1 + 1464) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    if (v20 == v21)
    {
      v22 = *(v1 + 784);
      v23 = *(v1 + 736);
      v24 = *(v1 + 728);
      v25 = *(v1 + 720);
      v26 = *(v1 + 712);
      v27 = *(*(v1 + 744) + 96);
      *(v1 + 904) = v27;
      v27(v22, v23);
      (*(v25 + 32))(v24, v22, v26);
      sub_100001940(&qword_1000181D0, &qword_1000102D8);
      v28 = sub_10000E920();
      *(v1 + 912) = v28;
      v29 = swift_task_alloc();
      *(v1 + 920) = v29;
      *v29 = v1;
      v29[1] = sub_10000602C;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v1 + 368, v28, 0, 0);
    }

    if (v20 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
    {
      v31 = *(v1 + 784);
      v32 = *(v1 + 704);
      v33 = *(v1 + 680);
      v34 = *(v1 + 672);
      v35 = *(*(v1 + 744) + 96);
      v35(v31, *(v1 + 736));
      (*(v33 + 32))(v32, v31, v34);
      if (sub_10000EB20() >= 1 && sub_10000EB30() >= 1)
      {
        v36 = *(v1 + 704);
        v37 = *(v1 + 680);
        v38 = *(v1 + 672);
        v39 = sub_10000EB20();
        v40 = sub_10000EB30();
        v41 = sub_10000EAF0();
        (*(v37 + 8))(v36, v38);
        *(v1 + 1000) = v40;
        *(v1 + 992) = v39;
        *(v1 + 984) = v41;
        *(v1 + 976) = v35;
        v42 = swift_task_alloc();
        *(v1 + 1008) = v42;
        *v42 = v1;
        v42[1] = sub_1000066F4;
        v43 = *(v1 + 664);

        return AVAssetTrack.info.getter(v43);
      }

      v44 = *(v1 + 848);
      v45 = *(v1 + 704);
      v46 = *(v1 + 680);
      v47 = *(v1 + 672);

      sub_10000ED20();
      sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v49 = swift_allocError();
      sub_10000ED10();
      v52 = v49;
      swift_willThrow();
    }

    else
    {
      v44 = *(v1 + 848);
      v45 = *(v1 + 784);
      v46 = *(v1 + 744);
      v47 = *(v1 + 736);

      sub_10000ED20();
      sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v48 = swift_allocError();
      sub_10000ED10();
      v52 = v48;
      swift_willThrow();
    }

    (*(v46 + 8))(v45, v47);
  }

  else
  {

    sub_10000ED20();
    sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v30 = swift_allocError();
    sub_10000ED10();
    v52 = v30;
    swift_willThrow();
  }

  **(v1 + 464) = v52;

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_10000602C()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_10000AD34;
  }

  else
  {

    v4 = sub_1000061AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000061AC()
{
  *(v0 + 936) = *(v0 + 368);
  sub_100001940(&qword_1000181D8, &qword_1000102E0);
  v1 = sub_10000E940();
  *(v0 + 952) = v1;
  v2 = swift_task_alloc();
  *(v0 + 960) = v2;
  *v2 = v0;
  v2[1] = sub_1000062BC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v1, 0, 0);
}

uint64_t sub_1000062BC()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_10000AF58;
  }

  else
  {

    v4 = sub_10000643C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000643C()
{
  v28 = v0;
  *(v0 + 192) = *(v0 + 144);
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 176);
  *(v0 + 208) = *(v0 + 160);
  *(v0 + 224) = v3;
  v4 = 0;
  *&v3 = 0;
  v30 = CGRectApplyAffineTransform(*(&v1 - 3), (v0 + 192));
  width = v30.size.width;
  height = v30.size.height;
  v7 = sub_10000EB60();
  v8 = fmin(width / height, 1.77777778);
  if (width / height < 0.75)
  {
    v9 = 0.75;
  }

  else
  {
    v9 = v8;
  }

  v10 = ceil(v7 / v9);
  if (height == 0.0 || width == 0.0)
  {
    v12 = sub_10000EE40();
    v13 = sub_10000EF20();
    v14 = os_log_type_enabled(v13, v12);
    v15 = *(v0 + 728);
    v16 = *(v0 + 720);
    v17 = *(v0 + 712);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v0 + 384) = v7;
      *(v0 + 392) = v10;
      type metadata accessor for CGSize(0);
      v20 = sub_10000ED60();
      v22 = sub_10000CEC0(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v12, "video size is zero, falling back to maxPtSize: %s", v18, 0xCu);
      sub_10000338C(v19);
    }

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v11 = v7 / width;
    if (v7 / width <= v10 / height)
    {
      v11 = v10 / height;
    }

    v7 = ceil(width * v11);
    v10 = ceil(height * v11);
    (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  }

  v23 = *(v0 + 904);
  *(v0 + 1000) = v10;
  *(v0 + 992) = v7;
  *(v0 + 984) = 0;
  *(v0 + 976) = v23;
  v24 = swift_task_alloc();
  *(v0 + 1008) = v24;
  *v24 = v0;
  v24[1] = sub_1000066F4;
  v25 = *(v0 + 664);

  return AVAssetTrack.info.getter(v25);
}

uint64_t sub_1000066F4()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 880);
    v4 = *(v2 + 848);

    v5 = sub_10000B17C;
  }

  else
  {
    v5 = sub_100006850;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006850(uint64_t a1)
{
  v2 = sub_10000EE40();
  v3 = sub_10000EF20();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v1[125];
    v5 = v1[124];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = swift_task_alloc();
  v1[128] = v7;
  *v7 = v1;
  v7[1] = sub_1000069AC;

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_1000069AC(char a1)
{
  v3 = *v2;
  *(v3 + 1485) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v4 = *(v3 + 848);

    v5 = sub_10000B378;
  }

  else
  {
    v5 = sub_100006B04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006B04()
{
  v1 = *(v0 + 848);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 408) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 408];
  *(v0 + 1040) = v3;
  v4 = *(v0 + 408);
  v5 = *(v0 + 848);
  if (!v3)
  {
    v37 = *(v0 + 880);
    v38 = *(v0 + 664);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = v4;
    v42 = sub_10000E8F0();

    v178 = v42;
    swift_willThrow();

    (*(v39 + 8))(v38, v40);
    goto LABEL_32;
  }

  v6 = *(v0 + 992);
  v7 = v4;

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010190;
  *(v8 + 32) = sub_10000ED50();
  *(v8 + 40) = v9;
  *(v8 + 72) = sub_100001940(&qword_1000181A0, &qword_1000102B8);
  *(v8 + 48) = &off_100014E28;
  *(v8 + 80) = sub_10000ED50();
  *(v8 + 88) = v10;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  v11 = *(v0 + 992);
  if (v11 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = *(v0 + 1000);
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 96) = v11;
  *(v8 + 128) = sub_10000ED50();
  *(v8 + 136) = v13;
  if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v14 = *(v0 + 1000);
  if (v14 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_67;
  }

  v15 = *(v0 + 888);
  v16 = *(v0 + 776);
  v17 = *(v0 + 736);
  *(v8 + 168) = &type metadata for Int;
  *(v8 + 144) = v14;
  v18 = sub_10000E6E0(v8);
  swift_setDeallocating();
  sub_100001940(&qword_100018190, &qword_1000102A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10000EAC0();
  v19 = v15(v16, v17);
  v20 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1468) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v19 == v20)
  {
    v21 = *(v0 + 776);
    v22 = *(v0 + 696);
    v23 = v0 + 680;
    v24 = *(v0 + 680);
    v25 = (v0 + 672);
    v26 = *(v0 + 672);
    (*(v0 + 976))(v21, *(v0 + 736));
    (*(v24 + 32))(v22, v21, v26);
    if (sub_10000EB00() >= 1)
    {
      v27 = sub_10000ED50();
      v29 = v28;
      v30 = sub_10000EB00();
      *(v0 + 328) = &type metadata for Int;
      *(v0 + 304) = v30;
      sub_10000E828((v0 + 304), (v0 + 336));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000E2C8((v0 + 336), v27, v29, isUniquelyReferenced_nonNull_native);
    }

    v32 = (v0 + 696);
    *(v0 + 1048) = v18;
    if (sub_10000EAF0() >= 1 && (sub_10000EB10() & 1) != 0)
    {
      sub_100001940(&qword_1000181C0, &qword_1000102D0);
      v33 = sub_10000E960();
      *(v0 + 1056) = v33;
      v34 = swift_task_alloc();
      *(v0 + 1064) = v34;
      *v34 = v0;
      v34[1] = sub_100008044;
      v35 = v0 + 1384;
      v36 = v33;
LABEL_23:

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v35, v36, 0, 0);
    }
  }

  else
  {
    v32 = (v0 + 776);
    v25 = (v0 + 736);
    v23 = v0 + 744;
  }

  (*(*v23 + 8))(*v32, *v25);
  v179 = *(v0 + 1468);
  v43 = *(v0 + 888);
  v44 = *(v0 + 880);
  v45 = *(v0 + 768);
  v46 = *(v0 + 736);
  v47 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v48 = v44;
  isa = sub_10000ED40().super.isa;

  v50 = [v47 initWithTrack:v48 outputSettings:isa];
  *(v0 + 1080) = v50;

  sub_10000EAC0();
  if (v43(v45, v46) == v179)
  {
    v51 = *(v0 + 768);
    v52 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 672);
    (*(v0 + 976))(v51, *(v0 + 736));
    (*(v53 + 32))(v52, v51, v54);
    [v50 setAppliesPreferredTrackTransform:sub_10000EB40() & 1];
    if (sub_10000EB00() == 1)
    {
      [v50 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v50 setAppliesPreferredTrackTransform:1];
  }

  v55 = *(v0 + 1040);
  v56 = *(v0 + 1464);
  v57 = *(v0 + 888);
  v58 = *(v0 + 760);
  v59 = *(v0 + 744);
  v60 = *(v0 + 736);
  [v50 setAlwaysCopiesSampleData:0];
  [v55 addOutput:v50];
  sub_10000EAC0();
  v61 = v57(v58, v60);
  (*(v59 + 8))(v58, v60);
  if (v61 == v56)
  {
    sub_100001940(&qword_1000181B0, &qword_1000102C0);
    v62 = sub_10000E930();
    *(v0 + 1088) = v62;
    v63 = swift_task_alloc();
    *(v0 + 1096) = v63;
    *v63 = v0;
    v63[1] = sub_100009568;
    v35 = v0 + 1456;
    v36 = v62;
    goto LABEL_23;
  }

  v64 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v65 = [v64 copyNextSampleBuffer];
  if (v65)
  {
    v66 = *(v0 + 984);
    v67 = *(v0 + 1464);
    v68 = *(v0 + 1460);
    v69 = v65;
    v70 = v69;
    if (v68 != v67 && !v66)
    {
LABEL_29:
      v71 = *(v0 + 1080);
      v72 = *(v0 + 880);
      v73 = *(v0 + 848);
      v74 = *(v0 + 664);
      v75 = *(v0 + 648);
      v76 = *(v0 + 640);

      (*(v75 + 8))(v74, v76);
      goto LABEL_30;
    }

    v85 = 0;
    v86 = *(v0 + 616);
    v144 = (v86 + 16);
    v145 = (*(v0 + 648) + 16);
    v87 = *(v0 + 576);
    v88 = *(v0 + 544);
    v89 = *(v0 + 512);
    v142 = (v88 + 16);
    v143 = (v87 + 16);
    v146 = (*(v0 + 744) + 8);
    v136 = (v89 + 16);
    v137 = (*(v0 + 488) + 8);
    v138 = (v89 + 8);
    v139 = (v88 + 8);
    v140 = (v87 + 8);
    v141 = (v86 + 8);
    if (CMSampleBufferGetNumSamples(v69))
    {
      goto LABEL_38;
    }

    do
    {
LABEL_37:
    }

    while (!CMSampleBufferGetNumSamples(v70));
    while (1)
    {
LABEL_38:

      v90 = sub_10000EE80();
      if (!v90)
      {
        v120 = *(v0 + 1080);
        v121 = *(v0 + 1040);
        v122 = *(v0 + 880);
        v176 = *(v0 + 848);
        v170 = *(v0 + 664);
        v123 = *(v0 + 648);
        v124 = *(v0 + 640);
        sub_10000ED20();
        sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v125 = swift_allocError();
        sub_10000ED10();
        v178 = v125;
        swift_willThrow();

        (*(v123 + 8))(v170, v124);
        goto LABEL_32;
      }

      v91 = v90;
      v92 = sub_10000EE40();
      v93 = sub_10000EF20();
      if (os_log_type_enabled(v93, v92))
      {
        v94 = swift_slowAlloc();
        *v94 = 134217984;
        *(v94 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v93, v92, "BlastDoor processing thumbnail %ld", v94, 0xCu);
      }

      v173 = *(v0 + 1464);
      v166 = *(v0 + 888);
      v162 = *(v0 + 752);
      v164 = *(v0 + 736);
      v95 = *(v0 + 664);
      v96 = *(v0 + 656);
      v97 = *(v0 + 640);
      v98 = *(v0 + 632);
      v149 = *(v0 + 624);
      v150 = *(v0 + 608);
      v180 = v85;
      v99 = *(v0 + 600);
      v100 = *(v0 + 592);
      v151 = *(v0 + 584);
      v152 = *(v0 + 568);
      v148 = *(v0 + 560);
      v153 = *(v0 + 552);
      v155 = *(v0 + 536);

      sub_10000EE90();
      sub_10000EF00();
      type metadata accessor for CVBuffer(0);
      v101 = sub_10000ECD0();
      (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
      v147 = v91;
      sub_10000ECE0();
      v102 = *v145;
      (*v145)(v96, v95, v97);
      sub_10000EA80();
      v102(v96, v95, v97);
      sub_10000EAA0();
      (*v144)(v149, v98, v150);
      (*v143)(v151, v100, v152);
      (*v142)(v153, v148, v155);
      sub_10000EB80();
      sub_10000EAC0();
      v103 = v166(v162, v164);
      v104 = *(v0 + 1080);
      if (v103 == v173)
      {
        v156 = *(v0 + 1040);
        v157 = *(v0 + 880);
        v160 = *(v0 + 848);
        v177 = *(v0 + 640);
        v182 = *(v0 + 664);
        v168 = *(v0 + 632);
        v171 = *(v0 + 648);
        v163 = *(v0 + 592);
        v165 = *(v0 + 608);
        v161 = *(v0 + 568);
        v158 = *(v0 + 536);
        v159 = *(v0 + 560);
        v126 = *(v0 + 528);
        v127 = *(v0 + 520);
        v129 = *(v0 + 496);
        v128 = *(v0 + 504);
        v154 = *(v0 + 480);
        (*v146)(*(v0 + 752), *(v0 + 736));
        sub_10000EE40();
        v130 = sub_10000EF20();
        sub_10000E980();

        (*v136)(v127, v126, v128);
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v137)(v129, v154);
        *(v0 + 424) = 0;
        sub_10000EDF0();

        (*v138)(v126, v128);
        (*v139)(v159, v158);
        (*v140)(v163, v161);
        (*v141)(v168, v165);
        (*(v171 + 8))(v182, v177);
        goto LABEL_30;
      }

      (*v146)(*(v0 + 752), *(v0 + 736));
      v105 = [v104 copyNextSampleBuffer];
      v106 = v180 + 1;
      if (__OFADD__(v180, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v107 = v105;
      v181 = v180 + 1;
      if (v105)
      {
        v108 = *(v0 + 1460) != *(v0 + 1464) && v106 == *(v0 + 984);
        v109 = v108;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(v0 + 496);
      v174 = *(v0 + 480);
      (*v136)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
      sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
      sub_10000EC30();
      sub_100001940(&qword_100018158, &qword_100010228);
      sub_10000EDE0();
      (*v137)(v110, v174);
      v111 = *(v0 + 632);
      v169 = *(v0 + 592);
      v175 = *(v0 + 608);
      v167 = *(v0 + 568);
      v112 = *(v0 + 560);
      v113 = *(v0 + 536);
      v114 = *(v0 + 528);
      v115 = *(v0 + 504);
      if (v109)
      {
        *(v0 + 416) = 0;
        sub_10000EDF0();
      }

      (*v138)(v114, v115);
      (*v139)(v112, v113);
      (*v140)(v169, v167);
      (*v141)(v111, v175);
      if (!v107)
      {
        break;
      }

      v116 = *(v0 + 984);
      v117 = *(v0 + 1464);
      v118 = *(v0 + 1460);
      v119 = v107;
      v70 = v119;
      v108 = v118 == v117;
      v85 = v181;
      if (!v108 && v181 == v116)
      {
        goto LABEL_29;
      }

      if (!CMSampleBufferGetNumSamples(v119))
      {
        goto LABEL_37;
      }
    }

    v131 = *(v0 + 1080);
    v132 = *(v0 + 1040);
    v133 = *(v0 + 880);
    v134 = *(v0 + 848);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

LABEL_30:

    v77 = *(v0 + 8);
    goto LABEL_33;
  }

  v78 = *(v0 + 1080);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 880);
  v172 = *(v0 + 848);
  v81 = *(v0 + 664);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  sub_10000ED20();
  sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v84 = swift_allocError();
  sub_10000ED10();
  v178 = v84;
  swift_willThrow();

  (*(v82 + 8))(v81, v83);
LABEL_32:
  **(v0 + 464) = v178;

  v77 = *(v0 + 8);
LABEL_33:

  return v77();
}

uint64_t sub_100008044()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {

    v2 = sub_10000B59C;
  }

  else
  {

    v2 = sub_1000081C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000081C0()
{
  v173 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  *(v0 + 1408) = *(v0 + 1384);
  *(v0 + 1416) = v2;
  *(v0 + 1424) = v1;
  Seconds = CMTimeGetSeconds((v0 + 1408));
  v4 = sub_10000EAF0();
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v5 = Seconds / ((v4 - 1) + 0.1);
  if (v5 <= 0.0)
  {
    (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
  }

  else
  {
    v6 = *(v0 + 680);
    CMTimeMakeWithSeconds(&v170, v5, 1000);
    epoch = v170.epoch;
    v8 = *&v170.timescale;
    *(v0 + 1432) = v170.value;
    *(v0 + 1440) = v8;
    *(v0 + 1448) = epoch;
    v9 = CMTimeCopyAsDictionary((v0 + 1432), kCFAllocatorDefault);
    v10 = (v6 + 8);
    v11 = *(v0 + 1048);
    if (!v9)
    {
      v55 = *(v0 + 1040);
      v56 = *(v0 + 880);
      v57 = *(v0 + 848);
      v147 = *(v0 + 672);
      v150 = *(v0 + 696);
      v58 = *(v0 + 648);
      v154 = *(v0 + 640);
      v158 = *(v0 + 664);

      sub_10000ED20();
      sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v59 = swift_allocError();
      sub_10000ED10();
      v166 = v59;
      swift_willThrow();

      (*v10)(v150, v147);
      (*(v58 + 8))(v158, v154);
      goto LABEL_22;
    }

    v12 = v9;
    v13 = *(v0 + 696);
    v14 = *(v0 + 672);
    v15 = sub_10000ED50();
    v17 = v16;
    *(v0 + 264) = sub_10000E838(0, &qword_1000181C8, NSDictionary_ptr);
    *(v0 + 240) = v12;
    sub_10000E828((v0 + 240), (v0 + 272));
    v18 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170.value = v11;
    sub_10000E2C8((v0 + 272), v15, v17, isUniquelyReferenced_nonNull_native);

    (*v10)(v13, v14);
  }

  v165 = *(v0 + 1468);
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);
  v22 = *(v0 + 768);
  v23 = *(v0 + 736);
  v24 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v25 = v21;
  isa = sub_10000ED40().super.isa;

  v27 = [v24 initWithTrack:v25 outputSettings:isa];
  *(v0 + 1080) = v27;

  sub_10000EAC0();
  if (v20(v22, v23) == v165)
  {
    v28 = *(v0 + 768);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    (*(v0 + 976))(v28, *(v0 + 736));
    (*(v30 + 32))(v29, v28, v31);
    [v27 setAppliesPreferredTrackTransform:sub_10000EB40() & 1];
    if (sub_10000EB00() == 1)
    {
      [v27 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v27 setAppliesPreferredTrackTransform:1];
  }

  v32 = *(v0 + 1040);
  v33 = *(v0 + 1464);
  v34 = *(v0 + 888);
  v35 = *(v0 + 760);
  v36 = *(v0 + 744);
  v37 = *(v0 + 736);
  [v27 setAlwaysCopiesSampleData:0];
  [v32 addOutput:v27];
  sub_10000EAC0();
  v38 = v34(v35, v37);
  (*(v36 + 8))(v35, v37);
  if (v38 == v33)
  {
    sub_100001940(&qword_1000181B0, &qword_1000102C0);
    v39 = sub_10000E930();
    *(v0 + 1088) = v39;
    v40 = swift_task_alloc();
    *(v0 + 1096) = v40;
    *v40 = v0;
    v40[1] = sub_100009568;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1456, v39, 0, 0);
  }

  v41 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v42 = [v41 copyNextSampleBuffer];
  if (v42)
  {
    v43 = *(v0 + 984);
    v44 = *(v0 + 1464);
    v45 = *(v0 + 1460);
    v46 = v42;
    v47 = v46;
    if (v45 == v44 || v43)
    {
      v67 = 0;
      v68 = *(v0 + 616);
      v127 = (v68 + 16);
      v128 = (*(v0 + 648) + 16);
      v69 = *(v0 + 576);
      v70 = *(v0 + 544);
      v71 = *(v0 + 512);
      v125 = (v70 + 16);
      v126 = (v69 + 16);
      v129 = (*(v0 + 744) + 8);
      v119 = (v71 + 16);
      v120 = (*(v0 + 488) + 8);
      v121 = (v71 + 8);
      v122 = (v70 + 8);
      v123 = (v69 + 8);
      v124 = (v68 + 8);
      if (CMSampleBufferGetNumSamples(v46))
      {
        goto LABEL_28;
      }

      do
      {
LABEL_27:
      }

      while (!CMSampleBufferGetNumSamples(v47));
      while (1)
      {
LABEL_28:

        v72 = sub_10000EE80();
        if (!v72)
        {
          v103 = *(v0 + 1080);
          v104 = *(v0 + 1040);
          v105 = *(v0 + 880);
          v163 = *(v0 + 848);
          v156 = *(v0 + 664);
          v106 = *(v0 + 648);
          v107 = *(v0 + 640);
          sub_10000ED20();
          sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v108 = swift_allocError();
          sub_10000ED10();
          v166 = v108;
          swift_willThrow();

          (*(v106 + 8))(v156, v107);
          goto LABEL_22;
        }

        v73 = v72;
        v74 = sub_10000EE40();
        v75 = sub_10000EF20();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v160 = *(v0 + 1464);
        v151 = *(v0 + 888);
        v145 = *(v0 + 752);
        v148 = *(v0 + 736);
        v77 = *(v0 + 664);
        v78 = *(v0 + 656);
        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v132 = *(v0 + 624);
        v133 = *(v0 + 608);
        v167 = v67;
        v81 = *(v0 + 600);
        v82 = *(v0 + 592);
        v134 = *(v0 + 584);
        v135 = *(v0 + 568);
        v131 = *(v0 + 560);
        v136 = *(v0 + 552);
        v138 = *(v0 + 536);

        sub_10000EE90();
        sub_10000EF00();
        type metadata accessor for CVBuffer(0);
        v171 = v83;
        v172 = &protocol witness table for CVBufferRef;
        v170.value = v73;
        v84 = sub_10000ECD0();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v130 = v73;
        sub_10000ECE0();
        v85 = *v128;
        (*v128)(v78, v77, v79);
        sub_10000EA80();
        v85(v78, v77, v79);
        sub_10000EAA0();
        (*v127)(v132, v80, v133);
        (*v126)(v134, v82, v135);
        (*v125)(v136, v131, v138);
        sub_10000EB80();
        sub_10000EAC0();
        v86 = v151(v145, v148);
        v87 = *(v0 + 1080);
        if (v86 == v160)
        {
          v139 = *(v0 + 1040);
          v140 = *(v0 + 880);
          v143 = *(v0 + 848);
          v164 = *(v0 + 640);
          v169 = *(v0 + 664);
          v153 = *(v0 + 632);
          v157 = *(v0 + 648);
          v146 = *(v0 + 592);
          v149 = *(v0 + 608);
          v144 = *(v0 + 568);
          v141 = *(v0 + 536);
          v142 = *(v0 + 560);
          v109 = *(v0 + 528);
          v110 = *(v0 + 520);
          v112 = *(v0 + 496);
          v111 = *(v0 + 504);
          v137 = *(v0 + 480);
          (*v129)(*(v0 + 752), *(v0 + 736));
          sub_10000EE40();
          v113 = sub_10000EF20();
          sub_10000E980();

          (*v119)(v110, v109, v111);
          sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_10000EC30();
          sub_100001940(&qword_100018158, &qword_100010228);
          sub_10000EDE0();
          (*v120)(v112, v137);
          *(v0 + 424) = 0;
          sub_10000EDF0();

          (*v121)(v109, v111);
          (*v122)(v142, v141);
          (*v123)(v146, v144);
          (*v124)(v153, v149);
          (*(v157 + 8))(v169, v164);
          goto LABEL_19;
        }

        (*v129)(*(v0 + 752), *(v0 + 736));
        v88 = [v87 copyNextSampleBuffer];
        v89 = v167 + 1;
        if (__OFADD__(v167, 1))
        {
          goto LABEL_52;
        }

        v90 = v88;
        v168 = v167 + 1;
        if (v88)
        {
          v91 = *(v0 + 1460) != *(v0 + 1464) && v89 == *(v0 + 984);
          v92 = v91;
        }

        else
        {
          v92 = 1;
        }

        v93 = *(v0 + 496);
        v161 = *(v0 + 480);
        (*v119)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v120)(v93, v161);
        v94 = *(v0 + 632);
        v155 = *(v0 + 592);
        v162 = *(v0 + 608);
        v152 = *(v0 + 568);
        v95 = *(v0 + 560);
        v96 = *(v0 + 536);
        v97 = *(v0 + 528);
        v98 = *(v0 + 504);
        if (v92)
        {
          *(v0 + 416) = 0;
          sub_10000EDF0();
        }

        (*v121)(v97, v98);
        (*v122)(v95, v96);
        (*v123)(v155, v152);
        (*v124)(v94, v162);
        if (!v90)
        {
          break;
        }

        v99 = *(v0 + 984);
        v100 = *(v0 + 1464);
        v101 = *(v0 + 1460);
        v102 = v90;
        v47 = v102;
        v91 = v101 == v100;
        v67 = v168;
        if (!v91 && v168 == v99)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v102))
        {
          goto LABEL_27;
        }
      }

      v114 = *(v0 + 1080);
      v115 = *(v0 + 1040);
      v116 = *(v0 + 880);
      v117 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_18:
      v48 = *(v0 + 1080);
      v49 = *(v0 + 880);
      v50 = *(v0 + 848);
      v51 = *(v0 + 664);
      v52 = *(v0 + 648);
      v53 = *(v0 + 640);

      (*(v52 + 8))(v51, v53);
    }

LABEL_19:

    v54 = *(v0 + 8);
    goto LABEL_23;
  }

  v60 = *(v0 + 1080);
  v61 = *(v0 + 1040);
  v62 = *(v0 + 880);
  v159 = *(v0 + 848);
  v63 = *(v0 + 664);
  v64 = *(v0 + 648);
  v65 = *(v0 + 640);
  sub_10000ED20();
  sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v66 = swift_allocError();
  sub_10000ED10();
  v166 = v66;
  swift_willThrow();

  (*(v64 + 8))(v63, v65);
LABEL_22:
  **(v0 + 464) = v166;

  v54 = *(v0 + 8);
LABEL_23:

  return v54();
}

uint64_t sub_100009568()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_10000B7EC;
  }

  else
  {
    v2 = sub_1000096C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000096C8()
{
  v1 = ceilf(*(v0 + 1456));
  *(v0 + 1472) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  *(v0 + 1112) = kCMTimeZero.value;
  *(v0 + 1476) = *&kCMTimeZero.timescale;
  *(v0 + 1120) = kCMTimeZero.epoch;
  sub_100001940(&qword_1000181B8, &qword_1000102C8);
  v2 = sub_10000E950();
  *(v0 + 1128) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1136) = v3;
  *v3 = v0;
  v3[1] = sub_10000983C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 432, v2, 0, 0);
}

uint64_t sub_10000983C()
{

  if (v0)
  {

    v1 = sub_10000BA20;
  }

  else
  {

    v1 = sub_1000099B0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000099B0()
{
  v166 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000EF80())
  {
    v3 = v0 + 1304;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = &selRef_initWithURL_options_;
    v144 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_10000EF60();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 v6[11]] & 1) == 0)
      {
        v10 = *(v0 + 880);
        [v8 timeMapping];
        v11 = v159;
        v12 = *(&v158 + 1);
        *(v0 + 1336) = v158;
        *(v0 + 1344) = v12;
        *(v0 + 1352) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1336];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v159;
            *(v0 + 1144) = v158;
            *(v0 + 1160) = v15;
            *(v0 + 1176) = v160;
            sub_10000EE10();
          }

          while ((sub_10000EEE0() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v83 = v158;
            v84 = v159;
            v85 = *(&v158 + 1);
            [v8 timeMapping];
            v86 = v158;
            v87 = v159;
            v88 = *(&v160 + 1);
            v89 = v160;
            v90 = *(&v158 + 1);
            [v8 timeMapping];
            v91 = v161;
            v92 = v165;
            v93 = v164;
            v94 = v163;
            v95 = v162;
            *(v0 + 1360) = v83;
            *(v0 + 1368) = v85;
            *(v0 + 1376) = v84;
            *(v0 + 1240) = v86;
            *(v0 + 1248) = v90;
            *(v0 + 1256) = v87;
            *(v0 + 1272) = v89;
            *(v0 + 1280) = v88;
            *(v0 + 1288) = v91;
            *(v0 + 1296) = v95;
            *(v0 + 1304) = v94;
            *(v0 + 1320) = v93;
            *(v0 + 1328) = v92;
            CMTimeMapTimeFromRangeToRange(&v158, (v0 + 1360), (v0 + 1240), (v0 + 1288));
            v17 = *(&v158 + 1);
            v18 = v158;
            v16 = v159;

            goto LABEL_22;
          }

          i = v144;
          v5 = v1 & 0xC000000000000001;
          v6 = &selRef_initWithURL_options_;
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1120);
        v3 = v0 + 1304;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v16 = *(v0 + 1120);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1112);
LABEL_22:
  v19 = *(v0 + 1040);
  v20 = sub_10000EEF0(1, *(v0 + 1472));
  *(v0 + 1192) = v18;
  *(v0 + 1200) = v17;
  *(v0 + 1208) = v16;
  *(v0 + 1216) = v20;
  *(v0 + 1224) = v21;
  *(v0 + 1228) = v22;
  *(v0 + 1232) = v23;
  [v19 setTimeRange:v0 + 1192];
  v24 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 984);
    v27 = *(v0 + 1464);
    v28 = *(v0 + 1460);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v46 = 0;
      v47 = *(v0 + 616);
      v119 = (v47 + 16);
      v120 = (*(v0 + 648) + 16);
      v48 = *(v0 + 576);
      v49 = *(v0 + 544);
      v50 = *(v0 + 512);
      v117 = (v49 + 16);
      v118 = (v48 + 16);
      v121 = (*(v0 + 744) + 8);
      v111 = (v50 + 16);
      v112 = (*(v0 + 488) + 8);
      v113 = (v50 + 8);
      v114 = (v49 + 8);
      v115 = (v48 + 8);
      v116 = (v47 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_34;
      }

      do
      {
LABEL_33:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_34:

        v51 = sub_10000EE80();
        if (!v51)
        {
          v96 = *(v0 + 1080);
          v97 = *(v0 + 1040);
          v98 = *(v0 + 880);
          v152 = *(v0 + 848);
          v146 = *(v0 + 664);
          v99 = *(v0 + 648);
          v100 = *(v0 + 640);
          sub_10000ED20();
          sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v101 = swift_allocError();
          sub_10000ED10();
          v154 = v101;
          swift_willThrow();

          (*(v99 + 8))(v146, v100);
          goto LABEL_28;
        }

        v52 = v51;
        v53 = sub_10000EE40();
        v54 = sub_10000EF20();
        if (os_log_type_enabled(v54, v53))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v54, v53, "BlastDoor processing thumbnail %ld", v55, 0xCu);
        }

        v149 = *(v0 + 1464);
        v137 = *(v0 + 752);
        v139 = *(v0 + 736);
        v141 = *(v0 + 888);
        v56 = *(v0 + 664);
        v155 = v46;
        v57 = *(v0 + 656);
        v58 = *(v0 + 640);
        v59 = *(v0 + 632);
        v124 = *(v0 + 624);
        v125 = *(v0 + 608);
        v60 = *(v0 + 600);
        v61 = *(v0 + 592);
        v126 = *(v0 + 584);
        v127 = *(v0 + 568);
        v123 = *(v0 + 560);
        v128 = *(v0 + 552);
        v130 = *(v0 + 536);

        sub_10000EE90();
        sub_10000EF00();
        type metadata accessor for CVBuffer(0);
        *(&v159 + 1) = v62;
        *&v160 = &protocol witness table for CVBufferRef;
        *&v158 = v52;
        v63 = sub_10000ECD0();
        (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
        v64 = v52;
        sub_10000ECE0();
        v65 = *v120;
        (*v120)(v57, v56, v58);
        sub_10000EA80();
        v65(v57, v56, v58);
        v1 = v123;
        sub_10000EAA0();
        (*v119)(v124, v59, v125);
        (*v118)(v126, v61, v127);
        (*v117)(v128, v123, v130);
        sub_10000EB80();
        sub_10000EAC0();
        v66 = v141(v137, v139);
        v67 = *(v0 + 1080);
        v122 = v64;
        if (v66 == v149)
        {
          v131 = *(v0 + 1040);
          v132 = *(v0 + 880);
          v135 = *(v0 + 848);
          v147 = *(v0 + 648);
          v153 = *(v0 + 640);
          v157 = *(v0 + 664);
          v140 = *(v0 + 608);
          v143 = *(v0 + 632);
          v136 = *(v0 + 568);
          v138 = *(v0 + 592);
          v133 = *(v0 + 536);
          v134 = *(v0 + 560);
          v102 = *(v0 + 528);
          v103 = *(v0 + 520);
          v105 = *(v0 + 496);
          v104 = *(v0 + 504);
          v129 = *(v0 + 480);
          (*v121)(*(v0 + 752), *(v0 + 736));
          sub_10000EE40();
          v106 = sub_10000EF20();
          sub_10000E980();

          (*v111)(v103, v102, v104);
          sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_10000EC30();
          sub_100001940(&qword_100018158, &qword_100010228);
          sub_10000EDE0();
          (*v112)(v105, v129);
          *(v0 + 424) = 0;
          sub_10000EDF0();

          (*v113)(v102, v104);
          (*v114)(v134, v133);
          (*v115)(v138, v136);
          (*v116)(v143, v140);
          (*(v147 + 8))(v157, v153);
          goto LABEL_26;
        }

        (*v121)(*(v0 + 752), *(v0 + 736));
        v68 = [v67 copyNextSampleBuffer];
        v69 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_60;
        }

        v70 = v68;
        v156 = v155 + 1;
        if (v68)
        {
          v72 = *(v0 + 1460) != *(v0 + 1464) && v69 == *(v0 + 984);
        }

        else
        {
          v72 = 1;
        }

        v73 = *(v0 + 496);
        v150 = *(v0 + 480);
        (*v111)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v112)(v73, v150);
        v74 = *(v0 + 632);
        v145 = *(v0 + 592);
        v151 = *(v0 + 608);
        v142 = *(v0 + 568);
        v75 = *(v0 + 560);
        v76 = *(v0 + 536);
        v77 = *(v0 + 528);
        v78 = *(v0 + 504);
        if (v72)
        {
          *(v0 + 416) = 0;
          sub_10000EDF0();
        }

        (*v113)(v77, v78);
        (*v114)(v75, v76);
        (*v115)(v145, v142);
        (*v116)(v74, v151);
        v46 = v69;
        if (!v70)
        {
          break;
        }

        v79 = *(v0 + 984);
        v80 = *(v0 + 1464);
        v81 = *(v0 + 1460);
        v82 = v70;
        v30 = v82;
        if (v81 != v80 && v156 == v79)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v82))
        {
          goto LABEL_33;
        }
      }

      v107 = *(v0 + 1080);
      v108 = *(v0 + 1040);
      v109 = *(v0 + 880);
      v110 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1080);
      v32 = *(v0 + 880);
      v33 = *(v0 + 848);
      v34 = *(v0 + 664);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);

      (*(v35 + 8))(v34, v36);
    }

LABEL_26:

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 1080);
    v39 = *(v0 + 1040);
    v40 = *(v0 + 880);
    v148 = *(v0 + 848);
    v41 = *(v0 + 664);
    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    sub_10000ED20();
    sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v44 = swift_allocError();
    sub_10000ED10();
    v154 = v44;
    swift_willThrow();

    (*(v42 + 8))(v41, v43);
LABEL_28:
    **(v0 + 464) = v154;

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_10000AB38(uint64_t a1)
{
  v2 = *(v1 + 848);
  swift_willThrow();

  **(v1 + 464) = *(v1 + 864);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10000AD34()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 928);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000AF58()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 968);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000B17C()
{
  v1 = *(v0 + 880);

  **(v0 + 464) = *(v0 + 1016);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000B378()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 1032);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000B59C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  **(v0 + 464) = *(v0 + 1072);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000B7EC()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  **(v0 + 464) = *(v0 + 1104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000BA20()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1476);
  v5 = sub_10000EEF0(1, *(v0 + 1472));
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = v1;
  *(v0 + 1216) = v5;
  *(v0 + 1224) = v6;
  *(v0 + 1228) = v7;
  *(v0 + 1232) = v8;
  [v3 setTimeRange:v0 + 1192];
  v9 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 984);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1460);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v31 = 0;
      v32 = *(v0 + 616);
      v89 = (v32 + 16);
      v90 = (*(v0 + 648) + 16);
      v33 = *(v0 + 576);
      v34 = *(v0 + 544);
      v35 = *(v0 + 512);
      v87 = (v34 + 16);
      v88 = (v33 + 16);
      v91 = (*(v0 + 744) + 8);
      v81 = (v35 + 16);
      v82 = (*(v0 + 488) + 8);
      v83 = (v35 + 8);
      v84 = (v34 + 8);
      v85 = (v33 + 8);
      v86 = (v32 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_13:

        v36 = sub_10000EE80();
        if (!v36)
        {
          v66 = *(v0 + 1080);
          v67 = *(v0 + 1040);
          v68 = *(v0 + 880);
          v121 = *(v0 + 848);
          v115 = *(v0 + 664);
          v69 = *(v0 + 648);
          v70 = *(v0 + 640);
          sub_10000ED20();
          sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v71 = swift_allocError();
          sub_10000ED10();
          v123 = v71;
          swift_willThrow();

          (*(v69 + 8))(v115, v70);
          goto LABEL_7;
        }

        v37 = v36;
        v38 = sub_10000EE40();
        v39 = sub_10000EF20();
        if (os_log_type_enabled(v39, v38))
        {
          v40 = swift_slowAlloc();
          *v40 = 134217984;
          *(v40 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v39, v38, "BlastDoor processing thumbnail %ld", v40, 0xCu);
        }

        v118 = *(v0 + 1464);
        v111 = *(v0 + 888);
        v107 = *(v0 + 752);
        v109 = *(v0 + 736);
        v41 = *(v0 + 664);
        v42 = *(v0 + 656);
        v43 = *(v0 + 640);
        v44 = *(v0 + 632);
        v94 = *(v0 + 624);
        v95 = *(v0 + 608);
        v124 = v31;
        v45 = *(v0 + 600);
        v46 = *(v0 + 592);
        v96 = *(v0 + 584);
        v97 = *(v0 + 568);
        v93 = *(v0 + 560);
        v98 = *(v0 + 552);
        v100 = *(v0 + 536);

        sub_10000EE90();
        sub_10000EF00();
        type metadata accessor for CVBuffer(0);
        v47 = sub_10000ECD0();
        (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
        v92 = v37;
        sub_10000ECE0();
        v48 = *v90;
        (*v90)(v42, v41, v43);
        sub_10000EA80();
        v48(v42, v41, v43);
        sub_10000EAA0();
        (*v89)(v94, v44, v95);
        (*v88)(v96, v46, v97);
        (*v87)(v98, v93, v100);
        sub_10000EB80();
        sub_10000EAC0();
        v49 = v111(v107, v109);
        v50 = *(v0 + 1080);
        if (v49 == v118)
        {
          v101 = *(v0 + 1040);
          v102 = *(v0 + 880);
          v122 = *(v0 + 640);
          v126 = *(v0 + 664);
          v113 = *(v0 + 632);
          v116 = *(v0 + 648);
          v108 = *(v0 + 592);
          v110 = *(v0 + 608);
          v105 = *(v0 + 848);
          v106 = *(v0 + 568);
          v103 = *(v0 + 536);
          v104 = *(v0 + 560);
          v72 = *(v0 + 528);
          v73 = *(v0 + 520);
          v75 = *(v0 + 496);
          v74 = *(v0 + 504);
          v99 = *(v0 + 480);
          (*v91)(*(v0 + 752), *(v0 + 736));
          sub_10000EE40();
          v76 = sub_10000EF20();
          sub_10000E980();

          (*v81)(v73, v72, v74);
          sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_10000EC30();
          sub_100001940(&qword_100018158, &qword_100010228);
          sub_10000EDE0();
          (*v82)(v75, v99);
          *(v0 + 424) = 0;
          sub_10000EDF0();

          (*v83)(v72, v74);
          (*v84)(v104, v103);
          (*v85)(v108, v106);
          (*v86)(v113, v110);
          (*(v116 + 8))(v126, v122);
          goto LABEL_5;
        }

        (*v91)(*(v0 + 752), *(v0 + 736));
        v51 = [v50 copyNextSampleBuffer];
        v52 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          __break(1u);
        }

        v53 = v51;
        v125 = v124 + 1;
        if (v51)
        {
          v54 = *(v0 + 1460) != *(v0 + 1464) && v52 == *(v0 + 984);
          v55 = v54;
        }

        else
        {
          v55 = 1;
        }

        v56 = *(v0 + 496);
        v119 = *(v0 + 480);
        (*v81)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v82)(v56, v119);
        v57 = *(v0 + 632);
        v114 = *(v0 + 592);
        v120 = *(v0 + 608);
        v112 = *(v0 + 568);
        v58 = *(v0 + 560);
        v59 = *(v0 + 536);
        v60 = *(v0 + 528);
        v61 = *(v0 + 504);
        if (v55)
        {
          *(v0 + 416) = 0;
          sub_10000EDF0();
        }

        (*v83)(v60, v61);
        (*v84)(v58, v59);
        (*v85)(v114, v112);
        (*v86)(v57, v120);
        if (!v53)
        {
          break;
        }

        v62 = *(v0 + 984);
        v63 = *(v0 + 1464);
        v64 = *(v0 + 1460);
        v65 = v53;
        v15 = v65;
        v54 = v64 == v63;
        v31 = v125;
        if (!v54 && v125 == v62)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v65))
        {
          goto LABEL_12;
        }
      }

      v77 = *(v0 + 1080);
      v78 = *(v0 + 1040);
      v79 = *(v0 + 880);
      v80 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1080);
      v17 = *(v0 + 880);
      v18 = *(v0 + 848);
      v19 = *(v0 + 664);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);

      (*(v20 + 8))(v19, v21);
    }

LABEL_5:

    v22 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 1080);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 880);
    v117 = *(v0 + 848);
    v26 = *(v0 + 664);
    v27 = *(v0 + 648);
    v28 = *(v0 + 640);
    sub_10000ED20();
    sub_10000D468(&qword_100018128, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v29 = swift_allocError();
    sub_10000ED10();
    v123 = v29;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
LABEL_7:
    **(v0 + 464) = v123;

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_10000C8CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100003348((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001940(&qword_100018178, &qword_100010288);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000E838(0, &qword_1000181E8, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_10000EDA0();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001940(&qword_100018160, &qword_100010230);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E880(a3, v25 - v10, &qword_100018160, &qword_100010230);
  v12 = sub_10000EDD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000033D8(v11, &qword_100018160, &qword_100010230);
  }

  else
  {
    sub_10000EDC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000EDB0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000ED70() + 32;
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

      sub_1000033D8(a3, &qword_100018160, &qword_100010230);

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

  sub_1000033D8(a3, &qword_100018160, &qword_100010230);
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

uint64_t sub_10000CCC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000CDBC;

  return v6(a1);
}

uint64_t sub_10000CDBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000CEC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CF8C(v11, 0, 0, 1, a1, a2);
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
    sub_10000D4B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000338C(v11);
  return v7;
}

unint64_t sub_10000CF8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D098(a5, a6);
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
    result = sub_10000EF70();
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

char *sub_10000D098(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D0E4(a1, a2);
  sub_10000D214(&off_100014E00);
  return v3;
}

char *sub_10000D0E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D300(v5, 0);
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

  result = sub_10000EF70();
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
        v10 = sub_10000ED90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000D300(v10, 0);
        result = sub_10000EF50();
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

uint64_t sub_10000D214(uint64_t result)
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

  result = sub_10000D374(result, v11, 1, v3);
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

void *sub_10000D300(uint64_t a1, uint64_t a2)
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

  sub_100001940(&qword_100018150, &qword_100010220);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D374(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001940(&qword_100018150, &qword_100010220);
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

uint64_t sub_10000D468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D510()
{
  v17 = sub_10000EC70();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_10000EAD0();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_100001940(&qword_100018158, &qword_100010228);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v14, v12 | 7);
}

uint64_t sub_10000D714(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000EC70() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10000EAD0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100001940(&qword_100018158, &qword_100010228) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000D8E8;

  return sub_100003F88(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_10000D8E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D9DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DA14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E8EC;

  return sub_10000CCC4(a1, v4);
}

uint64_t sub_10000DACC()
{
  v17 = sub_10000EC70();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_10000EAD0();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_100001940(&qword_100018158, &qword_100010228);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_10000DCB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000EC70() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000EAD0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100001940(&qword_100018158, &qword_100010228) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000D8E8;

  return sub_100004964(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_10000DE68()
{
  result = qword_100018170;
  if (!qword_100018170)
  {
    sub_10000E838(255, &qword_1000180A0, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018170);
  }

  return result;
}

uint64_t sub_10000DED0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000E8EC;

  return sub_100004C64(a1, v6, v7, v9, v8, a2);
}

unint64_t sub_10000DF98(uint64_t a1, uint64_t a2)
{
  sub_10000F000();
  sub_10000ED80();
  v4 = sub_10000F010();

  return sub_10000E484(a1, a2, v4);
}

uint64_t sub_10000E010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001940(&qword_1000181E0, &qword_1000102E8);
  v33 = v4;
  result = sub_10000EFA0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000E828(v24, v34);
      }

      else
      {
        sub_10000D4B0(v24, v34);
      }

      sub_10000F000();
      sub_10000ED80();
      result = sub_10000F010();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000E828(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_10000E2C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000DF98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000E53C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000E010(v16, a4 & 1);
    v11 = sub_10000DF98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10000EFF0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000338C(v22);

    return sub_10000E828(a1, v22);
  }

  else
  {
    sub_10000E418(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10000E418(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000E828(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10000E484(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000EFE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000E53C()
{
  v1 = v0;
  sub_100001940(&qword_1000181E0, &qword_1000102E8);
  v2 = *v0;
  v3 = sub_10000EF90();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000D4B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000E828(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000E6E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001940(&qword_1000181E0, &qword_1000102E8);
    v3 = sub_10000EFB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E880(v4, &v13, &qword_100018190, &qword_1000102A8);
      v5 = v13;
      v6 = v14;
      result = sub_10000DF98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E828(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_10000E828(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E838(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000E880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001940(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}