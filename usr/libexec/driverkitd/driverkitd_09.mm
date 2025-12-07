void sub_1000A69BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a1;
  v99 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v13);
  v15 = &v91[-v14];
  sub_100003C4C((a3 + 16), *(a3 + 40));
  sub_1000DF9D4(&v109);
  v16 = v112;
  v17 = v113;
  sub_100003C4C(&v109, v112);
  v18 = (*(v17 + 24))(a2, 0, 4, v16, v17);
  sub_100003C90(&v109);
  if (v4)
  {
    return;
  }

  v114 = v15;
  v94 = v12;
  v100 = v8;
  v19 = *(v18 + 16);
  if (!v19)
  {

    return;
  }

  v97 = 0;
  v20 = 0;
  v21 = v100;
  v22 = v18 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v108 = (v100 + 8);
  v101 = xmmword_1000F3160;
  v93 = xmmword_1000F3C80;
  v104 = v22;
  v105 = v19;
  v23 = v7;
  v107 = v7;
  v95 = v18;
  v106 = v100 + 16;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v24 = v18;
    v25 = v114;
    (*(v21 + 16))(v114, v22 + *(v21 + 72) * v20, v23);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      (*v108)(v25, v23);
      goto LABEL_14;
    }

    v26 = objc_allocWithZone(NSBundle);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = [v26 initWithURL:v28];

    if (!v30)
    {
      goto LABEL_12;
    }

    v31 = [v30 bundleIdentifier];
    if (!v31)
    {

LABEL_12:
      v39 = static os_log_type_t.debug.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v40 = swift_allocObject();
      *(v40 + 16) = v101;
      v41 = v21;
      v42 = v114;
      v43 = URL.path(percentEncoded:)(1);
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = sub_100003D24();
      *(v40 + 32) = v43;
      v22 = v104;
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v44, "Bundle or the bundle id is nil: %{public}s", 42, 2, v40);
      v19 = v105;

      v37 = *v108;
      v38 = v42;
      v21 = v41;
      goto LABEL_13;
    }

    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v34;

    v35 = [v30 executablePath];
    if (!v35)
    {
      break;
    }

    v36 = v35;

    v37 = *v108;
    v38 = v114;
LABEL_13:
    v23 = v107;
    v37(v38, v107);
LABEL_14:
    v18 = v24;
LABEL_15:
    if (++v20 == v19)
    {

      return;
    }
  }

  v102 = v33;
  v96 = v30;
  v45 = *v98;
  v46 = *v98 + 64;
  v47 = 1 << *(*v98 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(*v98 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  v52 = v103;
  while (1)
  {
    if (!v49)
    {
      v53 = v107;
      while (1)
      {
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v54 >= v50)
        {
          break;
        }

        v49 = *(v46 + 8 * v54);
        ++v51;
        if (v49)
        {
          v51 = v54;
          goto LABEL_27;
        }
      }

      v62 = v102;
      v109 = v102;
      v110 = v52;
      __chkstk_darwin(v61, v63);
      *&v91[-16] = &v109;
      v64 = v97;
      v65 = sub_1000C7758(sub_100041C40, &v91[-32], v99);
      v97 = v64;
      if (v65)
      {
        v112 = sub_100009FEC(0, &qword_100137468, NSBundle_ptr);
        v113 = sub_1000A9724();
        v109 = v96;
        sub_100048614(&v109, v62, v52);
        v23 = v53;
        (*v108)(v114, v53);
      }

      else
      {

        LODWORD(v103) = static os_log_type_t.debug.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v66 = swift_allocObject();
        *(v66 + 16) = v101;
        v67 = v96;
        v68 = [v96 bundleURL];
        v69 = v94;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = URL.path(percentEncoded:)(1);
        v71 = *v108;
        (*v108)(v69, v53);
        *(v66 + 56) = &type metadata for String;
        *(v66 + 64) = sub_100003D24();
        *(v66 + 32) = v70;
        v21 = v100;
        sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
        v72 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v72, "Skip the codeless kext that is not in the force load list: %{public}s", 69, 2, v66);

        v23 = v53;
        v71(v114, v53);
      }

      v18 = v95;
      v22 = v104;
      v19 = v105;
      goto LABEL_15;
    }

LABEL_27:
    v55 = __clz(__rbit64(v49)) | (v51 << 6);
    v56 = (v45[6] + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    sub_10000A990(v45[7] + 40 * v55, &v111);
    v109 = v58;
    v110 = v57;
    if (v58 == v102 && v57 == v52)
    {
      break;
    }

    v49 &= v49 - 1;
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10000A184(&v109, &qword_100137868, &qword_1000F9BC8);
    v21 = v100;
    if (v60)
    {
      goto LABEL_38;
    }
  }

  sub_10000A184(&v109, &qword_100137868, &qword_1000F9BC8);
LABEL_38:

  v73 = static os_log_type_t.debug.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v74 = swift_allocObject();
  *(v74 + 16) = v93;
  if (!v45[2])
  {
    goto LABEL_45;
  }

  v75 = v74;
  v92 = v73;
  v76 = sub_100061588(v102, v52);
  v77 = v107;
  v78 = v94;
  if (v79)
  {
    sub_10000A990(v45[7] + 40 * v76, &v109);

    v80 = v112;
    v81 = v113;
    sub_100003C4C(&v109, v112);
    (*(v81 + 64))(v80, v81);
    v82 = URL.path.getter();
    v84 = v83;
    v85 = v78;
    v86 = *v108;
    (*v108)(v85, v77);
    *(v75 + 56) = &type metadata for String;
    v87 = sub_100003D24();
    *(v75 + 64) = v87;
    *(v75 + 32) = v82;
    *(v75 + 40) = v84;
    v88 = v114;
    v89 = URL.path(percentEncoded:)(1);
    *(v75 + 96) = &type metadata for String;
    *(v75 + 104) = v87;
    *(v75 + 72) = v89;
    sub_100003C90(&v109);
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v90 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v92, &_mh_execute_header, v90, "Found multiple codeless kexts with the same identifiers, will use the known one: \n\tknown path: %{public}s \n\tduplicated path: %{public}s", 135, 2, v75);

    v86(v88, v77);
    v21 = v100;
    v18 = v95;
    v22 = v104;
    v19 = v105;
    v23 = v77;
    goto LABEL_15;
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1000A72D4@<X0>(uint64_t a1@<X0>, char *a2@<X2>, int a3@<W3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v11 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_10007AD60(a2, v14, a3);
  if (!v5)
  {
    v17 = a4 & 1;
    v18 = v16;
    sub_100099D48(v16, a1, v17);
    result = sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
    *a5 = v18;
    return result;
  }

  v28 = v5;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (swift_dynamicCast())
  {
    v30[0] = v27[0];
    *(v30 + 9) = *(v27 + 9);
    v29[1] = v25;
    v29[2] = v26;
    v29[0] = v24;
    v19 = sub_1000DDB58(a2);
    if (!v19)
    {
      swift_willThrow();
      sub_10001465C(v29);
      return sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
    }

    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v24 = *(a1 + 8);
    sub_100039104(v29, v20, isUniquelyReferenced_nonNull_native);

    *(a1 + 8) = v24;
  }

  swift_willThrow();
  return sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
}

uint64_t sub_1000A74FC@<X0>(uint64_t a1@<X0>, char *a2@<X2>, const char *a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_10007AD60(a2, a3, 0);
  if (!v4)
  {
    v9 = v8;
    result = sub_100099D48(v8, a1, 0);
    *a4 = v9;
    return result;
  }

  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (!swift_dynamicCast())
  {
    return swift_willThrow();
  }

  v20[0] = *v18;
  *(v20 + 9) = *&v18[9];
  v19[1] = v16;
  v19[2] = v17;
  v19[0] = v14;
  v11 = sub_1000DDB58(a2);
  if (v11)
  {
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + 8);
    sub_100039104(v19, v12, isUniquelyReferenced_nonNull_native);

    *(a1 + 8) = v15;
    return swift_willThrow();
  }

  swift_willThrow();
  return sub_10001465C(v19);
}

void *sub_1000A7650()
{
  sub_100003C90(v0 + 2);
  memcpy(__dst, v0 + 7, 0x255uLL);
  sub_100041AE0(__dst);

  v1 = v0[86];
  v2 = v0[87];

  sub_100057C80(v1, v2);
  v3 = v0[90];
  v4 = v0[91];

  sub_100057C80(v3, v4);

  return v0;
}

uint64_t sub_1000A76F8()
{
  sub_1000A7650();

  return swift_deallocClassInstance();
}

void sub_1000A7758(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000A7B4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A77E8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_1000A7944(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          v18[1] = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1000A7B4C(uint64_t a1)
{
  if (!qword_100137830)
  {
    sub_100009FA4(&qword_100137838, qword_1000F9900);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100137830);
    }
  }
}

uint64_t sub_1000A7BB0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A7BC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 5;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A7BEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A7C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 597))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A7C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 596) = 0;
    *(result + 592) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 597) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 597) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A7D48()
{
  sub_100003CDC(&qword_100137878, &qword_1000F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7EC0;
  *(inited + 32) = 0;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 2;
  *(inited + 72) = swift_getKeyPath();
  v1 = sub_10003F9B4(inited);
  swift_setDeallocating();
  sub_100003CDC(&qword_100137880, &qword_1000F9C38);
  result = swift_arrayDestroy();
  qword_10014E948 = v1;
  return result;
}

Swift::Int sub_1000A7E2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000C6358(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000A85BC(v5);
  *a1 = v2;
  return result;
}

void *sub_1000A7E98(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(type metadata accessor for URL() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = _swiftEmptyArrayStorage;
  v18 = *(v6 + 72);
  while (1)
  {
    result = a1(&v20, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v20;
    v11 = *(v20 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_100031798(result, v14, 1, v8);
      v8 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        if ((v8[3] >> 1) - v8[2] < v11)
        {
          goto LABEL_24;
        }

        sub_100003CDC(&qword_1001351A8, &qword_1000F9BC0);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v8[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_25;
          }

          v8[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v18;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000A8078(uint64_t a1, char a2, void *a3)
{
  v7 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v56 - v10;
  v12 = sub_100003CDC(&qword_100135198, &unk_1000F5080);
  v14 = __chkstk_darwin(v12, v13);
  v17 = v56 - v16;
  v60 = *(a1 + 16);
  if (!v60)
  {
  }

  v56[1] = v7;
  v56[2] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v59 = *(v15 + 72);
  v61 = a1;
  sub_100014894(a1 + v19, v56 - v16, &qword_100135198, &unk_1000F5080);
  sub_100020D24(v17, v11, &unk_1001389D0, &qword_1000F4F60);
  v58 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_100061BF8(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_100033A50(v27, a2 & 1);
    v22 = sub_100061BF8(v11);
    if ((v28 & 1) != (v29 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v22;
  sub_10003A58C();
  v22 = v32;
  if (v28)
  {
LABEL_9:
    v30 = swift_allocError();
    swift_willThrow();

    v64 = v30;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000A184(v11, &unk_1001389D0, &qword_1000F4F60);
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v34 = v33[6];
  v57 = *(v8 + 72);
  v35 = v22;
  sub_100020D24(v11, v34 + v57 * v22, &unk_1001389D0, &qword_1000F4F60);
  *(v33[7] + 8 * v35) = v20;
  v36 = v33[2];
  v26 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v26)
  {
    v33[2] = v37;
    v38 = v61;
    if (v60 == 1)
    {
    }

    v39 = v61 + v59 + v19;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_100014894(v39, v17, &qword_100135198, &unk_1000F5080);
      sub_100020D24(v17, v11, &unk_1001389D0, &qword_1000F4F60);
      v41 = *&v17[v58];
      v42 = *a3;
      v43 = sub_100061BF8(v11);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v26 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v26)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_100033A50(v47, 1);
        v43 = sub_100061BF8(v11);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      sub_100020D24(v11, v50[6] + v57 * v43, &unk_1001389D0, &qword_1000F4F60);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v26 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v59;
      v38 = v61;
      if (v60 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x8000000100104B40;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000A85BC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000A87E8(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000A86B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000A86B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      result = *(v9 - 1);
      if (v7)
      {
        if (v7 == 1)
        {
          v10 = 1;
          if (!*(v9 - 1))
          {
            goto LABEL_4;
          }
        }

        else if (v7 == 2)
        {
          v10 = 2;
          if (!*(v9 - 1))
          {
            goto LABEL_4;
          }
        }

        else if (v7 != 3 || (v10 = 3, !*(v9 - 1)))
        {
LABEL_4:
          ++a3;
          ++v5;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0;
        if (!*(v9 - 1))
        {
          goto LABEL_4;
        }
      }

      if (result == 1)
      {
        if (v10)
        {
          goto LABEL_4;
        }
      }

      else if (result == 2)
      {
        if (v10 >= 2)
        {
          goto LABEL_4;
        }
      }

      else if (result == 3 && v10 >= 3)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      *v9 = result;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A87E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v85 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_130:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_132:
      v80 = *(v9 + 2);
      if (v80 >= 2)
      {
        while (*a3)
        {
          v81 = *&v9[16 * v80];
          v82 = *&v9[16 * v80 + 24];
          sub_1000A8EF4((*a3 + v81), (*a3 + *&v9[16 * v80 + 16]), (*a3 + v82), v5);
          if (v6)
          {
          }

          if (v82 < v81)
          {
            goto LABEL_155;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1000CACF4(v9);
          }

          if (v80 - 2 >= *(v9 + 2))
          {
            goto LABEL_156;
          }

          v83 = &v9[16 * v80];
          *v83 = v81;
          *(v83 + 1) = v82;
          result = sub_1000CAC68(v80 - 1);
          v80 = *(v9 + 2);
          if (v80 <= 1)
          {
          }
        }

        goto LABEL_166;
      }
    }

LABEL_162:
    result = sub_1000CACF4(v9);
    v9 = result;
    goto LABEL_132;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
LABEL_31:
      v17 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
      v18 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
      v19 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
      goto LABEL_42;
    }

    v11 = *a3;
    result = sub_1000CAD90(*(*a3 + v8), *(*a3 + v10));
    v12 = v10 + 2;
    if (v10 + 2 < v7)
    {
      v13 = *(v11 + v8);
      while (1)
      {
        v14 = *(v11 + v12);
        if (*(v11 + v12))
        {
          switch(v14)
          {
            case 1:
              v15 = 1;
              if (!v13)
              {
                goto LABEL_15;
              }

              break;
            case 2:
              v15 = 2;
              if (!v13)
              {
                goto LABEL_15;
              }

              break;
            case 3:
              v15 = 3;
              if (!v13)
              {
LABEL_15:
                v16 = 0;
                goto LABEL_24;
              }

              break;
            default:
              if (result)
              {
                v17 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
                v18 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
                v19 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
                if (v12 < v10)
                {
                  goto LABEL_159;
                }

LABEL_34:
                if (v10 < v12)
                {
                  v20 = v12 - 1;
                  v21 = v10;
                  do
                  {
                    if (v21 != v20)
                    {
                      v23 = *a3;
                      if (!*a3)
                      {
                        goto LABEL_165;
                      }

                      v24 = *(v23 + v21);
                      *(v23 + v21) = *(v23 + v20);
                      *(v23 + v20) = v24;
                    }
                  }

                  while (++v21 < v20--);
                }

                v8 = v12;
                goto LABEL_42;
              }

              goto LABEL_25;
          }
        }

        else
        {
          v15 = 0;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        switch(v13)
        {
          case 1:
            v16 = 1;
            goto LABEL_24;
          case 2:
            v16 = 2;
            goto LABEL_24;
          case 3:
            v16 = 3;
LABEL_24:
            if (((result ^ (v15 >= v16)) & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_25;
        }

        if ((result & 1) == 0)
        {
          v8 = v12;
          goto LABEL_31;
        }

LABEL_25:
        ++v12;
        v13 = v14;
        if (v7 == v12)
        {
          v12 = v7;
          break;
        }
      }
    }

LABEL_32:
    v17 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
    v18 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
    v19 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
    v8 = v12;
    if (result)
    {
      if (v12 < v10)
      {
        goto LABEL_159;
      }

      goto LABEL_34;
    }

LABEL_42:
    v25 = a3[1];
    if (v8 < v25)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_158;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_77:
    if (v8 < v10)
    {
      goto LABEL_157;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000317BC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v35 = *(v9 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1000317BC((v35 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v36;
    v37 = &v9[16 * v5];
    *(v37 + 4) = v10;
    *(v37 + 5) = v8;
    v38 = *v85;
    if (!*v85)
    {
      goto LABEL_167;
    }

    if (v5)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 4);
          v41 = *(v9 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_97:
          if (v43)
          {
            goto LABEL_146;
          }

          v56 = &v9[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_149;
          }

          v62 = &v9[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_153;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v66 = &v9[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_111:
        if (v61)
        {
          goto LABEL_148;
        }

        v69 = &v9[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_151;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_118:
        v5 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (!*a3)
        {
          goto LABEL_164;
        }

        v77 = *&v9[16 * v5 + 32];
        v78 = *&v9[16 * v39 + 40];
        sub_1000A8EF4((*a3 + v77), (*a3 + *&v9[16 * v39 + 32]), (*a3 + v78), v38);
        if (v6)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000CACF4(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v79 = &v9[16 * v5];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_1000CAC68(v39);
        v36 = *(v9 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v9[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_144;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_145;
      }

      v51 = &v9[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_147;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_150;
      }

      if (v55 >= v47)
      {
        v73 = &v9[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_154;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_130;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_160;
  }

  if (v10 + a4 < v25)
  {
    v25 = v10 + a4;
  }

  if (v25 < v10)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v8 == v25)
  {
    goto LABEL_77;
  }

  v26 = *a3;
  v27 = (*a3 + v8);
  v28 = v10 - v8;
LABEL_52:
  v29 = *(v26 + v8);
  v30 = v28;
  v31 = v27;
  while (1)
  {
    v32 = *(v31 - 1);
    if (v29)
    {
      if (*(v17 + 3785) == v29)
      {
        v33 = 1;
        if (!*(v31 - 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (*(v18 + 3786) != v29)
        {
          if (*(v19 + 3787) == v29)
          {
            v33 = 3;
            if (*(v31 - 1))
            {
              goto LABEL_64;
            }
          }

LABEL_51:
          ++v8;
          ++v27;
          --v28;
          if (v8 == v25)
          {
            v8 = v25;
            goto LABEL_77;
          }

          goto LABEL_52;
        }

        v33 = 2;
        if (!*(v31 - 1))
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v33 = 0;
      if (!*(v31 - 1))
      {
        goto LABEL_51;
      }
    }

LABEL_64:
    if (*(v17 + 3785) == v32)
    {
      if (v33)
      {
        goto LABEL_51;
      }
    }

    else if (*(v18 + 3786) == v32)
    {
      if (v33 >= 2)
      {
        goto LABEL_51;
      }
    }

    else if (*(v19 + 3787) == v32 && v33 >= 3)
    {
      goto LABEL_51;
    }

    if (!v26)
    {
      break;
    }

    *v31 = v32;
    *--v31 = v29;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_1000A8EF4(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = (v6 - 1);
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v17 = *--v15;
          if (sub_1000CAD90(v17, *v14))
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v15;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v14;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (sub_1000CAD90(*v6, *v4))
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v12;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1000A90F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
LABEL_9:
      sub_1000D4ED8(v12, a3, a4, a5);
      return sub_1000128D8(a3, a4);
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1000146C4(a3, a4);
  sub_1000A9284(v8, v9, a3, a4, a5);
  return sub_1000128D8(a3, a4);
}

uint64_t sub_1000A9284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  result = __DataStorage._bytes.getter();
  v12 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v12 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    sub_1000D4ED8(v12, a4, a5, x8_0);
    return sub_1000128D8(a4, a5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000A9344()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A9398()
{

  if (v0[19] >= 6uLL)
  {
  }

  if (v0[56])
  {
  }

  if (v0[60])
  {
  }

  if (v0[71])
  {
  }

  sub_100003C90(v0 + 77);

  return _swift_deallocObject(v0, 656, 7);
}

unint64_t sub_1000A958C()
{
  result = qword_1001373C0;
  if (!qword_1001373C0)
  {
    type metadata accessor for UncachedBundle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001373C0);
  }

  return result;
}

BOOL sub_1000A9608()
{
  if (Img4DecodeInitPayload)
  {
    v0 = Img4DecodeInit == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

unint64_t sub_1000A9724()
{
  result = qword_100137870;
  if (!qword_100137870)
  {
    sub_100009FEC(255, &qword_100137468, NSBundle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137870);
  }

  return result;
}

uint64_t sub_1000A979C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A97E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A983C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000A9858(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000A98A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A9908()
{
  result = qword_100137888;
  if (!qword_100137888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137888);
  }

  return result;
}

unint64_t sub_1000A9960()
{
  result = qword_100137890;
  if (!qword_100137890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137890);
  }

  return result;
}

unint64_t sub_1000A99B8()
{
  result = qword_100137898;
  if (!qword_100137898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137898);
  }

  return result;
}

unint64_t sub_1000A9A10()
{
  result = qword_1001378A0;
  if (!qword_1001378A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378A0);
  }

  return result;
}

uint64_t sub_1000A9A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751347809 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C656E72656BLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010A030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xED00007368746150 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010A050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010A070 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000A9CC0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_1001378A8, &qword_1000F9F18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v38 - v8;
  v10 = a1[3];
  v46 = a1;
  sub_100003C4C(a1, v10);
  sub_1000AA290();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v47 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0x6534366D7261;
    v15 = 0xE600000000000000;
    v16 = 0xE000000000000000;
    v17 = 0xE000000000000000;
    v45 = _swiftEmptyArrayStorage;
LABEL_4:
    sub_100003C90(v46);
    v54 = v13;
    v55 = v15;
    v56 = v12;
    v57 = v17;
    v58 = v11;
    v59 = v16;
    v60 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
    v62 = v45;
    v63 = _swiftEmptyArrayStorage;
    return sub_1000AA2E4(&v54);
  }

  LOBYTE(v54) = 0;
  v19 = a2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v20;
  v44 = v14;
  LOBYTE(v54) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v22;
  v42 = v21;
  LOBYTE(v54) = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 0;
  v40 = v24;
  v41 = v23;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  LOBYTE(v48) = 3;
  v25 = sub_10001945C(&qword_1001345F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v26 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v26)
  {
    v47 = v26;
    (*(v6 + 8))(v9, v5);
    v45 = _swiftEmptyArrayStorage;
    v13 = v44;
    v15 = v43;
    v12 = v42;
    v11 = v41;
    v16 = v40;
    goto LABEL_4;
  }

  v27 = v54;
  LOBYTE(v48) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v25;
  v29 = v54;
  LOBYTE(v48) = 5;
  v47 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v54;
  v53 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = 0;
  (*(v6 + 8))(v9, v5);
  v38 = v64;
  v30 = v44;
  v31 = v43;
  *&v48 = v44;
  *(&v48 + 1) = v43;
  v32 = v42;
  *&v49 = v42;
  *(&v49 + 1) = v17;
  v39 = v17;
  v33 = v41;
  v34 = v40;
  *&v50 = v41;
  *(&v50 + 1) = v40;
  *&v51 = v27;
  *(&v51 + 1) = v29;
  v35 = v45;
  *&v52 = v45;
  *(&v52 + 1) = v64;
  sub_1000AA314(&v48, &v54);
  sub_100003C90(v46);
  v54 = v30;
  v55 = v31;
  v56 = v32;
  v57 = v39;
  v58 = v33;
  v59 = v34;
  v60 = v27;
  v61 = v29;
  v62 = v35;
  v63 = v38;
  result = sub_1000AA2E4(&v54);
  v36 = v51;
  v19[2] = v50;
  v19[3] = v36;
  v19[4] = v52;
  v37 = v49;
  *v19 = v48;
  v19[1] = v37;
  return result;
}

unint64_t sub_1000AA290()
{
  result = qword_1001378B0;
  if (!qword_1001378B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtensionManager.Settings.BuildManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionManager.Settings.BuildManifest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AA4A0()
{
  result = qword_1001378C0;
  if (!qword_1001378C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378C0);
  }

  return result;
}

unint64_t sub_1000AA4F8()
{
  result = qword_1001378C8;
  if (!qword_1001378C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378C8);
  }

  return result;
}

unint64_t sub_1000AA550()
{
  result = qword_1001378D0;
  if (!qword_1001378D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378D0);
  }

  return result;
}

__n128 sub_1000AA5AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000AA5D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB5 && *(a1 + 73))
  {
    return (*a1 + 181);
  }

  v3 = *(a1 + 72);
  if (v3 <= 0x4B)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000AA618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB4)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 181;
    if (a3 >= 0xB5)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB5)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AA670(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x4B)
  {
    *result = a2 - 75;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 75;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_1000AA6B0()
{
  result = qword_1001378D8;
  if (!qword_1001378D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378D8);
  }

  return result;
}

uint64_t sub_1000AA704()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21) | (*(v0 + 23) << 16);
  v6 = *(v0 + 24);
  switch(*(v0 + 72))
  {
    case 1:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v33 = "Deserialization failed: ";
      goto LABEL_59;
    case 2:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v11 = 0x800000010010A9E0;
      v12 = 0xD000000000000022;
      goto LABEL_109;
    case 3:
      v43 = v3 | (v4 << 32) | (v5 << 40);
      _StringGuts.grow(_:)(25);

      *&v145[0] = 0xD000000000000017;
      *(&v145[0] + 1) = 0x800000010010A9C0;
      v24 = v2;
      v25 = v43;
      goto LABEL_111;
    case 4:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v26 = "Launching driver extension failed: ";
      goto LABEL_75;
    case 5:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v31 = "Loading extension failed: ";
      goto LABEL_57;
    case 6:
      v60 = v3 | (v4 << 32) | (v5 << 40);
      _StringGuts.grow(_:)(38);

      *&v145[0] = 0xD000000000000020;
      *(&v145[0] + 1) = 0x800000010010AA60;
      v61._countAndFlagsBits = v1;
      v61._object = v2;
      String.append(_:)(v61);
      v62 = 8250;
      v63 = 0xE200000000000000;
      goto LABEL_80;
    case 7:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v22 = "Collection linkage invalid: ";
      goto LABEL_41;
    case 8:
      v66 = v3 | (v4 << 32) | (v5 << 40);
      _StringGuts.grow(_:)(34);

      *&v145[0] = 0xD00000000000001CLL;
      *(&v145[0] + 1) = 0x800000010010A9A0;
      LODWORD(v142._object) = v1;
      v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v67);

      v68._countAndFlagsBits = 8236;
      v68._object = 0xE200000000000000;
      String.append(_:)(v68);
      v24 = v2;
      v25 = v66;
      goto LABEL_111;
    case 9:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v32 = "Invalid argument: ";
      goto LABEL_102;
    case 0xA:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v9 = "Could not find: ";
      goto LABEL_67;
    case 0xB:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v26 = "Building kernel collection failed: ";
      goto LABEL_75;
    case 0xC:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v31 = "Unable to read extension: ";
LABEL_57:
      v11 = (v31 - 32) | 0x8000000000000000;
      v12 = 0xD00000000000001ALL;
      goto LABEL_109;
    case 0xD:
      v59 = *(v0 + 56);
      v58 = *(v0 + 64);
      _StringGuts.grow(_:)(34);

      *&v145[0] = 0xD000000000000020;
      *(&v145[0] + 1) = 0x800000010010A950;
      v24 = v59;
      v25 = v58;
      goto LABEL_111;
    case 0xE:
      v23 = v3 | (v4 << 32) | (v5 << 40);
      _StringGuts.grow(_:)(34);

      *&v145[0] = 0xD000000000000020;
      *(&v145[0] + 1) = 0x800000010010A950;
      v24 = v23;
      v25 = v6;
      goto LABEL_111;
    case 0xF:
      v35 = *(v0 + 32);
      v34 = *(v0 + 40);
      v36 = v3 | (v4 << 32) | (v5 << 40);
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(76);
      v37._object = 0x800000010010A5B0;
      v37._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v1;
      v38._object = v2;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 0xD000000000000019;
      v39._object = 0x800000010010A5D0;
      String.append(_:)(v39);
      v40._countAndFlagsBits = v36;
      v40._object = v6;
      String.append(_:)(v40);
      v41._countAndFlagsBits = 0xD00000000000001ALL;
      v41._object = 0x800000010010A5F0;
      String.append(_:)(v41);
      v42._countAndFlagsBits = v35;
      v42._object = v34;
      String.append(_:)(v42);
      v24 = 39;
      v25 = 0xE100000000000000;
      goto LABEL_111;
    case 0x10:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v15 = "Incompatible architecture: ";
      goto LABEL_20;
    case 0x11:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v11 = 0x800000010010A930;
      v12 = 0xD00000000000001DLL;
      goto LABEL_109;
    case 0x12:
      _StringGuts.grow(_:)(41);

      *&v145[0] = 0x6F69736E65747845;
      *(&v145[0] + 1) = 0xEB0000000027206ELL;
      v64._countAndFlagsBits = v1;
      v64._object = v2;
      String.append(_:)(v64);
      v65._countAndFlagsBits = 0xD00000000000001ALL;
      v65._object = 0x800000010010A8E0;
      String.append(_:)(v65);
      v18 = Array.description.getter();
      goto LABEL_65;
    case 0x13:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v32 = "Filesystem error: ";
      goto LABEL_102;
    case 0x14:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v16 = "Error while managing resource: ";
      goto LABEL_61;
    case 0x15:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v16 = "KcgenFlow apis sequence error: ";
      goto LABEL_61;
    case 0x16:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v7 = "Recovery environment specific error: ";
      goto LABEL_90;
    case 0x17:
      v8 = 0x7265206D6172764ELL;
      v14 = 980578162;
      goto LABEL_84;
    case 0x18:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v33 = "Could not parse binary: ";
      goto LABEL_59;
    case 0x19:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v11 = 0x800000010010A790;
      v12 = 0xD000000000000026;
      goto LABEL_109;
    case 0x1A:
      v76 = v1[2];
      if (v76 == 1)
      {
        v77 = v1[4];
        v78 = v1[5];
      }

      else if (v76)
      {
        *&v145[0] = 10;
        *(&v145[0] + 1) = 0xE100000000000000;

        v85 = -v76;
        v86 = (v1 + 5);
        v87 = 1;
        do
        {
          v89 = *(v86 - 1);
          v88 = *v86;

          v90._countAndFlagsBits = 10;
          v90._object = 0xE100000000000000;
          v91 = String.hasSuffix(_:)(v90);
          if (v91)
          {
            v92 = 0;
          }

          else
          {
            v92 = 10;
          }

          if (v91)
          {
            v93 = 0xE000000000000000;
          }

          else
          {
            v93 = 0xE100000000000000;
          }

          v142._object = 538976288;
          v143 = 0xE400000000000000;
          v144 = v87;
          v94._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v94);

          v95._countAndFlagsBits = 8250;
          v95._object = 0xE200000000000000;
          String.append(_:)(v95);
          v96._countAndFlagsBits = v89;
          v96._object = v88;
          String.append(_:)(v96);
          v97._countAndFlagsBits = v92;
          v97._object = v93;
          String.append(_:)(v97);

          v98._countAndFlagsBits = 538976288;
          v98._object = 0xE400000000000000;
          String.append(_:)(v98);

          ++v87;
          v86 += 2;
        }

        while (v85 + v87 != 1);
        v78 = *(&v145[0] + 1);
        v77 = *&v145[0];
      }

      else
      {
        if (!*(v2 + 16))
        {
          return 0xD000000000000033;
        }

        v77 = 0;
        v78 = 0xE000000000000000;
      }

      if (*(v2 + 16))
      {
        v99 = 0;
        v100 = v2 + 64;
        v101 = 1 << *(v2 + 32);
        v102 = -1;
        if (v101 < 64)
        {
          v102 = ~(-1 << v101);
        }

        v103 = v102 & *(v2 + 64);
        v104 = (v101 + 63) >> 6;
        if (v103)
        {
          goto LABEL_130;
        }

        while (1)
        {
LABEL_132:
          v108 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            __break(1u);
LABEL_157:
            __break(1u);
            JUMPOUT(0x1000ABFD0);
          }

          if (v108 >= v104)
          {
            break;
          }

          v103 = *(v100 + 8 * v108);
          ++v99;
          if (v103)
          {
            v99 = v108;
            while (1)
            {
LABEL_130:
              while (1)
              {
                v105 = __clz(__rbit64(v103));
                v103 &= v103 - 1;
                v106 = v105 | (v99 << 6);
                v107 = *(*(v2 + 56) + 8 * v106);
                if (*(v107 + 16))
                {
                  break;
                }

                if (!v103)
                {
                  goto LABEL_132;
                }
              }

              v109 = (*(v2 + 48) + 16 * v106);
              v110 = *v109;
              v111 = v109[1];
              v141 = v107;

              v112._countAndFlagsBits = v110;
              v112._object = v111;
              String.append(_:)(v112);

              v113._countAndFlagsBits = 0x6966696365707320;
              v113._object = 0xEB00000000203A63;
              String.append(_:)(v113);

              v114 = v141;
              v116 = v78;
              v115 = v77;
              v117 = 0xE100000000000000;
              *&v145[0] = 10;
              *(&v145[0] + 1) = 0xE100000000000000;
              v140 = *(v141 + 16);
              if (v140)
              {
                v138 = v104;
                v139 = v2;
                v118 = 0;
                v119 = (v141 + 40);
                do
                {
                  if (v118 >= *(v114 + 16))
                  {
                    goto LABEL_157;
                  }

                  v118 = (v118 + 1);
                  v120 = *(v119 - 1);
                  v121 = *v119;

                  v122._countAndFlagsBits = 10;
                  v122._object = 0xE100000000000000;
                  v123 = String.hasSuffix(_:)(v122);
                  if (v123)
                  {
                    v124 = 0;
                  }

                  else
                  {
                    v124 = 10;
                  }

                  if (v123)
                  {
                    v125 = 0xE000000000000000;
                  }

                  else
                  {
                    v125 = 0xE100000000000000;
                  }

                  v142._countAndFlagsBits = v124;
                  v142._object = 538976288;
                  v143 = 0xE400000000000000;
                  v144 = v118;
                  v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v126);

                  v127._countAndFlagsBits = 8250;
                  v127._object = 0xE200000000000000;
                  String.append(_:)(v127);
                  v128._countAndFlagsBits = v120;
                  v128._object = v121;
                  String.append(_:)(v128);
                  v129._countAndFlagsBits = v142._countAndFlagsBits;
                  v129._object = v125;
                  String.append(_:)(v129);

                  v130._countAndFlagsBits = 538976288;
                  v130._object = 0xE400000000000000;
                  String.append(_:)(v130);

                  v119 += 2;
                  v114 = v141;
                }

                while (v140 != v118);
                v117 = *(&v145[0] + 1);
                v131 = *&v145[0];
                v104 = v138;
                v2 = v139;
                v116 = v78;
              }

              else
              {
                v131 = 10;
              }

              *&v145[0] = v115;
              *(&v145[0] + 1) = v116;

              v132._countAndFlagsBits = v131;
              v132._object = v117;
              String.append(_:)(v132);

              v78 = v116;
              v77 = v115;
              if (!v103)
              {
                goto LABEL_132;
              }
            }
          }
        }
      }

      else
      {
      }

      _StringGuts.grow(_:)(46);

      *&v145[0] = 0xD00000000000002CLL;
      *(&v145[0] + 1) = 0x800000010010A850;
      v133._countAndFlagsBits = v77;
      v133._object = v78;
      String.append(_:)(v133);

      return *&v145[0];
    case 0x1B:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v15 = "Unable to stage extension: ";
      goto LABEL_20;
    case 0x1C:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v30 = "System policy error: ";
      goto LABEL_86;
    case 0x1D:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(91);
      v74._countAndFlagsBits = 0xD00000000000001ALL;
      v74._object = 0x800000010010A6F0;
      String.append(_:)(v74);
      v75._countAndFlagsBits = v1;
      v75._object = v2;
      String.append(_:)(v75);
      v71 = "Extension with identifier ";
      v24 = 0xD00000000000003FLL;
      goto LABEL_88;
    case 0x1E:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      v69._countAndFlagsBits = 0xD00000000000001BLL;
      v69._object = 0x800000010010A690;
      String.append(_:)(v69);
      v142._object = v1;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_10001455C(&qword_100137848, &qword_100137840, &unk_1000FAC30, &protocol conformance descriptor for Set<A>);
      sub_100012814();
      v70._countAndFlagsBits = Sequence<>.joined(separator:)();
      String.append(_:)(v70);

      v71 = "Extension with identifiers ";
      v24 = 0xD00000000000003CLL;
LABEL_88:
      v25 = v71 | 0x8000000000000000;
      goto LABEL_111;
    case 0x1F:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v11 = 0x800000010010A900;
      v12 = 0xD000000000000021;
      goto LABEL_109;
    case 0x20:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v11 = 0x800000010010A670;
      v12 = 0xD000000000000019;
      goto LABEL_109;
    case 0x21:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v26 = "Failed to read configuration file: ";
      goto LABEL_75;
    case 0x22:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v20 = "Error interacting with logging system: ";
      goto LABEL_100;
    case 0x23:
      _StringGuts.grow(_:)(42);

      *&v145[0] = 0xD000000000000028;
      *(&v145[0] + 1) = 0x800000010010A560;
      LODWORD(v142._object) = v1;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_65:
      String.append(_:)(*&v18);

      return *&v145[0];
    case 0x24:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v7 = "Insufficient permissions for action: ";
      goto LABEL_90;
    case 0x25:
      v8 = 0x2064696C61766E49;
      v14 = 981034347;
LABEL_84:
      v13 = v14 | 0xED00002000000000;
      goto LABEL_105;
    case 0x26:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v7 = "Error occurred unloading extensions: ";
      goto LABEL_90;
    case 0x27:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v26 = "Error occurred while using kclist: ";
LABEL_75:
      v11 = (v26 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000023;
      goto LABEL_109;
    case 0x28:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v28 = "nelmanagerd state: ";
      v29 = 0xD000000000000032;
      goto LABEL_53;
    case 0x29:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v28 = "ile running subcommand '";
      v29 = 0xD000000000000033;
LABEL_53:
      v57 = v28 | 0x8000000000000000;
      String.append(_:)(*&v29);
      goto LABEL_110;
    case 0x2A:
      v60 = v3 | (v4 << 32) | (v5 << 40);
      _StringGuts.grow(_:)(47);

      *&v145[0] = 0xD000000000000028;
      *(&v145[0] + 1) = 0x800000010010A420;
      v73._countAndFlagsBits = v1;
      v73._object = v2;
      String.append(_:)(v73);
      v62 = 2112039;
      v63 = 0xE300000000000000;
LABEL_80:
      String.append(_:)(*&v62);
      v24 = v60;
      v25 = v6;
      goto LABEL_111;
    case 0x2B:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v10 = "Boot policy error: ";
      goto LABEL_12;
    case 0x2C:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v11 = 0x800000010010A3D0;
      v12 = 0xD000000000000028;
      goto LABEL_109;
    case 0x2D:
      if (v4)
      {
        *&v145[0] = 0;
        *(&v145[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v72 = "Code signature error: ";
LABEL_78:
        v11 = (v72 - 32) | 0x8000000000000000;
        v12 = 0xD000000000000016;
LABEL_109:
        *&v145[0] = v12;
        *(&v145[0] + 1) = v11;
      }

      else
      {
        v80 = SecCopyErrorMessageString(*(v0 + 16), 0);
        if (v80)
        {
          v81 = v80;
          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;
        }

        else
        {
          v84 = 0x800000010010A3B0;
          v82 = 0xD000000000000018;
        }

        _StringGuts.grow(_:)(33);

        *&v145[0] = 0xD000000000000016;
        *(&v145[0] + 1) = 0x800000010010A390;
        v134._countAndFlagsBits = v82;
        v134._object = v84;
        String.append(_:)(v134);

        v135._countAndFlagsBits = 10272;
        v135._object = 0xE200000000000000;
        String.append(_:)(v135);
        LODWORD(v142._object) = v3;
        v136._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v136);

        v137._countAndFlagsBits = 2112041;
        v137._object = 0xE300000000000000;
        String.append(_:)(v137);
      }

LABEL_110:
      v24 = v1;
      v25 = v2;
LABEL_111:
      String.append(_:)(*&v24);
      return *&v145[0];
    case 0x2E:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v20 = "Error occurred triggering Panic Medic: ";
      goto LABEL_100;
    case 0x2F:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v16 = "Error occurred checking UUIDs: ";
LABEL_61:
      v11 = (v16 - 32) | 0x8000000000000000;
      v21 = 13;
      goto LABEL_82;
    case 0x30:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v27 = "Safe boot error: ";
      goto LABEL_108;
    case 0x31:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v9 = "DarwinOS error: ";
      goto LABEL_67;
    case 0x32:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v9 = "Internal error: ";
LABEL_67:
      v11 = (v9 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000010;
      goto LABEL_109;
    case 0x33:
      _StringGuts.grow(_:)(42);

      *&v145[0] = 0xD000000000000016;
      *(&v145[0] + 1) = 0x800000010010A280;
      v142._object = v1;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_10001455C(&qword_100137848, &qword_100137840, &unk_1000FAC30, &protocol conformance descriptor for Set<A>);
      sub_100012814();
      v79._countAndFlagsBits = Sequence<>.joined(separator:)();
      String.append(_:)(v79);

      v25 = 0x800000010010A2A0;
      v24 = 0xD000000000000012;
      goto LABEL_111;
    case 0x34:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v8 = 0x20534F6E6567634BLL;
      v13 = 0xEF203A726F727265;
      goto LABEL_105;
    case 0x35:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v15 = "Duplicate extension error :";
LABEL_20:
      v11 = (v15 - 32) | 0x8000000000000000;
      v21 = 9;
      goto LABEL_82;
    case 0x36:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v27 = "In exclude list: ";
      goto LABEL_108;
    case 0x37:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v20 = "migrateAuxKCForVolumeGroupUUID failed: ";
LABEL_100:
      v11 = (v20 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000027;
      goto LABEL_109;
    case 0x38:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v10 = "Unsupported Error: ";
LABEL_12:
      v11 = (v10 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000013;
      goto LABEL_109;
    case 0x39:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v72 = "DeveloperTools Error: ";
      goto LABEL_78;
    case 0x3A:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v8 = 0x20746573656C6946;
      v13 = 0xEF203A726F727245;
      goto LABEL_105;
    case 0x3B:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v11 = 0x800000010010A1D0;
      v21 = 5;
LABEL_82:
      v12 = v21 | 0xD000000000000012;
      goto LABEL_109;
    case 0x3C:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v30 = "KDK-Installer Error: ";
LABEL_86:
      v11 = (v30 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000015;
      goto LABEL_109;
    case 0x3D:
      v8 = 0x72724520786F6E4BLL;
      v13 = 0xEC000000203A726FLL;
      goto LABEL_105;
    case 0x3E:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v33 = "packageInstaller Error: ";
LABEL_59:
      v11 = (v33 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000018;
      goto LABEL_109;
    case 0x3F:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v32 = "DextRecord Error: ";
      goto LABEL_102;
    case 0x40:
    case 0x42:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v7 = "SysExtensionWaitForTerminationError: ";
LABEL_90:
      v11 = (v7 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000025;
      goto LABEL_109;
    case 0x41:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v11 = 0x800000010010A140;
      v12 = 0xD00000000000002ELL;
      goto LABEL_109;
    case 0x43:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v22 = "BuildManifestNotFoundError: ";
LABEL_41:
      v11 = (v22 - 32) | 0x8000000000000000;
      v12 = 0xD00000000000001CLL;
      goto LABEL_109;
    case 0x44:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v27 = "Invalid Request: ";
LABEL_108:
      v11 = (v27 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000011;
      goto LABEL_109;
    case 0x45:
      v8 = 0x697463656E6E6F43;
      v13 = 0xEC000000203A6E6FLL;
      goto LABEL_105;
    case 0x46:
      v8 = 0x74754F64656D6954;
      goto LABEL_104;
    case 0x47:
      v8 = 0x203A79737542;
      v13 = 0xE600000000000000;
      goto LABEL_105;
    case 0x48:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v32 = "Arithmetic Error: ";
      goto LABEL_102;
    case 0x49:
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v32 = "MS decoder error: ";
LABEL_102:
      v11 = (v32 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000012;
      goto LABEL_109;
    case 0x4A:
      v8 = 0x726F72726520534DLL;
LABEL_104:
      v13 = 0xEA0000000000203ALL;
LABEL_105:
      *&v145[0] = v8;
      *(&v145[0] + 1) = v13;
      goto LABEL_110;
    case 0x4B:
      return 0xD000000000000015;
    default:
      v44 = v1[2];
      v45 = _swiftEmptyArrayStorage;
      if (v44)
      {
        v144 = _swiftEmptyArrayStorage;
        sub_1000635A4(0, v44, 0);
        v45 = _swiftEmptyArrayStorage;
        v46 = v1 + 4;
        do
        {
          v145[0] = *v46;
          v47 = v46[1];
          v48 = v46[2];
          v49 = v46[3];
          *(v146 + 9) = *(v46 + 57);
          v146[0] = v49;
          v145[1] = v47;
          v145[2] = v48;
          sub_1000419A4(v145, &v142._object);
          v50 = sub_1000AA704();
          v52 = v51;
          sub_10001465C(v145);
          v144 = v45;
          v54 = v45[2];
          v53 = v45[3];
          if (v54 >= v53 >> 1)
          {
            sub_1000635A4((v53 > 1), v54 + 1, 1);
            v45 = v144;
          }

          v45[2] = v54 + 1;
          v55 = &v45[2 * v54];
          v55[4] = v50;
          v55[5] = v52;
          v46 += 5;
          --v44;
        }

        while (v44);
      }

      v142._object = v45;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
      v56 = BidirectionalCollection<>.joined(separator:)();

      return v56;
  }
}

uint64_t sub_1000AC100()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AC134@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for POSIXError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  errno.getter();
  result = POSIXErrorCode.init(rawValue:)();
  if ((result & 0x100000000) != 0 && (result = POSIXErrorCode.init(rawValue:)(), (result & 0x100000000) != 0))
  {
    __break(1u);
  }

  else
  {
    v19[3] = result;
    sub_1000B50B0(_swiftEmptyArrayStorage);
    sub_100068A24();
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = static os_signpost_type_t.event.getter();
    if (qword_100133AA0 != -1)
    {
      swift_once();
    }

    v14 = qword_10014E960;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000F3160;
    (*(v8 + 16))(v11, a1, v7);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100003D24();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v13, &_mh_execute_header, v14, "globalError", 11, 2, v6, "Encountered error: %{public}s", 29, 2, v15);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

id sub_1000AC3E4()
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = NSOSStatusErrorDomain;
  v3 = sub_1000AA704();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_10003E208(inited);
  swift_setDeallocating();
  sub_10009EEF4(inited + 32);
  v5 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithDomain:v2 code:5 userInfo:isa];

  return v7;
}

uint64_t sub_1000AC50C(char a1)
{
  result = 0x656C7069746C756DLL;
  switch(a1)
  {
    case 1:
      return 0x6C61697265736564;
    case 2:
    case 16:
    case 58:
    case 60:
    case 62:
      return 0xD000000000000013;
    case 3:
      return 0x65526C656E72656BLL;
    case 4:
      return 0x694B726576697264;
    case 5:
      return 0x6F69736E65747865;
    case 6:
      return 0x697463656C6C6F63;
    case 7:
    case 19:
    case 47:
    case 61:
      return 0xD000000000000011;
    case 8:
      return 0x656372756F736572;
    case 9:
      return 0x7A696C6169726573;
    case 10:
      return 0x4164696C61766E69;
    case 11:
      return 0x646E756F46746F6ELL;
    case 12:
    case 63:
    case 67:
      v4 = 5;
      goto LABEL_73;
    case 13:
      return 0x6E697A696C616572;
    case 14:
      return 0xD000000000000014;
    case 15:
    case 17:
    case 31:
      return 0xD000000000000018;
    case 18:
      v3 = 0x6164696C6176;
      goto LABEL_42;
    case 20:
      return 0x74737973656C6966;
    case 21:
      v5 = 1802725732;
      goto LABEL_49;
    case 22:
      v5 = 2003790950;
LABEL_49:
      result = v5 | 0x6563634100000000;
      break;
    case 23:
      result = 0x797265766F636572;
      break;
    case 24:
      result = 0x6363416D6172766ELL;
      break;
    case 25:
      result = 0x61507972616E6962;
      break;
    case 26:
      result = 0x6556657275747566;
      break;
    case 27:
      result = 0x6975426568636163;
      break;
    case 28:
      result = 0x676E6967617473;
      break;
    case 29:
      result = 0x6F506D6574737973;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x69746E6568747561;
      break;
    case 33:
      result = 0x786F62646E6173;
      break;
    case 34:
      result = 0x72756769666E6F63;
      break;
    case 35:
      result = 0x45676E6967676F6CLL;
      break;
    case 36:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0xD000000000000017;
      break;
    case 38:
      result = 0x4B64696C61766E69;
      break;
    case 39:
      result = 0x64616F6C6E75;
      break;
    case 40:
      result = 0x6F7272457473696CLL;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0x74617473706D7564;
      break;
    case 43:
      result = 0x65736F6E67616964;
      break;
    case 44:
      result = 0x696C6F50746F6F62;
      break;
    case 45:
      result = 0x6F69747065637865;
      break;
    case 46:
      result = 0x6E67695365646F63;
      break;
    case 48:
      result = 0xD000000000000010;
      break;
    case 49:
      result = 0x6F42656661536E69;
      break;
    case 50:
      result = 0x6E69777261446E69;
      break;
    case 51:
      result = 0x6C616E7265746E69;
      break;
    case 52:
      result = 0x7365726975716572;
      break;
    case 53:
      result = 0x4F6E6567634B6E69;
      break;
    case 54:
      result = 0xD000000000000012;
      break;
    case 55:
      result = 0x64756C6378456E69;
      break;
    case 56:
      result = 0x6F6974617267696DLL;
      break;
    case 57:
      result = 0xD000000000000010;
      break;
    case 59:
      result = 0x45746573656C6966;
      break;
    case 64:
      result = 0x6F63655274786564;
      break;
    case 65:
      result = 0xD000000000000021;
      break;
    case 66:
      result = 0xD00000000000002ALL;
      break;
    case 68:
      v4 = 10;
LABEL_73:
      result = v4 | 0xD000000000000010;
      break;
    case 69:
      result = 0x5264696C61766E69;
      break;
    case 70:
      v3 = 0x63656E6E6F63;
LABEL_42:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 71:
      result = 0x74754F64656D6974;
      break;
    case 72:
      result = 2037609826;
      break;
    case 73:
      result = 0x74656D6874697261;
      break;
    case 74:
      result = 0x65646F636544736DLL;
      break;
    case 75:
      result = 0x736C6F6F54736DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000ACE64(void *a1)
{
  v2 = sub_100003CDC(&qword_100137DD8, &qword_1000FAC50);
  v406 = *(v2 - 8);
  v407 = v2;
  __chkstk_darwin(v2, v3);
  v405 = &v224 - v4;
  v5 = sub_100003CDC(&qword_100137DE0, &qword_1000FAC58);
  v403 = *(v5 - 8);
  v404 = v5;
  __chkstk_darwin(v5, v6);
  v402 = &v224 - v7;
  v8 = sub_100003CDC(&qword_100137DE8, &qword_1000FAC60);
  v400 = *(v8 - 8);
  v401 = v8;
  __chkstk_darwin(v8, v9);
  v399 = &v224 - v10;
  v398 = sub_100003CDC(&qword_100137DF0, &qword_1000FAC68);
  v397[1] = *(v398 - 8);
  __chkstk_darwin(v398, v11);
  v397[0] = &v224 - v12;
  v396 = sub_100003CDC(&qword_100137DF8, &qword_1000FAC70);
  v395[1] = *(v396 - 8);
  __chkstk_darwin(v396, v13);
  v395[0] = &v224 - v14;
  v394 = sub_100003CDC(&qword_100137E00, &qword_1000FAC78);
  v393[1] = *(v394 - 8);
  __chkstk_darwin(v394, v15);
  v393[0] = &v224 - v16;
  v392 = sub_100003CDC(&qword_100137E08, &qword_1000FAC80);
  v391[1] = *(v392 - 8);
  __chkstk_darwin(v392, v17);
  v391[0] = &v224 - v18;
  v390 = sub_100003CDC(&qword_100137E10, &qword_1000FAC88);
  v389[1] = *(v390 - 8);
  __chkstk_darwin(v390, v19);
  v389[0] = &v224 - v20;
  v388 = sub_100003CDC(&qword_100137E18, &qword_1000FAC90);
  v387[1] = *(v388 - 8);
  __chkstk_darwin(v388, v21);
  v387[0] = &v224 - v22;
  v386 = sub_100003CDC(&qword_100137E20, &qword_1000FAC98);
  v385[1] = *(v386 - 8);
  __chkstk_darwin(v386, v23);
  v385[0] = &v224 - v24;
  v384 = sub_100003CDC(&qword_100137E28, &qword_1000FACA0);
  v383[1] = *(v384 - 8);
  __chkstk_darwin(v384, v25);
  v383[0] = &v224 - v26;
  v382 = sub_100003CDC(&qword_100137E30, &qword_1000FACA8);
  v381[1] = *(v382 - 8);
  __chkstk_darwin(v382, v27);
  v381[0] = &v224 - v28;
  v380 = sub_100003CDC(&qword_100137E38, &qword_1000FACB0);
  v379 = *(v380 - 8);
  __chkstk_darwin(v380, v29);
  v378 = &v224 - v30;
  v377 = sub_100003CDC(&qword_100137E40, &qword_1000FACB8);
  v376[1] = *(v377 - 8);
  __chkstk_darwin(v377, v31);
  v376[0] = &v224 - v32;
  v375 = sub_100003CDC(&qword_100137E48, &qword_1000FACC0);
  v374[1] = *(v375 - 8);
  __chkstk_darwin(v375, v33);
  v374[0] = &v224 - v34;
  v373 = sub_100003CDC(&qword_100137E50, &qword_1000FACC8);
  v372[1] = *(v373 - 8);
  __chkstk_darwin(v373, v35);
  v372[0] = &v224 - v36;
  v371 = sub_100003CDC(&qword_100137E58, &qword_1000FACD0);
  v370[1] = *(v371 - 8);
  __chkstk_darwin(v371, v37);
  v370[0] = &v224 - v38;
  v369 = sub_100003CDC(&qword_100137E60, &qword_1000FACD8);
  v368[1] = *(v369 - 8);
  __chkstk_darwin(v369, v39);
  v368[0] = &v224 - v40;
  v367 = sub_100003CDC(&qword_100137E68, &qword_1000FACE0);
  v366 = *(v367 - 8);
  __chkstk_darwin(v367, v41);
  v365 = &v224 - v42;
  v364 = sub_100003CDC(&qword_100137E70, &qword_1000FACE8);
  v363[1] = *(v364 - 8);
  __chkstk_darwin(v364, v43);
  v363[0] = &v224 - v44;
  v362 = sub_100003CDC(&qword_100137E78, &qword_1000FACF0);
  v361[1] = *(v362 - 8);
  __chkstk_darwin(v362, v45);
  v361[0] = &v224 - v46;
  v360 = sub_100003CDC(&qword_100137E80, &qword_1000FACF8);
  v359 = *(v360 - 8);
  __chkstk_darwin(v360, v47);
  v358 = &v224 - v48;
  v357 = sub_100003CDC(&qword_100137E88, &qword_1000FAD00);
  v356[1] = *(v357 - 8);
  __chkstk_darwin(v357, v49);
  v354 = &v224 - v50;
  v356[0] = sub_100003CDC(&qword_100137E90, &qword_1000FAD08);
  v355 = *(v356[0] - 8);
  __chkstk_darwin(v356[0], v51);
  v353 = &v224 - v52;
  v352 = sub_100003CDC(&qword_100137E98, &qword_1000FAD10);
  v351[1] = *(v352 - 8);
  __chkstk_darwin(v352, v53);
  v351[0] = &v224 - v54;
  v350 = sub_100003CDC(&qword_100137EA0, &qword_1000FAD18);
  v349[1] = *(v350 - 8);
  __chkstk_darwin(v350, v55);
  v349[0] = &v224 - v56;
  v348 = sub_100003CDC(&qword_100137EA8, &qword_1000FAD20);
  v347[1] = *(v348 - 8);
  __chkstk_darwin(v348, v57);
  v347[0] = &v224 - v58;
  v346 = sub_100003CDC(&qword_100137EB0, &qword_1000FAD28);
  v345[1] = *(v346 - 8);
  __chkstk_darwin(v346, v59);
  v345[0] = &v224 - v60;
  v343[0] = sub_100003CDC(&qword_100137EB8, &qword_1000FAD30);
  v342 = *(v343[0] - 8);
  __chkstk_darwin(v343[0], v61);
  v340 = &v224 - v62;
  v344 = sub_100003CDC(&qword_100137EC0, &qword_1000FAD38);
  v343[1] = *(v344 - 8);
  __chkstk_darwin(v344, v63);
  v341 = &v224 - v64;
  v339 = sub_100003CDC(&qword_100137EC8, &qword_1000FAD40);
  v338[1] = *(v339 - 8);
  __chkstk_darwin(v339, v65);
  v338[0] = &v224 - v66;
  v336[0] = sub_100003CDC(&qword_100137ED0, &qword_1000FAD48);
  v335 = *(v336[0] - 8);
  __chkstk_darwin(v336[0], v67);
  v333 = &v224 - v68;
  v337 = sub_100003CDC(&qword_100137ED8, &qword_1000FAD50);
  v336[1] = *(v337 - 8);
  __chkstk_darwin(v337, v69);
  v334 = &v224 - v70;
  v332 = sub_100003CDC(&qword_100137EE0, &qword_1000FAD58);
  v331 = *(v332 - 8);
  __chkstk_darwin(v332, v71);
  v330 = &v224 - v72;
  v329 = sub_100003CDC(&qword_100137EE8, &qword_1000FAD60);
  v328[1] = *(v329 - 8);
  __chkstk_darwin(v329, v73);
  v328[0] = &v224 - v74;
  v327 = sub_100003CDC(&qword_100137EF0, &qword_1000FAD68);
  v326 = *(v327 - 8);
  __chkstk_darwin(v327, v75);
  v325 = &v224 - v76;
  v324 = sub_100003CDC(&qword_100137EF8, &qword_1000FAD70);
  v323 = *(v324 - 8);
  __chkstk_darwin(v324, v77);
  v322 = &v224 - v78;
  v321 = sub_100003CDC(&qword_100137F00, &qword_1000FAD78);
  v320[1] = *(v321 - 8);
  __chkstk_darwin(v321, v79);
  v320[0] = &v224 - v80;
  v319 = sub_100003CDC(&qword_100137F08, &qword_1000FAD80);
  v318[1] = *(v319 - 8);
  __chkstk_darwin(v319, v81);
  v318[0] = &v224 - v82;
  v317 = sub_100003CDC(&qword_100137F10, &qword_1000FAD88);
  v316[1] = *(v317 - 8);
  __chkstk_darwin(v317, v83);
  v316[0] = &v224 - v84;
  v315 = sub_100003CDC(&qword_100137F18, &qword_1000FAD90);
  v314[1] = *(v315 - 8);
  __chkstk_darwin(v315, v85);
  v314[0] = &v224 - v86;
  v313 = sub_100003CDC(&qword_100137F20, &qword_1000FAD98);
  v312[1] = *(v313 - 8);
  __chkstk_darwin(v313, v87);
  v312[0] = &v224 - v88;
  v311 = sub_100003CDC(&qword_100137F28, &qword_1000FADA0);
  v310[1] = *(v311 - 8);
  __chkstk_darwin(v311, v89);
  v310[0] = &v224 - v90;
  v309 = sub_100003CDC(&qword_100137F30, &qword_1000FADA8);
  v308 = *(v309 - 8);
  __chkstk_darwin(v309, v91);
  v305 = &v224 - v92;
  v307 = sub_100003CDC(&qword_100137F38, &qword_1000FADB0);
  v306 = *(v307 - 8);
  __chkstk_darwin(v307, v93);
  v304 = &v224 - v94;
  v303 = sub_100003CDC(&qword_100137F40, &qword_1000FADB8);
  v302[1] = *(v303 - 8);
  __chkstk_darwin(v303, v95);
  v302[0] = &v224 - v96;
  v299 = sub_100003CDC(&qword_100137F48, &qword_1000FADC0);
  v298[1] = *(v299 - 8);
  __chkstk_darwin(v299, v97);
  v297 = &v224 - v98;
  v296 = sub_100003CDC(&qword_100137F50, &qword_1000FADC8);
  v295[1] = *(v296 - 8);
  __chkstk_darwin(v296, v99);
  v295[0] = &v224 - v100;
  v301 = sub_100003CDC(&qword_100137F58, &qword_1000FADD0);
  v300 = *(v301 - 8);
  __chkstk_darwin(v301, v101);
  v298[0] = &v224 - v102;
  v294 = sub_100003CDC(&qword_100137F60, &qword_1000FADD8);
  v293[1] = *(v294 - 8);
  __chkstk_darwin(v294, v103);
  v293[0] = &v224 - v104;
  v292 = sub_100003CDC(&qword_100137F68, &qword_1000FADE0);
  v291 = *(v292 - 8);
  __chkstk_darwin(v292, v105);
  v290 = &v224 - v106;
  v289 = sub_100003CDC(&qword_100137F70, &qword_1000FADE8);
  v288[1] = *(v289 - 8);
  __chkstk_darwin(v289, v107);
  v288[0] = &v224 - v108;
  v287 = sub_100003CDC(&qword_100137F78, &qword_1000FADF0);
  v286[1] = *(v287 - 8);
  __chkstk_darwin(v287, v109);
  v286[0] = &v224 - v110;
  v285 = sub_100003CDC(&qword_100137F80, &qword_1000FADF8);
  v284[1] = *(v285 - 8);
  __chkstk_darwin(v285, v111);
  v284[0] = &v224 - v112;
  v283 = sub_100003CDC(&qword_100137F88, &qword_1000FAE00);
  v281 = *(v283 - 8);
  __chkstk_darwin(v283, v113);
  v279 = &v224 - v114;
  v277 = sub_100003CDC(&qword_100137F90, &qword_1000FAE08);
  v276 = *(v277 - 8);
  __chkstk_darwin(v277, v115);
  v275 = &v224 - v116;
  v282 = sub_100003CDC(&qword_100137F98, &qword_1000FAE10);
  v280 = *(v282 - 8);
  __chkstk_darwin(v282, v117);
  v278 = &v224 - v118;
  v272 = sub_100003CDC(&qword_100137FA0, &qword_1000FAE18);
  v271[1] = *(v272 - 8);
  __chkstk_darwin(v272, v119);
  v270 = &v224 - v120;
  v269 = sub_100003CDC(&qword_100137FA8, &qword_1000FAE20);
  v268 = *(v269 - 8);
  __chkstk_darwin(v269, v121);
  v267 = &v224 - v122;
  v274 = sub_100003CDC(&qword_100137FB0, &qword_1000FAE28);
  v273 = *(v274 - 8);
  __chkstk_darwin(v274, v123);
  v271[0] = &v224 - v124;
  v266 = sub_100003CDC(&qword_100137FB8, &qword_1000FAE30);
  v265 = *(v266 - 8);
  __chkstk_darwin(v266, v125);
  v262 = &v224 - v126;
  v264 = sub_100003CDC(&qword_100137FC0, &qword_1000FAE38);
  v263 = *(v264 - 8);
  __chkstk_darwin(v264, v127);
  v261 = &v224 - v128;
  v260 = sub_100003CDC(&qword_100137FC8, &qword_1000FAE40);
  v259 = *(v260 - 8);
  __chkstk_darwin(v260, v129);
  v258 = &v224 - v130;
  v257 = sub_100003CDC(&qword_100137FD0, &qword_1000FAE48);
  v256 = *(v257 - 8);
  __chkstk_darwin(v257, v131);
  v255 = &v224 - v132;
  v254 = sub_100003CDC(&qword_100137FD8, &qword_1000FAE50);
  v253 = *(v254 - 8);
  __chkstk_darwin(v254, v133);
  v252 = &v224 - v134;
  v251 = sub_100003CDC(&qword_100137FE0, &qword_1000FAE58);
  v250 = *(v251 - 8);
  __chkstk_darwin(v251, v135);
  v249 = &v224 - v136;
  v245 = sub_100003CDC(&qword_100137FE8, &qword_1000FAE60);
  v244 = *(v245 - 8);
  __chkstk_darwin(v245, v137);
  v243 = &v224 - v138;
  v248 = sub_100003CDC(&qword_100137FF0, &qword_1000FAE68);
  v247 = *(v248 - 8);
  __chkstk_darwin(v248, v139);
  v246 = &v224 - v140;
  v240 = sub_100003CDC(&qword_100137FF8, &qword_1000FAE70);
  v239 = *(v240 - 8);
  __chkstk_darwin(v240, v141);
  v237 = &v224 - v142;
  v242 = sub_100003CDC(&qword_100138000, &qword_1000FAE78);
  v241 = *(v242 - 8);
  __chkstk_darwin(v242, v143);
  v238 = &v224 - v144;
  v236 = sub_100003CDC(&qword_100138008, &qword_1000FAE80);
  v234 = *(v236 - 8);
  __chkstk_darwin(v236, v145);
  v232 = &v224 - v146;
  v230 = sub_100003CDC(&qword_100138010, &qword_1000FAE88);
  v229 = *(v230 - 8);
  __chkstk_darwin(v230, v147);
  v228 = &v224 - v148;
  v235 = sub_100003CDC(&qword_100138018, &qword_1000FAE90);
  v233 = *(v235 - 8);
  __chkstk_darwin(v235, v149);
  v231 = &v224 - v150;
  v227 = sub_100003CDC(&qword_100138020, &qword_1000FAE98);
  v226 = *(v227 - 8);
  __chkstk_darwin(v227, v151);
  v153 = &v224 - v152;
  v154 = sub_100003CDC(&qword_100138028, &qword_1000FAEA0);
  v225 = *(v154 - 8);
  __chkstk_darwin(v154, v155);
  v157 = &v224 - v156;
  v158 = sub_100003CDC(&qword_100138030, &qword_1000FAEA8);
  v224 = *(v158 - 8);
  __chkstk_darwin(v158, v159);
  v161 = &v224 - v160;
  v412 = sub_100003CDC(&qword_100138038, &unk_1000FAEB0);
  v408 = *(v412 - 8);
  __chkstk_darwin(v412, v162);
  v164 = &v224 - v163;
  sub_100003C4C(a1, a1[3]);
  sub_1000BE2B0();
  v411 = v164;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v165 = *v410;
  v166 = *(v410 + 16);
  v167 = *(v410 + 20);
  v168 = *(v410 + 21) | (*(v410 + 23) << 16);
  v169 = *(v410 + 24);
  v170 = *(v410 + 32);
  v171 = *(v410 + 40);
  switch(*(v410 + 72))
  {
    case 1:
      LOBYTE(v413) = 1;
      sub_1000BFBA0();
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v225 + 8))(v157, v154);
      goto LABEL_102;
    case 2:
      LOBYTE(v413) = 2;
      sub_1000BFB4C();
      v186 = v411;
      v185 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v187 = v227;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v226 + 8))(v153, v187);
      return (*(v408 + 8))(v186, v185);
    case 3:
      v410 = *(v410 + 8);
      LOBYTE(v413) = 3;
      v189 = v165;
      sub_1000BFAF8();
      v190 = v231;
      v174 = v411;
      v173 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v413 = v189;
      v422 = 0;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001945C(&qword_100134610, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v191 = v235;
      v192 = v409;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v192)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v233 + 8))(v190, v191);
      goto LABEL_98;
    case 4:
      LOBYTE(v413) = 4;
      sub_1000BFAA4();
      v175 = v228;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v230;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v261;
      goto LABEL_100;
    case 5:
      LOBYTE(v413) = 5;
      sub_1000BFA50();
      v175 = v232;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v236;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v266;
      goto LABEL_100;
    case 6:
      v410 = *(v410 + 24);
      LOBYTE(v413) = 6;
      sub_1000BF9FC();
      v201 = v238;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v202 = v242;
      v203 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v203)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v241 + 8))(v201, v202);
      goto LABEL_102;
    case 7:
      LOBYTE(v413) = 7;
      sub_1000BF9A8();
      v175 = v237;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v240;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v271;
      goto LABEL_100;
    case 8:
      v410 = *(v410 + 8);
      LOBYTE(v413) = 8;
      sub_1000BF954();
      v210 = v246;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v211 = v248;
      v212 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v212)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v247 + 8))(v210, v211);
      goto LABEL_102;
    case 9:
      LOBYTE(v413) = 10;
      sub_1000BF8AC();
      v175 = v249;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v251;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v281;
      goto LABEL_100;
    case 0xA:
      LOBYTE(v413) = 11;
      sub_1000BF858();
      v175 = v252;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v254;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v284;
      goto LABEL_100;
    case 0xB:
      LOBYTE(v413) = 12;
      sub_1000BF804();
      v175 = v255;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v257;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v286;
      goto LABEL_100;
    case 0xC:
      LOBYTE(v413) = 13;
      sub_1000BF7B0();
      v175 = v258;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v260;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v288;
      goto LABEL_100;
    case 0xD:
      v193 = *(v410 + 8);
      v405 = *(v410 + 48);
      v406 = v171;
      v194 = v168;
      LOBYTE(v413) = 14;
      v195 = v165;
      v196 = v166;
      v197 = v167;
      v410 = v169;
      v407 = v170;
      sub_1000BF708();
      v198 = v261;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v413 = v195;
      v414 = v193;
      v415 = v196;
      v416 = v197;
      v418 = BYTE2(v194);
      v417 = v194;
      v419 = v410;
      v420[0] = v407;
      v420[1] = v406;
      v420[2] = v405;
      v422 = 0;
      sub_1000BFDB4();
      v199 = v264;
      v200 = v409;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v200)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v263 + 8))(v198, v199);
      return (*(v408 + 8))(v411, v412);
    case 0xE:
      v410 = *(v410 + 24);
      LOBYTE(v413) = 15;
      sub_1000BF6B4();
      v175 = v262;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v178 = v266;
      v184 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v184)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v179 = v293;
      goto LABEL_100;
    case 0xF:
      v406 = *(v410 + 40);
      v407 = v170;
      v410 = v169;
      LOBYTE(v413) = 16;
      sub_1000BF660();
      v175 = v271[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v178 = v274;
      v188 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v188)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
        LOBYTE(v413) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v179 = &v299;
      goto LABEL_100;
    case 0x10:
      LOBYTE(v413) = 17;
      sub_1000BF60C();
      v175 = v267;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v269;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v295;
      goto LABEL_100;
    case 0x11:
      LOBYTE(v413) = 18;
      sub_1000BF5B8();
      v175 = v270;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v272;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v298;
      goto LABEL_100;
    case 0x12:
      v410 = *(v410 + 21) | (*(v410 + 23) << 16);
      v204 = v167;
      v205 = v166;
      LOBYTE(v413) = 19;
      sub_1000BF564();
      v206 = v278;
      v174 = v411;
      v173 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v207 = v282;
      v208 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v208)
      {
        v413 = v205 | (v204 << 32) | (v410 << 40);
        v422 = 1;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_10001945C(&qword_100134610, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v209 = &v305;
      goto LABEL_97;
    case 0x13:
      LOBYTE(v413) = 20;
      sub_1000BF510();
      v175 = v275;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v277;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v302;
      goto LABEL_100;
    case 0x14:
      LOBYTE(v413) = 21;
      sub_1000BF4BC();
      v175 = v279;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v283;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v306;
      goto LABEL_100;
    case 0x15:
      LOBYTE(v413) = 22;
      sub_1000BF468();
      v175 = v284[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v285;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v310;
      goto LABEL_100;
    case 0x16:
      LOBYTE(v413) = 23;
      sub_1000BF414();
      v175 = v286[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v287;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v312;
      goto LABEL_100;
    case 0x17:
      LOBYTE(v413) = 24;
      sub_1000BF3C0();
      v175 = v288[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v289;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v314;
      goto LABEL_100;
    case 0x18:
      LOBYTE(v413) = 25;
      sub_1000BF36C();
      v175 = v290;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v292;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v316;
      goto LABEL_100;
    case 0x19:
      LOBYTE(v413) = 26;
      sub_1000BF318();
      v175 = v293[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v294;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v318;
      goto LABEL_100;
    case 0x1A:
      v217 = *(v410 + 8);
      LOBYTE(v413) = 27;
      v218 = v165;
      sub_1000BF2C4();
      v219 = v298[0];
      v174 = v411;
      v173 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v413 = v218;
      v422 = 0;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001945C(&qword_100134610, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v220 = v301;
      v221 = v409;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v221)
      {
        v413 = v217;
        v422 = 1;
        sub_100003CDC(&qword_100136960, &qword_1000FAC40);
        sub_1000BFD08();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v300 + 8))(v219, v220);
      goto LABEL_98;
    case 0x1B:
      LOBYTE(v413) = 28;
      sub_1000BF270();
      v175 = v295[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v296;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v320;
      goto LABEL_100;
    case 0x1C:
      LOBYTE(v413) = 29;
      sub_1000BF21C();
      v175 = v297;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v299;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v323;
      goto LABEL_100;
    case 0x1D:
      LOBYTE(v413) = 30;
      sub_1000BF1C8();
      v175 = v302[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v303;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v328;
      goto LABEL_100;
    case 0x1E:
      LOBYTE(v413) = 31;
      v213 = v165;
      sub_1000BF174();
      v206 = v304;
      v174 = v411;
      v173 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v413 = v213;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100138040, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
      v207 = v307;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v209 = &v331;
      goto LABEL_97;
    case 0x1F:
      LOBYTE(v413) = 32;
      sub_1000BF120();
      v175 = v305;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v309;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v333;
      goto LABEL_100;
    case 0x20:
      LOBYTE(v413) = 33;
      sub_1000BF0CC();
      v175 = v310[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v311;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v336;
      goto LABEL_100;
    case 0x21:
      LOBYTE(v413) = 34;
      sub_1000BF078();
      v175 = v312[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v313;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v338;
      goto LABEL_100;
    case 0x22:
      LOBYTE(v413) = 35;
      sub_1000BF024();
      v175 = v314[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v315;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v340;
      goto LABEL_100;
    case 0x23:
      LOBYTE(v413) = 36;
      sub_1000BEFD0();
      v175 = v316[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v317;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v343;
      goto LABEL_100;
    case 0x24:
      LOBYTE(v413) = 37;
      sub_1000BEF7C();
      v175 = v318[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v319;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v345;
      goto LABEL_100;
    case 0x25:
      LOBYTE(v413) = 38;
      sub_1000BEF28();
      v175 = v320[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v321;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v347;
      goto LABEL_100;
    case 0x26:
      LOBYTE(v413) = 39;
      sub_1000BEED4();
      v175 = v322;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v324;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v349;
      goto LABEL_100;
    case 0x27:
      LOBYTE(v413) = 40;
      sub_1000BEE80();
      v175 = v325;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v327;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v351;
      goto LABEL_100;
    case 0x28:
      LOBYTE(v413) = 41;
      sub_1000BEE2C();
      v175 = v328[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v329;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v353;
      goto LABEL_100;
    case 0x29:
      LOBYTE(v413) = 42;
      sub_1000BEDD8();
      v175 = v330;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v332;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v356;
      goto LABEL_100;
    case 0x2A:
      v410 = *(v410 + 24);
      LOBYTE(v413) = 43;
      sub_1000BED84();
      v175 = v334;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v178 = v337;
      v216 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v216)
      {
        LOBYTE(v413) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v179 = v361;
      goto LABEL_100;
    case 0x2B:
      LOBYTE(v413) = 44;
      sub_1000BED30();
      v175 = v333;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v336[0];
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v359;
      goto LABEL_100;
    case 0x2C:
      LOBYTE(v413) = 45;
      sub_1000BECDC();
      v175 = v338[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v339;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v363;
      goto LABEL_100;
    case 0x2D:
      v214 = *(v410 + 20);
      LOBYTE(v413) = 46;
      sub_1000BEC88();
      v175 = v341;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v413) = 0;
      v178 = v344;
      v215 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v215)
      {
        LOBYTE(v413) = 1;
        v422 = v214 & 1;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      }

      v179 = v368;
      goto LABEL_100;
    case 0x2E:
      LOBYTE(v413) = 47;
      sub_1000BEC34();
      v175 = v340;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v343[0];
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v366;
      goto LABEL_100;
    case 0x2F:
      LOBYTE(v413) = 48;
      sub_1000BEBE0();
      v175 = v345[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v346;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v370;
      goto LABEL_100;
    case 0x30:
      LOBYTE(v413) = 49;
      sub_1000BEB8C();
      v175 = v347[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v348;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v372;
      goto LABEL_100;
    case 0x31:
      LOBYTE(v413) = 50;
      sub_1000BEB38();
      v175 = v349[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v350;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v374;
      goto LABEL_100;
    case 0x32:
      LOBYTE(v413) = 51;
      sub_1000BEAE4();
      v175 = v351[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v352;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v376;
      goto LABEL_100;
    case 0x33:
      LOBYTE(v413) = 52;
      v223 = v165;
      sub_1000BEA90();
      v206 = v353;
      v174 = v411;
      v173 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v413 = v223;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100138040, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
      v207 = v356[0];
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v209 = &v379;
LABEL_97:
      (*(*(v209 - 32) + 1))(v206, v207);
      goto LABEL_98;
    case 0x34:
      LOBYTE(v413) = 53;
      sub_1000BEA3C();
      v175 = v354;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v357;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v381;
      goto LABEL_100;
    case 0x35:
      LOBYTE(v413) = 54;
      sub_1000BE9E8();
      v175 = v358;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v360;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v383;
      goto LABEL_100;
    case 0x36:
      LOBYTE(v413) = 55;
      sub_1000BE994();
      v175 = v361[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v362;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v385;
      goto LABEL_100;
    case 0x37:
      LOBYTE(v413) = 56;
      sub_1000BE940();
      v175 = v363[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v364;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v387;
      goto LABEL_100;
    case 0x38:
      LOBYTE(v413) = 57;
      sub_1000BE8EC();
      v175 = v365;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v367;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v389;
      goto LABEL_100;
    case 0x39:
      LOBYTE(v413) = 58;
      sub_1000BE898();
      v175 = v368[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v369;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v391;
      goto LABEL_100;
    case 0x3A:
      LOBYTE(v413) = 59;
      sub_1000BE844();
      v175 = v370[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v371;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v393;
      goto LABEL_100;
    case 0x3B:
      LOBYTE(v413) = 60;
      sub_1000BE7F0();
      v175 = v372[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v373;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v395;
      goto LABEL_100;
    case 0x3C:
      LOBYTE(v413) = 61;
      sub_1000BE79C();
      v175 = v374[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v375;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v397;
      goto LABEL_100;
    case 0x3D:
      LOBYTE(v413) = 62;
      sub_1000BE748();
      v175 = v376[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v377;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v399;
      goto LABEL_100;
    case 0x3E:
      LOBYTE(v413) = 63;
      sub_1000BE6F4();
      v175 = v378;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v380;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v402;
      goto LABEL_100;
    case 0x3F:
      LOBYTE(v413) = 64;
      sub_1000BE6A0();
      v175 = v381[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v382;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v405;
      goto LABEL_100;
    case 0x40:
      LOBYTE(v413) = 65;
      sub_1000BE64C();
      v175 = v383[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v384;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v408;
      goto LABEL_100;
    case 0x41:
      LOBYTE(v413) = 66;
      sub_1000BE5F8();
      v175 = v385[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v386;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v411;
      goto LABEL_100;
    case 0x42:
      LOBYTE(v413) = 67;
      sub_1000BE5A4();
      v175 = v387[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v388;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v414;
      goto LABEL_100;
    case 0x43:
      LOBYTE(v413) = 68;
      sub_1000BE550();
      v175 = v389[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v390;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = v420;
      goto LABEL_100;
    case 0x44:
      LOBYTE(v413) = 69;
      sub_1000BE4FC();
      v175 = v391[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v392;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v421;
      goto LABEL_100;
    case 0x45:
      LOBYTE(v413) = 70;
      sub_1000BE4A8();
      v175 = v393[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v394;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v423;
      goto LABEL_100;
    case 0x46:
      LOBYTE(v413) = 71;
      sub_1000BE454();
      v175 = v395[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v396;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v424;
      goto LABEL_100;
    case 0x47:
      LOBYTE(v413) = 72;
      sub_1000BE400();
      v175 = v397[0];
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v398;
      KeyedEncodingContainer.encode(_:forKey:)();
      v179 = &v425;
LABEL_100:
      v222 = *(v179 - 32);
      goto LABEL_101;
    case 0x48:
      LOBYTE(v413) = 73;
      sub_1000BE3AC();
      v175 = v399;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v401;
      KeyedEncodingContainer.encode(_:forKey:)();
      v222 = v400;
      goto LABEL_101;
    case 0x49:
      LOBYTE(v413) = 74;
      sub_1000BE358();
      v175 = v402;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v404;
      KeyedEncodingContainer.encode(_:forKey:)();
      v222 = v403;
      goto LABEL_101;
    case 0x4A:
      LOBYTE(v413) = 75;
      sub_1000BE304();
      v175 = v405;
      v177 = v411;
      v176 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v178 = v407;
      KeyedEncodingContainer.encode(_:forKey:)();
      v222 = v406;
LABEL_101:
      (*(v222 + 8))(v175, v178);
LABEL_102:
      result = (*(v408 + 8))(v177, v176);
      break;
    case 0x4B:
      LOBYTE(v413) = 9;
      sub_1000BF900();
      v180 = v243;
      v182 = v411;
      v181 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v244 + 8))(v180, v245);
      result = (*(v408 + 8))(v182, v181);
      break;
    default:
      LOBYTE(v413) = 0;
      v172 = v165;
      sub_1000BFBF4();
      v174 = v411;
      v173 = v412;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v413 = v172;
      sub_100003CDC(&qword_100137DC0, &qword_1000FAC48);
      sub_1000BFE08(&qword_100138058, sub_1000BFE80, &protocol conformance descriptor for <A> [A]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v224 + 8))(v161, v158);
LABEL_98:
      result = (*(v408 + 8))(v174, v173);
      break;
  }

  return result;
}

uint64_t sub_1000B2290(uint64_t a1)
{
  v2 = sub_1000BE3AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B22CC(uint64_t a1)
{
  v2 = sub_1000BE3AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2308(uint64_t a1)
{
  v2 = sub_1000BF120();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2344(uint64_t a1)
{
  v2 = sub_1000BF120();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2380(uint64_t a1)
{
  v2 = sub_1000BF36C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B23BC(uint64_t a1)
{
  v2 = sub_1000BF36C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B23F8(uint64_t a1)
{
  v2 = sub_1000BED30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2434(uint64_t a1)
{
  v2 = sub_1000BED30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2470(uint64_t a1)
{
  v2 = sub_1000BE550();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B24AC(uint64_t a1)
{
  v2 = sub_1000BE550();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B24E8(uint64_t a1)
{
  v2 = sub_1000BE400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2524(uint64_t a1)
{
  v2 = sub_1000BE400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2560()
{
  if (*v0)
  {
    return 0x746E656449726570;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1000B259C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656449726570 && a2 == 0xED00007265696669)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000B2678(uint64_t a1)
{
  v2 = sub_1000BF2C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B26B4(uint64_t a1)
{
  v2 = sub_1000BF2C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B26F0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1000B2710(uint64_t a1)
{
  v2 = sub_1000BEC88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B274C(uint64_t a1)
{
  v2 = sub_1000BEC88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B51C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B27C4(uint64_t a1)
{
  v2 = sub_1000BE2B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2800(uint64_t a1)
{
  v2 = sub_1000BE2B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B283C(uint64_t a1)
{
  v2 = sub_1000BF9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2878(uint64_t a1)
{
  v2 = sub_1000BF9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B28B4(uint64_t a1)
{
  v2 = sub_1000BF9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B28F0(uint64_t a1)
{
  v2 = sub_1000BF9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B292C(uint64_t a1)
{
  v2 = sub_1000BF078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2968(uint64_t a1)
{
  v2 = sub_1000BF078();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B29A4(uint64_t a1)
{
  v2 = sub_1000BE4A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B29E0(uint64_t a1)
{
  v2 = sub_1000BE4A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2A1C(uint64_t a1)
{
  v2 = sub_1000BEBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2A58(uint64_t a1)
{
  v2 = sub_1000BEBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2A94()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1953066351;
  }
}

uint64_t sub_1000B2ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953066351 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AEB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000B2BB0(uint64_t a1)
{
  v2 = sub_1000BF708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2BEC(uint64_t a1)
{
  v2 = sub_1000BF708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2C28(uint64_t a1)
{
  v2 = sub_1000BFBA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2C64(uint64_t a1)
{
  v2 = sub_1000BFBA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2CA0(uint64_t a1)
{
  v2 = sub_1000BE898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2CDC(uint64_t a1)
{
  v2 = sub_1000BE898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2D18(uint64_t a1)
{
  v2 = sub_1000BE6A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2D54(uint64_t a1)
{
  v2 = sub_1000BE6A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2D90(uint64_t a1)
{
  v2 = sub_1000BED84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2DCC(uint64_t a1)
{
  v2 = sub_1000BED84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2E08(uint64_t a1)
{
  v2 = sub_1000BF4BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2E44(uint64_t a1)
{
  v2 = sub_1000BF4BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2E80(uint64_t a1)
{
  v2 = sub_1000BFAA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2EBC(uint64_t a1)
{
  v2 = sub_1000BFAA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2EF8(uint64_t a1)
{
  v2 = sub_1000BEDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2F34(uint64_t a1)
{
  v2 = sub_1000BEDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2F70(uint64_t a1)
{
  v2 = sub_1000BE9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2FAC(uint64_t a1)
{
  v2 = sub_1000BE9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2FE8(uint64_t a1)
{
  v2 = sub_1000BECDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3024(uint64_t a1)
{
  v2 = sub_1000BECDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3060(uint64_t a1)
{
  v2 = sub_1000BFA50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B309C(uint64_t a1)
{
  v2 = sub_1000BFA50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B30D8(uint64_t a1)
{
  v2 = sub_1000BE844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3114(uint64_t a1)
{
  v2 = sub_1000BE844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3150(uint64_t a1)
{
  v2 = sub_1000BF510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B318C(uint64_t a1)
{
  v2 = sub_1000BF510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B31C8(uint64_t a1)
{
  v2 = sub_1000BF468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3204(uint64_t a1)
{
  v2 = sub_1000BF468();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3240(uint64_t a1)
{
  v2 = sub_1000BF318();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B327C(uint64_t a1)
{
  v2 = sub_1000BF318();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B32B8(uint64_t a1)
{
  v2 = sub_1000BEB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B32F4(uint64_t a1)
{
  v2 = sub_1000BEB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3330(uint64_t a1)
{
  v2 = sub_1000BE994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B336C(uint64_t a1)
{
  v2 = sub_1000BE994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B33A8(uint64_t a1)
{
  v2 = sub_1000BEA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B33E4(uint64_t a1)
{
  v2 = sub_1000BEA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3420(uint64_t a1)
{
  v2 = sub_1000BEB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B345C(uint64_t a1)
{
  v2 = sub_1000BEB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3498(uint64_t a1)
{
  v2 = sub_1000BF60C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B34D4(uint64_t a1)
{
  v2 = sub_1000BF60C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3510()
{
  v1 = 0x5664657269736564;
  if (*v0 != 1)
  {
    v1 = 0x65566C6175746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000B3588@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B696C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B35B0(uint64_t a1)
{
  v2 = sub_1000BF660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B35EC(uint64_t a1)
{
  v2 = sub_1000BF660();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3628(uint64_t a1)
{
  v2 = sub_1000BEF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3664(uint64_t a1)
{
  v2 = sub_1000BEF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B36A0(uint64_t a1)
{
  v2 = sub_1000BEAE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B36DC(uint64_t a1)
{
  v2 = sub_1000BEAE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3718(uint64_t a1)
{
  v2 = sub_1000BF8AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3754(uint64_t a1)
{
  v2 = sub_1000BF8AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3790(uint64_t a1)
{
  v2 = sub_1000BEF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B37CC(uint64_t a1)
{
  v2 = sub_1000BEF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3808(uint64_t a1)
{
  v2 = sub_1000BF564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3844(uint64_t a1)
{
  v2 = sub_1000BF564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3880(uint64_t a1)
{
  v2 = sub_1000BE4FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B38BC(uint64_t a1)
{
  v2 = sub_1000BE4FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B38F8(uint64_t a1)
{
  v2 = sub_1000BE79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3934(uint64_t a1)
{
  v2 = sub_1000BE79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3970(uint64_t a1)
{
  v2 = sub_1000BF804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B39AC(uint64_t a1)
{
  v2 = sub_1000BF804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B39E8(uint64_t a1)
{
  v2 = sub_1000BFB4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3A24(uint64_t a1)
{
  v2 = sub_1000BFB4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3A60(uint64_t a1)
{
  v2 = sub_1000BFAF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3A9C(uint64_t a1)
{
  v2 = sub_1000BFAF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3AD8(uint64_t a1)
{
  v2 = sub_1000BE748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3B14(uint64_t a1)
{
  v2 = sub_1000BE748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3B50(uint64_t a1)
{
  v2 = sub_1000BEE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3B8C(uint64_t a1)
{
  v2 = sub_1000BEE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3BC8(uint64_t a1)
{
  v2 = sub_1000BF024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3C04(uint64_t a1)
{
  v2 = sub_1000BF024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3C40(uint64_t a1)
{
  v2 = sub_1000BE940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3C7C(uint64_t a1)
{
  v2 = sub_1000BE940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3CB8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000B3CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AEB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000B3DE8(uint64_t a1)
{
  v2 = sub_1000BF6B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3E24(uint64_t a1)
{
  v2 = sub_1000BF6B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3E60(uint64_t a1)
{
  v2 = sub_1000BE7F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3E9C(uint64_t a1)
{
  v2 = sub_1000BE7F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3ED8(uint64_t a1)
{
  v2 = sub_1000BE358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3F14(uint64_t a1)
{
  v2 = sub_1000BE358();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3F50(uint64_t a1)
{
  v2 = sub_1000BE304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3F8C(uint64_t a1)
{
  v2 = sub_1000BE304();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000B4060(uint64_t a1)
{
  v2 = sub_1000BFBF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B409C(uint64_t a1)
{
  v2 = sub_1000BFBF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B40D8(uint64_t a1)
{
  v2 = sub_1000BF858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4114(uint64_t a1)
{
  v2 = sub_1000BF858();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4150(uint64_t a1)
{
  v2 = sub_1000BF3C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B418C(uint64_t a1)
{
  v2 = sub_1000BF3C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B41C8(uint64_t a1)
{
  v2 = sub_1000BE6F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4204(uint64_t a1)
{
  v2 = sub_1000BE6F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4240(uint64_t a1)
{
  v2 = sub_1000BF7B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B427C(uint64_t a1)
{
  v2 = sub_1000BF7B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B42B8(uint64_t a1)
{
  v2 = sub_1000BF414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B42F4(uint64_t a1)
{
  v2 = sub_1000BF414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4330(uint64_t a1)
{
  v2 = sub_1000BEA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B436C(uint64_t a1)
{
  v2 = sub_1000BEA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B43A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000B4474(uint64_t a1)
{
  v2 = sub_1000BF954();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B44B0(uint64_t a1)
{
  v2 = sub_1000BF954();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B44EC(uint64_t a1)
{
  v2 = sub_1000BEE2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4528(uint64_t a1)
{
  v2 = sub_1000BEE2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4564(uint64_t a1)
{
  v2 = sub_1000BF0CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B45A0(uint64_t a1)
{
  v2 = sub_1000BF0CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B45DC(uint64_t a1)
{
  v2 = sub_1000BF900();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4618(uint64_t a1)
{
  v2 = sub_1000BF900();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4654(uint64_t a1)
{
  v2 = sub_1000BF270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4690(uint64_t a1)
{
  v2 = sub_1000BF270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B46CC(uint64_t a1)
{
  v2 = sub_1000BEFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4708(uint64_t a1)
{
  v2 = sub_1000BEFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4744(uint64_t a1)
{
  v2 = sub_1000BE64C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4780(uint64_t a1)
{
  v2 = sub_1000BE64C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B47BC(uint64_t a1)
{
  v2 = sub_1000BE5F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B47F8(uint64_t a1)
{
  v2 = sub_1000BE5F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4834(uint64_t a1)
{
  v2 = sub_1000BE5A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4870(uint64_t a1)
{
  v2 = sub_1000BE5A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B48AC(uint64_t a1)
{
  v2 = sub_1000BF21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B48E8(uint64_t a1)
{
  v2 = sub_1000BF21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4924(uint64_t a1)
{
  v2 = sub_1000BE454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4960(uint64_t a1)
{
  v2 = sub_1000BE454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B499C(uint64_t a1)
{
  v2 = sub_1000BEC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B49D8(uint64_t a1)
{
  v2 = sub_1000BEC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4A14(uint64_t a1)
{
  v2 = sub_1000BF1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4A50(uint64_t a1)
{
  v2 = sub_1000BF1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4A8C(uint64_t a1)
{
  v2 = sub_1000BF174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4AC8(uint64_t a1)
{
  v2 = sub_1000BF174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4B04(uint64_t a1)
{
  v2 = sub_1000BEED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4B40(uint64_t a1)
{
  v2 = sub_1000BEED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4B7C(uint64_t a1)
{
  v2 = sub_1000BE8EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4BB8(uint64_t a1)
{
  v2 = sub_1000BE8EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000B4C74(uint64_t a1)
{
  v2 = sub_1000BF5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4CB0(uint64_t a1)
{
  v2 = sub_1000BF5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000B4CEC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000B6A9C(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000B4D54()
{
  v0 = sub_1000AA704();
  v2 = v1;
  if (v0 == sub_1000AA704() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1000B4DE0()
{
  v0 = sub_1000AA704();
  v2 = v1;
  if (v0 == sub_1000AA704() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1000B4E6C()
{
  v0 = sub_1000AA704();
  v2 = v1;
  if (v0 == sub_1000AA704() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000B4F0C()
{
  v0 = sub_1000AA704();
  v2 = v1;
  if (v0 == sub_1000AA704() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000B4FAC()
{
  v0 = sub_1000AA704();
  v2 = v1;
  if (v0 == sub_1000AA704() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

unint64_t sub_1000B5038(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100062020(a1, a2, v4);
}

unint64_t sub_1000B50B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000BFED4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000B5038(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000B48C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000B51C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C7069746C756DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61697265736564 && a2 == 0xEF6E6F6974617A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010AB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65526C656E72656BLL && a2 == 0xED00007473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694B726576697264 && a2 == 0xEF68636E75614C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xED000064616F4C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEE0064616F4C6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC00000064616F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7A696C6169726573 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEF746E656D756772 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646E756F46746F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010010AB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E697A696C616572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010010ABB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010010ABD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010ABF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010010AC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69746164696C6176 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74737973656C6966 && a2 == 0xEA00000000006D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x656363416B736964 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65636341776F6C66 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6363416D6172766ELL && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x61507972616E6962 && a2 == 0xED0000676E697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6556657275747566 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6975426568636163 && a2 == 0xED0000676E69646CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x676E6967617473 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6F506D6574737973 && a2 == 0xEC0000007963696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AC50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010010AC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEE006E6F69746163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x786F62646E6173 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x45676E6967676F6CLL && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010010ACB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x4B64696C61766E69 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6F7272457473696CLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010ACD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x74617473706D7564 && a2 == 0xEE00726F72724565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x65736F6E67616964 && a2 == 0xED0000726F727245 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x696C6F50746F6F62 && a2 == 0xEA00000000007963 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x6F69747065637865 && a2 == 0xED00007473694C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6E67695365646F63 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010ACF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AD10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6F42656661536E69 && a2 == 0xEA0000000000746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x6E69777261446E69 && a2 == 0xEA0000000000534FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x7365726975716572 && a2 == 0xEE00746F6F626552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x4F6E6567634B6E69 && a2 == 0xE900000000000053 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010010AD30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x64756C6378456E69 && a2 == 0xED00007473694C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x6F6974617267696DLL && a2 == 0xEE00726F7272456ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AD50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010AD70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x45746573656C6966 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010AD90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010ADB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010ADD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010010ADF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0x6F63655274786564 && a2 == 0xEF726F7272456472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000021 && 0x800000010010AE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000010010AE40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010010AE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010010AE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 2037609826 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0x74656D6874697261 && a2 == 0xEA00000000006369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0x65646F636544736DLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0x736C6F6F54736DLL && a2 == 0xE700000000000000)
  {

    return 75;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 75;
    }

    else
    {
      return 76;
    }
  }
}

uint64_t sub_1000B696C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657269736564 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65566C6175746361 && a2 == 0xED00006E6F697372)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000B6A9C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v962 = a2;
  v888 = sub_100003CDC(&qword_1001378E0, &qword_1000FA9C0);
  v891 = *(v888 - 8);
  __chkstk_darwin(v888, v3);
  v960 = &v737 - v4;
  v890 = sub_100003CDC(&qword_1001378E8, &qword_1000FA9C8);
  v889 = *(v890 - 8);
  __chkstk_darwin(v890, v5);
  v967 = &v737 - v6;
  v887 = sub_100003CDC(&qword_1001378F0, &qword_1000FA9D0);
  v886 = *(v887 - 8);
  __chkstk_darwin(v887, v7);
  v961 = &v737 - v8;
  v885 = sub_100003CDC(&qword_1001378F8, &qword_1000FA9D8);
  v884 = *(v885 - 8);
  __chkstk_darwin(v885, v9);
  v966 = &v737 - v10;
  v883 = sub_100003CDC(&qword_100137900, &qword_1000FA9E0);
  v882 = *(v883 - 8);
  __chkstk_darwin(v883, v11);
  v959 = &v737 - v12;
  v881 = sub_100003CDC(&qword_100137908, &qword_1000FA9E8);
  v880 = *(v881 - 8);
  __chkstk_darwin(v881, v13);
  v958 = &v737 - v14;
  v879 = sub_100003CDC(&qword_100137910, &qword_1000FA9F0);
  v878 = *(v879 - 8);
  __chkstk_darwin(v879, v15);
  v957 = &v737 - v16;
  v877 = sub_100003CDC(&qword_100137918, &qword_1000FA9F8);
  v876 = *(v877 - 8);
  __chkstk_darwin(v877, v17);
  v956 = &v737 - v18;
  v875 = sub_100003CDC(&qword_100137920, &qword_1000FAA00);
  v874 = *(v875 - 8);
  __chkstk_darwin(v875, v19);
  v955 = &v737 - v20;
  v873 = sub_100003CDC(&qword_100137928, &qword_1000FAA08);
  v872 = *(v873 - 8);
  __chkstk_darwin(v873, v21);
  v954 = &v737 - v22;
  v871 = sub_100003CDC(&qword_100137930, &qword_1000FAA10);
  v870 = *(v871 - 8);
  __chkstk_darwin(v871, v23);
  v953 = &v737 - v24;
  v869 = sub_100003CDC(&qword_100137938, &qword_1000FAA18);
  v868 = *(v869 - 8);
  __chkstk_darwin(v869, v25);
  v952 = &v737 - v26;
  v867 = sub_100003CDC(&qword_100137940, &qword_1000FAA20);
  v866 = *(v867 - 8);
  __chkstk_darwin(v867, v27);
  v951 = &v737 - v28;
  v865 = sub_100003CDC(&qword_100137948, &qword_1000FAA28);
  v864 = *(v865 - 8);
  __chkstk_darwin(v865, v29);
  v950 = &v737 - v30;
  v863 = sub_100003CDC(&qword_100137950, &qword_1000FAA30);
  v862 = *(v863 - 8);
  __chkstk_darwin(v863, v31);
  v949 = &v737 - v32;
  v861 = sub_100003CDC(&qword_100137958, &qword_1000FAA38);
  v860 = *(v861 - 8);
  __chkstk_darwin(v861, v33);
  v948 = &v737 - v34;
  v859 = sub_100003CDC(&qword_100137960, &qword_1000FAA40);
  v858 = *(v859 - 8);
  __chkstk_darwin(v859, v35);
  v947 = &v737 - v36;
  v857 = sub_100003CDC(&qword_100137968, &qword_1000FAA48);
  v856 = *(v857 - 8);
  __chkstk_darwin(v857, v37);
  v946 = &v737 - v38;
  v855 = sub_100003CDC(&qword_100137970, &qword_1000FAA50);
  v854 = *(v855 - 8);
  __chkstk_darwin(v855, v39);
  v945 = &v737 - v40;
  v853 = sub_100003CDC(&qword_100137978, &qword_1000FAA58);
  v852 = *(v853 - 8);
  __chkstk_darwin(v853, v41);
  v944 = &v737 - v42;
  v851 = sub_100003CDC(&qword_100137980, &qword_1000FAA60);
  v850 = *(v851 - 8);
  __chkstk_darwin(v851, v43);
  v943 = &v737 - v44;
  v849 = sub_100003CDC(&qword_100137988, &qword_1000FAA68);
  v848 = *(v849 - 8);
  __chkstk_darwin(v849, v45);
  v942 = &v737 - v46;
  v847 = sub_100003CDC(&qword_100137990, &qword_1000FAA70);
  v846 = *(v847 - 8);
  __chkstk_darwin(v847, v47);
  v941 = &v737 - v48;
  v845 = sub_100003CDC(&qword_100137998, &qword_1000FAA78);
  v844 = *(v845 - 8);
  __chkstk_darwin(v845, v49);
  v940 = &v737 - v50;
  v843 = sub_100003CDC(&qword_1001379A0, &qword_1000FAA80);
  v842 = *(v843 - 8);
  __chkstk_darwin(v843, v51);
  v939 = &v737 - v52;
  v841 = sub_100003CDC(&qword_1001379A8, &qword_1000FAA88);
  v840 = *(v841 - 8);
  __chkstk_darwin(v841, v53);
  v938 = &v737 - v54;
  v839 = sub_100003CDC(&qword_1001379B0, &qword_1000FAA90);
  v838 = *(v839 - 8);
  __chkstk_darwin(v839, v55);
  v937 = &v737 - v56;
  v837 = sub_100003CDC(&qword_1001379B8, &qword_1000FAA98);
  v836 = *(v837 - 8);
  __chkstk_darwin(v837, v57);
  v936 = &v737 - v58;
  v833 = sub_100003CDC(&qword_1001379C0, &qword_1000FAAA0);
  v832 = *(v833 - 8);
  __chkstk_darwin(v833, v59);
  v934 = &v737 - v60;
  v835 = sub_100003CDC(&qword_1001379C8, &qword_1000FAAA8);
  v834 = *(v835 - 8);
  __chkstk_darwin(v835, v61);
  v935 = &v737 - v62;
  v831 = sub_100003CDC(&qword_1001379D0, &qword_1000FAAB0);
  v830 = *(v831 - 8);
  __chkstk_darwin(v831, v63);
  v933 = &v737 - v64;
  v828 = sub_100003CDC(&qword_1001379D8, &qword_1000FAAB8);
  v827 = *(v828 - 8);
  __chkstk_darwin(v828, v65);
  v931 = &v737 - v66;
  v829 = sub_100003CDC(&qword_1001379E0, &qword_1000FAAC0);
  v826 = *(v829 - 8);
  __chkstk_darwin(v829, v67);
  v932 = &v737 - v68;
  v825 = sub_100003CDC(&qword_1001379E8, &qword_1000FAAC8);
  v824 = *(v825 - 8);
  __chkstk_darwin(v825, v69);
  v930 = &v737 - v70;
  v823 = sub_100003CDC(&qword_1001379F0, &qword_1000FAAD0);
  v822 = *(v823 - 8);
  __chkstk_darwin(v823, v71);
  v929 = &v737 - v72;
  v821 = sub_100003CDC(&qword_1001379F8, &qword_1000FAAD8);
  v820 = *(v821 - 8);
  __chkstk_darwin(v821, v73);
  v928 = &v737 - v74;
  v819 = sub_100003CDC(&qword_100137A00, &qword_1000FAAE0);
  v818 = *(v819 - 8);
  __chkstk_darwin(v819, v75);
  v927 = &v737 - v76;
  v817 = sub_100003CDC(&qword_100137A08, &qword_1000FAAE8);
  v816 = *(v817 - 8);
  __chkstk_darwin(v817, v77);
  v926 = &v737 - v78;
  v815 = sub_100003CDC(&qword_100137A10, &qword_1000FAAF0);
  v814 = *(v815 - 8);
  __chkstk_darwin(v815, v79);
  v925 = &v737 - v80;
  v813 = sub_100003CDC(&qword_100137A18, &qword_1000FAAF8);
  v812 = *(v813 - 8);
  __chkstk_darwin(v813, v81);
  v924 = &v737 - v82;
  v811 = sub_100003CDC(&qword_100137A20, &qword_1000FAB00);
  v810 = *(v811 - 8);
  __chkstk_darwin(v811, v83);
  v923 = &v737 - v84;
  v809 = sub_100003CDC(&qword_100137A28, &qword_1000FAB08);
  v808 = *(v809 - 8);
  __chkstk_darwin(v809, v85);
  v922 = &v737 - v86;
  v807 = sub_100003CDC(&qword_100137A30, &qword_1000FAB10);
  v806 = *(v807 - 8);
  __chkstk_darwin(v807, v87);
  v921 = &v737 - v88;
  v805 = sub_100003CDC(&qword_100137A38, &qword_1000FAB18);
  v804 = *(v805 - 8);
  __chkstk_darwin(v805, v89);
  v920 = &v737 - v90;
  v803 = sub_100003CDC(&qword_100137A40, &qword_1000FAB20);
  v802 = *(v803 - 8);
  __chkstk_darwin(v803, v91);
  v919 = &v737 - v92;
  v801 = sub_100003CDC(&qword_100137A48, &qword_1000FAB28);
  v800 = *(v801 - 8);
  __chkstk_darwin(v801, v93);
  v918 = &v737 - v94;
  v797 = sub_100003CDC(&qword_100137A50, &qword_1000FAB30);
  v796 = *(v797 - 8);
  __chkstk_darwin(v797, v95);
  v916 = &v737 - v96;
  v795 = sub_100003CDC(&qword_100137A58, &qword_1000FAB38);
  v794 = *(v795 - 8);
  __chkstk_darwin(v795, v97);
  v915 = &v737 - v98;
  v799 = sub_100003CDC(&qword_100137A60, &qword_1000FAB40);
  v798 = *(v799 - 8);
  __chkstk_darwin(v799, v99);
  v917 = &v737 - v100;
  v793 = sub_100003CDC(&qword_100137A68, &qword_1000FAB48);
  v792 = *(v793 - 8);
  __chkstk_darwin(v793, v101);
  v914 = &v737 - v102;
  v791 = sub_100003CDC(&qword_100137A70, &qword_1000FAB50);
  v790 = *(v791 - 8);
  __chkstk_darwin(v791, v103);
  v913 = &v737 - v104;
  v789 = sub_100003CDC(&qword_100137A78, &qword_1000FAB58);
  v788 = *(v789 - 8);
  __chkstk_darwin(v789, v105);
  v912 = &v737 - v106;
  v787 = sub_100003CDC(&qword_100137A80, &qword_1000FAB60);
  v786 = *(v787 - 8);
  __chkstk_darwin(v787, v107);
  v911 = &v737 - v108;
  v785 = sub_100003CDC(&qword_100137A88, &qword_1000FAB68);
  v784 = *(v785 - 8);
  __chkstk_darwin(v785, v109);
  v910 = &v737 - v110;
  v781 = sub_100003CDC(&qword_100137A90, &qword_1000FAB70);
  v780 = *(v781 - 8);
  __chkstk_darwin(v781, v111);
  v908 = &v737 - v112;
  v779 = sub_100003CDC(&qword_100137A98, &qword_1000FAB78);
  v778 = *(v779 - 8);
  __chkstk_darwin(v779, v113);
  v907 = &v737 - v114;
  v783 = sub_100003CDC(&qword_100137AA0, &qword_1000FAB80);
  v782 = *(v783 - 8);
  __chkstk_darwin(v783, v115);
  v909 = &v737 - v116;
  v775 = sub_100003CDC(&qword_100137AA8, &qword_1000FAB88);
  v774 = *(v775 - 8);
  __chkstk_darwin(v775, v117);
  v906 = &v737 - v118;
  v773 = sub_100003CDC(&qword_100137AB0, &qword_1000FAB90);
  v772 = *(v773 - 8);
  __chkstk_darwin(v773, v119);
  v905 = &v737 - v120;
  v777 = sub_100003CDC(&qword_100137AB8, &qword_1000FAB98);
  v776 = *(v777 - 8);
  __chkstk_darwin(v777, v121);
  v901 = &v737 - v122;
  v769 = sub_100003CDC(&qword_100137AC0, &qword_1000FABA0);
  v768 = *(v769 - 8);
  __chkstk_darwin(v769, v123);
  v904 = &v737 - v124;
  v771 = sub_100003CDC(&qword_100137AC8, &qword_1000FABA8);
  v770 = *(v771 - 8);
  __chkstk_darwin(v771, v125);
  v965 = &v737 - v126;
  v767 = sub_100003CDC(&qword_100137AD0, &qword_1000FABB0);
  v766 = *(v767 - 8);
  __chkstk_darwin(v767, v127);
  v899 = &v737 - v128;
  v765 = sub_100003CDC(&qword_100137AD8, &qword_1000FABB8);
  v764 = *(v765 - 8);
  __chkstk_darwin(v765, v129);
  v903 = &v737 - v130;
  v763 = sub_100003CDC(&qword_100137AE0, &qword_1000FABC0);
  v762 = *(v763 - 8);
  __chkstk_darwin(v763, v131);
  v902 = &v737 - v132;
  v761 = sub_100003CDC(&qword_100137AE8, &qword_1000FABC8);
  v760 = *(v761 - 8);
  __chkstk_darwin(v761, v133);
  v964 = &v737 - v134;
  v963 = sub_100003CDC(&qword_100137AF0, &qword_1000FABD0);
  v757 = *(v963 - 8);
  __chkstk_darwin(v963, v135);
  v898 = &v737 - v136;
  v759 = sub_100003CDC(&qword_100137AF8, &qword_1000FABD8);
  v758 = *(v759 - 8);
  __chkstk_darwin(v759, v137);
  v900 = &v737 - v138;
  v755 = sub_100003CDC(&qword_100137B00, &qword_1000FABE0);
  v754 = *(v755 - 8);
  __chkstk_darwin(v755, v139);
  v896 = &v737 - v140;
  v756 = sub_100003CDC(&qword_100137B08, &qword_1000FABE8);
  v753 = *(v756 - 8);
  __chkstk_darwin(v756, v141);
  v897 = &v737 - v142;
  v751 = sub_100003CDC(&qword_100137B10, &qword_1000FABF0);
  v750 = *(v751 - 8);
  __chkstk_darwin(v751, v143);
  v894 = &v737 - v144;
  v748 = sub_100003CDC(&qword_100137B18, &qword_1000FABF8);
  v747 = *(v748 - 8);
  __chkstk_darwin(v748, v145);
  v893 = &v737 - v146;
  v752 = sub_100003CDC(&qword_100137B20, &qword_1000FAC00);
  v749 = *(v752 - 8);
  __chkstk_darwin(v752, v147);
  v895 = &v737 - v148;
  v746 = sub_100003CDC(&qword_100137B28, &qword_1000FAC08);
  v745 = *(v746 - 8);
  __chkstk_darwin(v746, v149);
  v892 = &v737 - v150;
  v744 = sub_100003CDC(&qword_100137B30, &qword_1000FAC10);
  v743 = *(v744 - 8);
  __chkstk_darwin(v744, v151);
  v153 = &v737 - v152;
  v154 = sub_100003CDC(&qword_100137B38, &qword_1000FAC18);
  v742 = *(v154 - 8);
  __chkstk_darwin(v154, v155);
  v157 = &v737 - v156;
  v158 = sub_100003CDC(&qword_100137B40, &unk_1000FAC20);
  v159 = *(v158 - 8);
  __chkstk_darwin(v158, v160);
  v162 = &v737 - v161;
  v163 = a1[3];
  v968 = a1;
  sub_100003C4C(a1, v163);
  sub_1000BE2B0();
  v164 = v969;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v969 = v164;
  if (v164)
  {
    return sub_100003C90(v968);
  }

  v739 = v157;
  v740 = v153;
  v738 = v154;
  v166 = v963;
  v165 = v964;
  v168 = v965;
  v167 = v966;
  v169 = v967;
  v741 = v159;
  v170 = KeyedDecodingContainer.allKeys.getter();
  if (*(v170 + 16) != 1 || (v171 = *(v170 + 32), v171 == 76))
  {
    v178 = v162;
    v179 = type metadata accessor for DecodingError();
    v180 = swift_allocError();
    v182 = v181;
    sub_100003CDC(&qword_100135E50, &qword_1000F7C00);
    *v182 = &type metadata for KMError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v179 - 8) + 104))(v182, enum case for DecodingError.typeMismatch(_:), v179);
    v969 = v180;
    swift_willThrow();
    (*(v741 + 8))(v178, v158);
LABEL_167:
    swift_unknownObjectRelease();
    return sub_100003C90(v968);
  }

  v737 = v170;
  switch(v171)
  {
    case 1:
      LOBYTE(v970) = 1;
      sub_1000BFBA0();
      v359 = v740;
      v360 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v360;
      if (v360)
      {
        goto LABEL_163;
      }

      v361 = v162;
      v174 = v158;
      v362 = v744;
      v176 = v359;
      v363 = KeyedDecodingContainer.decode(_:forKey:)();
      v364 = v741;
      v969 = 0;
      v158 = v363;
      v963 = v639;
      (*(v743 + 8))(v359, v362);
      v640 = *(v364 + 8);
      v162 = (v364 + 8);
      v640(v361, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 1;
      goto LABEL_179;
    case 2:
      LOBYTE(v970) = 2;
      sub_1000BFB4C();
      v335 = v892;
      v336 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v336;
      if (v336)
      {
        goto LABEL_163;
      }

      v174 = v746;
      v337 = KeyedDecodingContainer.decode(_:forKey:)();
      v338 = v741;
      v969 = 0;
      v963 = v628;
      v629 = v337;
      (*(v745 + 8))(v335, v174);
      v630 = *(v338 + 8);
      v176 = v338 + 8;
      v630(v162, v158);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      LODWORD(v158) = v629;
      v557 = v629 & 0xFFFFFFFF00000000;
      v558 = 2;
      goto LABEL_179;
    case 3:
      LOBYTE(v970) = 3;
      sub_1000BFAF8();
      v169 = v895;
      v349 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v349;
      if (v349)
      {
        goto LABEL_163;
      }

      v350 = v162;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      LOBYTE(v978) = 0;
      sub_10001945C(&qword_1001345F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v351 = v752;
      v352 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v353 = v741;
      v969 = v352;
      if (v352)
      {
        (*(v749 + 8))(v169, v351);
        v548 = *(v353 + 8);
        v549 = v350;
        goto LABEL_165;
      }

      v174 = v158;
      v158 = v970;
      LOBYTE(v978) = 1;
      v636 = KeyedDecodingContainer.decode(_:forKey:)();
      v176 = v749 + 8;
      v162 = (v353 + 8);
      v969 = 0;
      v724 = v723;
      v963 = v636;
      (*(v749 + 8))(v169, v351);
      (*v162)(v350, v174);
      swift_unknownObjectRelease();
      v725 = v724;
      v557 = v158 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v724);
      v967 = v725;
      v966 = v725 & 0xFFFFFF0000000000;
      v558 = 3;
      goto LABEL_179;
    case 4:
      LOBYTE(v970) = 4;
      sub_1000BFAA4();
      v166 = v893;
      v298 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v298;
      if (v298)
      {
        goto LABEL_163;
      }

      v299 = v162;
      v174 = v158;
      v300 = v748;
      v176 = v166;
      v301 = KeyedDecodingContainer.decode(_:forKey:)();
      v302 = v741;
      v969 = 0;
      v158 = v301;
      v963 = v614;
      (*(v747 + 8))(v166, v300);
      v615 = *(v302 + 8);
      v162 = (v302 + 8);
      v615(v299, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 4;
      goto LABEL_179;
    case 5:
      LOBYTE(v970) = 5;
      sub_1000BFA50();
      v166 = v894;
      v392 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v392;
      if (v392)
      {
        goto LABEL_163;
      }

      v393 = v162;
      v174 = v158;
      v394 = v751;
      v176 = v166;
      v395 = KeyedDecodingContainer.decode(_:forKey:)();
      v396 = v741;
      v969 = 0;
      v158 = v395;
      v963 = v649;
      (*(v750 + 8))(v166, v394);
      v650 = *(v396 + 8);
      v162 = (v396 + 8);
      v650(v393, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 5;
      goto LABEL_179;
    case 6:
      LOBYTE(v970) = 6;
      sub_1000BF9FC();
      v169 = v897;
      v417 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v417;
      if (v417)
      {
        goto LABEL_163;
      }

      v418 = v162;
      v174 = v158;
      LOBYTE(v970) = 0;
      v419 = v756;
      v420 = KeyedDecodingContainer.decode(_:forKey:)();
      v421 = v741;
      v969 = 0;
      v158 = v420;
      v660 = v659;
      LOBYTE(v970) = 1;
      v661 = KeyedDecodingContainer.decode(_:forKey:)();
      v176 = v753 + 8;
      v162 = (v421 + 8);
      v969 = 0;
      v963 = v660;
      v726 = *(v753 + 8);
      v727 = v661;
      v965 = v728;
      v726(v169, v419);
      (*v162)(v418, v174);
      swift_unknownObjectRelease();
      v729 = v727;
      v557 = v158 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v727);
      v967 = v729;
      v966 = v729 & 0xFFFFFF0000000000;
      v558 = 6;
      goto LABEL_179;
    case 7:
      LOBYTE(v970) = 7;
      sub_1000BF9A8();
      v166 = v896;
      v354 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v354;
      if (v354)
      {
        goto LABEL_163;
      }

      v355 = v162;
      v174 = v158;
      v356 = v755;
      v176 = v166;
      v357 = KeyedDecodingContainer.decode(_:forKey:)();
      v358 = v741;
      v969 = 0;
      v158 = v357;
      v963 = v637;
      (*(v754 + 8))(v166, v356);
      v638 = *(v358 + 8);
      v162 = (v358 + 8);
      v638(v355, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 7;
      goto LABEL_179;
    case 8:
      LOBYTE(v970) = 8;
      sub_1000BF954();
      v432 = v900;
      v433 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v433;
      if (v433)
      {
        goto LABEL_163;
      }

      v434 = v162;
      v174 = v158;
      LOBYTE(v970) = 0;
      v435 = v759;
      v436 = KeyedDecodingContainer.decode(_:forKey:)();
      v437 = v741;
      v969 = 0;
      LODWORD(v158) = v436;
      LOBYTE(v970) = 1;
      v666 = KeyedDecodingContainer.decode(_:forKey:)();
      v969 = 0;
      v176 = v667;
      v963 = v666;
      (*(v758 + 8))(v432, v435);
      v668 = *(v437 + 8);
      v162 = (v437 + 8);
      v668(v434, v174);
      swift_unknownObjectRelease();
      v557 = 0;
      v166 = HIDWORD(v176);
      v966 = v176 & 0xFFFFFF0000000000;
      v967 = v176;
      v558 = 8;
      goto LABEL_179;
    case 9:
      LOBYTE(v970) = 9;
      sub_1000BF900();
      v323 = v898;
      v324 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v324;
      if (v324)
      {
        goto LABEL_163;
      }

      (*(v757 + 8))(v323, v166);
      (*(v741 + 8))(v162, v158);
      swift_unknownObjectRelease();
      v963 = 0;
      v964 = 0;
      v965 = 0;
      v966 = 0;
      v169 = 0;
      v174 = 0;
      v176 = 0;
      v162 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      LODWORD(v158) = 0;
      v557 = 0;
      v558 = 75;
      goto LABEL_179;
    case 10:
      LOBYTE(v970) = 10;
      sub_1000BF8AC();
      v166 = v165;
      v427 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v427;
      if (v427)
      {
        goto LABEL_163;
      }

      v428 = v162;
      v174 = v158;
      v429 = v761;
      v176 = v166;
      v430 = KeyedDecodingContainer.decode(_:forKey:)();
      v431 = v741;
      v969 = 0;
      v158 = v430;
      v963 = v664;
      (*(v760 + 8))(v166, v429);
      v665 = *(v431 + 8);
      v162 = (v431 + 8);
      v665(v428, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 9;
      goto LABEL_179;
    case 11:
      LOBYTE(v970) = 11;
      sub_1000BF858();
      v166 = v902;
      v288 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v288;
      if (v288)
      {
        goto LABEL_163;
      }

      v289 = v162;
      v174 = v158;
      v290 = v763;
      v176 = v166;
      v291 = KeyedDecodingContainer.decode(_:forKey:)();
      v292 = v741;
      v969 = 0;
      v158 = v291;
      v963 = v610;
      (*(v762 + 8))(v166, v290);
      v611 = *(v292 + 8);
      v162 = (v292 + 8);
      v611(v289, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 10;
      goto LABEL_179;
    case 12:
      LOBYTE(v970) = 12;
      sub_1000BF804();
      v166 = v903;
      v318 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v318;
      if (v318)
      {
        goto LABEL_163;
      }

      v319 = v162;
      v174 = v158;
      v320 = v765;
      v176 = v166;
      v321 = KeyedDecodingContainer.decode(_:forKey:)();
      v322 = v741;
      v969 = 0;
      v158 = v321;
      v963 = v622;
      (*(v764 + 8))(v166, v320);
      v623 = *(v322 + 8);
      v162 = (v322 + 8);
      v623(v319, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 11;
      goto LABEL_179;
    case 13:
      LOBYTE(v970) = 13;
      sub_1000BF7B0();
      v166 = v899;
      v412 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v412;
      if (v412)
      {
        goto LABEL_163;
      }

      v413 = v162;
      v174 = v158;
      v414 = v767;
      v176 = v166;
      v415 = KeyedDecodingContainer.decode(_:forKey:)();
      v416 = v741;
      v969 = 0;
      v158 = v415;
      v963 = v657;
      (*(v766 + 8))(v166, v414);
      v658 = *(v416 + 8);
      v162 = (v416 + 8);
      v658(v413, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 12;
      goto LABEL_179;
    case 14:
      LOBYTE(v970) = 14;
      sub_1000BF708();
      v269 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v269;
      if (v269)
      {
        goto LABEL_163;
      }

      LOBYTE(v978) = 0;
      sub_1000BF75C();
      v270 = v771;
      v271 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v272 = v741;
      v969 = v271;
      if (v271)
      {
        (*(v770 + 8))(v168, v270);
        (*(v272 + 8))(v162, v158);
        goto LABEL_167;
      }

      v966 = v162;
      v967 = v158;
      v600 = v971;
      v158 = v270;
      v601 = v972;
      v602 = v973;
      v964 = v974;
      v960 = v970;
      v961 = v975;
      v174 = v976;
      LOBYTE(v978) = 1;
      v603 = KeyedDecodingContainer.decode(_:forKey:)();
      v969 = 0;
      v176 = v603;
      v162 = v718;
      v963 = v600;
      (*(v770 + 8))(v168, v158);
      (*(v272 + 8))(v966, v967);
      swift_unknownObjectRelease();
      LODWORD(v158) = v960;
      v557 = v960 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v601);
      v965 = v602;
      v966 = v601 & 0xFFFFFF0000000000;
      v967 = v601;
      v558 = 13;
LABEL_180:
      v169 = v961;
      goto LABEL_179;
    case 15:
      LOBYTE(v970) = 15;
      sub_1000BF6B4();
      v339 = v904;
      v340 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v340;
      if (v340)
      {
        goto LABEL_163;
      }

      v169 = v162;
      v174 = v158;
      LOBYTE(v970) = 0;
      v341 = v769;
      v342 = KeyedDecodingContainer.decode(_:forKey:)();
      v343 = v741;
      v969 = 0;
      v158 = v342;
      v632 = v631;
      LOBYTE(v970) = 1;
      v633 = KeyedDecodingContainer.decode(_:forKey:)();
      v176 = v768 + 8;
      v162 = (v343 + 8);
      v969 = 0;
      v719 = v633;
      v963 = v632;
      v720 = *(v768 + 8);
      v965 = v721;
      v720(v339, v341);
      (*v162)(v169, v174);
      swift_unknownObjectRelease();
      v722 = v719;
      v557 = v158 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v722);
      v967 = v722;
      v966 = v722 & 0xFFFFFF0000000000;
      v558 = 14;
      goto LABEL_179;
    case 16:
      LOBYTE(v970) = 16;
      sub_1000BF660();
      v253 = v901;
      v254 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v254;
      if (v254)
      {
        goto LABEL_163;
      }

      v255 = v162;
      v174 = v158;
      LOBYTE(v970) = 0;
      v256 = v777;
      v257 = KeyedDecodingContainer.decode(_:forKey:)();
      v258 = v741;
      v969 = 0;
      v158 = v257;
      v593 = v592;
      LOBYTE(v970) = 1;
      v594 = KeyedDecodingContainer.decode(_:forKey:)();
      v969 = 0;
      v595 = v776;
      v176 = v253;
      v716 = v715;
      v967 = v594;
      v963 = v593;
      LOBYTE(v970) = 2;
      v964 = KeyedDecodingContainer.decode(_:forKey:)();
      v961 = v717;
      v969 = 0;
      (*(v595 + 8))(v176, v256);
      v736 = *(v258 + 8);
      v162 = (v258 + 8);
      v736(v255, v174);
      swift_unknownObjectRelease();
      v557 = v158 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v967);
      v965 = v716;
      v966 = v967 & 0xFFFFFF0000000000;
      v558 = 15;
      goto LABEL_180;
    case 17:
      LOBYTE(v970) = 17;
      sub_1000BF60C();
      v166 = v905;
      v372 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v372;
      if (v372)
      {
        goto LABEL_163;
      }

      v373 = v162;
      v174 = v158;
      v374 = v773;
      v176 = v166;
      v375 = KeyedDecodingContainer.decode(_:forKey:)();
      v376 = v741;
      v969 = 0;
      v158 = v375;
      v963 = v641;
      (*(v772 + 8))(v166, v374);
      v642 = *(v376 + 8);
      v162 = (v376 + 8);
      v642(v373, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 16;
      goto LABEL_179;
    case 18:
      LOBYTE(v970) = 18;
      sub_1000BF5B8();
      v166 = v906;
      v422 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v422;
      if (v422)
      {
        goto LABEL_163;
      }

      v423 = v162;
      v174 = v158;
      v424 = v775;
      v176 = v166;
      v425 = KeyedDecodingContainer.decode(_:forKey:)();
      v426 = v741;
      v969 = 0;
      v158 = v425;
      v963 = v662;
      (*(v774 + 8))(v166, v424);
      v663 = *(v426 + 8);
      v162 = (v426 + 8);
      v663(v423, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 17;
      goto LABEL_179;
    case 19:
      LOBYTE(v970) = 19;
      sub_1000BF564();
      v169 = v909;
      v463 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v463;
      if (v463)
      {
        goto LABEL_163;
      }

      v464 = v158;
      LOBYTE(v970) = 0;
      v245 = v783;
      v465 = KeyedDecodingContainer.decode(_:forKey:)();
      v247 = v741;
      v969 = 0;
      v158 = v465;
      v679 = v466;
      v166 = v162;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      LOBYTE(v978) = 1;
      sub_10001945C(&qword_1001345F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v176 = v169;
      v680 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v969 = v680;
      v589 = v782;
      if (v680)
      {
        goto LABEL_175;
      }

      v963 = v679;
      v162 = (v782 + 8);
      (*(v782 + 8))(v169, v245);
      v730 = *(v247 + 8);
      v174 = (v247 + 8);
      v730(v166, v464);
      swift_unknownObjectRelease();
      v557 = v158 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v970);
      v967 = v970;
      v966 = v970 & 0xFFFFFF0000000000;
      v558 = 18;
      goto LABEL_179;
    case 20:
      LOBYTE(v970) = 20;
      sub_1000BF510();
      v166 = v907;
      v382 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v382;
      if (v382)
      {
        goto LABEL_163;
      }

      v383 = v162;
      v174 = v158;
      v384 = v779;
      v176 = v166;
      v385 = KeyedDecodingContainer.decode(_:forKey:)();
      v386 = v741;
      v969 = 0;
      v158 = v385;
      v963 = v645;
      (*(v778 + 8))(v166, v384);
      v646 = *(v386 + 8);
      v162 = (v386 + 8);
      v646(v383, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 19;
      goto LABEL_179;
    case 21:
      LOBYTE(v970) = 21;
      sub_1000BF4BC();
      v166 = v908;
      v407 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v407;
      if (v407)
      {
        goto LABEL_163;
      }

      v408 = v162;
      v174 = v158;
      v409 = v781;
      v176 = v166;
      v410 = KeyedDecodingContainer.decode(_:forKey:)();
      v411 = v741;
      v969 = 0;
      v158 = v410;
      v963 = v655;
      (*(v780 + 8))(v166, v409);
      v656 = *(v411 + 8);
      v162 = (v411 + 8);
      v656(v408, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 20;
      goto LABEL_179;
    case 22:
      LOBYTE(v970) = 22;
      sub_1000BF468();
      v166 = v910;
      v453 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v453;
      if (v453)
      {
        goto LABEL_163;
      }

      v454 = v162;
      v174 = v158;
      v455 = v785;
      v176 = v166;
      v456 = KeyedDecodingContainer.decode(_:forKey:)();
      v457 = v741;
      v969 = 0;
      v158 = v456;
      v963 = v675;
      (*(v784 + 8))(v166, v455);
      v676 = *(v457 + 8);
      v162 = (v457 + 8);
      v676(v454, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 21;
      goto LABEL_179;
    case 23:
      LOBYTE(v970) = 23;
      sub_1000BF414();
      v166 = v911;
      v482 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v482;
      if (v482)
      {
        goto LABEL_163;
      }

      v483 = v162;
      v174 = v158;
      v484 = v787;
      v176 = v166;
      v485 = KeyedDecodingContainer.decode(_:forKey:)();
      v486 = v741;
      v969 = 0;
      v158 = v485;
      v963 = v687;
      (*(v786 + 8))(v166, v484);
      v688 = *(v486 + 8);
      v162 = (v486 + 8);
      v688(v483, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 22;
      goto LABEL_179;
    case 24:
      LOBYTE(v970) = 24;
      sub_1000BF3C0();
      v166 = v912;
      v330 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v330;
      if (v330)
      {
        goto LABEL_163;
      }

      v331 = v162;
      v174 = v158;
      v332 = v789;
      v176 = v166;
      v333 = KeyedDecodingContainer.decode(_:forKey:)();
      v334 = v741;
      v969 = 0;
      v158 = v333;
      v963 = v626;
      (*(v788 + 8))(v166, v332);
      v627 = *(v334 + 8);
      v162 = (v334 + 8);
      v627(v331, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 23;
      goto LABEL_179;
    case 25:
      LOBYTE(v970) = 25;
      sub_1000BF36C();
      v166 = v913;
      v325 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v325;
      if (v325)
      {
        goto LABEL_163;
      }

      v326 = v162;
      v174 = v158;
      v327 = v791;
      v176 = v166;
      v328 = KeyedDecodingContainer.decode(_:forKey:)();
      v329 = v741;
      v969 = 0;
      v158 = v328;
      v963 = v624;
      (*(v790 + 8))(v166, v327);
      v625 = *(v329 + 8);
      v162 = (v329 + 8);
      v625(v326, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 24;
      goto LABEL_179;
    case 26:
      LOBYTE(v970) = 26;
      sub_1000BF318();
      v166 = v914;
      v502 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v502;
      if (v502)
      {
        goto LABEL_163;
      }

      v503 = v162;
      v174 = v158;
      v504 = v793;
      v176 = v166;
      v505 = KeyedDecodingContainer.decode(_:forKey:)();
      v506 = v741;
      v969 = 0;
      v158 = v505;
      v963 = v695;
      (*(v792 + 8))(v166, v504);
      v696 = *(v506 + 8);
      v162 = (v506 + 8);
      v696(v503, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 25;
      goto LABEL_179;
    case 27:
      LOBYTE(v970) = 27;
      sub_1000BF2C4();
      v169 = v917;
      v244 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v244;
      if (v244)
      {
        goto LABEL_163;
      }

      v166 = v162;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      LOBYTE(v978) = 0;
      sub_10001945C(&qword_1001345F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v245 = v799;
      v246 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v247 = v741;
      v969 = v246;
      if (v246)
      {
        (*(v798 + 8))(v169, v245);
        (*(v247 + 8))(v162, v158);
        goto LABEL_167;
      }

      v464 = v158;
      v158 = v970;
      sub_100003CDC(&qword_100136960, &qword_1000FAC40);
      v977 = 1;
      sub_1000730EC();
      v176 = v169;
      v588 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v969 = v588;
      v589 = v798;
      if (v588)
      {
LABEL_175:

        (*(v589 + 8))(v169, v245);
        (*(v247 + 8))(v166, v464);
        goto LABEL_167;
      }

      v162 = (v798 + 8);
      (*(v798 + 8))(v169, v245);
      v714 = *(v247 + 8);
      v174 = (v247 + 8);
      v714(v166, v464);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v963 = v978;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 26;
      goto LABEL_179;
    case 28:
      LOBYTE(v970) = 28;
      sub_1000BF270();
      v166 = v915;
      v487 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v487;
      if (v487)
      {
        goto LABEL_163;
      }

      v488 = v162;
      v174 = v158;
      v489 = v795;
      v176 = v166;
      v490 = KeyedDecodingContainer.decode(_:forKey:)();
      v491 = v741;
      v969 = 0;
      v158 = v490;
      v963 = v689;
      (*(v794 + 8))(v166, v489);
      v690 = *(v491 + 8);
      v162 = (v491 + 8);
      v690(v488, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 27;
      goto LABEL_179;
    case 29:
      LOBYTE(v970) = 29;
      sub_1000BF21C();
      v166 = v916;
      v492 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v492;
      if (v492)
      {
        goto LABEL_163;
      }

      v493 = v162;
      v174 = v158;
      v494 = v797;
      v176 = v166;
      v495 = KeyedDecodingContainer.decode(_:forKey:)();
      v496 = v741;
      v969 = 0;
      v158 = v495;
      v963 = v691;
      (*(v796 + 8))(v166, v494);
      v692 = *(v496 + 8);
      v162 = (v496 + 8);
      v692(v493, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 28;
      goto LABEL_179;
    case 30:
      LOBYTE(v970) = 30;
      sub_1000BF1C8();
      v166 = v918;
      v438 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v438;
      if (v438)
      {
        goto LABEL_163;
      }

      v439 = v162;
      v174 = v158;
      v440 = v801;
      v176 = v166;
      v441 = KeyedDecodingContainer.decode(_:forKey:)();
      v442 = v741;
      v969 = 0;
      v158 = v441;
      v963 = v669;
      (*(v800 + 8))(v166, v440);
      v670 = *(v442 + 8);
      v162 = (v442 + 8);
      v670(v439, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 29;
      goto LABEL_179;
    case 31:
      LOBYTE(v970) = 31;
      sub_1000BF174();
      v365 = v919;
      v366 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v366;
      if (v366)
      {
        goto LABEL_163;
      }

      v174 = v162;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100137C10, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
      v367 = v803;
      v176 = v365;
      v368 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v369 = v741;
      v969 = v368;
      v370 = &v834;
      if (v368)
      {
        goto LABEL_153;
      }

      (*(v802 + 8))(v365, v367);
      v371 = *(v369 + 8);
      v162 = (v369 + 8);
      v371(v174, v158);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      LODWORD(v158) = v970;
      v557 = v970 & 0xFFFFFFFF00000000;
      v558 = 30;
      goto LABEL_179;
    case 32:
      LOBYTE(v970) = 32;
      sub_1000BF120();
      v166 = v920;
      v443 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v443;
      if (v443)
      {
        goto LABEL_163;
      }

      v444 = v162;
      v174 = v158;
      v445 = v805;
      v176 = v166;
      v446 = KeyedDecodingContainer.decode(_:forKey:)();
      v447 = v741;
      v969 = 0;
      v158 = v446;
      v963 = v671;
      (*(v804 + 8))(v166, v445);
      v672 = *(v447 + 8);
      v162 = (v447 + 8);
      v672(v444, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 31;
      goto LABEL_179;
    case 33:
      LOBYTE(v970) = 33;
      sub_1000BF0CC();
      v166 = v921;
      v273 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v273;
      if (v273)
      {
        goto LABEL_163;
      }

      v274 = v162;
      v174 = v158;
      v275 = v807;
      v176 = v166;
      v276 = KeyedDecodingContainer.decode(_:forKey:)();
      v277 = v741;
      v969 = 0;
      v158 = v276;
      v963 = v604;
      (*(v806 + 8))(v166, v275);
      v605 = *(v277 + 8);
      v162 = (v277 + 8);
      v605(v274, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 32;
      goto LABEL_179;
    case 34:
      LOBYTE(v970) = 34;
      sub_1000BF078();
      v166 = v922;
      v248 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v248;
      if (v248)
      {
        goto LABEL_163;
      }

      v249 = v162;
      v174 = v158;
      v250 = v809;
      v176 = v166;
      v251 = KeyedDecodingContainer.decode(_:forKey:)();
      v252 = v741;
      v969 = 0;
      v158 = v251;
      v963 = v590;
      (*(v808 + 8))(v166, v250);
      v591 = *(v252 + 8);
      v162 = (v252 + 8);
      v591(v249, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 33;
      goto LABEL_179;
    case 35:
      LOBYTE(v970) = 35;
      sub_1000BF024();
      v166 = v923;
      v229 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v229;
      if (v229)
      {
        goto LABEL_163;
      }

      v230 = v162;
      v174 = v158;
      v231 = v811;
      v176 = v166;
      v232 = KeyedDecodingContainer.decode(_:forKey:)();
      v233 = v741;
      v969 = 0;
      v158 = v232;
      v963 = v583;
      (*(v810 + 8))(v166, v231);
      v584 = *(v233 + 8);
      v162 = (v233 + 8);
      v584(v230, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 34;
      goto LABEL_179;
    case 36:
      LOBYTE(v970) = 36;
      sub_1000BEFD0();
      v166 = v924;
      v234 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v234;
      if (v234)
      {
        goto LABEL_163;
      }

      v235 = v162;
      v174 = v158;
      v236 = v813;
      v176 = v166;
      v237 = KeyedDecodingContainer.decode(_:forKey:)();
      v238 = v741;
      v969 = 0;
      LODWORD(v158) = v237;
      (*(v812 + 8))(v166, v236);
      v585 = *(v238 + 8);
      v162 = (v238 + 8);
      v585(v235, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = 0;
      v558 = 35;
      goto LABEL_179;
    case 37:
      LOBYTE(v970) = 37;
      sub_1000BEF7C();
      v166 = v925;
      v208 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v208;
      if (v208)
      {
        goto LABEL_163;
      }

      v209 = v162;
      v174 = v158;
      v210 = v815;
      v176 = v166;
      v211 = KeyedDecodingContainer.decode(_:forKey:)();
      v212 = v741;
      v969 = 0;
      v158 = v211;
      v963 = v572;
      (*(v814 + 8))(v166, v210);
      v573 = *(v212 + 8);
      v162 = (v212 + 8);
      v573(v209, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 36;
      goto LABEL_179;
    case 38:
      LOBYTE(v970) = 38;
      sub_1000BEF28();
      v166 = v926;
      v497 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v497;
      if (v497)
      {
        goto LABEL_163;
      }

      v498 = v162;
      v174 = v158;
      v499 = v817;
      v176 = v166;
      v500 = KeyedDecodingContainer.decode(_:forKey:)();
      v501 = v741;
      v969 = 0;
      v158 = v500;
      v963 = v693;
      (*(v816 + 8))(v166, v499);
      v694 = *(v501 + 8);
      v162 = (v501 + 8);
      v694(v498, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 37;
      goto LABEL_179;
    case 39:
      LOBYTE(v970) = 39;
      sub_1000BEED4();
      v166 = v927;
      v458 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v458;
      if (v458)
      {
        goto LABEL_163;
      }

      v459 = v162;
      v174 = v158;
      v460 = v819;
      v176 = v166;
      v461 = KeyedDecodingContainer.decode(_:forKey:)();
      v462 = v741;
      v969 = 0;
      v158 = v461;
      v963 = v677;
      (*(v818 + 8))(v166, v460);
      v678 = *(v462 + 8);
      v162 = (v462 + 8);
      v678(v459, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 38;
      goto LABEL_179;
    case 40:
      LOBYTE(v970) = 40;
      sub_1000BEE80();
      v166 = v928;
      v303 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v303;
      if (v303)
      {
        goto LABEL_163;
      }

      v304 = v162;
      v174 = v158;
      v305 = v821;
      v176 = v166;
      v306 = KeyedDecodingContainer.decode(_:forKey:)();
      v307 = v741;
      v969 = 0;
      v158 = v306;
      v963 = v616;
      (*(v820 + 8))(v166, v305);
      v617 = *(v307 + 8);
      v162 = (v307 + 8);
      v617(v304, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 39;
      goto LABEL_179;
    case 41:
      LOBYTE(v970) = 41;
      sub_1000BEE2C();
      v166 = v929;
      v377 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v377;
      if (v377)
      {
        goto LABEL_163;
      }

      v378 = v162;
      v174 = v158;
      v379 = v823;
      v176 = v166;
      v380 = KeyedDecodingContainer.decode(_:forKey:)();
      v381 = v741;
      v969 = 0;
      v158 = v380;
      v963 = v643;
      (*(v822 + 8))(v166, v379);
      v644 = *(v381 + 8);
      v162 = (v381 + 8);
      v644(v378, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 40;
      goto LABEL_179;
    case 42:
      LOBYTE(v970) = 42;
      sub_1000BEDD8();
      v166 = v930;
      v472 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v472;
      if (v472)
      {
        goto LABEL_163;
      }

      v473 = v162;
      v174 = v158;
      v474 = v825;
      v176 = v166;
      v475 = KeyedDecodingContainer.decode(_:forKey:)();
      v476 = v741;
      v969 = 0;
      v158 = v475;
      v963 = v683;
      (*(v824 + 8))(v166, v474);
      v684 = *(v476 + 8);
      v162 = (v476 + 8);
      v684(v473, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 41;
      goto LABEL_179;
    case 43:
      LOBYTE(v970) = 43;
      sub_1000BED84();
      v169 = v932;
      v193 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v193;
      if (v193)
      {
        goto LABEL_163;
      }

      v194 = v162;
      v174 = v158;
      LOBYTE(v970) = 0;
      v195 = v829;
      v196 = KeyedDecodingContainer.decode(_:forKey:)();
      v197 = v741;
      v969 = 0;
      v158 = v196;
      v562 = v561;
      LOBYTE(v970) = 1;
      v563 = KeyedDecodingContainer.decode(_:forKey:)();
      v176 = v826 + 8;
      v162 = (v197 + 8);
      v969 = 0;
      v963 = v562;
      v564 = *(v826 + 8);
      v565 = v563;
      v965 = v566;
      v564(v169, v195);
      (*v162)(v194, v174);
      swift_unknownObjectRelease();
      v567 = v565;
      v557 = v158 & 0xFFFFFFFF00000000;
      v166 = HIDWORD(v565);
      v967 = v567;
      v966 = v567 & 0xFFFFFF0000000000;
      v558 = 42;
      goto LABEL_179;
    case 44:
      LOBYTE(v970) = 44;
      sub_1000BED30();
      v166 = v931;
      v264 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v264;
      if (v264)
      {
        goto LABEL_163;
      }

      v265 = v162;
      v174 = v158;
      v266 = v828;
      v176 = v166;
      v267 = KeyedDecodingContainer.decode(_:forKey:)();
      v268 = v741;
      v969 = 0;
      v158 = v267;
      v963 = v598;
      (*(v827 + 8))(v166, v266);
      v599 = *(v268 + 8);
      v162 = (v268 + 8);
      v599(v265, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 43;
      goto LABEL_179;
    case 45:
      LOBYTE(v970) = 45;
      sub_1000BECDC();
      v166 = v933;
      v448 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v448;
      if (v448)
      {
        goto LABEL_163;
      }

      v449 = v162;
      v174 = v158;
      v450 = v831;
      v176 = v166;
      v451 = KeyedDecodingContainer.decode(_:forKey:)();
      v452 = v741;
      v969 = 0;
      v158 = v451;
      v963 = v673;
      (*(v830 + 8))(v166, v450);
      v674 = *(v452 + 8);
      v162 = (v452 + 8);
      v674(v449, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 44;
      goto LABEL_179;
    case 46:
      LOBYTE(v970) = 46;
      sub_1000BEC88();
      v524 = v935;
      v525 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v525;
      if (v525)
      {
        goto LABEL_163;
      }

      v526 = v162;
      v174 = v158;
      LOBYTE(v970) = 0;
      v527 = v835;
      v528 = KeyedDecodingContainer.decode(_:forKey:)();
      v529 = v741;
      v969 = 0;
      v158 = v528;
      v166 = v704;
      LOBYTE(v970) = 1;
      v705 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v969 = 0;
      v963 = v166;
      v731 = *(v834 + 8);
      v169 = (v834 + 8);
      v176 = v705;
      v967 = v705;
      v731(v524, v527);
      v732 = *(v529 + 8);
      v162 = (v529 + 8);
      v732(v526, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      LOBYTE(v978) = BYTE4(v176) & 1;
      v557 = v158 & 0xFFFFFFFF00000000;
      LOBYTE(v166) = BYTE4(v176) & 1;
      v558 = 45;
      goto LABEL_179;
    case 47:
      LOBYTE(v970) = 47;
      sub_1000BEC34();
      v166 = v934;
      v218 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v218;
      if (v218)
      {
        goto LABEL_163;
      }

      v219 = v162;
      v174 = v158;
      v220 = v833;
      v176 = v166;
      v221 = KeyedDecodingContainer.decode(_:forKey:)();
      v222 = v741;
      v969 = 0;
      v158 = v221;
      v963 = v576;
      (*(v832 + 8))(v166, v220);
      v577 = *(v222 + 8);
      v162 = (v222 + 8);
      v577(v219, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 46;
      goto LABEL_179;
    case 48:
      LOBYTE(v970) = 48;
      sub_1000BEBE0();
      v166 = v936;
      v278 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v278;
      if (v278)
      {
        goto LABEL_163;
      }

      v279 = v162;
      v174 = v158;
      v280 = v837;
      v176 = v166;
      v281 = KeyedDecodingContainer.decode(_:forKey:)();
      v282 = v741;
      v969 = 0;
      v158 = v281;
      v963 = v606;
      (*(v836 + 8))(v166, v280);
      v607 = *(v282 + 8);
      v162 = (v282 + 8);
      v607(v279, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 47;
      goto LABEL_179;
    case 49:
      LOBYTE(v970) = 49;
      sub_1000BEB8C();
      v166 = v937;
      v293 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v293;
      if (v293)
      {
        goto LABEL_163;
      }

      v294 = v162;
      v174 = v158;
      v295 = v839;
      v176 = v166;
      v296 = KeyedDecodingContainer.decode(_:forKey:)();
      v297 = v741;
      v969 = 0;
      v158 = v296;
      v963 = v612;
      (*(v838 + 8))(v166, v295);
      v613 = *(v297 + 8);
      v162 = (v297 + 8);
      v613(v294, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 48;
      goto LABEL_179;
    case 50:
      LOBYTE(v970) = 50;
      sub_1000BEB38();
      v166 = v938;
      v188 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v188;
      if (v188)
      {
        goto LABEL_163;
      }

      v189 = v162;
      v174 = v158;
      v190 = v841;
      v176 = v166;
      v191 = KeyedDecodingContainer.decode(_:forKey:)();
      v192 = v741;
      v969 = 0;
      v158 = v191;
      v963 = v559;
      (*(v840 + 8))(v166, v190);
      v560 = *(v192 + 8);
      v162 = (v192 + 8);
      v560(v189, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 49;
      goto LABEL_179;
    case 51:
      LOBYTE(v970) = 51;
      sub_1000BEAE4();
      v166 = v939;
      v539 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v539;
      if (v539)
      {
        goto LABEL_163;
      }

      v540 = v162;
      v174 = v158;
      v541 = v843;
      v176 = v166;
      v542 = KeyedDecodingContainer.decode(_:forKey:)();
      v543 = v741;
      v969 = 0;
      v158 = v542;
      v963 = v710;
      (*(v842 + 8))(v166, v541);
      v711 = *(v543 + 8);
      v162 = (v543 + 8);
      v711(v540, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 50;
      goto LABEL_179;
    case 52:
      LOBYTE(v970) = 52;
      sub_1000BEA90();
      v365 = v940;
      v522 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v522;
      if (v522)
      {
        goto LABEL_163;
      }

      v174 = v162;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100137C10, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
      v367 = v845;
      v176 = v365;
      v523 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v369 = v741;
      v969 = v523;
      v370 = &v876;
      if (!v523)
      {
        (*(v844 + 8))(v365, v367);
        v703 = *(v369 + 8);
        v162 = (v369 + 8);
        v703(v174, v158);
        swift_unknownObjectRelease();
        v966 = 0;
        v967 = 0;
        LOBYTE(v166) = 0;
        LODWORD(v158) = v970;
        v557 = v970 & 0xFFFFFFFF00000000;
        v558 = 51;
        goto LABEL_179;
      }

LABEL_153:
      (*(*(v370 - 32) + 8))(v365, v367);
      v548 = *(v369 + 8);
      v549 = v174;
LABEL_165:
      v548(v549, v158);
      goto LABEL_167;
    case 53:
      LOBYTE(v970) = 53;
      sub_1000BEA3C();
      v166 = v941;
      v213 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v213;
      if (v213)
      {
        goto LABEL_163;
      }

      v214 = v162;
      v174 = v158;
      v215 = v847;
      v176 = v166;
      v216 = KeyedDecodingContainer.decode(_:forKey:)();
      v217 = v741;
      v969 = 0;
      v158 = v216;
      v963 = v574;
      (*(v846 + 8))(v166, v215);
      v575 = *(v217 + 8);
      v162 = (v217 + 8);
      v575(v214, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 52;
      goto LABEL_179;
    case 54:
      LOBYTE(v970) = 54;
      sub_1000BE9E8();
      v166 = v942;
      v507 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v507;
      if (v507)
      {
        goto LABEL_163;
      }

      v508 = v162;
      v174 = v158;
      v509 = v849;
      v176 = v166;
      v510 = KeyedDecodingContainer.decode(_:forKey:)();
      v511 = v741;
      v969 = 0;
      v158 = v510;
      v963 = v697;
      (*(v848 + 8))(v166, v509);
      v698 = *(v511 + 8);
      v162 = (v511 + 8);
      v698(v508, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 53;
      goto LABEL_179;
    case 55:
      LOBYTE(v970) = 55;
      sub_1000BE994();
      v166 = v943;
      v517 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v517;
      if (v517)
      {
        goto LABEL_163;
      }

      v518 = v162;
      v174 = v158;
      v519 = v851;
      v176 = v166;
      v520 = KeyedDecodingContainer.decode(_:forKey:)();
      v521 = v741;
      v969 = 0;
      v158 = v520;
      v963 = v701;
      (*(v850 + 8))(v166, v519);
      v702 = *(v521 + 8);
      v162 = (v521 + 8);
      v702(v518, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 54;
      goto LABEL_179;
    case 56:
      LOBYTE(v970) = 56;
      sub_1000BE940();
      v166 = v944;
      v223 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v223;
      if (v223)
      {
        goto LABEL_163;
      }

      v224 = v162;
      v174 = v158;
      v225 = v853;
      v176 = v166;
      v226 = KeyedDecodingContainer.decode(_:forKey:)();
      v227 = v741;
      v969 = 0;
      v158 = v226;
      v963 = v578;
      (*(v852 + 8))(v166, v225);
      v579 = *(v227 + 8);
      v162 = (v227 + 8);
      v579(v224, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 55;
      goto LABEL_179;
    case 57:
      LOBYTE(v970) = 57;
      sub_1000BE8EC();
      v166 = v945;
      v467 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v467;
      if (v467)
      {
        goto LABEL_163;
      }

      v468 = v162;
      v174 = v158;
      v469 = v855;
      v176 = v166;
      v470 = KeyedDecodingContainer.decode(_:forKey:)();
      v471 = v741;
      v969 = 0;
      v158 = v470;
      v963 = v681;
      (*(v854 + 8))(v166, v469);
      v682 = *(v471 + 8);
      v162 = (v471 + 8);
      v682(v468, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 56;
      goto LABEL_179;
    case 58:
      LOBYTE(v970) = 58;
      sub_1000BE898();
      v166 = v946;
      v283 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v283;
      if (v283)
      {
        goto LABEL_163;
      }

      v284 = v162;
      v174 = v158;
      v285 = v857;
      v176 = v166;
      v286 = KeyedDecodingContainer.decode(_:forKey:)();
      v287 = v741;
      v969 = 0;
      v158 = v286;
      v963 = v608;
      (*(v856 + 8))(v166, v285);
      v609 = *(v287 + 8);
      v162 = (v287 + 8);
      v609(v284, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 57;
      goto LABEL_179;
    case 59:
      LOBYTE(v970) = 59;
      sub_1000BE844();
      v166 = v947;
      v477 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v477;
      if (v477)
      {
        goto LABEL_163;
      }

      v478 = v162;
      v174 = v158;
      v479 = v859;
      v176 = v166;
      v480 = KeyedDecodingContainer.decode(_:forKey:)();
      v481 = v741;
      v969 = 0;
      v158 = v480;
      v963 = v685;
      (*(v858 + 8))(v166, v479);
      v686 = *(v481 + 8);
      v162 = (v481 + 8);
      v686(v478, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 58;
      goto LABEL_179;
    case 60:
      LOBYTE(v970) = 60;
      sub_1000BE7F0();
      v166 = v948;
      v308 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v308;
      if (v308)
      {
        goto LABEL_163;
      }

      v309 = v162;
      v174 = v158;
      v310 = v861;
      v176 = v166;
      v311 = KeyedDecodingContainer.decode(_:forKey:)();
      v312 = v741;
      v969 = 0;
      v158 = v311;
      v963 = v618;
      (*(v860 + 8))(v166, v310);
      v619 = *(v312 + 8);
      v162 = (v312 + 8);
      v619(v309, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 59;
      goto LABEL_179;
    case 61:
      LOBYTE(v970) = 61;
      sub_1000BE79C();
      v166 = v949;
      v387 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v387;
      if (v387)
      {
        goto LABEL_163;
      }

      v388 = v162;
      v174 = v158;
      v389 = v863;
      v176 = v166;
      v390 = KeyedDecodingContainer.decode(_:forKey:)();
      v391 = v741;
      v969 = 0;
      v158 = v390;
      v963 = v647;
      (*(v862 + 8))(v166, v389);
      v648 = *(v391 + 8);
      v162 = (v391 + 8);
      v648(v388, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 60;
      goto LABEL_179;
    case 62:
      LOBYTE(v970) = 62;
      sub_1000BE748();
      v166 = v950;
      v402 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v402;
      if (v402)
      {
        goto LABEL_163;
      }

      v403 = v162;
      v174 = v158;
      v404 = v865;
      v176 = v166;
      v405 = KeyedDecodingContainer.decode(_:forKey:)();
      v406 = v741;
      v969 = 0;
      v158 = v405;
      v963 = v653;
      (*(v864 + 8))(v166, v404);
      v654 = *(v406 + 8);
      v162 = (v406 + 8);
      v654(v403, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 61;
      goto LABEL_179;
    case 63:
      LOBYTE(v970) = 63;
      sub_1000BE6F4();
      v166 = v951;
      v344 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v344;
      if (v344)
      {
        goto LABEL_163;
      }

      v345 = v162;
      v174 = v158;
      v346 = v867;
      v176 = v166;
      v347 = KeyedDecodingContainer.decode(_:forKey:)();
      v348 = v741;
      v969 = 0;
      v158 = v347;
      v963 = v634;
      (*(v866 + 8))(v166, v346);
      v635 = *(v348 + 8);
      v162 = (v348 + 8);
      v635(v345, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 62;
      goto LABEL_179;
    case 64:
      LOBYTE(v970) = 64;
      sub_1000BE6A0();
      v166 = v952;
      v313 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v313;
      if (v313)
      {
        goto LABEL_163;
      }

      v314 = v162;
      v174 = v158;
      v315 = v869;
      v176 = v166;
      v316 = KeyedDecodingContainer.decode(_:forKey:)();
      v317 = v741;
      v969 = 0;
      v158 = v316;
      v963 = v620;
      (*(v868 + 8))(v166, v315);
      v621 = *(v317 + 8);
      v162 = (v317 + 8);
      v621(v314, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 63;
      goto LABEL_179;
    case 65:
      LOBYTE(v970) = 65;
      sub_1000BE64C();
      v166 = v953;
      v397 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v397;
      if (v397)
      {
        goto LABEL_163;
      }

      v398 = v162;
      v174 = v158;
      v399 = v871;
      v176 = v166;
      v400 = KeyedDecodingContainer.decode(_:forKey:)();
      v401 = v741;
      v969 = 0;
      v158 = v400;
      v963 = v651;
      (*(v870 + 8))(v166, v399);
      v652 = *(v401 + 8);
      v162 = (v401 + 8);
      v652(v398, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 64;
      goto LABEL_179;
    case 66:
      LOBYTE(v970) = 66;
      sub_1000BE5F8();
      v166 = v954;
      v198 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v198;
      if (v198)
      {
        goto LABEL_163;
      }

      v199 = v162;
      v174 = v158;
      v200 = v873;
      v176 = v166;
      v201 = KeyedDecodingContainer.decode(_:forKey:)();
      v202 = v741;
      v969 = 0;
      v158 = v201;
      v963 = v568;
      (*(v872 + 8))(v166, v200);
      v569 = *(v202 + 8);
      v162 = (v202 + 8);
      v569(v199, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 65;
      goto LABEL_179;
    case 67:
      LOBYTE(v970) = 67;
      sub_1000BE5A4();
      v166 = v955;
      v259 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v259;
      if (v259)
      {
        goto LABEL_163;
      }

      v260 = v162;
      v174 = v158;
      v261 = v875;
      v176 = v166;
      v262 = KeyedDecodingContainer.decode(_:forKey:)();
      v263 = v741;
      v969 = 0;
      v158 = v262;
      v963 = v596;
      (*(v874 + 8))(v166, v261);
      v597 = *(v263 + 8);
      v162 = (v263 + 8);
      v597(v260, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 66;
      goto LABEL_179;
    case 68:
      LOBYTE(v970) = 68;
      sub_1000BE550();
      v166 = v956;
      v544 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v544;
      if (v544)
      {
        goto LABEL_163;
      }

      v550 = v162;
      v174 = v158;
      v551 = v877;
      v176 = v166;
      v552 = KeyedDecodingContainer.decode(_:forKey:)();
      v553 = v741;
      v969 = 0;
      v158 = v552;
      v963 = v712;
      (*(v876 + 8))(v166, v551);
      v713 = *(v553 + 8);
      v162 = (v553 + 8);
      v713(v550, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 67;
      goto LABEL_179;
    case 69:
      LOBYTE(v970) = 69;
      sub_1000BE4FC();
      v166 = v957;
      v239 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v239;
      if (v239)
      {
        goto LABEL_163;
      }

      v240 = v162;
      v174 = v158;
      v241 = v879;
      v176 = v166;
      v242 = KeyedDecodingContainer.decode(_:forKey:)();
      v243 = v741;
      v969 = 0;
      v158 = v242;
      v963 = v586;
      (*(v878 + 8))(v166, v241);
      v587 = *(v243 + 8);
      v162 = (v243 + 8);
      v587(v240, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 68;
      goto LABEL_179;
    case 70:
      LOBYTE(v970) = 70;
      sub_1000BE4A8();
      v166 = v958;
      v183 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v183;
      if (v183)
      {
        goto LABEL_163;
      }

      v184 = v162;
      v174 = v158;
      v185 = v881;
      v176 = v166;
      v186 = KeyedDecodingContainer.decode(_:forKey:)();
      v187 = v741;
      v969 = 0;
      v158 = v186;
      v963 = v555;
      (*(v880 + 8))(v166, v185);
      v556 = *(v187 + 8);
      v162 = (v187 + 8);
      v556(v184, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 69;
      goto LABEL_179;
    case 71:
      LOBYTE(v970) = 71;
      sub_1000BE454();
      v166 = v959;
      v203 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v203;
      if (v203)
      {
        goto LABEL_163;
      }

      v204 = v162;
      v174 = v158;
      v205 = v883;
      v176 = v166;
      v206 = KeyedDecodingContainer.decode(_:forKey:)();
      v207 = v741;
      v969 = 0;
      v158 = v206;
      v963 = v570;
      (*(v882 + 8))(v166, v205);
      v571 = *(v207 + 8);
      v162 = (v207 + 8);
      v571(v204, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 70;
      goto LABEL_179;
    case 72:
      LOBYTE(v970) = 72;
      sub_1000BE400();
      v166 = v167;
      v512 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v512;
      if (v512)
      {
        goto LABEL_163;
      }

      v513 = v162;
      v174 = v158;
      v514 = v885;
      v176 = v166;
      v515 = KeyedDecodingContainer.decode(_:forKey:)();
      v516 = v741;
      v969 = 0;
      v158 = v515;
      v963 = v699;
      (*(v884 + 8))(v166, v514);
      v700 = *(v516 + 8);
      v162 = (v516 + 8);
      v700(v513, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 71;
      goto LABEL_179;
    case 73:
      LOBYTE(v970) = 73;
      sub_1000BE3AC();
      v166 = v961;
      v530 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v530;
      if (v530)
      {
        goto LABEL_163;
      }

      v531 = v162;
      v174 = v158;
      v532 = v887;
      v176 = v166;
      v533 = KeyedDecodingContainer.decode(_:forKey:)();
      v534 = v741;
      v969 = 0;
      v158 = v533;
      v963 = v706;
      (*(v886 + 8))(v166, v532);
      v707 = *(v534 + 8);
      v162 = (v534 + 8);
      v707(v531, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 72;
      goto LABEL_179;
    case 74:
      LOBYTE(v970) = 74;
      sub_1000BE358();
      v535 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v535;
      if (v535)
      {
        goto LABEL_163;
      }

      v536 = v162;
      v174 = v158;
      v166 = v890;
      v176 = v169;
      v537 = KeyedDecodingContainer.decode(_:forKey:)();
      v538 = v741;
      v969 = 0;
      v158 = v537;
      v963 = v708;
      (*(v889 + 8))(v169, v166);
      v709 = *(v538 + 8);
      v162 = (v538 + 8);
      v709(v536, v174);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v158 & 0xFFFFFFFF00000000;
      v558 = 73;
      goto LABEL_179;
    case 75:
      LOBYTE(v970) = 75;
      sub_1000BE304();
      v174 = v960;
      v228 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v228)
      {
        (*(v741 + 8))(v162, v158);
        swift_unknownObjectRelease();
        v969 = v228;
        return sub_100003C90(v968);
      }

      v545 = v162;
      v166 = v888;
      v176 = v174;
      v546 = KeyedDecodingContainer.decode(_:forKey:)();
      v547 = v741;
      v969 = 0;
      v580 = v546;
      v963 = v581;
      v169 = (v891 + 8);
      (*(v891 + 8))(v174, v166);
      v582 = *(v547 + 8);
      v162 = (v547 + 8);
      v582(v545, v158);
      swift_unknownObjectRelease();
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      v557 = v580 & 0xFFFFFFFF00000000;
      v558 = 74;
      LODWORD(v158) = v580;
      goto LABEL_179;
    default:
      LOBYTE(v970) = 0;
      sub_1000BFBF4();
      v172 = v739;
      v173 = v969;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v969 = v173;
      if (v173)
      {
LABEL_163:
        (*(v741 + 8))(v162, v158);
        goto LABEL_167;
      }

      v174 = v162;
      v162 = sub_100003CDC(&qword_100137DC0, &qword_1000FAC48);
      sub_1000BFE08(&qword_100137DC8, sub_1000BFC48, &protocol conformance descriptor for <A> [A]);
      v175 = v738;
      v176 = v172;
      v177 = v969;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v969 = v177;
      if (v177)
      {
        (*(v742 + 8))(v172, v175);
        (*(v741 + 8))(v174, v158);
        goto LABEL_167;
      }

      (*(v742 + 8))(v172, v175);
      (*(v741 + 8))(v174, v158);
      swift_unknownObjectRelease();
      v558 = 0;
      v966 = 0;
      v967 = 0;
      LOBYTE(v166) = 0;
      LODWORD(v158) = v970;
      v557 = v970 & 0xFFFFFFFF00000000;
LABEL_179:
      result = sub_100003C90(v968);
      v733 = v962;
      *v962 = v557 | v158;
      v734 = v966 | (v166 << 32) | v967;
      v733[1] = v963;
      v733[2] = v734;
      v735 = v964;
      v733[3] = v965;
      v733[4] = v735;
      v733[5] = v169;
      v733[6] = v174;
      v733[7] = v176;
      v733[8] = v162;
      *(v733 + 72) = v558;
      break;
  }

  return result;
}