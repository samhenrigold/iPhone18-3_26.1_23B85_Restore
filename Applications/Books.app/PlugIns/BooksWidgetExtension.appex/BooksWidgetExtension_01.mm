uint64_t sub_10001E908()
{
  v17 = v0;
  v1 = *(v0 + 224);

  v2 = v1;
  v3 = sub_1000806D8();
  v4 = sub_100081468();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10006150C(v7, v6, &v16);
    *(v8 + 12) = 2080;
    [v5 size];
    v9 = sub_1000814A8();
    v11 = sub_10006150C(v9, v10, &v16);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received raw store audiobook cover for %s of size %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 224);
  *(v0 + 240) = v12;
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  *v13 = v0;
  v13[1] = sub_10001EBA4;
  v14 = *(v0 + 64);

  return sub_10001C890(v12, 0, v14);
}

uint64_t sub_10001EB04()
{
  sub_10001A10C(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001EBA4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_10001ED68;
  }

  else
  {

    v3 = sub_10001ECC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001ECC0()
{
  sub_10001A10C(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001ED68()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_1000806D8();
  v2 = sub_100081468();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  if (v3)
  {
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_10006150C(v6, v5, &v13);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to cache untreated cover for asset: %s, error: %@", v7, 0x16u);
    sub_100005B2C(v8, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v9);
  }

  else
  {
  }

  sub_10001A10C(*(v0 + 136));

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_10001EF88()
{
  result = qword_1000AD568;
  if (!qword_1000AD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD568);
  }

  return result;
}

uint64_t sub_10001EFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACE48, &unk_100086040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F05C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F0D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001F128(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001F17C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F1E0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10001F228()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F2B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for WidgetImageManager.FetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetImageManager.FetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001F428()
{
  result = qword_1000AD5A8;
  if (!qword_1000AD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD5A8);
  }

  return result;
}

__n128 sub_10001F484(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001F4E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001F56C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v100 = sub_100080A58();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100080B68();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100080838();
  v83 = *(v87 - 8);
  __chkstk_darwin(v87);
  v89 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100002840(&qword_1000AD5B8, &qword_100087610);
  v7 = __chkstk_darwin(v76);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v70 - v10;
  v12 = sub_1000803D8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v75 = sub_100002840(&qword_1000AD5C0, &qword_100087618);
  __chkstk_darwin(v75);
  v20 = &v70 - v19;
  v80 = sub_100080848();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100002840(&qword_1000AD5C8, &qword_100087620);
  v81 = *(v85 - 8);
  __chkstk_darwin(v85);
  v79 = &v70 - v22;
  v88 = sub_100002840(&qword_1000AD5D0, &qword_100087628);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = &v70 - v23;
  v91 = sub_100002840(&qword_1000AD5D8, &qword_100087630);
  v24 = __chkstk_darwin(v91);
  v94 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v84 = &v70 - v27;
  v28 = __chkstk_darwin(v26);
  v90 = &v70 - v29;
  __chkstk_darwin(v28);
  v93 = &v70 - v30;
  sub_100080E28();
  *(&v92 + 1) = sub_100080E58();

  *&v92 = swift_getKeyPath();
  sub_100080F48();
  sub_1000807E8();
  sub_100020208(&v107);
  v73 = v109;
  v74 = v108;
  v72 = sub_100005554(&v107, v108);
  sub_100080388();
  sub_100080388();
  sub_100020FBC(&qword_1000AD5E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_100081138();
  if (result)
  {
    v70 = a1;
    v71 = a2;
    v32 = *(v13 + 32);
    v32(v11, v18, v12);
    v33 = v76;
    v32(&v11[*(v76 + 48)], v16, v12);
    sub_1000055FC(v11, v9, &qword_1000AD5B8, &qword_100087610);
    v34 = *(v33 + 48);
    v32(v20, v9, v12);
    v35 = *(v13 + 8);
    v35(&v9[v34], v12);
    sub_100020F4C(v11, v9);
    v32(&v20[*(v75 + 36)], &v9[*(v33 + 48)], v12);
    v35(v9, v12);
    v36 = &enum case for PlaybackButton.State.playing(_:);
    v37 = v70;
    v38 = *(v70 + 16) & 1;
    if (!v38)
    {
      v36 = &enum case for PlaybackButton.State.unplayed(_:);
    }

    v39 = (*(v83 + 104))(v89, *v36, v87);
    v40 = v74;
    __chkstk_darwin(v39);
    (*(v42 + 16))(&v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v72, v40);
    v43 = v77;
    sub_100080828();
    v44 = sub_100020FBC(&qword_1000AD5E8, &type metadata accessor for PlaybackButton, &protocol conformance descriptor for PlaybackButton);
    v45 = v79;
    v46 = v80;
    sub_100080D48();
    (*(v78 + 8))(v43, v46);
    sub_100019DF8(&v107);
    v47 = v95;
    sub_100080B38();
    v102 = v46;
    v103 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v82;
    v50 = v85;
    sub_100080E08();
    (*(v96 + 8))(v47, v97);
    (*(v81 + 8))(v45, v50);
    v51 = v98;
    sub_100080A48();
    v102 = v50;
    v103 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v52 = v84;
    v53 = v88;
    sub_100080E18();
    (*(v99 + 8))(v51, v100);
    (*(v86 + 8))(v49, v53);
    v54 = *(v37 + 24);
    v55 = *(v37 + 32);
    v102 = sub_100021338(v38, v54, v55);
    v103 = v56;
    sub_1000057D0();
    v57 = v90;
    sub_100080878();

    sub_100021738(v52);
    sub_100002840(&qword_1000ACB30, &qword_100085BE0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100085A40;
    *(v58 + 32) = sub_100021004(v38);
    *(v58 + 40) = v59;
    *(v58 + 48) = sub_100021338(v38, v54, v55);
    *(v58 + 56) = v60;
    v61 = v93;
    sub_1000808A8();

    sub_100021738(v57);
    v62 = v94;
    sub_1000217A0(v61, v94);
    v63 = v92;
    v101[0] = v92;
    v64 = *(&v92 + 1);
    v65 = v110;
    v101[1] = v110;
    v101[2] = v111;
    v66 = v112;
    v101[3] = v112;
    v67 = v71;
    v71[2] = v111;
    v67[3] = v66;
    *v67 = v101[0];
    v67[1] = v65;
    v68 = v67;
    v69 = sub_100002840(&qword_1000AD5F0, &qword_100087670);
    sub_1000217A0(v62, v68 + *(v69 + 48));
    sub_1000055FC(v101, &v102, &qword_1000AD5F8, &qword_100087678);
    sub_100021738(v61);
    sub_100021738(v62);
    v102 = v63;
    v103 = v64;
    v104 = v110;
    v105 = v111;
    v106 = v112;
    return sub_100005B2C(&v102, &qword_1000AD5F8, &qword_100087678);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020208@<X0>(uint64_t *a1@<X8>)
{
  v90 = sub_1000801E8();
  v93 = *(v90 - 8);
  __chkstk_darwin(v90);
  v4 = (&v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_100080478();
  v92 = *(v88 - 8);
  v5 = __chkstk_darwin(v88);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = sub_1000811C8();
  v91 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = sub_1000801F8();
  __chkstk_darwin(v16 - 8);
  v89 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002840(&qword_1000AD610, &qword_1000887C0);
  v19 = __chkstk_darwin(v18 - 8);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  if (*(v1 + 16))
  {
    sub_100002840(&qword_1000AD3E0, &qword_100087348);
    sub_10007FAF8();
    v113 = 0u;
    v114 = 0u;
    *&v115 = 0;
    sub_10007FAE8();
    v24 = sub_10007FAB8();
    a1[3] = &type metadata for PauseCurrentAudiobookIntent;
    result = sub_1000219C4();
    a1[4] = result;
    *a1 = v24;
  }

  else
  {
    v77 = a1;
    if (*(v1 + 17) == 1)
    {
      v26 = *v1;
      v111 = *(v1 + 24);
      v112 = v26;
      v74 = v23;
      v75 = v22;
      v27 = &v66 - v21;
      v73 = &v66 - v21;
      v28 = sub_1000803D8();
      (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
      v76 = sub_100002840(&qword_1000AD620, &unk_100087690);
      sub_1000218B8(&v112, &v113);
      sub_1000055FC(&v111, &v113, &qword_1000ACE48, &unk_100086040);
      sub_100081158();
      sub_100080448();
      v87 = *(v91 + 16);
      v84 = v91 + 16;
      v87(v13, v15, v10);
      v83 = *(v92 + 16);
      v81 = v92 + 16;
      v29 = v7;
      v30 = v88;
      v83(v7, v9, v88);
      v79 = type metadata accessor for BundleFinder();
      *v4 = v79;
      v82 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v31 = *(v93 + 104);
      v93 += 104;
      v86 = v31;
      v31(v4);
      sub_100080208();
      v80 = *(v92 + 8);
      v92 += 8;
      v80(v9, v30);
      v85 = *(v91 + 8);
      v91 += 8;
      v78 = v10;
      v85(v15, v10);
      v72 = sub_10007FCB8();
      sub_100081158();
      sub_100080448();
      v66 = v13;
      v87(v13, v15, v10);
      v83(v7, v9, v30);
      v32 = v79;
      *v4 = v79;
      v86(v4, v82, v90);
      v33 = v29;
      sub_100080208();
      v80(v9, v30);
      v34 = v78;
      v85(v15, v78);
      v71 = sub_10007FCB8();
      sub_100081158();
      sub_100080448();
      v35 = v66;
      v87(v66, v15, v34);
      v67 = v33;
      v36 = v88;
      v83(v33, v9, v88);
      *v4 = v32;
      v37 = v35;
      v86(v4, v82, v90);
      sub_100080208();
      v38 = v36;
      v80(v9, v36);
      v39 = v78;
      v85(v15, v78);
      v70 = sub_10007FCB8();
      sub_100081158();
      sub_100080448();
      v87(v37, v15, v39);
      v40 = v67;
      v83(v67, v9, v38);
      *v4 = v79;
      v86(v4, v82, v90);
      v41 = v37;
      sub_100080208();
      v42 = v80;
      v80(v9, v38);
      v43 = v78;
      v85(v15, v78);
      v76 = sub_10007FCB8();
      v69 = sub_100002840(&qword_1000AD628, &qword_1000876A0);
      sub_100081158();
      sub_100080448();
      v87(v41, v15, v43);
      v44 = v40;
      v45 = v40;
      v46 = v9;
      v47 = v9;
      v48 = v88;
      v83(v45, v46, v88);
      *v4 = v79;
      v86(v4, v82, v90);
      sub_100080208();
      v42(v47, v48);
      v49 = v78;
      v85(v15, v78);
      v69 = sub_10007FC98();
      v68 = sub_100002840(&qword_1000AD630, &qword_1000876A8);
      sub_100081158();
      sub_100080448();
      v87(v41, v15, v49);
      v50 = v88;
      v83(v44, v47, v88);
      *v4 = v79;
      v86(v4, v82, v90);
      sub_100080208();
      v80(v47, v50);
      v85(v15, v49);
      sub_100005C98(&qword_1000AD638, &qword_1000AD640, &unk_1000876B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      v93 = sub_10007FC88();
      v94[0] = v112;
      v113 = v111;
      v51 = v72;
      sub_10007FC68();
      v113 = 0uLL;
      v52 = v70;
      sub_10007FC68();
      v113 = 0uLL;
      v53 = v71;
      sub_10007FC68();
      v113 = 0uLL;
      v54 = v76;
      sub_10007FC68();
      v56 = v73;
      v55 = v74;
      sub_1000055FC(v73, v74, &qword_1000AD610, &qword_1000887C0);
      sub_1000055FC(v55, v75, &qword_1000AD610, &qword_1000887C0);
      v57 = v69;
      sub_10007FC68();
      sub_100005B2C(v55, &qword_1000AD610, &qword_1000887C0);
      sub_100005B2C(v56, &qword_1000AD610, &qword_1000887C0);
      v95 = v94[0];
      *&v96 = v51;
      *(&v96 + 1) = v53;
      *&v97 = v52;
      *(&v97 + 1) = v54;
      *&v98 = v57;
      *(&v98 + 1) = v93;
      v99 = 0uLL;
      v100 = 1;
      v101 = v94[0];
      v102 = v51;
      v103 = v53;
      v104 = v52;
      v105 = v54;
      v106 = v57;
      v107 = v93;
      v108 = 0;
      v109 = 0;
      v110 = 1;
      sub_100021914(&v95, &v113);
      sub_100021970(&v101);
      v115 = v97;
      v116 = v98;
      v117 = v99;
      v118 = v100;
      v113 = v95;
      v114 = v96;
      sub_100021914(&v95, v94);
      v58 = sub_100049B48(1, &v113);
      v60 = v59;
      v62 = v61;
      v63 = v77;
      v77[3] = &type metadata for PlayAudiobookIntent;
      v63[4] = sub_100021864();
      result = sub_100021970(&v95);
    }

    else
    {
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v58 = sub_100049B48(0, &v113);
      v60 = v64;
      v62 = v65;
      v63 = v77;
      v77[3] = &type metadata for PlayAudiobookIntent;
      result = sub_100021864();
      v63[4] = result;
    }

    *v63 = v58;
    v63[1] = v60;
    v63[2] = v62;
  }

  return result;
}

uint64_t sub_100020EE0@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  *a2 = sub_100080F48();
  a2[1] = v5;
  v6 = sub_100002840(&qword_1000AD5B0, &qword_100087608);
  return sub_10001F56C(v8, (a2 + *(v6 + 44)));
}

uint64_t sub_100020F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD5B8, &qword_100087610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021004(char a1)
{
  v18[0] = sub_100080478();
  v1 = *(v18[0] - 8);
  v2 = __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v18 - v5;
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15 = v18[0];
  (*(v1 + 16))(v4, v6, v18[0]);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v15);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100021338(char a1, uint64_t a2, uint64_t a3)
{
  v27 = sub_100080478();
  v6 = *(v27 - 8);
  v7 = __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_1000811C8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  if (a3)
  {
    v25 = a2;
    v26 = a3;

    sub_100081158();
    sub_100080448();
    (*(v13 + 16))(v16, v18, v12);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v20 = v27;
    (*(v6 + 16))(v9, v11, v27);
    sub_100081268();
    (*(v6 + 8))(v11, v20);
    (*(v13 + 8))(v18, v12);
    sub_100002840(&qword_1000AD600, &unk_100087680);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100085C00;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100021810();
    v22 = v26;
    *(v21 + 32) = v25;
    *(v21 + 40) = v22;
    v23 = sub_1000811E8();

    return v23;
  }

  else
  {

    return sub_100021004(a1 & 1);
  }
}

uint64_t sub_100021738(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD5D8, &qword_100087630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000217A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD5D8, &qword_100087630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100021810()
{
  result = qword_1000AD608;
  if (!qword_1000AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD608);
  }

  return result;
}

unint64_t sub_100021864()
{
  result = qword_1000AD618;
  if (!qword_1000AD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD618);
  }

  return result;
}

unint64_t sub_1000219C4()
{
  result = qword_1000AD648;
  if (!qword_1000AD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD648);
  }

  return result;
}

unint64_t sub_100021A70()
{
  result = qword_1000AD660;
  if (!qword_1000AD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD660);
  }

  return result;
}

uint64_t sub_100021AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000807B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100080F68();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100021BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000807B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100080F68();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100021D20(uint64_t a1)
{
  result = sub_1000807B8();
  if (v2 <= 0x3F)
  {
    result = sub_100080F68();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100021F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 72) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10002208C(uint64_t a1)
{
  sub_100022118(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SmallEmptyStateView.ViewConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100022118(uint64_t a1)
{
  if (!qword_1000AD788)
  {
    sub_100081008();
    v1 = sub_1000807C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AD788);
    }
  }
}

uint64_t sub_10002218C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000055FC(v2, &v14 - v9, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10002238C@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v2 = sub_100081008();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_100080F68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002218C(v8);
  sub_100080FF8();
  v13 = sub_100080FC8();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  v26 = v9;
  if (v13)
  {
    v15 = v1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
    v16 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
    (*(v10 + 16))(v12, v15 + *(v16 + 20), v9);
  }

  else
  {
    (*(v10 + 104))(v12, enum case for BlendMode.normal(_:), v9);
  }

  sub_10002218C(v8);
  sub_100080FF8();
  v17 = sub_100080FC8();
  v14(v6, v2);
  v14(v8, v2);
  if (v17)
  {
    v18 = v1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
    v19 = *(v18 + *(type metadata accessor for SmallEmptyStateView.ViewConfiguration(0) + 36));
  }

  else
  {
    v19 = sub_100080B08();
  }

  v20 = v26;
  v21 = sub_100080A28();
  v22 = v25;
  *v25 = v21;
  v22[1] = 0;
  *(v22 + 16) = 1;
  v23 = sub_100002840(&qword_1000AD7C0, &qword_1000877C8);
  sub_100022674(v1, v19, v12, v22 + *(v23 + 44));
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_100022674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = sub_100002840(&qword_1000AD7C8, &qword_1000877D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = sub_100080A78();
  v15 = a1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
  v16 = *(v15 + *(type metadata accessor for SmallEmptyStateView.ViewConfiguration(0) + 48));
  *v13 = v14;
  *(v13 + 1) = v16;
  v13[16] = 0;
  v17 = sub_100002840(&qword_1000AD7D0, &qword_1000877D8);
  sub_100022808(a1, v5, a3, &v13[*(v17 + 44)]);
  sub_1000055FC(v13, v11, &qword_1000AD7C8, &qword_1000877D0);
  sub_1000055FC(v11, a4, &qword_1000AD7C8, &qword_1000877D0);
  v18 = a4 + *(sub_100002840(&qword_1000AD7D8, &qword_1000877E0) + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_100005B2C(v13, &qword_1000AD7C8, &qword_1000877D0);
  return sub_100005B2C(v11, &qword_1000AD7C8, &qword_1000877D0);
}

uint64_t sub_100022808@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v47 = a3;
  v48 = a2;
  v52 = a4;
  v50 = sub_100002840(&qword_1000AD7E0, &qword_1000877E8) - 8;
  v5 = __chkstk_darwin(v50);
  v51 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &KeyPath - v7;
  v9 = sub_100002840(&qword_1000AD7E8, &qword_1000877F0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v49 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &KeyPath - v13;
  v15 = a1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
  v16 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
  v45 = *(v15 + v16[6]);
  v17 = *(v15 + v16[10]);
  KeyPath = swift_getKeyPath();
  v18 = *(v15 + v16[11]);
  v19 = &v14[*(v10 + 44)];
  v20 = *(sub_1000808E8() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = sub_100080A38();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *&v19[*(sub_100002840(&qword_1000AD7F0, &qword_10008A850) + 36)] = 256;
  v23 = KeyPath;
  *v14 = v45;
  *(v14 + 4) = 0;
  *(v14 + 2) = v23;
  *(v14 + 3) = v17;
  v24 = v14;

  LOBYTE(v21) = sub_100080BD8();
  sub_100022D9C(v46, &v54);
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v69[1] = v55;
  v69[0] = v54;
  v69[2] = v56;
  v69[3] = v57;
  v69[4] = v58;
  v69[5] = v59;
  v69[6] = v60;
  sub_1000055FC(&v62, &v53, &qword_1000AD7F8, &qword_100087830);
  sub_100005B2C(v69, &qword_1000AD7F8, &qword_100087830);
  *&v61[55] = v65;
  *&v61[71] = v66;
  *&v61[87] = v67;
  *&v61[103] = v68;
  *&v61[23] = v63;
  *&v61[39] = v64;
  *&v61[7] = v62;
  v25 = sub_100080CA8();
  v26 = swift_getKeyPath();
  v27 = *(sub_100002840(&qword_1000AD800, &qword_100087868) + 36);
  v28 = sub_100080F68();
  (*(*(v28 - 8) + 16))(&v8[v27], v47, v28);
  v29 = *&v61[80];
  *(v8 + 65) = *&v61[64];
  *(v8 + 81) = v29;
  *(v8 + 97) = *&v61[96];
  v30 = *&v61[16];
  *(v8 + 1) = *v61;
  *(v8 + 17) = v30;
  v31 = *&v61[48];
  *(v8 + 33) = *&v61[32];
  *v8 = v21;
  v32 = *&v61[111];
  *(v8 + 49) = v31;
  *(v8 + 14) = v32;
  *(v8 + 15) = v26;
  *(v8 + 16) = v25;
  *(v8 + 34) = v48;
  v33 = swift_getKeyPath();
  v34 = &v8[*(sub_100002840(&qword_1000AD808, &unk_1000878A0) + 36)];
  v35 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
  v36 = sub_1000807B8();
  (*(*(v36 - 8) + 16))(v34 + v35, v15, v36);
  *v34 = v33;
  sub_100080A68();
  sub_100080A08();
  sub_1000807E8();
  v37 = v49;
  v38 = &v8[*(v50 + 44)];
  v39 = v55;
  *v38 = v54;
  *(v38 + 1) = v39;
  *(v38 + 2) = v56;
  sub_1000055FC(v24, v37, &qword_1000AD7E8, &qword_1000877F0);
  v40 = v51;
  sub_1000055FC(v8, v51, &qword_1000AD7E0, &qword_1000877E8);
  v41 = v52;
  sub_1000055FC(v37, v52, &qword_1000AD7E8, &qword_1000877F0);
  v42 = sub_100002840(&qword_1000AD810, &unk_1000878B0);
  sub_1000055FC(v40, v41 + *(v42 + 48), &qword_1000AD7E0, &qword_1000877E8);
  sub_100005B2C(v8, &qword_1000AD7E0, &qword_1000877E8);
  sub_100005B2C(v24, &qword_1000AD7E8, &qword_1000877F0);
  sub_100005B2C(v40, &qword_1000AD7E0, &qword_1000877E8);
  return sub_100005B2C(v37, &qword_1000AD7E8, &qword_1000877F0);
}

uint64_t sub_100022D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100005CE0(a1);
  sub_1000057D0();
  v23 = sub_100080D28();
  v24 = v3;
  v5 = v4;
  v7 = v6;
  sub_1000581E8();
  v8 = sub_100080D28();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100058464();
  v15 = sub_100080D28();
  v17 = v16;
  v26 = v5 & 1;
  v18 = v12 & 1;
  v25 = v12 & 1;
  v20 = v19 & 1;
  *a2 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26;
  *(a2 + 24) = v7;
  *(a2 + 32) = 256;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 56) = v18;
  *(a2 + 64) = v14;
  *(a2 + 72) = 256;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v19 & 1;
  *(a2 + 104) = v21;
  sub_10000EEB4(v23, v24, v26);

  sub_10000EEB4(v8, v10, v18);

  sub_10000EEB4(v15, v17, v20);

  sub_10000EF24(v15, v17, v20);

  sub_10000EF24(v8, v10, v25);

  sub_10000EF24(v23, v24, v26);
}

uint64_t sub_100022F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080988();
  *a1 = result;
  return result;
}

uint64_t sub_100022FA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080938();
  *a1 = result;
  return result;
}

uint64_t sub_100022FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080938();
  *a1 = result;
  return result;
}

uint64_t sub_100023058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080988();
  *a1 = result;
  return result;
}

unint64_t sub_1000230BC()
{
  result = qword_1000AD818;
  if (!qword_1000AD818)
  {
    sub_100004FC8(&qword_1000AD820, &qword_1000878C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD818);
  }

  return result;
}

uint64_t sub_100023134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000231C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LogoView(uint64_t a1)
{
  result = qword_1000AD888;
  if (!qword_1000AD888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023288(uint64_t a1)
{
  sub_1000232F4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000232F4(uint64_t a1)
{
  if (!qword_1000AD898)
  {
    sub_100080308();
    v1 = sub_100081518();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AD898);
    }
  }
}

uint64_t sub_100023368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD8E0, &qword_100087940);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  *v9 = sub_100080A28();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100002840(&qword_1000AD8E8, &qword_100087948);
  sub_1000234B8(a1, &v9[*(v10 + 44)]);
  sub_1000055FC(v9, v7, &qword_1000AD8E0, &qword_100087940);
  sub_1000055FC(v7, a2, &qword_1000AD8E0, &qword_100087940);
  v11 = a2 + *(sub_100002840(&qword_1000AD8F0, &qword_100087950) + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_100005B2C(v9, &qword_1000AD8E0, &qword_100087940);
  return sub_100005B2C(v7, &qword_1000AD8E0, &qword_100087940);
}

uint64_t sub_1000234B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a1;
  v76 = a2;
  v73 = sub_100002840(&qword_1000AD8F8, &qword_100087958);
  v67 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = &v65 - v2;
  v72 = sub_100002840(&qword_1000AD900, &qword_100087960);
  __chkstk_darwin(v72);
  v4 = &v65 - v3;
  v5 = sub_100002840(&qword_1000AD908, &qword_100087968);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v66 = sub_100002840(&qword_1000AD910, &qword_100087970);
  __chkstk_darwin(v66);
  v74 = &v65 - v8;
  v9 = sub_100002840(&qword_1000AD918, &qword_100087978);
  __chkstk_darwin(v9);
  v68 = &v65 - v10;
  v11 = sub_100002840(&qword_1000AD920, &qword_100087980);
  v70 = *(v11 - 8);
  __chkstk_darwin(v11);
  v69 = &v65 - v12;
  v13 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_100080308();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v65 - v21;
  v23 = sub_100002840(&qword_1000AD928, &qword_100087988);
  v24 = __chkstk_darwin(v23 - 8);
  v75 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v65 - v26;
  sub_100024570(v71, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v67 = v9;
    v71 = v11;
    sub_100005B2C(v15, &qword_1000AD3B0, &unk_100087320);
    sub_100080EB8();
    v28 = enum case for Image.TemplateRenderingMode.template(_:);
    v29 = sub_100080EC8();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v7, v28, v29);
    (*(v30 + 56))(v7, 0, 1, v29);
    v31 = sub_100080EA8();

    sub_100005B2C(v7, &qword_1000AD908, &qword_100087968);
    if (qword_1000AC668 != -1)
    {
      swift_once();
    }

    v32 = qword_1000AD828;
    KeyPath = swift_getKeyPath();
    *&v79 = v31;
    *(&v79 + 1) = KeyPath;
    *&v80 = v32;

    sub_100002840(&qword_1000AD930, &unk_1000879C0);
    sub_100024650();
    v34 = v74;
    sub_100080D48();

    sub_100080F48();
    sub_1000807E8();
    v35 = (v34 + *(v66 + 36));
    v36 = v80;
    *v35 = v79;
    v35[1] = v36;
    v35[2] = v81;
    sub_100002840(&qword_1000AD950, &qword_1000879D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A40;
    v38 = sub_100080BF8();
    *(inited + 32) = v38;
    v39 = sub_100080C38();
    *(inited + 33) = v39;
    v40 = sub_100080C28();
    sub_100080C28();
    if (sub_100080C28() != v38)
    {
      v40 = sub_100080C28();
    }

    sub_100080C28();
    if (sub_100080C28() != v39)
    {
      v40 = sub_100080C28();
    }

    v41 = v4;
    v42 = v71;
    v43 = v67;
    sub_100080798();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v68;
    sub_100024708(v74, v68);
    v53 = v52 + *(v43 + 36);
    *v53 = v40;
    *(v53 + 8) = v45;
    *(v53 + 16) = v47;
    *(v53 + 24) = v49;
    *(v53 + 32) = v51;
    *(v53 + 40) = 0;
    v54 = sub_100024778();
    v55 = v69;
    sub_100080D98();
    sub_100005B2C(v52, &qword_1000AD918, &qword_100087978);
    v56 = v70;
    (*(v70 + 16))(v41, v55, v42);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AD968, &qword_1000AD8F8, &qword_100087958, &protocol conformance descriptor for Link<A>);
    v77 = v43;
    v78 = v54;
    swift_getOpaqueTypeConformance2();
    sub_100080AD8();
    (*(v56 + 8))(v55, v42);
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 16))(v20, v22, v16);
    v57 = sub_100024778();
    *&v79 = v9;
    *(&v79 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    v58 = v65;
    sub_100080CE8();
    v59 = v67;
    v60 = v73;
    (*(v67 + 16))(v4, v58, v73);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AD968, &qword_1000AD8F8, &qword_100087958, &protocol conformance descriptor for Link<A>);
    sub_100080AD8();
    (*(v59 + 8))(v58, v60);
    (*(v17 + 8))(v22, v16);
  }

  v61 = v75;
  sub_1000055FC(v27, v75, &qword_1000AD928, &qword_100087988);
  v62 = v76;
  *v76 = 0;
  *(v62 + 8) = 1;
  v63 = sub_100002840(&qword_1000AD970, &qword_1000879D8);
  sub_1000055FC(v61, v62 + *(v63 + 48), &qword_1000AD928, &qword_100087988);
  sub_100005B2C(v27, &qword_1000AD928, &qword_100087988);
  return sub_100005B2C(v61, &qword_1000AD928, &qword_100087988);
}

uint64_t sub_100023EF4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100002840(&qword_1000AD908, &qword_100087968);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_100002840(&qword_1000AD910, &qword_100087970);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_100002840(&qword_1000AD918, &qword_100087978);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  sub_100080EB8();
  v10 = enum case for Image.TemplateRenderingMode.template(_:);
  v11 = sub_100080EC8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v3, v10, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  v13 = sub_100080EA8();

  sub_100005B2C(v3, &qword_1000AD908, &qword_100087968);
  if (qword_1000AC668 != -1)
  {
    swift_once();
  }

  v14 = qword_1000AD828;
  KeyPath = swift_getKeyPath();
  *&v33 = v13;
  *(&v33 + 1) = KeyPath;
  *&v34 = v14;

  sub_100002840(&qword_1000AD930, &unk_1000879C0);
  sub_100024650();
  sub_100080D48();

  sub_100080F48();
  sub_1000807E8();
  v16 = &v6[*(v4 + 36)];
  v17 = v34;
  *v16 = v33;
  *(v16 + 1) = v17;
  *(v16 + 2) = v35;
  sub_100002840(&qword_1000AD950, &qword_1000879D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A40;
  v19 = sub_100080BF8();
  *(inited + 32) = v19;
  v20 = sub_100080C38();
  *(inited + 33) = v20;
  v21 = sub_100080C28();
  sub_100080C28();
  if (sub_100080C28() != v19)
  {
    v21 = sub_100080C28();
  }

  sub_100080C28();
  if (sub_100080C28() != v20)
  {
    v21 = sub_100080C28();
  }

  sub_100080798();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_100024708(v6, v9);
  v30 = &v9[*(v7 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_100024778();
  sub_100080D98();
  return sub_100005B2C(v9, &qword_1000AD918, &qword_100087978);
}

uint64_t sub_100024300()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1000243D0;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000245E0;
  v3[3] = &unk_1000A7910;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_100080E68();
  qword_1000AD828 = result;
  return result;
}

id sub_1000243D0(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithRed:1.0 green:0.596078431 blue:0.0 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

uint64_t sub_100024460()
{
  v1 = sub_100002840(&qword_1000AD8C8, &qword_100087930);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = sub_100080A68();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_100002840(&qword_1000AD8D0, &qword_100087938);
  sub_100023368(v0, &v3[*(v4 + 44)]);
  sub_100005C98(&qword_1000AD8D8, &qword_1000AD8C8, &qword_100087930, &protocol conformance descriptor for VStack<A>);
  sub_100080DB8();
  return sub_100005B2C(v3, &qword_1000AD8C8, &qword_100087930);
}

uint64_t sub_100024570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000245E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_100024650()
{
  result = qword_1000AD938;
  if (!qword_1000AD938)
  {
    sub_100004FC8(&qword_1000AD930, &unk_1000879C0);
    sub_100005C98(&qword_1000AD940, &qword_1000AD948, &unk_100088080, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD938);
  }

  return result;
}

uint64_t sub_100024708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD910, &qword_100087970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024778()
{
  result = qword_1000AD958;
  if (!qword_1000AD958)
  {
    sub_100004FC8(&qword_1000AD918, &qword_100087978);
    sub_100024804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD958);
  }

  return result;
}

unint64_t sub_100024804()
{
  result = qword_1000AD960;
  if (!qword_1000AD960)
  {
    sub_100004FC8(&qword_1000AD910, &qword_100087970);
    sub_100004FC8(&qword_1000AD930, &unk_1000879C0);
    sub_100024650();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD960);
  }

  return result;
}

uint64_t sub_1000248CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000248E8()
{
  result = qword_1000AD978;
  if (!qword_1000AD978)
  {
    sub_100004FC8(&qword_1000AD980, &unk_1000879E0);
    sub_100005C98(&qword_1000AD8D8, &qword_1000AD8C8, &qword_100087930, &protocol conformance descriptor for VStack<A>);
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD978);
  }

  return result;
}

unint64_t sub_1000249A0()
{
  result = qword_1000ACB10;
  if (!qword_1000ACB10)
  {
    sub_100080B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB10);
  }

  return result;
}

uint64_t sub_100024A0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100024ACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LargeEmptyStateView(uint64_t a1)
{
  result = qword_1000AD9E0;
  if (!qword_1000AD9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024BBC(uint64_t a1)
{
  result = type metadata accessor for EmptyStateView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100024C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = *(a1 + 24);
  v9 = type metadata accessor for EmptyStateView(0);
  sub_100024D24(v2 + v8, a2 + v9[7]);
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v9[5]);
  *v10 = v5;
  v10[1] = v4;
  v11 = (a2 + v9[6]);
  *v11 = v7;
  v11[1] = v6;
  v11[2] = 0x401C000000000000;
}

uint64_t sub_100024D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024D94()
{
  result = qword_1000ADA20;
  if (!qword_1000ADA20)
  {
    type metadata accessor for EmptyStateView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADA20);
  }

  return result;
}

uint64_t sub_100024E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100024EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MediumWidgetView(uint64_t a1)
{
  result = qword_1000ADA80;
  if (!qword_1000ADA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024FF4(uint64_t a1)
{
  sub_100002A24(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_100025078(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100025084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000250CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100025138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (__PAIR128__(0x8000000100082090, 0xD000000000000023) == __PAIR128__(v11, v10) || (sub_100081618() & 1) != 0)
  {

    return sub_100029988(a2);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100081588(37);

    v16 = 0xD000000000000020;
    v17 = 0x8000000100082CE0;
    v19._countAndFlagsBits = v10;
    v19._object = v11;
    sub_1000812A8(v19);
    v20._countAndFlagsBits = 63;
    v20._object = 0xE100000000000000;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = sub_10002A330();
    sub_1000812A8(v21);

    sub_1000802E8();

    v13 = sub_100080308();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v9, 1, v13) == 1)
    {
      sub_1000802E8();
      result = v15(v7, 1, v13);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v14 + 32))(a2, v7, v13);
        result = v15(v9, 1, v13);
        if (result != 1)
        {
          return sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v14 + 32))(a2, v9, v13);
    }
  }

  return result;
}

uint64_t sub_1000253FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (__PAIR128__(0x8000000100082090, 0xD000000000000023) == __PAIR128__(v11, v10) || (sub_100081618() & 1) != 0)
  {

    return sub_100029BC0(a2);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100081588(37);

    v16 = 0xD000000000000020;
    v17 = 0x8000000100082CE0;
    v19._countAndFlagsBits = v10;
    v19._object = v11;
    sub_1000812A8(v19);
    v20._countAndFlagsBits = 63;
    v20._object = 0xE100000000000000;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = sub_10002A5B0();
    sub_1000812A8(v21);

    sub_1000802E8();

    v13 = sub_100080308();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v9, 1, v13) == 1)
    {
      sub_1000802E8();
      result = v15(v7, 1, v13);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v14 + 32))(a2, v7, v13);
        result = v15(v9, 1, v13);
        if (result != 1)
        {
          return sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v14 + 32))(a2, v9, v13);
    }
  }

  return result;
}

uint64_t sub_1000256C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (__PAIR128__(0x8000000100082090, 0xD000000000000023) == __PAIR128__(v11, v10) || (sub_100081618() & 1) != 0)
  {

    return sub_100029DF8(a2);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100081588(37);

    v16 = 0xD000000000000020;
    v17 = 0x8000000100082CE0;
    v19._countAndFlagsBits = v10;
    v19._object = v11;
    sub_1000812A8(v19);
    v20._countAndFlagsBits = 63;
    v20._object = 0xE100000000000000;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = sub_10002A860();
    sub_1000812A8(v21);

    sub_1000802E8();

    v13 = sub_100080308();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v9, 1, v13) == 1)
    {
      sub_1000802E8();
      result = v15(v7, 1, v13);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v14 + 32))(a2, v7, v13);
        result = v15(v9, 1, v13);
        if (result != 1)
        {
          return sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v14 + 32))(a2, v9, v13);
    }
  }

  return result;
}

uint64_t sub_100025984()
{
  v19 = sub_100080478();
  v1 = *(v19 - 8);
  v2 = __chkstk_darwin(v19);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_1000811C8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = sub_1000811A8();
  __chkstk_darwin(v12 - 8);
  result = 0;
  v14 = *(v0 + 24);
  if (v14 >= 2)
  {
    sub_100081198();
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_100081188(v21);
    v20 = v14;
    sub_100081178();
    v22._countAndFlagsBits = 0x727473207961642DLL;
    v22._object = 0xEB000000006B6165;
    sub_100081188(v22);
    sub_1000811B8();
    sub_100080448();
    (*(v6 + 16))(v9, v11, v5);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v17 = sub_100081258();
    (*(v1 + 8))(v4, v19);
    (*(v6 + 8))(v11, v5);
    return v17;
  }

  return result;
}

uint64_t sub_100025CB8()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100025F34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  if (sub_100062184())
  {

    return sub_10002AADC(a1);
  }

  else
  {
    sub_1000802E8();
    v9 = sub_100080308();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (v11(v7, 1, v9) == 1)
    {
      sub_1000802E8();
      result = v11(v5, 1, v9);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v10 + 32))(a1, v5, v9);
        result = v11(v7, 1, v9);
        if (result != 1)
        {
          return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v10 + 32))(a1, v7, v9);
    }
  }

  return result;
}

uint64_t sub_100026150@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  if (sub_100062184())
  {

    return sub_10002AD14(a1);
  }

  else
  {
    sub_1000802E8();
    v9 = sub_100080308();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (v11(v7, 1, v9) == 1)
    {
      sub_1000802E8();
      result = v11(v5, 1, v9);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v10 + 32))(a1, v5, v9);
        result = v11(v7, 1, v9);
        if (result != 1)
        {
          return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v10 + 32))(a1, v7, v9);
    }
  }

  return result;
}

uint64_t sub_10002636C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  if (sub_100062184())
  {

    return sub_10002AF4C(a1);
  }

  else
  {
    sub_1000802E8();
    v9 = sub_100080308();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (v11(v7, 1, v9) == 1)
    {
      sub_1000802E8();
      result = v11(v5, 1, v9);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v10 + 32))(a1, v5, v9);
        result = v11(v7, 1, v9);
        if (result != 1)
        {
          return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v10 + 32))(a1, v7, v9);
    }
  }

  return result;
}

uint64_t sub_10002658C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100026810@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_1000807B8();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100080B88();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100002840(&qword_1000ADAC0, &qword_100087B88);
  __chkstk_darwin(v27);
  v8 = (&v26 - v7);
  v9 = sub_100002840(&qword_1000ADAC8, &qword_100087B90);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  *v8 = sub_100080F48();
  v8[1] = v12;
  v13 = sub_100002840(&qword_1000ADAD0, &unk_100087B98);
  sub_100026C28(v1, v8 + *(v13 + 44));
  sub_100080B78();
  v36 = v1;
  sub_100080F48();
  sub_100002840(&qword_1000ACA68, &qword_100085B00);
  sub_100005C98(&qword_1000ADAD8, &qword_1000ADAC0, &qword_100087B88, &protocol conformance descriptor for ZStack<A>);
  sub_1000050CC();
  v28 = v11;
  sub_100080DF8();
  (*(v4 + 8))(v6, v29);
  sub_100005B2C(v8, &qword_1000ADAC0, &qword_100087B88);
  v14 = (v1 + *(type metadata accessor for MediumWidgetView(0) + 20));
  v15 = v14[3];
  v39 = v14[2];
  v40 = v15;
  v16 = v14[1];
  v37 = *v14;
  v38 = v16;
  if (sub_1000573C8())
  {
    v18 = v32;
    v17 = v33;
    v19 = v34;
    (*(v32 + 104))(v34, enum case for ColorScheme.light(_:), v33);
  }

  else
  {
    v19 = v34;
    sub_100005180(v34);
    v18 = v32;
    v17 = v33;
  }

  KeyPath = swift_getKeyPath();
  v21 = sub_100002840(&qword_1000ADAE0, &qword_100087BD8);
  v22 = v35;
  v23 = (v35 + *(v21 + 36));
  v24 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  (*(v18 + 32))(v23 + *(v24 + 28), v19, v17);
  *v23 = KeyPath;
  return (*(v30 + 32))(v22, v28, v31);
}

uint64_t sub_100026C28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for LogoView(0);
  v4 = __chkstk_darwin(v3 - 8);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v38 - v6;
  v7 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v39 = sub_100002840(&qword_1000ADAE8, &qword_100087C10);
  __chkstk_darwin(v39);
  v11 = &v38 - v10;
  v42 = sub_100002840(&qword_1000ADAF0, &qword_100087C18);
  v40 = *(v42 - 8);
  v12 = __chkstk_darwin(v42);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  if (sub_100062184())
  {
    v16 = sub_100080A78();
  }

  else
  {
    v16 = sub_100080A68();
  }

  v17 = v16;
  v18 = type metadata accessor for MediumWidgetView(0);
  v19 = *(a1 + *(v18 + 24) + 16);
  *v11 = v17;
  *(v11 + 1) = v19;
  v11[16] = 0;
  v20 = sub_100002840(&qword_1000ADAF8, &qword_100087C20);
  sub_1000270AC(a1, &v11[*(v20 + 44)]);
  v21 = (a1 + *(v18 + 20));
  v22 = v21[1];
  v50 = *v21;
  v51 = v22;
  v23 = v21[3];
  v52 = v21[2];
  v53 = v23;
  sub_100029BC0(v9);
  v24 = sub_100080308();
  v25 = *(*(v24 - 8) + 56);
  v25(v9, 0, 1, v24);
  sub_100005C98(&qword_1000ADB00, &qword_1000ADAE8, &qword_100087C10, &protocol conformance descriptor for VStack<A>);
  sub_100080D58();
  sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
  sub_100005B2C(v11, &qword_1000ADAE8, &qword_100087C10);
  v26 = v21[1];
  v46 = *v21;
  v47 = v26;
  v27 = v21[3];
  v48 = v21[2];
  v49 = v27;
  v28 = v43;
  sub_100029BC0(v43);
  v25(v28, 0, 1, v24);
  v29 = v40;
  v30 = *(v40 + 16);
  v31 = v41;
  v32 = v42;
  v30(v41, v15, v42);
  v33 = v45;
  sub_10002B8D8(v28, v45, type metadata accessor for LogoView);
  v34 = v44;
  v30(v44, v31, v32);
  v35 = sub_100002840(&qword_1000ADB08, &qword_100087C28);
  sub_10002B8D8(v33, &v34[*(v35 + 48)], type metadata accessor for LogoView);
  sub_10002B940(v28, type metadata accessor for LogoView);
  v36 = *(v29 + 8);
  v36(v15, v32);
  sub_10002B940(v33, type metadata accessor for LogoView);
  return (v36)(v31, v32);
}

uint64_t sub_1000270AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v104 = a2;
  v3 = sub_100080B68();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin(v3);
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080308();
  __chkstk_darwin(v5 - 8);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002840(&qword_1000ADB18, &qword_100087C30);
  v8 = *(v7 - 8);
  v90 = v7;
  v91 = v8;
  __chkstk_darwin(v7);
  v89 = &v82 - v9;
  v10 = sub_100002840(&qword_1000ADB20, &qword_100087C38);
  v96 = *(v10 - 8);
  v97 = v10;
  __chkstk_darwin(v10);
  v105 = &v82 - v11;
  v101 = sub_100002840(&qword_1000ADB28, &qword_100087C40);
  v12 = __chkstk_darwin(v101);
  v103 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v99 = &v82 - v15;
  v16 = __chkstk_darwin(v14);
  v100 = &v82 - v17;
  __chkstk_darwin(v16);
  v102 = &v82 - v18;
  v95 = sub_100080B88();
  v86 = *(v95 - 1);
  __chkstk_darwin(v95);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100002840(&qword_1000ADB30, &qword_100087C48);
  __chkstk_darwin(v84);
  v22 = &v82 - v21;
  v87 = sub_100002840(&qword_1000ADB38, &qword_100087C50);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v24 = &v82 - v23;
  v25 = sub_100002840(&qword_1000ADB40, &qword_100087C58);
  v26 = v25 - 8;
  v27 = __chkstk_darwin(v25);
  v98 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v82 - v30;
  __chkstk_darwin(v29);
  v33 = &v82 - v32;
  *v22 = sub_100080A28();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v34 = sub_100002840(&qword_1000ADB48, &qword_100087C60);
  sub_100027B5C(a1, &v22[*(v34 + 44)]);
  sub_100080B78();
  sub_100080F48();
  sub_100005C98(&qword_1000ADB50, &qword_1000ADB30, &qword_100087C48, &protocol conformance descriptor for HStack<A>);
  sub_10002B1F8();
  sub_100080DF8();
  (*(v86 + 8))(v20, v95);
  sub_100005B2C(v22, &qword_1000ADB30, &qword_100087C48);
  sub_100080F48();
  sub_1000808F8();
  (*(v85 + 32))(v31, v24, v87);
  v35 = &v31[*(v26 + 44)];
  v36 = v114;
  *(v35 + 4) = v113;
  *(v35 + 5) = v36;
  *(v35 + 6) = v115;
  v37 = v110;
  *v35 = v109;
  *(v35 + 1) = v37;
  v38 = v112;
  *(v35 + 2) = v111;
  *(v35 + 3) = v38;
  v95 = v33;
  sub_10002B24C(v31, v33);
  v39 = type metadata accessor for MediumWidgetView(0);
  v40 = v83;
  v41 = (v83 + *(v39 + 20));
  v42 = v41[3];
  v126 = v41[2];
  v127 = v42;
  v43 = v41[1];
  v124 = *v41;
  v125 = v43;
  sub_100026150(v88);
  v106 = v40;
  sub_100002840(&qword_1000ADB60, &qword_100087C68);
  sub_10002B2C4();
  v44 = v89;
  sub_100080CE8();
  v45 = v92;
  sub_100080B48();
  v46 = sub_100005C98(&qword_1000ADB88, &qword_1000ADB18, &qword_100087C30, &protocol conformance descriptor for Link<A>);
  v47 = v90;
  sub_100080E08();
  (*(v93 + 8))(v45, v94);
  v48 = v47;
  (*(v91 + 8))(v44, v47);
  v49 = v41[1];
  v120 = *v41;
  v121 = v49;
  v50 = v41[3];
  v122 = v41[2];
  v123 = v50;
  v51 = sub_10005790C();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = sub_100025984();
    if (v56)
    {
      v57 = v55;
      v58 = v56;
      *&v116 = v53;
      *(&v116 + 1) = v54;

      v128._countAndFlagsBits = 8236;
      v128._object = 0xE200000000000000;
      sub_1000812A8(v128);

      v129._countAndFlagsBits = v57;
      v129._object = v58;
      sub_1000812A8(v129);

      v54 = *(&v116 + 1);
      v53 = v116;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
  }

  v59 = v99;
  *&v116 = v53;
  *(&v116 + 1) = v54;
  v107 = v48;
  v108 = v46;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v60 = v97;
  v61 = v105;
  sub_100080DD8();

  (*(v96 + 8))(v61, v60);
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100085A40;
  *(v62 + 32) = sub_10002658C();
  *(v62 + 40) = v63;
  v64 = v41[1];
  v116 = *v41;
  v117 = v64;
  v65 = v41[3];
  v118 = v41[2];
  v119 = v65;
  v66 = sub_10005790C();
  if (v67)
  {
    v68 = v66;
    v69 = v67;
    v70 = sub_100025984();
    if (v71)
    {
      v72 = v70;
      v73 = v71;
      v107 = v68;
      v108 = v69;

      v130._countAndFlagsBits = 8236;
      v130._object = 0xE200000000000000;
      sub_1000812A8(v130);

      v131._countAndFlagsBits = v72;
      v131._object = v73;
      sub_1000812A8(v131);

      v68 = v107;
      v69 = v108;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  *(v62 + 48) = v68;
  *(v62 + 56) = v69;
  v74 = v100;
  sub_1000808A8();

  sub_100005B2C(v59, &qword_1000ADB28, &qword_100087C40);
  sub_100080F98();
  v75 = v102;
  sub_1000808B8();
  sub_100005B2C(v74, &qword_1000ADB28, &qword_100087C40);
  v76 = v95;
  v77 = v98;
  sub_1000055FC(v95, v98, &qword_1000ADB40, &qword_100087C58);
  v78 = v103;
  sub_1000055FC(v75, v103, &qword_1000ADB28, &qword_100087C40);
  v79 = v104;
  sub_1000055FC(v77, v104, &qword_1000ADB40, &qword_100087C58);
  v80 = sub_100002840(&qword_1000ADB90, &qword_100087C80);
  sub_1000055FC(v78, v79 + *(v80 + 48), &qword_1000ADB28, &qword_100087C40);
  sub_100005B2C(v75, &qword_1000ADB28, &qword_100087C40);
  sub_100005B2C(v76, &qword_1000ADB40, &qword_100087C58);
  sub_100005B2C(v78, &qword_1000ADB28, &qword_100087C40);
  return sub_100005B2C(v77, &qword_1000ADB40, &qword_100087C58);
}

uint64_t sub_100027B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v3 = sub_100080A58();
  v138 = *(v3 - 8);
  v139 = v3;
  __chkstk_darwin(v3);
  v137 = v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_100080B68();
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for MediumEmptyStateView(0);
  __chkstk_darwin(v128);
  v7 = (v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100002840(&qword_1000ADBC0, &qword_100087CB8);
  v133 = *(v8 - 8);
  v134 = v8;
  __chkstk_darwin(v8);
  v130 = v110 - v9;
  v142 = sub_100002840(&qword_1000ADBC8, &qword_100087CC0);
  v10 = __chkstk_darwin(v142);
  v131 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v135 = v110 - v13;
  __chkstk_darwin(v12);
  v136 = v110 - v14;
  v15 = sub_100080308();
  __chkstk_darwin(v15 - 8);
  v115 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002840(&qword_1000ADBD0, &qword_100087CC8);
  v118 = *(v17 - 8);
  v119 = v17;
  __chkstk_darwin(v17);
  v116 = v110 - v18;
  v125 = sub_100002840(&qword_1000ADBD8, &qword_100087CD0);
  __chkstk_darwin(v125);
  v117 = v110 - v19;
  v122 = sub_100002840(&qword_1000ADBE0, &qword_100087CD8);
  __chkstk_darwin(v122);
  v124 = v110 - v20;
  v123 = type metadata accessor for MediumOneBookView(0);
  __chkstk_darwin(v123);
  v120 = v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_100002840(&qword_1000ADBE8, &qword_100087CE0);
  __chkstk_darwin(v140);
  v126 = v110 - v22;
  v23 = sub_100002840(&qword_1000ADBF0, &qword_100087CE8);
  __chkstk_darwin(v23);
  v25 = v110 - v24;
  v26 = sub_100002840(&qword_1000ADBF8, &qword_100087CF0);
  __chkstk_darwin(v26);
  v28 = (v110 - v27);
  v29 = sub_100002840(&qword_1000ADC00, &qword_100087CF8);
  __chkstk_darwin(v29);
  v31 = v110 - v30;
  result = type metadata accessor for MediumWidgetView(0);
  v33 = *(result + 20);
  v121 = a1;
  v34 = (a1 + v33);
  v35 = *(v34 + 4);
  v36 = *(v35 + 16);
  if (v36 >= 2)
  {
    v37 = v34[1];
    v164 = *v34;
    v165 = v37;
    v38 = v34[3];
    v166 = v34[2];
    v167 = v38;
    sub_10002B41C(&v164, &v145);
    v39 = sub_100080E48();
    sub_100080C88();
    v41 = v40;
    v42 = sub_100080CB8();
    v43 = v165;
    v145 = v164;
    v146 = v165;
    v44 = v166;
    v147 = v166;
    v148 = v167;
    v149 = xmmword_100087A90;
    v150 = xmmword_100087AA0;
    *&v151 = v39;
    *(&v151 + 1) = v41;
    *(v152 + 8) = xmmword_100087AB0;
    *(&v152[1] + 8) = xmmword_100087AC0;
    *(&v152[2] + 8) = xmmword_100087AD0;
    *&v152[0] = 3;
    *(&v152[3] + 1) = v42;
    *v28 = v164;
    v28[1] = v43;
    v45 = v152[0];
    v46 = v152[1];
    v47 = v152[3];
    v28[9] = v152[2];
    v28[10] = v47;
    v28[7] = v45;
    v28[8] = v46;
    v48 = v148;
    v49 = v149;
    v50 = v151;
    v28[5] = v150;
    v28[6] = v50;
    v28[3] = v48;
    v28[4] = v49;
    v28[2] = v44;
    swift_storeEnumTagMultiPayload();
    sub_10002B9A0(&v145, v143);
    sub_10002B584();
    sub_10002B5D8();
    sub_100080AD8();
    v51 = &qword_1000ADC00;
    v52 = &qword_100087CF8;
    sub_1000055FC(v31, v25, &qword_1000ADC00, &qword_100087CF8);
    swift_storeEnumTagMultiPayload();
    sub_10002B694();
    sub_10002B720();
    sub_100080AD8();
    sub_10002B9FC(&v145);
    v53 = v31;
    return sub_100005B2C(v53, v51, v52);
  }

  v110[1] = v26;
  v111 = v31;
  v112 = v29;
  v113 = v23;
  v114 = v25;
  if (v36)
  {
    v54 = 0xD000000000000023;
    v55 = *(v35 + 64);
    v56 = 0x8000000100082090;
    if (v55 != 0xD000000000000023 || 0x8000000100082090 != *(v35 + 72))
    {
      v55 = sub_100081618();
      if ((v55 & 1) == 0)
      {
        v82 = *(v35 + 80);
        v147 = *(v35 + 64);
        v148 = v82;
        v149 = *(v35 + 96);
        LOBYTE(v150) = *(v35 + 112);
        v83 = *(v35 + 48);
        v145 = *(v35 + 32);
        v146 = v83;
        sub_10000C328(&v145, v143);
        v169 = v150;
        v167 = v148;
        v168 = v149;
        v165 = v146;
        v166 = v147;
        v164 = v145;
        v143[2] = v147;
        v143[3] = v148;
        v143[4] = v149;
        v144 = v150;
        v143[0] = v145;
        v143[1] = v146;
        if (sub_1000112D4())
        {
          v84 = v34[3];
          v162 = v34[2];
          v163 = v84;
          v85 = v34[1];
          v160 = *v34;
          v161 = v85;
          v86 = v111;
          if (*(v162 + 16))
          {
            v87 = *(v162 + 80);
            v156 = *(v162 + 64);
            v157 = v87;
            v158 = *(v162 + 96);
            v159 = *(v162 + 112);
            v88 = *(v162 + 48);
            v154 = *(v162 + 32);
            v155 = v88;
            sub_10000C328(&v154, v153);
            v89 = v154;
            v90 = v155;
            v91 = BYTE8(v155);
            v153[0] = *(&v155 + 9);
            *(v153 + 3) = HIDWORD(v155);
            v56 = *(&v156 + 1);
            v54 = v156;
            v92 = *(&v157 + 1);
            v93 = v157;
            v94 = v158;
            v95 = v159;
          }

          else
          {
            v93 = BDSCloudAssetTypeStoreEbook;
            v104 = BDSLibraryContentAssetTypeUnknown;
            v91 = 1;
            LOBYTE(v154) = 1;
            v105 = BDSCloudAssetTypeStoreEbook;
            v92 = v104;
            v90 = 0;
            v95 = 0;
            v94 = 0uLL;
            v89 = 0uLL;
          }

          v103 = v114;
          v106 = v163;
          v107 = v120;
          *(v120 + 2) = v162;
          *(v107 + 48) = v106;
          v108 = v161;
          *v107 = v160;
          *(v107 + 16) = v108;
          *(v107 + 64) = v89;
          *(v107 + 80) = v90;
          *(v107 + 88) = v91;
          *(v107 + 89) = v153[0];
          *(v107 + 92) = *(v153 + 3);
          *(v107 + 96) = v54;
          *(v107 + 104) = v56;
          *(v107 + 112) = v93;
          *(v107 + 120) = v92;
          *(v107 + 128) = v94;
          *(v107 + 144) = v95;
          v109 = *(v123 + 24);
          sub_10002B41C(&v160, &v154);
          sub_1000731E0((v107 + v109));
          sub_10002B8D8(v107, v124, type metadata accessor for MediumOneBookView);
          swift_storeEnumTagMultiPayload();
          sub_10002B83C(&qword_1000ADC08, type metadata accessor for MediumOneBookView, &unk_10008BCB4);
          sub_10002B49C();
          v102 = v126;
          sub_100080AD8();
          sub_10002B940(v107, type metadata accessor for MediumOneBookView);
        }

        else
        {
          v96 = v121;
          v97 = sub_100028CF8(v115);
          __chkstk_darwin(v97);
          v110[-2] = v96;
          sub_10002B83C(&qword_1000ADC08, type metadata accessor for MediumOneBookView, &unk_10008BCB4);
          v98 = v116;
          sub_100080CE8();
          *&v154 = sub_100056778(0);
          *(&v154 + 1) = v99;
          sub_100005C98(&qword_1000ADC10, &qword_1000ADBD0, &qword_100087CC8, &protocol conformance descriptor for Link<A>);
          sub_1000057D0();
          v100 = v117;
          v101 = v119;
          sub_100080DD8();

          (*(v118 + 8))(v98, v101);
          sub_1000055FC(v100, v124, &qword_1000ADBD8, &qword_100087CD0);
          swift_storeEnumTagMultiPayload();
          sub_10002B49C();
          v102 = v126;
          sub_100080AD8();
          sub_100005B2C(v100, &qword_1000ADBD8, &qword_100087CD0);
          v103 = v114;
          v86 = v111;
        }

        v51 = &qword_1000ADBE8;
        v52 = &qword_100087CE0;
        sub_1000055FC(v102, v28, &qword_1000ADBE8, &qword_100087CE0);
        swift_storeEnumTagMultiPayload();
        sub_10002B584();
        sub_10002B5D8();
        sub_100080AD8();
        sub_1000055FC(v86, v103, &qword_1000ADC00, &qword_100087CF8);
        swift_storeEnumTagMultiPayload();
        sub_10002B694();
        sub_10002B720();
        sub_100080AD8();
        sub_10002B884(&v164);
        sub_100005B2C(v86, &qword_1000ADC00, &qword_100087CF8);
        v53 = v102;
        return sub_100005B2C(v53, v51, v52);
      }
    }

    *v7 = sub_100005CE0(v55);
    v7[1] = v57;
    v58 = v128;
    v59 = v7 + *(v128 + 20);
    v60 = sub_100080C48();
    sub_100080C68();
    v62 = v61;
    v63 = sub_100080B18();
    sub_100080E48();
    v64 = sub_100080E58();

    v65 = enum case for ColorScheme.dark(_:);
    v66 = sub_1000807B8();
    (*(*(v66 - 8) + 104))(v59, v65, v66);
    v67 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v68 = v67[5];
    v69 = enum case for BlendMode.plusLighter(_:);
    v70 = sub_100080F68();
    (*(*(v70 - 8) + 104))(&v59[v68], v69, v70);
    *&v59[v67[6]] = v60;
    *&v59[v67[7]] = v62;
    *&v59[v67[8]] = v63;
    *&v59[v67[9]] = v64;
    *&v59[v67[10]] = 0x3FE570A3D70A3D71;
    *&v59[v67[11]] = 0x4018000000000000;
    *&v59[v67[12]] = 0x4030000000000000;
    v71 = v127;
    sub_100080B48();
    v72 = sub_10002B83C(&qword_1000ADC40, type metadata accessor for MediumEmptyStateView, &unk_10008C838);
    v73 = v130;
    sub_100080E08();
    (*(v129 + 8))(v71, v132);
    v74 = sub_10002B940(v7, type metadata accessor for MediumEmptyStateView);
    *&v145 = sub_100005CE0(v74);
    *(&v145 + 1) = v75;
    *&v143[0] = v58;
    *(&v143[0] + 1) = v72;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v76 = v131;
    v77 = v134;
    sub_100080DD8();

    (*(v133 + 8))(v73, v77);
    v78 = v137;
    sub_100080A48();
    v79 = v135;
    sub_100080898();
    (*(v138 + 8))(v78, v139);
    v80 = sub_100005B2C(v76, &qword_1000ADBC8, &qword_100087CC0);
    sub_100005CE4(v80);
    v81 = v136;
    sub_1000808A8();

    sub_100005B2C(v79, &qword_1000ADBC8, &qword_100087CC0);
    sub_1000055FC(v81, v114, &qword_1000ADBC8, &qword_100087CC0);
    swift_storeEnumTagMultiPayload();
    sub_10002B694();
    sub_10002B720();
    sub_100080AD8();
    return sub_100005B2C(v81, &qword_1000ADBC8, &qword_100087CC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100028B80@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediumWidgetView(0) + 20));
  v4 = v3[3];
  v33 = v3[2];
  v34 = v4;
  v5 = v3[1];
  v31 = *v3;
  v32 = v5;
  if (*(v33 + 16))
  {
    v6 = *(v33 + 80);
    v27 = *(v33 + 64);
    v7 = *(v33 + 96);
    v28 = v6;
    v29 = v7;
    v30 = *(v33 + 112);
    v8 = *(v33 + 48);
    v25 = *(v33 + 32);
    v26 = v8;
    sub_10000C328(&v25, v24);
    v9 = v25;
    v10 = v26;
    v11 = BYTE8(v26);
    v24[0] = *(&v26 + 9);
    *(v24 + 3) = HIDWORD(v26);
    v13 = *(&v27 + 1);
    v12 = v27;
    v14 = *(&v28 + 1);
    v15 = v28;
    v16 = v29;
    v17 = v30;
  }

  else
  {
    v13 = 0x8000000100082090;
    v15 = BDSCloudAssetTypeStoreEbook;
    v18 = BDSLibraryContentAssetTypeUnknown;
    v11 = 1;
    LOBYTE(v25) = 1;
    v19 = BDSCloudAssetTypeStoreEbook;
    v14 = v18;
    v10 = 0;
    v17 = 0;
    v16 = 0uLL;
    v12 = 0xD000000000000023;
    v9 = 0uLL;
  }

  v20 = v32;
  *a1 = v31;
  *(a1 + 16) = v20;
  v21 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v21;
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 89) = v24[0];
  *(a1 + 92) = *(v24 + 3);
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  *(a1 + 112) = v15;
  *(a1 + 120) = v14;
  *(a1 + 128) = v16;
  *(a1 + 144) = v17;
  v22 = *(type metadata accessor for MediumOneBookView(0) + 24);
  sub_10002B41C(&v31, &v25);
  return sub_1000731E0((a1 + v22));
}

uint64_t sub_100028CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediumWidgetView(0) + 20));
  v4 = v3[3];
  v20 = v3[2];
  v21 = v4;
  v5 = v3[1];
  v18 = *v3;
  v19 = v5;
  if (*(v20 + 16))
  {
    v6 = *(v20 + 80);
    v14 = *(v20 + 64);
    v15 = v6;
    v16 = *(v20 + 96);
    v17 = *(v20 + 112);
    v7 = *(v20 + 48);
    v12 = *(v20 + 32);
    v13 = v7;
    sub_10000C328(&v12, &v22);
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v22 = v12;
    v23 = v13;
  }

  else
  {
    v8 = BDSLibraryContentAssetTypeUnknown;
    LOBYTE(v12) = 1;
    *&v23 = 0;
    v22 = 0uLL;
    BYTE8(v23) = 1;
    *&v24 = 0xD000000000000023;
    *(&v24 + 1) = 0x8000000100082090;
    *&v25 = BDSCloudAssetTypeStoreEbook;
    *(&v25 + 1) = BDSLibraryContentAssetTypeUnknown;
    v26 = 0uLL;
    v27 = 0;
    v9 = BDSCloudAssetTypeStoreEbook;
    v10 = v8;
  }

  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v12 = v22;
  v13 = v23;
  sub_1000253FC(&v12, a1);
  return sub_10002B884(&v22);
}

uint64_t sub_100028E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000ADB80, &unk_100087C70);
  v5 = __chkstk_darwin(v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v43 - v8;
  v10 = sub_100002840(&qword_1000ADB98, &qword_100087C88);
  __chkstk_darwin(v10);
  v12 = v43 - v11;
  v13 = type metadata accessor for MediumReadingGoalView(0);
  __chkstk_darwin(v13);
  v15 = (v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100062184();
  v43[3] = a2;
  v43[2] = v13;
  if (v16)
  {
    v17 = (a1 + *(type metadata accessor for MediumWidgetView(0) + 20));
    v18 = v17[3];
    v46 = v17[2];
    v47 = v18;
    v19 = v17[1];
    v45[0] = *v17;
    v20 = v45[0];
    v45[1] = v19;
    v15[2] = v46;
    v15[3] = v18;
    *v15 = v20;
    v15[1] = v19;
    v21 = v15 + *(v13 + 20);
    v22 = enum case for BlendMode.plusLighter(_:);
    v23 = sub_100080F68();
    (*(*(v23 - 8) + 104))(v21, v22, v23);
    v24 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
    *&v21[v24[5]] = 0x4040000000000000;
    *&v21[v24[6]] = 1;
    *&v21[v24[7]] = 0x4010000000000000;
    v25 = &v21[v24[8]];
    *v25 = 0x69662E656D616C66;
    *(v25 + 1) = 0xEA00000000006C6CLL;
    v26 = v24[9];
    sub_10002B41C(v45, v44);
    *&v21[v26] = sub_100080E48();
    v27 = v24[10];
    *&v21[v27] = sub_100080CB8();
    v28 = v24[11];
    sub_100080C88();
    *&v21[v28] = v29;
    *&v21[v24[12]] = 0x4008000000000000;
    *&v21[v24[13]] = 0x4008000000000000;
    v30 = v24[14];
    *&v21[v30] = sub_100080CB8();
    v31 = v24[15];
    *&v21[v31] = sub_100080E48();
    v32 = v24[16];
    sub_100080E48();
    v33 = sub_100080E58();

    *&v21[v32] = v33;
    *&v21[v24[17]] = 0x4008000000000000;
    *&v21[v24[18]] = 0x4028000000000000;
    v34 = &v21[v24[19]];
    *v34 = 0xD000000000000015;
    *(v34 + 1) = 0x8000000100082B90;
    v35 = v24[20];
    v36 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    (*(*(v36 - 8) + 56))(&v21[v35], 1, 1, v36);
    *&v21[v24[21]] = 0x4062C00000000000;
    sub_10002B8D8(v15, v12, type metadata accessor for MediumReadingGoalView);
    swift_storeEnumTagMultiPayload();
    sub_10002B83C(&qword_1000ADB70, type metadata accessor for MediumReadingGoalView, &unk_100087F08);
    sub_100005C98(&qword_1000ADB78, &qword_1000ADB80, &unk_100087C70, &protocol conformance descriptor for ViewThatFits<A>);
    sub_100080AD8();
    return sub_10002B940(v15, type metadata accessor for MediumReadingGoalView);
  }

  else
  {
    v43[1] = v4;
    sub_100002840(&qword_1000ADBA0, &unk_100087C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A40;
    v39 = sub_100080BB8();
    *(inited + 32) = v39;
    v40 = sub_100080BD8();
    *(inited + 33) = v40;
    v41 = sub_100080BC8();
    sub_100080BC8();
    if (sub_100080BC8() != v39)
    {
      v41 = sub_100080BC8();
    }

    sub_100080BC8();
    if (sub_100080BC8() != v40)
    {
      v41 = sub_100080BC8();
    }

    *v7 = v41;
    v42 = sub_100002840(&qword_1000ADBA8, &qword_10008A0B0);
    sub_100029424(a1, &v7[*(v42 + 44)]);
    sub_10002B3AC(v7, v9);
    sub_1000055FC(v9, v12, &qword_1000ADB80, &unk_100087C70);
    swift_storeEnumTagMultiPayload();
    sub_10002B83C(&qword_1000ADB70, type metadata accessor for MediumReadingGoalView, &unk_100087F08);
    sub_100005C98(&qword_1000ADB78, &qword_1000ADB80, &unk_100087C70, &protocol conformance descriptor for ViewThatFits<A>);
    sub_100080AD8();
    return sub_100005B2C(v9, &qword_1000ADB80, &unk_100087C70);
  }
}

uint64_t sub_100029424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for LabelView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v31 - v8);
  v10 = sub_100002840(&qword_1000ADBB0, &unk_10008A0C0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v31 - v15);
  v17 = sub_100025CB8();
  v19 = v18;
  v20 = *(a1 + *(type metadata accessor for MediumWidgetView(0) + 24) + 8);
  *v16 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v21 = (v16 + v4[7]);
  *v21 = v17;
  v21[1] = v19;
  *(v16 + v4[8]) = v20;
  v22 = v16 + v4[9];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 8) = 256;
  *(v16 + *(v11 + 44)) = 257;
  swift_retain_n();
  v23 = sub_10002970C();
  v25 = v24;
  *v9 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = (v9 + v4[7]);
  *v26 = v23;
  v26[1] = v25;
  *(v9 + v4[8]) = v20;
  v27 = v9 + v4[9];
  *v27 = 0;
  *(v27 + 1) = 0;
  *(v27 + 8) = 256;
  sub_1000055FC(v16, v14, &qword_1000ADBB0, &unk_10008A0C0);
  sub_10002B8D8(v9, v7, type metadata accessor for LabelView);
  v28 = v32;
  sub_1000055FC(v14, v32, &qword_1000ADBB0, &unk_10008A0C0);
  v29 = sub_100002840(&qword_1000ADBB8, &qword_100087CB0);
  sub_10002B8D8(v7, v28 + *(v29 + 48), type metadata accessor for LabelView);
  sub_10002B940(v9, type metadata accessor for LabelView);
  sub_100005B2C(v16, &qword_1000ADBB0, &unk_10008A0C0);
  sub_10002B940(v7, type metadata accessor for LabelView);
  return sub_100005B2C(v14, &qword_1000ADBB0, &unk_10008A0C0);
}

uint64_t sub_10002970C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100029988@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100081588(38);

  v12 = 0xD000000000000024;
  v13 = 0x8000000100082AA0;
  v14._countAndFlagsBits = sub_10002A330();
  sub_1000812A8(v14);

  sub_1000802E8();

  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1000802E8();
  result = (v10)(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    result = (v10)(v7, 1, v8);
    if (result != 1)
    {
      return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_100029BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100081588(38);

  v12 = 0xD000000000000024;
  v13 = 0x8000000100082AA0;
  v14._countAndFlagsBits = sub_10002A5B0();
  sub_1000812A8(v14);

  sub_1000802E8();

  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1000802E8();
  result = (v10)(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    result = (v10)(v7, 1, v8);
    if (result != 1)
    {
      return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_100029DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100081588(38);

  v12 = 0xD000000000000024;
  v13 = 0x8000000100082AA0;
  v14._countAndFlagsBits = sub_10002A860();
  sub_1000812A8(v14);

  sub_1000802E8();

  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1000802E8();
  result = (v10)(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    result = (v10)(v7, 1, v8);
    if (result != 1)
    {
      return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002A030(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACA90, &qword_100085B50);
  __chkstk_darwin(v2);
  v4 = v21 - v3;
  v5 = type metadata accessor for BackgroundView(0);
  v6 = __chkstk_darwin(v5);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v11 = (v21 - v10);
  __chkstk_darwin(v9);
  v13 = (v21 - v12);
  v14 = (a1 + *(type metadata accessor for MediumWidgetView(0) + 20));
  v15 = v14[3];
  v21[2] = v14[2];
  v22 = v15;
  v16 = v14[1];
  v21[0] = *v14;
  v21[1] = v16;
  if (sub_1000573C8())
  {
    v17 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v18 = v22;
      if (qword_1000AC648 != -1)
      {
        swift_once();
      }

      sub_100005554(qword_1000B7F10, qword_1000B7F28);
      v19 = sub_10003ABAC(v18, v17, 1);
    }

    else
    {
      v19 = 0;
    }

    *v11 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v5 + 20)) = v19;
    sub_10002B194(v11, v13);
  }

  else
  {
    *v8 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v5 + 20)) = 0;
    v13 = v8;
  }

  sub_10002B8D8(v13, v4, type metadata accessor for BackgroundView);
  swift_storeEnumTagMultiPayload();
  sub_10002B83C(&qword_1000ACA70, type metadata accessor for BackgroundView, &unk_10008BBE4);
  sub_100080AD8();
  return sub_10002B940(v13, type metadata accessor for BackgroundView);
}

uint64_t sub_10002A330()
{
  v1 = v0;
  v2 = sub_100081038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for WidgetFamily.systemLarge(_:), v2);
  sub_10002B83C(&qword_1000ADB10, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v6 = sub_100081608();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 48);
  if (v10[2])
  {
    v11 = v10[8] == 0xD000000000000023 && 0x8000000100082090 == v10[9];
    if (v11 || (sub_100081618() & 1) != 0)
    {
      v12 = 48;
    }

    else
    {
      v12 = 49;
    }

    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_100081588(61);
    v14._countAndFlagsBits = 0x6146746567646977;
    v14._object = 0xED00003D796C696DLL;
    sub_1000812A8(v14);
    v15._countAndFlagsBits = v6;
    v15._object = v8;
    sub_1000812A8(v15);

    v16._countAndFlagsBits = 0x4B74656764697726;
    v16._object = 0xEC0000003D646E69;
    sub_1000812A8(v16);
    v17._countAndFlagsBits = 0x646957736B6F6F42;
    v17._object = 0xEB00000000746567;
    sub_1000812A8(v17);
    v18._countAndFlagsBits = 0x6573734173616826;
    v18._object = 0xEB000000003D7374;
    sub_1000812A8(v18);
    v19._countAndFlagsBits = v12;
    v19._object = 0xE100000000000000;
    sub_1000812A8(v19);

    v20._countAndFlagsBits = 0xD000000000000011;
    v20._object = 0x8000000100082B00;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = 49;
    v21._object = 0xE100000000000000;
    sub_1000812A8(v21);
    return v13[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A5B0()
{
  v1 = v0;
  v2 = sub_100081038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for WidgetFamily.systemMedium(_:), v2);
  sub_10002B83C(&qword_1000ADB10, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v6 = sub_100081608();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 32);
  if (v10[2])
  {
    v11 = v10[8] == 0xD000000000000023 && 0x8000000100082090 == v10[9];
    if (v11 || (sub_100081618() & 1) != 0)
    {
      v12 = 48;
      if ((sub_100062184() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 49;
      if ((sub_100062184() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (*(v1 + 24) > 1)
    {
      v13 = 49;
      goto LABEL_13;
    }

LABEL_11:
    v13 = 48;
LABEL_13:
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_100081588(61);
    v15._countAndFlagsBits = 0x6146746567646977;
    v15._object = 0xED00003D796C696DLL;
    sub_1000812A8(v15);
    v16._countAndFlagsBits = v6;
    v16._object = v8;
    sub_1000812A8(v16);

    v17._countAndFlagsBits = 0x4B74656764697726;
    v17._object = 0xEC0000003D646E69;
    sub_1000812A8(v17);
    v18._countAndFlagsBits = 0x646957736B6F6F42;
    v18._object = 0xEB00000000746567;
    sub_1000812A8(v18);
    v19._countAndFlagsBits = 0x6573734173616826;
    v19._object = 0xEB000000003D7374;
    sub_1000812A8(v19);
    v20._countAndFlagsBits = v12;
    v20._object = 0xE100000000000000;
    sub_1000812A8(v20);

    v21._countAndFlagsBits = 0xD000000000000011;
    v21._object = 0x8000000100082B00;
    sub_1000812A8(v21);
    v22._countAndFlagsBits = v13;
    v22._object = 0xE100000000000000;
    sub_1000812A8(v22);

    return v14[0];
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A860()
{
  v1 = v0;
  v2 = sub_100081038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for WidgetFamily.systemSmall(_:), v2);
  sub_10002B83C(&qword_1000ADB10, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v6 = sub_100081608();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (*(v1 + 64) == 0xD000000000000023 && 0x8000000100082090 == *(v1 + 72) || (sub_100081618() & 1) != 0)
  {
    v9 = 48;
  }

  else
  {
    v9 = 49;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_100081588(61);
  v12._countAndFlagsBits = 0x6146746567646977;
  v12._object = 0xED00003D796C696DLL;
  sub_1000812A8(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  sub_1000812A8(v13);

  v14._countAndFlagsBits = 0x4B74656764697726;
  v14._object = 0xEC0000003D646E69;
  sub_1000812A8(v14);
  v15._countAndFlagsBits = 0x646957736B6F6F42;
  v15._object = 0xEB00000000746567;
  sub_1000812A8(v15);
  v16._countAndFlagsBits = 0x6573734173616826;
  v16._object = 0xEB000000003D7374;
  sub_1000812A8(v16);
  v17._countAndFlagsBits = v9;
  v17._object = 0xE100000000000000;
  sub_1000812A8(v17);

  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x8000000100082B00;
  sub_1000812A8(v18);
  v19._countAndFlagsBits = 48;
  v19._object = 0xE100000000000000;
  sub_1000812A8(v19);
  return v11[0];
}

uint64_t sub_10002AADC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100081588(40);

  v12 = 0xD000000000000026;
  v13 = 0x8000000100082CB0;
  v14._countAndFlagsBits = sub_10002A330();
  sub_1000812A8(v14);

  sub_1000802E8();

  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1000802E8();
  result = (v10)(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    result = (v10)(v7, 1, v8);
    if (result != 1)
    {
      return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002AD14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100081588(40);

  v12 = 0xD000000000000026;
  v13 = 0x8000000100082CB0;
  v14._countAndFlagsBits = sub_10002A5B0();
  sub_1000812A8(v14);

  sub_1000802E8();

  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1000802E8();
  result = (v10)(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    result = (v10)(v7, 1, v8);
    if (result != 1)
    {
      return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002AF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100081588(40);

  v12 = 0xD000000000000026;
  v13 = 0x8000000100082CB0;
  v14._countAndFlagsBits = sub_10002A860();
  sub_1000812A8(v14);

  sub_1000802E8();

  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1000802E8();
  result = (v10)(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    result = (v10)(v7, 1, v8);
    if (result != 1)
    {
      return sub_100005B2C(v7, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002B194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B1F8()
{
  result = qword_1000ADB58;
  if (!qword_1000ADB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADB58);
  }

  return result;
}

uint64_t sub_10002B24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ADB40, &qword_100087C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B2C4()
{
  result = qword_1000ADB68;
  if (!qword_1000ADB68)
  {
    sub_100004FC8(&qword_1000ADB60, &qword_100087C68);
    sub_10002B83C(&qword_1000ADB70, type metadata accessor for MediumReadingGoalView, &unk_100087F08);
    sub_100005C98(&qword_1000ADB78, &qword_1000ADB80, &unk_100087C70, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADB68);
  }

  return result;
}

uint64_t sub_10002B3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ADB80, &unk_100087C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B49C()
{
  result = qword_1000ADC18;
  if (!qword_1000ADC18)
  {
    sub_100004FC8(&qword_1000ADBD8, &qword_100087CD0);
    sub_100005C98(&qword_1000ADC10, &qword_1000ADBD0, &qword_100087CC8, &protocol conformance descriptor for Link<A>);
    sub_10002B83C(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC18);
  }

  return result;
}

unint64_t sub_10002B584()
{
  result = qword_1000ADC20;
  if (!qword_1000ADC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC20);
  }

  return result;
}

unint64_t sub_10002B5D8()
{
  result = qword_1000ADC28;
  if (!qword_1000ADC28)
  {
    sub_100004FC8(&qword_1000ADBE8, &qword_100087CE0);
    sub_10002B83C(&qword_1000ADC08, type metadata accessor for MediumOneBookView, &unk_10008BCB4);
    sub_10002B49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC28);
  }

  return result;
}

unint64_t sub_10002B694()
{
  result = qword_1000ADC30;
  if (!qword_1000ADC30)
  {
    sub_100004FC8(&qword_1000ADC00, &qword_100087CF8);
    sub_10002B584();
    sub_10002B5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC30);
  }

  return result;
}

unint64_t sub_10002B720()
{
  result = qword_1000ADC38;
  if (!qword_1000ADC38)
  {
    sub_100004FC8(&qword_1000ADBC8, &qword_100087CC0);
    type metadata accessor for MediumEmptyStateView(255);
    sub_10002B83C(&qword_1000ADC40, type metadata accessor for MediumEmptyStateView, &unk_10008C838);
    swift_getOpaqueTypeConformance2();
    sub_10002B83C(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC38);
  }

  return result;
}

uint64_t sub_10002B83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002B8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10002BA54()
{
  result = qword_1000ADC48;
  if (!qword_1000ADC48)
  {
    sub_100004FC8(&qword_1000ADAE0, &qword_100087BD8);
    sub_100004FC8(&qword_1000ADAC0, &qword_100087B88);
    sub_100004FC8(&qword_1000ACA68, &qword_100085B00);
    sub_100005C98(&qword_1000ADAD8, &qword_1000ADAC0, &qword_100087B88, &protocol conformance descriptor for ZStack<A>);
    sub_1000050CC();
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC48);
  }

  return result;
}

uint64_t sub_10002BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080F68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CircularProgressView.Content(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10002BCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100080F68();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CircularProgressView.Content(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10002BE04(uint64_t a1)
{
  sub_100080F68();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CircularProgressView.Content(319);
    if (v2 <= 0x3F)
    {
      sub_10002BEDC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002BEDC()
{
  if (!qword_1000ADCC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000ADCC0);
    }
  }
}

uint64_t sub_10002BF50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
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
      v13 = sub_100080808();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10002C088(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
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
      v13 = sub_100080808();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10002C1CC(uint64_t a1)
{
  result = type metadata accessor for SmallReadingGoalView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = sub_100080808();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C27C@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_100080308();
  __chkstk_darwin(v3 - 8);
  v71 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002840(&qword_1000ADDC0, &qword_100087D90);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  __chkstk_darwin(v5);
  v72 = &v63 - v7;
  v8 = sub_100002840(&qword_1000ADDC8, &qword_100087D98);
  v9 = __chkstk_darwin(v8 - 8);
  v73 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v63 - v11;
  v12 = sub_100080B88();
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002840(&qword_1000ADDD0, &qword_100087DA0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = sub_100002840(&qword_1000ADDD8, &qword_100087DA8);
  __chkstk_darwin(v20 - 8);
  v22 = &v63 - v21;
  v64 = sub_100002840(&qword_1000ADDE0, &qword_100087DB0);
  __chkstk_darwin(v64);
  v24 = &v63 - v23;
  v25 = sub_100002840(&qword_1000ADDE8, &qword_100087DB8);
  v69 = *(v25 - 8);
  v70 = v25;
  v26 = __chkstk_darwin(v25);
  v68 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v77 = &v63 - v28;
  *v22 = sub_100080A28();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v29 = &v22[*(sub_100002840(&qword_1000ADDF0, &qword_100087DC0) + 44)];
  *v19 = sub_100080A68();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v30 = sub_100002840(&qword_1000ADDF8, &qword_100087DC8);
  sub_10002CA78(a1, &v19[*(v30 + 44)]);
  sub_1000055FC(v19, v17, &qword_1000ADDD0, &qword_100087DA0);
  sub_1000055FC(v17, v29, &qword_1000ADDD0, &qword_100087DA0);
  v31 = v29 + *(sub_100002840(&qword_1000ADE00, &qword_100087DD0) + 48);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_100005B2C(v19, &qword_1000ADDD0, &qword_100087DA0);
  sub_100005B2C(v17, &qword_1000ADDD0, &qword_100087DA0);
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v22, v24, &qword_1000ADDD8, &qword_100087DA8);
  v32 = v65;
  v33 = &v24[*(v64 + 36)];
  v34 = v87;
  *(v33 + 4) = v86;
  *(v33 + 5) = v34;
  *(v33 + 6) = v88;
  v35 = v83;
  *v33 = v82;
  *(v33 + 1) = v35;
  v36 = v85;
  *(v33 + 2) = v84;
  *(v33 + 3) = v36;
  sub_100080B78();
  sub_100080F48();
  sub_10002E0CC();
  sub_10002B1F8();
  v37 = v77;
  sub_100080DF8();
  (*(v66 + 8))(v32, v67);
  sub_100005B2C(v24, &qword_1000ADDE0, &qword_100087DB0);
  v38 = a1[7];
  v104 = a1[6];
  v105 = v38;
  v106 = *(a1 + 16);
  v39 = a1[3];
  v100 = a1[2];
  v101 = v39;
  v40 = a1[5];
  v102 = a1[4];
  v103 = v40;
  v41 = a1[1];
  v98 = *a1;
  v99 = v41;
  sub_10002636C(v71);
  v79 = a1;
  sub_100002840(&qword_1000ADE18, &qword_100087DD8);
  sub_10002E18C();
  v42 = v72;
  sub_100080CE8();
  v43 = a1[7];
  v95 = a1[6];
  v96 = v43;
  v97 = *(a1 + 16);
  v44 = a1[3];
  v91 = a1[2];
  v92 = v44;
  v45 = a1[5];
  v93 = a1[4];
  v94 = v45;
  v46 = a1[1];
  v89 = *a1;
  v90 = v46;
  v47 = sub_1000575D8();
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  v80 = v49;
  v81 = v50;
  sub_100005C98(&qword_1000ADE58, &qword_1000ADDC0, &qword_100087D90, &protocol conformance descriptor for Link<A>);
  sub_1000057D0();
  v51 = v78;
  v52 = v74;
  sub_100080DD8();

  (*(v75 + 8))(v42, v52);
  v54 = v68;
  v53 = v69;
  v55 = *(v69 + 16);
  v56 = v37;
  v57 = v70;
  v55(v68, v56, v70);
  v58 = v73;
  sub_1000055FC(v51, v73, &qword_1000ADDC8, &qword_100087D98);
  v59 = v76;
  v55(v76, v54, v57);
  v60 = sub_100002840(&qword_1000ADE60, &unk_100087DF8);
  sub_1000055FC(v58, &v59[*(v60 + 48)], &qword_1000ADDC8, &qword_100087D98);
  sub_100005B2C(v78, &qword_1000ADDC8, &qword_100087D98);
  v61 = *(v53 + 8);
  v61(v77, v57);
  sub_100005B2C(v58, &qword_1000ADDC8, &qword_100087D98);
  return (v61)(v54, v57);
}

uint64_t sub_10002CA78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100080308();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BookCoverView(0);
  __chkstk_darwin(v6);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v9 = __chkstk_darwin(v51);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - v12;
  __chkstk_darwin(v11);
  v47 = &v47 - v14;
  v15 = a1[5];
  v16 = a1[7];
  v68 = a1[6];
  v69 = v16;
  v17 = a1[3];
  v64 = a1[2];
  v65 = v17;
  v18 = a1[5];
  v66 = a1[4];
  v67 = v18;
  v19 = a1[1];
  v62 = *a1;
  v63 = v19;
  v60[2] = v66;
  v60[3] = v15;
  v60[4] = v68;
  v70 = *(a1 + 16);
  v20 = v70;
  v21 = *(&v69 + 1);
  v61 = *(a1 + 112);
  v60[0] = v64;
  v60[1] = v17;
  v48 = v5;
  sub_1000256C0(v60, v5);
  v22 = a1[4];
  v23 = a1[6];
  v57 = a1[5];
  v58 = v23;
  v59 = *(a1 + 112);
  v24 = a1[3];
  *&v54[88] = a1[2];
  v55 = v24;
  v56 = v22;
  v25 = sub_1000112D4();
  v26 = a1[5];
  v73 = a1[4];
  v74 = v26;
  v75 = a1[6];
  v76 = *(a1 + 112);
  v27 = a1[3];
  v71 = a1[2];
  v72 = v27;
  if (v20)
  {
    if (__PAIR128__(v20, v21) == v73)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_100081618();
    }
  }

  else
  {
    v28 = 0;
  }

  *v8 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v49 + 32))(v8 + v6[5], v48, v50);
  *(v8 + v6[6]) = v25 & 1;
  v29 = v8 + v6[7];
  v30 = v74;
  *(v29 + 2) = v73;
  *(v29 + 3) = v30;
  *(v29 + 4) = v75;
  v29[80] = v76;
  v31 = v72;
  *v29 = v71;
  *(v29 + 1) = v31;
  *(v8 + v6[8]) = v28 & 1;
  *(v8 + v6[9]) = 1;
  sub_10000C328(&v71, v54);
  v32 = sub_100080C38();
  type metadata accessor for SmallReadingGoalView(0);
  type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  sub_100080798();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000C384(v8, v13);
  v41 = &v13[*(v51 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = v47;
  sub_10000C1E0(v13, v47, &qword_1000ACE38, &qword_100086000);
  v43 = v52;
  sub_1000055FC(v42, v52, &qword_1000ACE38, &qword_100086000);
  v44 = v53;
  sub_1000055FC(v43, v53, &qword_1000ACE38, &qword_100086000);
  v45 = v44 + *(sub_100002840(&qword_1000ADEA0, &qword_100087EB0) + 48);
  *v45 = 0;
  *(v45 + 8) = 0;
  sub_100005B2C(v42, &qword_1000ACE38, &qword_100086000);
  return sub_100005B2C(v43, &qword_1000ACE38, &qword_100086000);
}

uint64_t sub_10002CEDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100002840(&qword_1000ADE50, &qword_100087DF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100002840(&qword_1000ADE40, &qword_100087DE8);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_100002840(&qword_1000ADE30, &qword_100087DE0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  sub_100002840(&qword_1000ADBA0, &unk_100087C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A40;
  v13 = sub_100080BB8();
  *(inited + 32) = v13;
  v14 = sub_100080BD8();
  *(inited + 33) = v14;
  v15 = sub_100080BC8();
  sub_100080BC8();
  if (sub_100080BC8() != v13)
  {
    v15 = sub_100080BC8();
  }

  sub_100080BC8();
  if (sub_100080BC8() != v14)
  {
    v15 = sub_100080BC8();
  }

  *v5 = v15;
  v16 = sub_100002840(&qword_1000ADE68, &qword_100087E08);
  sub_10002D2C0(a1, &v5[*(v16 + 44)]);
  v17 = type metadata accessor for SmallReadingGoalView(0);
  sub_1000807F8();
  sub_100080F58();
  sub_1000807E8();
  sub_10000C1E0(v5, v8, &qword_1000ADE50, &qword_100087DF0);
  v18 = &v8[*(v6 + 36)];
  v19 = v35;
  *v18 = v34;
  *(v18 + 1) = v19;
  *(v18 + 2) = v36;
  v20 = a1 + *(v17 + 20);
  v21 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v22 = *&v20[*(v21 + 28)];
  v23 = *&v20[*(v21 + 32)];
  sub_100080F48();
  if (v22 > v23)
  {
    sub_100081458();
    v24 = sub_100080BA8();
    sub_100080618();
  }

  sub_1000808F8();
  sub_10000C1E0(v8, v11, &qword_1000ADE40, &qword_100087DE8);
  v25 = &v11[*(v9 + 36)];
  v26 = v40;
  v27 = v42;
  v28 = v43;
  *(v25 + 4) = v41;
  *(v25 + 5) = v27;
  *(v25 + 6) = v28;
  v29 = v38;
  *v25 = v37;
  *(v25 + 1) = v29;
  *(v25 + 2) = v39;
  *(v25 + 3) = v26;
  v30 = v33;
  sub_10000C1E0(v11, v33, &qword_1000ADE30, &qword_100087DE0);
  result = sub_100002840(&qword_1000ADE18, &qword_100087DD8);
  *(v30 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10002D2C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100002840(&qword_1000ADE70, &qword_100087E10);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v55 = &v49 - v8;
  v9 = __chkstk_darwin(v7);
  v60 = &v49 - v10;
  v11 = __chkstk_darwin(v9);
  v54 = &v49 - v12;
  v13 = __chkstk_darwin(v11);
  v53 = &v49 - v14;
  v15 = __chkstk_darwin(v13);
  v59 = &v49 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v49 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v49 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v49 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v49 - v30;
  __chkstk_darwin(v29);
  v33 = &v49 - v32;
  *v33 = sub_100080A28();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v58 = v33;
  v34 = sub_100002840(&qword_1000ADE78, &qword_100087E18);
  sub_10002D80C(a1, 0, &v33[*(v34 + 44)]);
  *&v33[*(v4 + 44)] = 257;
  *v31 = sub_100080A28();
  *(v31 + 1) = 0;
  v31[16] = 0;
  sub_10002DC2C(a1, 0, &v31[*(v34 + 44)]);
  *&v31[*(v4 + 44)] = 257;
  v52 = v31;
  *v28 = sub_100080A28();
  *(v28 + 1) = 0;
  v28[16] = 0;
  sub_10002D80C(a1, 1, &v28[*(v34 + 44)]);
  *&v28[*(v4 + 44)] = 257;
  v51 = v28;
  *v25 = sub_100080A28();
  *(v25 + 1) = 0;
  v25[16] = 0;
  sub_10002DC2C(a1, 1, &v25[*(v34 + 44)]);
  *&v25[*(v4 + 44)] = 257;
  v50 = v25;
  v35 = v22;
  *v22 = sub_100080A28();
  *(v22 + 1) = 0;
  v22[16] = 0;
  sub_10002D80C(a1, 1, &v22[*(v34 + 44)]);
  *&v22[*(v4 + 44)] = 257;
  v49 = v22;
  *v19 = sub_100080A28();
  *(v19 + 1) = 0;
  v19[16] = 0;
  sub_10002DC2C(a1, 1, &v19[*(v34 + 44)]);
  *&v19[*(v4 + 44)] = 257;
  v36 = v59;
  sub_1000055FC(v58, v59, &qword_1000ADE70, &qword_100087E10);
  v37 = v31;
  v38 = v53;
  sub_1000055FC(v37, v53, &qword_1000ADE70, &qword_100087E10);
  v39 = v28;
  v40 = v54;
  sub_1000055FC(v39, v54, &qword_1000ADE70, &qword_100087E10);
  v41 = v25;
  v42 = v60;
  sub_1000055FC(v41, v60, &qword_1000ADE70, &qword_100087E10);
  v43 = v55;
  sub_1000055FC(v35, v55, &qword_1000ADE70, &qword_100087E10);
  v44 = v56;
  sub_1000055FC(v19, v56, &qword_1000ADE70, &qword_100087E10);
  v45 = v36;
  v46 = v57;
  sub_1000055FC(v45, v57, &qword_1000ADE70, &qword_100087E10);
  v47 = sub_100002840(&qword_1000ADE80, &unk_100087E20);
  sub_1000055FC(v38, v46 + v47[12], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v40, v46 + v47[16], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v42, v46 + v47[20], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v43, v46 + v47[24], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v44, v46 + v47[28], &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v19, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v49, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v50, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v51, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v52, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v58, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v44, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v43, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v60, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v40, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v38, &qword_1000ADE70, &qword_100087E10);
  return sub_100005B2C(v59, &qword_1000ADE70, &qword_100087E10);
}

uint64_t sub_10002D80C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v54 = a3;
  v52 = sub_100002840(&qword_1000ADE88, &qword_100087F80) - 8;
  v4 = __chkstk_darwin(v52);
  v53 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v49[-v6];
  v8 = sub_100002840(&qword_1000ADE90, &qword_100087E30);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v51 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v49[-v12];
  v14 = *a1;
  v15 = a1 + *(type metadata accessor for SmallReadingGoalView(0) + 20);
  v16 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v17 = *&v15[v16[11]];
  v18 = *&v15[v16[12]];
  v19 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v20 = v19[7];
  v21 = sub_100080F68();
  (*(*(v21 - 8) + 16))(&v13[v20], v15, v21);
  v22 = *&v15[v16[13]];
  v23 = *&v15[v16[14]];
  sub_10002E35C(&v15[v16[9]], &v13[v19[10]]);
  *v13 = v14;
  *(v13 + 1) = v17;
  *(v13 + 2) = v18;
  *&v13[v19[8]] = v22;
  *&v13[v19[9]] = v23;
  v13[v19[11]] = v50;

  LOBYTE(v18) = sub_100080C38();
  sub_100080798();
  v24 = &v13[*(v9 + 44)];
  *v24 = v18;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = *(a1 + 7);
  v61 = *(a1 + 6);
  v62 = v29;
  v63 = a1[16];
  v30 = *(a1 + 3);
  v57 = *(a1 + 2);
  v58 = v30;
  v31 = *(a1 + 5);
  v59 = *(a1 + 4);
  v60 = v31;
  v32 = *(a1 + 1);
  v55 = *a1;
  v56 = v32;
  v33 = sub_1000575D8();
  v35 = v34;
  v36 = *&v15[v16[10]];

  v37 = sub_100080B08();
  *v7 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for LabelView(0);
  v39 = (v7 + v38[5]);
  *v39 = v33;
  v39[1] = v35;
  *(v7 + v38[6]) = v36;
  v40 = v7 + v38[7];
  *v40 = v37;
  *(v40 + 1) = 0;
  *(v40 + 8) = 1;
  v41 = *&v15[v16[5]];
  KeyPath = swift_getKeyPath();
  v43 = v7 + *(v52 + 44);
  *v43 = KeyPath;
  *(v43 + 1) = v41;
  v43[16] = 0;
  v44 = v51;
  sub_1000055FC(v13, v51, &qword_1000ADE90, &qword_100087E30);
  v45 = v53;
  sub_1000055FC(v7, v53, &qword_1000ADE88, &qword_100087F80);
  v46 = v54;
  sub_1000055FC(v44, v54, &qword_1000ADE90, &qword_100087E30);
  v47 = sub_100002840(&qword_1000ADE98, &unk_100087EA0);
  sub_1000055FC(v45, v46 + *(v47 + 48), &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v7, &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v13, &qword_1000ADE90, &qword_100087E30);
  sub_100005B2C(v45, &qword_1000ADE88, &qword_100087F80);
  return sub_100005B2C(v44, &qword_1000ADE90, &qword_100087E30);
}

uint64_t sub_10002DC2C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v54 = a3;
  v52 = sub_100002840(&qword_1000ADE88, &qword_100087F80) - 8;
  v4 = __chkstk_darwin(v52);
  v53 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v49[-v6];
  v8 = sub_100002840(&qword_1000ADE90, &qword_100087E30);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v51 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v49[-v12];
  v14 = *a1;
  v15 = a1 + *(type metadata accessor for SmallReadingGoalView(0) + 20);
  v16 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v17 = *&v15[v16[11]];
  v18 = *&v15[v16[12]];
  v19 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v20 = v19[7];
  v21 = sub_100080F68();
  (*(*(v21 - 8) + 16))(&v13[v20], v15, v21);
  v22 = *&v15[v16[13]];
  v23 = *&v15[v16[14]];
  sub_10002E35C(&v15[v16[9]], &v13[v19[10]]);
  *v13 = v14;
  *(v13 + 1) = v17;
  *(v13 + 2) = v18;
  *&v13[v19[8]] = v22;
  *&v13[v19[9]] = v23;
  v13[v19[11]] = v50;

  LOBYTE(v18) = sub_100080C38();
  sub_100080798();
  v24 = &v13[*(v9 + 44)];
  *v24 = v18;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = *(a1 + 7);
  v61 = *(a1 + 6);
  v62 = v29;
  v63 = a1[16];
  v30 = *(a1 + 3);
  v57 = *(a1 + 2);
  v58 = v30;
  v31 = *(a1 + 5);
  v59 = *(a1 + 4);
  v60 = v31;
  v32 = *(a1 + 1);
  v55 = *a1;
  v56 = v32;
  v33 = sub_1000575D8();
  v35 = v34;
  v36 = *&v15[v16[10]];

  v37 = sub_100080B08();
  *v7 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for LabelView(0);
  v39 = (v7 + v38[5]);
  *v39 = v33;
  v39[1] = v35;
  *(v7 + v38[6]) = v36;
  v40 = v7 + v38[7];
  *v40 = v37;
  *(v40 + 1) = 0;
  *(v40 + 8) = 1;
  v41 = *&v15[v16[5]];
  KeyPath = swift_getKeyPath();
  v43 = v7 + *(v52 + 44);
  *v43 = KeyPath;
  *(v43 + 1) = v41;
  v43[16] = 0;
  v44 = v51;
  sub_1000055FC(v13, v51, &qword_1000ADE90, &qword_100087E30);
  v45 = v53;
  sub_1000055FC(v7, v53, &qword_1000ADE88, &qword_100087F80);
  v46 = v54;
  sub_1000055FC(v44, v54, &qword_1000ADE90, &qword_100087E30);
  v47 = sub_100002840(&qword_1000ADE98, &unk_100087EA0);
  sub_1000055FC(v45, v46 + *(v47 + 48), &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v7, &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v13, &qword_1000ADE90, &qword_100087E30);
  sub_100005B2C(v45, &qword_1000ADE88, &qword_100087F80);
  return sub_100005B2C(v44, &qword_1000ADE90, &qword_100087E30);
}

uint64_t sub_10002E054@<X0>(uint64_t a1@<X0>, uint64_t a9@<X8>)
{
  v12 = sub_100080A78();
  v13 = v9 + *(a1 + 20);
  v14 = *&v13[*(type metadata accessor for SmallReadingGoalView.ViewConfiguration(0) + 68)];
  *a9 = v12;
  *(a9 + 8) = v14;
  *(a9 + 16) = 0;
  v15 = sub_100002840(&qword_1000ADDB8, &qword_100087D88);
  return sub_10002C27C(v9, (a9 + *(v15 + 44)));
}

unint64_t sub_10002E0CC()
{
  result = qword_1000ADE08;
  if (!qword_1000ADE08)
  {
    sub_100004FC8(&qword_1000ADDE0, &qword_100087DB0);
    sub_100005C98(&qword_1000ADE10, &qword_1000ADDD8, &qword_100087DA8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE08);
  }

  return result;
}

unint64_t sub_10002E18C()
{
  result = qword_1000ADE20;
  if (!qword_1000ADE20)
  {
    sub_100004FC8(&qword_1000ADE18, &qword_100087DD8);
    sub_10002E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE20);
  }

  return result;
}

unint64_t sub_10002E218()
{
  result = qword_1000ADE28;
  if (!qword_1000ADE28)
  {
    sub_100004FC8(&qword_1000ADE30, &qword_100087DE0);
    sub_10002E2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE28);
  }

  return result;
}

unint64_t sub_10002E2A4()
{
  result = qword_1000ADE38;
  if (!qword_1000ADE38)
  {
    sub_100004FC8(&qword_1000ADE40, &qword_100087DE8);
    sub_100005C98(&qword_1000ADE48, &qword_1000ADE50, &qword_100087DF0, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE38);
  }

  return result;
}

uint64_t sub_10002E35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircularProgressView.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E3C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000809C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E3FC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000809C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080F68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for CircularProgressView.Content(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 80);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002E624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100080F68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for CircularProgressView.Content(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 80);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10002E76C(uint64_t a1)
{
  result = sub_100080F68();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CircularProgressView.Content(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E854(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002E914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002E9D8(uint64_t a1)
{
  result = type metadata accessor for MediumReadingGoalView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002EA70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = sub_100002840(&qword_1000AE020, &qword_100087F60);
  v154 = *(v3 - 8);
  v155 = v3;
  __chkstk_darwin(v3);
  v146 = &v135 - v4;
  v5 = sub_100002840(&qword_1000AE028, &qword_100087F68);
  v144 = *(v5 - 8);
  v145 = v5;
  v6 = __chkstk_darwin(v5);
  v143 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v159 = &v135 - v8;
  v161 = type metadata accessor for LabelView(0);
  __chkstk_darwin(v161);
  v139 = (&v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_100002840(&qword_1000AE030, &qword_100087F70);
  v10 = __chkstk_darwin(v141);
  v158 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v140 = &v135 - v13;
  __chkstk_darwin(v12);
  v157 = &v135 - v14;
  v15 = sub_100002840(&qword_1000AE038, &qword_100087F78);
  v16 = __chkstk_darwin(v15 - 8);
  v153 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v152 = &v135 - v18;
  v160 = sub_100002840(&qword_1000ADE88, &qword_100087F80);
  v19 = __chkstk_darwin(v160);
  v142 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v151 = (&v135 - v22);
  __chkstk_darwin(v21);
  v162 = (&v135 - v23);
  v149 = type metadata accessor for ReadingProgressIconView(0);
  __chkstk_darwin(v149);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100002840(&qword_1000AE040, &qword_100087F88);
  v27 = v26 - 8;
  v28 = __chkstk_darwin(v26);
  v150 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v135 - v30;
  v148 = a1;
  v32 = *a1;
  v33 = a1 + *(type metadata accessor for MediumReadingGoalView(0) + 20);
  v34 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
  v35 = *&v33[v34[15]];
  v36 = *&v33[v34[16]];
  v37 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v38 = v37[7];
  v39 = sub_100080F68();
  (*(*(v39 - 8) + 16))(&v25[v38], v33, v39);
  v40 = *&v33[v34[17]];
  v41 = *&v33[v34[18]];
  sub_10002E35C(&v33[v34[20]], &v25[v37[10]]);
  *v25 = v32;
  *(v25 + 1) = v35;
  *(v25 + 2) = v36;
  *&v25[v37[8]] = v40;
  *&v25[v37[9]] = v41;
  v25[v37[11]] = 0;
  sub_10002F784();

  sub_100080D48();
  sub_10002F7DC(v25);
  LOBYTE(v25) = sub_100080C38();
  sub_100080798();
  v42 = *(v27 + 44);
  v149 = v31;
  v43 = &v31[v42];
  *v43 = v25;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v48 = v148;
  v49 = v148[1];
  v176 = *v148;
  v177 = v49;
  v50 = v148[3];
  v178 = v148[2];
  v179 = v50;
  v147 = sub_10005790C();
  v52 = v51;
  v53 = *&v33[v34[14]];

  v54 = sub_100080B08();
  v55 = *&v33[v34[21]];
  v56 = v54;
  KeyPath = swift_getKeyPath();
  v58 = v162;
  *v162 = KeyPath;
  v59 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v60 = v161;
  v61 = v58;
  v62 = v53;
  v63 = (v61 + *(v161 + 20));
  *v63 = v147;
  v63[1] = v52;
  v64 = v60;
  *(v61 + v60[6]) = v53;
  v65 = v61 + v60[7];
  v66 = v61;
  *v65 = v56;
  *(v65 + 1) = v55;
  *(v65 + 8) = 0;
  v67 = v34;
  v68 = v34[6];
  v69 = v33;
  v70 = *&v33[v68];
  v71 = swift_getKeyPath();
  v72 = v66 + *(v160 + 36);
  *v72 = v71;
  *(v72 + 8) = v70;
  *(v72 + 16) = 0;
  v73 = v48[1];
  v172 = *v48;
  v173 = v73;
  v74 = v48[3];
  v174 = v48[2];
  v175 = v74;
  v75 = sub_100025984();
  if (v76)
  {
    v136 = v76;
    v137 = v75;
    v148 = v70;
    v77 = swift_getKeyPath();
    v78 = v139;
    *v139 = v77;
    v147 = v59;
    swift_storeEnumTagMultiPayload();
    *(v78 + v64[5]) = xmmword_100087EC0;
    *(v78 + v64[6]) = v62;
    v79 = v78 + v64[7];
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 256;
    sub_100002840(&qword_1000AD950, &qword_1000879D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A40;
    swift_retain_n();
    v81 = sub_100080C18();
    *(inited + 32) = v81;
    v82 = sub_100080C38();
    *(inited + 33) = v82;
    v83 = sub_100080C28();
    sub_100080C28();
    if (sub_100080C28() != v81)
    {
      v83 = sub_100080C28();
    }

    sub_100080C28();
    v84 = sub_100080C28();
    v138 = v62;
    if (v84 != v82)
    {
      v83 = sub_100080C28();
    }

    sub_100080798();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v140;
    sub_10002F848(v78, v140);
    v94 = v93 + *(v141 + 36);
    *v94 = v83;
    *(v94 + 8) = v86;
    *(v94 + 16) = v88;
    *(v94 + 24) = v90;
    *(v94 + 32) = v92;
    *(v94 + 40) = 0;
    v95 = v157;
    sub_10002F8AC(v93, v157);

    v96 = sub_100080E88();
    v97 = *&v69[v67[9]];
    v98 = swift_getKeyPath();

    v99 = sub_100080CA8();
    v100 = swift_getKeyPath();
    v101 = sub_100080C38();
    sub_100080798();
    v169 = 0;
    *&v163 = v96;
    *(&v163 + 1) = v98;
    *&v164 = v97;
    *(&v164 + 1) = v100;
    *&v165 = v99;
    BYTE8(v165) = v101;
    *&v166 = v102;
    *(&v166 + 1) = v103;
    *&v167 = v104;
    *(&v167 + 1) = v105;
    v168 = 0;
    sub_100002840(&qword_1000AE058, &qword_100088068);
    sub_10002F92C();
    v106 = v159;
    sub_100080D48();
    v170[2] = v165;
    v170[3] = v166;
    v170[4] = v167;
    v171 = v168;
    v170[0] = v163;
    v170[1] = v164;
    sub_100005B2C(v170, &qword_1000AE058, &qword_100088068);
    v107 = swift_getKeyPath();
    v108 = v151;
    *v151 = v107;
    swift_storeEnumTagMultiPayload();
    v109 = v161;
    v110 = (v108 + *(v161 + 20));
    v111 = v136;
    *v110 = v137;
    v110[1] = v111;
    *(v108 + *(v109 + 24)) = v138;
    v112 = v108 + *(v109 + 28);
    *v112 = 0;
    *(v112 + 8) = 0;
    *(v112 + 16) = 256;
    v113 = swift_getKeyPath();
    v114 = v108 + *(v160 + 36);
    v115 = v148;
    *v114 = v113;
    *(v114 + 8) = v115;
    *(v114 + 16) = 0;
    v116 = v158;
    sub_1000055FC(v95, v158, &qword_1000AE030, &qword_100087F70);
    v118 = v143;
    v117 = v144;
    v119 = *(v144 + 16);
    v120 = v145;
    v119(v143, v106, v145);
    v121 = v142;
    sub_1000055FC(v108, v142, &qword_1000ADE88, &qword_100087F80);
    v122 = v146;
    sub_1000055FC(v116, v146, &qword_1000AE030, &qword_100087F70);
    v123 = sub_100002840(&qword_1000AE078, &qword_100088090);
    v119((v122 + *(v123 + 48)), v118, v120);
    sub_1000055FC(v121, v122 + *(v123 + 64), &qword_1000ADE88, &qword_100087F80);
    sub_100005B2C(v108, &qword_1000ADE88, &qword_100087F80);
    v124 = *(v117 + 8);
    v124(v159, v120);
    sub_100005B2C(v157, &qword_1000AE030, &qword_100087F70);
    sub_100005B2C(v121, &qword_1000ADE88, &qword_100087F80);
    v124(v118, v120);
    sub_100005B2C(v158, &qword_1000AE030, &qword_100087F70);
    v125 = v152;
    sub_10002FA70(v122, v152);
    (*(v154 + 56))(v125, 0, 1, v155);
  }

  else
  {
    v125 = v152;
    (*(v154 + 56))(v152, 1, 1, v155);
    v108 = v151;
  }

  v126 = v149;
  v127 = v150;
  sub_1000055FC(v149, v150, &qword_1000AE040, &qword_100087F88);
  v128 = v162;
  sub_1000055FC(v162, v108, &qword_1000ADE88, &qword_100087F80);
  v129 = v153;
  sub_1000055FC(v125, v153, &qword_1000AE038, &qword_100087F78);
  v130 = v156;
  sub_1000055FC(v127, v156, &qword_1000AE040, &qword_100087F88);
  v131 = v125;
  v132 = sub_100002840(&qword_1000AE050, &unk_100087FF8);
  sub_1000055FC(v108, v130 + v132[12], &qword_1000ADE88, &qword_100087F80);
  sub_1000055FC(v129, v130 + v132[16], &qword_1000AE038, &qword_100087F78);
  v133 = v130 + v132[20];
  *v133 = 0;
  *(v133 + 8) = 1;
  sub_100005B2C(v131, &qword_1000AE038, &qword_100087F78);
  sub_100005B2C(v128, &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v126, &qword_1000AE040, &qword_100087F88);
  sub_100005B2C(v129, &qword_1000AE038, &qword_100087F78);
  sub_100005B2C(v108, &qword_1000ADE88, &qword_100087F80);
  return sub_100005B2C(v127, &qword_1000AE040, &qword_100087F88);
}

uint64_t sub_10002F734@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_100080A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100002840(&qword_1000AE018, &qword_100087F58);
  return sub_10002EA70(v2, a2 + *(v4 + 44));
}

unint64_t sub_10002F784()
{
  result = qword_1000AE048;
  if (!qword_1000AE048)
  {
    type metadata accessor for ReadingProgressIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE048);
  }

  return result;
}

uint64_t sub_10002F7DC(uint64_t a1)
{
  v2 = type metadata accessor for ReadingProgressIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE030, &qword_100087F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002F92C()
{
  result = qword_1000AE060;
  if (!qword_1000AE060)
  {
    sub_100004FC8(&qword_1000AE058, &qword_100088068);
    sub_10002F9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE060);
  }

  return result;
}

unint64_t sub_10002F9B8()
{
  result = qword_1000AE068;
  if (!qword_1000AE068)
  {
    sub_100004FC8(&qword_1000AE070, &unk_100088070);
    sub_100024650();
    sub_100005C98(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE068);
  }

  return result;
}

uint64_t sub_10002FA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE020, &qword_100087F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10002FB24(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_10002FB68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002FBB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002FC58@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v20 = sub_100080B68();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002840(&qword_1000AE090, &qword_100088168);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v21 = sub_100002840(&qword_1000AE098, &qword_100088170);
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = *(v1 + 224);
  *v7 = sub_100080A28();
  *(v7 + 1) = v11;
  v7[16] = 0;
  v12 = sub_100002840(&qword_1000AE0A0, &qword_100088178);
  sub_10002FFA8(v1, &v7[*(v12 + 44)]);
  v13 = *(v1 + 128);
  v29 = *(v1 + 112);
  v30 = v13;
  v31 = *(v1 + 144);
  v32 = *(v1 + 160);
  v14 = *(v1 + 96);
  v27 = *(v1 + 80);
  v28 = v14;
  v38 = v32;
  v35 = v29;
  v36 = v13;
  v37 = v31;
  v33 = v27;
  v34 = v14;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v15 = sub_100005C98(&qword_1000AE0A8, &qword_1000AE090, &qword_100088168, &protocol conformance descriptor for HStack<A>);
  sub_100080E08();
  (*(v2 + 8))(v4, v20);
  sub_100005B2C(v7, &qword_1000AE090, &qword_100088168);
  v25 = sub_100056778(0);
  v26 = v16;
  v23 = v5;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v17 = v21;
  sub_100080DD8();

  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_10002FFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_100002840(&qword_1000AE0B0, &qword_100088180);
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v85 = &v74 - v4;
  v5 = sub_100002840(&qword_1000AE0B8, &qword_100088188);
  v6 = __chkstk_darwin(v5 - 8);
  v78 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v74 - v8;
  v80 = sub_100080308();
  v9 = *(v80 - 8);
  v10 = __chkstk_darwin(v80);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v74 - v12;
  v14 = type metadata accessor for BookCoverView(0);
  __chkstk_darwin(v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_100002840(&qword_1000AD168, &qword_100088190);
  __chkstk_darwin(v81);
  v18 = &v74 - v17;
  v82 = sub_100002840(&qword_1000AE0C0, &qword_100088198);
  v19 = __chkstk_darwin(v82);
  v74 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v84 = &v74 - v24;
  v25 = *(a1 + 48);
  v100[3] = *(a1 + 32);
  v100[4] = v25;
  v26 = *(a1 + 80);
  v101 = *(a1 + 64);
  v27 = *(a1 + 16);
  v100[1] = *a1;
  v100[2] = v27;
  v28 = *(a1 + 128);
  v29 = *(a1 + 144);
  v30 = *(a1 + 96);
  v90 = *(a1 + 112);
  v91 = v28;
  v92 = v29;
  v93 = *(a1 + 160);
  v88 = v26;
  v89 = v30;
  sub_10000C328(&v88, v87);
  sub_100025138(&v88, v13);
  v96 = v90;
  v97 = v91;
  v98 = v92;
  v99 = v93;
  v94 = v88;
  v95 = v89;
  v31 = sub_1000112D4();
  if (*(&v101 + 1))
  {
    if (v101 == v96)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_100081618();
    }
  }

  else
  {
    v32 = 0;
  }

  *v16 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 32))(v16 + v14[5], v13, v80);
  *(v16 + v14[6]) = v31 & 1;
  v33 = v16 + v14[7];
  v34 = v91;
  *(v33 + 32) = v90;
  *(v33 + 48) = v34;
  *(v33 + 64) = v92;
  *(v33 + 80) = v93;
  v35 = v89;
  *v33 = v88;
  *(v33 + 16) = v35;
  *(v16 + v14[8]) = v32 & 1;
  *(v16 + v14[9]) = 0;
  sub_100080F58();
LABEL_7:
  sub_1000808F8();
  sub_10000C384(v16, v18);
  v36 = (v18 + *(v81 + 36));
  v37 = v87[5];
  v36[4] = v87[4];
  v36[5] = v37;
  v36[6] = v87[6];
  v38 = v87[1];
  *v36 = v87[0];
  v36[1] = v38;
  v39 = v87[3];
  v36[2] = v87[2];
  v36[3] = v39;
  sub_10000C1E0(v18, v23, &qword_1000AD168, &qword_100088190);
  *&v23[*(v82 + 36)] = 1;
  sub_10000C1E0(v23, v84, &qword_1000AE0C0, &qword_100088198);
  v40 = sub_100025138(&v88, v83);
  __chkstk_darwin(v40);
  v16 = sub_100002840(&qword_1000AE0C8, &qword_1000881D8);
  sub_100005C98(&qword_1000AE0D0, &qword_1000AE0C8, &qword_1000881D8, &protocol conformance descriptor for VStack<A>);
  sub_100080CE8();
  sub_100002840(&qword_1000AE0D8, &unk_1000881E0);
  v41 = swift_allocObject();
  v100[0] = v94;
  *(v41 + 32) = v94;
  sub_1000055FC(v100, v86, &qword_1000ACE48, &unk_100086040);
  v18 = 0;
  *(v41 + 48) = sub_100056928(0);
  *(v41 + 56) = v42;
  v43 = _swiftEmptyArrayStorage;
LABEL_8:
  v44 = (v41 + 40 + 16 * v18);
  while (++v18 != 3)
  {
    v45 = v44 + 2;
    v46 = *v44;
    v44 += 2;
    if (v46)
    {
      v47 = *(v45 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_10003EE4C(0, *(v43 + 2) + 1, 1, v43);
      }

      v49 = *(v43 + 2);
      v48 = *(v43 + 3);
      v16 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v43 = sub_10003EE4C((v48 > 1), v49 + 1, 1, v43);
      }

      *(v43 + 2) = v16;
      v50 = &v43[16 * v49];
      *(v50 + 4) = v47;
      *(v50 + 5) = v46;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_100002840(&qword_1000ACE48, &unk_100086040);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = 0;
  v23 = *(v43 + 2);
  v52 = _swiftEmptyArrayStorage;
LABEL_17:
  v53 = &v43[16 * v51 + 40];
  while (v23 != v51)
  {
    if (v51 >= *(v43 + 2))
    {
      __break(1u);
      sub_100081458();
      v73 = sub_100080BA8();
      sub_100080618();

      goto LABEL_7;
    }

    ++v51;
    v54 = *(v53 - 1);
    v16 = *v53;
    v53 += 2;
    v55 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v55 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100061B34(0, v52[2] + 1, 1);
        v52 = v86[0];
      }

      v58 = v52[2];
      v57 = v52[3];
      v18 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        sub_100061B34((v57 > 1), v58 + 1, 1);
        v52 = v86[0];
      }

      v52[2] = v18;
      v59 = &v52[2 * v58];
      v59[4] = v54;
      v59[5] = v16;
      goto LABEL_17;
    }
  }

  v86[0] = v52;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
  v60 = sub_100081128();
  v62 = v61;

  v86[0] = v60;
  v86[1] = v62;
  sub_100005C98(&qword_1000AE0E0, &qword_1000AE0B0, &qword_100088180, &protocol conformance descriptor for Link<A>);
  sub_1000057D0();
  v63 = v76;
  v64 = v77;
  v65 = v85;
  sub_100080DD8();

  (*(v75 + 8))(v65, v63);
  v66 = v84;
  v67 = v74;
  sub_1000055FC(v84, v74, &qword_1000AE0C0, &qword_100088198);
  v68 = v78;
  sub_1000055FC(v64, v78, &qword_1000AE0B8, &qword_100088188);
  v69 = v79;
  sub_1000055FC(v67, v79, &qword_1000AE0C0, &qword_100088198);
  v70 = sub_100002840(&qword_1000AE0E8, &qword_1000881F8);
  sub_1000055FC(v68, v69 + *(v70 + 48), &qword_1000AE0B8, &qword_100088188);
  v71 = v69 + *(v70 + 64);
  sub_100005B2C(v64, &qword_1000AE0B8, &qword_100088188);
  sub_100005B2C(v66, &qword_1000AE0C0, &qword_100088198);
  *v71 = 0;
  *(v71 + 8) = 1;
  sub_100005B2C(v68, &qword_1000AE0B8, &qword_100088188);
  return sub_100005B2C(v67, &qword_1000AE0C0, &qword_100088198);
}

uint64_t sub_100030A14@<X0>(uint64_t a1@<X0>, uint64_t a9@<X8>)
{
  v11 = sub_100080A78();
  v12 = *(a1 + 216);
  *a9 = v11;
  *(a9 + 8) = v12;
  *(a9 + 16) = 0;
  v13 = sub_100002840(&qword_1000AE0F0, &qword_100088200);
  return sub_100030A6C(a1, a9 + *(v13 + 44));
}

uint64_t sub_100030A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LabelView(0);
  v5 = (v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v31 - v9);
  v11 = *(a1 + 128);
  v41 = *(a1 + 112);
  v42 = v11;
  v43 = *(a1 + 144);
  v44 = *(a1 + 160);
  v12 = *(a1 + 96);
  v39 = *(a1 + 80);
  v40 = v12;
  v50 = v44;
  v47 = v41;
  v48 = v11;
  v49 = v43;
  v45 = v39;
  v46 = v12;
  v13 = *(&v39 + 1);
  v35 = v39;

  v14 = sub_1000112D4();
  v15 = 200;
  if (v14)
  {
    v15 = 208;
  }

  v34 = *(a1 + v15);
  KeyPath = swift_getKeyPath();
  v17 = sub_100056928(0);
  v32 = v18;
  v33 = v17;
  v19 = *(a1 + 184);
  v20 = *(a1 + 216);
  v37[2] = *(a1 + 200);
  v37[3] = v20;
  v38 = *(a1 + 232);
  v37[0] = *(a1 + 168);
  v37[1] = v19;
  v21 = *(&v19 + 1);
  sub_100030D34(v37, &v36);
  v22 = sub_100080B28();
  v23 = *(&v37[0] + 1);
  v24 = v22;
  *v10 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v25 = (v10 + v5[7]);
  v26 = v32;
  *v25 = v33;
  v25[1] = v26;
  *(v10 + v5[8]) = v21;
  v27 = v10 + v5[9];
  *v27 = v24;
  *(v27 + 1) = v23;
  *(v27 + 8) = 0;
  sub_100030D6C(v10, v8);
  v28 = v34;
  *a2 = v35;
  *(a2 + 8) = v13;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  v29 = sub_100002840(&qword_1000AE0F8, &qword_100088238);
  sub_100030D6C(v8, a2 + *(v29 + 48));

  sub_100030DD0(v10);
  sub_100030DD0(v8);
}

uint64_t sub_100030D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030DD0(uint64_t a1)
{
  v2 = type metadata accessor for LabelView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100030E2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100030E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100030E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100030EFC()
{
  result = qword_1000AE100;
  if (!qword_1000AE100)
  {
    sub_100004FC8(&qword_1000AE108, &qword_100088278);
    sub_100004FC8(&qword_1000AE090, &qword_100088168);
    sub_100005C98(&qword_1000AE0A8, &qword_1000AE090, &qword_100088168, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE100);
  }

  return result;
}

uint64_t sub_10003100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031098(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100031144(uint64_t a1)
{
  sub_10003119C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10003119C(uint64_t a1)
{
  if (!qword_1000AE190)
  {
    __chkstk_darwin(a1);
    type metadata accessor for CircularProgressView.ColorStyle(255);
    sub_100080CD8();
    sub_100080C58();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000AE190);
    }
  }
}

uint64_t sub_100031320(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002840(&qword_1000AE1B8, &unk_1000882C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for CircularProgressView.Content(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[9]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100080F68();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100031508(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002840(&qword_1000AE1B8, &unk_1000882C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for CircularProgressView.Content(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    v17 = sub_100080F68();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_1000316FC(uint64_t a1)
{
  sub_100031808(319, &unk_1000AE228, &type metadata accessor for LayoutDirection);
  if (v1 <= 0x3F)
  {
    sub_100031808(319, &qword_1000AD788, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CircularProgressView.Content(319);
      if (v3 <= 0x3F)
      {
        sub_100080F68();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100031808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000807C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000318AC(uint64_t a1)
{
  sub_100031920(319);
  if (v1 <= 0x3F)
  {
    sub_10003199C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100031920(uint64_t a1)
{
  if (!qword_1000AE300)
  {
    sub_100080F68();
    sub_1000807B8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000AE300);
    }
  }
}

void *sub_10003199C()
{
  result = qword_1000AE308;
  if (!qword_1000AE308)
  {
    result = &type metadata for Color;
    atomic_store(&type metadata for Color, &qword_1000AE308);
  }

  return result;
}

uint64_t sub_1000319E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AE400, &qword_100088410);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000055FC(v2, &v14 - v9, &qword_1000AE400, &qword_100088410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100080868();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100031BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000809F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CircularProgressView(0);
  sub_1000055FC(v1 + *(v10 + 20), v9, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100031DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v221 = a4;
  v222 = a3;
  v224 = a2;
  v219 = sub_100002840(&qword_1000AE348, &qword_100088350);
  __chkstk_darwin(v219);
  v220 = &v171 - v6;
  v194 = sub_100002840(&qword_1000AE350, &qword_100088358);
  __chkstk_darwin(v194);
  v195 = &v171 - v7;
  v8 = sub_100081008();
  v179 = *(v8 - 8);
  v180 = v8;
  v9 = __chkstk_darwin(v8);
  v176 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v175 = &v171 - v11;
  v12 = sub_100002840(&qword_1000AE358, &qword_100088360);
  __chkstk_darwin(v12 - 8);
  v188 = &v171 - v13;
  v197 = sub_100002840(&qword_1000AE360, &qword_100088368);
  v191 = *(v197 - 8);
  v14 = __chkstk_darwin(v197);
  v177 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v182 = &v171 - v16;
  v178 = sub_100002840(&qword_1000AE368, &qword_100088370);
  __chkstk_darwin(v178);
  v183 = &v171 - v17;
  v192 = sub_100002840(&qword_1000AE370, &qword_100088378);
  v18 = __chkstk_darwin(v192);
  v181 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v184 = &v171 - v20;
  v21 = sub_1000807B8();
  v189 = *(v21 - 8);
  v190 = v21;
  __chkstk_darwin(v21);
  v196 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_100002840(&qword_1000AE378, &qword_100088380);
  __chkstk_darwin(v218);
  v193 = &v171 - v23;
  v24 = sub_100080C58();
  v215 = *(v24 - 8);
  v216 = v24;
  __chkstk_darwin(v24);
  v213 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_100080CD8();
  v211 = *(v214 - 8);
  __chkstk_darwin(v214);
  v209 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for CircularProgressView.ColorStyle(0);
  v27 = __chkstk_darwin(v186);
  v187 = (&v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v206 = &v171 - v29;
  v30 = type metadata accessor for CircularProgressView.Content(0);
  __chkstk_darwin(v30 - 8);
  v205 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100002840(&qword_1000AE380, &qword_100088388);
  v33 = __chkstk_darwin(v32 - 8);
  v217 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v212 = &v171 - v35;
  v36 = sub_100080868();
  v203 = *(v36 - 8);
  v204 = v36;
  v37 = __chkstk_darwin(v36);
  v39 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v202 = &v171 - v40;
  v210 = sub_100002840(&qword_1000AE388, &qword_100088390);
  v208 = *(v210 - 8);
  v41 = __chkstk_darwin(v210);
  v207 = &v171 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v227 = &v171 - v43;
  v44 = sub_100002840(&qword_1000AE390, &qword_100088398);
  v45 = v44 - 8;
  v46 = __chkstk_darwin(v44);
  v226 = &v171 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v171 - v48;
  v50 = type metadata accessor for CircularProgressView(0);
  v51 = *(a2 + v50[12]);
  v52 = 0.0;
  sub_1000807D8();
  v53 = v249;
  v54 = v251;
  v55 = v252;
  v56 = v253;

  v57 = sub_100080F48();
  *&v237 = v53 * 0.5;
  *(&v237 + 1) = v53;
  *&v238 = v250;
  *(&v238 + 1) = v54;
  *&v239 = v55;
  *(&v239 + 1) = v56;
  *&v240 = a1;
  WORD4(v240) = 256;
  *&v241 = v57;
  *(&v241 + 1) = v58;
  sub_100002840(&qword_1000AE398, &qword_1000883A0);
  sub_100005C98(&qword_1000AE3A0, &qword_1000AE398, &qword_1000883A0, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
  sub_100080D48();
  *&v254[4] = v239;
  *&v254[6] = v240;
  *&v254[8] = v241;
  *v254 = v237;
  *&v254[2] = v238;
  sub_100005B2C(v254, &qword_1000AE398, &qword_1000883A0);
  v59 = *(v45 + 44);
  v60 = sub_100080F68();
  v61 = *(v60 - 8);
  v62 = *(v61 + 16);
  v225 = v49;
  v185 = v60;
  v174 = v61 + 16;
  v172 = v61;
  v173 = v62;
  (v62)(&v49[v59], v222);
  v63 = v51 * 0.5;
  v223 = v50;
  v64 = v224;
  v65 = *(v224 + v50[6]);
  v201 = *(v224 + v50[9]);
  sub_1000807D8();

  v66 = sub_100080F48();
  v199 = v67;
  v200 = v66;
  v68 = v202;
  v69 = v64;
  sub_1000319E8(v202);
  v70 = enum case for LayoutDirection.leftToRight(_:);
  v72 = v203;
  v71 = v204;
  v198 = *(v203 + 104);
  v198(v39, enum case for LayoutDirection.leftToRight(_:), v204);
  LOBYTE(v59) = sub_100080858();
  v73 = *(v72 + 8);
  v73(v39, v71);
  v73(v68, v71);
  if (v59)
  {
    v74 = -1.57079633;
  }

  else
  {
    v74 = -4.71238898;
  }

  sub_100080F98();
  v76 = v75;
  v78 = v77;
  sub_1000319E8(v68);
  v198(v39, v70, v71);
  v79 = sub_100080858();
  v73(v39, v71);
  v80 = v205;
  v73(v68, v71);
  if ((v79 & 1) == 0)
  {
    v52 = 3.14159265;
  }

  sub_100080F98();
  v228 = *&v63;
  *&v229[0] = v65;
  *(v229 + 8) = *&v254[11];
  *(&v229[1] + 8) = *&v254[13];
  *(&v229[2] + 1) = v254[15];
  *&v230 = v201;
  WORD4(v230) = 256;
  *&v231 = v200;
  *(&v231 + 1) = v199;
  *&v232 = v74;
  *(&v232 + 1) = v76;
  *&v233 = v78;
  *(&v233 + 1) = v52;
  v234 = xmmword_1000882A0;
  *&v235 = 0;
  *(&v235 + 1) = v81;
  *v236 = v82;
  *&v236[8] = xmmword_1000882A0;
  sub_100002840(&qword_1000AE3A8, &qword_1000883A8);
  sub_10003356C();
  sub_100080D48();
  v245 = v234;
  v246 = v235;
  v247 = *v236;
  v248 = *&v236[16];
  v241 = v230;
  v242 = v231;
  v243 = v232;
  v244 = v233;
  v237 = v228;
  v238 = v229[0];
  v239 = v229[1];
  v240 = v229[2];
  sub_100005B2C(&v237, &qword_1000AE3A8, &qword_1000883A8);
  sub_100033944(v69 + v223[7], v80, type metadata accessor for CircularProgressView.Content);
  v83 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  if ((*(*(v83 - 1) + 48))(v80, 1, v83) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1000336B0();
    v84 = v212;
    sub_100080AD8();
  }

  else
  {
    v86 = *v80;
    v85 = *(v80 + 1);
    v87 = v83[16];
    v88 = v83[20];
    v89 = &v80[v83[12]];
    v90 = v206;
    sub_1000338E0(v89, v206);
    (*(v211 + 32))(v209, &v80[v87], v214);
    v91 = v215;
    v92 = &v80[v88];
    v93 = v213;
    v94 = v216;
    (*(v215 + 32))(v213, v92, v216);
    v95 = v187;
    sub_100033944(v90, v187, type metadata accessor for CircularProgressView.ColorStyle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v222 = *v95;
      *&v228 = v86;
      *(&v228 + 1) = v85;
      sub_1000057D0();
      v96 = sub_100080D28();
      v98 = v97;
      v99 = v93;
      v101 = v100;
      v102 = v188;
      (*(v91 + 16))(v188, v99, v94);
      (*(v91 + 56))(v102, 0, 1, v94);
      sub_100080C98();
      sub_100005B2C(v102, &qword_1000AE358, &qword_100088360);
      sub_100080CA8();

      v103 = sub_100080D18();
      v105 = v104;
      v107 = v106;

      sub_10000EF24(v96, v98, v101 & 1);

      v108 = sub_100080CF8();
      v110 = v109;
      v112 = v111;
      v114 = v113;

      sub_10000EF24(v103, v105, v107 & 1);

      *&v228 = v108;
      *(&v228 + 1) = v110;
      LOBYTE(v229[0]) = v112 & 1;
      *(&v229[0] + 1) = v114;
      v115 = v177;
      sub_100080D48();
      sub_10000EF24(v108, v110, v112 & 1);

      v116 = v191;
      v117 = v197;
      (*(v191 + 16))(v195, v115, v197);
      swift_storeEnumTagMultiPayload();
      sub_10003376C();
      *&v228 = &type metadata for Text;
      *(&v228 + 1) = &protocol witness table for Text;
      v118 = v216;
      swift_getOpaqueTypeConformance2();
      v119 = v193;
      sub_100080AD8();
      v120 = v215;

      v121 = v117;
      v122 = v213;
      (*(v116 + 8))(v115, v121);
      v123 = v209;
      v124 = v220;
    }

    else
    {
      LODWORD(v205) = *v95;
      v125 = sub_100002840(&qword_1000AE3F8, &qword_1000883D0);
      v126 = *(v125 + 64);
      (*(v172 + 8))(v95 + *(v125 + 48), v185);
      (*(v189 + 32))(v196, v95 + v126, v190);
      *&v228 = v86;
      *(&v228 + 1) = v85;
      sub_1000057D0();
      v127 = sub_100080D28();
      v129 = v128;
      v131 = v130;
      v132 = v188;
      (*(v91 + 16))(v188, v93, v94);
      (*(v91 + 56))(v132, 0, 1, v94);
      sub_100080C98();
      sub_100005B2C(v132, &qword_1000AE358, &qword_100088360);
      sub_100080CA8();

      v133 = sub_100080D18();
      v135 = v134;
      v137 = v136;

      sub_10000EF24(v127, v129, v131 & 1);

      v138 = v175;
      sub_100031BE8(v175);
      v139 = v176;
      sub_100080FE8();
      LOBYTE(v126) = sub_100080FC8();
      v140 = *(v179 + 8);
      v141 = v139;
      v142 = v180;
      v140(v141, v180);
      v140(v138, v142);
      if (v126)
      {
        v143 = sub_100080B08();
        v124 = v220;
      }

      else
      {
        v124 = v220;
        v143 = v205;
      }

      LODWORD(v228) = v143;
      v144 = sub_100080D08();
      v146 = v145;
      v148 = v147;
      v150 = v149;
      sub_10000EF24(v133, v135, v137 & 1);

      *&v228 = v144;
      *(&v228 + 1) = v146;
      LOBYTE(v229[0]) = v148 & 1;
      *(&v229[0] + 1) = v150;
      v151 = v182;
      sub_100080D48();
      sub_10000EF24(v144, v146, v148 & 1);

      v152 = v183;
      v173(&v183[*(v178 + 36)], v222, v185);
      (*(v191 + 32))(v152, v151, v197);
      KeyPath = swift_getKeyPath();
      v154 = v181;
      v155 = &v181[*(v192 + 36)];
      v156 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
      v158 = v189;
      v157 = v190;
      (*(v189 + 16))(v155 + *(v156 + 28), v196, v190);
      *v155 = KeyPath;
      sub_10000C1E0(v152, v154, &qword_1000AE368, &qword_100088370);
      v159 = v184;
      sub_10000C1E0(v154, v184, &qword_1000AE370, &qword_100088378);
      sub_1000055FC(v159, v195, &qword_1000AE370, &qword_100088378);
      swift_storeEnumTagMultiPayload();
      sub_10003376C();
      *&v228 = &type metadata for Text;
      *(&v228 + 1) = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v119 = v193;
      sub_100080AD8();
      sub_100005B2C(v159, &qword_1000AE370, &qword_100088378);
      (*(v158 + 8))(v196, v157);
      v120 = v215;
      v118 = v216;
      v122 = v213;
      v123 = v209;
    }

    sub_1000055FC(v119, v124, &qword_1000AE378, &qword_100088380);
    swift_storeEnumTagMultiPayload();
    sub_1000336B0();
    v84 = v212;
    sub_100080AD8();
    sub_100005B2C(v119, &qword_1000AE378, &qword_100088380);
    (*(v120 + 8))(v122, v118);
    (*(v211 + 8))(v123, v214);
    sub_1000339AC(v206);
  }

  v160 = v226;
  sub_1000055FC(v225, v226, &qword_1000AE390, &qword_100088398);
  v162 = v207;
  v161 = v208;
  v163 = *(v208 + 16);
  v164 = v210;
  v163(v207, v227, v210);
  v165 = v217;
  sub_1000055FC(v84, v217, &qword_1000AE380, &qword_100088388);
  v166 = v221;
  sub_1000055FC(v160, v221, &qword_1000AE390, &qword_100088398);
  v167 = v84;
  v168 = sub_100002840(&qword_1000AE3F0, &qword_1000883C8);
  v163((v166 + *(v168 + 48)), v162, v164);
  sub_1000055FC(v165, v166 + *(v168 + 64), &qword_1000AE380, &qword_100088388);
  sub_100005B2C(v167, &qword_1000AE380, &qword_100088388);
  v169 = *(v161 + 8);
  v169(v227, v164);
  sub_100005B2C(v225, &qword_1000AE390, &qword_100088398);
  sub_100005B2C(v165, &qword_1000AE380, &qword_100088388);
  v169(v162, v164);
  return sub_100005B2C(v226, &qword_1000AE390, &qword_100088398);
}

double sub_100033498@<D0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[11];
  v5 = *(v2 + a1[10]);
  *a2 = sub_100080F48();
  a2[1] = v6;
  v7 = sub_100002840(&qword_1000AE338, &qword_100088340);
  sub_100031DF0(v5, v2, v2 + v4, a2 + *(v7 + 44));
  sub_100080F48();
  sub_1000807E8();
  v8 = (a2 + *(sub_100002840(&qword_1000AE340, &qword_100088348) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

unint64_t sub_10003356C()
{
  result = qword_1000AE3B0;
  if (!qword_1000AE3B0)
  {
    sub_100004FC8(&qword_1000AE3A8, &qword_1000883A8);
    sub_1000335F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3B0);
  }

  return result;
}

unint64_t sub_1000335F8()
{
  result = qword_1000AE3B8;
  if (!qword_1000AE3B8)
  {
    sub_100004FC8(&qword_1000AE3C0, &qword_1000883B0);
    sub_100005C98(&qword_1000AE3C8, &qword_1000AE3D0, &unk_1000883B8, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3B8);
  }

  return result;
}

unint64_t sub_1000336B0()
{
  result = qword_1000AE3D8;
  if (!qword_1000AE3D8)
  {
    sub_100004FC8(&qword_1000AE378, &qword_100088380);
    sub_10003376C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3D8);
  }

  return result;
}

unint64_t sub_10003376C()
{
  result = qword_1000AE3E0;
  if (!qword_1000AE3E0)
  {
    sub_100004FC8(&qword_1000AE370, &qword_100088378);
    sub_100033824();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3E0);
  }

  return result;
}

unint64_t sub_100033824()
{
  result = qword_1000AE3E8;
  if (!qword_1000AE3E8)
  {
    sub_100004FC8(&qword_1000AE368, &qword_100088370);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3E8);
  }

  return result;
}

uint64_t sub_1000338E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircularProgressView.ColorStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000339AC(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressView.ColorStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100033A14()
{
  result = qword_1000AE408;
  if (!qword_1000AE408)
  {
    sub_100004FC8(&qword_1000AE340, &qword_100088348);
    sub_100005C98(&qword_1000AE410, &qword_1000AE418, &qword_100088418, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE408);
  }

  return result;
}

uint64_t sub_100033AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080CD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100080C58();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100033BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100080CD8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100080C58();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100033D00(uint64_t a1)
{
  result = sub_100080CD8();
  if (v2 <= 0x3F)
  {
    result = sub_100080C58();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100033DB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = sub_100080808();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100033F9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_100080808();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_100034190(uint64_t a1)
{
  sub_1000342EC(319, &qword_1000AC9F8, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10003429C();
    if (v2 <= 0x3F)
    {
      sub_1000342EC(319, &qword_1000AD788, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ReadingGoalView.ViewConfiguration(319);
        if (v4 <= 0x3F)
        {
          sub_100080808();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10003429C()
{
  if (!qword_1000AE528)
  {
    v0 = sub_1000807C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE528);
    }
  }
}

void sub_1000342EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000807C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003435C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000809F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReadingGoalView(0);
  sub_1000055FC(v1 + *(v10 + 24), v9, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100034564(unint64_t *a1, unint64_t a2, double a3)
{
  v6 = sub_100002840(&qword_1000AE5B0, &qword_100088508);
  __chkstk_darwin(v6);
  v8 = (&v23 - v7);
  v9 = sub_100002840(&qword_1000AE5B8, &qword_100088510);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_100002840(&qword_1000AE5A0, &qword_100088500);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = *a1;
  if (v15)
  {
    *v14 = sub_100080A28();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v16 = sub_100002840(&qword_1000AE5C0, &qword_100088518);
    sub_1000348A4(a2, v15, &v14[*(v16 + 44)], a3);
    sub_1000055FC(v14, v11, &qword_1000AE5A0, &qword_100088500);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AE598, &qword_1000AE5A0, &qword_100088500, &protocol conformance descriptor for HStack<A>);
    sub_100005C98(&qword_1000AE5A8, &qword_1000AE5B0, &qword_100088508, &protocol conformance descriptor for ZStack<A>);
    sub_100080AD8();
    v17 = v14;
    v18 = &qword_1000AE5A0;
    v19 = &qword_100088500;
  }

  else
  {
    *v8 = sub_100080F48();
    v8[1] = v20;
    v21 = sub_100002840(&qword_1000AE5C8, &qword_100088520);
    sub_100037E98(a2, 0, v8 + *(v21 + 44), a3);
    sub_1000055FC(v8, v11, &qword_1000AE5B0, &qword_100088508);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AE598, &qword_1000AE5A0, &qword_100088500, &protocol conformance descriptor for HStack<A>);
    sub_100005C98(&qword_1000AE5A8, &qword_1000AE5B0, &qword_100088508, &protocol conformance descriptor for ZStack<A>);
    sub_100080AD8();
    v17 = v8;
    v18 = &qword_1000AE5B0;
    v19 = &qword_100088508;
  }

  return sub_100005B2C(v17, v18, v19);
}

void *sub_1000348A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_100002840(&qword_1000AE5D0, &qword_100088528);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = sub_100002840(&qword_1000AE5E8, &qword_100088540);
  v15 = __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  result = type metadata accessor for ReadingGoalView(0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = *(a1 + *(result + 7));
  if (*(v21 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = v17;
  v41 = v13;
  v42 = a3;
  v43 = v11;
  v22 = v21 + 48 * a2;
  sub_100034CC0(*(v22 + 73), &v49);
  v23 = v51;
  v24 = DWORD2(v51);
  v47 = a2;
  v25 = BYTE12(v51);
  v26 = *(sub_100002840(&qword_1000AE5E0, &qword_100088538) + 36);
  v46 = v14;
  v27 = enum case for BlendMode.plusLighter(_:);
  v28 = sub_100080F68();
  v29 = *(*(v28 - 8) + 104);
  v45 = v49;
  v44 = v50;
  v29(&v19[v26], v27, v28);
  v30 = v44;
  *v19 = v45;
  *(v19 + 1) = v30;
  *(v19 + 4) = v23;
  *(v19 + 10) = v24;
  v19[44] = v25;
  type metadata accessor for ReadingGoalView.ViewConfiguration(0);
  sub_100080F48();
  result = sub_1000807E8();
  v31 = &v19[*(v46 + 36)];
  v32 = v51;
  *(v31 + 1) = v50;
  *(v31 + 2) = v32;
  *v31 = v49;
  if (*(v21 + 16) > v47)
  {
    *&v53[10] = *(v22 + 58);
    v33 = *(v22 + 48);
    v52 = *(v22 + 32);
    *v53 = v33;
    v54 = v52;
    v55 = v33;
    v56 = v33;
    v57 = v52;
    v34 = v53[25];
    sub_1000218B8(&v57, v48);
    sub_1000218B8(&v56, v48);
    v35 = v41;
    sub_1000353C8(&v52, v34, v41, a4);
    sub_100039654(&v57);
    sub_100039654(&v56);
    v36 = v40;
    sub_1000055FC(v19, v40, &qword_1000AE5E8, &qword_100088540);
    v37 = v43;
    sub_1000055FC(v35, v43, &qword_1000AE5D0, &qword_100088528);
    v38 = v42;
    sub_1000055FC(v36, v42, &qword_1000AE5E8, &qword_100088540);
    v39 = sub_100002840(&qword_1000AE6E8, &qword_100088648);
    sub_1000055FC(v37, v38 + *(v39 + 48), &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v35, &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v19, &qword_1000AE5E8, &qword_100088540);
    sub_100005B2C(v37, &qword_1000AE5D0, &qword_100088528);
    return sub_100005B2C(v36, &qword_1000AE5E8, &qword_100088540);
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_100034CC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1u)
  {
    sub_100080E48();
    sub_100080E58();

    sub_100002840(&qword_1000AE698, &qword_100088620);
    sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100080AD8();
    v6 = 0x10000;
    if (!BYTE10(v13))
    {
      v6 = 0;
    }

    *(&v13 + 1) = v6 | WORD4(v13);
    v15 = 0;
    v14 = 0uLL;
    v16 = 0;
    sub_100002840(&qword_1000AE6B0, &qword_100088628);
    sub_100002840(&qword_1000AE6C8, &qword_100088630);
    sub_100039C3C();
    sub_100039CEC();
    sub_100080AD8();
    sub_100002840(&qword_1000AE690, &qword_100088618);
    sub_100039BB0();
    sub_100080AD8();
  }

  else
  {
    if (a1 == 2 || a1 == 3)
    {
      sub_100002840(&qword_1000AE6E0, &qword_100088640);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100085A40;
      sub_100080E48();
      v4 = sub_100080E58();

      *(v3 + 32) = v4;
      sub_100080E48();
      v5 = sub_100080E58();

      *(v3 + 40) = v5;
      sub_100080FA8();
      sub_100080FB8();
      sub_100080F38();
      sub_100080818();
      sub_100002840(&qword_1000AE6D8, &qword_100088638);
      sub_100005C98(&qword_1000AE6D0, &qword_1000AE6D8, &qword_100088638, &protocol conformance descriptor for _ShapeView<A, B>);
      sub_100080AD8();
      v13 = v8;
      v14 = v9;
      v15 = v10;
      LOWORD(v16) = v11;
      BYTE2(v16) = v12 != 0;
      HIBYTE(v16) = 1;
      sub_100002840(&qword_1000AE6B0, &qword_100088628);
      sub_100002840(&qword_1000AE6C8, &qword_100088630);
      sub_100039C3C();
      sub_100039CEC();
      sub_100080AD8();
      sub_100002840(&qword_1000AE690, &qword_100088618);
      sub_100002840(&qword_1000AE698, &qword_100088620);
      sub_100039BB0();
      sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620, &protocol conformance descriptor for _ShapeView<A, B>);
    }

    else
    {
      sub_100080E38();
      sub_100002840(&qword_1000AE690, &qword_100088618);
      sub_100002840(&qword_1000AE698, &qword_100088620);
      sub_100039BB0();
      sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620, &protocol conformance descriptor for _ShapeView<A, B>);
    }

    sub_100080AD8();
  }

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 44) = v17;
  return result;
}

uint64_t sub_1000353C8@<X0>(char **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v322 = a2;
  v331 = a1;
  v328 = a3;
  v299 = sub_100002840(&qword_1000AE5F8, &qword_100088550);
  __chkstk_darwin(v299);
  v300 = &v267 - v6;
  v327 = sub_100002840(&qword_1000AE600, &qword_100088558);
  __chkstk_darwin(v327);
  v301 = &v267 - v7;
  v8 = type metadata accessor for CircularProgressView.Content(0);
  v9 = __chkstk_darwin(v8 - 8);
  v284 = (&v267 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v303 = (&v267 - v11);
  v309 = type metadata accessor for CircularProgressView(0);
  v12 = __chkstk_darwin(v309);
  v285 = (&v267 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v305 = (&v267 - v14);
  v313 = sub_100002840(&qword_1000AE608, &qword_100088560);
  v312 = *(v313 - 8);
  v15 = __chkstk_darwin(v313);
  v286 = &v267 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v307 = &v267 - v17;
  v323 = sub_100002840(&qword_1000AE610, &qword_100088568);
  v18 = __chkstk_darwin(v323);
  v287 = &v267 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v288 = &v267 - v21;
  v22 = __chkstk_darwin(v20);
  v289 = &v267 - v23;
  v24 = __chkstk_darwin(v22);
  v304 = &v267 - v25;
  v26 = __chkstk_darwin(v24);
  v306 = &v267 - v27;
  __chkstk_darwin(v26);
  v308 = &v267 - v28;
  v324 = sub_100002840(&qword_1000AE618, &qword_100088570);
  __chkstk_darwin(v324);
  v326 = &v267 - v29;
  v310 = sub_100002840(&qword_1000AE620, &qword_100088578);
  __chkstk_darwin(v310);
  v311 = &v267 - v30;
  v325 = sub_100002840(&qword_1000AE628, &qword_100088580);
  __chkstk_darwin(v325);
  v314 = &v267 - v31;
  v319 = sub_100080B68();
  v318 = *(v319 - 8);
  __chkstk_darwin(v319);
  v317 = &v267 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for FilledCircleWithLabel(0);
  v33 = __chkstk_darwin(v294);
  v274 = (&v267 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33);
  v272 = (&v267 - v35);
  v296 = sub_100002840(&qword_1000AE630, &qword_100088588);
  v295 = *(v296 - 8);
  v36 = __chkstk_darwin(v296);
  v278 = &v267 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v275 = &v267 - v38;
  v298 = sub_100002840(&qword_1000AE638, &qword_100088590);
  v297 = *(v298 - 8);
  v39 = __chkstk_darwin(v298);
  v279 = &v267 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v277 = &v267 - v41;
  v321 = sub_100002840(&qword_1000AE640, &qword_100088598);
  v42 = __chkstk_darwin(v321);
  v280 = &v267 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v281 = &v267 - v45;
  v46 = __chkstk_darwin(v44);
  v283 = &v267 - v47;
  v48 = __chkstk_darwin(v46);
  v273 = &v267 - v49;
  v50 = __chkstk_darwin(v48);
  v276 = &v267 - v51;
  __chkstk_darwin(v50);
  v282 = &v267 - v52;
  v335 = sub_100080F68();
  v341 = *(v335 - 8);
  v53 = __chkstk_darwin(v335);
  v270 = &v267 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v293 = &v267 - v56;
  v57 = __chkstk_darwin(v55);
  v271 = &v267 - v58;
  v59 = __chkstk_darwin(v57);
  v269 = &v267 - v60;
  v61 = __chkstk_darwin(v59);
  v268 = &v267 - v62;
  v63 = __chkstk_darwin(v61);
  v340 = &v267 - v64;
  __chkstk_darwin(v63);
  v336 = &v267 - v65;
  v66 = sub_1000807B8();
  v339 = *(v66 - 8);
  v67 = __chkstk_darwin(v66);
  v334 = &v267 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v71 = &v267 - v70;
  __chkstk_darwin(v69);
  v73 = &v267 - v72;
  v74 = sub_100081008();
  v75 = *(v74 - 8);
  v76 = __chkstk_darwin(v74);
  v78 = &v267 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v80 = &v267 - v79;
  sub_10003435C(&v267 - v79);
  sub_100080FE8();
  v81 = sub_100080FC8();
  v82 = *(v75 + 8);
  v82(v78, v74);
  v338 = v74;
  v332 = v82;
  v337 = v75 + 8;
  v82(v80, v74);
  v83 = v339;
  v333 = v66;
  v342 = v4;
  v316 = v73;
  v315 = v71;
  if (v81)
  {
    sub_100080E48();
    v320 = sub_100080E58();
  }

  else
  {
    sub_100005180(v73);
    (*(v83 + 13))(v71, enum case for ColorScheme.light(_:), v66);
    v84 = sub_1000807A8();
    v85 = v66;
    v86 = *(v83 + 1);
    v86(v71, v85);
    v86(v73, v85);
    if (v84)
    {
      sub_100080E28();
    }

    else
    {
      sub_100080E48();
    }

    v320 = sub_100080E58();
    v66 = v333;
    v83 = v339;
  }

  sub_10003435C(v80);
  sub_100080FE8();
  v87 = sub_100080FC8();
  v88 = v338;
  v89 = v332;
  (v332)(v78, v338);
  v89(v80, v88);
  if (v87)
  {
    v90 = *(v83 + 13);
    v302 = enum case for ColorScheme.light(_:);
    v292 = v90;
    v90(v334);
  }

  else
  {
    v91 = v315;
    v92 = v316;
    sub_100005180(v316);
    v93 = v83;
    v94 = enum case for ColorScheme.light(_:);
    v95 = *(v93 + 13);
    v95(v91, enum case for ColorScheme.light(_:), v66);
    LODWORD(v330) = sub_1000807A8();
    v96 = *(v93 + 1);
    v96(v91, v66);
    v96(v92, v66);
    v302 = v94;
    v292 = v95;
    if (v330)
    {
      v97 = enum case for ColorScheme.dark(_:);
      v98 = v334;
    }

    else
    {
      v98 = v334;
      v97 = v94;
    }

    v95(v98, v97, v66);
  }

  v99 = v341;
  sub_10003435C(v80);
  sub_100080FE8();
  v100 = sub_100080FC8();
  v101 = v338;
  v102 = v332;
  (v332)(v78, v338);
  v102(v80, v101);
  v103 = *(v99 + 104);
  v290 = v99 + 104;
  v104 = enum case for BlendMode.normal(_:);
  if (v100)
  {
    v105 = enum case for BlendMode.normal(_:);
  }

  else
  {
    v105 = enum case for BlendMode.plusDarker(_:);
  }

  v106 = v335;
  v103(v336, v105, v335);
  sub_10003435C(v80);
  sub_100080FE8();
  v107 = sub_100080FC8();
  v329 = v78;
  v102(v78, v101);
  v330 = v80;
  v102(v80, v101);
  if (v107)
  {
    v108 = v104;
  }

  else
  {
    v108 = enum case for BlendMode.plusLighter(_:);
  }

  v109 = v106;
  v291 = v103;
  v103(v340, v108, v106);
  v110 = v331;
  v111 = v331[4];
  if (*(v331 + 40) != 1)
  {
    v316 = v331[4];
    v157 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    v158 = v157[12];
    v159 = v110;
    v160 = v157[16];
    v161 = v157[20];
    v162 = v157[24];
    v164 = *v159;
    v163 = v159[1];
    v347 = *(v159 + 1);
    v165 = v102;
    v166 = v303;
    *v303 = v164;
    *(v166 + 8) = v163;

    *(v166 + v158) = sub_100080E48();
    type metadata accessor for CircularProgressView.ColorStyle(0);
    swift_storeEnumTagMultiPayload();
    v167 = v342 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v168 = sub_100080CD8();
    (*(*(v168 - 8) + 16))(v166 + v160, v167, v168);
    v169 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v170 = v169[5];
    v171 = sub_100080C58();
    (*(*(v171 - 8) + 16))(v166 + v161, v167 + v170, v171);
    *(v166 + v162) = *(v167 + v169[6]);
    (*(*(v157 - 1) + 56))(v166, 0, 1, v157);
    v172 = sub_100080E48();
    v173 = v330;
    sub_10003435C(v330);
    v174 = v329;
    sub_100080FE8();
    sub_100080FC8();
    v175 = v338;
    v165(v174, v338);
    v165(v173, v175);
    sub_100080E48();
    v176 = sub_100080E58();

    v177 = v309;
    v178 = v305;
    (*(v341 + 16))(v305 + *(v309 + 44), v340, v335);
    v179 = *(v167 + v169[7]);
    *v178 = swift_getKeyPath();
    sub_100002840(&qword_1000AE400, &qword_100088410);
    swift_storeEnumTagMultiPayload();
    *(v178 + v177[5]) = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    v180 = v316;
    *(v178 + v177[6]) = v316;
    sub_100039A94(v166, v178 + v177[7], type metadata accessor for CircularProgressView.Content);
    *(v178 + v177[8]) = 0;
    *(v178 + v177[9]) = v172;
    *(v178 + v177[10]) = v176;
    *(v178 + v177[12]) = v179;
    *(v178 + v177[13]) = a4;
    *(v178 + v177[14]) = a4;
    v181 = v317;
    sub_100080B38();
    v182 = sub_1000397C4(&qword_1000AE658, type metadata accessor for CircularProgressView, &unk_1000882F0);
    v183 = v307;
    sub_100080E08();
    (*(v318 + 8))(v181, v319);
    sub_100039AFC(v178, type metadata accessor for CircularProgressView);
    v345 = v347;
    v343 = v177;
    v344 = v182;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v184 = v304;
    v185 = v313;
    sub_100080DD8();
    (*(v312 + 8))(v183, v185);
    *&v345 = sub_100038444(v180, 0, v322);
    *(&v345 + 1) = v186;
    v187 = v306;
    sub_100080888();

    sub_100005B2C(v184, &qword_1000AE610, &qword_100088568);
    v188 = v308;
    sub_1000808C8();
    sub_100005B2C(v187, &qword_1000AE610, &qword_100088568);
    sub_1000055FC(v188, v311, &qword_1000AE610, &qword_100088568);
    swift_storeEnumTagMultiPayload();
    sub_10003980C();
    sub_1000396A8();
    v189 = v314;
    sub_100080AD8();
    sub_1000055FC(v189, v326, &qword_1000AE628, &qword_100088580);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v189, &qword_1000AE628, &qword_100088580);
    sub_100005B2C(v188, &qword_1000AE610, &qword_100088568);
    v190 = *(v341 + 8);
    v191 = v335;
    v190(v340, v335);
    v190(v336, v191);
    return (*(v339 + 1))(v334, v333);
  }

  v112 = v329;
  v113 = v330;
  if (!v111)
  {
    sub_10003435C(v330);
    sub_100080FE8();
    sub_100080FC8();
    v192 = v338;
    v102(v112, v338);
    v102(v113, v192);
    sub_100080E48();
    v315 = sub_100080E58();

    v193 = v102;
    v194 = v192;
    v195 = v268;
    (*(v341 + 16))(v268, v340, v109);
    v196 = v110[1];
    v316 = *v110;
    v313 = v196;
    v346 = *(v110 + 1);

    LODWORD(v331) = sub_100080B28();
    v197 = v342;
    sub_10003435C(v113);
    sub_100080FE8();
    LOBYTE(v192) = sub_100080FC8();
    v193(v112, v194);
    v193(v113, v194);
    v198 = &enum case for BlendMode.destinationOut(_:);
    if ((v192 & 1) == 0)
    {
      v198 = &enum case for BlendMode.plusDarker(_:);
    }

    v199 = v269;
    v291(v269, *v198, v109);
    v200 = v294;
    v201 = *(v294 + 40);
    v202 = v339;
    v203 = v272;
    v204 = v333;
    v292(v272 + v201, v302, v333);
    (*(v202 + 7))(v203 + v201, 0, 1, v204);
    v205 = v197 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v206 = v200[11];
    v207 = sub_100080CD8();
    (*(*(v207 - 8) + 16))(v203 + v206, v205, v207);
    v208 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v209 = *(v208 + 20);
    v210 = v200[12];
    v211 = sub_100080C58();
    (*(*(v211 - 8) + 16))(v203 + v210, v205 + v209, v211);
    v212 = *(v205 + *(v208 + 24));
    *v203 = v315;
    v213 = *(v341 + 32);
    v213(v203 + v200[5], v195, v109);
    *(v203 + v200[6]) = a4;
    v214 = (v203 + v200[7]);
    v215 = v313;
    *v214 = v316;
    v214[1] = v215;
    *(v203 + v200[8]) = v331;
    v213(v203 + v200[9], v199, v109);
    *(v203 + v200[13]) = v212;
    v216 = sub_1000397C4(&qword_1000AE648, type metadata accessor for FilledCircleWithLabel, &unk_100089208);
    v217 = v275;
    sub_100080D48();
    sub_100039AFC(v203, type metadata accessor for FilledCircleWithLabel);
    v218 = v317;
    sub_100080B38();
    *&v345 = v200;
    *(&v345 + 1) = v216;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v220 = v277;
    v221 = v296;
    sub_100080E08();
    (*(v318 + 8))(v218, v319);
    (*(v295 + 8))(v217, v221);
    v345 = v346;
    v343 = v221;
    v344 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v222 = v273;
    v223 = v298;
    sub_100080DD8();
    (*(v297 + 8))(v220, v223);
    *&v345 = sub_100038444(0, 1, v322);
    *(&v345 + 1) = v224;
    v225 = v276;
    sub_100080888();

    sub_100005B2C(v222, &qword_1000AE640, &qword_100088598);
    v226 = v282;
    sub_1000808C8();
    sub_100005B2C(v225, &qword_1000AE640, &qword_100088598);
    sub_1000055FC(v226, v311, &qword_1000AE640, &qword_100088598);
    swift_storeEnumTagMultiPayload();
    sub_10003980C();
    sub_1000396A8();
    v227 = v314;
    sub_100080AD8();
    sub_1000055FC(v227, v326, &qword_1000AE628, &qword_100088580);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v227, &qword_1000AE628, &qword_100088580);
    sub_100005B2C(v226, &qword_1000AE640, &qword_100088598);
    v228 = *(v341 + 8);
    v228(v340, v109);
    v228(v336, v109);
    return (*(v339 + 1))(v334, v333);
  }

  if (v111 == 1)
  {
    v114 = v316;
    sub_100005180(v316);
    v115 = v339;
    v329 = v339 + 104;
    v116 = v315;
    v117 = v110;
    v118 = v333;
    v119 = v292;
    v292(v315, v302, v333);
    v120 = sub_1000807A8();
    v121 = *(v115 + 1);
    v121(v116, v118);
    v121(v114, v118);
    if (v120)
    {
      v122 = v336;
    }

    else
    {
      v122 = v340;
    }

    (*(v341 + 16))(v293, v122, v109);
    v123 = v117[1];
    v332 = *v117;
    v330 = v123;
    v349 = *(v117 + 1);

    LODWORD(v331) = sub_100080B18();
    sub_100005180(v114);
    v119(v116, v302, v118);
    v124 = sub_1000807A8();
    v337 = v121;
    v338 = (v115 + 8);
    v121(v116, v118);
    v121(v114, v118);
    v125 = &enum case for BlendMode.plusDarker(_:);
    if (v124)
    {
      v125 = &enum case for BlendMode.plusLighter(_:);
    }

    v126 = v270;
    v127 = v109;
    v291(v270, *v125, v109);
    v128 = v294;
    v129 = *(v294 + 40);
    v130 = v274;
    (*(v115 + 2))(v274 + v129, v334, v118);
    (*(v115 + 7))(v130 + v129, 0, 1, v118);
    v131 = v342 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v132 = v128[11];
    v133 = sub_100080CD8();
    (*(*(v133 - 8) + 16))(v130 + v132, v131, v133);
    v134 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v135 = *(v134 + 20);
    v136 = v128[12];
    v137 = sub_100080C58();
    (*(*(v137 - 8) + 16))(v130 + v136, v131 + v135, v137);
    v138 = *(v131 + *(v134 + 24));
    *v130 = v320;
    v139 = *(v341 + 32);
    v139(v130 + v128[5], v293, v127);
    *(v130 + v128[6]) = a4;
    v140 = (v130 + v128[7]);
    v141 = v330;
    *v140 = v332;
    v140[1] = v141;
    *(v130 + v128[8]) = v331;
    v139(v130 + v128[9], v126, v127);
    *(v130 + v128[13]) = v138;
    v142 = sub_1000397C4(&qword_1000AE648, type metadata accessor for FilledCircleWithLabel, &unk_100089208);

    v143 = v278;
    sub_100080D48();
    sub_100039AFC(v130, type metadata accessor for FilledCircleWithLabel);
    v144 = v317;
    sub_100080B38();
    *&v345 = v128;
    *(&v345 + 1) = v142;
    v145 = swift_getOpaqueTypeConformance2();
    v146 = v279;
    v147 = v296;
    sub_100080E08();
    (*(v318 + 8))(v144, v319);
    (*(v295 + 8))(v143, v147);
    v345 = v349;
    v343 = v147;
    v344 = v145;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v148 = v280;
    v149 = v298;
    sub_100080DD8();
    (*(v297 + 8))(v146, v149);
    *&v345 = sub_100038444(1, 1, v322);
    *(&v345 + 1) = v150;
    v151 = v281;
    sub_100080888();

    sub_100005B2C(v148, &qword_1000AE640, &qword_100088598);
    v152 = v283;
    sub_1000808C8();
    sub_100005B2C(v151, &qword_1000AE640, &qword_100088598);
    sub_1000055FC(v152, v300, &qword_1000AE640, &qword_100088598);
    swift_storeEnumTagMultiPayload();
    sub_1000396A8();
    sub_10003980C();
    v153 = v301;
    sub_100080AD8();
    sub_1000055FC(v153, v326, &qword_1000AE600, &qword_100088558);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v153, &qword_1000AE600, &qword_100088558);
    sub_100005B2C(v152, &qword_1000AE640, &qword_100088598);
    v154 = *(v341 + 8);
    v155 = v335;
    v154(v340, v335);
    v154(v336, v155);
    return (v337)(v334, v333);
  }

  else
  {
    v229 = v342 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v230 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v231 = *(v229 + v230[9]);
    v232 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    v233 = v284;
    v234 = (v284 + v232[12]);
    v330 = v232[16];
    v332 = v232[20];
    v337 = v232[24];
    v235 = *v110;
    v236 = v110[1];
    v348 = *(v110 + 1);
    *v284 = v235;
    *(v233 + 8) = v236;
    v237 = sub_100002840(&qword_1000AE3F8, &qword_1000883D0);
    v238 = v109;
    v239 = *(v237 + 48);
    v240 = *(v237 + 64);

    *v234 = sub_100080B18();
    v338 = *(v341 + 16);
    v338(v234 + v239, v336, v109);
    sub_100005180(v234 + v240);
    type metadata accessor for CircularProgressView.ColorStyle(0);
    swift_storeEnumTagMultiPayload();
    v241 = sub_100080CD8();
    (*(*(v241 - 8) + 16))(v233 + v330, v229, v241);
    v242 = v230[5];
    v243 = sub_100080C58();
    (*(*(v243 - 8) + 16))(&v332[v233], v229 + v242, v243);
    *(v233 + v337) = *(v229 + v230[6]);
    (*(*(v232 - 1) + 56))(v233, 0, 1, v232);
    v337 = sub_100080E38();
    v244 = v316;
    sub_100005180(v316);
    v245 = v339;
    v246 = v315;
    v247 = v333;
    (*(v339 + 13))(v315, enum case for ColorScheme.light(_:), v333);
    LOBYTE(v236) = sub_1000807A8();
    v248 = *(v245 + 1);
    v339 = v248;
    (v248)(v246, v247);
    (v248)(v244, v247);
    if (v236)
    {
      v249 = v336;
    }

    else
    {
      v249 = v340;
    }

    v250 = v271;
    v338(v271, v249, v109);
    v251 = *(v229 + v230[7]);
    KeyPath = swift_getKeyPath();
    v253 = v285;
    *v285 = KeyPath;
    sub_100002840(&qword_1000AE400, &qword_100088410);
    swift_storeEnumTagMultiPayload();
    v254 = swift_getKeyPath();
    v255 = v309;
    *(v253 + *(v309 + 20)) = v254;
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v253 + v255[6]) = v231;
    sub_100039A94(v233, v253 + v255[7], type metadata accessor for CircularProgressView.Content);
    *(v253 + v255[8]) = 1;
    *(v253 + v255[9]) = v337;
    *(v253 + v255[10]) = v320;
    (*(v341 + 32))(v253 + v255[11], v250, v238);
    *(v253 + v255[12]) = v251;
    *(v253 + v255[13]) = a4;
    *(v253 + v255[14]) = a4;

    v256 = v317;
    sub_100080B38();
    v257 = sub_1000397C4(&qword_1000AE658, type metadata accessor for CircularProgressView, &unk_1000882F0);
    v258 = v286;
    sub_100080E08();
    (*(v318 + 8))(v256, v319);
    sub_100039AFC(v253, type metadata accessor for CircularProgressView);
    v345 = v348;
    v343 = v255;
    v344 = v257;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v259 = v287;
    v260 = v313;
    sub_100080DD8();
    (*(v312 + 8))(v258, v260);
    *&v345 = sub_100038444(2, 1, v322);
    *(&v345 + 1) = v261;
    v262 = v288;
    sub_100080888();

    sub_100005B2C(v259, &qword_1000AE610, &qword_100088568);
    v263 = v289;
    sub_1000808C8();
    sub_100005B2C(v262, &qword_1000AE610, &qword_100088568);
    sub_1000055FC(v263, v300, &qword_1000AE610, &qword_100088568);
    swift_storeEnumTagMultiPayload();
    sub_1000396A8();
    sub_10003980C();
    v264 = v301;
    sub_100080AD8();
    sub_1000055FC(v264, v326, &qword_1000AE600, &qword_100088558);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v264, &qword_1000AE600, &qword_100088558);
    sub_100005B2C(v263, &qword_1000AE610, &qword_100088568);
    v265 = *(v341 + 8);
    v266 = v335;
    v265(v340, v335);
    v265(v336, v266);
    return (v339)(v334, v333);
  }
}

uint64_t sub_100037E98@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v55 = a3;
  v7 = sub_100002840(&qword_1000AE5D0, &qword_100088528);
  v8 = __chkstk_darwin(v7 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v50 - v10;
  v57 = sub_100002840(&qword_1000AE5D8, &qword_100088530);
  v11 = __chkstk_darwin(v57);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = sub_1000809F8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ReadingGoalView(0);
  v20 = result;
  v21 = a1 + *(result + 20);
  v22 = *(v21 + 8);
  if (*(v21 + 32) == 1)
  {
    v23 = *(v21 + 8);
  }

  else
  {
    v52 = a1;
    v24 = a2;
    v25 = *v21;
    v27 = *(v21 + 16);
    v26 = *(v21 + 24);
    *&v51 = v27;
    *&v50 = v26;

    sub_100081458();
    v28 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();
    v29 = v25;
    a2 = v24;
    a1 = v52;
    sub_1000393D8(v29, v22, v51, v50, 0);
    result = (*(v16 + 8))(v18, v15);
    v23 = *(&v59 + 1);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = *(a1 + *(v20 + 28));
  if (*(v30 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v31 = v30 + 48 * a2;
  sub_100034CC0(*(v31 + 73), &v59);
  v32 = v61;
  v33 = DWORD2(v61);
  v34 = BYTE12(v61);
  v35 = *(sub_100002840(&qword_1000AE5E0, &qword_100088538) + 36);
  v52 = a2;
  v36 = enum case for BlendMode.plusLighter(_:);
  v37 = sub_100080F68();
  v38 = *(*(v37 - 8) + 104);
  v51 = v59;
  v50 = v60;
  v38(&v14[v35], v36, v37);
  v39 = v50;
  *v14 = v51;
  *(v14 + 1) = v39;
  *(v14 + 4) = v32;
  *(v14 + 10) = v33;
  v14[44] = v34;
  type metadata accessor for ReadingGoalView.ViewConfiguration(0);
  sub_100080F48();
  sub_1000807E8();
  result = sub_100002840(&qword_1000AE5E8, &qword_100088540);
  v40 = &v14[*(result + 36)];
  v41 = v60;
  *v40 = v59;
  *(v40 + 1) = v41;
  *(v40 + 2) = v61;
  v42 = &v14[*(v57 + 36)];
  *v42 = (v23 + a4) * -0.5;
  *(v42 + 1) = 0;
  if (*(v30 + 16) > v52)
  {
    *&v63[10] = *(v31 + 58);
    v43 = *(v31 + 48);
    v62 = *(v31 + 32);
    *v63 = v43;
    v64 = v62;
    v65 = v43;
    v66 = v43;
    v67 = v62;
    v44 = v63[25];
    sub_1000218B8(&v67, v58);
    sub_1000218B8(&v66, v58);
    v45 = v54;
    sub_1000353C8(&v62, v44, v54, a4);
    sub_100039654(&v67);
    sub_100039654(&v66);
    v46 = v53;
    sub_1000055FC(v14, v53, &qword_1000AE5D8, &qword_100088530);
    v47 = v56;
    sub_1000055FC(v45, v56, &qword_1000AE5D0, &qword_100088528);
    v48 = v55;
    sub_1000055FC(v46, v55, &qword_1000AE5D8, &qword_100088530);
    v49 = sub_100002840(&qword_1000AE5F0, &qword_100088548);
    sub_1000055FC(v47, v48 + *(v49 + 48), &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v45, &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v14, &qword_1000AE5D8, &qword_100088530);
    sub_100005B2C(v47, &qword_1000AE5D0, &qword_100088528);
    return sub_100005B2C(v46, &qword_1000AE5D8, &qword_100088530);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100038444(char *a1, char a2, int a3)
{
  v80 = a3;
  v5 = sub_100080248();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AE678, &unk_100088608);
  v78 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v74 - v12;
  v14 = sub_1000811A8();
  __chkstk_darwin(v14 - 8);
  v83 = sub_100080478();
  v79 = *(v83 - 8);
  v15 = __chkstk_darwin(v83);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v74 - v18;
  v20 = sub_1000811C8();
  v21 = __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v82 = v17;
  v84 = v24;
  if ((a2 & 1) == 0)
  {
    v75 = &v74 - v22;
    v81 = v23;
    sub_100081198();
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    sub_100081188(v86);
    v85 = a1;
    sub_100080438();
    sub_100039B5C();
    sub_100080218();
    sub_100080238();
    sub_100080228();
    (*(v76 + 8))(v7, v77);
    v43 = *(v78 + 8);
    v43(v11, v8);
    sub_100005C98(&qword_1000AE688, &qword_1000AE678, &unk_100088608, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    sub_1000057D0();
    sub_100081168();
    v43(v13, v8);
    v87._countAndFlagsBits = 0x74656C706D6F6320;
    v87._object = 0xE900000000000065;
    sub_100081188(v87);
    v44 = v75;
    sub_1000811B8();
    sub_100080448();
    v45 = v84;
    v46 = v44;
    (*(v84 + 16))(v81, v44, v20);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v78 = sub_100081258();
    v35 = v49;
    v25 = v79;
    (*(v79 + 8))(v19, v83);
    v36 = v46;
    (*(v45 + 8))(v46, v20);
    v38 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = *(v38 + 2);
    v50 = *(v38 + 3);
    v41 = v40 + 1;
    v37 = v20;
    if (v40 >= v50 >> 1)
    {
LABEL_17:
      v38 = sub_10003EE4C((v50 > 1), v41, 1, v38);
    }

LABEL_7:
    v42 = v80;
LABEL_8:
    *(v38 + 2) = v41;
    v51 = &v38[16 * v40];
    *(v51 + 4) = v78;
    *(v51 + 5) = v35;
    v23 = v81;
    v52 = v82;
    v53 = v84;
    goto LABEL_9;
  }

  v25 = v79;
  v26 = v83;
  if (!a1)
  {
    v67 = v23;
    v68 = &v74 - v22;
    sub_100081158();
    sub_100080448();
    v69 = v84;
    (*(v84 + 16))(v67, v68, v20);
    type metadata accessor for BundleFinder();
    v70 = swift_getObjCClassFromMetadata();
    v71 = [objc_opt_self() bundleForClass:v70];
    v72 = v26;
    (*(v25 + 16))(v82, v19, v26);
    v81 = v67;
    v78 = sub_100081268();
    v35 = v73;
    (*(v25 + 8))(v19, v72);
    v36 = v68;
    v37 = v20;
    (*(v69 + 8))(v68, v20);
    v38 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = *(v38 + 2);
    v50 = *(v38 + 3);
    v41 = v40 + 1;
    if (v40 >= v50 >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v27 = v20;
  if (a1 == 1)
  {
    v28 = v23;
    v29 = &v74 - v22;
    sub_100081158();
    sub_100080448();
    v30 = v84;
    (*(v84 + 16))(v28, v29, v20);
    type metadata accessor for BundleFinder();
    v31 = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass:v31];
    v33 = v26;
    (*(v25 + 16))(v82, v19, v26);
    v81 = v28;
    v78 = sub_100081268();
    v35 = v34;
    (*(v25 + 8))(v19, v33);
    v36 = v29;
    v37 = v27;
    (*(v30 + 8))(v29, v27);
    v38 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    v41 = v40 + 1;
    v42 = v80;
    if (v40 >= v39 >> 1)
    {
      v38 = sub_10003EE4C((v39 > 1), v40 + 1, 1, v38);
    }

    goto LABEL_8;
  }

  v37 = v20;
  v36 = &v74 - v22;
  v38 = _swiftEmptyArrayStorage;
  v42 = v80;
  v52 = v82;
  v53 = v84;
LABEL_9:
  if (v42 <= 3u)
  {
    v54 = v23;
    sub_100081158();
    sub_100080448();
    v55 = *(v53 + 16);
    v74 = v37;
    v55(v54, v36, v37);
    type metadata accessor for BundleFinder();
    v56 = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass:v56];
    v58 = v83;
    (*(v25 + 16))(v52, v19, v83);
    v59 = sub_100081268();
    v61 = v60;
    (*(v25 + 8))(v19, v58);
    (*(v53 + 8))(v36, v74);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_10003EE4C(0, *(v38 + 2) + 1, 1, v38);
    }

    v63 = *(v38 + 2);
    v62 = *(v38 + 3);
    if (v63 >= v62 >> 1)
    {
      v38 = sub_10003EE4C((v62 > 1), v63 + 1, 1, v38);
    }

    *(v38 + 2) = v63 + 1;
    v64 = &v38[16 * v63];
    *(v64 + 4) = v59;
    *(v64 + 5) = v61;
  }

  v85 = v38;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
  v65 = sub_100081128();

  return v65;
}

uint64_t sub_100038EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_1000807F8();
  if (v7 >= 297.0)
  {
    v8 = 36.0;
  }

  else
  {
    v8 = 30.0;
  }

  *a2 = sub_100080A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100002840(&qword_1000AE568, &unk_1000884C8);
  v9 = *(*(v2 + *(v4 + 36)) + 16);
  v13[0] = 0;
  v13[1] = v9;
  swift_getKeyPath();
  sub_1000390F8(v2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_100039A94(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ReadingGoalView);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  sub_100002840(&qword_1000AE570, &qword_1000884F0);
  sub_100002840(&qword_1000AE578, &qword_1000884F8);
  sub_100039490();
  sub_100039570();
  return sub_100080F28();
}

uint64_t sub_1000390F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingGoalView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003915C()
{
  v1 = type metadata accessor for ReadingGoalView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000807B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  sub_1000393D8(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = v1[6];
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_100081008();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = v5 + v1[8];
  v12 = sub_100080CD8();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(type metadata accessor for ReadingGoalView.ViewConfiguration(0) + 20);
  v14 = sub_100080C58();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[9];
  v16 = sub_100080808();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_1000393D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_1000393E4(unint64_t *a1)
{
  v3 = *(type metadata accessor for ReadingGoalView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100034564(a1, v1 + v4, v5);
}

unint64_t sub_100039490()
{
  result = qword_1000AE580;
  if (!qword_1000AE580)
  {
    sub_100004FC8(&qword_1000AE570, &qword_1000884F0);
    sub_10003951C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE580);
  }

  return result;
}

unint64_t sub_10003951C()
{
  result = qword_1000AE588;
  if (!qword_1000AE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE588);
  }

  return result;
}

unint64_t sub_100039570()
{
  result = qword_1000AE590;
  if (!qword_1000AE590)
  {
    sub_100004FC8(&qword_1000AE578, &qword_1000884F8);
    sub_100005C98(&qword_1000AE598, &qword_1000AE5A0, &qword_100088500, &protocol conformance descriptor for HStack<A>);
    sub_100005C98(&qword_1000AE5A8, &qword_1000AE5B0, &qword_100088508, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE590);
  }

  return result;
}

unint64_t sub_1000396A8()
{
  result = qword_1000AE650;
  if (!qword_1000AE650)
  {
    sub_100004FC8(&qword_1000AE610, &qword_100088568);
    type metadata accessor for CircularProgressView(255);
    sub_1000397C4(&qword_1000AE658, type metadata accessor for CircularProgressView, &unk_1000882F0);
    swift_getOpaqueTypeConformance2();
    sub_1000397C4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE650);
  }

  return result;
}

uint64_t sub_1000397C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003980C()
{
  result = qword_1000AE660;
  if (!qword_1000AE660)
  {
    sub_100004FC8(&qword_1000AE640, &qword_100088598);
    sub_100004FC8(&qword_1000AE630, &qword_100088588);
    type metadata accessor for FilledCircleWithLabel(255);
    sub_1000397C4(&qword_1000AE648, type metadata accessor for FilledCircleWithLabel, &unk_100089208);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000397C4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE660);
  }

  return result;
}

unint64_t sub_10003996C()
{
  result = qword_1000AE668;
  if (!qword_1000AE668)
  {
    sub_100004FC8(&qword_1000AE628, &qword_100088580);
    sub_10003980C();
    sub_1000396A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE668);
  }

  return result;
}

unint64_t sub_1000399F8()
{
  result = qword_1000AE670;
  if (!qword_1000AE670)
  {
    sub_100004FC8(&qword_1000AE600, &qword_100088558);
    sub_1000396A8();
    sub_10003980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE670);
  }

  return result;
}

uint64_t sub_100039A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100039B5C()
{
  result = qword_1000AE680;
  if (!qword_1000AE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE680);
  }

  return result;
}

unint64_t sub_100039BB0()
{
  result = qword_1000AE6A0;
  if (!qword_1000AE6A0)
  {
    sub_100004FC8(&qword_1000AE690, &qword_100088618);
    sub_100039C3C();
    sub_100039CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6A0);
  }

  return result;
}

unint64_t sub_100039C3C()
{
  result = qword_1000AE6A8;
  if (!qword_1000AE6A8)
  {
    sub_100004FC8(&qword_1000AE6B0, &qword_100088628);
    sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6A8);
  }

  return result;
}

unint64_t sub_100039CEC()
{
  result = qword_1000AE6C0;
  if (!qword_1000AE6C0)
  {
    sub_100004FC8(&qword_1000AE6C8, &qword_100088630);
    sub_100005C98(&qword_1000AE6D0, &qword_1000AE6D8, &qword_100088638, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6C0);
  }

  return result;
}

void sub_100039DE0(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4)
{
  v8 = sub_100080608();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[2] = a1;
  v21[3] = a2;

  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  sub_1000812A8(v22);
  v12 = 0xEE007265766F4364;
  v13 = 0x6574616572746E75;
  v14 = 0xEC0000007265766FLL;
  v15 = 0x436E6F6349707061;
  if (a3 != 2)
  {
    v15 = 0xD000000000000010;
    v14 = 0x8000000100082F90;
  }

  if (a3)
  {
    v13 = 0x706F72646B636162;
    v12 = 0xE800000000000000;
  }

  if (a3 <= 1u)
  {
    v16._countAndFlagsBits = v13;
  }

  else
  {
    v16._countAndFlagsBits = v15;
  }

  if (a3 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  v16._object = v17;
  sub_1000812A8(v16);

  v23._countAndFlagsBits = 64;
  v23._object = 0xE100000000000000;
  sub_1000812A8(v23);
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a4 < 9.22337204e18)
  {
    v21[1] = a4;
    v24._countAndFlagsBits = sub_100081608();
    sub_1000812A8(v24);

    v25._countAndFlagsBits = 120;
    v25._object = 0xE100000000000000;
    sub_1000812A8(v25);
    v18 = sub_1000811D8();

    sub_1000805D8();
    isa = sub_1000805C8().super.isa;
    (*(v9 + 8))(v11, v8);
    v20 = [v18 stringByAppendingPathExtensionForType:isa];

    sub_100081218();
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10003A078()
{
  v0 = sub_100080308();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A794(v2, qword_1000AE700);
  sub_10000A480(v0, qword_1000AE700);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1000802C8();
  sub_1000802B8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10003A1D4()
{
  v0 = sub_100080308();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A794(v2, qword_1000AE718);
  sub_10000A480(v0, qword_1000AE718);
  if (qword_1000AC670 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A480(v0, qword_1000AE700);
  (*(v1 + 16))(v4, v5, v0);
  sub_1000802B8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10003A334@<X0>(uint64_t a1@<X8>)
{
  v29 = 1;
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  if (qword_1000AC678 != -1)
  {
    swift_once();
  }

  v4 = sub_100080308();
  v5 = sub_10000A480(v4, qword_1000AE718);
  sub_1000802D8();
  v6 = sub_1000811D8();

  v7 = [v3 fileExistsAtPath:v6 isDirectory:&v29];

  if (v7)
  {
    return (*(*(v4 - 8) + 16))(a1, v5, v4);
  }

  if (qword_1000AC688 != -1)
  {
    swift_once();
  }

  v9 = sub_1000806F8();
  sub_10000A480(v9, qword_1000AE738);
  v10 = sub_1000806D8();
  v11 = sub_100081468();
  v28 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    sub_10003C290();
    v14 = sub_100081608();
    v16 = sub_10006150C(v14, v15, &v30);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating caches directory for cover at %s", v12, 0xCu);
    sub_100019DF8(v13);
  }

  v17 = [v2 defaultManager];
  sub_1000802A8(v18);
  v20 = v19;
  v30 = 0;
  v21 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v30];

  if (v21)
  {
    v22 = v30;
    v23 = [v2 defaultManager];
    sub_1000802D8();
    v24 = sub_1000811D8();

    v25 = [v23 fileExistsAtPath:v24 isDirectory:&v29];

    a1 = v28;
    if (v25)
    {
      return (*(*(v4 - 8) + 16))(a1, v5, v4);
    }

    sub_10003C23C();
    swift_allocError();
    *v26 = 0;
  }

  else
  {
    v27 = v30;
    sub_1000801C8();
  }

  return swift_willThrow();
}

void sub_10003A6D0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1000AE730 = v2;
}

id sub_10003A734(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100080308();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  if (qword_1000AC680 != -1)
  {
    swift_once();
  }

  v18[3] = a3;
  sub_100039DE0(a1, a2, a3, *&qword_1000AE730);
  sub_10003A334(v10);
  sub_1000802B8();

  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = [objc_opt_self() defaultManager];
  sub_1000802D8();
  v15 = sub_1000811D8();

  v16 = [v14 fileExistsAtPath:v15];

  v13(v12, v6);
  return v16;
}

id sub_10003ABAC(void (*a1)(void, void), unint64_t a2, int a3)
{
  v7 = *v3;
  v8 = sub_100080308();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v55 = &v50 - v13;
  if (qword_1000AC688 != -1)
  {
    swift_once();
  }

  v14 = sub_1000806F8();
  v15 = sub_10000A480(v14, qword_1000AE738);

  v16 = sub_1000806D8();
  v17 = sub_100081468();

  if (os_log_type_enabled(v16, v17))
  {
    v50 = v7;
    v51 = v15;
    v18 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v18 = 136315394;
    v52 = a1;
    *(v18 + 4) = sub_10006150C(a1, a2, v56);
    *(v18 + 12) = 2080;
    v19 = 0xEE007265766F4364;
    v20 = a3;
    v21 = 0x436E6F6349707061;
    v22 = 0xEC0000007265766FLL;
    if (a3 != 2)
    {
      v21 = 0xD000000000000010;
      v22 = 0x8000000100082F90;
    }

    v23 = 0x706F72646B636162;
    if (a3)
    {
      v19 = 0xE800000000000000;
    }

    else
    {
      v23 = 0x6574616572746E75;
    }

    if (a3 <= 1u)
    {
      v24 = v23;
    }

    else
    {
      v24 = v21;
    }

    if (a3 <= 1u)
    {
      v25 = v19;
    }

    else
    {
      v25 = v22;
    }

    v26 = sub_10006150C(v24, v25, v56);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Getting cached image. (assetID: '%s', type: %s)", v18, 0x16u);
    swift_arrayDestroy();

    a3 = v20;
    a1 = v52;
  }

  else
  {
  }

  if (qword_1000AC680 != -1)
  {
    swift_once();
  }

  v27 = *&qword_1000AE730;
  sub_100039DE0(a1, a2, a3, *&qword_1000AE730);
  sub_10003A334(v11);
  LODWORD(v51) = a3;
  sub_1000802B8();

  v28 = v53;
  v29 = v11;
  v30 = v54;
  v52 = *(v53 + 8);
  v52(v29, v54);
  v31 = v55;
  (*(v28 + 32))();
  v32 = [objc_opt_self() defaultManager];
  sub_1000802D8();
  v33 = sub_1000811D8();

  v34 = [v32 fileExistsAtPath:v33];

  if (v34)
  {
    v42 = sub_100080318();
    v44 = v43;
    v45 = objc_allocWithZone(UIImage);
    isa = sub_100080328().super.isa;
    v47 = [v45 initWithData:isa scale:v27];

    sub_10001F0D4(v42, v44);
    v52(v31, v30);
    return v47;
  }

  else
  {
    v35 = a1;

    v36 = sub_1000806D8();
    v37 = sub_100081468();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_10006150C(v35, a2, v56);
      *(v38 + 12) = 2080;
      if (v51 > 1u)
      {
        if (v51 == 2)
        {
          v39 = 0x436E6F6349707061;
          v40 = 0xEC0000007265766FLL;
        }

        else
        {
          v39 = 0xD000000000000010;
          v40 = 0x8000000100082F90;
        }
      }

      else if (v51)
      {
        v40 = 0xE800000000000000;
        v39 = 0x706F72646B636162;
      }

      else
      {
        v39 = 0x6574616572746E75;
        v40 = 0xEE007265766F4364;
      }

      v49 = sub_10006150C(v39, v40, v56);

      *(v38 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "No cached image found. (assetID: '%s', type: %s)", v38, 0x16u);
      swift_arrayDestroy();

      v41 = v55;
    }

    else
    {

      v41 = v31;
    }

    v52(v41, v30);
    return 0;
  }
}

void sub_10003B608(uint64_t a1, unint64_t a2, int a3, CGImage *a4, void (**a5)(char *, uint64_t), uint64_t *a6)
{
  v107 = a4;
  v105 = *a5;
  v10 = sub_100080608();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100080308();
  v95 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v93 - v17;
  __chkstk_darwin(v16);
  v104 = &v93 - v18;
  if (qword_1000AC688 != -1)
  {
    swift_once();
  }

  v19 = sub_1000806F8();
  v20 = sub_10000A480(v19, qword_1000AE738);

  v103 = v20;
  v21 = sub_1000806D8();
  v22 = sub_100081468();

  v23 = os_log_type_enabled(v21, v22);
  v98 = v10;
  v100 = v11;
  if (v23)
  {
    v101 = a6;
    v102 = v13;
    v24 = a3;
    v25 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v25 = 136315394;
    v99 = a1;
    *(v25 + 4) = sub_10006150C(a1, a2, &v109);
    *(v25 + 12) = 2080;
    v26 = 0xEE007265766F4364;
    v96 = v24;
    v27 = 0x436E6F6349707061;
    v28 = 0xEC0000007265766FLL;
    if (v24 != 2)
    {
      v27 = 0xD000000000000010;
      v28 = 0x8000000100082F90;
    }

    v29 = 0x706F72646B636162;
    if (v24)
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v29 = 0x6574616572746E75;
    }

    if (v24 <= 1u)
    {
      v30 = v29;
    }

    else
    {
      v30 = v27;
    }

    if (v24 <= 1u)
    {
      v31 = v26;
    }

    else
    {
      v31 = v28;
    }

    v32 = sub_10006150C(v30, v31, &v109);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saving cached image. (assetID: '%s', type: %s)", v25, 0x16u);
    swift_arrayDestroy();

    a6 = v101;
    v13 = v102;
    a1 = v99;
    a3 = v96;
  }

  else
  {
  }

  v33 = [(CGImage *)v107 CGImage];
  v34 = v108;
  if (v33)
  {
    v107 = v33;
    if (qword_1000AC680 != -1)
    {
      swift_once();
    }

    sub_100039DE0(a1, a2, a3, *&qword_1000AE730);
    v35 = v106;
    sub_10003A334(v34);
    v36 = v34;
    v37 = v35;
    if (v35)
    {
    }

    else
    {
      v96 = a3;
      v99 = a1;
      v101 = a6;
      sub_1000802B8();

      v48 = v95;
      v49 = *(v95 + 8);
      v108 = (v95 + 8);
      v106 = v49;
      v49(v36, v13);
      sub_1000802A8(v50);
      v102 = v13;
      v52 = v51;
      v53 = v97;
      sub_1000805D8();
      sub_1000805B8();
      v55 = v100 + 8;
      v54 = *(v100 + 8);
      v54(v53, v98);
      v56 = sub_1000811D8();

      v57 = CGImageDestinationCreateWithURL(v52, v56, 1uLL, 0);

      if (v57)
      {
        v58 = v107;
        CGImageDestinationAddImage(v57, v107, 0);
        if (CGImageDestinationFinalize(v57))
        {
          v106(v104, v102);

          return;
        }

        v77 = sub_1000806D8();
        v78 = sub_100081448();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v79 = 136315394;
          *(v79 + 4) = sub_10006150C(v99, a2, &v109);
          *(v79 + 12) = 2080;
          v80 = 0xEE007265766F4364;
          v81 = 0x436E6F6349707061;
          v82 = 0xEC0000007265766FLL;
          if (v96 != 2)
          {
            v81 = 0xD000000000000010;
            v82 = 0x8000000100082F90;
          }

          v83 = 0x706F72646B636162;
          if (v96)
          {
            v80 = 0xE800000000000000;
          }

          else
          {
            v83 = 0x6574616572746E75;
          }

          if (v96 <= 1u)
          {
            v84 = v83;
          }

          else
          {
            v84 = v81;
          }

          if (v96 <= 1u)
          {
            v85 = v80;
          }

          else
          {
            v85 = v82;
          }

          v86 = sub_10006150C(v84, v85, &v109);

          *(v79 + 14) = v86;
          _os_log_impl(&_mh_execute_header, v77, v78, "Failed to write cached image file. (assetID: '%s', type: %s)", v79, 0x16u);
          swift_arrayDestroy();
        }

        v87 = v102;
        v88 = v104;
        sub_10003C23C();
        v37 = swift_allocError();
        *v89 = 3;
        swift_willThrow();

        v106(v88, v87);
        a6 = v101;
      }

      else
      {
        v105 = v54;
        v100 = v55;
        v60 = v94;
        v61 = v102;
        (*(v48 + 16))(v94, v104, v102);

        v62 = sub_1000806D8();
        v63 = sub_100081448();

        v64 = v61;
        if (os_log_type_enabled(v62, v63))
        {
          v65 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v109 = v103;
          *v65 = 136315650;
          *(v65 + 4) = sub_10006150C(v99, a2, &v109);
          *(v65 + 12) = 2080;
          v66 = v97;
          sub_1000805D8();
          v67 = sub_1000805B8();
          v69 = v68;
          v105(v66, v98);
          v70 = sub_10006150C(v67, v69, &v109);

          *(v65 + 14) = v70;
          *(v65 + 22) = 2080;
          sub_10003C290();
          v71 = sub_100081608();
          v73 = v72;
          v74 = v60;
          v75 = v106;
          v106(v74, v64);
          v76 = sub_10006150C(v71, v73, &v109);

          *(v65 + 24) = v76;
          _os_log_impl(&_mh_execute_header, v62, v63, "Failed to create destination in CGImageDestinationCreateWithURL. (assetID: '%s', type: %s, url: %s", v65, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v90 = v60;
          v75 = v106;
          v106(v90, v61);
        }

        a6 = v101;
        v91 = v107;
        sub_10003C23C();
        v37 = swift_allocError();
        *v92 = 2;
        swift_willThrow();

        v75(v104, v64);
      }
    }
  }

  else
  {

    v38 = sub_1000806D8();
    v39 = sub_100081448();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_10006150C(a1, a2, &v109);
      *(v40 + 12) = 2080;
      v41 = 0xEE007265766F4364;
      v42 = 0x436E6F6349707061;
      v43 = 0xEC0000007265766FLL;
      if (a3 != 2)
      {
        v42 = 0xD000000000000010;
        v43 = 0x8000000100082F90;
      }

      v44 = 0x706F72646B636162;
      if (a3)
      {
        v41 = 0xE800000000000000;
      }

      else
      {
        v44 = 0x6574616572746E75;
      }

      if (a3 <= 1u)
      {
        v45 = v44;
      }

      else
      {
        v45 = v42;
      }

      if (a3 <= 1u)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      v47 = sub_10006150C(v45, v46, &v109);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Can't save cached image without cgImage. (assetID: '%s', type: %s)", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10003C23C();
    v37 = swift_allocError();
    *v59 = 1;
    swift_willThrow();
  }

  *a6 = v37;
}