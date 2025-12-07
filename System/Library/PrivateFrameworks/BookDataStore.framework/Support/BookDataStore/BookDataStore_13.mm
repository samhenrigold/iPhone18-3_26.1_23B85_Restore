uint64_t sub_100198A88()
{
  v1 = 0x636E657265666572;
  if (*v0 != 1)
  {
    v1 = 0x7250746E65636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100198AEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100199F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100198B14(uint64_t a1)
{
  v2 = sub_100198BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198B50(uint64_t a1)
{
  v2 = sub_100198BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100198BC0()
{
  result = qword_1002741D8;
  if (!qword_1002741D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002741D8);
  }

  return result;
}

unint64_t sub_100198C14()
{
  result = qword_1002741E0;
  if (!qword_1002741E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002741E0);
  }

  return result;
}

uint64_t sub_100198C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100198C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100198CEC(uint64_t a1, uint64_t a2)
{
  v4 = _s11TrackedItemVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100198D50()
{
  result = qword_1002741F8;
  if (!qword_1002741F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002741F8);
  }

  return result;
}

uint64_t sub_100198DA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s11RecentPriceVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100198DE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v104 = a3;
  v105 = a2;
  v102 = a1;
  v117 = _s11RecentPriceVMa(0);
  v7 = *(v117 - 8);
  v8 = __chkstk_darwin(v117);
  v101 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v96 - v10);
  v12 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v13 = __chkstk_darwin(v12 - 8);
  v98 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v97 = (&v96 - v16);
  v17 = __chkstk_darwin(v15);
  v108 = &v96 - v18;
  v19 = __chkstk_darwin(v17);
  v112 = &v96 - v20;
  v21 = __chkstk_darwin(v19);
  v114 = &v96 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v96 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v96 - v27;
  __chkstk_darwin(v26);
  v30 = &v96 - v29;
  v31 = *(v5 + 8);
  v100 = *v5;
  v103 = v31;
  v99 = *(v5 + 16);
  v33 = *(v5 + 24);
  v32 = *(v5 + 32);
  v34 = *(v5 + 40);
  v35 = (v5 + *(_s11TrackedItemVMa(0) + 24));
  v113 = v30;
  sub_100199D04(v35, v30);
  v36 = v33;
  v115 = v33;
  v116 = v34;
  v109 = v32;
  v37 = v34;
  v38 = v34 == 1;
  if (v34 == 1)
  {
    v115 = *&a4;
    *(v5 + 24) = a4;
    v32 = v102;
    v39 = v105;
    *(v5 + 32) = v102;
    *(v5 + 40) = v39;
  }

  v106 = v37;
  v107 = v32;
  sub_100199D04(v35, v28);
  v40 = v117;
  v110 = *(v7 + 48);
  v111 = v7 + 48;
  if (v110(v28, 1, v117) == 1)
  {
    v41 = v109;
    sub_100199DD4(v36, v109, v116);
    sub_10008875C(v28, &qword_1002740D8, &qword_1001F82F0);
    sub_10008875C(v35, &qword_1002740D8, &qword_1001F82F0);
    v42 = *(v117 + 20);
    v43 = sub_1001C4CA8();
    v44 = v35 + v42;
    v45 = v41;
    v40 = v117;
    (*(*(v43 - 8) + 16))(v44, v104, v43);
    *v35 = a4;
    v38 = 1;
  }

  else
  {
    sub_10011AB94(v28, v11);
    v46 = *v11;
    *v11 = a4;
    if (v46 > a4)
    {
      v47 = v46;
    }

    else
    {
      v47 = a4;
    }

    if (v47 <= 0.0)
    {
      goto LABEL_13;
    }

    if (v46 > a4)
    {
      v46 = a4;
    }

    v48 = v47 - v46;
    if (v48 >= 0.005 && v48 / v47 >= 0.0)
    {
      v90 = *(v40 + 20);
      v91 = v36;
      v92 = v36;
      v93 = v109;
      sub_100199DD4(v91, v109, v116);
      v94 = sub_1001C4CA8();
      v95 = v11 + v90;
      v45 = v93;
      v36 = v92;
      (*(*(v94 - 8) + 24))(v95, v104, v94);
      v38 = 1;
    }

    else
    {
LABEL_13:
      v45 = v109;
      sub_100199DD4(v36, v109, v116);
    }

    sub_10008875C(v35, &qword_1002740D8, &qword_1001F82F0);
    sub_10011AB94(v11, v35);
  }

  (*(v7 + 56))(v35, 0, 1, v40);
  sub_100199D04(v35, v25);
  if (v110(v25, 1, v40) == 1)
  {
    sub_10008875C(v25, &qword_1002740D8, &qword_1001F82F0);
    v49 = v114;
  }

  else
  {
    v50 = v101;
    sub_10011AB94(v25, v101);
    sub_1001C4C18();
    v49 = v114;
    if (v51 > 3888000.0)
    {
      v104 = v36;
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v52 = sub_1001C5148();
      sub_100083274(v52, qword_100281898);

      v53 = v103;

      v54 = sub_1001C5128();
      v55 = sub_1001C65B8();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 141558530;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2080;
        v118 = 0;
        v119 = 0xE000000000000000;
        v120[0] = v57;
        if (v99)
        {
          v58._countAndFlagsBits = 65;
        }

        else
        {
          v58._countAndFlagsBits = 66;
        }

        v58._object = 0xE100000000000000;
        sub_1001C6138(v58);

        v121._countAndFlagsBits = 46;
        v121._object = 0xE100000000000000;
        sub_1001C6138(v121);
        v122._countAndFlagsBits = v100;
        v122._object = v53;
        sub_1001C6138(v122);
        v59 = sub_1001874E8(v118, v119, v120);

        *(v56 + 14) = v59;
        *(v56 + 22) = 2048;
        *(v56 + 24) = a4;
        _os_log_impl(&_mh_execute_header, v54, v55, "[TrackedItem] Price of %{mask.hash}s has stabalized at %f; updating reference price", v56, 0x20u);
        sub_10008E7BC(v57);
      }

      sub_100199D74(v50, _s11RecentPriceVMa);
      v36 = v104;
      v60 = v105;

      sub_100198C68(v115, v107, v106);
      *(v5 + 24) = a4;
      v115 = *&a4;
      v106 = v60;
      v107 = v102;
      *(v5 + 32) = v102;
      *(v5 + 40) = v60;
      v61 = v108;
      v45 = v109;
      v62 = v112;
      goto LABEL_28;
    }

    sub_100199D74(v50, _s11RecentPriceVMa);
  }

  v61 = v108;
  v62 = v112;
  if (!v38)
  {
    sub_10008875C(v113, &qword_1002740D8, &qword_1001F82F0);
    return sub_100198C68(v36, v45, v116);
  }

LABEL_28:
  sub_100199D04(v35, v49);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v63 = sub_1001C5148();
  sub_100083274(v63, qword_100281898);
  sub_100199D04(v113, v62);
  sub_100199D04(v49, v61);
  v64 = v116;
  sub_100199DD4(v36, v45, v116);
  v65 = v103;

  v66 = v115;
  v67 = v106;
  v68 = v107;
  sub_100199DD4(v115, v107, v106);
  v69 = v45;
  v70 = v61;
  v71 = sub_1001C5128();
  v72 = sub_1001C65B8();

  sub_100198C68(v36, v69, v64);
  sub_100198C68(v66, v68, v67);
  v73 = v72;
  if (os_log_type_enabled(v71, v72))
  {
    v107 = v71;
    v74 = v36;
    v75 = v114;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 141559298;
    *(v76 + 4) = 1752392040;
    *(v76 + 12) = 2080;
    v118 = 0;
    v119 = 0xE000000000000000;
    v120[0] = v77;
    if (v99)
    {
      v78._countAndFlagsBits = 65;
    }

    else
    {
      v78._countAndFlagsBits = 66;
    }

    v78._object = 0xE100000000000000;
    sub_1001C6138(v78);

    v123._countAndFlagsBits = 46;
    v123._object = 0xE100000000000000;
    sub_1001C6138(v123);
    v124._countAndFlagsBits = v100;
    v124._object = v65;
    sub_1001C6138(v124);
    v79 = sub_1001874E8(v118, v119, v120);

    *(v76 + 14) = v79;
    *(v76 + 22) = 2048;
    v80 = -1.0;
    if (v64 != 1)
    {
      v80 = *&v74;
      sub_100198C68(v74, v109, v64);
    }

    *(v76 + 24) = v80;
    *(v76 + 32) = 2048;
    *(v76 + 34) = v115;
    *(v76 + 42) = 2048;
    v81 = v97;
    sub_100199DE8(v112, v97);
    v82 = v117;
    if (v110(v81, 1, v117) == 1)
    {
      sub_10008875C(v81, &qword_1002740D8, &qword_1001F82F0);
      v83 = -1.0;
    }

    else
    {
      v83 = *v81;
      sub_100199D74(v81, _s11RecentPriceVMa);
    }

    v86 = v98;
    v88 = v107;
    v87 = v108;
    *(v76 + 44) = v83;
    *(v76 + 52) = 2048;
    sub_100199DE8(v87, v86);
    if (v110(v86, 1, v82) == 1)
    {
      sub_10008875C(v86, &qword_1002740D8, &qword_1001F82F0);
      v89 = -1.0;
    }

    else
    {
      v89 = *v86;
      sub_100199D74(v86, _s11RecentPriceVMa);
    }

    *(v76 + 54) = v89;
    _os_log_impl(&_mh_execute_header, v88, v73, "[TrackedItem] Pricing for %{mask.hash}s changed; reference: (%f → %f) recent: (%f → %f)", v76, 0x3Eu);
    sub_10008E7BC(v77);

    v85 = v75;
  }

  else
  {

    sub_100198C68(v36, v69, v64);
    sub_10008875C(v70, &qword_1002740D8, &qword_1001F82F0);
    sub_10008875C(v112, &qword_1002740D8, &qword_1001F82F0);
    v85 = v114;
  }

  sub_10008875C(v85, &qword_1002740D8, &qword_1001F82F0);
  return sub_10008875C(v113, &qword_1002740D8, &qword_1001F82F0);
}

BOOL sub_100199940(uint64_t a1, uint64_t a2)
{
  v4 = _s11RecentPriceVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v26 - v9);
  v11 = sub_100084528(&qword_1002740E0, &qword_1001F82F8);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (*a1 == *a2)
  {
    if (v14 != v15)
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_1001C6D08();
    result = 0;
    if (v16 & 1) == 0 || ((v14 ^ v15))
    {
      return result;
    }
  }

  v18 = *(a1 + 40);
  v19 = *(a2 + 40);
  if (v18 == 1)
  {
    if (v19 != 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  result = 0;
  if (v19 != 1 && *(a1 + 24) == *(a2 + 24))
  {
    if (v18)
    {
      if (!v19 || (*(a1 + 32) != *(a2 + 32) || v18 != v19) && (sub_1001C6D08() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v19)
    {
      return 0;
    }

LABEL_8:
    v20 = *(_s11TrackedItemVMa(0) + 24);
    v21 = *(v11 + 48);
    sub_100199D04(a1 + v20, v13);
    sub_100199D04(a2 + v20, &v13[v21]);
    v22 = *(v5 + 48);
    if (v22(v13, 1, v4) == 1)
    {
      if (v22(&v13[v21], 1, v4) == 1)
      {
        sub_10008875C(v13, &qword_1002740D8, &qword_1001F82F0);
        return 1;
      }

      goto LABEL_21;
    }

    sub_100199D04(v13, v10);
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_100199D74(v10, _s11RecentPriceVMa);
LABEL_21:
      v23 = &qword_1002740E0;
      v24 = &qword_1001F82F8;
LABEL_22:
      sub_10008875C(v13, v23, v24);
      return 0;
    }

    sub_10011AB94(&v13[v21], v7);
    if (*v10 != *v7)
    {
      sub_100199D74(v7, _s11RecentPriceVMa);
      sub_100199D74(v10, _s11RecentPriceVMa);
      v23 = &qword_1002740D8;
      v24 = &qword_1001F82F0;
      goto LABEL_22;
    }

    v25 = sub_1001C4C68();
    sub_100199D74(v7, _s11RecentPriceVMa);
    sub_100199D74(v10, _s11RecentPriceVMa);
    sub_10008875C(v13, &qword_1002740D8, &qword_1001F82F0);
    return (v25 & 1) != 0;
  }

  return result;
}

uint64_t sub_100199D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100199DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100199DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100199E6C()
{
  result = qword_100274208;
  if (!qword_100274208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274208);
  }

  return result;
}

unint64_t sub_100199EC4()
{
  result = qword_100274210;
  if (!qword_100274210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274210);
  }

  return result;
}

unint64_t sub_100199F1C()
{
  result = qword_100274218;
  if (!qword_100274218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274218);
  }

  return result;
}

uint64_t sub_100199F70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00656369725065 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7250746E65636572 && a2 == 0xEB00000000656369)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001C6D08();

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

uint64_t sub_10019A09C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100100DF0(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v5 = sub_10009D148(v11, v11[3]);
    __chkstk_darwin(v5);
    v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    sub_10019D5E0(*v7, a2, isUniquelyReferenced_nonNull_native, &v10);

    result = sub_10008E7BC(v11);
    *v2 = v10;
  }

  else
  {
    sub_10008875C(a1, &qword_100273D70, &unk_1001F8750);
    sub_10019D1A4(a2, v11);

    return sub_10008875C(v11, &qword_100273D70, &unk_1001F8750);
  }

  return result;
}

uint64_t sub_10019A200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_100084528(&qword_100274238, &qword_1001F8720);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _s14PricingServiceV12FetchedPriceVMa(0);
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10008875C(a1, &qword_100274238, &qword_1001F8720);
    sub_10019D24C(a2, a3, a4 & 1, v11);

    return sub_10008875C(v11, &qword_100274238, &qword_1001F8720);
  }

  else
  {
    sub_100183318(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_10017B5FC(v14, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);

    *v4 = v19;
  }

  return result;
}

uint64_t sub_10019A3CC(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_1001C4DE8();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_1001C4E58();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_1001C4DD8();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10019A544, 0, 0);
}

uint64_t sub_10019A544()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = _s14PricingServiceV16_MCatalogRequestVMa(0);
  (*(v2 + 16))(v1, v4 + v5[5], v3);
  sub_1001C4DC8();
  v6 = *(v4 + v5[6]);
  v7 = *(v4 + v5[7]);
  sub_100084528(&qword_100274248, &qword_1001F8728);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  *(inited + 32) = 0x73646C656966;
  *(inited + 40) = 0xE600000000000000;
  sub_1001C4EA8();
  v9 = sub_10019AA08(&off_1002422C8);
  v11 = v10;
  swift_arrayDestroy();
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_100118CD0(inited);
  v0[20] = v12;
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_100274250, &unk_1001F8730);
  v13 = *(v4 + v5[8]);
  sub_1001C4DF8();
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_10019A74C;
  v15 = v0[13];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v6, v7, 0, 0, v12, v13, v15);
}

uint64_t sub_10019A74C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[22] = v1;

  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[17];
  if (v1)
  {
    (*(v4[12] + 8))(v4[13], v4[11]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_10019A98C, 0, 0);
  }

  else
  {
    (*(v4[12] + 8))(v4[13], v4[11]);
    (*(v7 + 8))(v6, v8);

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_10019A98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019AA08(uint64_t a1)
{
  v2 = sub_1001C4E68();
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v16 = sub_1000ADC34(0, v6 & ~(v6 >> 63), 0, _swiftEmptyArrayStorage);

    sub_100195F7C(v8);

    sub_100195E88(v9);

    v10 = sub_100157694(v16);

    v11 = *(v10 + 16);
    if (!v11 || (v7 = sub_10012B444(*(v10 + 16), 0), v12 = sub_10012C928(&v16, v7 + 4, v11, v10), v13 = v16, , sub_100005064(v13), v12 == v11))
    {
      v16 = v7;
      sub_10012B3D8(&v16);

      sub_100084528(&unk_10026FED0, &unk_1001F1450);
      sub_1000D52A0();
      v14 = sub_1001C5FA8();

      return v14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10019ABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = _s14PricingServiceV16_MCatalogRequestVMa(0);
  v3[7] = swift_task_alloc();
  v4 = sub_1001C4E38();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1001C4E58();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10019AD08, 0, 0);
}

uint64_t sub_10019AD08()
{
  v14 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  v0[14] = sub_100083274(v1, qword_100281898);

  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[3];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 134218242;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2080;
    v0[2] = v5;

    sub_100084528(&qword_100274228, &qword_1001F8710);
    v8 = sub_1001C6078();
    v10 = sub_1001874E8(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PricingService] Fetching prices for %ld items: %s", v6, 0x16u);
    sub_10008E7BC(v7);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_10019AF20;

  return sub_10019BF08();
}

uint64_t sub_10019AF20(char a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    *(v4 + 216) = a1 & 1;

    return _swift_task_switch(sub_10019B08C, 0, 0);
  }
}

void sub_10019B08C()
{
  v84 = v0;
  if (*(v0 + 216) != 1)
  {
    sub_10019CED4();
    swift_allocError();
    *v18 = 0;
LABEL_12:
    swift_willThrow();
LABEL_15:

    v21 = *(v0 + 8);

    v21();
    return;
  }

  v1 = [*(v0 + 32) activeStoreAccount];
  *(v0 + 136) = v1;
  if (!v1)
  {
    sub_10019CED4();
    swift_allocError();
    *v19 = 1;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [*(v0 + 32) currentStorefront];
  if (!v3)
  {
LABEL_14:
    sub_10019CED4();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();

    goto LABEL_15;
  }

  v4 = v3;
  v5 = sub_1001C6018();
  v7 = v6;

  *(v0 + 144) = v5;
  *(v0 + 152) = v7;
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = *(v0 + 24);
  if (!*(v9 + 16))
  {
    v22 = sub_100118F1C(_swiftEmptyArrayStorage);

    v23 = *(v0 + 8);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);

    v23(v24, v25, v22);
    return;
  }

  v10 = v2;
  v11 = sub_1001C5128();
  v12 = sub_1001C65B8();

  v76 = v5;
  v77 = v7;
  v78 = v9;
  v75 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v80 = v15;
    *v13 = 141558786;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2112;
    v16 = [v10 identifier];
    *(v13 + 14) = v16;
    *v14 = v16;
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2080;
    v17 = sub_1001874E8(v5, v7, &v80);

    *(v13 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "[PricingService] Using account: %{mask.hash}@, store front: %{mask.hash}s", v13, 0x2Au);
    sub_10008875C(v14, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v15);

    v9 = v78;
  }

  else
  {
  }

  v26 = *(v9 + 16);
  if (!v26)
  {
    goto LABEL_25;
  }

  v27 = *(v0 + 24);
  v28 = sub_10012B5E4(v26, 0);
  v29 = sub_10012C7C8(&v80, (v28 + 4), v26, v27);
  v30 = v80;

  sub_100005064(v30);
  if (v29 != v26)
  {
    __break(1u);
LABEL_25:
    v28 = _swiftEmptyArrayStorage;
  }

  v31 = sub_1001028D0(&v80, v28);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v80;
  *(v0 + 160) = v31;
  *(v0 + 168) = v38;
  v79 = v0;
  v39 = v37 >> 1;
  v40 = (v37 >> 1) - v35;
  if (__OFSUB__(v37 >> 1, v35))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v42 = v81;
  v41 = v82;
  v43 = v83;
  v44 = _swiftEmptyArrayStorage;
  if (v40)
  {
    v73 = v83;
    v74 = v81;
    v80 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v44 = v80;
    if (v35 <= v39)
    {
      v45 = v39;
    }

    else
    {
      v45 = v35;
    }

    v46 = v45 - v35;
    v47 = (v33 + 24 * v35 + 8);
    while (v46)
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      v80 = v44;
      v51 = v44[2];
      v50 = v44[3];

      if (v51 >= v50 >> 1)
      {
        sub_1000D3898((v50 > 1), v51 + 1, 1);
        v44 = v80;
      }

      v44[2] = v51 + 1;
      v52 = &v44[2 * v51];
      v52[4] = v48;
      v52[5] = v49;
      --v46;
      v47 += 3;
      if (!--v40)
      {
        v43 = v73;
        v42 = v74;
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_38:
  v79[22] = v44;
  v53 = v43 >> 1;
  v54 = (v43 >> 1) - v41;
  if (__OFSUB__(v43 >> 1, v41))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v55 = _swiftEmptyArrayStorage;
  if (v54)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v55 = v80;
    if (v41 <= v53)
    {
      v56 = v53;
    }

    else
    {
      v56 = v41;
    }

    v57 = v56 - v41;
    v58 = (v42 + 24 * v41 + 8);
    while (v57)
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v80 = v55;
      v62 = v55[2];
      v61 = v55[3];

      if (v62 >= v61 >> 1)
      {
        sub_1000D3898((v61 > 1), v62 + 1, 1);
        v55 = v80;
      }

      v55[2] = v62 + 1;
      v63 = &v55[2 * v62];
      v63[4] = v59;
      v63[5] = v60;
      --v57;
      v58 += 3;
      if (!--v54)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_49:
  v79[23] = v55;
  v65 = v79[12];
  v64 = v79[13];
  v66 = v79[11];
  v68 = v79[6];
  v67 = v79[7];
  (*(v79[9] + 104))(v79[10], enum case for MClientIdentifier.booksPriceTracking(_:), v79[8]);
  v69 = v75;
  sub_1001C4E48();
  (*(v65 + 16))(&v67[v68[5]], v64, v66);
  v70 = *(v78 + 16);
  *v67 = v76;
  *(v67 + 1) = v77;
  *&v67[v68[6]] = v44;
  *&v67[v68[7]] = v55;
  *&v67[v68[8]] = v70;

  v71 = swift_task_alloc();
  v79[24] = v71;
  *v71 = v79;
  v71[1] = sub_10019B7B8;
  v72 = v79[7];

  sub_10019A3CC(v72);
}

uint64_t sub_10019B7B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {

    v4 = sub_10019BE24;
  }

  else
  {
    v4 = sub_10019B8E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10019B8E8()
{
  v52 = v0;
  v1 = v0[22];
  v2 = v0[23];

  v4 = sub_100153FD8(v3);
  v5 = sub_1001AA1F0(v1, v4);

  v6 = sub_1001AA1F0(v2, v5);

  if (v6[2])
  {

    v7 = sub_1001C5128();
    v8 = sub_1001C6598();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v50[0] = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6[2];

      *(v9 + 12) = 2080;
      v11 = sub_1001C63F8();
      v13 = v12;

      v14 = sub_1001874E8(v11, v13, v50);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "[PricingService] Received assets for %ld unrequested adamIDs: %s", v9, 0x16u);
      sub_10008E7BC(v10);
    }

    else
    {
    }
  }

  else
  {
  }

  v15 = v0[3];
  v49 = sub_100118F1C(_swiftEmptyArrayStorage);
  v16 = -1;
  v17 = -1 << *(v15 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v15 + 56);
  v19 = (63 - v17) >> 6;
  v20 = v0[26];

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_14:
      v23 = v0[25];
      v24 = *(v15 + 48) + 24 * (__clz(__rbit64(v18)) | (v22 << 6));
      v25 = *v24;
      v26 = *(v24 + 8);
      LOBYTE(v24) = *(v24 + 16);
      v50[0] = v25;
      v50[1] = v26;
      v51 = v24;

      sub_10019C270(&v49, v50, v23);
      if (v20)
      {
        break;
      }

      v18 &= v18 - 1;
      v21 = v22;
      if (!v18)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_11:
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return;
      }

      if (v22 >= v19)
      {
        break;
      }

      v18 = *(v15 + 56 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    v27 = v49;

    v28 = sub_1001C5128();
    v29 = sub_1001C65B8();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[17];
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[11];
    v35 = v0[7];
    if (v30)
    {
      v48 = v0[13];
      v36 = swift_slowAlloc();
      v47 = v34;
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 134218242;
      *(v36 + 4) = *(v27 + 16);

      *(v36 + 12) = 2080;
      sub_10019D3A8(v27);
      sub_100110100();
      v45 = v31;
      v46 = v35;
      v38 = sub_1001C5F18();
      v40 = v39;

      v41 = sub_1001874E8(v38, v40, v50);

      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v28, v29, "[PricingService] Received %ld prices: %s", v36, 0x16u);
      sub_10008E7BC(v37);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_10019D8E8(v46, _s14PricingServiceV16_MCatalogRequestVMa);
      (*(v33 + 8))(v48, v47);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_10019D8E8(v35, _s14PricingServiceV16_MCatalogRequestVMa);
      (*(v33 + 8))(v32, v34);
    }

    v42 = v0[1];
    v43 = v0[18];
    v44 = v0[19];

    v42(v43, v44, v27);
  }
}

uint64_t sub_10019BE24()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10019D8E8(v5, _s14PricingServiceV16_MCatalogRequestVMa);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10019BF28()
{
  v1 = [*(v0 + 160) priceTrackingEnabled];
  *(v0 + 168) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10019C060;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_100084528(&unk_100274258, &unk_1001F8740);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10019CDD4;
  *(v0 + 104) = &unk_10024C0A0;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10019C060()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10019C1FC;
  }

  else
  {
    v2 = sub_10019C170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019C170()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10019C1FC(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

void sub_10019C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a1;
  v5 = sub_100084528(&qword_100274238, &qword_1001F8720);
  __chkstk_darwin(v5 - 8);
  v7 = &v91 - v6;
  v8 = sub_1001C4B28();
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v104 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1001C4D98();
  v10 = *(v105 - 8);
  v11 = __chkstk_darwin(v105);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  __chkstk_darwin(v14);
  v18 = &v91 - v17;
  v20 = *a2;
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  if (*(a3 + 16) && (v22 = sub_100187B3C(v20, v19), (v23 & 1) != 0))
  {
    v98 = v19;
    v99 = v20;
    v24 = *(*(a3 + 56) + 8 * v22);
    swift_getObjectType();
    v25 = v24;
    sub_1001C4EB8();
    v26 = *(v10 + 104);
    v27 = &enum case for MResourceType.audiobooks(_:);
    v96 = v21;
    if (!v21)
    {
      v27 = &enum case for MResourceType.books(_:);
    }

    v28 = v18;
    v29 = v105;
    v26(v16, *v27, v105);
    sub_10019D948();
    v100 = v28;
    sub_1001C6248();
    sub_1001C6248();
    v31 = v10 + 8;
    v30 = *(v10 + 8);
    v30(v16, v29);
    if (v106 != v108)
    {
      v97 = v25;
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v54 = sub_1001C5148();
      sub_100083274(v54, qword_100281898);
      v55 = v100;
      (*(v10 + 16))(v13, v100, v29);
      v56 = v98;
      swift_bridgeObjectRetain_n();
      v38 = sub_1001C5128();
      v57 = sub_1001C6598();
      if (os_log_type_enabled(v38, v57))
      {
        v58 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v108 = v104;
        *v58 = 136446978;
        LODWORD(v103) = v57;
        v59 = sub_1001C4D88();
        v95 = v30;
        v61 = v60;
        v30(v13, v29);
        v62 = sub_1001874E8(v59, v61, &v108);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2160;
        *(v58 + 14) = 1752392040;
        *(v58 + 22) = 2080;
        v63 = v96;
        if (v96)
        {
          v64._countAndFlagsBits = 65;
        }

        else
        {
          v64._countAndFlagsBits = 66;
        }

        v106 = 0;
        v107 = 0xE000000000000000;
        v64._object = 0xE100000000000000;
        sub_1001C6138(v64);

        v113._countAndFlagsBits = 46;
        v113._object = 0xE100000000000000;
        sub_1001C6138(v113);
        v114._countAndFlagsBits = v99;
        v114._object = v56;
        sub_1001C6138(v114);
        v65 = sub_1001874E8(v106, v107, &v108);

        *(v58 + 24) = v65;
        *(v58 + 32) = 1024;

        *(v58 + 34) = v63;

        _os_log_impl(&_mh_execute_header, v38, v103, "[PricingService] Incorrect asset type: %{public}s for: %{mask.hash}s (isAudiobook? %{BOOL}d)", v58, 0x26u);
        swift_arrayDestroy();

        goto LABEL_29;
      }

      swift_bridgeObjectRelease_n();
      v30(v13, v29);
      v69 = v55;
      goto LABEL_35;
    }

    v32 = COERCE_DOUBLE(sub_1001C4E98());
    v33 = v25;
    if (v34)
    {
      v36 = v98;
      v35 = v99;
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v37 = sub_1001C5148();
      sub_100083274(v37, qword_100281898);

      v38 = sub_1001C5128();
      v39 = sub_1001C6598();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v97 = v33;
        v41 = v40;
        v42 = swift_slowAlloc();
        v95 = v30;
        v43 = v42;
        v108 = v42;
        *v41 = 141558274;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2080;
        v106 = 0;
        v107 = 0xE000000000000000;
        if (v96)
        {
          v44._countAndFlagsBits = 65;
        }

        else
        {
          v44._countAndFlagsBits = 66;
        }

        v44._object = 0xE100000000000000;
        sub_1001C6138(v44);

        v109._countAndFlagsBits = 46;
        v109._object = 0xE100000000000000;
        sub_1001C6138(v109);
        v110._countAndFlagsBits = v35;
        v110._object = v36;
        sub_1001C6138(v110);
        v45 = sub_1001874E8(v106, v107, &v108);

        *(v41 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "[PricingService] Missing asset price for: %{mask.hash}s", v41, 0x16u);
        sub_10008E7BC(v43);

LABEL_29:

        v95(v100, v29);
        return;
      }

      v69 = v100;
LABEL_35:
      v30(v69, v29);
      return;
    }

    v94 = v32;
    v95 = v30;
    v66 = v98;
    v67 = v99;
    v97 = v25;
    if (v32 > 0.0)
    {
      v68 = [v25 priceFormatted];
      if (v68)
      {
      }

      else
      {
        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v70 = sub_1001C5148();
        sub_100083274(v70, qword_100281898);

        v71 = sub_1001C5128();
        v72 = sub_1001C6598();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v108 = v74;
          *v73 = 134218498;
          *(v73 + 4) = v94;
          *(v73 + 12) = 2160;
          *(v73 + 14) = 1752392040;
          *(v73 + 22) = 2080;
          v106 = 0;
          v107 = 0xE000000000000000;
          if (v96)
          {
            v75._countAndFlagsBits = 65;
          }

          else
          {
            v75._countAndFlagsBits = 66;
          }

          v92 = v71;
          v75._object = 0xE100000000000000;
          sub_1001C6138(v75);

          v115._countAndFlagsBits = 46;
          v115._object = 0xE100000000000000;
          sub_1001C6138(v115);
          v116._countAndFlagsBits = v67;
          v116._object = v66;
          sub_1001C6138(v116);
          v76 = v72;
          v77 = sub_1001874E8(v106, v107, &v108);

          *(v73 + 24) = v77;
          v71 = v92;
          _os_log_impl(&_mh_execute_header, v92, v76, "[PricingService] Missing formatted value for non-zero price %f for: %{mask.hash}s", v73, 0x20u);
          sub_10008E7BC(v74);

          v33 = v97;
        }
      }
    }

    v92 = sub_1001C4E88();
    v79 = v78;
    sub_1001C4E78();
    v80 = [v33 priceFormatted];
    v93 = v31;
    if (v80)
    {
      v81 = v80;
      v82 = v66;
      v83 = sub_1001C6018();
      v85 = v84;
    }

    else
    {
      v82 = v66;
      v83 = 0;
      v85 = 0;
    }

    v86 = _s14PricingServiceV12FetchedPriceVMa(0);
    v87 = v101;
    v88 = v102;
    v89 = v104;
    (*(v101 + 16))(&v7[*(v86 + 20)], v104, v102);
    *v7 = v92;
    *(v7 + 1) = v79;
    v90 = &v7[*(v86 + 24)];
    *v90 = v94;
    *(v90 + 1) = v83;
    *(v90 + 2) = v85;
    (*(*(v86 - 8) + 56))(v7, 0, 1, v86);

    sub_10019A200(v7, v99, v82, v96);

    (*(v87 + 8))(v89, v88);
    v95(v100, v105);
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v46 = sub_1001C5148();
    sub_100083274(v46, qword_100281898);

    v47 = sub_1001C5128();
    v48 = sub_1001C65B8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v21;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v108 = v51;
      *v50 = 141558274;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2080;
      v106 = 0;
      v107 = 0xE000000000000000;
      if (v49)
      {
        v52._countAndFlagsBits = 65;
      }

      else
      {
        v52._countAndFlagsBits = 66;
      }

      v52._object = 0xE100000000000000;
      sub_1001C6138(v52);

      v111._countAndFlagsBits = 46;
      v111._object = 0xE100000000000000;
      sub_1001C6138(v111);
      v112._countAndFlagsBits = v20;
      v112._object = v19;
      sub_1001C6138(v112);
      v53 = sub_1001874E8(v106, v107, &v108);

      *(v50 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "[PricingService] Missing asset for: %{mask.hash}s", v50, 0x16u);
      sub_10008E7BC(v51);
    }
  }
}

uint64_t sub_10019CDD4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10009BB74((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_100084528(&unk_100270F10, &unk_1001F1F70);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

unint64_t sub_10019CED4()
{
  result = qword_100274220;
  if (!qword_100274220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274220);
  }

  return result;
}

uint64_t sub_10019CFAC(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_100187A60(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v14 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v14;
  }

  v12 = *(*(v11 + 56) + 16 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v12;
}

uint64_t sub_10019D058(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_100187BB4(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10013FF8C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10018B168();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1001C6B08();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1001C6AF8();
  v8 = sub_10017AA98(v4, v7);

  v9 = sub_100187BB4(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10013FF8C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

double sub_10019D1A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100187D7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018B910();
      v9 = v11;
    }

    sub_100100DF0((*(v9 + 56) + 40 * v7), a2);
    sub_1001402C8(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10019D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_100187C98(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018BA94();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = _s14PricingServiceV12FetchedPriceVMa(0);
    v20 = *(v13 - 8);
    sub_100183318(v12 + *(v20 + 72) * v9, a4);
    sub_100140460(v9, v11);
    *v5 = v11;
    v14 = *(v20 + 56);
    v15 = a4;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = _s14PricingServiceV12FetchedPriceVMa(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a4;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void *sub_10019D3A8(uint64_t a1)
{
  v2 = _s14PricingServiceV12FetchedPriceVMa(0);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_100274230, &qword_1001F8718);
  result = sub_1001C6B48();
  v5 = 0;
  v33 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v28 = result + 8;
  v29 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(v33 + 56);
      v18 = *(v33 + 48) + 24 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v34 = *(v18 + 16);
      v21 = v30;
      sub_10019D884(v17 + *(v31 + 72) * v16, v30);
      v22 = *(v21 + *(v32 + 24));

      sub_10019D8E8(v21, _s14PricingServiceV12FetchedPriceVMa);
      result = v29;
      *(v28 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v23 = result[6] + 24 * v16;
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = v34;
      *(result[7] + 8 * v16) = v22;
      v24 = result[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      result[2] = v26;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019D5E0(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for BDSSyncEnginePipeline(0);
  v29 = v8;
  v30 = &off_100247AF8;
  *&v28 = a1;
  v9 = *a4;
  v11 = sub_100187D7C(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_10008E7BC(v18);
      return sub_100100DF0(&v28, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_10018B910();
    goto LABEL_7;
  }

  sub_10018A000(v14, a3 & 1);
  v20 = sub_100187D7C(a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    sub_10019D9CC();
    result = sub_1001C6D68();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_10009D148(&v28, v8);
  __chkstk_darwin(v22);
  v24 = (&v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_10019D7C4(v11, a2, *v24, v17);
  v26 = a2;
  return sub_10008E7BC(&v28);
}

uint64_t sub_10019D7C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for BDSSyncEnginePipeline(0);
  v14 = &off_100247AF8;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100100DF0(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_10019D884(uint64_t a1, uint64_t a2)
{
  v4 = _s14PricingServiceV12FetchedPriceVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019D8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10019D948()
{
  result = qword_100274240;
  if (!qword_100274240)
  {
    sub_1001C4D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274240);
  }

  return result;
}

unint64_t sub_10019D9CC()
{
  result = qword_100274000;
  if (!qword_100274000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100274000);
  }

  return result;
}

void sub_10019DA50(uint64_t a1)
{
  sub_1001C4E58();
  if (v1 <= 0x3F)
  {
    sub_10019DAF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10019DAF4()
{
  if (!qword_1002742D0)
  {
    v0 = sub_1001C62F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002742D0);
    }
  }
}

uint64_t sub_10019DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10019DC1C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_10019DCC4(uint64_t a1)
{
  result = sub_1001C4B28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10019DD4C()
{
  result = qword_1002743A8;
  if (!qword_1002743A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002743A8);
  }

  return result;
}

uint64_t _s6UpdateVMa(uint64_t a1)
{
  result = qword_100274408;
  if (!qword_100274408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019DE14(uint64_t a1)
{
  sub_1001C4CA8();
  if (v1 <= 0x3F)
  {
    sub_10019DE98(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10019DE98(uint64_t a1)
{
  if (!qword_100274418)
  {
    sub_100110100();
    v1 = sub_1001C6428();
    if (!v2)
    {
      atomic_store(v1, &qword_100274418);
    }
  }
}

uint64_t sub_10019DEF4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100274460, &qword_1001F88D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10009BB74(a1, a1[3]);
  sub_10019E894();
  sub_1001C6E78();
  v12 = 0;
  sub_1001C4CA8();
  sub_1000B6E64(&qword_10026F970, &protocol conformance descriptor for Date);
  sub_1001C6CA8();
  if (!v2)
  {
    v11 = *(v3 + *(_s6UpdateVMa(0) + 20));
    v10[15] = 1;
    sub_100084528(&qword_100274228, &qword_1001F8710);
    sub_10019E9A8(&qword_100274468, sub_100132F80, &protocol conformance descriptor for <> Set<A>);
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019E0F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_1001C4CA8();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100084528(&qword_100274448, &qword_1001F88C8);
  v15 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v14 - v6;
  updated = _s6UpdateVMa(0);
  __chkstk_darwin(updated);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4C98();
  sub_10009BB74(a1, a1[3]);
  sub_10019E894();
  sub_1001C6E58();
  if (v2)
  {
    v11 = v18;
    sub_10008E7BC(a1);
    return (*(v11 + 8))(v10, v4);
  }

  else
  {
    v12 = v15;
    v21 = 0;
    sub_1000B6E64(&qword_10026F980, &protocol conformance descriptor for Date);
    sub_1001C6C28();
    (*(v18 + 40))(v10, v16, v4);
    sub_100084528(&qword_100274228, &qword_1001F8710);
    v20 = 1;
    sub_10019E9A8(&qword_100274458, sub_100132E6C, &protocol conformance descriptor for <> Set<A>);
    sub_1001C6C28();
    (*(v12 + 8))(v7, v17);
    *&v10[*(updated + 20)] = v19;
    sub_10019E8E8(v10, v14);
    sub_10008E7BC(a1);
    return sub_10019E94C(v10);
  }
}

uint64_t sub_10019E474()
{
  if (*v0)
  {
    return 0x7344496D657469;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_10019E4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7344496D657469 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_10019E584(uint64_t a1)
{
  v2 = sub_10019E894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019E5C0(uint64_t a1)
{
  v2 = sub_10019E894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019E5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1001C4C68() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10019E694(v7, v8);
}

uint64_t sub_10019E694(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v25 = v7;
  v26 = result;
  v28 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v27 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = a2;
    sub_1001C6DF8();

    sub_1001C60E8();
    sub_1001C6E18(v15);
    v17 = sub_1001C6E28();
    v18 = -1 << *(v16 + 32);
    v19 = v17 & ~v18;
    if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_26:

      return 0;
    }

    v20 = ~v18;
    v21 = *(v28 + 48);
    while (1)
    {
      v22 = v21 + 24 * v19;
      v23 = *(v22 + 16);
      if (*v22 != v14 || *(v22 + 8) != v13)
      {
        break;
      }

      if (v15 == v23)
      {
        goto LABEL_23;
      }

LABEL_16:
      v19 = (v19 + 1) & v20;
      if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (sub_1001C6D08() & 1) == 0 || ((v15 ^ v23))
    {
      goto LABEL_16;
    }

LABEL_23:

    v7 = v25;
    result = v26;
    v6 = v27;
    a2 = v28;
  }

  while (v27);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019E894()
{
  result = qword_100274450;
  if (!qword_100274450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274450);
  }

  return result;
}

uint64_t sub_10019E8E8(uint64_t a1, uint64_t a2)
{
  updated = _s6UpdateVMa(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_10019E94C(uint64_t a1)
{
  updated = _s6UpdateVMa(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_10019E9A8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100274228, &qword_1001F8710);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019EA34()
{
  result = qword_100274470;
  if (!qword_100274470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274470);
  }

  return result;
}

unint64_t sub_10019EA8C()
{
  result = qword_100274478;
  if (!qword_100274478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274478);
  }

  return result;
}

unint64_t sub_10019EAE4()
{
  result = qword_100274480;
  if (!qword_100274480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274480);
  }

  return result;
}

uint64_t _s5StateVMa(uint64_t a1)
{
  result = qword_1002744E0;
  if (!qword_1002744E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019EBAC(uint64_t a1)
{
  sub_10019ED50(319, &qword_100271C20, _s11TrackedItemVMa, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10019ED50(319, &unk_1002744F0, _s4DealVMa, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      _s14UpdateScheduleVMa(319);
      if (v3 <= 0x3F)
      {
        sub_10019ED50(319, &qword_100271450, _s6UpdateVMa, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10011DD70(319, &qword_100271C38, &_s12StoreFrontIDVN);
          if (v5 <= 0x3F)
          {
            sub_10011DD70(319, &qword_100271C48, &_s20TemplateNotificationVN);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10019ED50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10019EDB4()
{
  if (*(*v0 + 16))
  {
    v1 = v0 + *(_s5StateVMa(0) + 24);
    sub_1001C4C18();
    v3 = v2;
    v4 = *(v1 + *(_s14UpdateScheduleVMa(0) + 20));
    v5 = (v4 + 32);
    v6 = *(v4 + 16) + 1;
    while (--v6)
    {
      v7 = v5 + 4;
      v3 = v3 - *v5;
      v5 += 4;
      if (v3 <= 0.0)
      {
        return *(v7 - 2);
      }
    }
  }

  return 0;
}

NSObject *sub_10019EE64()
{
  v64 = _s4DealVMa(0);
  v1 = *(v64 - 8);
  __chkstk_darwin(v64);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = _s8CardItemVMa(0);
  v65 = *(v63 - 8);
  v4 = __chkstk_darwin(v63);
  v61 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v60 - v6;
  v8 = *(v0 + 8);
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v60 = v0;
    v69 = _swiftEmptyArrayStorage;
    sub_1000D391C(0, v9, 0);
    v10 = v69;
    v11 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v62 = *(v1 + 72);
    v12 = v64;
    do
    {
      v67 = v10;
      sub_1001AB1DC(v11, v3, _s4DealVMa);
      v13 = *(v3 + 1);
      v66 = *v3;
      v14 = v3[16];
      v15 = v12[7];
      v16 = v63;
      v17 = *(v63 + 24);
      v18 = sub_1001C4CA8();
      (*(*(v18 - 8) + 16))(&v7[v17], &v3[v15], v18);
      v19 = v12[9];
      v20 = *&v3[v12[8]];
      v22 = *&v3[v19];
      v21 = *&v3[v19 + 8];

      sub_1001AB244(v3, _s4DealVMa);
      *v7 = v66;
      *(v7 + 1) = v13;
      v7[16] = v14;
      *&v7[*(v16 + 28)] = v20;
      v23 = &v7[*(v16 + 32)];
      *v23 = v22;
      *(v23 + 1) = v21;
      v10 = v67;
      v69 = v67;
      isa = v67[2].isa;
      v24 = v67[3].isa;
      if (isa >= v24 >> 1)
      {
        sub_1000D391C((v24 > 1), isa + 1, 1);
        v10 = v69;
      }

      v10[2].isa = (isa + 1);
      sub_1001AB0E4(v7, v10 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * isa, _s8CardItemVMa);
      v11 += v62;
      --v9;
    }

    while (v9);
    v0 = v60;
  }

  v26 = _s5StateVMa(0);
  v27 = *(v0 + *(v26 + 48));
  if (v27 >= v10[2].isa)
  {
    return v10;
  }

  v28 = sub_1001A4230(*(v0 + *(v26 + 48)), v10);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if ((v33 & 1) == 0)
  {

LABEL_10:
    sub_10017781C(v28, v30, v32, v34);
    v36 = v35;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_1001C6D38();
  swift_unknownObjectRetain_n();

  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = _swiftEmptyArrayStorage;
  }

  v38 = v37[2];

  if (__OFSUB__(v34 >> 1, v32))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v38 != (v34 >> 1) - v32)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v36 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v36)
  {
    v36 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_19:
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v39 = sub_1001C5148();
  sub_100083274(v39, qword_100281898);

  v40 = sub_1001C5128();
  v41 = sub_1001C65B8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v69 = v43;
    *v42 = 134218498;
    v44 = v10[2].isa;

    *(v42 + 4) = v44;

    *(v42 + 12) = 2048;
    *(v42 + 14) = v27;
    *(v42 + 22) = 2080;
    v45 = v36[2];
    if (v45)
    {
      v64 = v43;
      LODWORD(v66) = v41;
      v67 = v40;
      v68 = _swiftEmptyArrayStorage;
      sub_1000D3960(0, v45, 0);
      v46 = v68;
      v47 = v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v48 = *(v65 + 72);
      do
      {
        v49 = v61;
        sub_1001AB1DC(v47, v61, _s8CardItemVMa);
        v51 = *v49;
        v50 = v49[1];

        sub_1001AB244(v49, _s8CardItemVMa);
        v68 = v46;
        v53 = v46[2];
        v52 = v46[3];
        if (v53 >= v52 >> 1)
        {
          sub_1000D3960((v52 > 1), v53 + 1, 1);
          v46 = v68;
        }

        v46[2] = v53 + 1;
        v54 = &v46[2 * v53];
        v54[4] = v51;
        v54[5] = v50;
        v47 += v48;
        --v45;
      }

      while (v45);
      v40 = v67;
      LOBYTE(v41) = v66;
      v43 = v64;
    }

    v55 = sub_1001C62A8();
    v57 = v56;

    v58 = sub_1001874E8(v55, v57, &v69);

    *(v42 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v40, v41, "[State] Number of deals (%ld) exceeds limit (%ld), trimmed to: %s", v42, 0x20u);
    sub_10008E7BC(v43);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v36;
}

uint64_t sub_10019F4E8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v134) = a1;
  v6 = _s11TrackedItemVMa(0);
  v128 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C4CA8();
  v136 = *(v9 - 8);
  v137 = v9;
  __chkstk_darwin(v9);
  v135 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v12 = __chkstk_darwin(v11 - 8);
  v130 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v129 = &v120 - v15;
  __chkstk_darwin(v14);
  v17 = &v120 - v16;
  updated = _s6UpdateVMa(0);
  v141 = *(updated - 8);
  v19 = __chkstk_darwin(updated);
  v132 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v131 = &v120 - v22;
  v23 = __chkstk_darwin(v21);
  v127 = &v120 - v24;
  v25 = __chkstk_darwin(v23);
  v124 = &v120 - v26;
  v27 = __chkstk_darwin(v25);
  v133 = &v120 - v28;
  v29 = __chkstk_darwin(v27);
  v121 = &v120 - v30;
  v31 = __chkstk_darwin(v29);
  v123 = &v120 - v32;
  __chkstk_darwin(v31);
  v34 = &v120 - v33;
  v35 = _s5StateVMa(0);
  v36 = __chkstk_darwin(v35);
  v38 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v120 - v39;
  v139 = v3;
  sub_1001AB1DC(v3, &v120 - v39, _s5StateVMa);
  v138 = v35;
  v41 = &v40[*(v35 + 24)];
  sub_1001C4C18();
  v43 = v42;
  v44 = *&v41[*(_s14UpdateScheduleVMa(0) + 20)];
  v45 = (v44 + 32);
  v46 = *(v44 + 16) + 1;
  v140 = updated;
  do
  {
    if (!--v46)
    {
      sub_1001AB244(v40, _s5StateVMa);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v66 = sub_1001C5148();
      sub_100083274(v66, qword_100281898);
      v67 = sub_1001C5128();
      v68 = sub_1001C65B8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "[State] Skipping tracked-prices update because there is no min update interval", v69, 2u);
      }

      return (*(v141 + 56))(a3, 1, 1, v140);
    }

    v47 = v45 + 4;
    v43 = v43 - *v45;
    v45 += 4;
  }

  while (v43 > 0.0);
  v122 = a3;
  v48 = *(v47 - 3);
  sub_1001AB244(v40, _s5StateVMa);
  v49 = v139;
  v50 = *(v138 + 28);
  v51 = 1;
  v125 = *(v141 + 48);
  v126 = v141 + 48;
  if (!v125(v139 + v50, 1, updated))
  {
    sub_1001AB1DC(v49 + v50, v34, _s6UpdateVMa);
    sub_1001C4C18();
    v53 = v52;
    sub_1001AB244(v34, _s6UpdateVMa);
    v51 = v48 <= v53;
  }

  sub_1001AB1DC(v49, v38, _s5StateVMa);
  v54 = sub_1001A4AB8(v134, v51);
  sub_1001AB244(v38, _s5StateVMa);
  v55 = v54[2];
  if (!v55)
  {

    sub_10009ADF0(v49 + v50, v17, &qword_1002712C8, &qword_1001F3A18);
    if (v125(v17, 1, updated) == 1)
    {
      sub_10008875C(v17, &qword_1002712C8, &qword_1001F3A18);
      v81 = v122;
    }

    else
    {
      v88 = v123;
      sub_1001AB0E4(v17, v123, _s6UpdateVMa);
      v81 = v122;
      if ((v51 & 1) == 0)
      {
        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v110 = sub_1001C5148();
        sub_100083274(v110, qword_100281898);
        v111 = v121;
        sub_1001AB1DC(v88, v121, _s6UpdateVMa);
        v112 = sub_1001C5128();
        v113 = sub_1001C65B8();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v142[0] = v115;
          *v114 = 136446210;
          sub_1000B6E64(&qword_100270A80, &protocol conformance descriptor for Date);
          v116 = sub_1001C6CC8();
          v118 = v117;
          sub_1001AB244(v111, _s6UpdateVMa);
          v119 = sub_1001874E8(v116, v118, v142);

          *(v114 + 4) = v119;
          _os_log_impl(&_mh_execute_header, v112, v113, "[State] Skipping tracked-prices update because the last update (at %{public}s) was recent enough", v114, 0xCu);
          sub_10008E7BC(v115);

          v81 = v122;
        }

        else
        {

          sub_1001AB244(v111, _s6UpdateVMa);
        }

        sub_1001AB244(v88, _s6UpdateVMa);
        return (*(v141 + 56))(v81, 1, 1, v140);
      }

      sub_1001AB244(v88, _s6UpdateVMa);
    }

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v89 = sub_1001C5148();
    sub_100083274(v89, qword_100281898);
    v90 = sub_1001C5128();
    v91 = sub_1001C65B8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "[State] Skipping tracked-prices update because there are no items that need updating", v92, 2u);
    }

    return (*(v141 + 56))(v81, 1, 1, v140);
  }

  (*(v136 + 16))(v135, a2, v137);
  v142[0] = _swiftEmptyArrayStorage;
  sub_1000D3980(0, v55, 0);
  v56 = v142[0];
  v57 = *(v128 + 80);
  v134 = v54;
  v58 = v54 + ((v57 + 32) & ~v57);
  v59 = *(v128 + 72);
  do
  {
    sub_1001AB1DC(v58, v8, _s11TrackedItemVMa);
    v60 = *v8;
    v61 = *(v8 + 1);
    v62 = v8[16];

    sub_1001AB244(v8, _s11TrackedItemVMa);
    v142[0] = v56;
    v64 = *(v56 + 16);
    v63 = *(v56 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1000D3980((v63 > 1), v64 + 1, 1);
      v56 = v142[0];
    }

    *(v56 + 16) = v64 + 1;
    v65 = v56 + 24 * v64;
    *(v65 + 32) = v60;
    *(v65 + 40) = v61;
    *(v65 + 48) = v62;
    v58 += v59;
    --v55;
  }

  while (v55);

  v71 = sub_1001575F4(v56);

  v72 = v133;
  (*(v136 + 32))(v133, v135, v137);
  v74 = v139;
  v73 = v140;
  *(v72 + *(v140 + 20)) = v71;
  v75 = *(v138 + 32);
  v76 = v129;
  sub_10009ADF0(v74 + v75, v129, &qword_1002712C8, &qword_1001F3A18);
  v77 = v125(v76, 1, v73);
  if (v77 == 1)
  {
    sub_10008875C(v76, &qword_1002712C8, &qword_1001F3A18);
    a3 = v122;
    v79 = v131;
    v78 = v132;
    v80 = v130;
    goto LABEL_37;
  }

  v82 = v124;
  sub_1001AB0E4(v76, v124, _s6UpdateVMa);
  v83 = sub_10019E694(*(v82 + *(v73 + 20)), v71);
  a3 = v122;
  v79 = v131;
  v78 = v132;
  v80 = v130;
  if (v83)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v84 = sub_1001C5148();
    sub_100083274(v84, qword_100281898);
    v85 = sub_1001C5128();
    v86 = sub_1001C65B8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "[State] Skipping tracked-prices update because there is an in-progress update for the same items", v87, 2u);
    }

    sub_1001AB244(v82, _s6UpdateVMa);
    sub_1001AB244(v72, _s6UpdateVMa);
    return (*(v141 + 56))(a3, 1, 1, v140);
  }

  sub_1001AB244(v82, _s6UpdateVMa);
LABEL_37:
  sub_10009ADF0(v74 + v75, v80, &qword_1002712C8, &qword_1001F3A18);
  v93 = v125(v80, 1, v73);
  v94 = v127;
  if (v93 == 1)
  {
    sub_10008875C(v80, &qword_1002712C8, &qword_1001F3A18);
  }

  else
  {
    sub_1001AB0E4(v80, v127, _s6UpdateVMa);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v95 = sub_1001C5148();
    sub_100083274(v95, qword_100281898);
    sub_1001AB1DC(v94, v79, _s6UpdateVMa);
    sub_1001AB1DC(v72, v78, _s6UpdateVMa);
    v96 = sub_1001C5128();
    v97 = sub_1001C6598();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v142[0] = v138;
      *v98 = 136446466;
      sub_1000B6E64(&qword_100270A80, &protocol conformance descriptor for Date);
      v99 = sub_1001C6CC8();
      v101 = v100;
      sub_1001AB244(v79, _s6UpdateVMa);
      v102 = sub_1001874E8(v99, v101, v142);
      v74 = v139;

      *(v98 + 4) = v102;
      *(v98 + 12) = 2082;
      v103 = sub_1001C6CC8();
      v105 = v104;
      sub_1001AB244(v78, _s6UpdateVMa);
      v106 = sub_1001874E8(v103, v105, v142);
      a3 = v122;

      *(v98 + 14) = v106;
      _os_log_impl(&_mh_execute_header, v96, v97, "[State] Replacing update from: %{public}s with update from: %{public}s", v98, 0x16u);
      swift_arrayDestroy();
      v72 = v133;

      v107 = v127;
    }

    else
    {

      sub_1001AB244(v78, _s6UpdateVMa);
      sub_1001AB244(v79, _s6UpdateVMa);
      v107 = v94;
    }

    sub_1001AB244(v107, _s6UpdateVMa);
  }

  sub_10008875C(v74 + v75, &qword_1002712C8, &qword_1001F3A18);
  sub_1001AB1DC(v72, v74 + v75, _s6UpdateVMa);
  v108 = v140;
  v109 = *(v141 + 56);
  v109(v74 + v75, 0, 1, v140);
  sub_1001AB0E4(v72, a3, _s6UpdateVMa);
  return (v109)(a3, 0, 1, v108);
}

void sub_1001A04F0(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v65 = a3;
  v66 = a5;
  v68 = a4;
  v72 = a2;
  updated = _s6UpdateVMa(0);
  v8 = *(updated - 8);
  v9 = __chkstk_darwin(updated);
  v75 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v64 - v11;
  v12 = sub_100084528(&qword_100271D58, &qword_1001F4BD0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v17 = __chkstk_darwin(v16 - 8);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v64 - v20;
  __chkstk_darwin(v19);
  v23 = &v64 - v22;
  v67 = _s5StateVMa(0);
  v24 = *(v67 + 32);
  v73 = v5;
  v70 = v24;
  sub_10009ADF0(v5 + v24, v23, &qword_1002712C8, &qword_1001F3A18);
  v76 = a1;
  sub_1001AB1DC(a1, v21, _s6UpdateVMa);
  v71 = *(v8 + 56);
  v71(v21, 0, 1, updated);
  v25 = *(v13 + 56);
  sub_10009ADF0(v23, v15, &qword_1002712C8, &qword_1001F3A18);
  sub_10009ADF0(v21, &v15[v25], &qword_1002712C8, &qword_1001F3A18);
  v26 = *(v8 + 48);
  if (v26(v15, 1, updated) == 1)
  {
    sub_10008875C(v21, &qword_1002712C8, &qword_1001F3A18);
    sub_10008875C(v23, &qword_1002712C8, &qword_1001F3A18);
    if (v26(&v15[v25], 1, updated) == 1)
    {
      sub_10008875C(v15, &qword_1002712C8, &qword_1001F3A18);
      v27 = v76;
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v36 = v74;
  sub_10009ADF0(v15, v74, &qword_1002712C8, &qword_1001F3A18);
  if (v26(&v15[v25], 1, updated) == 1)
  {
    sub_10008875C(v21, &qword_1002712C8, &qword_1001F3A18);
    sub_10008875C(v23, &qword_1002712C8, &qword_1001F3A18);
    sub_1001AB244(v36, _s6UpdateVMa);
LABEL_11:
    v37 = &qword_100271D58;
    v38 = &qword_1001F4BD0;
    v39 = v15;
LABEL_12:
    sub_10008875C(v39, v37, v38);
    v27 = v76;
LABEL_13:
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v40 = sub_1001C5148();
    sub_100083274(v40, qword_100281898);
    v41 = v75;
    sub_1001AB1DC(v27, v75, _s6UpdateVMa);
    v32 = sub_1001C5128();
    v42 = sub_1001C6598();
    if (!os_log_type_enabled(v32, v42))
    {

      sub_1001AB244(v41, _s6UpdateVMa);
      return;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v77 = v44;
    *v43 = 136446210;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_100270A80, &protocol conformance descriptor for Date);
    v45 = sub_1001C6CC8();
    v47 = v46;
    sub_1001AB244(v41, _s6UpdateVMa);
    v48 = sub_1001874E8(v45, v47, &v77);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v32, v42, "[State] Skipping finish for old update from: %{public}s", v43, 0xCu);
    sub_10008E7BC(v44);

    goto LABEL_29;
  }

  v49 = &v15[v25];
  v50 = v69;
  sub_1001AB0E4(v49, v69, _s6UpdateVMa);
  if ((sub_1001C4C68() & 1) == 0)
  {
    sub_10008875C(v21, &qword_1002712C8, &qword_1001F3A18);
    sub_10008875C(v23, &qword_1002712C8, &qword_1001F3A18);
    sub_1001AB244(v50, _s6UpdateVMa);
    sub_1001AB244(v36, _s6UpdateVMa);
    v39 = v15;
    v37 = &qword_1002712C8;
    v38 = &qword_1001F3A18;
    goto LABEL_12;
  }

  v51 = sub_10019E694(*(v36 + *(updated + 20)), *(v50 + *(updated + 20)));
  sub_10008875C(v21, &qword_1002712C8, &qword_1001F3A18);
  sub_10008875C(v23, &qword_1002712C8, &qword_1001F3A18);
  sub_1001AB244(v50, _s6UpdateVMa);
  sub_1001AB244(v36, _s6UpdateVMa);
  sub_10008875C(v15, &qword_1002712C8, &qword_1001F3A18);
  v27 = v76;
  if ((v51 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v28 = v73;
  v29 = v70;
  sub_10008875C(v73 + v70, &qword_1002712C8, &qword_1001F3A18);
  v30 = v71;
  v71((v28 + v29), 1, 1, updated);
  if (v72)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v31 = sub_1001C5148();
    sub_100083274(v31, qword_100281898);
    v32 = sub_1001C5128();
    v33 = sub_1001C65B8();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "[State] Skipping finish because task was cancelled";
    goto LABEL_28;
  }

  v52 = v67;
  v53 = *(v67 + 28);
  sub_10008875C(v28 + v53, &qword_1002712C8, &qword_1001F3A18);
  sub_1001AB1DC(v27, v28 + v53, _s6UpdateVMa);
  v30(v28 + v53, 0, 1, updated);
  if (v68)
  {
    v54 = v66;
    v55 = sub_1001A4D08(v27, v65, v68, v66);
    v57 = v56;
    v59 = v58;
    v60 = (v28 + *(v52 + 36));

    *v60 = v55;
    v60[1] = v57;
    sub_1001A30D0(v59);

    v61 = sub_1001A51FC(v27, v54);
    v62 = *(v28 + 8);
    *(v28 + 8) = v61;
    sub_1001A1D28(v62, v61);

    return;
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v63 = sub_1001C5148();
  sub_100083274(v63, qword_100281898);
  v32 = sub_1001C5128();
  v33 = sub_1001C65B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "[State] Skipping finish because there was no result (request failed?)";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);
LABEL_29:
  }

LABEL_30:
}

void sub_1001A0DE8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = 24 * (v8 | (v7 << 6));
      v10 = *(a1 + 48) + v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = (*(a1 + 56) + v9);
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);

      sub_1001A42C4(v16, v17, v11, v12, v13, v15);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

void sub_1001A0F34(void *a1, void *a2, int a3)
{
  v7 = _s11TrackedItemVMa(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = *(*v3 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v35 = v3;
    v36 = a3;
    v37 = a1;
    v38 = a2;
    v40 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v13, 0);
    v14 = v40;
    v15 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    do
    {
      sub_1001AB1DC(v15, v11, _s11TrackedItemVMa);
      v17 = *v11;
      v18 = *(v11 + 1);
      v19 = v11[16];

      v9 = sub_1001AB244(v11, _s11TrackedItemVMa);
      v40 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        v9 = sub_1000D3980((v20 > 1), v21 + 1, 1);
        v14 = v40;
      }

      v14[2] = v21 + 1;
      v22 = &v14[3 * v21];
      v22[4] = v17;
      v22[5] = v18;
      *(v22 + 48) = v19;
      v15 += v16;
      --v13;
    }

    while (v13);
    a1 = v37;
    a2 = v38;
    LOBYTE(a3) = v36;
  }

  v40 = a1;
  v41 = a2;
  v42 = a3 & 1;
  __chkstk_darwin(v9);
  *(&v35 - 2) = &v40;
  if (sub_1001A9A1C(sub_1001AB060, (&v35 - 4), v14))
  {

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1001C5148();
    sub_100083274(v23, qword_100281898);

    v24 = sub_1001C5128();
    v25 = sub_1001C65B8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v40 = 0;
      v41 = 0xE000000000000000;
      if (a3)
      {
        v28._countAndFlagsBits = 65;
      }

      else
      {
        v28._countAndFlagsBits = 66;
      }

      v28._object = 0xE100000000000000;
      sub_1001C6138(v28);

      v43._countAndFlagsBits = 46;
      v43._object = 0xE100000000000000;
      sub_1001C6138(v43);
      v44._countAndFlagsBits = a1;
      v44._object = a2;
      sub_1001C6138(v44);
      v29 = sub_1001874E8(v40, v41, &v39);

      *(v26 + 4) = v29;
      v30 = "[State] Item '%s' is already being tracked";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v24, v25, v30, v26, 0xCu);
      sub_10008E7BC(v27);
    }
  }

  else
  {
    sub_100084528(&qword_10026F770, &qword_1001F13A0);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_1001F0670;
    inited[4] = a1;
    inited[5] = a2;
    *(inited + 48) = a3 & 1;
    v40 = inited;

    sub_100195C88(v14);
    sub_1001A378C(v40);

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v32 = sub_1001C5148();
    sub_100083274(v32, qword_100281898);

    v24 = sub_1001C5128();
    v25 = sub_1001C65B8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v40 = 0;
      v41 = 0xE000000000000000;
      if (a3)
      {
        v33._countAndFlagsBits = 65;
      }

      else
      {
        v33._countAndFlagsBits = 66;
      }

      v33._object = 0xE100000000000000;
      sub_1001C6138(v33);

      v45._countAndFlagsBits = 46;
      v45._object = 0xE100000000000000;
      sub_1001C6138(v45);
      v46._countAndFlagsBits = a1;
      v46._object = a2;
      sub_1001C6138(v46);
      v34 = sub_1001874E8(v40, v41, &v39);

      *(v26 + 4) = v34;
      v30 = "[State] Item '%s' is now being tracked";
      goto LABEL_22;
    }
  }
}

void sub_1001A143C(uint64_t a1, NSObject *a2)
{
  v4 = _s11TrackedItemVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  v77 = a1;
  v78 = a2;
  v75 = v8;
  v76 = v5;
  if (v8)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v8, 0);
    v9 = v80;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1001AB1DC(v10, v7, _s11TrackedItemVMa);
      v13 = *v7;
      v12 = *(v7 + 1);
      v14 = v7[16];

      sub_1001AB244(v7, _s11TrackedItemVMa);
      v80 = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000D3980((v15 > 1), v16 + 1, 1);
        v9 = v80;
      }

      v9[2] = v16 + 1;
      v17 = &v9[3 * v16];
      v17[4] = v13;
      v17[5] = v12;
      *(v17 + 48) = v14;
      v10 += v11;
      --v8;
    }

    while (v8);
    a2 = v78;
    v5 = v76;
  }

  v18 = sub_1001575F4(v9);

  isa = a2[2].isa;
  v20 = _swiftEmptyArrayStorage;
  v74 = isa;
  if (isa)
  {
    v73 = v18;
    v80 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, isa, 0);
    v20 = v80;
    v21 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = *(v5 + 72);
    do
    {
      sub_1001AB1DC(v21, v7, _s11TrackedItemVMa);
      v24 = *v7;
      v23 = *(v7 + 1);
      v25 = v7[16];

      sub_1001AB244(v7, _s11TrackedItemVMa);
      v80 = v20;
      v27 = v20[2];
      v26 = v20[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000D3980((v26 > 1), v27 + 1, 1);
        v20 = v80;
      }

      v20[2] = v27 + 1;
      v28 = &v20[3 * v27];
      v28[4] = v24;
      v28[5] = v23;
      *(v28 + 48) = v25;
      v21 += v22;
      isa = (isa - 1);
    }

    while (isa);
    v18 = v73;
  }

  v29 = sub_1001575F4(v20);

  if (v18[2] <= v29[2] >> 3)
  {
    v80 = v29;

    sub_1001AAAD0(v18);
    v30 = v80;
  }

  else
  {

    v30 = sub_1001A9BF8(v18, v29);
  }

  if (v29[2] <= v18[2] >> 3)
  {
    v80 = v18;
    sub_1001AAAD0(v29);

    v31 = v80;
  }

  else
  {
    v31 = sub_1001A9BF8(v29, v18);
  }

  v80 = v30;
  sub_100084528(&qword_100274228, &qword_1001F8710);
  sub_1001AAFFC();
  p_inst_props = &OBJC_PROTOCOL___BDSReadingDataMigrationService.inst_props;
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v33 = sub_1001C5148();
    sub_100083274(v33, qword_100281898);

    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v80 = v73;
      *v36 = 136315138;
      sub_100110100();
      v37 = sub_1001C63F8();
      v38 = v31;
      v40 = v39;

      v41 = sub_1001874E8(v37, v40, &v80);
      v31 = v38;

      *(v36 + 4) = v41;
      p_inst_props = (&OBJC_PROTOCOL___BDSReadingDataMigrationService + 56);
      _os_log_impl(&_mh_execute_header, v34, v35, "[State] Added tracked item(s): %s", v36, 0xCu);
      sub_10008E7BC(v73);

      goto LABEL_26;
    }
  }

LABEL_26:
  v80 = v31;
  if (sub_1001C6458())
  {
    v42 = v78;
    if (p_inst_props[375] != -1)
    {
      swift_once();
    }

    v43 = sub_1001C5148();
    sub_100083274(v43, qword_100281898);

    v44 = sub_1001C5128();
    v45 = sub_1001C65B8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = p_inst_props;
      v48 = swift_slowAlloc();
      v80 = v48;
      *v46 = 136315138;
      sub_100110100();
      v49 = sub_1001C63F8();
      v51 = v50;

      v52 = sub_1001874E8(v49, v51, &v80);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "[State] Removed tracked item(s): %s", v46, 0xCu);
      sub_10008E7BC(v48);
      p_inst_props = v47;
    }

    else
    {
    }
  }

  else
  {

    v42 = v78;
  }

  if (p_inst_props[375] != -1)
  {
    swift_once();
  }

  v53 = sub_1001C5148();
  sub_100083274(v53, qword_100281898);

  v54 = sub_1001C5128();
  v55 = sub_1001C65B8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80 = v57;
    *v56 = 134218498;
    *(v56 + 4) = v75;

    *(v56 + 12) = 2048;
    v58 = v74;
    *(v56 + 14) = v74;

    *(v56 + 22) = 2080;
    if (v58)
    {
      v73 = v57;
      LODWORD(v75) = v55;
      v77 = v56;
      v78 = v54;
      v79 = _swiftEmptyArrayStorage;
      sub_1000D3980(0, v58, 0);
      v59 = v79;
      v60 = v42 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v61 = *(v76 + 72);
      do
      {
        v62 = v58;
        sub_1001AB1DC(v60, v7, _s11TrackedItemVMa);
        v64 = *v7;
        v63 = *(v7 + 1);
        v65 = v7[16];

        sub_1001AB244(v7, _s11TrackedItemVMa);
        v79 = v59;
        v67 = v59[2];
        v66 = v59[3];
        if (v67 >= v66 >> 1)
        {
          sub_1000D3980((v66 > 1), v67 + 1, 1);
          v59 = v79;
        }

        v59[2] = v67 + 1;
        v68 = &v59[3 * v67];
        v68[4] = v64;
        v68[5] = v63;
        *(v68 + 48) = v65;
        v60 += v61;
        v58 = v62 - 1;
      }

      while (v62 != 1);
      v56 = v77;
      v54 = v78;
      LOBYTE(v55) = v75;
      v57 = v73;
    }

    v69 = sub_1001C62A8();
    v71 = v70;

    v72 = sub_1001874E8(v69, v71, &v80);

    *(v56 + 24) = v72;
    _os_log_impl(&_mh_execute_header, v54, v55, "[State] Tracked items (%ld) → (%ld) %s", v56, 0x20u);
    sub_10008E7BC(v57);
  }

  else
  {
  }
}

void sub_1001A1D28(uint64_t a1, uint64_t a2)
{
  v171 = _s4DealVMa(0);
  v4 = *(v171 - 8);
  v5 = __chkstk_darwin(v171);
  v174 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v182 = &v166 - v8;
  v9 = __chkstk_darwin(v7);
  v188 = &v166 - v10;
  v11 = __chkstk_darwin(v9);
  v173 = &v166 - v12;
  v13 = __chkstk_darwin(v11);
  v176 = &v166 - v14;
  v15 = __chkstk_darwin(v13);
  v184 = &v166 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = (&v166 - v18);
  v20 = __chkstk_darwin(v17);
  v178 = &v166 - v21;
  v22 = __chkstk_darwin(v20);
  v172 = &v166 - v23;
  v24 = __chkstk_darwin(v22);
  *&v186 = &v166 - v25;
  v26 = __chkstk_darwin(v24);
  v177 = &v166 - v27;
  v28 = __chkstk_darwin(v26);
  v185 = (&v166 - v29);
  __chkstk_darwin(v28);
  v183 = &v166 - v30;
  v31 = *(a1 + 16);
  v32 = _swiftEmptyArrayStorage;
  v168 = a2;
  v169 = v4;
  v175 = v31;
  v189 = v19;
  v167 = a1;
  if (v31)
  {
    v190 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v31, 0);
    v32 = v190;
    v33 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v34 = *(v4 + 72);
    do
    {
      v35 = v183;
      sub_1001AB1DC(v33, v183, _s4DealVMa);
      v36 = *v35;
      v37 = *(v35 + 8);
      v38 = *(v35 + 16);

      sub_1001AB244(v35, _s4DealVMa);
      v190 = v32;
      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000D3980((v39 > 1), v40 + 1, 1);
        v32 = v190;
      }

      v32[2] = v40 + 1;
      v41 = &v32[3 * v40];
      v41[4] = v36;
      v41[5] = v37;
      *(v41 + 48) = v38;
      v33 += v34;
      --v31;
    }

    while (v31);
    a2 = v168;
    v4 = v169;
    v19 = v189;
  }

  v42 = sub_1001575F4(v32);

  v181 = *(a2 + 16);
  v43 = v184;
  if (v181)
  {
    v44 = 0;
    v45 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *&v187 = *(v4 + 72);
    v170 = v45;
    v46 = a2 + v45;
    v47 = v42 + 56;
    v179 = _swiftEmptyArrayStorage;
    v180 = v42;
    do
    {
      sub_1001AB1DC(v46 + v187 * v44, v185, _s4DealVMa);
      if (*(v42 + 16))
      {
        v49 = *v185;
        v50 = v185[1];
        v51 = *(v185 + 16);
        v52 = v180;
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v51);
        v53 = sub_1001C6E28();
        v54 = -1 << *(v52 + 32);
        v55 = v53 & ~v54;
        if ((*(v47 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          v57 = *(v180 + 48);
          do
          {
            v58 = v57 + 24 * v55;
            v59 = *(v58 + 16);
            if (*v58 == v49 && *(v58 + 8) == v50)
            {
              if (v51 == v59)
              {
                goto LABEL_9;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v51 ^ v59) & 1) == 0)
            {
LABEL_9:
              sub_1001AB244(v185, _s4DealVMa);
              v19 = v189;
              v42 = v180;
              goto LABEL_10;
            }

            v55 = (v55 + 1) & v56;
          }

          while (((*(v47 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0);
        }
      }

      sub_1001AB0E4(v185, v177, _s4DealVMa);
      v61 = v179;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D39A0(0, v61[2] + 1, 1);
        v61 = v192;
      }

      v42 = v180;
      v64 = v61[2];
      v63 = v61[3];
      v19 = v189;
      if (v64 >= v63 >> 1)
      {
        sub_1000D39A0((v63 > 1), v64 + 1, 1);
        v61 = v192;
      }

      v61[2] = v64 + 1;
      v179 = v61;
      sub_1001AB0E4(v177, v61 + v170 + v64 * v187, _s4DealVMa);
LABEL_10:
      ++v44;
      v48 = v181;
    }

    while (v44 != v181);

    v190 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v48, 0);
    v65 = v190;
    do
    {
      v66 = v183;
      sub_1001AB1DC(v46, v183, _s4DealVMa);
      v68 = *v66;
      v67 = *(v66 + 8);
      v69 = *(v66 + 16);

      sub_1001AB244(v66, _s4DealVMa);
      v190 = v65;
      v71 = v65[2];
      v70 = v65[3];
      if (v71 >= v70 >> 1)
      {
        sub_1000D3980((v70 > 1), v71 + 1, 1);
        v65 = v190;
      }

      v65[2] = v71 + 1;
      v72 = &v65[3 * v71];
      v72[4] = v68;
      v72[5] = v67;
      *(v72 + 48) = v69;
      v46 += v187;
      --v48;
    }

    while (v48);
    v4 = v169;
    v43 = v184;
  }

  else
  {

    v65 = _swiftEmptyArrayStorage;
    v179 = _swiftEmptyArrayStorage;
  }

  v73 = sub_1001575F4(v65);

  if (v175)
  {
    v74 = 0;
    v75 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *&v187 = *(v4 + 72);
    v177 = v75;
    v180 = v167 + v75;
    v76 = v73 + 56;
    v185 = _swiftEmptyArrayStorage;
    do
    {
      sub_1001AB1DC(v180 + v187 * v74, v186, _s4DealVMa);
      v78 = v73;
      if (*(v73 + 16))
      {
        v79 = *v186;
        v80 = *(v186 + 8);
        v81 = *(v186 + 16);
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v81);
        v82 = sub_1001C6E28();
        v83 = -1 << *(v73 + 32);
        v84 = v82 & ~v83;
        if ((*(v76 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
        {
          v85 = ~v83;
          v86 = *(v73 + 48);
          do
          {
            v87 = v86 + 24 * v84;
            v88 = *(v87 + 16);
            if (*v87 == v79 && *(v87 + 8) == v80)
            {
              if (v81 == v88)
              {
                goto LABEL_36;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v81 ^ v88) & 1) == 0)
            {
LABEL_36:
              sub_1001AB244(v186, _s4DealVMa);
              v77 = v175;
              v43 = v184;
              v19 = v189;
              v73 = v78;
              goto LABEL_37;
            }

            v84 = (v84 + 1) & v85;
          }

          while (((*(v76 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) != 0);
        }
      }

      sub_1001AB0E4(v186, v178, _s4DealVMa);
      v90 = v185;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v90;
      v192 = v90;
      if ((v91 & 1) == 0)
      {
        sub_1000D39A0(0, v90[2] + 1, 1);
        v92 = v192;
      }

      v73 = v78;
      v94 = v92[2];
      v93 = v92[3];
      v77 = v175;
      v43 = v184;
      v19 = v189;
      if (v94 >= v93 >> 1)
      {
        sub_1000D39A0((v93 > 1), v94 + 1, 1);
        v92 = v192;
      }

      v92[2] = v94 + 1;
      v185 = v92;
      sub_1001AB0E4(v178, v92 + v177 + v94 * v187, _s4DealVMa);
LABEL_37:
      ++v74;
    }

    while (v74 != v77);
  }

  else
  {
    v185 = _swiftEmptyArrayStorage;
  }

  v96 = v179[2];
  v97 = "' is now being tracked";
  v98 = v182;
  if (v96)
  {
    v99 = v179 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
    *&v187 = *(v169 + 72);
    *&v95 = 136315650;
    v186 = v95;
    v100 = v174;
    v101 = v176;
    v102 = v172;
    do
    {
      sub_1001AB1DC(v99, v102, _s4DealVMa);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v104 = sub_1001C5148();
      sub_100083274(v104, qword_100281898);
      sub_1001AB1DC(v102, v19, _s4DealVMa);
      sub_1001AB1DC(v102, v43, _s4DealVMa);
      sub_1001AB0E4(v102, v101, _s4DealVMa);
      v105 = sub_1001C5128();
      v106 = sub_1001C65B8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *v107 = v186;
        v108 = *v19;
        v109 = *(v189 + 8);
        v110 = *(v189 + 16);
        v190 = 0;
        v191 = 0xE000000000000000;
        if (v110)
        {
          v111._countAndFlagsBits = 65;
        }

        else
        {
          v111._countAndFlagsBits = 66;
        }

        v111._object = 0xE100000000000000;
        sub_1001C6138(v111);

        v193._countAndFlagsBits = 46;
        v193._object = 0xE100000000000000;
        sub_1001C6138(v193);
        v194._countAndFlagsBits = v108;
        v194._object = v109;
        sub_1001C6138(v194);
        v112 = v190;
        v113 = v191;
        sub_1001AB244(v189, _s4DealVMa);
        v114 = sub_1001874E8(v112, v113, &v192);

        *(v107 + 4) = v114;
        *(v107 + 12) = 2082;
        v115 = v171;
        sub_1001C4CA8();
        sub_1000B6E64(&qword_100270A80, &protocol conformance descriptor for Date);
        v116 = sub_1001C6CC8();
        v118 = v117;
        sub_1001AB244(v184, _s4DealVMa);
        v119 = sub_1001874E8(v116, v118, &v192);
        v19 = v189;

        *(v107 + 14) = v119;
        *(v107 + 22) = 2048;
        v120 = *(v115 + 32);
        v100 = v174;
        v121 = *(v176 + v120);
        v43 = v184;
        sub_1001AB244(v176, _s4DealVMa);
        *(v107 + 24) = v121;
        _os_log_impl(&_mh_execute_header, v105, v106, "[State] Added deal: %s, date: %{public}s, reference price: %f", v107, 0x20u);
        swift_arrayDestroy();
        v101 = v176;

        v98 = v182;
      }

      else
      {

        sub_1001AB244(v101, _s4DealVMa);
        sub_1001AB244(v43, _s4DealVMa);
        sub_1001AB244(v19, _s4DealVMa);
      }

      v103 = v188;
      v99 += v187;
      --v96;
      v102 = v172;
    }

    while (v96);

    v97 = "[State] Item '%s' is now being tracked" + 16;
  }

  else
  {

    v100 = v174;
    v103 = v188;
  }

  v123 = v185[2];
  if (v123)
  {
    v124 = v185 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
    v125 = *(v169 + 72);
    *&v122 = *(v97 + 412);
    v187 = v122;
    v126 = v173;
    v189 = v125;
    do
    {
      sub_1001AB1DC(v124, v126, _s4DealVMa);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v127 = sub_1001C5148();
      sub_100083274(v127, qword_100281898);
      sub_1001AB1DC(v126, v103, _s4DealVMa);
      sub_1001AB1DC(v126, v98, _s4DealVMa);
      sub_1001AB0E4(v126, v100, _s4DealVMa);
      v128 = sub_1001C5128();
      v129 = sub_1001C65B8();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *v130 = v187;
        v131 = *v103;
        v132 = *(v188 + 8);
        v133 = *(v188 + 16);
        v190 = 0;
        v191 = 0xE000000000000000;
        if (v133)
        {
          v134._countAndFlagsBits = 65;
        }

        else
        {
          v134._countAndFlagsBits = 66;
        }

        v134._object = 0xE100000000000000;
        sub_1001C6138(v134);

        v195._countAndFlagsBits = 46;
        v195._object = 0xE100000000000000;
        sub_1001C6138(v195);
        v196._countAndFlagsBits = v131;
        v196._object = v132;
        sub_1001C6138(v196);
        v135 = v190;
        v136 = v191;
        sub_1001AB244(v188, _s4DealVMa);
        v137 = sub_1001874E8(v135, v136, &v192);

        *(v130 + 4) = v137;
        *(v130 + 12) = 2082;
        v138 = v171;
        sub_1001C4CA8();
        sub_1000B6E64(&qword_100270A80, &protocol conformance descriptor for Date);
        v139 = sub_1001C6CC8();
        v141 = v140;
        sub_1001AB244(v182, _s4DealVMa);
        v142 = sub_1001874E8(v139, v141, &v192);
        v103 = v188;

        *(v130 + 14) = v142;
        *(v130 + 22) = 2048;
        v143 = *(v138 + 32);
        v100 = v174;
        v144 = *(v174 + v143);
        sub_1001AB244(v174, _s4DealVMa);
        *(v130 + 24) = v144;
        _os_log_impl(&_mh_execute_header, v128, v129, "[State] Removed deal: %s, date: %{public}s, reference price: %f", v130, 0x20u);
        swift_arrayDestroy();
        v98 = v182;

        v125 = v189;
      }

      else
      {

        sub_1001AB244(v100, _s4DealVMa);
        sub_1001AB244(v98, _s4DealVMa);
        sub_1001AB244(v103, _s4DealVMa);
      }

      v124 += v125;
      --v123;
      v126 = v173;
    }

    while (v123);
  }

  v145 = v168;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v146 = sub_1001C5148();
  sub_100083274(v146, qword_100281898);

  v147 = sub_1001C5128();
  v148 = sub_1001C65B8();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v190 = v150;
    *v149 = 134218498;
    *(v149 + 4) = v175;

    *(v149 + 12) = 2048;
    v151 = v181;
    *(v149 + 14) = v181;

    *(v149 + 22) = 2080;
    if (v151)
    {
      *&v187 = v150;
      LODWORD(v188) = v148;
      v189 = v147;
      v192 = _swiftEmptyArrayStorage;
      sub_1000D3980(0, v151, 0);
      v152 = v192;
      v153 = v145 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
      v154 = *(v169 + 72);
      do
      {
        v155 = v183;
        sub_1001AB1DC(v153, v183, _s4DealVMa);
        v156 = *v155;
        v157 = *(v155 + 8);
        v158 = *(v155 + 16);

        sub_1001AB244(v155, _s4DealVMa);
        v192 = v152;
        v160 = v152[2];
        v159 = v152[3];
        if (v160 >= v159 >> 1)
        {
          sub_1000D3980((v159 > 1), v160 + 1, 1);
          v152 = v192;
        }

        v152[2] = v160 + 1;
        v161 = &v152[3 * v160];
        v161[4] = v156;
        v161[5] = v157;
        *(v161 + 48) = v158;
        v153 += v154;
        --v181;
      }

      while (v181);
      v147 = v189;
      LOBYTE(v148) = v188;
      v150 = v187;
    }

    v162 = sub_1001C62A8();
    v164 = v163;

    v165 = sub_1001874E8(v162, v164, &v190);

    *(v149 + 24) = v165;
    _os_log_impl(&_mh_execute_header, v147, v148, "[State] Deals (%ld) → (%ld) %s", v149, 0x20u);
    sub_10008E7BC(v150);
  }

  else
  {
  }
}

void sub_1001A30D0(uint64_t a1)
{
  v2 = v1;
  v4 = _s4DealVMa(0);
  v56 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = (&v52 - v7);
  v8 = _s11TrackedItemVMa(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12 >= 0x33)
  {
    if (qword_10026EBB8 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_3;
  }

  v18 = *v1;
  *v1 = a1;

LABEL_7:
  sub_1001A143C(v18, a1);

  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  v52 = v2;
  if (v19)
  {
    v61 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v19, 0);
    v20 = v61;
    v21 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    do
    {
      sub_1001AB1DC(v21, v11, _s11TrackedItemVMa);
      v23 = *v11;
      v24 = *(v11 + 1);
      v25 = v11[16];

      sub_1001AB244(v11, _s11TrackedItemVMa);
      v61 = v20;
      v27 = v20[2];
      v26 = v20[3];
      v9 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_1000D3980((v26 > 1), v27 + 1, 1);
        v20 = v61;
      }

      v20[2] = v9;
      v28 = &v20[3 * v27];
      v28[4] = v23;
      v28[5] = v24;
      *(v28 + 48) = v25;
      v21 += v22;
      --v19;
    }

    while (v19);
    v2 = v52;
  }

  a1 = sub_1001575F4(v20);

  v11 = v2[1];
  v57 = *(v11 + 2);
  if (v57)
  {
    v12 = 0;
    v2 = (a1 + 56);
    v54 = _swiftEmptyArrayStorage;
    v55 = v11;
    while (1)
    {
      if (v12 >= *(v11 + 2))
      {
        __break(1u);
LABEL_43:
        swift_once();
LABEL_3:
        v13 = sub_1001C5148();
        sub_100083274(v13, qword_100281898);
        v14 = sub_1001C5128();
        v15 = sub_1001C6598();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134218240;
          *(v16 + 4) = v12;
          *(v16 + 12) = 2048;
          *(v16 + 14) = 50;
          _os_log_impl(&_mh_execute_header, v14, v15, "[State] Tracked items (%ld) exceed the limit (%ld)", v16, 0x16u);
        }

        sub_100177844(a1, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), 0, 0x65uLL);
        a1 = v17;
        v18 = *v2;
        *v2 = v17;
        goto LABEL_7;
      }

      v29 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = *(v56 + 72);
      v59 = v29;
      sub_1001AB1DC(&v11[v29 + v58 * v12], v60, _s4DealVMa);
      v9 = a1;
      if (!*(a1 + 16) || (v30 = *v60, v31 = v60[1], v32 = *(v60 + 16), sub_1001C6DF8(), sub_1001C60E8(), sub_1001C6E18(v32), v33 = sub_1001C6E28(), v34 = -1 << *(a1 + 32), v35 = v33 & ~v34, ((*(v2 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
      {
LABEL_15:
        sub_1001AB244(v60, _s4DealVMa);
        v11 = v55;
        a1 = v9;
        goto LABEL_16;
      }

      v36 = ~v34;
      v37 = *(v9 + 48);
      while (1)
      {
        v38 = v37 + 24 * v35;
        v39 = *(v38 + 16);
        if (*v38 != v30 || *(v38 + 8) != v31)
        {
          break;
        }

        if (v32 == v39)
        {
          goto LABEL_29;
        }

LABEL_22:
        v35 = (v35 + 1) & v36;
        if (((*(v2 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (sub_1001C6D08() & 1) == 0 || ((v32 ^ v39))
      {
        goto LABEL_22;
      }

LABEL_29:
      sub_1001AB0E4(v60, v53, _s4DealVMa);
      v41 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D39A0(0, v41[2] + 1, 1);
        v41 = v62;
      }

      a1 = v9;
      v44 = v41[2];
      v43 = v41[3];
      v11 = v55;
      if (v44 >= v43 >> 1)
      {
        sub_1000D39A0((v43 > 1), v44 + 1, 1);
        v41 = v62;
      }

      v41[2] = v44 + 1;
      v54 = v41;
      sub_1001AB0E4(v53, v41 + v59 + v44 * v58, _s4DealVMa);
LABEL_16:
      if (++v12 == v57)
      {
        goto LABEL_35;
      }
    }
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_35:

  v45 = v54;
  v52[1] = v54;
  sub_1001A1D28(v11, v45);

  v46 = *(v45 + 16);
  v47 = v57 - v46;
  if (v57 != v46)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v48 = sub_1001C5148();
    sub_100083274(v48, qword_100281898);
    v49 = sub_1001C5128();
    v50 = sub_1001C65B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v49, v50, "[State] Removed %ld deals because their items are no longer tracked", v51, 0xCu);
    }
  }
}

uint64_t sub_1001A378C(uint64_t a1)
{
  v3 = _s11TrackedItemVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = sub_1001A39B8(*v1);
  v9 = v8;
  v10 = *(v7 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v23 = v8;
    v24 = a1;
    v25 = v1;
    v26 = _swiftEmptyArrayStorage;
    sub_1000D3960(0, v10, 0);
    v11 = v26;
    v12 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1001AB1DC(v12, v6, _s11TrackedItemVMa);
      v14 = *v6;
      v15 = v6[1];

      sub_1001AB244(v6, _s11TrackedItemVMa);
      v26 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000D3960((v16 > 1), v17 + 1, 1);
        v11 = v26;
      }

      v11[2] = v17 + 1;
      v18 = &v11[2 * v17];
      v18[4] = v14;
      v18[5] = v15;
      v12 += v13;
      --v10;
    }

    while (v10);
    a1 = v24;
    v9 = v23;
  }

  v19 = sub_100157794(v11);

  v26 = &_swiftEmptySetSingleton;

  v20 = sub_1001AAD14(a1, &v26, v9, v19);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  sub_1001A30D0(v20);
}

void *sub_1001A39B8(uint64_t a1)
{
  v2 = _s11TrackedItemVMa(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = sub_100119120(_swiftEmptyArrayStorage);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    v33 = v10;
    sub_1001AB1DC(v11, v8, _s11TrackedItemVMa);
    v14 = *v8;
    v13 = *(v8 + 1);
    v15 = v8[16];
    v16 = v8;
    v17 = v8;
    v18 = v6;
    sub_1001AB1DC(v17, v6, _s11TrackedItemVMa);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v9;
    v20 = sub_100187C98(v14, v13, v15);
    v22 = v9[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v9[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_10018B2E0();
        v20 = v31;
      }
    }

    else
    {
      sub_1001894AC(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_100187C98(v14, v13, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_17;
      }
    }

    v6 = v18;
    v9 = v34;
    v8 = v16;
    if (v26)
    {
      sub_1001AB080(v6, v34[7] + v20 * v12);
    }

    else
    {
      v34[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v9[6] + 24 * v20;
      *v28 = v14;
      *(v28 + 8) = v13;
      *(v28 + 16) = v15;
      sub_1001AB0E4(v6, v9[7] + v20 * v12, _s11TrackedItemVMa);
      v29 = v9[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_16;
      }

      v9[2] = v30;
    }

    sub_1001AB244(v16, _s11TrackedItemVMa);
    v11 += v12;
    v10 = v33 - 1;
    if (v33 == 1)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1001C6D68();
  __break(1u);
  return result;
}

void sub_1001A3C7C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = _s11TrackedItemVMa(0);
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);

  v15 = sub_1001788CC(&v46, v13, v12, v14);

  if (v15)
  {
    if (*(a2 + 16) && (v16 = sub_100187C98(v13, v12, v14), (v17 & 1) != 0))
    {
      v18 = v44;
      sub_1001AB1DC(*(a2 + 56) + *(v44 + 72) * v16, v11, _s11TrackedItemVMa);
      sub_1001AB0E4(v11, a4, _s11TrackedItemVMa);
      (*(v18 + 56))(a4, 0, 1, v45);
    }

    else
    {
      if (sub_1000F54C8(v13, v12, a3))
      {
        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v26 = sub_1001C5148();
        sub_100083274(v26, qword_100281898);

        v27 = sub_1001C5128();
        v28 = sub_1001C6598();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = v4;
          v30 = v29;
          v42 = swift_slowAlloc();
          v48 = v42;
          *v30 = 141558530;
          *(v30 + 4) = 1752392040;
          *(v30 + 12) = 2080;
          v46 = 0;
          v47 = 0xE000000000000000;
          if (v14)
          {
            v31._countAndFlagsBits = 65;
          }

          else
          {
            v31._countAndFlagsBits = 66;
          }

          v32 = 1802465122;
          if (v14)
          {
            v32 = 0x6F6F626F69647561;
          }

          v40 = v32;
          v41 = v28;
          if (v14)
          {
            v33 = 0xE90000000000006BLL;
          }

          else
          {
            v33 = 0xE400000000000000;
          }

          v31._object = 0xE100000000000000;
          sub_1001C6138(v31);

          v51._countAndFlagsBits = 46;
          v51._object = 0xE100000000000000;
          sub_1001C6138(v51);
          v52._countAndFlagsBits = v13;
          v52._object = v12;
          sub_1001C6138(v52);
          v34 = sub_1001874E8(v46, v47, &v48);

          *(v30 + 14) = v34;
          *(v30 + 22) = 2082;
          v35 = sub_1001874E8(v40, v33, &v48);

          *(v30 + 24) = v35;
          _os_log_impl(&_mh_execute_header, v27, v41, "[State] Type for item %{mask.hash}s changed to %{public}s", v30, 0x20u);
          swift_arrayDestroy();
        }
      }

      v36 = v45;
      v37 = *(v45 + 24);
      v38 = _s11RecentPriceVMa(0);
      (*(*(v38 - 8) + 56))(a4 + v37, 1, 1, v38);
      *a4 = v13;
      *(a4 + 8) = v12;
      *(a4 + 16) = v14;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 1;
      (*(v44 + 56))(a4, 0, 1, v36);
    }
  }

  else
  {
    v43 = v4;
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v19 = sub_1001C5148();
    sub_100083274(v19, qword_100281898);

    v20 = sub_1001C5128();
    v21 = sub_1001C6598();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      v46 = 0;
      v47 = 0xE000000000000000;
      if (v14)
      {
        v24._countAndFlagsBits = 65;
      }

      else
      {
        v24._countAndFlagsBits = 66;
      }

      v24._object = 0xE100000000000000;
      sub_1001C6138(v24);

      v49._countAndFlagsBits = 46;
      v49._object = 0xE100000000000000;
      sub_1001C6138(v49);
      v50._countAndFlagsBits = v13;
      v50._object = v12;
      sub_1001C6138(v50);
      v25 = sub_1001874E8(v46, v47, &v48);

      *(v22 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "[State] Ignoring duplicate tracked item ID %{mask.hash}s", v22, 0x16u);
      sub_10008E7BC(v23);
    }

    (*(v44 + 56))(a4, 1, 1, v45);
  }
}

uint64_t sub_1001A4230(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    _s8CardItemVMa(0);
    return a2;
  }

  return result;
}

void sub_1001A42C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, double a6)
{
  v65 = a5;
  v66 = a3;
  v61 = a1;
  v62 = a2;
  v9 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  __chkstk_darwin(v9 - 8);
  v64 = v59 - v10;
  v63 = _s11TrackedItemVMa(0);
  v11 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v6;
  v15 = *(*v6 + 16);
  if (v15)
  {
    v16 = 0;
    v60 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v17 = v14 + v60;
    while (v16 < v14[2])
    {
      v18 = *(v11 + 72) * v16;
      sub_1001AB1DC(&v17[v18], v13, _s11TrackedItemVMa);
      v19 = v13[16];
      if (*v13 == v66 && *(v13 + 1) == a4)
      {
        if (v19 == (v65 & 1))
        {
          goto LABEL_12;
        }
      }

      else if ((sub_1001C6D08() & 1) != 0 && ((v19 ^ v65) & 1) == 0)
      {
LABEL_12:
        sub_1001AB244(v13, _s11TrackedItemVMa);
        v21 = qword_10026EBB8;

        v59[1] = v6;
        if (a6 >= 0.0)
        {
          if (v21 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_47;
        }

        if (v21 != -1)
        {
          goto LABEL_45;
        }

        while (1)
        {
          v22 = sub_1001C5148();
          sub_100083274(v22, qword_100281898);

          v23 = sub_1001C5128();
          v24 = sub_1001C65B8();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 136315138;
            v67 = 0;
            v68 = 0xE000000000000000;
            v69 = v26;
            if (v65)
            {
              v27._countAndFlagsBits = 65;
            }

            else
            {
              v27._countAndFlagsBits = 66;
            }

            v27._object = 0xE100000000000000;
            sub_1001C6138(v27);

            v70._countAndFlagsBits = 46;
            v70._object = 0xE100000000000000;
            sub_1001C6138(v70);
            v71._countAndFlagsBits = v66;
            v71._object = a4;
            sub_1001C6138(v71);
            a4 = sub_1001874E8(v67, v68, &v69);

            *(v25 + 4) = a4;
            _os_log_impl(&_mh_execute_header, v23, v24, "[State] Removing reference price for %s", v25, 0xCu);
            sub_10008E7BC(v26);
          }

          v28 = v64;
          v29 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1001AAC60(v14);
          }

          if (v16 >= v14[2])
          {
            __break(1u);
LABEL_47:
            swift_once();
LABEL_31:
            v42 = sub_1001C5148();
            sub_100083274(v42, qword_100281898);
            v43 = v62;

            v44 = sub_1001C5128();
            v45 = sub_1001C65B8();

            v46 = os_log_type_enabled(v44, v45);
            v47 = v61;
            if (v46)
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              *v48 = 136315394;
              v67 = 0;
              v68 = 0xE000000000000000;
              v69 = v49;
              if (v65)
              {
                v50._countAndFlagsBits = 65;
              }

              else
              {
                v50._countAndFlagsBits = 66;
              }

              v65 = v45;
              v50._object = 0xE100000000000000;
              sub_1001C6138(v50);

              v74._countAndFlagsBits = 46;
              v74._object = 0xE100000000000000;
              sub_1001C6138(v74);
              v75._countAndFlagsBits = v66;
              v75._object = a4;
              sub_1001C6138(v75);
              v51 = sub_1001874E8(v67, v68, &v69);

              *(v48 + 4) = v51;
              *(v48 + 12) = 2080;
              v52 = sub_10013B2B8(v47, v43);
              v54 = sub_1001874E8(v52, v53, &v69);

              *(v48 + 14) = v54;
              _os_log_impl(&_mh_execute_header, v44, v65, "[State] Setting reference price for %s → %s", v48, 0x16u);
              swift_arrayDestroy();
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v55 = v14;
            }

            else
            {
              v55 = sub_1001AAC60(v14);
            }

            v29 = v60;
            if (v16 >= v55[2])
            {
              __break(1u);
              return;
            }

            v56 = (v55 + v60 + v18);
            a4 = *(v56 + 3);
            v14 = *(v56 + 4);
            v57 = *(v56 + 5);
            v56[3] = a6;
            *(v56 + 4) = v47;
            *(v56 + 5) = v43;
            v31 = v55;

            sub_100198C68(a4, v14, v57);
            v28 = v64;
          }

          else
          {
            v30 = (v14 + v29 + v18);
            v31 = v14;
            v32 = v30[3];
            v33 = v30[4];
            v34 = v30[5];
            v30[3] = 0;
            v30[4] = 0;
            v30[5] = 1;
            sub_100198C68(v32, v33, v34);
          }

          v58 = _s11RecentPriceVMa(0);
          (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
          if (v16 < *(v31 + 16))
          {
            sub_100198C7C(v28, v31 + v29 + *(v63 + 24) + v18);
            sub_1001A30D0(v31);

            return;
          }

          __break(1u);
LABEL_45:
          swift_once();
        }
      }

      sub_1001AB244(v13, _s11TrackedItemVMa);
      if (v15 == ++v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_23:
  if (qword_10026EBB8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v35 = sub_1001C5148();
  sub_100083274(v35, qword_100281898);

  v36 = sub_1001C5128();
  v37 = sub_1001C6598();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 141558274;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2080;
    v67 = 0;
    v68 = 0xE000000000000000;
    v69 = v39;
    if (v65)
    {
      v40._countAndFlagsBits = 65;
    }

    else
    {
      v40._countAndFlagsBits = 66;
    }

    v40._object = 0xE100000000000000;
    sub_1001C6138(v40);

    v72._countAndFlagsBits = 46;
    v72._object = 0xE100000000000000;
    sub_1001C6138(v72);
    v73._countAndFlagsBits = v66;
    v73._object = a4;
    sub_1001C6138(v73);
    v41 = sub_1001874E8(v67, v68, &v69);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "[State] Unable to find item with id: %{mask.hash}s", v38, 0x16u);
    sub_10008E7BC(v39);
  }
}

void *sub_1001A4AB8(char a1, char a2)
{
  v5 = _s11TrackedItemVMa(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  if (a2)
  {
    goto LABEL_4;
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a1 == 1)
  {
LABEL_4:
    v13 = *v2;

    return v13;
  }

  v14 = *v2;
  v15 = *(*v2 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v13 = _swiftEmptyArrayStorage;
  v22 = v15;
  while (v16 < v14[2])
  {
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = *(v6 + 72);
    sub_1001AB1DC(v14 + v17 + v18 * v16, v12, _s11TrackedItemVMa);
    if (*(v12 + 5) == 1)
    {
      sub_1001AB0E4(v12, v9, _s11TrackedItemVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D39E4(0, v13[2] + 1, 1);
        v13 = v23;
      }

      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000D39E4((v20 > 1), v21 + 1, 1);
        v13 = v23;
      }

      v13[2] = v21 + 1;
      result = sub_1001AB0E4(v9, v13 + v17 + v21 * v18, _s11TrackedItemVMa);
      v15 = v22;
    }

    else
    {
      result = sub_1001AB244(v12, _s11TrackedItemVMa);
    }

    if (v15 == ++v16)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A4D08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47 = a1;
  v8 = _s14PricingServiceV12FetchedPriceVMa(0);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v4 + *(_s5StateVMa(0) + 36));
  v12 = v11[1];
  v13 = *v4;
  if (!v12)
  {
    v46 = a2;

    goto LABEL_9;
  }

  v14 = *v11;
  if (*v11 == a2 && v12 == a3)
  {
    v46 = a2;
  }

  else
  {
    v16 = sub_1001C6D08();

    if ((v16 & 1) == 0)
    {

      if (qword_10026EBB8 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

    v46 = v14;
  }

LABEL_21:
  while (1)
  {
    v45 = v12;
    a2 = v13[2];
    if (!a2)
    {
      return v46;
    }

    v29 = 0;
    while (v29 < v13[2])
    {
      v30 = *(_s11TrackedItemVMa(0) - 8);
      v31 = *(v30 + 80);
      v32 = *(v30 + 72);
      if (*(a4 + 16))
      {
        a3 = v32 * v29;
        v33 = v13 + ((v31 + 32) & ~v31) + v32 * v29;
        v34 = *(v33 + 16);
        v36 = *v33;
        v35 = *(v33 + 8);

        v37 = sub_100187C98(v36, v35, v34);
        LOBYTE(v36) = v38;

        if (v36)
        {
          sub_1001AB1DC(*(a4 + 56) + *(v48 + 72) * v37, v10, _s14PricingServiceV12FetchedPriceVMa);
          v39 = &v10[*(v49 + 24)];
          v40 = *v39;
          v41 = *(v39 + 1);
          v42 = *(v39 + 2);

          sub_1001AB244(v10, _s14PricingServiceV12FetchedPriceVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1001AAC60(v13);
          }

          if (v29 >= v13[2])
          {
            goto LABEL_33;
          }

          sub_100198DE8(v41, v42, v47, v40);
        }
      }

      if (a2 == ++v29)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_35:
      swift_once();
LABEL_12:
      v46 = a2;
      v17 = sub_1001C5148();
      sub_100083274(v17, qword_100281898);
      v18 = sub_1001C5128();
      v19 = sub_1001C6598();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "[State] Store-front has changed; discarding previous price information", v20, 2u);
      }

      a2 = v13[2];
      if (!a2)
      {
        break;
      }

      v45 = a3;
      a3 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1001AAC60(v13);
        }

        if (a3 >= v13[2])
        {
          break;
        }

        v21 = a3 + 1;
        v22 = (_s11TrackedItemVMa(0) - 8);
        v23 = v13 + ((*(*v22 + 80) + 32) & ~*(*v22 + 80)) + *(*v22 + 72) * a3;
        v24 = *(v23 + 3);
        v25 = *(v23 + 4);
        v26 = *(v23 + 5);
        *(v23 + 3) = 0;
        *(v23 + 4) = 0;
        *(v23 + 5) = 1;
        sub_100198C68(v24, v25, v26);
        v27 = v22[8];
        sub_10008875C(&v23[v27], &qword_1002740D8, &qword_1001F82F0);
        v28 = _s11RecentPriceVMa(0);
        (*(*(v28 - 8) + 56))(&v23[v27], 1, 1, v28);
        a3 = v21;
        if (a2 == v21)
        {
          v12 = v45;
          goto LABEL_21;
        }
      }
    }

LABEL_9:
    v12 = a3;
  }
}

void *sub_1001A51FC(uint64_t a1, uint64_t a2)
{
  v43 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v5 = *(v43 - 8);
  v6 = __chkstk_darwin(v43);
  v39 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = v37 - v9;
  __chkstk_darwin(v8);
  v41 = v37 - v10;
  v11 = _s4DealVMa(0);
  v40 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v45 = a2;
  v46 = v2;
  v47 = a1;
  v48 = sub_100102E64(sub_1001AB14C, v44, v14);

  sub_1001A7280(&v48);

  v15 = v48;
  v16 = v48[2];
  if (v16)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_1000D39A0(0, v16, 0);
    v17 = v48;
    v18 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = *(v5 + 72);
    v37[1] = v15;
    v38 = v19;
    do
    {
      v20 = v41;
      sub_10009ADF0(v18, v41, &qword_10026F7A8, &unk_1001F2B50);
      v21 = v13;
      v22 = v42;
      sub_10009ADF0(v20, v42, &qword_10026F7A8, &unk_1001F2B50);
      v23 = *(v43 + 48);
      v24 = v22 + v23;
      v25 = sub_100084528(&qword_100274550, &qword_1001F8A00);
      v26 = (v22 + v23 + *(v25 + 48));
      v27 = *v26;
      v28 = v26[1];
      v29 = v39;
      v30 = v39 + v23;
      v31 = v22;
      v13 = v21;
      sub_1001AB0E4(v31, v39, _s4DealVMa);
      v32 = (v30 + *(v25 + 48));
      v33 = sub_1001C4CA8();
      (*(*(v33 - 8) + 32))(v30, v24, v33);
      *v32 = v27;
      v32[1] = v28;
      sub_1001AB1DC(v29, v21, _s4DealVMa);
      sub_10008875C(v29, &qword_10026F7A8, &unk_1001F2B50);
      sub_10008875C(v20, &qword_10026F7A8, &unk_1001F2B50);
      v48 = v17;
      v35 = v17[2];
      v34 = v17[3];
      if (v35 >= v34 >> 1)
      {
        sub_1000D39A0((v34 > 1), v35 + 1, 1);
        v17 = v48;
      }

      v17[2] = v35 + 1;
      sub_1001AB0E4(v21, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, _s4DealVMa);
      v18 += v38;
      --v16;
    }

    while (v16);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v17;
}

uint64_t sub_1001A5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(void, void, void)@<X3>, uint64_t a5@<X8>)
{
  v159 = a3;
  v9 = _s4DealVMa(0);
  v165 = *(v9 - 8);
  __chkstk_darwin(v9);
  v148 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  __chkstk_darwin(v11 - 8);
  v144 = (&v142 - v12);
  v13 = sub_1001C4B28();
  v153 = *(v13 - 8);
  v154 = v13;
  __chkstk_darwin(v13);
  v145 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = _s11TrackedItemVMa(0);
  __chkstk_darwin(v143);
  v152 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v17 = __chkstk_darwin(v16 - 8);
  v149 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v157 = &v142 - v20;
  __chkstk_darwin(v19);
  v155 = &v142 - v21;
  v22 = sub_1001C4CA8();
  v167 = *(v22 - 8);
  v168 = v22;
  v23 = __chkstk_darwin(v22);
  v158 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v142 - v25;
  v26 = sub_100084528(&qword_100274558, &qword_1001F8A08);
  v27 = __chkstk_darwin(v26 - 8);
  v151 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v164 = &v142 - v30;
  v31 = __chkstk_darwin(v29);
  v146 = &v142 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v142 - v34;
  v36 = __chkstk_darwin(v33);
  v156 = (&v142 - v37);
  __chkstk_darwin(v36);
  v169 = &v142 - v38;
  v39 = sub_100084528(&qword_100274238, &qword_1001F8720);
  v40 = __chkstk_darwin(v39 - 8);
  v42 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v40);
  v45 = (&v142 - v44);
  __chkstk_darwin(v43);
  v47 = &v142 - v46;
  v48 = *(a2 + 16);
  v166 = a1;
  v160 = v9;
  if (v48)
  {
    v161 = a4;
    v49 = &v142 - v46;
    v50 = sub_100187C98(*a1, *(a1 + 8), *(a1 + 16));
    if (v51)
    {
      v52 = v50;
      v53 = a5;
      v54 = *(a2 + 56);
      v55 = _s14PricingServiceV12FetchedPriceVMa(0);
      v56 = *(v55 - 8);
      v57 = v54 + *(v56 + 72) * v52;
      a5 = v53;
      v9 = v160;
      v47 = v49;
      sub_1001AB1DC(v57, v49, _s14PricingServiceV12FetchedPriceVMa);
      v58 = (*(v56 + 56))(v49, 0, 1, v55);
    }

    else
    {
      v60 = _s14PricingServiceV12FetchedPriceVMa(0);
      v58 = (*(*(v60 - 8) + 56))(v47, 1, 1, v60);
    }

    a1 = v166;
    a4 = v161;
  }

  else
  {
    v59 = _s14PricingServiceV12FetchedPriceVMa(0);
    v58 = (*(*(v59 - 8) + 56))(v47, 1, 1, v59);
  }

  __chkstk_darwin(v58);
  *(&v142 - 2) = a1;
  v61 = v169;
  v62 = v162;
  sub_1001A6978(sub_1001AB060, v63, v169);
  v150 = v62;
  sub_10009ADF0(v61, v35, &qword_100274558, &qword_1001F8A08);
  v161 = *(v165 + 48);
  v162 = v165 + 48;
  if (v161(v35, 1, v9) == 1)
  {
    sub_10008875C(v35, &qword_100274558, &qword_1001F8A08);
    v147 = *(v167 + 16);
    v147(v163, a4, v168);
  }

  else
  {
    v65 = v167;
    v64 = v168;
    v66 = &v35[*(v9 + 28)];
    v67 = v158;
    v147 = *(v167 + 16);
    v147(v158, v66, v168);
    sub_1001AB244(v35, _s4DealVMa);
    (*(v65 + 32))(v163, v67, v64);
  }

  v68 = v164;
  v164 = v47;
  sub_10009ADF0(v47, v45, &qword_100274238, &qword_1001F8720);
  v69 = _s14PricingServiceV12FetchedPriceVMa(0);
  v70 = *(*(v69 - 8) + 48);
  if (v70(v45, 1, v69) == 1)
  {
    sub_10008875C(v45, &qword_100274238, &qword_1001F8720);
    v71 = v146;
    sub_10009ADF0(v169, v146, &qword_100274558, &qword_1001F8A08);
    if (v161(v71, 1, v9) == 1)
    {
      sub_10008875C(v71, &qword_100274558, &qword_1001F8A08);
      v142 = 0;
      v158 = 0;
      goto LABEL_16;
    }

    v75 = *(v71 + 32);
    v142 = *(v71 + 24);
    v158 = v75;

    v73 = _s4DealVMa;
    v74 = v71;
  }

  else
  {
    v72 = v45[1];
    v142 = *v45;
    v158 = v72;

    v73 = _s14PricingServiceV12FetchedPriceVMa;
    v74 = v45;
  }

  sub_1001AB244(v74, v73);
LABEL_16:
  v76 = v156;
  sub_10009ADF0(v164, v42, &qword_100274238, &qword_1001F8720);
  v77 = v70(v42, 1, v69);
  v78 = v152;
  if (v77 == 1)
  {
    v146 = a5;
    sub_10008875C(v42, &qword_100274238, &qword_1001F8720);
    v79 = v153;
    v80 = v154;
    v81 = *(v153 + 56);
    v81(v157, 1, 1, v154);
    sub_10009ADF0(v169, v68, &qword_100274558, &qword_1001F8A08);
    v82 = v68;
    v83 = v68;
    v84 = v160;
    v85 = v161(v82, 1, v160);
    v86 = v166;
    if (v85 == 1)
    {
      sub_10008875C(v83, &qword_100274558, &qword_1001F8A08);
      v87 = 1;
      v88 = v155;
    }

    else
    {
      v97 = v83 + v84[6];
      v88 = v155;
      (*(v79 + 16))(v155, v97, v80);
      sub_1001AB244(v83, _s4DealVMa);
      v87 = 0;
    }

    v81(v88, v87, 1, v80);
    v98 = v157;
    v99 = (*(v79 + 48))(v157, 1, v80);
    v96 = v146;
    v94 = v88;
    if (v99 != 1)
    {
      sub_10008875C(v98, &unk_10026EF10, &unk_1001F1FA0);
    }
  }

  else
  {
    v79 = v153;
    v89 = v154;
    v90 = a5;
    v91 = v157;
    (*(v153 + 16))(v157, &v42[*(v69 + 20)], v154);
    v92 = v42;
    v80 = v89;
    sub_1001AB244(v92, _s14PricingServiceV12FetchedPriceVMa);
    v93 = *(v79 + 56);
    v93(v91, 0, 1, v89);
    v94 = v155;
    v95 = v91;
    v96 = v90;
    (*(v79 + 32))(v155, v95, v89);
    v93(v94, 0, 1, v89);
    v86 = v166;
  }

  sub_1001AB1DC(v86, v78, _s11TrackedItemVMa);
  v100 = _s5StateVMa(0);
  v101 = v149;
  if (!v158)
  {
    sub_10008875C(v94, &unk_10026EF10, &unk_1001F1FA0);
    (*(v167 + 8))(v163, v168);
    goto LABEL_40;
  }

  v102 = (v159 + *(v100 + 40));
  v104 = *v102;
  v103 = v102[1];
  sub_10009ADF0(v94, v149, &unk_10026EF10, &unk_1001F1FA0);
  if ((*(v79 + 48))(v101, 1, v80) == 1)
  {

    sub_10008875C(v94, &unk_10026EF10, &unk_1001F1FA0);
    (*(v167 + 8))(v163, v168);
    sub_10008875C(v101, &unk_10026EF10, &unk_1001F1FA0);
LABEL_40:
    sub_1001AB244(v78, _s11TrackedItemVMa);
    v121 = v160;
    (*(v165 + 56))(v76, 1, 1, v160);
    goto LABEL_41;
  }

  v105 = v96;
  v106 = v80;
  v107 = *(v79 + 32);
  v108 = v79;
  v109 = v145;
  v107(v145, v101, v106);
  v110 = *(v78 + 40);
  if (v110 == 1)
  {

    (*(v108 + 8))(v109, v106);
LABEL_33:
    sub_10008875C(v155, &unk_10026EF10, &unk_1001F1FA0);
    (*(v167 + 8))(v163, v168);
    v76 = v156;
    v96 = v105;
    goto LABEL_40;
  }

  if (!v110)
  {

    (*(v153 + 8))(v145, v154);
    goto LABEL_33;
  }

  v146 = v105;
  v111 = v78;
  v112 = *(v78 + 24);
  v113 = *(v111 + 32);
  v114 = v144;
  sub_10009ADF0(v111 + *(v143 + 24), v144, &qword_1002740D8, &qword_1001F82F0);
  v115 = _s11RecentPriceVMa(0);
  v116 = (*(*(v115 - 8) + 48))(v114, 1, v115);
  v117 = v145;
  v118 = v153;
  if (v116 == 1)
  {

    (*(v118 + 8))(v117, v154);
    sub_10008875C(v155, &unk_10026EF10, &unk_1001F1FA0);
    (*(v167 + 8))(v163, v168);
    sub_10008875C(v114, &qword_1002740D8, &qword_1001F82F0);
LABEL_39:
    v96 = v146;
    v78 = v152;
    v76 = v156;
    goto LABEL_40;
  }

  v119 = *v114;

  sub_1001AB244(v114, _s11RecentPriceVMa);
  v120 = v155;
  if (v112 <= 0.0 || v104 == 0.0 && v103 == 0.0)
  {

    sub_100198C68(*&v112, v113, v110);
    (*(v118 + 8))(v117, v154);
    sub_10008875C(v120, &unk_10026EF10, &unk_1001F1FA0);
LABEL_38:
    (*(v167 + 8))(v163, v168);
    goto LABEL_39;
  }

  if (v119 == 0.0)
  {
    sub_10008875C(v155, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    v133 = sub_1001982B8();
    v135 = v134;
    sub_10008875C(v120, &unk_10026EF10, &unk_1001F1FA0);
    if (v104 > v133 || v103 > v135)
    {

      sub_100198C68(*&v112, v113, v110);
      (*(v118 + 8))(v145, v154);
      goto LABEL_38;
    }
  }

  v136 = v152;
  v137 = *(v152 + 1);
  v138 = v152[16];
  v139 = v156;
  *v156 = *v152;
  v139[1] = v137;
  *(v139 + 16) = v138;
  v140 = v158;
  v139[3] = v142;
  v139[4] = v140;
  v121 = v160;
  v107(v139 + v160[6], v145, v154);
  v76 = v139;
  (*(v167 + 32))(v139 + v121[7], v163, v168);
  *(v139 + v121[8]) = v112;
  v141 = (v139 + v121[9]);
  *v141 = v113;
  v141[1] = v110;
  (*(v165 + 56))(v139, 0, 1, v121);

  sub_1001AB244(v136, _s11TrackedItemVMa);
  v96 = v146;
LABEL_41:
  v122 = v151;
  sub_10009ADF0(v76, v151, &qword_100274558, &qword_1001F8A08);
  if (v161(v122, 1, v121) == 1)
  {
    sub_10008875C(v76, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v169, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v164, &qword_100274238, &qword_1001F8720);
    sub_10008875C(v122, &qword_100274558, &qword_1001F8A08);
    v123 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
    return (*(*(v123 - 8) + 56))(v96, 1, 1, v123);
  }

  else
  {
    v125 = v122;
    v126 = v148;
    sub_1001AB0E4(v125, v148, _s4DealVMa);
    v127 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
    v128 = v96 + *(v127 + 48);
    sub_1001AB1DC(v126, v96, _s4DealVMa);
    v129 = (v128 + *(sub_100084528(&qword_100274550, &qword_1001F8A00) + 48));
    v147(v128, (v126 + v121[7]), v168);
    v130 = sub_1001982B8();
    v132 = v131;
    sub_1001AB244(v126, _s4DealVMa);
    sub_10008875C(v76, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v169, &qword_100274558, &qword_1001F8A08);
    sub_10008875C(v164, &qword_100274238, &qword_1001F8720);
    *v129 = v130;
    *(v129 + 1) = v132;
    return (*(*(v127 - 8) + 56))(v96, 0, 1, v127);
  }
}

uint64_t sub_1001A6908(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1001C6D08();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1001A6978@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = _s4DealVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1001AB1DC(v12, v10, _s4DealVMa);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1001AB244(v10, _s4DealVMa);
      }

      if (v14)
      {
        break;
      }

      sub_1001AB244(v10, _s4DealVMa);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1001AB0E4(v10, v18, _s4DealVMa);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1001A6B44(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v19 = sub_1001C4CA8();
  v20 = *(*(v19 - 8) + 16);
  v20(v18, a1, v19);
  v21 = &v18[*(v13 + 56)];
  *v21 = a3;
  v21[1] = a4;
  v20(v16, a2, v19);
  v22 = &v16[*(v13 + 56)];
  *v22 = a5;
  v22[1] = a6;
  sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
  if (sub_1001C5FD8())
  {
    sub_10008875C(v18, &qword_100274550, &qword_1001F8A00);
    sub_10008875C(v16, &qword_100274550, &qword_1001F8A00);
    if (a5 == a3)
    {
      v23 = a6 < a4;
    }

    else
    {
      v23 = a5 < a3;
    }
  }

  else
  {
    sub_1000B6E64(&qword_10026F518, &protocol conformance descriptor for Date);
    v23 = sub_1001C5FB8();
    sub_10008875C(v16, &qword_100274550, &qword_1001F8A00);
    sub_10008875C(v18, &qword_100274550, &qword_1001F8A00);
  }

  return v23 & 1;
}

void *sub_1001A6D74(uint64_t a1)
{
  v2 = 0;
  v6 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = *(_s4DealVMa(0) - 8);
    sub_1001A6F1C(&v6, (a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2++));
  }

  return v6;
}

uint64_t sub_1001A6E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a2 + *(_s5StateVMa(0) + 44) + 8))
  {
    return sub_10016B254(*a1, a3);
  }

  v6 = _s21PriceDropNotificationVMa(0);
  return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
}

uint64_t sub_1001A6F1C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = _s4DealVMa(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    v15 = v13[v14 + 3];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v29 = *(v7 + 72);
      sub_1001AB1DC(v15 + v17 + v29 * (v16 - 1), v28 - v11, _s4DealVMa);
      if (sub_1001C4C68())
      {
        v18 = v13[2];
        sub_1001AB1DC(a2, v10, _s4DealVMa);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v18)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v13 = sub_1001AAC38(v13);
          if (v18)
          {
LABEL_6:
            v28[1] = v2;
            if (v18 <= v13[2])
            {
              v3 = v13 + 3;
              a2 = v13[v18 + 3];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v13[v18 + 3] = a2;
              v28[0] = v17;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_8:
                v21 = a2[2];
                v20 = a2[3];
                if (v21 >= v20 >> 1)
                {
                  v3[v18] = sub_1000AE084((v20 > 1), v21 + 1, 1, a2);
                }

                sub_1001AB244(v12, _s4DealVMa);
                v22 = v3[v18];
                *(v22 + 16) = v21 + 1;
                result = sub_1001AB0E4(v10, v22 + v28[0] + v21 * v29, _s4DealVMa);
                goto LABEL_17;
              }

LABEL_21:
              a2 = sub_1000AE084(0, a2[2] + 1, 1, a2);
              v3[v18] = a2;
              goto LABEL_8;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

      sub_1001AB244(v12, _s4DealVMa);
    }
  }

  sub_100084528(&qword_10026F780, &qword_1001F13B0);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001F0670;
  sub_1001AB1DC(a2, v25 + v24, _s4DealVMa);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ADF50(0, v13[2] + 1, 1, v13);
    v13 = result;
  }

  v27 = v13[2];
  v26 = v13[3];
  if (v27 >= v26 >> 1)
  {
    result = sub_1000ADF50((v26 > 1), v27 + 1, 1, v13);
    v13 = result;
  }

  v13[2] = v27 + 1;
  v13[v27 + 4] = v25;
LABEL_17:
  *a1 = v13;
  return result;
}

Swift::Int sub_1001A7280(uint64_t *a1)
{
  v2 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AACC4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1001A7334(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1001A7334(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
        v6 = sub_1001C62D8();
        v6[2] = v5;
      }

      v7 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001A7A24(v8, v9, a1, v4);
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
    return sub_1001A7478(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001A7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v76 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v8 = __chkstk_darwin(v76);
  v75 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v74 = &v59[-v10];
  v77 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v11 = *(v77 - 8);
  v12 = __chkstk_darwin(v77);
  v68 = &v59[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v81 = &v59[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v59[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v59[-v20];
  result = __chkstk_darwin(v19);
  v24 = &v59[-v23];
  v61 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = sub_1001C4CA8();
    v27 = *(v11 + 72);
    v69 = v26 - 8;
    v70 = v26;
    v28 = v25 + v27 * (a3 - 1);
    v66 = -v27;
    v67 = v25;
    v29 = a1 - a3;
    v60 = v27;
    v30 = v25 + v27 * a3;
    v72 = v21;
    v73 = v18;
    v71 = v24;
LABEL_5:
    v65 = a3;
    v62 = v30;
    v31 = v30;
    v63 = v29;
    v32 = v29;
    v64 = v28;
    while (1)
    {
      v80 = v32;
      v78 = v31;
      sub_10009ADF0(v31, v24, &qword_10026F7A8, &unk_1001F2B50);
      sub_10009ADF0(v28, v21, &qword_10026F7A8, &unk_1001F2B50);
      sub_10009ADF0(v24, v18, &qword_10026F7A8, &unk_1001F2B50);
      v34 = v76;
      v33 = v77;
      v35 = &v18[*(v77 + 48)];
      v36 = &v35[*(v76 + 48)];
      v37 = *v36;
      v38 = v36[1];
      v39 = v81;
      sub_10009ADF0(v21, v81, &qword_10026F7A8, &unk_1001F2B50);
      v40 = &v39[*(v33 + 48)];
      v41 = &v40[*(v34 + 48)];
      v42 = *v41;
      v43 = v41[1];
      v44 = v70;
      v45 = *(v70 - 8);
      v46 = *(v45 + 16);
      v47 = v74;
      v79 = v35;
      v48 = v35;
      v49 = v40;
      v46(v74, v48, v70);
      v50 = (v47 + *(v34 + 48));
      *v50 = v37;
      v50[1] = v38;
      v51 = v75;
      v46(v75, v49, v44);
      v52 = (v51 + *(v34 + 48));
      *v52 = v42;
      v52[1] = v43;
      sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
      if (sub_1001C5FD8())
      {
        sub_10008875C(v47, &qword_100274550, &qword_1001F8A00);
        sub_10008875C(v51, &qword_100274550, &qword_1001F8A00);
        if (v42 == v37)
        {
          v53 = v43 < v38;
        }

        else
        {
          v53 = v42 < v37;
        }
      }

      else
      {
        sub_1000B6E64(&qword_10026F518, &protocol conformance descriptor for Date);
        v53 = sub_1001C5FB8();
        sub_10008875C(v51, &qword_100274550, &qword_1001F8A00);
        sub_10008875C(v47, &qword_100274550, &qword_1001F8A00);
      }

      v54 = *(v45 + 8);
      v54(v49, v44);
      sub_1001AB244(v81, _s4DealVMa);
      v54(v79, v44);
      v18 = v73;
      sub_1001AB244(v73, _s4DealVMa);
      v21 = v72;
      sub_10008875C(v72, &qword_10026F7A8, &unk_1001F2B50);
      v24 = v71;
      result = sub_10008875C(v71, &qword_10026F7A8, &unk_1001F2B50);
      v55 = v80;
      v56 = v78;
      if ((v53 & 1) == 0)
      {
LABEL_4:
        a3 = v65 + 1;
        v28 = v64 + v60;
        v29 = v63 - 1;
        v30 = v62 + v60;
        if (v65 + 1 == v61)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v67)
      {
        break;
      }

      v57 = v68;
      sub_1001AB16C(v78, v68);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1001AB16C(v57, v28);
      v28 += v66;
      v31 = v56 + v66;
      v58 = __CFADD__(v55, 1);
      v32 = v55 + 1;
      if (v58)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001A7A24(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v195 = a1;
  v218 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v8 = __chkstk_darwin(v218);
  v217 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v216 = &v187 - v11;
  v12 = __chkstk_darwin(v10);
  v210 = (&v187 - v13);
  __chkstk_darwin(v12);
  v15 = &v187 - v14;
  v219 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v16 = *(v219 - 8);
  v17 = __chkstk_darwin(v219);
  v199 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v214 = &v187 - v20;
  v21 = __chkstk_darwin(v19);
  v226 = &v187 - v22;
  v23 = __chkstk_darwin(v21);
  v225 = &v187 - v24;
  v25 = __chkstk_darwin(v23);
  v224 = &v187 - v26;
  v27 = __chkstk_darwin(v25);
  v223 = &v187 - v28;
  v29 = __chkstk_darwin(v27);
  v209 = &v187 - v30;
  v31 = __chkstk_darwin(v29);
  v208 = &v187 - v32;
  v33 = __chkstk_darwin(v31);
  v207 = &v187 - v34;
  v35 = __chkstk_darwin(v33);
  v206 = &v187 - v36;
  v37 = __chkstk_darwin(v35);
  v190 = &v187 - v38;
  v39 = __chkstk_darwin(v37);
  v189 = &v187 - v40;
  v41 = __chkstk_darwin(v39);
  v193 = &v187 - v42;
  result = __chkstk_darwin(v41);
  v192 = &v187 - v44;
  v45 = a3[1];
  if (v45 < 1)
  {
    v47 = _swiftEmptyArrayStorage;
LABEL_104:
    a4 = *v195;
    if (!*v195)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v228 = v47;
      v183 = *(v47 + 2);
      if (v183 >= 2)
      {
        while (*a3)
        {
          v184 = *&v47[16 * v183];
          v185 = *&v47[16 * v183 + 24];
          sub_1001A8BF0(*a3 + *(v16 + 72) * v184, *a3 + *(v16 + 72) * *&v47[16 * v183 + 16], *a3 + *(v16 + 72) * v185, a4);
          if (v5)
          {
          }

          if (v185 < v184)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1001A97CC(v47);
          }

          if (v183 - 2 >= *(v47 + 2))
          {
            goto LABEL_130;
          }

          v186 = &v47[16 * v183];
          *v186 = v184;
          *(v186 + 1) = v185;
          v228 = v47;
          result = sub_1001A9740(v183 - 1);
          v47 = v228;
          v183 = *(v228 + 2);
          if (v183 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_1001A97CC(v47);
    v47 = result;
    goto LABEL_106;
  }

  v46 = 0;
  v47 = _swiftEmptyArrayStorage;
  v197 = v16;
  v194 = a4;
  v204 = v15;
  v188 = a3;
  while (1)
  {
    v205 = v47;
    if (v46 + 1 >= v45)
    {
      v91 = v46 + 1;
    }

    else
    {
      v211 = v45;
      v191 = v5;
      v212 = *a3;
      v48 = v212;
      v49 = *(v16 + 72);
      v222 = v49;
      v227 = v212 + v49 * (v46 + 1);
      v50 = v192;
      sub_10009ADF0(v227, v192, &qword_10026F7A8, &unk_1001F2B50);
      v51 = v193;
      sub_10009ADF0(v48 + v49 * v46, v193, &qword_10026F7A8, &unk_1001F2B50);
      v52 = v189;
      sub_10009ADF0(v50, v189, &qword_10026F7A8, &unk_1001F2B50);
      v196 = v46;
      v53 = v218;
      v54 = v219;
      v55 = v52 + *(v219 + 48);
      v56 = (v55 + *(v218 + 48));
      v57 = *v56;
      v58 = v56[1];
      v59 = v190;
      sub_10009ADF0(v51, v190, &qword_10026F7A8, &unk_1001F2B50);
      v60 = v59 + *(v54 + 48);
      LODWORD(v221) = sub_1001A6B44(v55, v60, v57, v58, *(v60 + *(v53 + 48)), *(v60 + *(v53 + 48) + 8));
      v61 = sub_1001C4CA8();
      v62 = *(v61 - 8);
      v63 = *(v62 + 8);
      a3 = (v62 + 8);
      v63(v60, v61);
      sub_1001AB244(v59, _s4DealVMa);
      v220 = v63;
      v63(v55, v61);
      sub_1001AB244(v52, _s4DealVMa);
      sub_10008875C(v193, &qword_10026F7A8, &unk_1001F2B50);
      v64 = v227;
      result = sub_10008875C(v192, &qword_10026F7A8, &unk_1001F2B50);
      v215 = a3;
      v213 = a3 + 1;
      v65 = v196 + 2;
      v66 = v212 + v222 * (v196 + 2);
      while (1)
      {
        v91 = v211;
        if (v211 == v65)
        {
          break;
        }

        v71 = v206;
        sub_10009ADF0(v66, v206, &qword_10026F7A8, &unk_1001F2B50);
        v227 = v64;
        v72 = v207;
        sub_10009ADF0(v64, v207, &qword_10026F7A8, &unk_1001F2B50);
        v73 = v208;
        sub_10009ADF0(v71, v208, &qword_10026F7A8, &unk_1001F2B50);
        v75 = v218;
        v74 = v219;
        v76 = v73 + *(v219 + 48);
        v77 = (v76 + *(v218 + 48));
        v78 = *v77;
        v79 = v77[1];
        v80 = v72;
        v81 = v209;
        sub_10009ADF0(v80, v209, &qword_10026F7A8, &unk_1001F2B50);
        v82 = v81 + *(v74 + 48);
        v83 = (v82 + *(v75 + 48));
        v84 = *v83;
        v85 = v83[1];
        v86 = *v213;
        v87 = v204;
        (*v213)(v204, v76, v61);
        v88 = (v87 + *(v75 + 48));
        *v88 = v78;
        v88[1] = v79;
        v86(v210, v82, v61);
        v89 = *(v75 + 48);
        a3 = v210;
        v90 = (v210 + v89);
        *v90 = v84;
        v90[1] = v85;
        sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
        if (sub_1001C5FD8())
        {
          sub_10008875C(v87, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(a3, &qword_100274550, &qword_1001F8A00);
          if (v84 == v78)
          {
            v67 = v85 < v79;
          }

          else
          {
            v67 = v84 < v78;
          }
        }

        else
        {
          sub_1000B6E64(&qword_10026F518, &protocol conformance descriptor for Date);
          v67 = sub_1001C5FB8();
          v68 = a3;
          a3 = &qword_1001F8A00;
          sub_10008875C(v68, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(v87, &qword_100274550, &qword_1001F8A00);
        }

        v69 = v220;
        (v220)(v82, v61);
        sub_1001AB244(v209, _s4DealVMa);
        (v69)(v76, v61);
        sub_1001AB244(v208, _s4DealVMa);
        sub_10008875C(v207, &qword_10026F7A8, &unk_1001F2B50);
        result = sub_10008875C(v206, &qword_10026F7A8, &unk_1001F2B50);
        ++v65;
        v66 += v222;
        v64 = v227 + v222;
        v70 = (v221 & 1) == (v67 & 1);
        v47 = v205;
        if (!v70)
        {
          v91 = v65 - 1;
          break;
        }
      }

      v5 = v191;
      v16 = v197;
      a4 = v194;
      v46 = v196;
      if (v221)
      {
        if (v91 < v196)
        {
          goto LABEL_133;
        }

        a3 = v188;
        if (v196 < v91)
        {
          v92 = v222 * (v91 - 1);
          v93 = v91;
          v94 = v91 * v222;
          v211 = v93;
          v95 = v93;
          v96 = v196;
          v97 = v196 * v222;
          do
          {
            if (v96 != --v95)
            {
              v98 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              sub_1001AB16C(v98 + v97, v199);
              if (v97 < v92 || v98 + v97 >= (v98 + v94))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v97 != v92)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1001AB16C(v199, v98 + v92);
              v16 = v197;
            }

            ++v96;
            v92 -= v222;
            v94 -= v222;
            v97 += v222;
          }

          while (v96 < v95);
          a4 = v194;
          v47 = v205;
          v46 = v196;
          v91 = v211;
        }
      }

      else
      {
        a3 = v188;
      }
    }

    v99 = a3[1];
    if (v91 < v99)
    {
      if (__OFSUB__(v91, v46))
      {
        goto LABEL_132;
      }

      if (v91 - v46 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v91 < v46)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v47 + 2) + 1, 1, v47);
      v47 = result;
    }

    a4 = *(v47 + 2);
    v138 = *(v47 + 3);
    v139 = a4 + 1;
    if (a4 >= v138 >> 1)
    {
      result = sub_1000AD9F0((v138 > 1), a4 + 1, 1, v47);
      v47 = result;
    }

    *(v47 + 2) = v139;
    v140 = &v47[16 * a4];
    *(v140 + 4) = v46;
    *(v140 + 5) = v91;
    v200 = v91;
    v141 = *v195;
    if (!*v195)
    {
      goto LABEL_141;
    }

    if (a4)
    {
      while (1)
      {
        v142 = v139 - 1;
        if (v139 >= 4)
        {
          break;
        }

        if (v139 == 3)
        {
          v143 = *(v47 + 4);
          v144 = *(v47 + 5);
          v153 = __OFSUB__(v144, v143);
          v145 = v144 - v143;
          v146 = v153;
LABEL_73:
          if (v146)
          {
            goto LABEL_120;
          }

          v159 = &v47[16 * v139];
          v161 = *v159;
          v160 = *(v159 + 1);
          v162 = __OFSUB__(v160, v161);
          v163 = v160 - v161;
          v164 = v162;
          if (v162)
          {
            goto LABEL_123;
          }

          v165 = &v47[16 * v142 + 32];
          v167 = *v165;
          v166 = *(v165 + 1);
          v153 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v153)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v163, v168))
          {
            goto LABEL_127;
          }

          if (v163 + v168 >= v145)
          {
            if (v145 < v168)
            {
              v142 = v139 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v169 = &v47[16 * v139];
        v171 = *v169;
        v170 = *(v169 + 1);
        v153 = __OFSUB__(v170, v171);
        v163 = v170 - v171;
        v164 = v153;
LABEL_87:
        if (v164)
        {
          goto LABEL_122;
        }

        v172 = &v47[16 * v142];
        v174 = *(v172 + 4);
        v173 = *(v172 + 5);
        v153 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v153)
        {
          goto LABEL_125;
        }

        if (v175 < v163)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v142 - 1;
        if (v142 - 1 >= v139)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v180 = *&v47[16 * a4 + 32];
        v181 = *&v47[16 * v142 + 40];
        sub_1001A8BF0(*a3 + *(v16 + 72) * v180, *a3 + *(v16 + 72) * *&v47[16 * v142 + 32], *a3 + *(v16 + 72) * v181, v141);
        if (v5)
        {
        }

        if (v181 < v180)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1001A97CC(v47);
        }

        if (a4 >= *(v47 + 2))
        {
          goto LABEL_117;
        }

        v182 = &v47[16 * a4];
        *(v182 + 4) = v180;
        *(v182 + 5) = v181;
        v228 = v47;
        result = sub_1001A9740(v142);
        v47 = v228;
        v139 = *(v228 + 2);
        if (v139 <= 1)
        {
          goto LABEL_3;
        }
      }

      v147 = &v47[16 * v139 + 32];
      v148 = *(v147 - 64);
      v149 = *(v147 - 56);
      v153 = __OFSUB__(v149, v148);
      v150 = v149 - v148;
      if (v153)
      {
        goto LABEL_118;
      }

      v152 = *(v147 - 48);
      v151 = *(v147 - 40);
      v153 = __OFSUB__(v151, v152);
      v145 = v151 - v152;
      v146 = v153;
      if (v153)
      {
        goto LABEL_119;
      }

      v154 = &v47[16 * v139];
      v156 = *v154;
      v155 = *(v154 + 1);
      v153 = __OFSUB__(v155, v156);
      v157 = v155 - v156;
      if (v153)
      {
        goto LABEL_121;
      }

      v153 = __OFADD__(v145, v157);
      v158 = v145 + v157;
      if (v153)
      {
        goto LABEL_124;
      }

      if (v158 >= v150)
      {
        v176 = &v47[16 * v142 + 32];
        v178 = *v176;
        v177 = *(v176 + 1);
        v153 = __OFSUB__(v177, v178);
        v179 = v177 - v178;
        if (v153)
        {
          goto LABEL_128;
        }

        if (v145 < v179)
        {
          v142 = v139 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v45 = a3[1];
    v46 = v200;
    a4 = v194;
    if (v200 >= v45)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v46, a4))
  {
    goto LABEL_134;
  }

  if (v46 + a4 < v99)
  {
    v99 = v46 + a4;
  }

  if (v99 < v46)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v200 = v99;
  if (v91 == v99)
  {
    goto LABEL_53;
  }

  v191 = v5;
  v100 = *a3;
  v101 = sub_1001C4CA8();
  v102 = *(v16 + 72);
  v227 = v101;
  v215 = (v101 - 8);
  v103 = v100 + v102 * (v91 - 1);
  v212 = -v102;
  v196 = v46;
  v104 = v46 - v91;
  v213 = v100;
  v198 = v102;
  v105 = v100 + v91 * v102;
  a4 = v219;
LABEL_41:
  v211 = v91;
  v201 = v105;
  v202 = v104;
  v106 = v104;
  v203 = v103;
  v107 = v103;
  while (1)
  {
    v220 = v105;
    v221 = v106;
    v108 = v223;
    sub_10009ADF0(v105, v223, &qword_10026F7A8, &unk_1001F2B50);
    v109 = v224;
    sub_10009ADF0(v107, v224, &qword_10026F7A8, &unk_1001F2B50);
    v110 = v108;
    v111 = v225;
    sub_10009ADF0(v110, v225, &qword_10026F7A8, &unk_1001F2B50);
    v112 = v111 + *(a4 + 48);
    v113 = v218;
    v114 = (v112 + *(v218 + 48));
    v115 = *v114;
    v116 = v114[1];
    v117 = v226;
    sub_10009ADF0(v109, v226, &qword_10026F7A8, &unk_1001F2B50);
    v118 = v117 + *(a4 + 48);
    v119 = (v118 + *(v113 + 48));
    v120 = *v119;
    v121 = v119[1];
    v122 = v227;
    v123 = v216;
    v124 = *(v227 - 8);
    v125 = *(v124 + 16);
    v222 = v112;
    v126 = v112;
    v127 = v118;
    v125(v216, v126, v227);
    v128 = (v123 + *(v113 + 48));
    *v128 = v115;
    v128[1] = v116;
    v129 = v217;
    v125(v217, v127, v122);
    v130 = (v129 + *(v113 + 48));
    *v130 = v120;
    v130[1] = v121;
    sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
    if (sub_1001C5FD8())
    {
      sub_10008875C(v123, &qword_100274550, &qword_1001F8A00);
      sub_10008875C(v129, &qword_100274550, &qword_1001F8A00);
      if (v120 == v115)
      {
        v131 = v121 < v116;
      }

      else
      {
        v131 = v120 < v115;
      }
    }

    else
    {
      sub_1000B6E64(&qword_10026F518, &protocol conformance descriptor for Date);
      v131 = sub_1001C5FB8();
      sub_10008875C(v129, &qword_100274550, &qword_1001F8A00);
      sub_10008875C(v123, &qword_100274550, &qword_1001F8A00);
    }

    v132 = *(v124 + 8);
    v133 = v227;
    v132(v127, v227);
    sub_1001AB244(v226, _s4DealVMa);
    v132(v222, v133);
    sub_1001AB244(v225, _s4DealVMa);
    sub_10008875C(v224, &qword_10026F7A8, &unk_1001F2B50);
    result = sub_10008875C(v223, &qword_10026F7A8, &unk_1001F2B50);
    if ((v131 & 1) == 0)
    {
      a4 = v219;
LABEL_40:
      v91 = v211 + 1;
      v103 = v203 + v198;
      v104 = v202 - 1;
      v105 = &v201[v198];
      if (v211 + 1 == v200)
      {
        v5 = v191;
        a3 = v188;
        v16 = v197;
        v47 = v205;
        v46 = v196;
        v91 = v200;
        goto LABEL_53;
      }

      goto LABEL_41;
    }

    a4 = v219;
    v134 = v221;
    if (!v213)
    {
      break;
    }

    v135 = v220;
    v136 = v214;
    sub_1001AB16C(v220, v214);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001AB16C(v136, v107);
    v107 += v212;
    v105 = &v135[v212];
    v137 = __CFADD__(v134, 1);
    v106 = v134 + 1;
    if (v137)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1001A8BF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v110 = sub_100084528(&qword_100274550, &qword_1001F8A00);
  v8 = __chkstk_darwin(v110);
  v103 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v102 = v101 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v101 - v13;
  __chkstk_darwin(v12);
  v16 = v101 - v15;
  v118 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v17 = __chkstk_darwin(v118);
  v109 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v108 = v101 - v21;
  v22 = __chkstk_darwin(v20);
  v107 = v101 - v23;
  v24 = __chkstk_darwin(v22);
  v114 = v101 - v25;
  v26 = __chkstk_darwin(v24);
  v113 = v101 - v27;
  v28 = __chkstk_darwin(v26);
  v112 = v101 - v29;
  result = __chkstk_darwin(v28);
  v111 = v101 - v32;
  v34 = *(v33 + 72);
  if (!v34)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_70;
  }

  v35 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_71;
  }

  v36 = (a2 - a1) / v34;
  v121 = a1;
  v120 = a4;
  if (v36 >= v35 / v34)
  {
    v38 = v35 / v34 * v34;
    v106 = v31;
    if (a4 < a2 || a2 + v38 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v38;
    if (v38 >= 1)
    {
      v67 = -v34;
      v68 = a4 + v38;
      v115 = a1;
      v116 = a4;
      v114 = v67;
      while (2)
      {
        while (1)
        {
          v101[0] = v66;
          v69 = a2 + v67;
          v117 = a2 + v67;
          v105 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v121 = a2;
              v119 = v101[0];
              goto LABEL_68;
            }

            v112 = a3;
            v113 = v68;
            v104 = v66;
            v111 = v68 + v67;
            v71 = v107;
            sub_10009ADF0(v68 + v67, v107, &qword_10026F7A8, &unk_1001F2B50);
            v72 = v108;
            sub_10009ADF0(v69, v108, &qword_10026F7A8, &unk_1001F2B50);
            v73 = v71;
            v74 = v106;
            sub_10009ADF0(v73, v106, &qword_10026F7A8, &unk_1001F2B50);
            v75 = v118;
            v76 = v74 + *(v118 + 48);
            v77 = v110;
            v78 = (v76 + *(v110 + 48));
            v79 = *v78;
            v80 = v78[1];
            v81 = v72;
            v82 = v109;
            sub_10009ADF0(v81, v109, &qword_10026F7A8, &unk_1001F2B50);
            v83 = v82 + *(v75 + 48);
            v84 = (v83 + *(v77 + 48));
            v85 = *v84;
            v86 = v84[1];
            v87 = sub_1001C4CA8();
            v88 = *(v87 - 8);
            v89 = *(v88 + 16);
            v90 = v102;
            v89(v102, v76, v87);
            v91 = (v90 + *(v77 + 48));
            *v91 = v79;
            v91[1] = v80;
            v92 = v103;
            v89(v103, v83, v87);
            v93 = (v92 + *(v77 + 48));
            *v93 = v85;
            v93[1] = v86;
            sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
            if (sub_1001C5FD8())
            {
              sub_10008875C(v90, &qword_100274550, &qword_1001F8A00);
              sub_10008875C(v92, &qword_100274550, &qword_1001F8A00);
              v94 = v85 == v79 ? v86 < v80 : v85 < v79;
            }

            else
            {
              sub_1000B6E64(&qword_10026F518, &protocol conformance descriptor for Date);
              v94 = sub_1001C5FB8();
              sub_10008875C(v92, &qword_100274550, &qword_1001F8A00);
              sub_10008875C(v90, &qword_100274550, &qword_1001F8A00);
            }

            v95 = v112;
            v96 = v112 + v114;
            v97 = *(v88 + 8);
            v97(v83, v87);
            sub_1001AB244(v109, _s4DealVMa);
            v97(v76, v87);
            sub_1001AB244(v106, _s4DealVMa);
            sub_10008875C(v108, &qword_10026F7A8, &unk_1001F2B50);
            sub_10008875C(v107, &qword_10026F7A8, &unk_1001F2B50);
            a1 = v115;
            v98 = v116;
            if (v94)
            {
              break;
            }

            v99 = v111;
            v66 = v111;
            v69 = v117;
            if (v95 < v113 || v96 >= v113)
            {
              a3 = v96;
              swift_arrayInitWithTakeFrontToBack();
              v67 = v114;
            }

            else
            {
              v100 = v95 == v113;
              v67 = v114;
              a3 = v96;
              if (!v100)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v68 = v66;
            v70 = v99 > v98;
            a2 = v105;
            if (!v70)
            {
              goto LABEL_66;
            }
          }

          a2 = v117;
          if (v95 < v105 || v96 >= v105)
          {
            break;
          }

          v100 = v95 == v105;
          v66 = v104;
          v68 = v113;
          v67 = v114;
          a3 = v96;
          if (!v100)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v68 <= v98)
          {
            goto LABEL_66;
          }
        }

        a3 = v96;
        swift_arrayInitWithTakeFrontToBack();
        v66 = v104;
        v68 = v113;
        v67 = v114;
        if (v113 > v98)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v121 = a2;
    v119 = v66;
  }

  else
  {
    v37 = v36 * v34;
    v109 = v14;
    if (a4 < a1 || a1 + v37 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v108 = a4 + v37;
    v119 = a4 + v37;
    if (v37 >= 1 && a2 < a3)
    {
      v104 = v34;
      v105 = a3;
      do
      {
        v115 = a1;
        v117 = a2;
        v40 = v111;
        sub_10009ADF0(a2, v111, &qword_10026F7A8, &unk_1001F2B50);
        v116 = a4;
        v41 = v112;
        sub_10009ADF0(a4, v112, &qword_10026F7A8, &unk_1001F2B50);
        v42 = v113;
        sub_10009ADF0(v40, v113, &qword_10026F7A8, &unk_1001F2B50);
        v43 = v118;
        v44 = v42 + *(v118 + 48);
        v45 = v110;
        v46 = (v44 + *(v110 + 48));
        v47 = *v46;
        v48 = v46[1];
        v49 = v114;
        sub_10009ADF0(v41, v114, &qword_10026F7A8, &unk_1001F2B50);
        v50 = v49 + *(v43 + 48);
        v51 = (v50 + *(v45 + 48));
        v52 = *v51;
        v53 = v51[1];
        v54 = sub_1001C4CA8();
        v55 = *(v54 - 8);
        v56 = *(v55 + 16);
        v56(v16, v44, v54);
        v57 = &v16[*(v45 + 48)];
        *v57 = v47;
        v57[1] = v48;
        v58 = v109;
        v56(v109, v50, v54);
        v59 = (v58 + *(v45 + 48));
        *v59 = v52;
        v59[1] = v53;
        sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
        if (sub_1001C5FD8())
        {
          sub_10008875C(v16, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(v58, &qword_100274550, &qword_1001F8A00);
          if (v52 == v47)
          {
            v60 = v53 < v48;
          }

          else
          {
            v60 = v52 < v47;
          }
        }

        else
        {
          sub_1000B6E64(&qword_10026F518, &protocol conformance descriptor for Date);
          v60 = sub_1001C5FB8();
          sub_10008875C(v58, &qword_100274550, &qword_1001F8A00);
          sub_10008875C(v16, &qword_100274550, &qword_1001F8A00);
        }

        v61 = *(v55 + 8);
        v61(v50, v54);
        sub_1001AB244(v114, _s4DealVMa);
        v61(v44, v54);
        sub_1001AB244(v113, _s4DealVMa);
        sub_10008875C(v112, &qword_10026F7A8, &unk_1001F2B50);
        sub_10008875C(v111, &qword_10026F7A8, &unk_1001F2B50);
        v62 = v115;
        a4 = v116;
        v63 = v105;
        if (v60)
        {
          v64 = v104;
          a2 = v117 + v104;
          if (v115 < v117 || v115 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v115 != v117)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v64 = v104;
          v65 = v116 + v104;
          a2 = v117;
          if (v115 < v116 || v115 >= v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v115 != v116)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v120 = v65;
          a4 += v64;
        }

        a1 = v62 + v64;
        v121 = a1;
      }

      while (a4 < v108 && a2 < v63);
    }
  }

LABEL_68:
  sub_1001A9934(&v121, &v120, &v119, &qword_10026F7A8, &unk_1001F2B50);
  return 1;
}

uint64_t sub_1001A9740(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001A97CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001A9824(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001A9934(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_100084528(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001A9A1C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v14 = v8;

      v10 = (a1)(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 24;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_1001A9AD0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = sub_1001C69F8();
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
      v13 = sub_1001C6B38();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_1001A9BF8(uint64_t a1, unint64_t *a2)
{
  v7 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v58 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v64 = a2 + 7;

  v16 = 0;
  v60 = v9;
  v59 = v13;
  v61 = v14;
  v62 = v7;
  while (1)
  {
    if (v12)
    {
      goto LABEL_13;
    }

    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_53;
      }

      if (v18 >= v13)
      {
LABEL_50:
        sub_100005064(v14);
        return v7;
      }

      v12 = *(v9 + 8 * v18);
      ++v17;
    }

    while (!v12);
    v16 = v18;
LABEL_13:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v63 = v16;
    v20 = *(v14 + 48) + 24 * (v19 | (v16 << 6));
    v2 = *v20;
    v21 = *(v20 + 8);
    v4 = *(v20 + 16);
    sub_1001C6DF8();

    sub_1001C60E8();
    sub_1001C6E18(v4);
    v22 = sub_1001C6E28();
    v23 = -1 << *(v7 + 32);
    v9 = v22 & ~v23;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if (((1 << v9) & v64[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v14 = v61;
    v7 = v62;
    v9 = v60;
    v16 = v63;
    v13 = v59;
  }

  v24 = ~v23;
  v3 = v62[6];
  while (1)
  {
    v25 = v3 + 24 * v9;
    v5 = *(v25 + 16);
    v26 = *v25 == v2 && *(v25 + 8) == v21;
    if (!v26)
    {
      break;
    }

    if (v4 == v5)
    {
      goto LABEL_23;
    }

LABEL_16:
    v9 = (v9 + 1) & v24;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if ((v64[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (sub_1001C6D08() & 1) == 0 || ((v4 ^ v5))
  {
    goto LABEL_16;
  }

LABEL_23:
  v5 = v63;
  v66 = v58;
  v67 = v63;
  v68 = v12;
  v4 = v60;
  v2 = v61;
  v65[0] = v61;
  v65[1] = v60;

  v3 = v62;
  v28 = *(v62 + 32);
  v54 = ((1 << v28) + 63) >> 6;
  v15 = 8 * v54;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v55 = &v52;
    __chkstk_darwin(v27);
    v9 = &v52 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v64, v29);
    v30 = *(v9 + 8 * v7) & ~v6;
    v57 = v9;
    *(v9 + 8 * v7) = v30;
    v31 = *(v3 + 16) - 1;
    v32 = v59;
LABEL_25:
    v56 = v31;
LABEL_27:
    while (2)
    {
      if (v12)
      {
LABEL_33:
        v35 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v63 = v5;
        v36 = *(v2 + 48) + 24 * (v35 | (v5 << 6));
        v6 = *v36;
        v37 = *(v36 + 8);
        v38 = *(v36 + 16);
        sub_1001C6DF8();

        sub_1001C60E8();
        sub_1001C6E18(v38);
        v39 = sub_1001C6E28();
        v40 = -1 << *(v3 + 32);
        v7 = v39 & ~v40;
        v9 = v7 >> 6;
        v41 = 1 << v7;
        if (((1 << v7) & v64[v7 >> 6]) == 0)
        {
LABEL_26:

          v2 = v61;
          v3 = v62;
          v4 = v60;
          v5 = v63;
          v32 = v59;
          continue;
        }

        v42 = ~v40;
        v43 = *(v3 + 48);
        while (1)
        {
          v44 = v43 + 24 * v7;
          v45 = *(v44 + 16);
          if (*v44 == v6 && *(v44 + 8) == v37)
          {
            if (v38 == v45)
            {
              goto LABEL_43;
            }
          }

          else if ((sub_1001C6D08() & 1) != 0 && ((v38 ^ v45) & 1) == 0)
          {
LABEL_43:

            v47 = v57[v9];
            v57[v9] = v47 & ~v41;
            v26 = (v47 & v41) == 0;
            v2 = v61;
            v3 = v62;
            v4 = v60;
            v5 = v63;
            v32 = v59;
            if (!v26)
            {
              v31 = v56 - 1;
              if (__OFSUB__(v56, 1))
              {
                __break(1u);
              }

              if (v56 == 1)
              {

                v7 = &_swiftEmptySetSingleton;
                goto LABEL_49;
              }

              goto LABEL_25;
            }

            goto LABEL_27;
          }

          v7 = (v7 + 1) & v42;
          v9 = v7 >> 6;
          v41 = 1 << v7;
          if ((v64[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      break;
    }

    v33 = v5;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {
        v7 = sub_100156828(v57, v54, v56, v3);
        goto LABEL_49;
      }

      v12 = *(v4 + 8 * v34);
      ++v33;
      if (v12)
      {
        v5 = v34;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v49 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v64, v49);
  v51 = v53;
  v7 = sub_1001AA69C(v50, v54, v3, v9, v65);

  if (!v51)
  {

    v2 = v65[0];
    v58 = v66;
LABEL_49:
    v14 = v2;
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001AA1F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1001C6DF8();

    sub_1001C60E8();
    v11 = sub_1001C6E28();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1001C6D08() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    __chkstk_darwin(v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_100156A70(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1001C6DF8();

        sub_1001C60E8();
        v33 = sub_1001C6E28();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1001C6D08() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1001AA8EC(v44, v49, v2, v13, v57);

  if (!v45)
  {

    return v46;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001AA69C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v34 = a3 + 56;
  v32 = a5;
LABEL_2:
  v30 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 24 * (__clz(__rbit64(v9)) | (v10 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_1001C6DF8();

      sub_1001C60E8();
      sub_1001C6E18(v16);
      v17 = sub_1001C6E28();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
      {
LABEL_3:

        a5 = v32;
        v5 = a3;
        continue;
      }

      v22 = ~v18;
      v23 = *(v5 + 48);
      while (1)
      {
        v24 = v23 + 24 * v19;
        v25 = *(v24 + 16);
        if (*v24 == v15 && *(v24 + 8) == v14)
        {
          if (v16 == v25)
          {
            goto LABEL_20;
          }
        }

        else if ((sub_1001C6D08() & 1) != 0 && ((v16 ^ v25) & 1) == 0)
        {
LABEL_20:

          a5 = v32;
          v27 = v31[v20];
          v31[v20] = v27 & ~v21;
          v5 = a3;
          if ((v27 & v21) != 0)
          {
            v7 = v30 - 1;
            if (__OFSUB__(v30, 1))
            {
LABEL_29:
              __break(1u);
              return result;
            }

            if (v30 == 1)
            {
              return &_swiftEmptySetSingleton;
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v34 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v28 = v8 + 1;
  }

  else
  {
    v28 = (a5[2] + 64) >> 6;
  }

  a5[3] = v28 - 1;
  a5[4] = 0;

  return sub_100156828(v31, a2, v30, v5);
}

unint64_t *sub_1001AA8EC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100156A70(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1001C6DF8();

        sub_1001C60E8();
        v16 = sub_1001C6E28();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1001C6D08() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void sub_1001AAAD0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);

        sub_10017B81C(v12, v13, v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_1001AAD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v28 = a2;
  v7 = sub_100084528(&qword_100274548, &qword_1001F89F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v27 = _s11TrackedItemVMa(0);
  v10 = __chkstk_darwin(v27);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = v12;
  v16 = (v12 + 48);
  v17 = (a1 + 48);
  v18 = _swiftEmptyArrayStorage;
  v25 = a4;
  while (1)
  {
    v19 = *v17;
    v20 = *(v17 - 1);
    v29[0] = *(v17 - 2);
    v29[1] = v20;
    v30 = v19;

    sub_1001A3C7C(v29, v31, a4, v9);
    if (v4)
    {
      break;
    }

    if ((*v16)(v9, 1, v27) == 1)
    {
      sub_10008875C(v9, &qword_100274548, &qword_1001F89F8);
    }

    else
    {
      sub_1001AB0E4(v9, v14, _s11TrackedItemVMa);
      sub_1001AB0E4(v14, v26, _s11TrackedItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000AE1C8(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1000AE1C8((v21 > 1), v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      sub_1001AB0E4(v26, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, _s11TrackedItemVMa);
      a4 = v25;
    }

    v17 += 24;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

unint64_t sub_1001AAFFC()
{
  result = qword_100274540;
  if (!qword_100274540)
  {
    sub_1000885AC(&qword_100274228, &qword_1001F8710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274540);
  }

  return result;
}

uint64_t sub_1001AB080(uint64_t a1, uint64_t a2)
{
  v4 = _s11TrackedItemVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AB16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AB244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AB2B8()
{
  result = qword_100274560;
  if (!qword_100274560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274560);
  }

  return result;
}

unint64_t ReadingHistoryModel.description.getter()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v0 - 8);
  v52 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - v4;
  v53 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v45 - v6;
  v8 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v51 = &v45 - v15;
  v16 = sub_100084528(&qword_10026F888, &qword_1001F1478);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v47 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = (&v45 - v21);
  v23 = __chkstk_darwin(v20);
  v25 = (&v45 - v24);
  __chkstk_darwin(v23);
  v48 = (&v45 - v26);
  (*(v3 + 16))(v5, v55, v2);
  sub_1000885F4(&qword_10026F8A0, &unk_10026F470, &unk_1001F5600, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  sub_1001C6218();
  sub_1000885F4(&unk_10026F8A8, &qword_10026F898, &qword_1001F1488, &protocol conformance descriptor for CRDictionary<A, B>.Iterator);
  v49 = v7;
  sub_1001C6868();
  v27 = v16;
  v28 = *(v17 + 48);
  v29 = v28(v14, 1, v27);
  v54 = v28;
  v55 = v17 + 48;
  if (v29 == 1)
  {
    (*(v50 + 8))(v49, v53);
    sub_10008875C(v14, &qword_10026F890, &qword_1001F1480);
    v30 = v51;
    (*(v17 + 56))(v51, 1, 1, v27);
  }

  else
  {
    v46 = v17;
    sub_10009AE58(v14, v25, &qword_10026F888, &qword_1001F1478);
    v31 = v27;
    v32 = v49;
    v33 = v53;
    sub_1001C6868();
    if (v28(v11, 1, v27) != 1)
    {
      do
      {
        sub_10009AE58(v11, v22, &qword_10026F888, &qword_1001F1478);
        if (*v25 >= *v22)
        {
          sub_10008875C(v22, &qword_10026F888, &qword_1001F1478);
        }

        else
        {
          sub_10008875C(v25, &qword_10026F888, &qword_1001F1478);
          sub_10009AE58(v22, v25, &qword_10026F888, &qword_1001F1478);
        }

        sub_1001C6868();
        v27 = v31;
      }

      while (v54(v11, 1, v31) != 1);
    }

    (*(v50 + 8))(v32, v33);
    sub_10008875C(v11, &qword_10026F890, &qword_1001F1480);
    v30 = v51;
    sub_10009AE58(v25, v51, &qword_10026F888, &qword_1001F1478);
    (*(v46 + 56))(v30, 0, 1, v27);
  }

  v34 = v52;
  v35 = 0xD00000000000001BLL;
  if (v54(v30, 1, v27) == 1)
  {
    sub_10008875C(v30, &qword_10026F890, &qword_1001F1480);
  }

  else
  {
    v36 = v30;
    v37 = v48;
    sub_10009AE58(v36, v48, &qword_10026F888, &qword_1001F1478);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1001C69C8(39);

    v57 = 0xD000000000000020;
    v58 = 0x80000001002043D0;
    v56 = *v37;
    v59._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v59);

    v60._countAndFlagsBits = 8250;
    v60._object = 0xE200000000000000;
    sub_1001C6138(v60);
    v38 = v47;
    sub_10009ADF0(v37, v47, &qword_10026F888, &qword_1001F1478);
    v39 = *(v27 + 48);
    v40 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
    sub_1001C5D88();
    (*(*(v40 - 8) + 8))(v38 + v39, v40);
    v41 = sub_1001B4BF8(7, 0);
    v43 = v42;
    sub_1001BBBAC(v34, type metadata accessor for ReadingHistoryMonth);
    v61._countAndFlagsBits = v41;
    v61._object = v43;
    sub_1001C6138(v61);

    v62._countAndFlagsBits = 62;
    v62._object = 0xE100000000000000;
    sub_1001C6138(v62);
    v35 = v57;
    sub_10008875C(v37, &qword_10026F888, &qword_1001F1478);
  }

  return v35;
}

uint64_t sub_1001ABADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_1001C4D68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_1001C4948();
  v16 = *(v15 - 8);
  result = __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = __OFADD__(v20, a2);
  v22 = v20 + a2;
  if (v21)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v22 > 9999)
  {
    (*(v6 + 56))(v14, 1, 1, v5);
    v27 = sub_1001C4D78();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    sub_1001C4938();
    sub_1001C4CD8();
    sub_1001C4D18();
    (*(v6 + 8))(v8, v5);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v23 = sub_1001C4CA8();
    v24 = *(*(v23 - 8) + 56);
    v25 = v23;
    v26 = v29;

    return v24(v26, 1, 1, v25);
  }
}

uint64_t sub_1001ABED4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v2 - 8);
  v32 = &v29 - v3;
  v4 = sub_1001C4CA8();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_1002748C8, &unk_1001F9610);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1000885F4(&qword_1002748D0, &qword_10026F830, &qword_1001F0E80, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  sub_1001C6448();
  sub_1001C6488();
  sub_1000885F4(&qword_1002748D8, &qword_1002748C8, &unk_1001F9610, &protocol conformance descriptor for CRDictionary<A, B>.Index);
  v13 = sub_1001C5FD8();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = (v14)(v12, v6);
  if (v13)
  {
    v16 = type metadata accessor for ReadingHistory.Streak(0);
    v17 = *(*(v16 - 8) + 56);
    v18 = v34;
  }

  else
  {
    __chkstk_darwin(v15);
    *(&v29 - 2) = v33;
    v19 = sub_1001B26F8(0, sub_1001BD228, (&v29 - 4));
    v20 = v34;
    if (v19 >= 2)
    {
      v21 = v19;
      v35 = v19;
      v22 = v32;
      sub_1001C5BA8();
      v24 = v30;
      v23 = v31;
      if ((*(v30 + 48))(v22, 1, v31) != 1)
      {
        v26 = *(v24 + 32);
        v27 = v29;
        v26(v29, v22, v23);
        v26(v20, v27, v23);
        v28 = type metadata accessor for ReadingHistory.Streak(0);
        *&v20[*(v28 + 20)] = v21;
        return (*(*(v28 - 8) + 56))(v20, 0, 1, v28);
      }

      sub_10008875C(v22, &unk_10026FC70, &unk_1001F1430);
    }

    v16 = type metadata accessor for ReadingHistory.Streak(0);
    v17 = *(*(v16 - 8) + 56);
    v18 = v20;
  }

  return v17(v18, 1, 1, v16);
}

BOOL sub_1001AC330(uint64_t a1, int a2)
{
  v29 = a2;
  v3 = sub_1001C4CA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  ReadingHistoryModel.readingHistoryDay(for:)(&v27 - v14);
  v16 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_10008875C(v15, &qword_100273DA0, &qword_1001F7E50);
  }

  else
  {
    v17 = sub_1001C5E48();
    v28 = v10;
    v18 = v6;
    v19 = v3;
    v20 = a1;
    v21 = v4;
    v22 = v17;
    sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    sub_1001C56C8();
    v23 = v30;
    sub_1001BBBAC(v15, type metadata accessor for ReadingHistoryDay);
    v24 = v22 < v23;
    v4 = v21;
    a1 = v20;
    v3 = v19;
    v6 = v18;
    v10 = v28;
    if (!v24)
    {
      return 1;
    }
  }

  if (v29)
  {
    sub_1001B70BC(a1, v12);
    sub_10009ADF0(v12, v10, &unk_10026FC70, &unk_1001F1430);
    if ((*(v4 + 48))(v10, 1, v3) == 1)
    {
      sub_10008875C(v12, &unk_10026FC70, &unk_1001F1430);
      sub_10008875C(v10, &unk_10026FC70, &unk_1001F1430);
      return 0;
    }

    (*(v4 + 32))(v6, v10, v3);
    v25 = sub_1001C4C58();
    (*(v4 + 8))(v6, v3);
    sub_10008875C(v12, &unk_10026FC70, &unk_1001F1430);
    return (v25 & 1) != 0;
  }

  return 0;
}

void *sub_1001AC6B4(uint64_t a1, int a2)
{
  v63 = a2;
  v3 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for ReadingHistoryDay(0);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1001C4948();
  v59 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v45 - v15;
  v16 = sub_1001C4CA8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v58 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v54 = &v45 - v21;
  __chkstk_darwin(v20);
  v23 = &v45 - v22;
  v46 = sub_1001C4D68();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v62 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4CD8();
  v25 = *(v17 + 16);
  v17 += 16;
  v25(v23, a1, v16);
  v26 = 0;
  v55 = (v17 + 32);
  v27 = (v17 + 16);
  v28 = (v17 - 8);
  v29 = v5;
  v49 = enum case for Calendar.Component.day(_:);
  v48 = (v59 + 1);
  v59 = (v61 + 48);
  v47 = xmmword_1001F0670;
  v61 = v14;
  v52 = v5;
  v56 = v28;
  if (v63)
  {
LABEL_5:
    while (1)
    {
      v30 = v57;
      sub_1001B70BC(v23, v57);
      sub_10009ADF0(v30, v14, &unk_10026FC70, &unk_1001F1430);
      if ((*v55)(v14, 1, v16) == 1)
      {
        break;
      }

      v32 = *v27;
      v33 = v54;
      (*v27)();
      if ((sub_1001C4C58() & 1) == 0)
      {
        v28 = v56;
        (*v56)(v33, v16);
        v31 = v57;
        goto LABEL_14;
      }

      v53 = v32;
      sub_100084528(&qword_100274848, &qword_1001F9590);
      v34 = sub_1001C4D48();
      v35 = *(v34 - 8);
      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v47;
      (*(v35 + 104))(v37 + v36, v49, v34);
      sub_1001BCEA0(v37);
      swift_setDeallocating();
      (*(v35 + 8))(v37 + v36, v34);
      swift_deallocClassInstance();
      v38 = v50;
      sub_1001C4CF8();

      v39 = sub_1001C4908();
      LOBYTE(v34) = v40;
      (*v48)(v38, v51);
      sub_10008875C(v57, &unk_10026FC70, &unk_1001F1430);
      v28 = v56;
      result = (*v56)(v23, v16);
      if ((v34 & 1) != 0 || v39 < 1)
      {
        v29 = v52;
        v14 = v61;
      }

      else
      {
        v42 = __OFADD__(v26, v39);
        v26 += v39;
        v29 = v52;
        v14 = v61;
        if (v42)
        {
          goto LABEL_24;
        }
      }

      (v53)(v23, v54, v16);
      if ((v63 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_10008875C(v30, &unk_10026FC70, &unk_1001F1430);
    v31 = v14;
    v28 = v56;
LABEL_14:
    sub_10008875C(v31, &unk_10026FC70, &unk_1001F1430);
    goto LABEL_15;
  }

  while (1)
  {
LABEL_15:
    ReadingHistoryModel.readingHistoryDay(for:)(v29);
    if ((*v59)(v29, 1, v60) == 1)
    {
      (*v28)(v23, v16);
      (*(v45 + 8))(v62, v46);
      sub_10008875C(v29, &qword_100273DA0, &qword_1001F7E50);
      return v26;
    }

    sub_1001BD1C0(v29, v9, type metadata accessor for ReadingHistoryDay);
    v43 = sub_1001C5E48();
    sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    result = sub_1001C56C8();
    if (v43 < v64)
    {
      sub_1001BBBAC(v9, type metadata accessor for ReadingHistoryDay);
      (*v28)(v23, v16);
      (*(v45 + 8))(v62, v46);
      return v26;
    }

    v42 = __OFADD__(v26++, 1);
    if (v42)
    {
      break;
    }

    v44 = v58;
    sub_1001C4BE8();
    sub_1001BBBAC(v9, type metadata accessor for ReadingHistoryDay);
    (*v28)(v23, v16);
    (*v27)(v23, v44, v16);
    v14 = v61;
    if (v63)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1001ACEE4(uint64_t a1)
{
  v203 = sub_100084528(&qword_100274868, &qword_1001F95A0);
  __chkstk_darwin(v203);
  v202 = &v180 - v3;
  v4 = sub_100084528(&qword_100274870, &qword_1001F95A8);
  v5 = __chkstk_darwin(v4 - 8);
  v191 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v192 = &v180 - v8;
  v9 = __chkstk_darwin(v7);
  v198 = &v180 - v10;
  __chkstk_darwin(v9);
  v207 = &v180 - v11;
  v197 = sub_100084528(&qword_100274878, &qword_1001F95B0);
  v196 = *(v197 - 8);
  v12 = __chkstk_darwin(v197);
  v195 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v201 = &v180 - v14;
  v194 = sub_100084528(&qword_100274880, &qword_1001F95B8);
  __chkstk_darwin(v194);
  v193 = &v180 - v15;
  v212 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v208 = *(v212 - 8);
  __chkstk_darwin(v212);
  v211 = &v180 - v16;
  v17 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v17 - 8);
  v210 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v20 = __chkstk_darwin(v19 - 8);
  v206 = (&v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v23 = &v180 - v22;
  v24 = sub_100084528(&qword_100274888, &unk_1001F95C0);
  v25 = __chkstk_darwin(v24 - 8);
  v187 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v189 = &v180 - v28;
  __chkstk_darwin(v27);
  v30 = &v180 - v29;
  v31 = sub_100084528(&unk_10026F480, &qword_1001F0E88);
  __chkstk_darwin(v31 - 8);
  v33 = &v180 - v32;
  v34 = sub_100084528(&qword_100274890, &qword_1001F95D0);
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v186 = &v180 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v188 = &v180 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v180 - v41;
  __chkstk_darwin(v40);
  v44 = &v180 - v43;
  v215 = &_swiftEmptySetSingleton;
  type metadata accessor for ReadingHistoryModel(0);
  sub_1001BBB44(&qword_10026F490, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v204 = a1;
  v205 = v1;
  sub_1001C5CB8();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_10008875C(v33, &unk_10026F480, &qword_1001F0E88);
    return &_swiftEmptySetSingleton;
  }

  else
  {
    sub_10009AE58(v33, v44, &qword_100274890, &qword_1001F95D0);
    v190 = v44;
    sub_10009ADF0(v44, v42, &qword_100274890, &qword_1001F95D0);
    v185 = v34;
    v46 = *(v34 + 48);
    sub_10009AE58(v42, v30, &qword_100274888, &unk_1001F95C0);
    v47 = sub_100084528(&qword_100274898, &qword_1001F95D8);
    v48 = *(v47 - 8);
    v49 = *(v48 + 48);
    v183 = v48 + 48;
    v182 = v49;
    v50 = v49(v30, 1, v47);
    v184 = v47;
    v200 = v23;
    v181 = v48;
    if (v50 == 1)
    {
      sub_10008875C(&v42[v46], &qword_10026F8C8, &qword_1001F95E0);
      result = sub_10008875C(v30, &qword_100274888, &unk_1001F95C0);
      v51 = &_swiftEmptySetSingleton;
    }

    else
    {
      v51 = sub_1001C5AD8();
      (*(v48 + 8))(v30, v47);
      result = sub_10008875C(&v42[v46], &qword_10026F8C8, &qword_1001F95E0);
    }

    v52 = 0;
    v213 = 0;
    v53 = v51 + 56;
    v54 = 1 << v51[32];
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v51 + 7);
    v57 = (v54 + 63) >> 6;
    v58 = v208;
    v208 += 8;
    v209 = (v58 + 16);
    v199 = v51;
    v59 = v210;
    if (!v56)
    {
LABEL_10:
      while (1)
      {
        v60 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v60 >= v57)
        {

          v68 = v188;
          sub_10009ADF0(v190, v188, &qword_100274890, &qword_1001F95D0);
          v69 = *(v185 + 48);
          v70 = v189;
          sub_10009AE58(v68, v189, &qword_100274888, &unk_1001F95C0);
          v71 = v184;
          if (v182(v70, 1, v184) == 1)
          {
            sub_10008875C(v68 + v69, &qword_10026F8C8, &qword_1001F95E0);
            result = sub_10008875C(v70, &qword_100274888, &unk_1001F95C0);
            v72 = &_swiftEmptySetSingleton;
          }

          else
          {
            v72 = sub_1001C5AE8();
            (*(v181 + 8))(v70, v71);
            result = sub_10008875C(v68 + v69, &qword_10026F8C8, &qword_1001F95E0);
          }

          v73 = 0;
          v74 = 1 << v72[32];
          v75 = -1;
          if (v74 < 64)
          {
            v75 = ~(-1 << v74);
          }

          v76 = v75 & *(v72 + 7);
          for (i = (v74 + 63) >> 6; v76; v73 = v78)
          {
            v78 = v73;
            v79 = v206;
LABEL_27:
            v80 = *(*(v72 + 6) + ((v78 << 9) | (8 * __clz(__rbit64(v76)))));
            v214 = v80;
            sub_100084528(&unk_10026F470, &unk_1001F5600);
            sub_1001C5BA8();
            v81 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
            v82 = *(v81 - 8);
            result = (*(v82 + 48))(v79, 1, v81);
            if (result == 1)
            {
              goto LABEL_105;
            }

            v83 = v79;
            v76 &= v76 - 1;
            v84 = v210;
            sub_1001C5D88();
            (*(v82 + 8))(v83, v81);
            v86 = v211;
            v85 = v212;
            (*v209)(v211, v84, v212);
            sub_1001BBBAC(v84, type metadata accessor for ReadingHistoryMonth);
            v87 = v213;
            sub_1001AE538(v86, &v215, v80);
            v213 = v87;
            result = (*v208)(v86, v85);
          }

          v79 = v206;
          while (1)
          {
            v78 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v78 >= i)
            {

              v88 = v190;
              v89 = v186;
              sub_10009ADF0(v190, v186, &qword_100274890, &qword_1001F95D0);
              v90 = *(v185 + 48);
              v91 = v187;
              sub_10009AE58(v89, v187, &qword_100274888, &unk_1001F95C0);
              v92 = v184;
              if (v182(v91, 1, v184) == 1)
              {
                sub_10008875C(v88, &qword_100274890, &qword_1001F95D0);
                sub_10008875C(v89 + v90, &qword_10026F8C8, &qword_1001F95E0);
                v93 = &qword_100274888;
                v94 = &unk_1001F95C0;
                v95 = v91;
LABEL_97:
                sub_10008875C(v95, v93, v94);
                return v215;
              }

              v96 = sub_1001C5AF8();
              (*(v181 + 8))(v91, v92);
              result = sub_10008875C(v89 + v90, &qword_10026F8C8, &qword_1001F95E0);
              v97 = 0;
              v99 = v96 + 64;
              v98 = *(v96 + 64);
              v204 = v96;
              v100 = 1 << *(v96 + 32);
              if (v100 < 64)
              {
                v101 = ~(-1 << v100);
              }

              else
              {
                v101 = -1;
              }

              v102 = v101 & v98;
              v103 = (v100 + 63) >> 6;
              v200 = (v96 + 64);
              v199 = v103;
LABEL_38:
              if (v102)
              {
                v107 = v97;
LABEL_43:
                v211 = v102;
                v205 = v107;
                v108 = __clz(__rbit64(v102)) | (v107 << 6);
                v109 = *(*(v204 + 48) + 8 * v108);
                v110 = &v193[*(v194 + 48)];
                sub_10009ADF0(*(v204 + 56) + *(v196 + 72) * v108, v110, &qword_100274878, &qword_1001F95B0);
                v111 = v197;
                v112 = *(v197 + 48);
                v113 = *(v197 + 64);
                v114 = v201;
                sub_10009AE58(v110, v201, &qword_100274870, &qword_1001F95A8);
                sub_10009AE58(v110 + v112, v114 + v112, &qword_1002748A0, &qword_1001F95E8);
                sub_10009AE58(v110 + v113, v114 + v113, &qword_1002748A0, &qword_1001F95E8);
                v115 = v195;
                sub_10009ADF0(v114, v195, &qword_100274878, &qword_1001F95B0);
                v116 = *(v111 + 48);
                v117 = *(v111 + 64);
                v118 = v207;
                sub_10009AE58(v115, v207, &qword_100274870, &qword_1001F95A8);
                sub_10008875C(v115 + v117, &qword_1002748A0, &qword_1001F95E8);
                sub_10008875C(v115 + v116, &qword_1002748A0, &qword_1001F95E8);
                v119 = v198;
                sub_10009ADF0(v118, v198, &qword_100274870, &qword_1001F95A8);
                v120 = sub_100084528(&qword_1002748A8, &qword_1001F95F0);
                v121 = *(v120 - 8);
                v208 = *(v121 + 6);
                v209 = (v121 + 48);
                v122 = (v208)(v119, 1, v120);
                v210 = v120;
                v206 = v121;
                if (v122 == 1)
                {
                  sub_10008875C(v119, &qword_100274870, &qword_1001F95A8);
                  result = &_swiftEmptySetSingleton;
                }

                else
                {
                  v123 = sub_1001C5AD8();
                  (*(v121 + 1))(v119, v120);
                  result = v123;
                }

                v124 = 0;
                v211 &= v211 - 1;
                v125 = result + 56;
                v126 = 1 << *(result + 32);
                if (v126 < 64)
                {
                  v127 = ~(-1 << v126);
                }

                else
                {
                  v127 = -1;
                }

                v128 = v127 & *(result + 56);
                v129 = v215;
                v130 = (v126 + 63) >> 6;
LABEL_51:
                v132 = v129 + 56;
                v133 = v124;
                v212 = v129;
                if (!v128)
                {
                  goto LABEL_53;
                }

                do
                {
                  v124 = v133;
LABEL_56:
                  v134 = __clz(__rbit64(v128));
                  v128 &= v128 - 1;
                  v135 = result;
                  v136 = *(*(result + 48) + ((v124 << 9) | (8 * v134)));
                  sub_1001C6DF8();
                  sub_1001C6E08(v109);
                  sub_1001C6E08(v136);
                  v137 = sub_1001C6E28();
                  v129 = v212;
                  v138 = -1 << *(v212 + 32);
                  v139 = v137 & ~v138;
                  if (((*(v132 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
                  {
LABEL_50:
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v214 = v129;
                    sub_100179134(v109, v136, v139, isUniquelyReferenced_nonNull_native);
                    v129 = v214;
                    result = v135;
                    goto LABEL_51;
                  }

                  v140 = ~v138;
                  while (1)
                  {
                    v141 = (*(v212 + 48) + 16 * v139);
                    if (*v141 == v109 && v141[1] == v136)
                    {
                      break;
                    }

                    v139 = (v139 + 1) & v140;
                    if (((*(v132 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  v133 = v124;
                  result = v135;
                }

                while (v128);
                while (1)
                {
LABEL_53:
                  v124 = v133 + 1;
                  if (__OFADD__(v133, 1))
                  {
                    __break(1u);
                    goto LABEL_99;
                  }

                  if (v124 >= v130)
                  {
                    break;
                  }

                  v128 = *(v125 + 8 * v124);
                  ++v133;
                  if (v128)
                  {
                    goto LABEL_56;
                  }
                }

                v215 = v129;

                v142 = v192;
                sub_10009ADF0(v207, v192, &qword_100274870, &qword_1001F95A8);
                v143 = v210;
                if ((v208)(v142, 1, v210) == 1)
                {
                  result = sub_10008875C(v142, &qword_100274870, &qword_1001F95A8);
                  v144 = &_swiftEmptySetSingleton;
                }

                else
                {
                  v144 = sub_1001C5AE8();
                  result = v206[1](v142, v143);
                }

                v145 = 0;
                v146 = 1 << v144[32];
                if (v146 < 64)
                {
                  v147 = ~(-1 << v146);
                }

                else
                {
                  v147 = -1;
                }

                v148 = v147 & *(v144 + 7);
                v149 = (v146 + 63) >> 6;
                v150 = v212;
LABEL_71:
                v152 = v150 + 56;
                v153 = v145;
                if (!v148)
                {
                  goto LABEL_73;
                }

                do
                {
                  v145 = v153;
LABEL_76:
                  v154 = __clz(__rbit64(v148));
                  v148 &= v148 - 1;
                  v155 = *(*(v144 + 6) + ((v145 << 9) | (8 * v154)));
                  sub_1001C6DF8();
                  sub_1001C6E08(v109);
                  sub_1001C6E08(v155);
                  result = sub_1001C6E28();
                  v156 = -1 << *(v150 + 32);
                  v157 = result & ~v156;
                  if (((*(v152 + ((v157 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v157) & 1) == 0)
                  {
LABEL_70:
                    v151 = swift_isUniquelyReferenced_nonNull_native();
                    v214 = v150;
                    result = sub_100179134(v109, v155, v157, v151);
                    v150 = v214;
                    goto LABEL_71;
                  }

                  v158 = ~v156;
                  while (1)
                  {
                    v159 = (*(v150 + 48) + 16 * v157);
                    if (*v159 == v109 && v159[1] == v155)
                    {
                      break;
                    }

                    v157 = (v157 + 1) & v158;
                    if (((*(v152 + ((v157 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v157) & 1) == 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  v153 = v145;
                }

                while (v148);
LABEL_73:
                while (1)
                {
                  v145 = v153 + 1;
                  if (__OFADD__(v153, 1))
                  {
                    break;
                  }

                  if (v145 >= v149)
                  {
                    v215 = v150;

                    v160 = v207;
                    v161 = v191;
                    sub_10009ADF0(v207, v191, &qword_100274870, &qword_1001F95A8);
                    v162 = v210;
                    if ((v208)(v161, 1, v210) == 1)
                    {
                      sub_10008875C(v160, &qword_100274870, &qword_1001F95A8);
                      sub_10008875C(v201, &qword_100274878, &qword_1001F95B0);
                      v104 = v161;
                      v105 = &qword_100274870;
                      v106 = &qword_1001F95A8;
LABEL_37:
                      result = sub_10008875C(v104, v105, v106);
                      v97 = v205;
                      v99 = v200;
                      v103 = v199;
                      v102 = v211;
                      goto LABEL_38;
                    }

                    v163 = sub_1001C5AF8();
                    result = v206[1](v161, v162);
                    v164 = 0;
                    v166 = v163 + 64;
                    v165 = *(v163 + 64);
                    v212 = v163;
                    v167 = 1 << *(v163 + 32);
                    if (v167 < 64)
                    {
                      v168 = ~(-1 << v167);
                    }

                    else
                    {
                      v168 = -1;
                    }

                    v169 = v168 & v165;
                    v170 = (v167 + 63) >> 6;
                    if ((v168 & v165) != 0)
                    {
                      do
                      {
                        v171 = v164;
LABEL_93:
                        v172 = __clz(__rbit64(v169));
                        v169 &= v169 - 1;
                        v173 = v172 | (v171 << 6);
                        v174 = *(v212 + 56);
                        v175 = *(*(v212 + 48) + 8 * v173);
                        v176 = (sub_100084528(&qword_1002748B0, &qword_1001F95F8) - 8);
                        v177 = v174 + *(*v176 + 72) * v173;
                        v178 = &v202[*(v203 + 48)];
                        sub_10009ADF0(v177, v178, &qword_1002748B0, &qword_1001F95F8);
                        v179 = v176[14];
                        sub_1001787B0(&v214, v109, v175);
                        result = sub_10008875C(v178 + v179, &qword_1002748A0, &qword_1001F95E8);
                      }

                      while (v169);
                    }

                    while (1)
                    {
                      v171 = v164 + 1;
                      if (__OFADD__(v164, 1))
                      {
                        goto LABEL_102;
                      }

                      if (v171 >= v170)
                      {

                        sub_10008875C(v207, &qword_100274870, &qword_1001F95A8);
                        v104 = v201;
                        v105 = &qword_100274878;
                        v106 = &qword_1001F95B0;
                        goto LABEL_37;
                      }

                      v169 = *(v166 + 8 * v171);
                      ++v164;
                      if (v169)
                      {
                        v164 = v171;
                        goto LABEL_93;
                      }
                    }
                  }

                  v148 = *&v144[8 * v145 + 56];
                  ++v153;
                  if (v148)
                  {
                    goto LABEL_76;
                  }
                }

LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              while (1)
              {
                v107 = v97 + 1;
                if (__OFADD__(v97, 1))
                {
                  goto LABEL_103;
                }

                if (v107 >= v103)
                {

                  v93 = &qword_100274890;
                  v94 = &qword_1001F95D0;
                  v95 = v190;
                  goto LABEL_97;
                }

                v102 = *(v99 + 8 * v107);
                ++v97;
                if (v102)
                {
                  goto LABEL_43;
                }
              }
            }

            v76 = *&v72[8 * v78 + 56];
            ++v73;
            if (v76)
            {
              goto LABEL_27;
            }
          }

LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v56 = *&v53[8 * v60];
        ++v52;
        if (v56)
        {
          goto LABEL_13;
        }
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    while (1)
    {
      v60 = v52;
LABEL_13:
      v61 = *(*(v51 + 6) + ((v60 << 9) | (8 * __clz(__rbit64(v56)))));
      v214 = v61;
      sub_100084528(&unk_10026F470, &unk_1001F5600);
      v62 = v200;
      sub_1001C5BA8();
      v63 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      v64 = *(v63 - 8);
      result = (*(v64 + 48))(v62, 1, v63);
      if (result == 1)
      {
        break;
      }

      v56 &= v56 - 1;
      sub_1001C5D88();
      (*(v64 + 8))(v62, v63);
      v66 = v211;
      v65 = v212;
      (*v209)(v211, v59, v212);
      sub_1001BBBAC(v59, type metadata accessor for ReadingHistoryMonth);
      v67 = v213;
      sub_1001AE538(v66, &v215, v61);
      v213 = v67;
      result = (*v208)(v66, v65);
      v52 = v60;
      v51 = v199;
      if (!v56)
      {
        goto LABEL_10;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
  }

  return result;
}