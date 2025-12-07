uint64_t sub_1000406A0()
{
  sub_10000712C(&qword_10009F110, &qword_10007E4A8);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_1000A6D40 = result;
  return result;
}

uint64_t sub_1000406E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a1;
  v80 = a4;
  v7 = sub_100079520();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = __chkstk_darwin(v7);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v65 - v10;
  v11 = sub_100079530();
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = &v65 - v16;
  v17 = __chkstk_darwin(v15);
  v78 = &v65 - v18;
  __chkstk_darwin(v17);
  v79 = &v65 - v19;
  v20 = sub_100079750();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000712C(&qword_10009E788, &qword_10007E390);
  __chkstk_darwin(v24 - 8);
  v26 = &v65 - v25;
  if (qword_1000A4070 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_1000A6D40;

  os_unfair_lock_lock((v27 + 20));
  v28 = *(v27 + 16);
  os_unfair_lock_unlock((v27 + 20));

  if (v28 == 1)
  {
    return sub_1000392CC();
  }

  v83[0] = a2;
  v83[1] = a3;

  v84._countAndFlagsBits = 47;
  v84._object = 0xE100000000000000;
  sub_100079F00(v84);
  v30 = v80;
  sub_100079810();

  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v32 = NSURLIsDirectoryKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();
  if (v4)
  {

    (*(v21 + 56))(v26, 1, 1, v20);
    sub_1000096C4(v26, &qword_10009E788, &qword_10007E390);
    goto LABEL_9;
  }

  (*(v21 + 56))(v26, 0, 1, v20);
  v33 = sub_1000796F0();
  result = (*(v21 + 8))(v26, v20);
  if (v33 == 2 || (v33 & 1) == 0)
  {
LABEL_9:
    v34 = [objc_opt_self() defaultManager];
    sub_100079800(v35);
    v37 = v36;
    v83[0] = 0;
    v38 = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v83];

    if (v38)
    {
      v39 = v83[0];
      sub_100079740();
      sub_100079710();
      sub_1000797F0();
      return (*(v21 + 8))(v23, v20);
    }

    v40 = v83[0];
    v41 = sub_1000797A0();

    swift_willThrow();
    v42 = v78;
    v83[0] = v41;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    v43 = v79;
    v44 = v76;
    if (swift_dynamicCast())
    {
      v75 = 0;
      v67 = *(v77 + 16);
      v67(v42, v43, v44);
      v45 = sub_100046424(&qword_10009DE28, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      v46 = v71;
      v68 = v45;
      sub_100079790();
      v47 = v72;
      sub_100079510();
      sub_100046424(&qword_10009DE30, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v48 = v74;
      sub_100079FC0();
      sub_100079FC0();
      v49 = *(v73 + 1);
      v49(v47, v48);
      v49(v46, v48);
      if (v82 == v81)
      {
        v50 = v78;
        sub_1000394FC(v78);

        v51 = *(v77 + 8);
        v51(v50, v44);
        v52 = sub_1000798B0();
        (*(*(v52 - 8) + 8))(v80, v52);
        v51(v79, v44);
      }

      v53 = v78;
      v54 = *(v77 + 8);
      v78 = v77 + 8;
      v73 = v54;
      v54(v53, v44);
      v66 = v49;
      v55 = v69;
      v67(v69, v79, v44);
      v56 = v55;
      v57 = v66;
      sub_100079790();
      sub_100079500();
      sub_100079FC0();
      sub_100079FC0();
      v57(v47, v48);
      v57(v46, v48);
      if (v82 == v81)
      {
        sub_1000394D8(v55);

        v58 = v76;
        v59 = v73;
        v73(v56, v76);
        v60 = sub_1000798B0();
        (*(*(v60 - 8) + 8))(v80, v60);
        v59(v79, v58);
      }

      v61 = v76;
      v73(v55, v76);
      (*(v77 + 32))(v70, v79, v61);
      sub_100079790();
      sub_1000794F0();
      sub_100079FC0();
      sub_100079FC0();
      v57(v47, v48);
      v57(v46, v48);
      v30 = v80;
      if (v82 == v81)
      {
        v62 = v70;
        sub_100039520(v70);

        v73(v62, v76);
        v63 = sub_1000798B0();
        (*(*(v63 - 8) + 8))(v30, v63);
      }

      v73(v70, v76);
    }

    swift_errorRetain();
    sub_1000398DC(v41);
    v64 = sub_1000798B0();
    (*(*(v64 - 8) + 8))(v30, v64);
  }

  return result;
}

uint64_t Daemon.init(mode:clientBundleID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 776) = a4;
  *(v4 + 768) = a3;
  *(v4 + 140) = a2;
  *(v4 + 760) = a1;
  v5 = sub_1000798B0();
  *(v4 + 784) = v5;
  *(v4 + 792) = *(v5 - 8);
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_100041344, 0, 0);
}

uint64_t sub_100041344()
{
  v65 = v0;
  if (qword_1000A4040 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  *(v0 + 856) = sub_1000070F4(v1, qword_1000A6D10);
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting CloudTelemetryService", v4, 2u);
  }

  v5 = *(v0 + 848);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);

  v8 = objc_opt_self();
  *(v0 + 864) = v8;
  v9 = [v8 defaultManager];
  sub_10001EDCC();
  sub_100079860(1);
  v10 = *(v6 + 8);
  *(v0 + 872) = v10;
  *(v0 + 880) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  v11 = sub_100079DF0();

  LOBYTE(v5) = [v9 fileExistsAtPath:v11];

  if (v5)
  {
    v12 = *(v0 + 840);
    *(v0 + 80) = *(v0 + 140);
    *(v0 + 88) = *(v0 + 768);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_10003FAE8(v12);
    type metadata accessor for TransparencyLog(0);
    v33 = swift_task_alloc();
    *(v0 + 888) = v33;
    *v33 = v0;
    v33[1] = sub_100041FBC;
    v34 = *(v0 + 840);

    return sub_100002FF8(v34);
  }

  v13 = sub_100079B80();
  v14 = sub_10007A180();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 848);
    v61 = *(v0 + 784);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v63 = v17;
    *v16 = 136380675;
    sub_10001EDCC();
    v18 = sub_100079860(1);
    v20 = v19;
    v10(v15, v61);
    v21 = sub_100006B00(v18, v20, &v63);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "reporting disabled due to missing home directory: %{private}s", v16, 0xCu);
    sub_1000070A8(v17);
  }

  v22 = sub_100079B80();
  v23 = sub_10007A180();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "reporting disabled due to startup failure.", v24, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 142) = 257;
  *(v0 + 992) = 0;
  *(v0 + 984) = 0;
  *(v0 + 976) = 0;
  if ((*(v0 + 140) | 2) == 2)
  {
    v25 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v26 = swift_allocObject();
    v26[3] = 0;
    v26[4] = 0;
    v26[2] = 0;
    swift_beginAccess();
    v27 = *v25;
    v28 = v25[1];
    *v25 = &unk_10007E3B8;
    v25[1] = v26;
    sub_100029F90(v27, v28);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v29 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v29 >> 62)
    {
      v30 = sub_10007A4A0();
      *(v0 + 1016) = v30;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v30;
      if (v30)
      {
LABEL_16:
        if (v30 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v31 = *(v0 + 1008);
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = sub_10007A3D0();
        }

        else
        {
          v32 = *(v31 + 32);
        }

        *(v0 + 1032) = v32;
        v36 = *v32 + 160;
        *(v0 + 1040) = *v36;
        *(v0 + 1048) = v36 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v32, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v63, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = qword_1000A6D30;
  v38 = sub_100079DF0();
  v39 = [v37 valueForKey:v38];

  if (v39)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v63, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v63, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v63, 0xD000000000000014, 0x8000000100083D40);
  }

  v40 = sub_100079B80();
  v41 = sub_10007A190();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v62 = v43;
    *v42 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v63 = 0x6769666E6F632820;
      v64 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v44 = sub_100079FB0();
      v46 = v45;

      v67._countAndFlagsBits = v44;
      v67._object = v46;
      sub_100079F00(v67);

      v68._countAndFlagsBits = 41;
      v68._object = 0xE100000000000000;
      sub_100079F00(v68);

      v47 = v63;
      v48 = v64;
    }

    else
    {

      v47 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = sub_100006B00(v47, v48, &v62);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "started CloudTelemetryService%s", v42, 0xCu);
    sub_1000070A8(v43);
  }

  else
  {
  }

  v50 = *(v0 + 1000);
  v51 = *(v0 + 992);
  v52 = *(v0 + 143);
  v53 = *(v0 + 140);
  v54 = *(v0 + 760);
  *(v0 + 464) = v53;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v55 = *(v0 + 768);
  v56 = *(v0 + 976);
  *(v0 + 472) = v55;
  *(v0 + 488) = v56;
  *(v0 + 504) = v50;
  *(v0 + 512) = v51;
  *(v0 + 520) = v52;
  *(v0 + 400) = v53;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v55;
  *(v0 + 424) = v56;
  *(v0 + 440) = v50;
  *(v0 + 448) = v51;
  *(v0 + 456) = v52;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v58 = *(v0 + 480);
  v57 = *(v0 + 496);
  v59 = *(v0 + 464);
  *(v54 + 41) = *(v0 + 505);
  v54[1] = v58;
  v54[2] = v57;
  *v54 = v59;

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_100041FBC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100043E4C;
  }

  else
  {
    *(v4 + 896) = a1;
    v5 = sub_100042110;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100042110()
{
  *(v0 + 904) = *(v0 + 896);
  v9 = *(v0 + 872);
  v1 = *(v0 + 848);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = v3;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;

  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v9(v1, v2);
  v6 = swift_task_alloc();
  *(v0 + 920) = v6;
  *v6 = v0;
  v6[1] = sub_10004228C;
  v7 = *(v0 + 832);

  return DiskCache.__allocating_init(rootCacheURL:)(v7);
}

uint64_t sub_10004228C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v5 = sub_100044AB0;
  }

  else
  {
    v4[117] = a1;
    v4[92] = 0;
    v4[88] = 0;
    v5 = sub_1000423E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000423E4()
{
  v52 = v0;
  v1 = *(v0 + 936);
  *(v0 + 944) = v1;
  v2 = *(v0 + 904);

  sub_1000096C4(v0 + 736, &qword_10009F0D8, &qword_10007E3C0);
  sub_1000096C4(v0 + 704, &qword_10009F0E0, &qword_10007E3C8);
  v3 = *(v0 + 904);
  if (v2 && v1)
  {
    v4 = *(v0 + 872);
    v5 = *(v0 + 848);
    v6 = *(v0 + 784);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);
    v9 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v9;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v8;
    *(v0 + 352) = v7;
    *(v0 + 360) = v1;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v3;
    *(v0 + 392) = 0;

    sub_10001EDCC();
    sub_10003F7F0();
    sub_100079820();

    v4(v5, v6);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    *v10 = v0;
    v10[1] = sub_100042D7C;
    v11 = *(v0 + 824);

    return sub_100013EF0(0, v1, v11);
  }

  v13 = sub_100079B80();
  v14 = sub_10007A180();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "reporting disabled due to startup failure.", v15, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v1;
  if ((*(v0 + 140) | 2) == 2)
  {
    v16 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v17 = swift_allocObject();
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = v1;
    swift_beginAccess();
    v18 = *v16;
    v19 = v16[1];
    *v16 = &unk_10007E3B8;
    v16[1] = v17;

    sub_100029F90(v18, v19);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v20 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v20 >> 62)
    {
      v21 = sub_10007A4A0();
      *(v0 + 1016) = v21;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v21;
      if (v21)
      {
LABEL_13:
        if (v21 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v22 = *(v0 + 1008);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = sub_10007A3D0();
        }

        else
        {
          v23 = *(v22 + 32);
        }

        *(v0 + 1032) = v23;
        v24 = *v23 + 160;
        *(v0 + 1040) = *v24;
        *(v0 + 1048) = v24 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v23, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v49, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_1000A6D30;
  v26 = sub_100079DF0();
  v27 = [v25 valueForKey:v26];

  if (v27)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v49, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v49, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v49, 0xD000000000000014, 0x8000000100083D40);
  }

  v28 = sub_100079B80();
  v29 = sub_10007A190();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51 = v31;
    *v30 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v49 = 0x6769666E6F632820;
      v50 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v32 = sub_100079FB0();
      v34 = v33;

      v54._countAndFlagsBits = v32;
      v54._object = v34;
      sub_100079F00(v54);

      v55._countAndFlagsBits = 41;
      v55._object = 0xE100000000000000;
      sub_100079F00(v55);

      v35 = v49;
      v36 = v50;
    }

    else
    {

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = sub_100006B00(v35, v36, &v51);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "started CloudTelemetryService%s", v30, 0xCu);
    sub_1000070A8(v31);
  }

  else
  {
  }

  v38 = *(v0 + 1000);
  v39 = *(v0 + 992);
  v40 = *(v0 + 143);
  v41 = *(v0 + 140);
  v42 = *(v0 + 760);
  *(v0 + 464) = v41;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v43 = *(v0 + 768);
  v44 = *(v0 + 976);
  *(v0 + 472) = v43;
  *(v0 + 488) = v44;
  *(v0 + 504) = v38;
  *(v0 + 512) = v39;
  *(v0 + 520) = v40;
  *(v0 + 400) = v41;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v43;
  *(v0 + 424) = v44;
  *(v0 + 440) = v38;
  *(v0 + 448) = v39;
  *(v0 + 456) = v40;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v46 = *(v0 + 480);
  v45 = *(v0 + 496);
  v47 = *(v0 + 464);
  *(v42 + 41) = *(v0 + 505);
  v42[1] = v46;
  v42[2] = v45;
  *v42 = v47;

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100042D7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {
    v5 = sub_10004580C;
  }

  else
  {
    *(v4 + 968) = a1;
    *(v4 + 141) = *(v4 + 392);
    v5 = sub_100042ED4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100042ED4(uint64_t (*a1)(), void *a2, uint64_t a3)
{
  v48 = v3;
  v4 = *(v3 + 141);
  v5 = *(v3 + 968);
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v7 = *(v3 + 944);
    v8 = *(v3 + 904);
    type metadata accessor for SubmissionCoordinator();

    v6 = sub_10001B388(v5, v7, v8);
  }

  v9 = *(v3 + 904);
  v10 = *(v3 + 944);
  *(v3 + 1000) = v6;
  *(v3 + 992) = v9;
  *(v3 + 143) = 0;
  *(v3 + 142) = v4;
  *(v3 + 984) = v5;
  *(v3 + 976) = v10;
  if ((*(v3 + 140) | 2) == 2)
  {
    v11 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v5;
    v12[4] = v6;
    swift_beginAccess();
    v13 = *v11;
    v14 = v11[1];
    *v11 = &unk_10007E3B8;
    v11[1] = v12;

    sub_100029F90(v13, v14);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A6D48;
    *(v3 + 1008) = qword_1000A6D48;
    if (v15 >> 62)
    {
      v16 = sub_10007A4A0();
      *(v3 + 1016) = v16;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v3 + 1016) = v16;
      if (v16)
      {
LABEL_10:
        if (v16 < 1)
        {
          __break(1u);
        }

        *(v3 + 1024) = 0;
        v17 = *(v3 + 1008);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_10007A3D0();
        }

        else
        {
          v18 = *(v17 + 32);
        }

        *(v3 + 1032) = v18;
        v19 = *v18 + 160;
        *(v3 + 1040) = *v19;
        *(v3 + 1048) = v19 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        a1 = sub_1000436F0;
        a2 = v18;
        a3 = 0;

        return _swift_task_switch(a1, a2, a3);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v45, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_1000A6D30;
  v21 = sub_100079DF0();
  v22 = [v20 valueForKey:v21];

  if (v22)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v3 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v45, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v3 + 528) = 0u;
    *(v3 + 544) = 0u;
    sub_1000096C4(v3 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v45, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v45, 0xD000000000000014, 0x8000000100083D40);
  }

  v23 = sub_100079B80();
  v24 = sub_10007A190();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v47 = v26;
    *v25 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v45 = 0x6769666E6F632820;
      v46 = 0xEA0000000000203ALL;
      *(v3 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v27 = sub_100079FB0();
      v29 = v28;

      v50._countAndFlagsBits = v27;
      v50._object = v29;
      sub_100079F00(v50);

      v51._countAndFlagsBits = 41;
      v51._object = 0xE100000000000000;
      sub_100079F00(v51);

      v30 = v45;
      v31 = v46;
    }

    else
    {

      v30 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = sub_100006B00(v30, v31, &v47);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "started CloudTelemetryService%s", v25, 0xCu);
    sub_1000070A8(v26);
  }

  else
  {
  }

  v33 = *(v3 + 1000);
  v34 = *(v3 + 992);
  v35 = *(v3 + 143);
  v36 = *(v3 + 140);
  v37 = *(v3 + 760);
  *(v3 + 464) = v36;
  *(v3 + 465) = *(v3 + 73);
  *(v3 + 468) = *(v3 + 76);
  v38 = *(v3 + 768);
  v39 = *(v3 + 976);
  *(v3 + 472) = v38;
  *(v3 + 488) = v39;
  *(v3 + 504) = v33;
  *(v3 + 512) = v34;
  *(v3 + 520) = v35;
  *(v3 + 400) = v36;
  *(v3 + 401) = *(v3 + 73);
  *(v3 + 404) = *(v3 + 76);
  *(v3 + 408) = v38;
  *(v3 + 424) = v39;
  *(v3 + 440) = v33;
  *(v3 + 448) = v34;
  *(v3 + 456) = v35;
  sub_100029908(v3 + 464, v3 + 16);
  sub_10004646C(v3 + 400);
  v41 = *(v3 + 480);
  v40 = *(v3 + 496);
  v42 = *(v3 + 464);
  *(v37 + 41) = *(v3 + 505);
  v37[1] = v41;
  v37[2] = v40;
  *v37 = v42;

  v43 = *(v3 + 8);

  return v43();
}

uint64_t sub_1000436F0()
{
  (*(v0 + 1040))(*(v0 + 142));

  return _swift_task_switch(sub_100043790, 0, 0);
}

uint64_t sub_100043790()
{
  v35 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);

  if (v1 + 1 == v2)
  {
    if (qword_1000A4058 != -1)
    {
      swift_once();
    }

    if (byte_1000A6D38 == 1)
    {
      sub_100018CE8(&v32, 0xD000000000000011, 0x8000000100083D80);
    }

    if (qword_1000A4050 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_1000A6D30;
    v4 = sub_100079DF0();
    v5 = [v3 valueForKey:v4];

    if (v5)
    {
      sub_10007A2D0();
      swift_unknownObjectRelease();
      sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
      sub_100018CE8(&v32, 0xD000000000000013, 0x8000000100083D60);
    }

    else
    {
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    }

    if (qword_1000A4060 != -1)
    {
      swift_once();
    }

    if (byte_1000A6D39 == 1)
    {
      sub_100018CE8(&v32, 0x6976654474736574, 0xEA00000000006563);
    }

    if (qword_1000A4068 != -1)
    {
      swift_once();
    }

    if (byte_1000A6D3A == 1)
    {
      sub_100018CE8(&v32, 0xD000000000000014, 0x8000000100083D40);
    }

    v9 = sub_100079B80();
    v10 = sub_10007A190();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34 = v12;
      *v11 = 136315138;
      if (_swiftEmptySetSingleton[2])
      {
        v32 = 0x6769666E6F632820;
        v33 = 0xEA0000000000203ALL;
        *(v0 + 688) = _swiftEmptySetSingleton;

        sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
        sub_10004649C();
        sub_100025EBC();
        v13 = sub_100079FB0();
        v15 = v14;

        v37._countAndFlagsBits = v13;
        v37._object = v15;
        sub_100079F00(v37);

        v38._countAndFlagsBits = 41;
        v38._object = 0xE100000000000000;
        sub_100079F00(v38);

        v16 = v32;
        v17 = v33;
      }

      else
      {

        v16 = 0;
        v17 = 0xE000000000000000;
      }

      v19 = sub_100006B00(v16, v17, &v34);

      *(v11 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "started CloudTelemetryService%s", v11, 0xCu);
      sub_1000070A8(v12);
    }

    else
    {
    }

    v20 = *(v0 + 1000);
    v21 = *(v0 + 992);
    v22 = *(v0 + 143);
    v23 = *(v0 + 140);
    v24 = *(v0 + 760);
    *(v0 + 464) = v23;
    *(v0 + 465) = *(v0 + 73);
    *(v0 + 468) = *(v0 + 76);
    v25 = *(v0 + 768);
    v26 = *(v0 + 976);
    *(v0 + 472) = v25;
    *(v0 + 488) = v26;
    *(v0 + 504) = v20;
    *(v0 + 512) = v21;
    *(v0 + 520) = v22;
    *(v0 + 400) = v23;
    *(v0 + 401) = *(v0 + 73);
    *(v0 + 404) = *(v0 + 76);
    *(v0 + 408) = v25;
    *(v0 + 424) = v26;
    *(v0 + 440) = v20;
    *(v0 + 448) = v21;
    *(v0 + 456) = v22;
    sub_100029908(v0 + 464, v0 + 16);
    sub_10004646C(v0 + 400);
    v28 = *(v0 + 480);
    v27 = *(v0 + 496);
    v29 = *(v0 + 464);
    *(v24 + 41) = *(v0 + 505);
    v24[1] = v28;
    v24[2] = v27;
    *v24 = v29;

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v6 = *(v0 + 1024) + 1;
    *(v0 + 1024) = v6;
    v7 = *(v0 + 1008);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_10007A3D0();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *(v0 + 1032) = v8;
    v18 = *v8 + 160;
    *(v0 + 1040) = *v18;
    *(v0 + 1048) = v18 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

    return _swift_task_switch(sub_1000436F0, v8, 0);
  }
}

uint64_t sub_100043E4C()
{
  *(v0 + 904) = 0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 848);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v6;
  *(v0 + 152) = v5;
  *(v0 + 160) = v4;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v1(v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 920) = v7;
  *v7 = v0;
  v7[1] = sub_10004228C;
  v8 = *(v0 + 832);

  return DiskCache.__allocating_init(rootCacheURL:)(v8);
}

uint64_t sub_100043FBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {
    v5 = sub_100044FC4;
  }

  else
  {
    *(v4 + 1072) = a1;
    v5 = sub_10004410C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004410C()
{
  v52 = v0;

  v1 = *(v0 + 1072);
  *(v0 + 944) = v1;
  v2 = *(v0 + 904);

  sub_1000096C4(v0 + 680, &qword_10009F0D8, &qword_10007E3C0);
  sub_1000096C4(v0 + 752, &qword_10009F0E0, &qword_10007E3C8);
  v3 = *(v0 + 904);
  if (v2 && v1)
  {
    v4 = *(v0 + 872);
    v5 = *(v0 + 848);
    v6 = *(v0 + 784);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);
    v9 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v9;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v8;
    *(v0 + 352) = v7;
    *(v0 + 360) = v1;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v3;
    *(v0 + 392) = 0;

    sub_10001EDCC();
    sub_10003F7F0();
    sub_100079820();

    v4(v5, v6);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    *v10 = v0;
    v10[1] = sub_100042D7C;
    v11 = *(v0 + 824);

    return sub_100013EF0(0, v1, v11);
  }

  v13 = sub_100079B80();
  v14 = sub_10007A180();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "reporting disabled due to startup failure.", v15, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v1;
  if ((*(v0 + 140) | 2) == 2)
  {
    v16 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v17 = swift_allocObject();
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = v1;
    swift_beginAccess();
    v18 = *v16;
    v19 = v16[1];
    *v16 = &unk_10007E3B8;
    v16[1] = v17;

    sub_100029F90(v18, v19);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v20 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v20 >> 62)
    {
      v21 = sub_10007A4A0();
      *(v0 + 1016) = v21;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v21;
      if (v21)
      {
LABEL_13:
        if (v21 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v22 = *(v0 + 1008);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = sub_10007A3D0();
        }

        else
        {
          v23 = *(v22 + 32);
        }

        *(v0 + 1032) = v23;
        v24 = *v23 + 160;
        *(v0 + 1040) = *v24;
        *(v0 + 1048) = v24 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v23, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v49, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_1000A6D30;
  v26 = sub_100079DF0();
  v27 = [v25 valueForKey:v26];

  if (v27)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v49, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v49, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v49, 0xD000000000000014, 0x8000000100083D40);
  }

  v28 = sub_100079B80();
  v29 = sub_10007A190();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51 = v31;
    *v30 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v49 = 0x6769666E6F632820;
      v50 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v32 = sub_100079FB0();
      v34 = v33;

      v54._countAndFlagsBits = v32;
      v54._object = v34;
      sub_100079F00(v54);

      v55._countAndFlagsBits = 41;
      v55._object = 0xE100000000000000;
      sub_100079F00(v55);

      v35 = v49;
      v36 = v50;
    }

    else
    {

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = sub_100006B00(v35, v36, &v51);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "started CloudTelemetryService%s", v30, 0xCu);
    sub_1000070A8(v31);
  }

  else
  {
  }

  v38 = *(v0 + 1000);
  v39 = *(v0 + 992);
  v40 = *(v0 + 143);
  v41 = *(v0 + 140);
  v42 = *(v0 + 760);
  *(v0 + 464) = v41;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v43 = *(v0 + 768);
  v44 = *(v0 + 976);
  *(v0 + 472) = v43;
  *(v0 + 488) = v44;
  *(v0 + 504) = v38;
  *(v0 + 512) = v39;
  *(v0 + 520) = v40;
  *(v0 + 400) = v41;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v43;
  *(v0 + 424) = v44;
  *(v0 + 440) = v38;
  *(v0 + 448) = v39;
  *(v0 + 456) = v40;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v46 = *(v0 + 480);
  v45 = *(v0 + 496);
  v47 = *(v0 + 464);
  *(v42 + 41) = *(v0 + 505);
  v42[1] = v46;
  v42[2] = v45;
  *v42 = v47;

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100044AB0()
{
  v37 = v0;
  *(v0 + 712) = *(v0 + 928);
  swift_errorRetain();
  sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
  if (!swift_dynamicCast() || (*(v0 + 138) = *(v0 + 137), *(v0 + 139) = 1, sub_10002408C(), (sub_100079DE0() & 1) == 0))
  {
    swift_errorRetain();
    v1 = sub_100079B80();
    v2 = sub_10007A170();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v36 = v4;
      *v3 = 136446210;
      swift_getErrorValue();
      v5 = sub_10007A6D0();
      v7 = sub_100006B00(v5, v6, &v36);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "failed to open database file: %{public}s", v3, 0xCu);
      sub_1000070A8(v4);
    }
  }

  v8 = *(v0 + 872);
  v9 = *(v0 + 848);
  v10 = *(v0 + 816);
  v11 = *(v0 + 808);
  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 768);
  v15 = *(v0 + 140);
  v35 = [*(v0 + 864) defaultManager];
  *(v0 + 208) = v15;
  *(v0 + 209) = *(v0 + 73);
  *(v0 + 212) = *(v0 + 76);
  *(v0 + 216) = v14;
  *(v0 + 224) = v13;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v8(v11, v12);
  sub_100079840();
  v8(v10, v12);
  sub_100079800(v16);
  v18 = v17;
  v8(v9, v12);
  *(v0 + 720) = 0;
  LODWORD(v9) = [v35 removeItemAtURL:v18 error:v0 + 720];

  v19 = *(v0 + 720);
  if (v9)
  {
    v20 = v19;
  }

  else
  {
    v21 = v19;
    sub_1000797A0();

    swift_willThrow();
    swift_errorRetain();
    v22 = sub_100079B80();
    v23 = sub_10007A170();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136446210;
      swift_getErrorValue();
      v26 = sub_10007A6D0();
      v28 = sub_100006B00(v26, v27, &v36);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "failed to clear cache directory with error: %{public}s", v24, 0xCu);
      sub_1000070A8(v25);
    }

    else
    {
    }
  }

  v29 = *(v0 + 872);
  v30 = *(v0 + 848);
  v31 = *(v0 + 784);
  *(v0 + 272) = *(v0 + 140);
  *(v0 + 273) = *(v0 + 73);
  *(v0 + 276) = *(v0 + 76);
  *(v0 + 280) = *(v0 + 768);
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 680) = 0;
  *(v0 + 752) = 0;
  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v29(v30, v31);
  v32 = swift_task_alloc();
  *(v0 + 1056) = v32;
  *v32 = v0;
  v32[1] = sub_100043FBC;
  v33 = *(v0 + 800);

  return DiskCache.__allocating_init(rootCacheURL:)(v33);
}

uint64_t sub_100044FC4()
{
  v42 = v0;

  sub_1000096C4(v0 + 680, &qword_10009F0D8, &qword_10007E3C0);
  sub_1000096C4(v0 + 752, &qword_10009F0E0, &qword_10007E3C8);
  v1 = *(v0 + 904);
  v2 = sub_100079B80();
  v3 = sub_10007A180();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "reporting disabled due to startup failure.", v4, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v1;
  *(v0 + 142) = 257;
  *(v0 + 976) = 0u;
  if ((*(v0 + 140) | 2) == 2)
  {
    v5 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v6 = swift_allocObject();
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = 0;
    swift_beginAccess();
    v7 = *v5;
    v8 = v5[1];
    *v5 = &unk_10007E3B8;
    v5[1] = v6;
    sub_100029F90(v7, v8);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v9 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v9 >> 62)
    {
      v10 = sub_10007A4A0();
      *(v0 + 1016) = v10;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v10;
      if (v10)
      {
LABEL_8:
        if (v10 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v11 = *(v0 + 1008);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = sub_10007A3D0();
        }

        else
        {
          v12 = *(v11 + 32);
        }

        *(v0 + 1032) = v12;
        v13 = *v12 + 160;
        *(v0 + 1040) = *v13;
        *(v0 + 1048) = v13 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v12, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v39, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_1000A6D30;
  v15 = sub_100079DF0();
  v16 = [v14 valueForKey:v15];

  if (v16)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v39, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v39, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v39, 0xD000000000000014, 0x8000000100083D40);
  }

  v17 = sub_100079B80();
  v18 = sub_10007A190();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v39 = 0x6769666E6F632820;
      v40 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v21 = sub_100079FB0();
      v23 = v22;

      v44._countAndFlagsBits = v21;
      v44._object = v23;
      sub_100079F00(v44);

      v45._countAndFlagsBits = 41;
      v45._object = 0xE100000000000000;
      sub_100079F00(v45);

      v24 = v39;
      v25 = v40;
    }

    else
    {

      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_100006B00(v24, v25, &v41);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "started CloudTelemetryService%s", v19, 0xCu);
    sub_1000070A8(v20);
  }

  else
  {
  }

  v27 = *(v0 + 1000);
  v28 = *(v0 + 992);
  v29 = *(v0 + 143);
  v30 = *(v0 + 140);
  v31 = *(v0 + 760);
  *(v0 + 464) = v30;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v32 = *(v0 + 768);
  v33 = *(v0 + 976);
  *(v0 + 472) = v32;
  *(v0 + 488) = v33;
  *(v0 + 504) = v27;
  *(v0 + 512) = v28;
  *(v0 + 520) = v29;
  *(v0 + 400) = v30;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v32;
  *(v0 + 424) = v33;
  *(v0 + 440) = v27;
  *(v0 + 448) = v28;
  *(v0 + 456) = v29;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v35 = *(v0 + 480);
  v34 = *(v0 + 496);
  v36 = *(v0 + 464);
  *(v31 + 41) = *(v0 + 505);
  v31[1] = v35;
  v31[2] = v34;
  *v31 = v36;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10004580C()
{
  v47 = v0;
  swift_errorRetain();
  v1 = sub_100079B80();
  v2 = sub_10007A180();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v45 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = sub_10007A6D0();
    v7 = sub_100006B00(v5, v6, &v45);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "reporting disabled due to failure setting up session coordinator. %{public}s", v3, 0xCu);
    sub_1000070A8(v4);
  }

  else
  {
  }

  v8 = *(v0 + 904);
  v9 = *(v0 + 944);
  *(v0 + 1000) = 0;
  *(v0 + 992) = v8;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v9;
  if ((*(v0 + 140) | 2) == 2)
  {
    v10 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v11 = swift_allocObject();
    v11[3] = 0;
    v11[4] = 0;
    v11[2] = v9;
    swift_beginAccess();
    v12 = *v10;
    v13 = v10[1];
    *v10 = &unk_10007E3B8;
    v10[1] = v11;

    sub_100029F90(v12, v13);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v14 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v14 >> 62)
    {
      v15 = sub_10007A4A0();
      *(v0 + 1016) = v15;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v15;
      if (v15)
      {
LABEL_9:
        if (v15 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v16 = *(v0 + 1008);
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = sub_10007A3D0();
        }

        else
        {
          v17 = *(v16 + 32);
        }

        *(v0 + 1032) = v17;
        v18 = *v17 + 160;
        *(v0 + 1040) = *v18;
        *(v0 + 1048) = v18 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v17, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v45, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1000A6D30;
  v20 = sub_100079DF0();
  v21 = [v19 valueForKey:v20];

  if (v21)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v45, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v45, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v45, 0xD000000000000014, 0x8000000100083D40);
  }

  v22 = sub_100079B80();
  v23 = sub_10007A190();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v45 = 0x6769666E6F632820;
      v46 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v26 = sub_100079FB0();
      v28 = v27;

      v49._countAndFlagsBits = v26;
      v49._object = v28;
      sub_100079F00(v49);

      v50._countAndFlagsBits = 41;
      v50._object = 0xE100000000000000;
      sub_100079F00(v50);

      v29 = v45;
      v30 = v46;
    }

    else
    {

      v29 = 0;
      v30 = 0xE000000000000000;
    }

    v31 = sub_100006B00(v29, v30, &v44);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "started CloudTelemetryService%s", v24, 0xCu);
    sub_1000070A8(v25);
  }

  else
  {
  }

  v32 = *(v0 + 1000);
  v33 = *(v0 + 992);
  v34 = *(v0 + 143);
  v35 = *(v0 + 140);
  v36 = *(v0 + 760);
  *(v0 + 464) = v35;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v37 = *(v0 + 768);
  v38 = *(v0 + 976);
  *(v0 + 472) = v37;
  *(v0 + 488) = v38;
  *(v0 + 504) = v32;
  *(v0 + 512) = v33;
  *(v0 + 520) = v34;
  *(v0 + 400) = v35;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v37;
  *(v0 + 424) = v38;
  *(v0 + 440) = v32;
  *(v0 + 448) = v33;
  *(v0 + 456) = v34;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v40 = *(v0 + 480);
  v39 = *(v0 + 496);
  v41 = *(v0 + 464);
  *(v36 + 41) = *(v0 + 505);
  v36[1] = v40;
  v36[2] = v39;
  *v36 = v41;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1000460C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000460EC, 0, 0);
}

uint64_t sub_1000460EC()
{
  v1 = v0[2];
  if (type metadata accessor for SubmitEventsActivity() == v1)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];

    v6 = sub_10001B388(v5, v4, v3);
    v7 = &qword_10009F0F8;
    v8 = type metadata accessor for SubmitEventsActivity;
    v9 = &unk_10007CA58;
  }

  else if (type metadata accessor for CacheCleanupActivity() == v1)
  {

    v6 = sub_1000514C8(v10);
    v7 = &qword_10009F108;
    v8 = type metadata accessor for CacheCleanupActivity;
    v9 = &unk_10007ED88;
  }

  else
  {
    if (type metadata accessor for PostInstallActivity() != v1)
    {
      return sub_10007A490();
    }

    v6 = sub_10000A0C4();
    v7 = &qword_10009F100;
    v8 = type metadata accessor for PostInstallActivity;
    v9 = &unk_10007CD68;
  }

  v11 = sub_100046424(v7, v8, v9);
  v12 = v0[1];

  return v12(v6, v11);
}

uint64_t sub_1000462CC()
{
  sub_10000712C(&qword_10009F0F0, &qword_10007E498);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10007E370;
  type metadata accessor for XPCActivity();
  v1 = type metadata accessor for SubmitEventsActivity();
  v2 = sub_100046424(&qword_10009F0F8, type metadata accessor for SubmitEventsActivity, &unk_10007CA58);
  *(v0 + 32) = XPCActivity.__allocating_init(handlerType:)(v1, v2);
  v3 = type metadata accessor for PostInstallActivity();
  v4 = sub_100046424(&qword_10009F100, type metadata accessor for PostInstallActivity, &unk_10007CD68);
  *(v0 + 40) = XPCActivity.__allocating_init(handlerType:)(v3, v4);
  v5 = type metadata accessor for CacheCleanupActivity();
  v6 = sub_100046424(&qword_10009F108, type metadata accessor for CacheCleanupActivity, &unk_10007ED88);
  result = XPCActivity.__allocating_init(handlerType:)(v5, v6);
  *(v0 + 48) = result;
  qword_1000A6D48 = v0;
  return result;
}

uint64_t sub_100046424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004649C()
{
  result = qword_10009F0D0;
  if (!qword_10009F0D0)
  {
    sub_1000072D8(&qword_10009F0C8, &qword_10007E3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F0D0);
  }

  return result;
}

uint64_t sub_100046500()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000465F8;

  return sub_1000460C8(a1, v8, v9, v4, v5, v6);
}

uint64_t sub_1000465F8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_100046700()
{
  result = qword_10009F0E8;
  if (!qword_10009F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F0E8);
  }

  return result;
}

__n128 sub_100046764(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100046780(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000467DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100046850()
{
  v0 = sub_10003F368();
  swift_beginAccess();
  v1 = *v0;
  v2 = sub_100079DF0();
  v3 = [v1 integerForKey:v2];

  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_21:
      v17 = sub_10003F2A0();
      swift_beginAccess();
      if (*v17)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    if (v3 == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

LABEL_16:
    if (qword_1000A4180 != -1)
    {
      swift_once();
    }

    v13 = sub_100079BA0();
    sub_1000070F4(v13, qword_1000A6D50);
    v14 = sub_100079B80();
    v15 = sub_10007A170();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v14, v15, "invalid environmentType override from defaults: %{public}ld", v16, 0xCu);
    }

    goto LABEL_21;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    v4 = 3;
    goto LABEL_11;
  }

  if (v3 != 3)
  {
    goto LABEL_16;
  }

  v4 = 2;
LABEL_11:
  if (qword_1000A4180 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A6D50);
  v6 = sub_100079B80();
  v7 = sub_10007A150();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446466;
    v10 = sub_100079E80();
    v12 = sub_100006B00(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "overriding environmentType to %{public}s (%{public}ld) from defaults", v8, 0x16u);
    sub_1000070A8(v9);
  }

  return v4;
}

void *sub_100046B54(void (*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5++;
    v17 = v8;
    a1(&v15, &v17, a2);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100049648(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_100049648((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      *(v7 + 32) = v10;
      v7[5] = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

Swift::Int sub_100046C84()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A740(v1 + 1);
  return sub_10007A760();
}

Swift::Int sub_100046CFC(uint64_t a1)
{
  v2 = *v1;
  sub_10007A730();
  sub_10007A740(v2 + 1);
  return sub_10007A760();
}

uint64_t sub_100046D40@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BF50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100046D8C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D50);
  sub_1000070F4(v0, qword_1000A6D50);
  return sub_100079B90();
}

uint64_t sub_100046E04()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v3 = 0x6E695F656C707061;
    if (v1 != 1)
    {
      v3 = 1684366707;
    }

    if (*v0)
    {
      return v3;
    }

    else
    {
      return 0x6D706F6C65766564;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 6)
    {
      return 0x765F646572616873;
    }

    else
    {
      return 0x5F68736572666572;
    }
  }

  else if (v1 == 3)
  {
    return 0x657361656C6572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100046F04@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<X0>)
{
  v4 = sub_10004BFC8(a3, a1);

  *a2 = v4;
  return result;
}

uint64_t sub_100046F50(uint64_t a1)
{
  v2 = sub_10004D9CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046F8C(uint64_t a1)
{
  v2 = sub_10004D9CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100046FC8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10004C24C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_100047010()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_10004706C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100079780();
  swift_allocObject();
  sub_100079770();
  sub_10004BF74();
  sub_100079760();
  if (v4)
  {

    return sub_1000071DC(a1, a2);
  }

  else
  {
    v10 = v21;
    if (*(v22 + 16) && (v11 = sub_10004A578(a3), (v12 & 1) != 0))
    {
      v13 = *(*(v22 + 56) + 8 * v11);
    }

    else
    {
      v13 = sub_10004C8C8(_swiftEmptyArrayStorage);
    }

    if (v20)
    {
      v14 = 86400;
    }

    else
    {
      v14 = v19;
    }

    v16 = v14;
    if (v21)
    {

      v15 = v18;

      sub_1000071DC(a1, a2);
    }

    else
    {
      v15 = v18;

      v10 = sub_10004C9F4(_swiftEmptyArrayStorage);

      sub_1000071DC(a1, a2);
    }

    *a4 = v13;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    *(a4 + 24) = v15;
    *(a4 + 32) = v10;
  }

  return result;
}

uint64_t sub_10004723C(void *a1)
{
  v71 = a1;
  v2 = 0;
  v3 = sub_100079AC0();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100079AE0();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000712C(&unk_10009ED68, &qword_10007E4D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v59 - v10;
  v12 = *v1;
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v66 = 0;
  v67 = _swiftEmptyArrayStorage;
  if (!v15)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = *(v12 + 56) + ((v2 << 11) | (32 * v17));
      if (!*(v18 + 24))
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v20 = *(v18 + 8);
    v70 = *(v18 + 16);
    v21 = *v18;
    v62 = v20;
    v63 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_100049964(0, *(v67 + 2) + 1, 1, v67);
    }

    v23 = *(v67 + 2);
    v22 = *(v67 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v60 = *(v67 + 2);
      v61 = v23 + 1;
      v28 = sub_100049964((v22 > 1), v23 + 1, 1, v67);
      v23 = v60;
      v24 = v61;
      v67 = v28;
    }

    v25 = v67;
    *(v67 + 2) = v24;
    v26 = &v25[24 * v23];
    v27 = v62;
    *(v26 + 4) = v63;
    *(v26 + 5) = v27;
    *(v26 + 6) = v70;
  }

  while (v15);
  while (1)
  {
LABEL_6:
    v19 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v2;
    if (v15)
    {
      v2 = v19;
      goto LABEL_4;
    }
  }

  v29 = *(v67 + 2);
  if (!v29)
  {

    return 6;
  }

  LODWORD(v70) = sub_10003F7D8();
  sub_100079AA0();
  sub_100079AD0();
  (*(v64 + 8))(v8, v65);
  sub_100079AB0();
  (*(v68 + 8))(v5, v69);
  v30 = sub_100079A90();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1000096C4(v11, &unk_10009ED68, &qword_10007E4D0);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v68 = sub_100079A80();
    v69 = v34;
    isUniquelyReferenced_nonNull_native = (*(v31 + 8))(v11, v30);
  }

  v35 = v66;
  v36 = v29 - 1;
  v37 = _swiftEmptyArrayStorage;
  v38 = (v67 + 48);
  while (2)
  {
    v39 = *v38;
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    *(&v59 - 2) = v71;

    sub_100047AB4(sub_10004CC14, v39, &v72);

    v85[10] = v82;
    v85[11] = v83;
    v85[6] = v78;
    v85[7] = v79;
    v85[8] = v80;
    v85[9] = v81;
    v85[2] = v74;
    v85[3] = v75;
    v85[4] = v76;
    v85[5] = v77;
    v85[0] = v72;
    v85[1] = v73;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v98 = v84;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v87 = v73;
    v88 = v74;
    v89 = v75;
    v90 = v76;
    v85[12] = v84;
    v86 = v72;
    isUniquelyReferenced_nonNull_native = sub_10004CCE4(&v86);
    if (isUniquelyReferenced_nonNull_native == 1)
    {
      v40 = v37;
      if (!v36)
      {
        break;
      }

      goto LABEL_55;
    }

    if (v98 == 2)
    {
      v40 = v37;
      if ((v70 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v45 = COERCE_DOUBLE(sub_10004CB10(*(&v98 + 1), v68, v69));
      if (v46)
      {
        if ((v89 & 1) != 0 || (v47 = *(&v88 + 1), *(&v88 + 1) >= 1.0))
        {
LABEL_36:
          sub_1000096C4(v85, &qword_10009F128, &qword_10007E4D8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v40 + 2) + 1, 1, v40);
            v40 = isUniquelyReferenced_nonNull_native;
          }

          v42 = *(v40 + 2);
          v48 = *(v40 + 3);
          v43 = v42 + 1;
          v44 = 1;
          if (v42 >= v48 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870((v48 > 1), v42 + 1, 1, v40);
            v40 = isUniquelyReferenced_nonNull_native;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v47 = v45;
        if (v45 >= 1.0)
        {
          goto LABEL_36;
        }
      }

      v49 = v87;
      if (v87)
      {

        sub_1000096C4(v85, &qword_10009F128, &qword_10007E4D8);
        v66 = type metadata accessor for Session();
        v50 = v71[3];
        v51 = v71[4];
        sub_10000751C(v71, v50);
        v52 = (*(v51 + 48))(v50, v51);
        v53 = COERCE_DOUBLE(sub_100009E0C(v49, v52));
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          v40 = v37;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v37 + 2) + 1, 1, v37);
            v40 = isUniquelyReferenced_nonNull_native;
          }

          v42 = *(v40 + 2);
          v56 = *(v40 + 3);
          v43 = v42 + 1;
          if (v42 >= v56 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870((v56 > 1), v42 + 1, 1, v40);
            v40 = isUniquelyReferenced_nonNull_native;
          }

          v44 = v47 > v53;
          goto LABEL_54;
        }
      }

      else
      {
        sub_1000096C4(v85, &qword_10009F128, &qword_10007E4D8);
      }

      v40 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v37 + 2) + 1, 1, v37);
        v40 = isUniquelyReferenced_nonNull_native;
      }

      v42 = *(v40 + 2);
      v57 = *(v40 + 3);
      v43 = v42 + 1;
      if (v42 >= v57 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870((v57 > 1), v42 + 1, 1, v40);
        v40 = isUniquelyReferenced_nonNull_native;
      }

      v44 = 2;
    }

    else
    {
      v40 = v37;
      if ((v70 | sub_100055B60(v98 & 1)))
      {
        goto LABEL_33;
      }

LABEL_27:
      sub_1000096C4(v85, &qword_10009F128, &qword_10007E4D8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v40 + 2) + 1, 1, v40);
        v40 = isUniquelyReferenced_nonNull_native;
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870((v41 > 1), v42 + 1, 1, v40);
        v40 = isUniquelyReferenced_nonNull_native;
      }

      v44 = 3;
    }

LABEL_54:
    *(v40 + 2) = v43;
    v40[v42 + 32] = v44;
    if (v36)
    {
LABEL_55:
      v37 = v40;
      --v36;
      v38 += 3;
      continue;
    }

    break;
  }

  *&v72 = v40;

  sub_10004AFA8(&v72);
  if (v35)
  {
LABEL_63:

    __break(1u);
    return result;
  }

  if (*(v72 + 16))
  {
    v33 = *(v72 + 32);
  }

  else
  {

    return 5;
  }

  return v33;
}

void sub_100047AB4(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[9];
      v9 = v7[11];
      v69 = v7[10];
      v70 = v9;
      v10 = v7[11];
      v71 = v7[12];
      v11 = v7[5];
      v12 = v7[7];
      v65 = v7[6];
      v66 = v12;
      v13 = v7[7];
      v14 = v7[9];
      v67 = v7[8];
      v68 = v14;
      v15 = v7[1];
      v16 = v7[3];
      v61 = v7[2];
      v62 = v16;
      v17 = v7[3];
      v18 = v7[5];
      v63 = v7[4];
      v64 = v18;
      v19 = v7[1];
      v59 = *v7;
      v60 = v19;
      v56 = v69;
      v57 = v10;
      v58 = v7[12];
      v52 = v65;
      v53 = v13;
      v54 = v67;
      v55 = v8;
      v48 = v61;
      v49 = v17;
      v50 = v63;
      v51 = v11;
      v46 = v59;
      v47 = v15;
      sub_10004D64C(&v59, &v33);
      v20 = a1(&v46);
      if (v3)
      {
        v43 = v56;
        v44 = v57;
        v45 = v58;
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v42 = v55;
        v35 = v48;
        v36 = v49;
        v37 = v50;
        v38 = v51;
        v33 = v46;
        v34 = v47;
        sub_10004D6A8(&v33);
        return;
      }

      if (v20)
      {
        break;
      }

      v43 = v56;
      v44 = v57;
      v45 = v58;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v55;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v33 = v46;
      v34 = v47;
      sub_10004D6A8(&v33);
      v7 += 13;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v43 = v56;
    v44 = v57;
    v45 = v58;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v33 = v46;
    v34 = v47;
    XPCIncomingConnection.init(conn:)();
    v28 = v44;
    a3[10] = v43;
    a3[11] = v28;
    a3[12] = v45;
    v29 = v40;
    a3[6] = v39;
    a3[7] = v29;
    v30 = v42;
    a3[8] = v41;
    a3[9] = v30;
    v31 = v36;
    a3[2] = v35;
    a3[3] = v31;
    v32 = v38;
    a3[4] = v37;
    a3[5] = v32;
    v27 = v33;
    v26 = v34;
  }

  else
  {
LABEL_6:
    sub_10004DDF8(&v59);
    v21 = v70;
    a3[10] = v69;
    a3[11] = v21;
    a3[12] = v71;
    v22 = v66;
    a3[6] = v65;
    a3[7] = v22;
    v23 = v68;
    a3[8] = v67;
    a3[9] = v23;
    v24 = v62;
    a3[2] = v61;
    a3[3] = v24;
    v25 = v64;
    a3[4] = v63;
    a3[5] = v25;
    v27 = v59;
    v26 = v60;
  }

  *a3 = v27;
  a3[1] = v26;
}

void *sub_100047CF0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v237 = a2;
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  v234 = *(v5 - 8);
  v235 = v5;
  v6 = __chkstk_darwin(v5);
  v236 = (&v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v229 = &v223 - v9;
  __chkstk_darwin(v8);
  v228 = &v223 - v10;
  v11 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  __chkstk_darwin(v11 - 8);
  v227 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  __chkstk_darwin(v13 - 8);
  v247 = &v223 - v14;
  v251 = sub_1000798B0();
  v15 = *(v251 - 8);
  v16 = __chkstk_darwin(v251);
  v232 = &v223 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v231 = &v223 - v18;
  v261 = sub_100079AC0();
  v19 = *(v261 - 8);
  v20 = __chkstk_darwin(v261);
  v250 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v253 = &v223 - v22;
  v260 = sub_100079AE0();
  v23 = *(v260 - 8);
  v24 = __chkstk_darwin(v260);
  v249 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v252 = &v223 - v26;
  v27 = sub_10000712C(&unk_10009ED68, &qword_10007E4D0);
  v28 = __chkstk_darwin(v27 - 8);
  v248 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v223 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v255 = a1;
  sub_10000751C(a1, v32);
  (*(v33 + 8))(v288, v32, v33);
  v290 = v289;
  v270 = *(&v289 + 1);
  v272 = v289;

  sub_100019EF4(v288);
  v240 = v3;
  v34 = *v3;
  v35 = v31;
  v36 = *(v34 + 64);
  v243 = v34 + 64;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v258 = (v19 + 8);
  v259 = (v23 + 8);
  v246 = (v15 + 48);
  v225 = (v15 + 16);
  v226 = (v15 + 32);
  v224 = (v15 + 8);

  v41 = v39;
  v42 = v40;
  v43 = 0;
  v44 = 0;
  *&v45 = 136315138;
  v239 = v45;
  *&v45 = 136446210;
  v233 = v45;
  v238 = _swiftEmptyArrayStorage;
  v241 = _swiftEmptyArrayStorage;
  v242 = v34;
  v254 = v31;
  v245 = v40;
  while (1)
  {
LABEL_7:
    if (v41)
    {
      goto LABEL_12;
    }

    do
    {
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_133;
      }

      if (v47 >= v42)
      {
        sub_10002A4B4(&v290);

        v217 = v240[2];
        v218 = v240[3];

        v219 = variable initialization expression of Daemon.mode();
        result = sub_1000690FC(v238, v241, v219 & 1, v217, v218, &v275);
        v221 = v276;
        v222 = v237;
        *v237 = v275;
        v222[1] = v221;
        *(v222 + 4) = v277;
        return result;
      }

      v41 = *(v243 + 8 * v47);
      ++v43;
    }

    while (!v41);
    v43 = v47;
LABEL_12:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v43 << 6);
    v50 = *(v34 + 56) + 32 * v49;
    v52 = *v50;
    v51 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 24);
    v269 = v53;
    v264 = v52;
    if (!v54)
    {
      break;
    }

    if (v54 == 1)
    {
      v256 = v43;
      v257 = v41;
      sub_10004CCFC(v52, v51, v53, 1);

      v55 = sub_10003F2A0();
      swift_beginAccess();
      if (*v55)
      {
        v244 = v51;
        v263 = *(v52 + 16);
        if (v263)
        {
          v56 = 0;
          v57 = (v52 + 96);
          while (1)
          {
            if (v56 >= *(v52 + 16))
            {
              goto LABEL_135;
            }

            v265 = v56;
            v266 = &v223;
            v271 = v44;
            v58 = *(v57 - 8);
            v59 = *(v57 - 7);
            LODWORD(v262) = *(v57 - 48);
            v61 = *(v57 - 5);
            v60 = *(v57 - 4);
            v62 = *(v57 - 24);
            v63 = *(v57 - 2);
            v64 = *(v57 - 1);
            v267 = v58;
            v268 = v63;
            v65 = *v57;
            v275 = v290;
            __chkstk_darwin(v58);
            *(&v223 - 2) = &v275;

            v66 = v61;
            v67 = v61;
            v68 = v60;
            v69 = v62;
            sub_10004CDB8(v67, v60, v62);
            v70 = v268;
            v71 = v64;
            v72 = v64;
            v73 = v65;
            sub_10004CDD0(v268, v72, v65);
            v44 = v271;
            if (sub_10004AEFC(sub_10004CD9C, (&v223 - 4), v267))
            {
              break;
            }

            v56 = (v265 + 1);
            sub_10004CDDC(v66, v68, v69);
            sub_10004CDF4(v70, v71, v73);
            v57 += 72;
            v52 = v264;
            v53 = v269;
            if (v263 == v56)
            {
              goto LABEL_4;
            }
          }

          v266 = v66;
          v163 = v68;
          LODWORD(v271) = v69;
          LODWORD(v265) = v73;
          v164 = v71;
          v165 = v264;
          v166 = v244;
          v167 = v269;
          sub_10004CD4C(v264, v244, v269, 1);
          if (v262)
          {
            v59 = 1.0;
          }

          v168 = v255[3];
          v169 = v255[4];
          sub_10000751C(v255, v168);
          v170 = (*(v169 + 24))(v168, v169);
          v35 = v254;
          v34 = v242;
          if (v170 >= v59)
          {

            sub_10004CDDC(v266, v163, v271);
            sub_10004CDF4(v268, v164, v265);
            v149 = v165;
            v150 = v166;
            v151 = v167;
            goto LABEL_77;
          }

          v171 = v240[4];
          v172 = v163;
          v173 = sub_10004CE98(v266, v163, v271, v171);
          v174 = v164;
          v175 = v265;
          if (v265)
          {
            if (*(v171 + 16))
            {

              v176 = v268;
              v262 = sub_10000A0FC(v268, v174);
              LODWORD(v263) = v177;
              sub_10004CDF4(v176, v174, 1);
              if ((v263 & 1) != 0 && *(*(v171 + 56) + 16 * v262 + 8) == 1)
              {
                goto LABEL_90;
              }

              v175 = 1;
              v179 = _swiftEmptyArrayStorage;
            }

            else
            {
              v175 = 1;
              v179 = _swiftEmptyArrayStorage;
              v176 = v268;
            }
          }

          else
          {
LABEL_90:

            v176 = v268;
            v179 = v178;
          }

          sub_10004CDDC(v266, v172, v271);
          sub_10004CDF4(v176, v174, v175);
          v196 = v179[2];
          if (v196)
          {
            v265 = v173;
            v271 = v44;
            *&v275 = _swiftEmptyArrayStorage;
            sub_10004BA84(0, v196, 0);
            v197 = v275;
            v268 = v196 - 1;
            v263 = v179;
            for (i = v179 + 9; ; i += 6)
            {
              v199 = *(i - 5);
              v200 = *(i - 4);
              LODWORD(v266) = *(i - 24);
              v201 = *(i - 1);
              v267 = *(i - 2);
              v202 = *i;
              *&v275 = v197;
              v204 = *(v197 + 16);
              v203 = *(v197 + 24);
              swift_bridgeObjectRetain_n();

              if (v204 >= v203 >> 1)
              {
                sub_10004BA84((v203 > 1), v204 + 1, 1);
                v197 = v275;
              }

              *(v197 + 16) = v204 + 1;
              v205 = v197 + (v204 << 6);
              *(v205 + 32) = v199;
              *(v205 + 40) = v200;
              *(v205 + 48) = v199;
              *(v205 + 56) = v200;
              *(v205 + 64) = v266;
              v206 = *(&v273 + 3);
              *(v205 + 65) = v273;
              *(v205 + 68) = v206;
              *(v205 + 72) = v267;
              *(v205 + 80) = v201;
              *(v205 + 88) = v202;
              if (!v268)
              {
                break;
              }

              --v268;
            }

            v35 = v254;
            v34 = v242;
            v44 = v271;
            v207 = v269;
            if (*(v197 + 16))
            {
LABEL_120:
              sub_10000712C(&qword_10009F130, &qword_10007E4E0);
              v208 = sub_10007A4D0();
LABEL_123:
              *&v275 = v208;

              sub_10004A118(v209, 1, &v275);
              if (v44)
              {
                goto LABEL_137;
              }

              XPCIncomingConnection.init(conn:)();
              v210 = v236;
              *v236 = v211;
              v210[1] = v212;
              v210[2] = v213;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_100049BCC(0, v241[2] + 1, 1, v241);
              }

              v215 = v241[2];
              v214 = v241[3];
              if (v215 >= v214 >> 1)
              {
                v241 = sub_100049BCC((v214 > 1), v215 + 1, 1, v241);
              }

              sub_10004CD4C(v264, v244, v207, 1);
              v216 = v241;
              v241[2] = v215 + 1;
              sub_10004DD3C(v236, v216 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v215, type metadata accessor for SessionConfiguration.Backend);
              v42 = v245;
              v43 = v256;
              v41 = v257;
              v44 = 0;
              continue;
            }
          }

          else
          {

            v207 = v269;
            if (_swiftEmptyArrayStorage[2])
            {
              goto LABEL_120;
            }
          }

          v208 = &_swiftEmptyDictionarySingleton;
          goto LABEL_123;
        }

LABEL_4:
        v46 = v244;
        sub_10004CD4C(v52, v244, v53, 1);
        sub_10004CD4C(v52, v46, v53, 1);
        v35 = v254;
LABEL_5:
        v34 = v242;
      }

      else
      {
        sub_10004CD4C(v52, v51, v53, 1);
        v149 = v52;
        v150 = v51;
        v151 = v53;
LABEL_77:
        sub_10004CD4C(v149, v150, v151, 1);
      }

LABEL_6:
      v42 = v245;
      v43 = v256;
      v41 = v257;
    }
  }

  v268 = *(v53 + 16);
  if (!v268)
  {
    goto LABEL_7;
  }

  v256 = v43;
  v257 = v41;
  v74 = (*(v34 + 48) + 16 * v49);
  v75 = v74[1];
  v230 = *v74;
  v262 = v75;

  v244 = v51;
  sub_10004CCFC(v52, v51, v53, 0);

  if (*(v53 + 16))
  {
    v76 = 0;
    v267 = v53 + 32;
    while (2)
    {
      v77 = (v267 + 208 * v76);
      v275 = *v77;
      v78 = v77[1];
      v79 = v77[2];
      v80 = v77[4];
      v278 = v77[3];
      v279 = v80;
      v276 = v78;
      v277 = v79;
      v81 = v77[5];
      v82 = v77[6];
      v83 = v77[8];
      v282 = v77[7];
      v283 = v83;
      v280 = v81;
      v281 = v82;
      v84 = v77[9];
      v85 = v77[10];
      v86 = v77[12];
      v286 = v77[11];
      v287 = v86;
      v284 = v84;
      v285 = v85;
      if (__PAIR128__(v270, v272) != v275 && (sub_10007A610() & 1) == 0)
      {
        goto LABEL_72;
      }

      v87 = v287;
      if (v287 == 2)
      {
        sub_10004D64C(&v275, &v273);
        v88 = 0;
      }

      else
      {
        sub_10004D64C(&v275, &v273);
        v88 = sub_100055B60(v87 & 1);
      }

      v89 = BYTE1(v287) != 2 && sub_100055B60(BYTE1(v287) & 1);
      if (((sub_10003F7D8() | v88) & 1) == 0)
      {
        sub_10004D6A8(&v275);

        if (qword_1000A4180 != -1)
        {
          swift_once();
        }

        v152 = sub_100079BA0();
        sub_1000070F4(v152, qword_1000A6D50);
        v153 = v262;

        v154 = sub_100079B80();
        v155 = sub_10007A160();

        v156 = os_log_type_enabled(v154, v155);
        v34 = v242;
        if (v156)
        {
          v157 = swift_slowAlloc();
          v271 = v154;
          v158 = v157;
          v159 = swift_slowAlloc();
          v273 = v159;
          *v158 = v233;
          v160 = sub_100006B00(v230, v153, &v273);

          *(v158 + 4) = v160;
          v161 = v155;
          v162 = v271;
          _os_log_impl(&_mh_execute_header, v271, v161, "skipping %{public}s: dnu disabled", v158, 0xCu);
          sub_1000070A8(v159);

          sub_10004CD4C(v264, v244, v53, 0);
        }

        else
        {

          sub_10004CD4C(v264, v244, v53, 0);
        }

        goto LABEL_6;
      }

      LODWORD(v265) = v89;
      LODWORD(v266) = v87;
      v90 = sub_100079DF0();
      v91 = MGCopyAnswer();

      if (!v91)
      {
        goto LABEL_136;
      }

      v92 = v280;
      type metadata accessor for CFString(0);
      v93 = swift_dynamicCastUnknownClassUnconditional();
      v94 = sub_100079E20();
      v96 = v95;

      if (v92)
      {
        v273 = v94;
        v274 = v96;
        __chkstk_darwin(v97);
        *(&v223 - 2) = &v273;

        v98 = sub_10004AEFC(sub_10004DFFC, (&v223 - 4), v92);

        if ((v98 & 1) == 0)
        {

LABEL_41:
          sub_10004D6A8(&v275);
          goto LABEL_72;
        }
      }

      v99 = *(&v279 + 1);
      if (*(&v279 + 1))
      {
        v273 = v94;
        v274 = v96;
        __chkstk_darwin(v97);
        *(&v223 - 2) = &v273;

        v100 = sub_10004AEFC(sub_10004DFFC, (&v223 - 4), v99);

        if (v100)
        {
          goto LABEL_41;
        }

        v101 = *(&v286 + 1);
        if (!*(&v286 + 1))
        {
          goto LABEL_46;
        }
      }

      else
      {

        v101 = *(&v286 + 1);
        if (!*(&v286 + 1))
        {
          goto LABEL_46;
        }
      }

      v102 = v252;
      sub_100079AA0();
      v103 = v253;
      sub_100079AD0();
      (*v259)(v102, v260);
      sub_100079AB0();
      (*v258)(v103, v261);
      v104 = sub_100079A90();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v35, 1, v104) == 1)
      {

        sub_10004D6A8(&v275);
        sub_1000096C4(v35, &unk_10009ED68, &qword_10007E4D0);
        goto LABEL_72;
      }

      v106 = sub_100079A80();
      v108 = v107;
      v109 = (*(v105 + 8))(v35, v104);
      v273 = v106;
      v274 = v108;
      __chkstk_darwin(v109);
      *(&v223 - 2) = &v273;
      LOBYTE(v106) = sub_10004AEFC(sub_10004DFFC, (&v223 - 4), v101);

      if ((v106 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_46:
      v110 = v44;
      v112 = v248;
      v111 = v249;
      sub_100079AA0();
      v113 = v250;
      sub_100079AD0();
      (*v259)(v111, v260);
      sub_100079AB0();
      (*v258)(v113, v261);
      v114 = sub_100079A90();
      v115 = *(v114 - 8);
      if ((*(v115 + 48))(v112, 1, v114) == 1)
      {
        sub_1000096C4(v112, &unk_10009ED68, &qword_10007E4D0);
        goto LABEL_56;
      }

      v116 = *(&v287 + 1);
      v263 = sub_100079A80();
      v271 = v117;
      v118 = (*(v115 + 8))(v112, v114);
      if (v116)
      {
        v119 = *(v116 + 16);
        v120 = v110;
        if (v119)
        {
          v121 = 0;
          v122 = (v116 + 40);
          while (1)
          {
            if (v121 >= *(v116 + 16))
            {
              goto LABEL_134;
            }

            v123 = *(v122 - 1);
            v124 = *v122;
            v273 = v263;
            v274 = v271;
            __chkstk_darwin(v118);
            *(&v223 - 2) = &v273;
            swift_bridgeObjectRetain_n();
            v125 = sub_10004AEFC(sub_10004DFFC, (&v223 - 4), v123);

            if (v125)
            {
              break;
            }

            ++v121;
            v122 += 2;
            if (v119 == v121)
            {
              goto LABEL_54;
            }
          }

          v53 = v269;
LABEL_60:
          v126 = v276;
          v271 = v120;
          if (v276 && (type metadata accessor for Session(), v127 = v255[3], v128 = v255[4], sub_10000751C(v255, v127), v129 = (*(v128 + 48))(v127, v128), v130 = COERCE_DOUBLE(sub_100009E0C(v126, v129)), v132 = v131, , (v132 & 1) == 0))
          {
            if (v130 >= v124)
            {
LABEL_93:

              sub_10004D6A8(&v275);
              sub_10004CD4C(v264, v244, v53, 0);

              v35 = v254;
              v34 = v242;
LABEL_110:
              v42 = v245;
              v43 = v256;
              v41 = v257;
              v44 = v271;
              goto LABEL_7;
            }
          }

          else
          {
            v133 = v255[3];
            v134 = v255[4];
            sub_10000751C(v255, v133);
            if ((*(v134 + 24))(v133, v134) >= v124)
            {
              goto LABEL_93;
            }
          }

          v135 = BYTE1(v286);
          v136 = *(&v283 + 1);
          v137 = v284;
          v138 = BYTE8(v284);
          v139 = *(&v276 + 1);
          v140 = v277;
          v141 = v247;
          sub_100079880();
          if ((*v246)(v141, 1, v251) != 1)
          {

            v180 = v231;
            v181 = v141;
            v182 = v251;
            (*v226)(v231, v181, v251);
            v183 = v240[4];
            sub_10004CDD0(v136, v137, v138);
            v184 = sub_10004CE98(v136, v137, v138, v183);
            sub_10004CDF4(v136, v137, v138);
            if (v126)
            {
              v185 = v126;
            }

            else
            {
              v185 = _swiftEmptyArrayStorage;
            }

            (*v225)(v232, v180, v182);

            sub_10004D6A8(&v275);
            v186 = sub_100055B60((v135 == 2) | v135 & 1);
            v187 = v266 != 2 && sub_100055B60(v266 & 1);
            v188 = v227;
            v35 = v254;
            v34 = v242;
            sub_100069034(v230, v262, v185, v232, v184, v186, v187, v227, v124);
            v189 = v269;
            if (v265)
            {
              sub_10004D6FC(v188, v228);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_100049BCC(0, v241[2] + 1, 1, v241);
              }

              v190 = v241;
              v192 = v241[2];
              v191 = v241[3];
              v193 = v192 + 1;
              if (v192 >= v191 >> 1)
              {
                v190 = sub_100049BCC((v191 > 1), v192 + 1, 1, v241);
                v194 = v228;
                v241 = v190;
              }

              else
              {
                v194 = v228;
              }
            }

            else
            {
              sub_10004D6FC(v188, v229);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v238 = sub_100049BCC(0, v238[2] + 1, 1, v238);
              }

              v190 = v238;
              v192 = v238[2];
              v195 = v238[3];
              v193 = v192 + 1;
              if (v192 >= v195 >> 1)
              {
                v190 = sub_100049BCC((v195 > 1), v192 + 1, 1, v238);
                v194 = v229;
                v238 = v190;
              }

              else
              {
                v194 = v229;
              }
            }

            sub_10004CD4C(v264, v244, v189, 0);
            sub_10004D760(v188);
            (*v224)(v231, v251);
            v190[2] = v193;
            sub_10004DD3C(v194, v190 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v192, type metadata accessor for SessionConfiguration.Backend);
            goto LABEL_110;
          }

          sub_1000096C4(v141, &qword_10009DFB0, &qword_10007BA50);
          if (qword_1000A4180 != -1)
          {
            swift_once();
          }

          v142 = sub_100079BA0();
          sub_1000070F4(v142, qword_1000A6D50);
          sub_10004D64C(&v275, &v273);
          v143 = sub_100079B80();
          v144 = sub_10007A170();
          sub_10004D6A8(&v275);
          v145 = os_log_type_enabled(v143, v144);
          v44 = v271;
          v53 = v269;
          if (v145)
          {
            v146 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v273 = v147;
            *v146 = v239;

            sub_10004D6A8(&v275);
            v148 = sub_100006B00(v139, v140, &v273);

            *(v146 + 4) = v148;
            _os_log_impl(&_mh_execute_header, v143, v144, "invalid URL %s", v146, 0xCu);
            sub_1000070A8(v147);
          }

          else
          {

            sub_10004D6A8(&v275);
          }

          v35 = v254;
LABEL_72:
          if (++v76 == v268)
          {

            sub_10004CD4C(v264, v244, v53, 0);
            goto LABEL_5;
          }

          if (v76 >= *(v53 + 16))
          {
            goto LABEL_133;
          }

          continue;
        }

LABEL_54:

        v53 = v269;
      }

      else
      {

LABEL_56:
        v120 = v110;
      }

      break;
    }

    if (v278)
    {
      v124 = 1.0;
    }

    else
    {
      v124 = *(&v277 + 1);
    }

    goto LABEL_60;
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_100049648(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009F180, &qword_10007E7B0);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_10000712C(&qword_10009F188, &qword_10007E7B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004977C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F178, &unk_10007E7A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100049870(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F1C8, &unk_10007E7F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100049964(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F1D8, &qword_10007E800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100049A84(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009F1C0, &qword_10007E7E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10000712C(&unk_10009FC80, &qword_10007E7E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100049BCC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000712C(&qword_10009F1A8, &unk_10007FBC0);
  v10 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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
  v15 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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

uint64_t sub_100049DA4(uint64_t a1, char a2, void *a3)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_10004A578(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10004A5E8();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_10004A8F4(v13, a2 & 1);
  v17 = sub_10004A578(v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_10007A6C0();
    __break(1u);
LABEL_29:
    sub_10007A3B0(30);
    v43._object = 0x8000000100083EA0;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    sub_100079F00(v43);
    sub_10007A480();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    sub_100079F00(v44);
    result = sub_10007A490();
    __break(1u);
    return result;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v20[6] + v14) = v6;
  *(v20[7] + 8 * v14) = v7;
  v21 = v20[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v23;
  if (v42 != 1)
  {
    v24 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v27 = *v24;
      v26 = *(v24 - 8);
      v28 = *a3;
      v29 = sub_10004A578(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_25;
      }

      v34 = v29;
      v35 = v30;
      v36 = v28[3];

      if (v36 < v33)
      {
        sub_10004A8F4(v33, 1);
        v37 = sub_10004A578(v26);
        if ((v35 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v34 = v37;
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v39[6] + v34) = v26;
      *(v39[7] + 8 * v34) = v27;
      v40 = v39[2];
      v22 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      ++v25;
      v39[2] = v41;
      v24 += 2;
      if (v42 == v25)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_10004A118(uint64_t a1, char a2, void *a3)
{
  v53 = *(a1 + 16);
  if (!v53)
  {
  }

  v5 = *(a1 + 80);
  v61 = *(a1 + 64);
  v62 = v5;
  v6 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v6;
  v7 = v62;
  v8 = *(&v61 + 1);
  v9 = v61;
  v10 = v6;
  v55 = *(&v62 + 1);
  v11 = v59;
  sub_10004DCCC(&v59, v58);
  if (!*(&v11 + 1))
  {
  }

  v51 = v8;
  v12 = a2;
  v52 = a1;
  v59 = v11;
  v13 = *a3;
  v15 = sub_10000A0FC(v11, *(&v11 + 1));
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v13[3] >= v18)
  {
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_10004A744();
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_10004AB84(v18, v12 & 1);
  v20 = sub_10000A0FC(v11, *(&v11 + 1));
  if ((v19 & 1) == (v21 & 1))
  {
    v15 = v20;
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v24 = *a3;
      *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(v24[6] + 16 * v15) = v11;
      v25 = v24[7] + 48 * v15;
      *v25 = v10;
      *(v25 + 16) = v9;
      *(v25 + 24) = v51;
      *(v25 + 32) = v7;
      *(v25 + 40) = v55;
      v26 = v24[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24[2] = v28;
      v29 = v52;
      if (v53 != 1)
      {
        v30 = (v52 + 96);
        v31 = 1;
        while (v31 < *(v29 + 16))
        {
          v32 = v30[3];
          v61 = v30[2];
          v62 = v32;
          v33 = v30[1];
          v59 = *v30;
          v60 = v33;
          v34 = v62;
          v35 = *(&v61 + 1);
          v36 = v61;
          v37 = v33;
          v56 = *(&v62 + 1);
          v38 = v59;
          sub_10004DCCC(&v59, v58);
          if (!*(&v38 + 1))
          {
          }

          v54 = v34;
          v59 = v38;
          v39 = *a3;
          v40 = sub_10000A0FC(v38, *(&v38 + 1));
          v42 = v39[2];
          v43 = (v41 & 1) == 0;
          v27 = __OFADD__(v42, v43);
          v44 = v42 + v43;
          if (v27)
          {
            goto LABEL_26;
          }

          v45 = v41;
          if (v39[3] < v44)
          {
            sub_10004AB84(v44, 1);
            v40 = sub_10000A0FC(v38, *(&v38 + 1));
            if ((v45 & 1) != (v46 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v45)
          {
            goto LABEL_10;
          }

          v47 = *a3;
          *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
          *(v47[6] + 16 * v40) = v38;
          v48 = v47[7] + 48 * v40;
          *v48 = v37;
          *(v48 + 16) = v36;
          *(v48 + 24) = v35;
          *(v48 + 32) = v54;
          *(v48 + 40) = v56;
          v49 = v47[2];
          v27 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v31;
          v47[2] = v50;
          v30 += 4;
          v29 = v52;
          if (v53 == v31)
          {
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_10:
    v22 = swift_allocError();
    swift_willThrow();
    v63 = v22;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_10007A6C0();
  __break(1u);
LABEL_29:
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_10007A3B0(30);
  v64._object = 0x8000000100083EA0;
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100079F00(v64);
  sub_10007A480();
  v65._countAndFlagsBits = 39;
  v65._object = 0xE100000000000000;
  sub_100079F00(v65);
  result = sub_10007A490();
  __break(1u);
  return result;
}

unint64_t sub_10004A578(uint64_t a1)
{
  v1 = a1;
  sub_10007A730();
  sub_10007A740(v1 + 1);
  v2 = sub_10007A760();

  return sub_10004AE8C(v1, v2);
}

void sub_10004A5E8()
{
  v1 = v0;
  sub_10000712C(&qword_10009F170, &qword_10007E798);
  v2 = *v0;
  v3 = sub_10007A4B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_10004A744()
{
  v1 = v0;
  sub_10000712C(&qword_10009F130, &qword_10007E4E0);
  v2 = *v0;
  v3 = sub_10007A4B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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
}

uint64_t sub_10004A8F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000712C(&qword_10009F170, &qword_10007E798);
  v30 = v4;
  result = sub_10007A4C0();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_10007A730();
      sub_10007A740(v20 + 1);
      result = sub_10007A760();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004AB84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000712C(&qword_10009F130, &qword_10007E4E0);
  v38 = v4;
  result = sub_10007A4C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v42 = *v24;
      v43 = *v22;
      v41 = *(v24 + 16);
      v26 = *(v24 + 32);
      v40 = *(v24 + 24);
      v27 = *(v24 + 40);
      if ((v38 & 1) == 0)
      {
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v41;
      v12 = v39;
      *(v17 + 24) = v40;
      *(v17 + 32) = v26;
      *(v17 + 40) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_10004AE8C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10004AEFC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

Swift::Int sub_10004AFA8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10004BEA4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_10004B014(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10004B014(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_10007A5D0(v2);
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
        v5 = sub_10007A010();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10004B1F4(v7, v8, a1, v4);
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
    return sub_10004B10C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004B10C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_10004DDA4();
    v8 = (v7 + v4);
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = sub_100079DD0();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v12;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004B1F4(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v84 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_92:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_100009098(v10);
      v10 = result;
    }

    v75 = *(v10 + 2);
    if (v75 >= 2)
    {
      while (1)
      {
        v76 = *v7;
        if (!*v7)
        {
          goto LABEL_128;
        }

        v7 = (v75 - 1);
        v77 = *&v10[16 * v75];
        v78 = *&v10[16 * v75 + 24];
        sub_10004B810(&v76[v77], &v76[*&v10[16 * v75 + 16]], &v76[v78], v5);
        if (v6)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100009098(v10);
        }

        if (v75 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v10[16 * v75];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_10000900C(v7);
        v75 = *(v10 + 2);
        v7 = a3;
        if (v75 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v82 = v6;
      v5 = *v7;
      sub_10004DDA4();
      result = sub_100079DD0();
      v13 = v11;
      v14 = result;
      v81 = v13;
      while (v8 - 2 != v13)
      {
        result = sub_100079DD0();
        ++v13;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v13 + 1;
          break;
        }
      }

      v6 = v82;
      v7 = a3;
      if (v14)
      {
        v11 = v81;
        if (v8 < v81)
        {
          goto LABEL_121;
        }

        if (v81 < v8)
        {
          v15 = v8 - 1;
          v16 = v81;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = v19[v16];
              v19[v16] = v19[v15];
              v19[v15] = v17;
            }
          }

          while (++v16 < v15--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v81;
      }
    }

    v20 = v7[1];
    if (v12 < v20)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_120;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v20)
        {
          v21 = v7[1];
        }

        else
        {
          v21 = (v11 + a4);
        }

        if (v21 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v12 != v21)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v12 < v11)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v88 = v12;
    v28 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1000069FC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v30 = *(v10 + 2);
    v29 = *(v10 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_1000069FC((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v31;
    v32 = &v10[16 * v30];
    *(v32 + 4) = v11;
    *(v32 + 5) = v88;
    v33 = *v84;
    if (!*v84)
    {
      goto LABEL_129;
    }

    if (v30)
    {
      v6 = v28;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v10 + 4);
          v36 = *(v10 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_61:
          if (v38)
          {
            goto LABEL_108;
          }

          v51 = &v10[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_111;
          }

          v57 = &v10[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_115;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v61 = &v10[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_75:
        if (v56)
        {
          goto LABEL_110;
        }

        v64 = &v10[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_82:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_123;
        }

        if (!*v7)
        {
          goto LABEL_126;
        }

        v73 = *&v10[16 * v72 + 32];
        v5 = *&v10[16 * v34 + 40];
        sub_10004B810(&(*v7)[v73], &(*v7)[*&v10[16 * v34 + 32]], &v5[*v7], v33);
        if (v6)
        {
        }

        if (v5 < v73)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100009098(v10);
        }

        if (v72 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v74 = &v10[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v5;
        result = sub_10000900C(v34);
        v31 = *(v10 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v10[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_106;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_107;
      }

      v46 = &v10[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_109;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_112;
      }

      if (v50 >= v42)
      {
        v68 = &v10[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_116;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v28;
LABEL_4:
    v8 = v7[1];
    v9 = v88;
    if (v88 >= v8)
    {
      goto LABEL_92;
    }
  }

  v83 = v6;
  v22 = *v7;
  sub_10004DDA4();
  v23 = &v22[v12];
  v24 = v11 - v12;
  v86 = v21;
LABEL_33:
  v87 = v12;
  v25 = v24;
  v5 = v23;
  while (1)
  {
    result = sub_100079DD0();
    if ((result & 1) == 0)
    {
LABEL_32:
      ++v12;
      ++v23;
      --v24;
      if ((v87 + 1) != v86)
      {
        goto LABEL_33;
      }

      v12 = v86;
      v6 = v83;
      v7 = a3;
      goto LABEL_40;
    }

    if (!v22)
    {
      break;
    }

    v26 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_10004B810(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
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
      sub_10004DDA4();
LABEL_26:
      v14 = v6 - 1;
      --v5;
      v15 = v10;
      do
      {
        v16 = v5 + 1;
        --v15;
        if (sub_100079DD0())
        {
          if (v16 < v6 || v5 >= v6)
          {
            *v5 = *v14;
          }

          if (v10 <= v4 || (--v6, v14 <= v7))
          {
            v6 = v14;
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        if (v16 < v10 || v5 >= v10)
        {
          *v5 = *v15;
        }

        --v5;
        v10 = v15;
      }

      while (v15 > v4);
      v10 = v15;
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
      sub_10004DDA4();
      while (1)
      {
        if (sub_100079DD0())
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_17;
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
              goto LABEL_17;
            }
          }
        }

        *v7 = *v12;
LABEL_17:
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
  }

LABEL_40:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

void *sub_10004BA64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004BB98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004BA84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004BD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004BAA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F1C8, &unk_10007E7F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10004BB98(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000712C(&qword_10009EC60, &unk_10007D660);
  v10 = *(type metadata accessor for ServiceEventValue(0) - 8);
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
  v15 = *(type metadata accessor for ServiceEventValue(0) - 8);
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

void *sub_10004BD70(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009F1B8, &qword_10007E7D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&qword_10009F1B0, &qword_10007E7D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10004BEB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100019E90(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000354EC(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10004BF50(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_10004BF74()
{
  result = qword_1000A4188[0];
  if (!qword_1000A4188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A4188);
  }

  return result;
}

uint64_t sub_10004BFC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_10007A610() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x5F68736572666572 && a2 == 0xED0000656C637963 || (sub_10007A610() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x765F646572616873 && a2 == 0xEC00000073656C61 || (sub_10007A610() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65)
  {
    v5 = 0;
LABEL_17:

    return v5;
  }

  v6 = sub_10007A610();

  result = 0;
  if ((v6 & 1) == 0)
  {
    if (a1 == 0x6E695F656C707061 && a2 == 0xEE006C616E726574)
    {
      v5 = 1;
      goto LABEL_17;
    }

    v7 = sub_10007A610();

    if (v7)
    {
      return 1;
    }

    if (a1 == 1684366707 && a2 == 0xE400000000000000)
    {
      v5 = 2;
      goto LABEL_17;
    }

    v8 = sub_10007A610();

    if (v8)
    {
      return 2;
    }

    if (a1 == 0x657361656C6572 && a2 == 0xE700000000000000)
    {
      v5 = 3;
      goto LABEL_17;
    }

    v9 = sub_10007A610();

    if (v9)
    {
      return 3;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_10004C24C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009F158, &unk_10007E788);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - v7;
  sub_10000751C(a1, a1[3]);
  sub_10004D9CC();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  LOBYTE(v39) = 4;
  v31 = sub_10007A550();
  v32 = v9;
  LOBYTE(v39) = 5;
  v30 = sub_10007A530();
  sub_10000712C(&qword_10009ED90, qword_10007E200);
  v38 = 6;
  sub_10004DBF4(&qword_10009F160, &qword_10009ED90, qword_10007E200, sub_10004DA20);
  sub_10007A520();
  v28 = v39;
  v11 = sub_10007A590();
  v12 = *(v11 + 16);
  v29 = v6;
  v27[1] = v11;
  if (v12)
  {
    v13 = (v11 + 32);
    v14 = _swiftEmptyArrayStorage;
    v35 = a2;
    while (1)
    {
      v16 = *v13;
      v15 = v16;
      v37 = v13 + 1;
      if (v16 <= 2)
      {
        if (!v15)
        {
          goto LABEL_27;
        }

        if (v15 == 1)
        {
          LOBYTE(v15) = (sub_10007A610() & 1) == 0;
          goto LABEL_27;
        }

        v36 = 1;
        v33 = 1;
        v34 = 1;
      }

      else
      {
        v36 = 0;
        if (v15 > 4)
        {
          v33 = 1;
          v34 = 1;
        }

        else
        {
          v33 = 0;
          v34 = v15 != 3;
        }
      }

      if (sub_10007A610())
      {
        LOBYTE(v15) = 0;
        goto LABEL_27;
      }

      v17 = sub_10007A610();
      if (v17)
      {
        LOBYTE(v15) = 1;
      }

      else
      {
        LOBYTE(v15) = 2;
      }

      if ((v17 | v36))
      {
        goto LABEL_27;
      }

      if (sub_10007A610())
      {
        break;
      }

      if ((v34 | v33) != 1)
      {
        LOBYTE(v15) = 3;
        goto LABEL_27;
      }

      v18 = sub_10007A610();

      if (v18)
      {
        LOBYTE(v15) = 3;
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10004977C(0, *(v14 + 2) + 1, 1, v14);
        }

        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          v14 = sub_10004977C((v19 > 1), v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v14[v20 + 32] = v15;
      }

      a2 = v35;
      --v12;
      v13 = v37;
      if (!v12)
      {
        goto LABEL_36;
      }
    }

    LOBYTE(v15) = 2;
LABEL_27:

    goto LABEL_28;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_36:

  __chkstk_darwin(v21);
  v27[-2] = v8;
  v22 = sub_100046B54(sub_10004DA74, &v27[-4], v14);

  if (v22[2])
  {
    sub_10000712C(&qword_10009F170, &qword_10007E798);
    v23 = sub_10007A4D0();
  }

  else
  {
    v23 = &_swiftEmptyDictionarySingleton;
  }

  v24 = v29;
  v39 = v23;
  sub_100049DA4(v22, 1, &v39);
  v25 = v39;
  (*(v24 + 8))(v8, v5);
  result = sub_1000070A8(a1);
  v26 = v32;
  *a2 = v31;
  *(a2 + 8) = v26;
  BYTE4(v26) = BYTE4(v30);
  *(a2 + 16) = v30;
  *(a2 + 20) = BYTE4(v26) & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v25;
  return result;
}

unint64_t sub_10004C8C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009F1E8, &qword_10007E810);
    v3 = sub_10007A4D0();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_10004CCFC(v7, v8, v9, v10);
      result = sub_10000A0FC(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_10004C9F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009F1E0, &qword_10007E808);
    v3 = sub_10007A4D0();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10000A0FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_10004CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || !a1)
  {
    return 0;
  }

  v5 = (a1 + 40);
  v6 = *(a1 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 2;
    v9 = *(v5 - 1);
    v8 = *v5;
    v13[0] = a2;
    v13[1] = a3;
    __chkstk_darwin(a1);
    v12[2] = v13;

    v10 = sub_10004AEFC(sub_10004DFFC, v12, v9);

    v5 = v7;
    if (v10)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10004CC14(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = v2[3];
  v6 = v2[4];
  sub_10000751C(v2, v5);
  (*(v6 + 8))(v11, v5, v6);
  v13 = v12;
  v7 = v12;

  sub_100019EF4(v11);
  if (v3 == v7 && v4 == *(&v7 + 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10007A610();
  }

  sub_10002A4B4(&v13);
  return v9 & 1;
}

uint64_t sub_10004CCE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10004CCFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10004CD4C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return v5;
    }
  }
}

double sub_10004CDB8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10004CDD0(result, a2, a3 & 1);
  }

  return v3;
}

uint64_t sub_10004CDDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10004CDF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004CE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10007A120();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100018CE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_10004CE98(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = ~a3;
  v55 = type metadata accessor for ServiceEventValue(0);
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v8)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (!*(a4 + 16) || (v12 = sub_10000A0FC(a1, a2), (v13 & 1) == 0) || (v14 = *(a4 + 56) + 16 * v12, *(v14 + 8)))
    {
LABEL_6:
      a1 = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

    a1 = *v14;
  }

  else
  {
    sub_10004CDD0(a1, a2, 0);
  }

LABEL_8:
  result = sub_100049A84(0, a1[2], 0, _swiftEmptyArrayStorage);
  v54 = result;
  v16 = a1[2];
  if (v16)
  {
    v17 = 0;
    v18 = a1 + 4;
    v49 = 0x8000000100083EC0;
    v51 = a1;
    v52 = v16;
    v50 = a1 + 4;
    while (1)
    {
      v19 = &v18[9 * v17];
      v20 = *(v19 + 3);
      v21 = v19[8];
      v22 = *(v19 + 1);
      v59 = *(v19 + 2);
      v23 = *v19;
      v61 = v21;
      v60 = v20;
      v57 = v23;
      v58 = v22;
      if (!*(&v59 + 1))
      {
        break;
      }

LABEL_24:
      if (++v17 == v16)
      {
        goto LABEL_50;
      }

      if (v17 >= a1[2])
      {
        __break(1u);
        return result;
      }
    }

    v24 = *(&v57 + 1);
    sub_100036F78(&v57, v56);

    v26 = sub_10004CE00(v25);

    v27 = *(v24 + 16);
    if (v27)
    {
      v53 = v26;
      v56[0] = _swiftEmptyArrayStorage;
      sub_10004BA64(0, v27, 0);
      v28 = v56[0];
      v29 = (v24 + 40);
      do
      {
        v30 = *v29;
        *v11 = *(v29 - 1);
        v11[1] = v30;
        swift_storeEnumTagMultiPayload();
        v56[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);

        if (v32 >= v31 >> 1)
        {
          sub_10004BA64((v31 > 1), v32 + 1, 1);
          v28 = v56[0];
        }

        *(v28 + 16) = v32 + 1;
        sub_10004DD3C(v11, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, type metadata accessor for ServiceEventValue);
        v29 += 2;
        --v27;
      }

      while (v27);
    }

    v33 = v58;
    j___s20CloudTelemetryShared21XPCIncomingConnectionV4connACSo13OS_xpc_object_p_tcfC();
    v35 = v34;
    v37 = v36;
    if (v33 == __PAIR128__(0xE500000000000000, 0x776F6C6C61) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventAllowFilter;
      v39 = &off_100097C28;
    }

    else if (v33 == __PAIR128__(0xE600000000000000, 0x65766F6D6572) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventRemoveFilter;
      v39 = &off_100097C50;
    }

    else if (v33 == __PAIR128__(0xE600000000000000, 0x363532616873) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventSHA256KeyFilter;
      v39 = &off_100097C78;
    }

    else if (v33 == __PAIR128__(0xEF7365756C615674, 0x73696C6574696877) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventAllowValuesFilter;
      v39 = &off_100097CA0;
    }

    else if (v33 == __PAIR128__(0xEF7365756C615674, 0x73696C6B63616C62) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventDenyValuesFilter;
      v39 = &off_100097CC8;
    }

    else if (__PAIR128__(v49, 0xD000000000000018) == v33 || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventInsertStringKeyFilter;
      v39 = &off_100097CF0;
    }

    else if (v33 == __PAIR128__(0xE600000000000000, 0x646E65707061) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventAppendToKeyFilter;
      v39 = &off_100097D18;
    }

    else
    {
      if (v33 != __PAIR128__(0xE700000000000000, 0x646E6570657270))
      {
        v48 = sub_10007A610();
        sub_100036FB0(&v57);
        if ((v48 & 1) == 0)
        {

          a1 = v51;
          v16 = v52;
LABEL_23:
          v18 = v50;
          goto LABEL_24;
        }

        v38 = &type metadata for EventPrependToKeyFilter;
        v39 = &off_100097D40;
LABEL_20:
        v40 = v39[2];
        v56[3] = v38;
        v56[4] = v39;
        v41 = sub_100019E90(v56);
        v42 = v40(v35, v37, v41);
        v62 = v54;
        v44 = v54[2];
        v43 = v54[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_100049A84((v43 > 1), v44 + 1, 1, v54);
          v54 = v42;
          v62 = v42;
        }

        v16 = v52;
        __chkstk_darwin(v42);
        v46 = &v49 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v46, v41, v38);
        sub_10004BEB8(v44, v46, &v62, v38, v39);
        result = sub_1000070A8(v56);
        a1 = v51;
        goto LABEL_23;
      }

      v38 = &type metadata for EventPrependToKeyFilter;
      v39 = &off_100097D40;
    }

    sub_100036FB0(&v57);
    goto LABEL_20;
  }

LABEL_50:

  return v54;
}

uint64_t sub_10004D6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D760(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004D7C0()
{
  result = qword_10009F138;
  if (!qword_10009F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F138);
  }

  return result;
}

uint64_t sub_10004D858(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D8A4()
{
  result = qword_10009F150;
  if (!qword_10009F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F150);
  }

  return result;
}

uint64_t sub_10004D90C(uint64_t *a1, int a2)
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

uint64_t sub_10004D954(uint64_t result, int a2, int a3)
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

unint64_t sub_10004D9CC()
{
  result = qword_1000A4610[0];
  if (!qword_1000A4610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A4610);
  }

  return result;
}

unint64_t sub_10004DA20()
{
  result = qword_10009F168;
  if (!qword_10009F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F168);
  }

  return result;
}

void *sub_10004DA74@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_10000712C(&qword_10009F158, &unk_10007E788);
  sub_10004DBA0();
  sub_10007A570();
  if (v2)
  {

    sub_10000712C(&qword_10009ED88, &unk_10007E7C0);
    sub_10004DBF4(&qword_10009F198, &qword_10009ED88, &unk_10007E7C0, sub_10004DC78);
    result = sub_10007A570();
    *a2 = v4;
    a2[1] = v6;
  }

  else
  {
    result = sub_1000071DC(v6, v7);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_10004DBA0()
{
  result = qword_10009F190;
  if (!qword_10009F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F190);
  }

  return result;
}

uint64_t sub_10004DBF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DC78()
{
  result = qword_10009F1A0;
  if (!qword_10009F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1A0);
  }

  return result;
}

uint64_t sub_10004DCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009F1B0, &qword_10007E7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004DDA4()
{
  result = qword_10009F1D0;
  if (!qword_10009F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1D0);
  }

  return result;
}

double sub_10004DDF8(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10004DE1C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10007A610() & 1;
  }
}

uint64_t getEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004DF14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10004DF28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_10004DF4C()
{
  result = qword_1000A4720;
  if (!qword_1000A4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4720);
  }

  return result;
}

unint64_t sub_10004DFA4()
{
  result = qword_1000A4728[0];
  if (!qword_1000A4728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A4728);
  }

  return result;
}

uint64_t sub_10004E01C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);

  return v2;
}

uint64_t sub_10004E070(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100018CE8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E174()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10004E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1000A47B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1000A6D68;

  result = sub_10004E070(v7, v6);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  return result;
}

uint64_t sub_10004E294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v94 = a1;
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v4 - 8);
  v105 = &v83 - v5;
  v6 = sub_10000712C(&qword_10009EC78, &unk_10007E8D0);
  __chkstk_darwin(v6);
  v8 = &v83 - v7;
  v9 = type metadata accessor for ServiceEventValue(0);
  v104 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v100 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = (&v83 - v13);
  v14 = __chkstk_darwin(v12);
  v98 = (&v83 - v15);
  v16 = __chkstk_darwin(v14);
  v97 = (&v83 - v17);
  v18 = __chkstk_darwin(v16);
  v102 = (&v83 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v83 - v21;
  v23 = __chkstk_darwin(v20);
  v84 = &v83 - v24;
  __chkstk_darwin(v23);
  v26 = &v83 - v25;
  v27 = *(a2 + 56);
  v88 = a2 + 56;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v87 = (v28 + 63) >> 6;
  v31 = a2;

  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v34 = v94;
  v103 = v6;
  v85 = a2;
LABEL_4:
  v96 = v33;
  result = v31;
  v36 = v34;
  while (v30)
  {
    v37 = v30;
LABEL_11:
    v30 = (v37 - 1) & v37;
    v39 = *(v36 + 16);
    if (*(v39 + 16))
    {
      v95 = (v37 - 1) & v37;
      v40 = (*(result + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v37)))));
      v41 = *v40;
      v42 = v40[1];
      v43 = result;

      v89 = v41;
      v44 = sub_10000A0FC(v41, v42);
      if (v45)
      {
        v86 = v42;
        v46 = *(v39 + 56);
        v110 = *(v104 + 72);
        v47 = v84;
        sub_10000A908(v46 + v110 * v44, v84);
        sub_100012C24(v47, v26);
        v48 = *(v90 + 16);
        if (!v48)
        {
LABEL_42:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v31 = v85;
            v33 = v96;
          }

          else
          {
            v33 = sub_100023040(0, *(v96 + 2) + 1, 1, v96);
            v31 = v85;
          }

          v68 = *(v33 + 2);
          v67 = *(v33 + 3);
          v110 = v68 + 1;
          if (v68 >= v67 >> 1)
          {
            v33 = sub_100023040((v67 > 1), v68 + 1, 1, v33);
          }

          sub_10000A96C(v26);
          *(v33 + 2) = v110;
          v69 = &v33[16 * v68];
          v70 = v86;
          *(v69 + 4) = v89;
          *(v69 + 5) = v70;
          v34 = v94;
          v30 = v95;
          goto LABEL_4;
        }

        v49 = v90 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
LABEL_18:
        sub_10000A908(v49, v22);
        v50 = &v8[*(v6 + 48)];
        sub_10000A908(v22, v8);
        sub_10000A908(v26, v50);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          v55 = v6;
          v56 = v26;
          v57 = v102;
          if (!EnumCaseMultiPayload)
          {
            sub_10000A908(v8, v102);
            v101 = v57[1];
            if (!swift_getEnumCaseMultiPayload())
            {
              v92 = *v57;
              v91 = sub_100079E90();
              v64 = v63;
              v93 = v63;

              v108 = v91;
              v109 = v64;
              v92 = sub_100079E90();
              v66 = v65;

              v106 = v92;
              v107 = v66;
              sub_100025EBC();
              LODWORD(v101) = sub_10007A2C0();

              sub_10000A96C(v22);
              sub_10000A96C(v8);
              v26 = v56;
              v6 = v103;
              if (v101)
              {
LABEL_40:
                sub_10000A96C(v26);

                v36 = v94;
                v30 = v95;
                result = v85;
                continue;
              }

              goto LABEL_17;
            }

            sub_10000A96C(v22);

            v26 = v56;
            v6 = v103;
            goto LABEL_16;
          }

          v26 = v56;
          v6 = v55;
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_15;
          }

          sub_10000A96C(v22);
          sub_10000A908(v8, v97);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_16;
          }

          v58 = v97;
        }

        else
        {
          if (EnumCaseMultiPayload != 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              sub_10000A96C(v22);
              sub_10000A908(v8, v99);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v61 = *v99;
                v62 = *v50;
                sub_10000A96C(v8);
                if (v61 == v62)
                {
                  goto LABEL_40;
                }

                goto LABEL_17;
              }

              goto LABEL_16;
            }

            if (EnumCaseMultiPayload == 4)
            {
              sub_10000A96C(v22);
              sub_10000A908(v8, v100);
              if (swift_getEnumCaseMultiPayload() == 4)
              {
                v52 = *v100;
                v53 = *v50;
                sub_10000A96C(v8);
                v54 = v52 == v53;
LABEL_31:
                v6 = v103;
                if (v54)
                {
                  goto LABEL_40;
                }

LABEL_17:
                v49 += v110;
                if (!--v48)
                {
                  goto LABEL_42;
                }

                goto LABEL_18;
              }

LABEL_16:
              sub_1000096C4(v8, &qword_10009EC78, &unk_10007E8D0);
              goto LABEL_17;
            }

LABEL_15:
            sub_10000A96C(v22);
            goto LABEL_16;
          }

          sub_10000A96C(v22);
          sub_10000A908(v8, v98);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_16;
          }

          v58 = v98;
        }

        v59 = *v58;
        v60 = *v50;
        sub_10000A96C(v8);
        v54 = v59 == *&v60;
        goto LABEL_31;
      }

      result = v43;
      v36 = v94;
      v30 = v95;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v38 >= v87)
    {
      break;
    }

    v37 = *(v88 + 8 * v38);
    ++v32;
    if (v37)
    {
      v32 = v38;
      goto LABEL_11;
    }
  }

  v71 = *(v96 + 2);
  if (v71)
  {
    v72 = (v104 + 56);
    v73 = (v96 + 40);

    v74 = v110;
    do
    {
      v77 = *(v73 - 1);
      v78 = *v73;

      v79 = sub_10000A0FC(v77, v78);
      v81 = v80;

      if (v81)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v74;
        v76 = v105;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000308CC();
          v74 = v108;
        }

        sub_100012C24(*(v74 + 56) + *(v104 + 72) * v79, v76);
        sub_100030E40(v79, v74);
        v75 = 0;
      }

      else
      {
        v75 = 1;
        v76 = v105;
      }

      (*v72)(v76, v75, 1, v9);
      sub_1000096C4(v76, &qword_10009FC90, &qword_10007C910);
      v73 += 2;
      --v71;
    }

    while (v71);

    v36 = v94;
  }

  else
  {
    v74 = *(v36 + 16);
  }

  *(v36 + 16) = v74;
  return result;
}

void sub_10004EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v5 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v5 - 8);
  v97 = &v75 - v6;
  v95 = sub_10000712C(&qword_10009EC78, &unk_10007E8D0);
  __chkstk_darwin(v95);
  v8 = &v75 - v7;
  v9 = type metadata accessor for ServiceEventValue(0);
  v94 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v91 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v90 = (&v75 - v13);
  v14 = __chkstk_darwin(v12);
  v89 = (&v75 - v15);
  v16 = __chkstk_darwin(v14);
  v88 = (&v75 - v17);
  v18 = __chkstk_darwin(v16);
  v92 = (&v75 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v75 - v21;
  v23 = __chkstk_darwin(v20);
  v76 = &v75 - v24;
  __chkstk_darwin(v23);
  v102 = &v75 - v25;
  v26 = *(a2 + 56);
  v84 = a2 + 56;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v83 = (v27 + 63) >> 6;

  v30 = 0;
  v86 = _swiftEmptyArrayStorage;
  v82 = a1;
  v77 = a2;
  while (v29)
  {
    v31 = v29;
LABEL_11:
    v29 = (v31 - 1) & v31;
    v33 = *(a1 + 16);
    if (!*(v33 + 16))
    {
      continue;
    }

    v87 = (v31 - 1) & v31;
    v34 = (*(a2 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v31)))));
    v35 = *v34;
    v36 = v34[1];

    v81 = v35;
    v37 = sub_10000A0FC(v35, v36);
    if ((v38 & 1) == 0)
    {

      v29 = v87;
      continue;
    }

    v39 = *(v33 + 56);
    v96 = *(v94 + 72);
    v40 = v76;
    sub_10000A908(v39 + v96 * v37, v76);
    sub_100012C24(v40, v102);
    v41 = *(v85 + 16);
    if (!v41)
    {
LABEL_45:

      sub_10000A96C(v102);
      a1 = v82;
      goto LABEL_46;
    }

    v42 = v85 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v93 = v36;
    while (1)
    {
      sub_10000A908(v42, v22);
      v43 = &v8[*(v95 + 48)];
      sub_10000A908(v22, v8);
      sub_10000A908(v102, v43);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_10000A96C(v22);
        sub_10000A908(v8, v89);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_16;
        }

        v49 = v89;
LABEL_30:
        v50 = *v49;
        v51 = *v43;
        sub_10000A96C(v8);
        v47 = v50 == *&v51;
LABEL_31:
        v36 = v93;
        if (v47)
        {
          goto LABEL_40;
        }

        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        sub_10000A96C(v22);
        sub_10000A908(v8, v91);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_16;
        }

        v45 = *v91;
        v46 = *v43;
        sub_10000A96C(v8);
        v47 = v45 == v46;
        goto LABEL_31;
      }

      sub_10000A96C(v22);
      sub_10000A908(v8, v90);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      v52 = *v90;
      v53 = *v43;
      sub_10000A96C(v8);
      if (v52 == v53)
      {
        goto LABEL_40;
      }

LABEL_17:
      v42 += v96;
      if (!--v41)
      {
        goto LABEL_45;
      }
    }

    v48 = v92;
    if (EnumCaseMultiPayload)
    {
      v36 = v93;
      if (EnumCaseMultiPayload != 1)
      {
LABEL_15:
        sub_10000A96C(v22);
LABEL_16:
        sub_1000096C4(v8, &qword_10009EC78, &unk_10007E8D0);
        goto LABEL_17;
      }

      sub_10000A96C(v22);
      sub_10000A908(v8, v88);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v49 = v88;
      goto LABEL_30;
    }

    sub_10000A908(v8, v92);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10000A96C(v22);

      v36 = v93;
      goto LABEL_16;
    }

    v79 = *v48;
    v78 = sub_100079E90();
    v55 = v54;
    v80 = v54;

    v100 = v78;
    v101 = v55;
    v56 = sub_100079E90();
    v58 = v57;

    v98 = v56;
    v99 = v58;
    sub_100025EBC();
    LOBYTE(v56) = sub_10007A2C0();

    sub_10000A96C(v22);
    sub_10000A96C(v8);
    v36 = v93;
    if ((v56 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_100023040(0, *(v86 + 2) + 1, 1, v86);
    }

    a1 = v82;
    v60 = *(v86 + 2);
    v59 = *(v86 + 3);
    if (v60 >= v59 >> 1)
    {
      v86 = sub_100023040((v59 > 1), v60 + 1, 1, v86);
    }

    sub_10000A96C(v102);
    v61 = v86;
    *(v86 + 2) = v60 + 1;
    v62 = &v61[16 * v60];
    *(v62 + 4) = v81;
    *(v62 + 5) = v36;
LABEL_46:
    a2 = v77;
    v29 = v87;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v32 >= v83)
    {
      break;
    }

    v31 = *(v84 + 8 * v32);
    ++v30;
    if (v31)
    {
      v30 = v32;
      goto LABEL_11;
    }
  }

  v63 = *(v86 + 2);
  if (v63)
  {
    v64 = (v94 + 56);
    v65 = (v86 + 40);

    v66 = v102;
    do
    {
      v69 = *(v65 - 1);
      v70 = *v65;

      v71 = sub_10000A0FC(v69, v70);
      v73 = v72;

      if (v73)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v66;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000308CC();
          v66 = v100;
        }

        v68 = v97;
        sub_100012C24(*(v66 + 56) + *(v94 + 72) * v71, v97);
        sub_100030E40(v71, v66);
        v67 = 0;
      }

      else
      {
        v67 = 1;
        v68 = v97;
      }

      (*v64)(v68, v67, 1, v9);
      sub_1000096C4(v68, &qword_10009FC90, &qword_10007C910);
      v65 += 2;
      --v63;
    }

    while (v63);

    a1 = v82;
  }

  else
  {
    v66 = *(a1 + 16);
  }

  *(a1 + 16) = v66;
}

uint64_t sub_10004F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v7 - 8);
  v9 = &v45[-v8];
  v55 = type metadata accessor for ServiceEventValue(0);
  v10 = *(v55 - 8);
  v11 = __chkstk_darwin(v55);
  result = __chkstk_darwin(v11);
  if (!*(a3 + 16))
  {
    return result;
  }

  v48 = v14;
  v51 = v3;
  v52 = &v45[-v13];
  sub_10000A908(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &v45[-v13]);
  v16 = a2 + 56;
  v15 = *(a2 + 56);
  v50 = a1;
  v17 = *(a1 + 16);
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v53 = v10;
  v54 = (v10 + 56);

  v22 = 0;
  v49 = v17;
LABEL_5:
  v23 = v22;
  if (!v20)
  {
    goto LABEL_7;
  }

  do
  {
    v22 = v23;
LABEL_10:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = a2;
    v26 = (*(a2 + 48) + ((v22 << 10) | (16 * v24)));
    v28 = *v26;
    v27 = v26[1];
    v29 = v17[2];

    if (!v29 || (v30 = sub_10000A0FC(v28, v27), (v31 & 1) == 0))
    {
      (*v54)(v9, 1, 1, v55);
      sub_1000096C4(v9, &qword_10009FC90, &qword_10007C910);
      sub_10000A908(v52, v48);
      LODWORD(v47) = swift_isUniquelyReferenced_nonNull_native();
      v56 = v17;
      v34 = sub_10000A0FC(v28, v27);
      v35 = v17[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_28;
      }

      if (v17[3] >= v37)
      {
        if (v47)
        {
          if (v33)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v47 = v34;
          v46 = v33;
          sub_1000308CC();
          v34 = v47;
          if (v46)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v46 = v33;
        sub_10003057C(v37, v47);
        v38 = sub_10000A0FC(v28, v27);
        if ((v46 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }

        v34 = v38;
        if (v46)
        {
LABEL_21:
          v40 = v34;

          v17 = v56;
          sub_100032B04(v48, v56[7] + *(v53 + 72) * v40);
          a2 = v25;
          goto LABEL_5;
        }
      }

      v17 = v56;
      v56[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v17[6] + 16 * v34);
      *v41 = v28;
      v41[1] = v27;
      sub_100012C24(v48, v17[7] + *(v53 + 72) * v34);
      v42 = v17[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_29;
      }

      v17[2] = v44;
      a2 = v25;
      goto LABEL_5;
    }

    v32 = v53;
    sub_10000A908(v17[7] + *(v53 + 72) * v30, v9);
    (*(v32 + 56))(v9, 0, 1, v55);

    sub_1000096C4(v9, &qword_10009FC90, &qword_10007C910);
    v23 = v22;
    a2 = v25;
  }

  while (v20);
LABEL_7:
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_10000A96C(v52);

      *(v50 + 16) = v17;
      return result;
    }

    v20 = *(v16 + 8 * v22);
    ++v23;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10004F83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v15 = &v54[-v14];
  result = __chkstk_darwin(v13);
  v19 = &v54[-v17];
  if (!*(a3 + 16))
  {
    return result;
  }

  v64 = v18;
  sub_10000A908(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v54[-v17]);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_10000A96C(v19);
  }

  v60 = a1;
  v61 = v3;
  v20 = v19[1];
  v57 = *v19;
  v58 = v11;
  v62 = v20;
  v63 = v8;
  v21 = *(a1 + 16);
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;

  v66 = a2;

  v27 = 0;
  v59 = v21;
  while (v25)
  {
    v28 = v25;
LABEL_14:
    v25 = (v28 - 1) & v28;
    if (v21[2])
    {
      v30 = (*(v66 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v32 = *v30;
      v31 = v30[1];

      v65 = v32;
      v33 = sub_10000A0FC(v32, v31);
      if (v34)
      {
        v35 = *(v63 + 72);
        sub_10000A908(v21[7] + v35 * v33, v15);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_10000A96C(v15);
        }

        else
        {
          v56 = v35;
          v36 = v15[1];
          v67 = *v15;
          v68 = v36;
          v70._countAndFlagsBits = v57;
          v70._object = v62;
          sub_100079F00(v70);
          v37 = v68;
          v38 = v64;
          *v64 = v67;
          *(v38 + 8) = v37;
          swift_storeEnumTagMultiPayload();
          sub_100012C24(v38, v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v21;
          v40 = sub_10000A0FC(v65, v31);
          v41 = v21[2];
          v42 = (v39 & 1) == 0;
          v43 = v41 + v42;
          if (__OFADD__(v41, v42))
          {
            goto LABEL_32;
          }

          if (v21[3] >= v43)
          {
            v47 = v56;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_24;
            }

            v53 = v40;
            isUniquelyReferenced_nonNull_native = v39;
            sub_1000308CC();
            LOBYTE(v39) = isUniquelyReferenced_nonNull_native;
            v40 = v53;
          }

          else
          {
            v44 = v39;
            sub_10003057C(v43, isUniquelyReferenced_nonNull_native);
            v45 = sub_10000A0FC(v65, v31);
            if ((v44 & 1) != (v46 & 1))
            {
              goto LABEL_34;
            }

            v40 = v45;
            LOBYTE(v39) = v44;
          }

          v47 = v56;
LABEL_24:
          if (v39)
          {
            v48 = v40;

            v21 = v69;
            sub_100032B04(v58, v69[7] + v48 * v47);
          }

          else
          {
            v21 = v69;
            v69[(v40 >> 6) + 8] |= 1 << v40;
            v49 = (v21[6] + 16 * v40);
            *v49 = v65;
            v49[1] = v31;
            sub_100012C24(v58, v21[7] + v40 * v47);
            v50 = v21[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_33;
            }

            v21[2] = v52;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      *(v60 + 16) = v21;
      return result;
    }

    v28 = *(v22 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10004FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v15 = (&v56 - v14);
  result = __chkstk_darwin(v13);
  v19 = (&v56 - v17);
  if (!*(a3 + 16))
  {
    return result;
  }

  v66 = v18;
  sub_10000A908(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v56 - v17);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_10000A96C(v19);
  }

  v62 = a1;
  v63 = v3;
  v20 = v19[1];
  v59 = *v19;
  v60 = v11;
  v64 = v20;
  v65 = v8;
  v21 = *(a1 + 16);
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;

  v72 = a2;

  v27 = 0;
  v61 = v21;
  while (v25)
  {
    v28 = v25;
LABEL_14:
    v25 = (v28 - 1) & v28;
    if (v21[2])
    {
      v30 = (*(v72 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v32 = *v30;
      v31 = v30[1];

      v67 = v32;
      v33 = sub_10000A0FC(v32, v31);
      if (v34)
      {
        v35 = *(v65 + 72);
        sub_10000A908(v21[7] + v35 * v33, v15);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_10000A96C(v15);
        }

        else
        {
          v36 = *v15;
          v37 = v15[1];
          v57 = v35;
          v58 = v37;
          v70 = v36;
          v71 = v37;
          v68 = v59;
          v69 = v64;

          v68 = sub_100079F80();
          v69 = v38;
          sub_100079EF0();

          v39 = v69;
          v40 = v66;
          *v66 = v68;
          *(v40 + 8) = v39;
          swift_storeEnumTagMultiPayload();
          sub_100012C24(v40, v60);
          LODWORD(v58) = swift_isUniquelyReferenced_nonNull_native();
          v70 = v21;
          v42 = sub_10000A0FC(v67, v31);
          v43 = v21[2];
          v44 = (v41 & 1) == 0;
          v45 = v43 + v44;
          if (__OFADD__(v43, v44))
          {
            goto LABEL_32;
          }

          if (v21[3] >= v45)
          {
            v49 = v57;
            if (v58)
            {
              goto LABEL_24;
            }

            v55 = v42;
            LODWORD(v58) = v41;
            sub_1000308CC();
            LOBYTE(v41) = v58;
            v42 = v55;
          }

          else
          {
            v46 = v41;
            sub_10003057C(v45, v58);
            v47 = sub_10000A0FC(v67, v31);
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_34;
            }

            v42 = v47;
            LOBYTE(v41) = v46;
          }

          v49 = v57;
LABEL_24:
          if (v41)
          {
            v50 = v42;

            v21 = v70;
            sub_100032B04(v60, v70[7] + v50 * v49);
          }

          else
          {
            v21 = v70;
            v70[(v42 >> 6) + 8] |= 1 << v42;
            v51 = (v21[6] + 16 * v42);
            *v51 = v67;
            v51[1] = v31;
            sub_100012C24(v60, v21[7] + v42 * v49);
            v52 = v21[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_33;
            }

            v21[2] = v54;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      *(v62 + 16) = v21;
      return result;
    }

    v28 = *(v22 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10005013C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v4 - 8);
  v50 = &v45 - v5;
  v45 = a1;
  v6 = *(a1 + 16);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v47 = v6;
  v48 = _swiftEmptyArrayStorage;
  v46 = v6 + 64;
  while (v10)
  {
LABEL_12:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (*(v6 + 48) + ((v14 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    if (!*(a2 + 16))
    {

LABEL_21:
      v26 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100023040(0, *(v26 + 2) + 1, 1, v26);
        v26 = result;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v48 = v26;
      if (v28 >= v27 >> 1)
      {
        result = sub_100023040((v27 > 1), v28 + 1, 1, v48);
        v48 = result;
      }

      v29 = v48;
      *(v48 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v19;
      *(v30 + 5) = v18;
      goto LABEL_6;
    }

    sub_10007A730();

    sub_100079EC0();
    v20 = sub_10007A760();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = (*(a2 + 48) + 16 * v22);
      v25 = *v24 == v19 && v24[1] == v18;
      if (v25 || (sub_10007A610() & 1) != 0)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    v7 = v46;
    v6 = v47;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_12;
    }
  }

  v31 = *(v48 + 2);
  if (v31)
  {
    v32 = (v48 + 40);
    do
    {
      v36 = *(v32 - 1);
      v35 = *v32;

      v37 = sub_10000A0FC(v36, v35);
      v39 = v38;

      if (v39)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v6;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000308CC();
          v6 = v49;
        }

        v41 = *(v6 + 56);
        v42 = type metadata accessor for ServiceEventValue(0);
        v43 = *(v42 - 8);
        v44 = v41 + *(v43 + 72) * v37;
        v34 = v50;
        sub_100012C24(v44, v50);
        sub_100030E40(v37, v6);
        (*(v43 + 56))(v34, 0, 1, v42);
      }

      else
      {
        v33 = type metadata accessor for ServiceEventValue(0);
        v34 = v50;
        (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
      }

      sub_1000096C4(v34, &qword_10009FC90, &qword_10007C910);
      v32 += 2;
      --v31;
    }

    while (v31);
  }

  *(v45 + 16) = v6;
  return result;
}

void sub_100050560(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v4 - 8);
  v6 = v28 - v5;
  v29 = a1;
  v7 = *(a1 + 16);
  v8 = a2 + 56;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v28[1] = v7;
  v30 = a2;
  v31 = v6;
  while (v11)
  {
LABEL_11:
    v17 = (*(a2 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10000A0FC(v19, v18);
    v22 = v21;

    if (v22)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v7;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000308CC();
        v7 = v32;
      }

      v24 = *(v7 + 56);
      v25 = type metadata accessor for ServiceEventValue(0);
      v26 = *(v25 - 8);
      v27 = v24 + *(v26 + 72) * v20;
      v15 = v31;
      sub_100012C24(v27, v31);
      sub_100030E40(v20, v7);
      (*(v26 + 56))(v15, 0, 1, v25);
      a2 = v30;
    }

    else
    {
      v14 = type metadata accessor for ServiceEventValue(0);
      v15 = v31;
      (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
    }

    v11 &= v11 - 1;
    sub_1000096C4(v15, &qword_10009FC90, &qword_10007C910);
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      *(v29 + 16) = v7;
      return;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100050804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = __chkstk_darwin(v4 - 8);
  v94 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = &v79 - v7;
  v96 = sub_100079D20();
  v8 = *(v96 - 8);
  __chkstk_darwin(v96);
  v98 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100079E70();
  v10 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100079D10();
  v12 = *(v95 - 8);
  v13 = __chkstk_darwin(v95);
  v91 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v79 - v15;
  v108 = type metadata accessor for ServiceEventValue(0);
  v16 = __chkstk_darwin(v108);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v86 = (&v79 - v19);
  __chkstk_darwin(v18);
  v104 = (&v79 - v21);
  v105 = v20;
  v22 = *(a1 + 16);
  v23 = a2 + 56;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 56);
  v27 = (v24 + 63) >> 6;
  v107 = (v20 + 56);
  v90 = (v10 + 8);
  v89 = (v8 + 8);
  v88 = (v12 + 16);
  v85 = (v12 + 8);
  v28 = a2;

  v29 = 0;
  v101 = xmmword_10007B7C0;
  v102 = v22;
  v30 = v22;
  while (v26)
  {
LABEL_10:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = (*(v28 + 48) + ((v29 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];
    v37 = *(v30 + 16);

    if (!v37)
    {
      goto LABEL_4;
    }

    v111 = v35;
    v38 = sub_10000A0FC(v35, v36);
    if (v39)
    {
      v40 = v104;
      sub_10000A908(*(v30 + 56) + *(v105 + 72) * v38, v104);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10000A96C(v40);
        goto LABEL_14;
      }

      v79 = a1;
      v53 = *v40;
      v99 = v40[1];
      v100 = v53;
      v54 = v92;
      sub_100079E60();
      v100 = sub_100079E30();
      v56 = v55;

      (*v90)(v54, v93);
      v57 = v100;
      if (v56 >> 60 == 15)
      {
        v57 = 0;
      }

      v100 = v57;
      if (v56 >> 60 == 15)
      {
        v56 = 0xC000000000000000;
      }

      v99 = sub_1000513E4(&qword_10009E280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      sub_100079CF0();
      v58 = v100;
      v83 = v56;
      sub_100007230(v100, v56);
      v59 = v103;
      sub_10000A358(v58, v56, v98);
      v103 = v59;
      sub_1000071DC(v58, v56);
      v60 = v98;
      v61 = v96;
      sub_100079CE0();
      sub_1000071DC(v100, v83);
      (*v89)(v60, v61);
      (*v88)(v91, v97, v95);
      sub_1000513E4(&qword_10009F118, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      sub_100079FA0();
      v83 = v109;
      v62 = *(v109 + 16);
      v63 = _swiftEmptyArrayStorage;
      v82 = v110;
      v81 = v62;
      if (v110 != v62)
      {
        v80 = v83 + 32;
        v69 = v82;
        v84 = v28;
        while ((v82 & 0x8000000000000000) == 0)
        {
          if (v69 >= *(v83 + 16))
          {
            goto LABEL_40;
          }

          v70 = *(v80 + v69);
          sub_10000712C(&qword_10009F120, &unk_10007E4C0);
          v71 = swift_allocObject();
          *(v71 + 16) = v101;
          *(v71 + 56) = &type metadata for UInt8;
          *(v71 + 64) = &protocol witness table for UInt8;
          *(v71 + 32) = v70;
          v72 = sub_100079E50();
          v99 = v73;
          v100 = v72;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_100023040(0, *(v63 + 2) + 1, 1, v63);
          }

          v75 = *(v63 + 2);
          v74 = *(v63 + 3);
          v76 = v63;
          if (v75 >= v74 >> 1)
          {
            v76 = sub_100023040((v74 > 1), v75 + 1, 1, v63);
          }

          ++v69;
          *(v76 + 2) = v75 + 1;
          v63 = v76;
          v77 = &v76[16 * v75];
          v78 = v99;
          *(v77 + 4) = v100;
          *(v77 + 5) = v78;
          v28 = v84;
          if (v81 == v69)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_39;
      }

LABEL_25:
      v100 = v63;
      (*v85)(v97, v95);

      v109 = v63;
      sub_10000712C(&qword_10009E130, &qword_10007BCF0);
      sub_10000A8A4();
      v99 = sub_100079DC0();
      v65 = v64;

      v66 = v86;
      *v86 = v99;
      *(v66 + 8) = v65;
      swift_storeEnumTagMultiPayload();
      v67 = v87;
      sub_100012C24(v66, v87);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v30;
      sub_10003102C(v67, v111, v36, isUniquelyReferenced_nonNull_native);

      v30 = v109;
      a1 = v79;
    }

    else
    {
LABEL_14:
      if (*(v30 + 16) && (v41 = sub_10000A0FC(v111, v36), (v42 & 1) != 0))
      {
        v84 = v28;
        v79 = a1;
        v43 = *(v30 + 56);
        v45 = v105;
        v44 = v106;
        v99 = *(v105 + 72);
        v46 = v111;
        sub_10000A908(v43 + v99 * v41, v106);
        v47 = *(v45 + 56);
        v48 = 1;
        v100 = v47;
        v47(v44, 0, 1, v108);
        sub_1000096C4(v44, &qword_10009FC90, &qword_10007C910);
        v49 = sub_10000A0FC(v46, v36);
        LOBYTE(v44) = v50;

        if (v44)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v109 = v30;
          if (!v51)
          {
            sub_1000308CC();
            v30 = v109;
          }

          v52 = v94;
          sub_100012C24(*(v30 + 56) + v49 * v99, v94);
          sub_100030E40(v49, v30);
          v48 = 0;
        }

        else
        {
          v52 = v94;
        }

        v100(v52, v48, 1, v108);
        sub_1000096C4(v52, &qword_10009FC90, &qword_10007C910);
        a1 = v79;
        v28 = v84;
      }

      else
      {
LABEL_4:
        v31 = v106;
        (*v107)(v106, 1, 1, v108);

        sub_1000096C4(v31, &qword_10009FC90, &qword_10007C910);
      }
    }
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v27)
    {

      *(a1 + 16) = v30;
      return;
    }

    v26 = *(v23 + 8 * v32);
    ++v29;
    if (v26)
    {
      v29 = v32;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_100051250(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100051298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100051350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100051398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000513E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100051444()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A47C8);
  sub_1000070F4(v0, qword_1000A47C8);
  return sub_100079B90();
}