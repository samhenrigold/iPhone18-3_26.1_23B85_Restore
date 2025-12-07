uint64_t sub_10048F0A0()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  v3 = *(v2 + 632);
  if (v0)
  {
    v4 = sub_10048FF88;
  }

  else
  {
    v4 = sub_10048F1CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10048F1CC()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_10002CDC0(v0 + 33, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[84] = v3;
  *v3 = v0;
  v3[1] = sub_10048F2F0;

  return v5(v1, v2);
}

uint64_t sub_10048F2F0(uint64_t a1)
{
  v2 = *(*v1 + 632);
  *(*v1 + 680) = a1;

  return _swift_task_switch(sub_10048F408, v2, 0);
}

uint64_t sub_10048F408()
{
  v93 = v0;
  result = sub_10000C60C((v0 + 264));
  v2 = 0;
  v3 = *(v0 + 680);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v91 = *(v0 + 680);
  v8 = -1 << *(v91 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v87 = (v0 + 456);
  v88 = (*(v0 + 528) + 48);
  v89 = v5;
  v90 = v10;
  if ((v7 & v4) == 0)
  {
    while (1)
    {
LABEL_4:
      v11 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v11);
      ++v2;
      if (v9)
      {
        v2 = v11;
        goto LABEL_8;
      }
    }

    sub_10000C60C((v0 + 64));

    v85 = *(v0 + 8);

    return v85(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  while (1)
  {
LABEL_8:
    v12 = *(v0 + 592);
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    sub_10049779C(*(v91 + 48) + *(*(v0 + 528) + 72) * (__clz(__rbit64(v9)) | (v2 << 6)), v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v12, v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 576);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v28 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v28 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_26:
      v31 = v28;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload)
    {
      v29 = *v87;
      v30 = *(v0 + 448);
      sub_100497804(v16, *v87, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v30) = *(v29 + *(v30 + 64));
      sub_10049786C(v29, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v30)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }

    sub_100497804(v16, *(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C7CC() & 0x4000000000) == 0 && (sub_10032C7CC() & 0x8000000000) == 0)
    {
LABEL_37:
      sub_10049786C(*(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      goto LABEL_38;
    }

    if ((sub_10032C7CC() & 0x4000000000) != 0 || (sub_10032C8C4() & 8) != 0)
    {
      v16 = *(v0 + 496);
      v28 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      goto LABEL_26;
    }

    result = NWEndpoint.nw.getter();
    if (!result)
    {
      break;
    }

    device_name = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (!device_name)
    {
      goto LABEL_37;
    }

    v18 = String.init(cString:)();
    v20 = v19;
    if ((sub_10032C7CC() & 0x4000000000) != 0)
    {
      v22 = *(v0 + 472);
      v21 = *(v0 + 480);
      v23 = *(v0 + 464);
      (*(v22 + 104))(v21, *(v0 + 688), v23);
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1007F5670;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100026764();
      *(v24 + 32) = v18;
      *(v24 + 40) = v20;
      SFString.format(_:)();

      (*(v22 + 8))(v21, v23);
    }

    v25 = *(v0 + 496);
    v26._countAndFlagsBits = 4408910;
    v26._object = 0xE300000000000000;
    v27 = String.hasPrefix(_:)(v26);

    sub_10049786C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if (v27)
    {
      goto LABEL_28;
    }

LABEL_38:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = Strong;
      sub_10049779C(*(v0 + 584), *(v0 + 568), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v52 = swift_getEnumCaseMultiPayload();
      v53 = *(v0 + 568);
      v54 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v55 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      if (v52 > 1)
      {
        if (v52 != 2)
        {
          v84 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_56:
          sub_10049786C(v53, v84);
          goto LABEL_57;
        }

        v54 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v55 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v63 = (v0 + 432);
        v62 = (v0 + 440);
        v64 = 28;
      }

      else
      {
        if (!v52)
        {
          sub_100497804(v53, *(v0 + 488), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          result = NWEndpoint.nw.getter();
          if (!result)
          {
            goto LABEL_63;
          }

          contact_id = nw_endpoint_get_contact_id();
          swift_unknownObjectRelease();
          v57 = contact_id;
          v58 = *(v0 + 488);
          if (v57)
          {
            v59 = String.init(cString:)();
            v61 = v60;
            sub_10049786C(v58, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
            goto LABEL_48;
          }

          v84 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v53 = *(v0 + 488);
          goto LABEL_56;
        }

        v63 = (v0 + 448);
        v62 = (v0 + 456);
        v64 = 44;
      }

      v65 = *v62;
      v66 = *v63;
      sub_100497804(v53, *v62, v55);
      v67 = (v65 + *(v66 + v64));
      v59 = *v67;
      v61 = v67[1];

      sub_10049786C(v65, v54);
      if (v61)
      {
LABEL_48:
        v68 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
        swift_beginAccess();
        sub_1002A9938(v51 + v68, v0 + 184);
        v69 = *(v0 + 208);
        v70 = *(v0 + 216);
        sub_10002CDC0((v0 + 184), v69);
        v71 = (*(v70 + 104))(v59, v61, v69, v70);

        sub_10000C60C((v0 + 184));
        if (v71)
        {
          if (qword_1009738C0 != -1)
          {
            swift_once();
          }

          v72 = *(v0 + 584);
          v73 = *(v0 + 560);
          v74 = type metadata accessor for Logger();
          sub_10000C4AC(v74, qword_10097F240);
          sub_10049779C(v72, v73, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          v77 = os_log_type_enabled(v75, v76);
          v78 = *(v0 + 560);
          if (v77)
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v92 = v80;
            *v79 = 136315138;
            v86 = sub_10032DA30();
            v82 = v81;
            sub_10049786C(v78, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v83 = sub_10000C4E4(v86, v82, &v92);

            *(v79 + 4) = v83;
            _os_log_impl(&_mh_execute_header, v75, v76, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v79, 0xCu);
            sub_10000C60C(v80);

            swift_unknownObjectRelease();
            goto LABEL_28;
          }

          swift_unknownObjectRelease();

          v31 = type metadata accessor for SDAirDropDiscoveredEndpoint;
          v16 = v78;
LABEL_27:
          sub_10049786C(v16, v31);
LABEL_28:
          v32 = *(v0 + 584);
          v33 = *(v0 + 520);
          v34 = *(v0 + 424);
          *(swift_task_alloc() + 16) = v32;
          sub_1002CC594(sub_100498518, &_swiftEmptySetSingleton, v34);

          v35 = (*v88)(v34, 1, v33);
          v36 = *(v0 + 584);
          if (v35 == 1)
          {
            v37 = *(v0 + 544);
            v38 = *(v0 + 536);
            sub_100005508(*(v0 + 424), &qword_1009763E0, &qword_1007F95D0);
            sub_10049779C(v36, v38, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v37, v38);
            v39 = (v0 + 544);
          }

          else
          {
            sub_100497804(*(v0 + 424), *(v0 + 552), type metadata accessor for SDAirDropDiscoveredEndpoint);
            v40 = sub_10032FEAC();
            v41 = sub_10032FEAC();
            v42 = *(v0 + 584);
            if (v41 >= v40)
            {
              v48 = *(v0 + 544);
              v49 = *(v0 + 536);
              sub_10049779C(*(v0 + 584), v49, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v48, v49);
              v47 = v48;
            }

            else
            {
              v43 = *(v0 + 552);
              v44 = *(v0 + 544);
              v45 = *(v0 + 536);
              v46 = *(v0 + 416);
              sub_10049779C(v43, v45, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v44, v45);
              sub_10049786C(v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10036E788(v43, v46);
              sub_100005508(v46, &qword_1009763E0, &qword_1007F95D0);
              sub_10049779C(v42, v45, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v44, v45);
              v47 = v44;
            }

            sub_10049786C(v47, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v39 = (v0 + 552);
          }

          sub_10049786C(*v39, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v5 = v89;
          goto LABEL_35;
        }
      }

LABEL_57:
      swift_unknownObjectRelease();
    }

LABEL_35:
    v10 = v90;
    v9 &= v9 - 1;
    result = sub_10049786C(*(v0 + 584), type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (!v9)
    {
      goto LABEL_4;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10048FF88()
{
  v86 = v0;

  v2 = 0;
  v3 = -1;
  v4 = -1 << *(&_swiftEmptySetSingleton + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(&_swiftEmptySetSingleton + 7);
  v6 = (63 - v4) >> 6;
  v82 = (v0 + 456);
  v83 = (*(v0 + 528) + 48);
  v84 = v6;
  if (!v5)
  {
    while (1)
    {
LABEL_4:
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v7 >= v6)
      {
        break;
      }

      v5 = *(&_swiftEmptySetSingleton + v7 + 7);
      ++v2;
      if (v5)
      {
        v2 = v7;
        goto LABEL_8;
      }
    }

    sub_10000C60C((v0 + 64));

    v80 = *(v0 + 8);

    return v80(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  while (1)
  {
LABEL_8:
    v8 = *(v0 + 592);
    v9 = *(v0 + 584);
    v10 = *(v0 + 576);
    sub_10049779C(*(&_swiftEmptySetSingleton + 6) + *(*(v0 + 528) + 72) * (__clz(__rbit64(v5)) | (v2 << 6)), v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v8, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v9, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 576);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_26:
      v27 = v24;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload)
    {
      v25 = *v82;
      v26 = *(v0 + 448);
      sub_100497804(v12, *v82, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v26) = *(v25 + *(v26 + 64));
      sub_10049786C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v26)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }

    sub_100497804(v12, *(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C7CC() & 0x4000000000) == 0 && (sub_10032C7CC() & 0x8000000000) == 0)
    {
LABEL_37:
      sub_10049786C(*(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      goto LABEL_38;
    }

    if ((sub_10032C7CC() & 0x4000000000) != 0 || (sub_10032C8C4() & 8) != 0)
    {
      v12 = *(v0 + 496);
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      goto LABEL_26;
    }

    result = NWEndpoint.nw.getter();
    if (!result)
    {
      break;
    }

    device_name = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (!device_name)
    {
      goto LABEL_37;
    }

    v14 = String.init(cString:)();
    v16 = v15;
    if ((sub_10032C7CC() & 0x4000000000) != 0)
    {
      v18 = *(v0 + 472);
      v17 = *(v0 + 480);
      v19 = *(v0 + 464);
      (*(v18 + 104))(v17, *(v0 + 688), v19);
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100026764();
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      SFString.format(_:)();

      (*(v18 + 8))(v17, v19);
    }

    v21 = *(v0 + 496);
    v22._countAndFlagsBits = 4408910;
    v22._object = 0xE300000000000000;
    v23 = String.hasPrefix(_:)(v22);

    sub_10049786C(v21, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_38:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      sub_10049779C(*(v0 + 584), *(v0 + 568), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 568);
      v50 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v51 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      if (v48 > 1)
      {
        if (v48 != 2)
        {
          v79 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_56:
          sub_10049786C(v49, v79);
          goto LABEL_57;
        }

        v50 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v51 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v58 = (v0 + 432);
        v57 = (v0 + 440);
        v59 = 28;
      }

      else
      {
        if (!v48)
        {
          sub_100497804(v49, *(v0 + 488), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          result = NWEndpoint.nw.getter();
          if (!result)
          {
            goto LABEL_63;
          }

          contact_id = nw_endpoint_get_contact_id();
          swift_unknownObjectRelease();
          v53 = *(v0 + 488);
          if (contact_id)
          {
            v54 = String.init(cString:)();
            v56 = v55;
            sub_10049786C(v53, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
            goto LABEL_48;
          }

          v79 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v49 = *(v0 + 488);
          goto LABEL_56;
        }

        v58 = (v0 + 448);
        v57 = (v0 + 456);
        v59 = 44;
      }

      v60 = *v57;
      v61 = *v58;
      sub_100497804(v49, *v57, v51);
      v62 = (v60 + *(v61 + v59));
      v54 = *v62;
      v56 = v62[1];

      sub_10049786C(v60, v50);
      if (v56)
      {
LABEL_48:
        v63 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
        swift_beginAccess();
        sub_1002A9938(v47 + v63, v0 + 184);
        v64 = *(v0 + 208);
        v65 = *(v0 + 216);
        sub_10002CDC0((v0 + 184), v64);
        v66 = (*(v65 + 104))(v54, v56, v64, v65);

        sub_10000C60C((v0 + 184));
        if (v66)
        {
          if (qword_1009738C0 != -1)
          {
            swift_once();
          }

          v67 = *(v0 + 584);
          v68 = *(v0 + 560);
          v69 = type metadata accessor for Logger();
          sub_10000C4AC(v69, qword_10097F240);
          sub_10049779C(v67, v68, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          v72 = os_log_type_enabled(v70, v71);
          v73 = *(v0 + 560);
          if (v72)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v85 = v75;
            *v74 = 136315138;
            v81 = sub_10032DA30();
            v77 = v76;
            sub_10049786C(v73, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v78 = sub_10000C4E4(v81, v77, &v85);

            *(v74 + 4) = v78;
            _os_log_impl(&_mh_execute_header, v70, v71, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v74, 0xCu);
            sub_10000C60C(v75);

            swift_unknownObjectRelease();
            goto LABEL_28;
          }

          swift_unknownObjectRelease();

          v27 = type metadata accessor for SDAirDropDiscoveredEndpoint;
          v12 = v73;
LABEL_27:
          sub_10049786C(v12, v27);
LABEL_28:
          v28 = *(v0 + 584);
          v29 = *(v0 + 520);
          v30 = *(v0 + 424);
          *(swift_task_alloc() + 16) = v28;
          sub_1002CC594(sub_100498518, &_swiftEmptySetSingleton, v30);

          v31 = (*v83)(v30, 1, v29);
          v32 = *(v0 + 584);
          if (v31 == 1)
          {
            v33 = *(v0 + 544);
            v34 = *(v0 + 536);
            sub_100005508(*(v0 + 424), &qword_1009763E0, &qword_1007F95D0);
            sub_10049779C(v32, v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v33, v34);
            v35 = (v0 + 544);
          }

          else
          {
            sub_100497804(*(v0 + 424), *(v0 + 552), type metadata accessor for SDAirDropDiscoveredEndpoint);
            v36 = sub_10032FEAC();
            v37 = sub_10032FEAC();
            v38 = *(v0 + 584);
            if (v37 >= v36)
            {
              v44 = *(v0 + 544);
              v45 = *(v0 + 536);
              sub_10049779C(*(v0 + 584), v45, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v44, v45);
              v43 = v44;
            }

            else
            {
              v39 = *(v0 + 552);
              v40 = *(v0 + 544);
              v41 = *(v0 + 536);
              v42 = *(v0 + 416);
              sub_10049779C(v39, v41, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v40, v41);
              sub_10049786C(v40, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10036E788(v39, v42);
              sub_100005508(v42, &qword_1009763E0, &qword_1007F95D0);
              sub_10049779C(v38, v41, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v40, v41);
              v43 = v40;
            }

            sub_10049786C(v43, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v35 = (v0 + 552);
          }

          sub_10049786C(*v35, type metadata accessor for SDAirDropDiscoveredEndpoint);
          goto LABEL_35;
        }
      }

LABEL_57:
      swift_unknownObjectRelease();
    }

LABEL_35:
    v6 = v84;
    v5 &= v5 - 1;
    result = sub_10049786C(*(v0 + 584), type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (!v5)
    {
      goto LABEL_4;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_100490B08(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100490BB8, v4, 0);
}

uint64_t sub_100490BB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v5 = swift_allocObject();
  v0[7] = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = sub_10028088C(&qword_10097F358, &qword_1008050E8);
  *v7 = v0;
  v7[1] = sub_100490D38;
  v9 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v1, v4, 0xD000000000000024, 0x8000000100791D80, sub_100498538, v6, v8);
}

uint64_t sub_100490D38()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_100490E80, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100490E80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100490EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  sub_10049779C(a1, &v38 - v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10049786C(v18, v24);
    device_id = 0;
    v23 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_100497804(v18, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v25 = &v6[*(v4 + 28)];
      device_id = *v25;
      v23 = v25[1];

      v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v27 = v6;
    }

    else
    {
      sub_100497804(v18, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
        goto LABEL_41;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        device_id = String.init(cString:)();
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v27 = v12;
    }

    sub_10049786C(v27, v26);
  }

  sub_10049779C(a2, v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10049786C(v16, v32);
    v29 = 0;
    v31 = 0;
    if (!v23)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v28)
  {
    sub_100497804(v16, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v33 = &v6[*(v4 + 28)];
    v29 = *v33;
    v31 = v33[1];

    v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v35 = v6;
    goto LABEL_34;
  }

  sub_100497804(v16, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v29 = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (v29)
    {
      v29 = String.init(cString:)();
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v35 = v10;
LABEL_34:
    sub_10049786C(v35, v34);
    if (!v23)
    {
LABEL_35:
      if (!v31)
      {
        v37 = 1;
        return v37 & 1;
      }

      v37 = 0;
LABEL_37:

      return v37 & 1;
    }

LABEL_24:
    if (v31)
    {
      if (device_id == v29 && v23 == v31)
      {

        v37 = 1;
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v37 = 0;
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_100491358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_10097F240);
  sub_1002A9938(a2, v45);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41 = v8;
    v17 = a4;
    v18 = v16;
    v44[0] = v16;
    *v15 = 136315138;
    sub_1002A9938(v45, v43);
    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_10000C60C(v45);
    v22 = sub_10000C4E4(v19, v21, v44);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Connectable (%s) requires Bonjour discovery", v15, 0xCu);
    sub_10000C60C(v18);
    a4 = v17;
    v8 = v41;
  }

  else
  {

    sub_10000C60C(v45);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = a2[3];
    v26 = a2[4];
    sub_10002CDC0(a2, v25);
    v27 = (*(v26 + 16))(v25, v26);
    v29 = v28;
    v30 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v31 = *(v30 - 8);
    (*(v31 + 16))(v11, v42, v30);
    (*(v31 + 56))(v11, 0, 1, v30);
    swift_beginAccess();
    sub_1002B1B98(v11, v27, v29);
    swift_endAccess();
  }

  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  v33 = swift_allocObject();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1002A9938(a2, v45);
  v35 = qword_1009735E0;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = static AirDropActor.shared;
  v37 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v38 = swift_allocObject();
  v38[2] = v36;
  v38[3] = v37;
  v38[4] = v33;
  sub_1000121F8(v45, (v38 + 5));
  v38[10] = a4;

  sub_1002B281C(0, 0, v8, &unk_100805250, v38);
}

uint64_t sub_100491848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v5[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_10049197C, v7, 0);
}

uint64_t sub_10049197C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_100292DC0(_swiftEmptyArrayStorage);
    sub_100481A44(v3);
  }

  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_100491A94;

  return sub_10002ED10(0x70801D946C940000, 2, 0, 0, 1);
}

uint64_t sub_100491A94()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_100491DD0;
  }

  else
  {
    v7 = sub_100491C1C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100491C1C()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1002A9938(v3, v0 + 16);
  v7 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  sub_1000121F8((v0 + 16), (v8 + 4));
  v8[9] = v5;

  sub_1002B3098(0, 0, v2, &unk_100805260, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100491DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100491E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v6 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100491F88, v7, 0);
}

uint64_t sub_100491F88()
{
  v47 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097F240);
  sub_1002A9938(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315138;
    sub_1002A9938((v0 + 2), (v0 + 7));
    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_10000C60C(v0 + 2);
    v10 = sub_10000C4E4(v7, v9, &v46);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Bonjour discovery timed out for (%s)", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {

    sub_10000C60C(v0 + 2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[30] + 56))(v0[28], 1, 1, v0[29]);
LABEL_14:
    sub_100005508(v0[28], &qword_1009763B8, &qword_1007F95A8);
    goto LABEL_18;
  }

  v12 = Strong;
  v13 = v0[25];
  v14 = v13[3];
  v15 = v13[4];
  sub_10002CDC0(v13, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = v17;
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations;
  swift_beginAccess();
  v20 = *&v12[v19];
  if (*(v20 + 16))
  {
    v21 = sub_100012854(v16, v18);
    v23 = v22;

    if (v23)
    {
      (*(v0[30] + 16))(v0[28], *(v20 + 56) + *(v0[30] + 72) * v21, v0[29]);
      v24 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v24 = 1;
LABEL_13:
  v25 = v0[29];
  v26 = v0[30];
  v27 = v0[28];
  v28 = *(v26 + 56);
  v28(v27, v24, 1, v25);
  swift_endAccess();

  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    goto LABEL_14;
  }

  (*(v0[30] + 32))(v0[31], v0[28], v0[29]);
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = v0[29];
    v32 = v0[27];
    v34 = v13[3];
    v33 = v13[4];
    sub_10002CDC0(v0[25], v34);
    v35 = (*(v33 + 16))(v34, v33);
    v37 = v36;
    v28(v32, 1, 1, v31);
    swift_beginAccess();
    sub_1002B1B98(v32, v35, v37);
    swift_endAccess();
  }

  v39 = v0[30];
  v38 = v0[31];
  v40 = v0[29];
  v41 = type metadata accessor for SFAirDropSend.Failure();
  sub_100005430(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  v42 = swift_allocError();
  *v43 = 1;
  (*(*(v41 - 8) + 104))(v43, enum case for SFAirDropSend.Failure.resolveFailure(_:), v41);
  v0[24] = v42;
  CheckedContinuation.resume(throwing:)();
  (*(v39 + 8))(v38, v40);
LABEL_18:

  v44 = v0[1];

  return v44();
}

uint64_t sub_1004924A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[9] = v9;
  v10 = type metadata accessor for UUID();
  v6[10] = v10;
  v6[11] = *(v10 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6[16] = static AirDropActor.shared;
  v11 = swift_task_alloc();
  v6[17] = v11;
  *v11 = v6;
  v11[1] = sub_10049266C;

  return sub_1004932E8(v9, a2, a3);
}

uint64_t sub_10049266C()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10049277C, v1, 0);
}

uint64_t sub_10049277C()
{
  v47 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *(v2 + 48);
  v0[18] = v4;
  v0[19] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[6];
    sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    if (v5)
    {
      v6 = v0[6];
      v7 = swift_task_alloc();
      v0[20] = v7;
      *v7 = v0;
      v7[1] = sub_100492CFC;
      v8 = v0[8];
      v9 = v0[5];

      return sub_1004932E8(v8, v9, v6);
    }

    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v32 = v0[6];
    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_10097F240);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = v0[5];
      v36 = v0[6];
      v39 = v0[3];
      v38 = v0[4];
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_10000C4E4(v39, v38, &v46);
      *(v40 + 12) = 2080;
      if (v36)
      {
        v41 = v37;
      }

      else
      {
        v41 = 7104878;
      }

      if (v36)
      {
        v42 = v32;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      v43 = sub_10000C4E4(v41, v42, &v46);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to match sender with existing connectable endpoints senderID: %s - contactID: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    v31 = 1;
  }

  else
  {
    v11 = *(v2 + 32);
    v11(v0[15], v3, v1);
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[10];
    v15 = v0[11];
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097F240);
    (*(v15 + 16))(v12, v13, v14);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[14];
    v22 = v0[10];
    v21 = v0[11];
    if (v19)
    {
      v45 = v11;
      v24 = v0[3];
      v23 = v0[4];
      v25 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_10000C4E4(v24, v23, &v46);
      *(v25 + 12) = 2080;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v21 + 8))(v20, v22);
      v29 = v26;
      v11 = v45;
      v30 = sub_10000C4E4(v29, v28, &v46);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "Matched senderID %s to %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v11(v0[2], v0[15], v0[10]);
    v31 = 0;
  }

  (*(v0[11] + 56))(v0[2], v31, 1, v0[10]);

  v44 = v0[1];

  return v44();
}

uint64_t sub_100492CFC()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_100492E0C, v1, 0);
}

uint64_t sub_100492E0C()
{
  v40 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  if ((*(v0 + 144))(v2, 1, v1) == 1)
  {
    sub_100005508(v2, &unk_100976120, &qword_1007F9260);
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 48);
    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097F240);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v10 = *(v0 + 24);
      v9 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_10000C4E4(v10, v9, &v39);
      *(v11 + 12) = 2080;
      if (v7)
      {
        v12 = v8;
      }

      else
      {
        v12 = 7104878;
      }

      if (v7)
      {
        v13 = v3;
      }

      else
      {
        v13 = 0xE300000000000000;
      }

      v14 = sub_10000C4E4(v12, v13, &v39);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to match sender with existing connectable endpoints senderID: %s - contactID: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v15 = 1;
  }

  else
  {
    v16 = *(*(v0 + 88) + 32);
    v16(*(v0 + 104), v2, v1);
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097F240);
    (*(v20 + 16))(v17, v18, v19);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = *(v0 + 80);
    if (v24)
    {
      v38 = v16;
      v29 = *(v0 + 24);
      v28 = *(v0 + 32);
      v30 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10000C4E4(v29, v28, &v39);
      *(v30 + 12) = 2080;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v26 + 8))(v25, v27);
      v34 = v31;
      v16 = v38;
      v35 = sub_10000C4E4(v34, v33, &v39);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v22, v23, "Matched contactID %s to %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v16(*(v0 + 16), *(v0 + 104), *(v0 + 80));
    v15 = 0;
  }

  (*(*(v0 + 88) + 56))(*(v0 + 16), v15, 1, *(v0 + 80));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1004932E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4[29] = swift_task_alloc();
  v4[30] = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v4[31] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v4[32] = swift_task_alloc();
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004935A0, v7, 0);
}

uint64_t sub_1004935A0()
{
  v87 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(*(v0 + 336), &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v4 = *(v0 + 384);
    v5 = *(v0 + 216);
    v6 = *(*(v0 + 352) + 32);
    v6(v4, *(v0 + 336), *(v0 + 344));
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
    swift_beginAccess();
    v8 = *(v5 + v7);

    LOBYTE(v4) = sub_100569018(v4, v8);

    if (v4)
    {
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 376);
      v10 = *(v0 + 384);
      v11 = *(v0 + 344);
      v12 = *(v0 + 352);
      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_10097F240);
      (*(v12 + 16))(v9, v10, v11);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 376);
      v19 = *(v0 + 344);
      v18 = *(v0 + 352);
      if (v16)
      {
        v20 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v86 = v84;
        *v20 = 136315138;
        sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v83 = v15;
        v21 = v6;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v18 + 8))(v17, v19);
        v25 = v22;
        v6 = v21;
        v26 = sub_10000C4E4(v25, v24, &v86);

        *(v20 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v14, v83, "Direct match to displayable found %s", v20, 0xCu);
        sub_10000C60C(v84);
      }

      else
      {

        (*(v18 + 8))(v17, v19);
      }

      v79 = *(v0 + 344);
      v80 = *(v0 + 352);
      v81 = *(v0 + 192);
      v6(v81, *(v0 + 384), v79);
      (*(v80 + 56))(v81, 0, 1, v79);
      goto LABEL_35;
    }

    (*(*(v0 + 352) + 8))(*(v0 + 384), *(v0 + 344));
  }

  v27 = *(v0 + 216);
  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
  *(v0 + 400) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
  swift_beginAccess();
  v29 = *(v27 + v28);
  *(v0 + 408) = v29;
  v30 = *(v29 + 32);
  *(v0 + 472) = v30;
  v31 = 1 << v30;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v29 + 56);
  *(v0 + 416) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;

  v34 = 0;
  while (v33)
  {
    v38 = *(v0 + 408);
LABEL_20:
    *(v0 + 424) = v33;
    *(v0 + 432) = v34;
    v40 = *(v0 + 416);
    v41 = *(v0 + 360);
    v42 = *(v0 + 368);
    v43 = *(v0 + 344);
    v44 = *(v0 + 352);
    v45 = *(v0 + 216);
    (*(v44 + 16))(v42, *(v38 + 48) + *(v44 + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), v43);
    v46 = *(v44 + 32);
    *(v0 + 440) = v46;
    *(v0 + 448) = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46(v41, v42, v43);
    swift_beginAccess();
    v47 = *(v45 + v40);
    if (*(v47 + 16))
    {
      v48 = sub_10000EBD4(*(v0 + 360));
      if (v49)
      {
        sub_1002A9938(*(v47 + 56) + 40 * v48, v0 + 56);
        sub_1000121F8((v0 + 56), v0 + 16);
        swift_endAccess();
        v50 = *(v0 + 40);
        v51 = *(v0 + 48);
        sub_10002CDC0((v0 + 16), v50);
        v85 = (*(v51 + 40) + **(v51 + 40));
        v52 = swift_task_alloc();
        *(v0 + 456) = v52;
        *v52 = v0;
        v52[1] = sub_10049401C;

        return v85(v50, v51);
      }
    }

    v33 &= v33 - 1;
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v37 = *(v0 + 344);
    swift_endAccess();
    (*(v36 + 8))(v35, v37);
  }

  while (1)
  {
    v39 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    v38 = *(v0 + 408);
    if (v39 >= (((1 << *(v0 + 472)) + 63) >> 6))
    {
      break;
    }

    v33 = *(v38 + 8 * v39 + 56);
    ++v34;
    if (v33)
    {
      v34 = v39;
      goto LABEL_20;
    }
  }

  if (qword_1009738C0 == -1)
  {
    goto LABEL_26;
  }

LABEL_39:
  swift_once();
LABEL_26:
  v54 = type metadata accessor for Logger();
  sub_10000C4AC(v54, qword_10097F240);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v58 = *(v0 + 200);
    v57 = *(v0 + 208);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86 = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_10000C4E4(v58, v57, &v86);
    _os_log_impl(&_mh_execute_header, v55, v56, "No matching connectables for %s", v59, 0xCu);
    sub_10000C60C(v60);
  }

  v61 = *(v0 + 216);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v86 = v65;
    *v64 = 136315138;
    sub_100005430(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v66 = Set.description.getter();
    v68 = v67;

    v69 = sub_10000C4E4(v66, v68, &v86);

    *(v64 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v62, v63, "Current displayableIDs %s", v64, 0xCu);
    sub_10000C60C(v65);
  }

  v70 = *(v0 + 216);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86 = v74;
    *v73 = 136315138;
    swift_beginAccess();

    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    sub_100005430(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v75 = Dictionary.Keys.description.getter();
    v77 = v76;

    v78 = sub_10000C4E4(v75, v77, &v86);

    *(v73 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v71, v72, "Current connectable mapping %s", v73, 0xCu);
    sub_10000C60C(v74);
  }

  (*(*(v0 + 352) + 56))(*(v0 + 192), 1, 1, *(v0 + 344));
LABEL_35:

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_10049401C(uint64_t a1)
{
  v2 = *(*v1 + 392);
  *(*v1 + 464) = a1;

  return _swift_task_switch(sub_100494134, v2, 0);
}

id sub_100494134()
{
  v144 = v0;
  v1 = *(v0 + 464);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 464) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v140 = *(v0 + 464);

  v9 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v8)
        {

          v59 = 1;
          goto LABEL_68;
        }

        v7 = *(v3 + 8 * v12);
        ++v9;
        if (v7)
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_101;
    }

LABEL_12:
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 296);
    sub_10049779C(*(v140 + 48) + *(*(v0 + 272) + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v14, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v0 + 296);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v31 = *(v0 + 200);
        v30 = *(v0 + 208);
        sub_100497804(v17, *(v0 + 232), type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        v32 = UUID.uuidString.getter();
        v34 = *(v0 + 232);
        if (v32 == v31 && v33 == v30)
        {

          v62 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
          goto LABEL_65;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10049786C(v34, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        if (v36)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v51 = *v17;
        result = [*v17 identifier];
        if (!result)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          return result;
        }

        v52 = result;
        v53 = *(v0 + 200);
        v138 = *(v0 + 208);
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        if (v54 == v53 && v56 == v138)
        {

          goto LABEL_67;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v58)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_6;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_100497804(v17, *(v0 + 256), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        goto LABEL_104;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        v21 = *(v0 + 200);
        v20 = *(v0 + 208);
        if (String.init(cString:)() == v21 && v22 == v20)
        {
LABEL_60:

LABEL_61:
          v60 = *(v0 + 256);
          v61 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          goto LABEL_66;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_61;
        }
      }

      result = NWEndpoint.nw.getter();
      if (!result)
      {
        goto LABEL_105;
      }

      contact_id = nw_endpoint_get_contact_id();
      swift_unknownObjectRelease();
      if (!contact_id)
      {
        v10 = *(v0 + 256);
        v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_5:
        sub_10049786C(v10, v11);
        goto LABEL_6;
      }

      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      if (String.init(cString:)() == v26 && v27 == v25)
      {
        goto LABEL_60;
      }

      v28 = *(v0 + 256);
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10049786C(v28, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v29)
      {
        goto LABEL_67;
      }

      goto LABEL_6;
    }

    v37 = *(v0 + 248);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    sub_100497804(v17, v37, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (*v37 == v39 && v37[1] == v38)
    {
      break;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34 = *(v0 + 248);
    if (v41)
    {
      goto LABEL_63;
    }

    v42 = *(v0 + 240);
    v43 = (v34 + *(v42 + 28));
    v44 = v43[1];
    if (v44)
    {
      if (*v43 == *(v0 + 200) && v44 == *(v0 + 208))
      {
        goto LABEL_63;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v34 = *(v0 + 248);
      if (v46)
      {
        goto LABEL_63;
      }

      v42 = *(v0 + 240);
    }

    v47 = (v34 + *(v42 + 44));
    v48 = v47[1];
    if (!v48)
    {
      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v10 = v34;
      goto LABEL_5;
    }

    if (*v47 == *(v0 + 200) && v48 == *(v0 + 208))
    {
      goto LABEL_63;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10049786C(v34, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v50)
    {
      goto LABEL_67;
    }

LABEL_6:
    v7 &= v7 - 1;
    sub_10049786C(*(v0 + 304), type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v34 = *(v0 + 248);
LABEL_63:
  v62 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
LABEL_65:
  v61 = v62;
  v60 = v34;
LABEL_66:
  sub_10049786C(v60, v61);
LABEL_67:
  v63 = *(v0 + 328);
  v64 = *(v0 + 304);

  sub_100497804(v64, v63, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v59 = 0;
LABEL_68:
  v66 = *(v0 + 320);
  v65 = *(v0 + 328);
  v67 = *(v0 + 264);
  v68 = *(v0 + 272);
  (*(v68 + 56))(v65, v59, 1, v67);

  sub_10000FF90(v65, v66, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v68 + 48))(v66, 1, v67) == 1)
  {
    v70 = *(v0 + 352);
    v69 = *(v0 + 360);
    v71 = *(v0 + 344);
    v72 = *(v0 + 320);
    sub_100005508(*(v0 + 328), &qword_1009763E0, &qword_1007F95D0);
    (*(v70 + 8))(v69, v71);
    sub_100005508(v72, &qword_1009763E0, &qword_1007F95D0);
    sub_10000C60C((v0 + 16));
    v73 = *(v0 + 432);
    v74 = (*(v0 + 424) - 1) & *(v0 + 424);
    while (v74)
    {
      v78 = *(v0 + 408);
LABEL_77:
      *(v0 + 424) = v74;
      *(v0 + 432) = v73;
      v80 = *(v0 + 416);
      v81 = *(v0 + 360);
      v82 = *(v0 + 368);
      v83 = *(v0 + 344);
      v84 = *(v0 + 352);
      v85 = *(v0 + 216);
      (*(v84 + 16))(v82, *(v78 + 48) + *(v84 + 72) * (__clz(__rbit64(v74)) | (v73 << 6)), v83);
      v86 = *(v84 + 32);
      *(v0 + 440) = v86;
      *(v0 + 448) = (v84 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v86(v81, v82, v83);
      swift_beginAccess();
      v87 = *(v85 + v80);
      if (*(v87 + 16))
      {
        v88 = sub_10000EBD4(*(v0 + 360));
        if (v89)
        {
          sub_1002A9938(*(v87 + 56) + 40 * v88, v0 + 56);
          sub_1000121F8((v0 + 56), v0 + 16);
          swift_endAccess();
          v90 = *(v0 + 40);
          v91 = *(v0 + 48);
          sub_10002CDC0((v0 + 16), v90);
          v141 = (*(v91 + 40) + **(v91 + 40));
          v92 = swift_task_alloc();
          *(v0 + 456) = v92;
          *v92 = v0;
          v92[1] = sub_10049401C;

          return v141(v90, v91);
        }
      }

      v74 &= v74 - 1;
      v76 = *(v0 + 352);
      v75 = *(v0 + 360);
      v77 = *(v0 + 344);
      swift_endAccess();
      (*(v76 + 8))(v75, v77);
    }

    while (1)
    {
      v79 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v78 = *(v0 + 408);
      if (v79 >= (((1 << *(v0 + 472)) + 63) >> 6))
      {

        if (qword_1009738C0 != -1)
        {
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        sub_10000C4AC(v109, qword_10097F240);

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v113 = *(v0 + 200);
          v112 = *(v0 + 208);
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v143 = v115;
          *v114 = 136315138;
          *(v114 + 4) = sub_10000C4E4(v113, v112, &v143);
          _os_log_impl(&_mh_execute_header, v110, v111, "No matching connectables for %s", v114, 0xCu);
          sub_10000C60C(v115);
        }

        v116 = *(v0 + 216);
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v143 = v120;
          *v119 = 136315138;
          sub_100005430(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

          v121 = Set.description.getter();
          v123 = v122;

          v124 = sub_10000C4E4(v121, v123, &v143);

          *(v119 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v117, v118, "Current displayableIDs %s", v119, 0xCu);
          sub_10000C60C(v120);
        }

        v125 = *(v0 + 216);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v143 = v129;
          *v128 = 136315138;
          swift_beginAccess();

          sub_10028088C(&qword_10097F358, &qword_1008050E8);
          sub_100005430(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v130 = Dictionary.Keys.description.getter();
          v132 = v131;

          v133 = sub_10000C4E4(v130, v132, &v143);

          *(v128 + 4) = v133;
          _os_log_impl(&_mh_execute_header, v126, v127, "Current connectable mapping %s", v128, 0xCu);
          sub_10000C60C(v129);
        }

        (*(*(v0 + 352) + 56))(*(v0 + 192), 1, 1, *(v0 + 344));
        goto LABEL_96;
      }

      v74 = *(v78 + 8 * v79 + 56);
      ++v73;
      if (v74)
      {
        v73 = v79;
        goto LABEL_77;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_100497804(*(v0 + 320), *(v0 + 288), type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_1009738C0 == -1)
  {
    goto LABEL_83;
  }

LABEL_102:
  swift_once();
LABEL_83:
  v93 = *(v0 + 280);
  v94 = *(v0 + 288);
  v95 = type metadata accessor for Logger();
  sub_10000C4AC(v95, qword_10097F240);
  sub_10049779C(v94, v93, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v99 = *(v0 + 328);
  v101 = *(v0 + 280);
  v100 = *(v0 + 288);
  if (v98)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v143 = v103;
    *v102 = 136315138;
    v139 = v100;
    v142 = v99;
    v104 = sub_10032B99C();
    v106 = v105;
    sub_10049786C(v101, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v107 = sub_10000C4E4(v104, v106, &v143);

    *(v102 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v96, v97, "Matching endpoint found %s", v102, 0xCu);
    sub_10000C60C(v103);

    sub_10049786C(v139, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v108 = v142;
  }

  else
  {

    sub_10049786C(v101, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049786C(v100, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v108 = v99;
  }

  sub_100005508(v108, &qword_1009763E0, &qword_1007F95D0);
  v134 = *(v0 + 352);
  v135 = *(v0 + 344);
  v136 = *(v0 + 192);
  (*(v0 + 440))(v136, *(v0 + 360), v135);
  (*(v134 + 56))(v136, 0, 1, v135);
  sub_10000C60C((v0 + 16));
LABEL_96:

  v137 = *(v0 + 8);

  return v137();
}

uint64_t sub_1004950A4(uint64_t *a1, uint64_t a2, void *a3)
{
  v24 = type metadata accessor for UUID();
  v6 = *(v24 - 8);
  v7 = __chkstk_darwin(v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = *a1;
  v13 = a1[1];
  v25[0] = v12;
  v25[1] = v13;
  sub_1002D63B0(a2, v26);
  v14 = v27;
  v15 = v28;
  sub_10002CDC0(v26, v27);
  v16 = *(v15 + 32);

  v16(v14, v15);
  v17 = a3[3];
  v18 = a3[4];
  sub_10002CDC0(a3, v17);
  (*(v18 + 32))(v17, v18);
  v19 = static UUID.== infix(_:_:)();
  v20 = *(v6 + 8);
  v21 = v24;
  v20(v9, v24);
  v20(v11, v21);
  sub_100005508(v25, &unk_10097F390, &qword_100805228);
  return v19 & 1;
}

uint64_t sub_100495278()
{
  v1 = v0;
  v2 = sub_100486920();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_10055FA90(v3);
  v5 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);

    sub_100486920();
    v5();
    sub_100015D04(v5, v6);
  }

  return result;
}

uint64_t type metadata accessor for SDAirDropEndpointService(uint64_t a1)
{
  result = qword_10097F318;
  if (!qword_10097F318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004955D8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1004956D0(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v67 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v67);
  v66 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v5 = __chkstk_darwin(v4 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v61 - v7;
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = __chkstk_darwin(v9);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v65 = &v61 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v61 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v72 = &v61 - v20;
  v21 = a1 + 56;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 56);
  v70 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegate;
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v68 = v16;
  v64 = a1;
  for (i = v8; ; v8 = i)
  {
    if (!v24)
    {
      while (1)
      {
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v33 >= v25)
        {

          return 0;
        }

        v24 = *(v21 + 8 * v33);
        ++v26;
        if (v24)
        {
          v26 = v33;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_35;
    }

LABEL_12:
    v34 = v72;
    sub_10049779C(*(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v72, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v34, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v19, v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v36 = v16;
        v37 = v66;
        sub_100497804(v36, v66, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v38 = *(v37 + *(v67 + 60));
        sub_10049786C(v37, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v38)
        {
          goto LABEL_30;
        }

        goto LABEL_18;
      }

      if (EnumCaseMultiPayload == 2)
      {

        v48 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {

        v48 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      sub_10049786C(v16, v48);
LABEL_31:
      v49 = v19;
      goto LABEL_32;
    }

    sub_100497804(v16, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C7CC() & 0x4000000000) != 0)
    {
      sub_10049786C(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_30:

      goto LABEL_31;
    }

    v39 = sub_10032C7CC();
    sub_10049786C(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((v39 & 0x8000000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_18:
    v16 = v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_6;
    }

    v41 = Strong;
    v42 = v65;
    sub_10049779C(v16, v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 > 1)
    {
      break;
    }

    if (v43)
    {
      v27 = v66;
      sub_100497804(v42, v66, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v44 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v41 + v44, v75);
      v45 = v76;
      v46 = v77;
      sub_10002CDC0(v75, v76);
      v31 = (*(v46 + 112))(v27 + *(v67 + 20), v45, v46);
      swift_unknownObjectRelease();
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v27 = v63;
      sub_100497804(v42, v63, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v28 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v41 + v28, v75);
      v29 = v76;
      v30 = v77;
      sub_10002CDC0(v75, v76);
      v31 = (*(v30 + 112))(v27, v29, v30);
      swift_unknownObjectRelease();
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    sub_10049786C(v27, v32);
    sub_10000C60C(v75);
    a1 = v64;
    if (v31)
    {
      goto LABEL_34;
    }

LABEL_6:
    v24 &= v24 - 1;
    v19 = v16;
    sub_10049786C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v16 = v68;
  }

  if (v43 == 3)
  {
    swift_unknownObjectRelease();
    sub_10049786C(v42, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  sub_10049786C(v42, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
LABEL_34:
  if (qword_1009738C0 != -1)
  {
    goto LABEL_40;
  }

LABEL_35:
  v50 = type metadata accessor for Logger();
  sub_10000C4AC(v50, qword_10097F240);
  v51 = v16;
  v52 = v62;
  sub_10049779C(v16, v62, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v75[0] = v56;
    *v55 = 136315138;
    v57 = sub_10032DA30();
    v59 = v58;
    sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v60 = sub_10000C4E4(v57, v59, v75);

    *(v55 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "endpoint.isAirDropable is false. Treating endpoint as AirDropUsable due to delegate: %s", v55, 0xCu);
    sub_10000C60C(v56);
  }

  else
  {

    sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v49 = v51;
LABEL_32:
  sub_10049786C(v49, type metadata accessor for SDAirDropDiscoveredEndpoint);
  return 1;
}

Swift::Int sub_100495F18(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100496058(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100497788(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1004960C4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1004960C4(uint64_t *a1)
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
        sub_10028088C(&unk_10097F340, &unk_1008050C0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100496428(v7, v8, a1, v4);
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
    return sub_1004961CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1004961CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for UUID();
  v8 = __chkstk_darwin(v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = (v31 + 48 * a3);
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v28 = v17;
    while (1)
    {
      sub_1002D63B0(v16, &v35);
      sub_1002D63B0((v16 - 3), v32);
      v18 = v36;
      v19 = v37;
      sub_10002CDC0(&v35, v36);
      (*(v19 + 32))(v18, v19);
      v20 = v33;
      v21 = v34;
      sub_10002CDC0(v32, v33);
      (*(v21 + 32))(v20, v21);
      LOBYTE(v20) = static UUID.< infix(_:_:)();
      v22 = *v15;
      v23 = v38;
      (*v15)(v10, v38);
      v22(v14, v23);
      sub_10000C60C(v32);
      result = sub_10000C60C(&v35);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 3;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_1002D6398(v16, &v35);
      v24 = *(v16 - 2);
      *v16 = *(v16 - 3);
      v16[1] = v24;
      v16[2] = *(v16 - 1);
      result = sub_1002D6398(&v35, v16 - 3);
      v16 -= 3;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100496428(__int128 **a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v121 = &v109 - v13;
  v14 = a3[1];
  v114 = a3;
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_1004973B4(a4);
    }

    v130 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      a4 = 48;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *(result + 16 * v104);
        v107 = result;
        a3 = *(result + 16 * (v104 - 1) + 40);
        sub_100496E00((v105 + 48 * v106), (v105 + 48 * *(result + 16 * (v104 - 1) + 32)), (v105 + 48 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1004973B4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        v108[1] = a3;
        v130 = v107;
        sub_100497328(v104 - 1);
        result = v130;
        v104 = *(v130 + 16);
        a3 = v114;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v15 = 0;
  v120 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v36 = v15 + 1;
    }

    else
    {
      v118 = v14;
      v110 = v6;
      v17 = *a3;
      sub_1002D63B0(*a3 + 48 * (v15 + 1), &v127);
      v5 = 48 * v15;
      v18 = v17 + 48 * v15;
      sub_1002D63B0(v18, v124);
      v19 = v128;
      v20 = v129;
      sub_10002CDC0(&v127, v128);
      v21 = v121;
      (*(v20 + 32))(v19, v20);
      v23 = v125;
      v22 = v126;
      sub_10002CDC0(v124, v125);
      v24 = v122;
      (*(v22 + 32))(v23, v22);
      LODWORD(v119) = static UUID.< infix(_:_:)();
      v25 = v15;
      v26 = *v120;
      a4 = v123;
      (*v120)(v24, v123);
      v26(v21, a4);
      sub_10000C60C(v124);
      result = sub_10000C60C(&v127);
      v109 = v25;
      v27 = v25 + 2;
      v28 = v18 + 96;
      while (v118 != v27)
      {
        sub_1002D63B0(v28, &v127);
        sub_1002D63B0(v28 - 48, v124);
        v30 = v128;
        v29 = v129;
        sub_10002CDC0(&v127, v128);
        v31 = v121;
        (*(v29 + 32))(v30, v29);
        v32 = v125;
        v33 = v126;
        sub_10002CDC0(v124, v125);
        v34 = v122;
        (*(v33 + 32))(v32, v33);
        a4 = static UUID.< infix(_:_:)() & 1;
        v35 = v123;
        v26(v34, v123);
        v26(v31, v35);
        sub_10000C60C(v124);
        result = sub_10000C60C(&v127);
        ++v27;
        v28 += 48;
        if ((v119 & 1) != a4)
        {
          v36 = v27 - 1;
          goto LABEL_11;
        }
      }

      v36 = v118;
      v6 = v110;
      a3 = v114;
      v15 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v36 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v36)
      {
        v37 = 48 * v36 - 48;
        v118 = v36;
        v38 = v36;
        v39 = v109;
        do
        {
          if (v39 != --v38)
          {
            v44 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v40 = (v44 + v5);
            v41 = (v44 + v37);
            sub_1002D6398((v44 + v5), &v127);
            v43 = v41[1];
            v42 = v41[2];
            *v40 = *v41;
            v40[1] = v43;
            v40[2] = v42;
            result = sub_1002D6398(&v127, v41);
          }

          ++v39;
          v37 -= 48;
          v5 += 48;
        }

        while (v39 < v38);
        a3 = v114;
        a4 = v111;
        v36 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v45 = a3[1];
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v15))
      {
        goto LABEL_123;
      }

      if (v36 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_125;
        }

        if (v15 + a4 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v15 + a4;
        }

        if (v46 < v15)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v47 = v36;
    if (v36 < v15)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v113;
    }

    else
    {
      result = sub_10028E6A8(0, *(v113 + 2) + 1, 1, v113);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v48 = *(v16 + 3);
    v49 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_10028E6A8((v48 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v49;
    v50 = &v16[16 * a4];
    *(v50 + 4) = v15;
    *(v50 + 5) = v47;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v47;
    if (a4)
    {
      while (1)
      {
        v5 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v16 + 4);
          v53 = *(v16 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_51:
          if (v55)
          {
            goto LABEL_111;
          }

          v68 = &v16[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_114;
          }

          v74 = &v16[16 * v5 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_118;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v5 = v49 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v78 = &v16[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_65:
        if (v73)
        {
          goto LABEL_113;
        }

        v81 = &v16[16 * v5];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v49)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v89 = v16;
        v90 = *&v16[16 * a4 + 32];
        v91 = *&v16[16 * v5 + 40];
        sub_100496E00((*a3 + 48 * v90), (*a3 + 48 * *&v16[16 * v5 + 32]), (*a3 + 48 * v91), v51);
        if (v6)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1004973B4(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v89[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v130 = v89;
        result = sub_100497328(v5);
        v16 = v130;
        v49 = *(v130 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v16[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v16[16 * v5 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v54 < v88)
        {
          v5 = v49 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v14 = a3[1];
    v15 = v115;
    a4 = v111;
    if (v115 >= v14)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 48 * v36;
  v109 = v15;
  v93 = v15 - v36;
  v115 = v46;
LABEL_83:
  v117 = v5;
  v118 = v36;
  v116 = v93;
  while (1)
  {
    sub_1002D63B0(v5, &v127);
    sub_1002D63B0(v5 - 48, v124);
    v94 = v128;
    v95 = v129;
    sub_10002CDC0(&v127, v128);
    v96 = v121;
    (*(v95 + 32))(v94, v95);
    v97 = v125;
    v98 = v126;
    sub_10002CDC0(v124, v125);
    v99 = v122;
    (*(v98 + 32))(v97, v98);
    a4 = static UUID.< infix(_:_:)();
    v100 = *v120;
    v101 = v123;
    (*v120)(v99, v123);
    v100(v96, v101);
    sub_10000C60C(v124);
    result = sub_10000C60C(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v36 = v118 + 1;
      v5 = v117 + 48;
      v47 = v115;
      v93 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v15 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_1002D6398(v5, &v127);
    v102 = *(v5 - 32);
    *v5 = *(v5 - 48);
    *(v5 + 16) = v102;
    *(v5 + 32) = *(v5 - 16);
    sub_1002D6398(&v127, (v5 - 48));
    v5 -= 48;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

uint64_t sub_100496E00(char *a1, char *a2, char *a3, char *a4)
{
  v73 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v73);
  v66 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v58 - v12;
  v13 = (a2 - a1) / 48;
  v14 = (a3 - a2) / 48;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[48 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 48 * v14);
      v11 = v34;
    }

    v17 = &a4[48 * v14];
    v15 = a4;
    if (a3 - a2 < 48)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v59 = v4;
    v60 = (v11 + 8);
    v64 = a1;
    v61 = a4;
    while (1)
    {
      v58 = v35;
      v36 = (v35 - 48);
      v37 = v17 - 48;
      v38 = a3 - 48;
      v62 = v35 - 48;
      while (1)
      {
        v63 = v38;
        v41 = v38 + 48;
        sub_1002D63B0(v37, v70);
        sub_1002D63B0(v36, v67);
        v42 = v71;
        v43 = v72;
        sub_10002CDC0(v70, v71);
        v44 = v65;
        (*(v43 + 32))(v42, v43);
        v45 = v68;
        v46 = v69;
        sub_10002CDC0(v67, v68);
        v47 = v66;
        (*(v46 + 32))(v45, v46);
        v48 = static UUID.< infix(_:_:)();
        v49 = *v60;
        v50 = v73;
        (*v60)(v47, v73);
        v49(v44, v50);
        sub_10000C60C(v67);
        sub_10000C60C(v70);
        if (v48)
        {
          break;
        }

        v15 = v61;
        v51 = v63;
        if (v41 != v37 + 48)
        {
          v52 = *v37;
          v53 = *(v37 + 2);
          *(v63 + 1) = *(v37 + 1);
          *(v51 + 2) = v53;
          *v51 = v52;
        }

        v39 = v37 - 48;
        v38 = v51 - 48;
        v40 = v37 > v15;
        v37 -= 48;
        v36 = v62;
        if (!v40)
        {
          v17 = v39 + 48;
          v33 = v58;
          goto LABEL_35;
        }
      }

      v17 = v37 + 48;
      v15 = v61;
      v33 = v62;
      a3 = v63;
      if (v41 != v58)
      {
        v54 = *v62;
        v55 = *(v62 + 2);
        *(v63 + 1) = *(v62 + 1);
        *(a3 + 2) = v55;
        *a3 = v54;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v64)
        {
          continue;
        }
      }

      v17 = v37 + 48;
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[48 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 48 * v13);
    v11 = v16;
  }

  v17 = &a4[48 * v13];
  if (a2 - a1 < 48 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v59 = v4;
  v19 = (v11 + 8);
  v63 = v17;
  do
  {
    v64 = a1;
    sub_1002D63B0(v18, v70);
    sub_1002D63B0(v15, v67);
    v20 = v71;
    v21 = v72;
    sub_10002CDC0(v70, v71);
    v22 = v65;
    (*(v21 + 32))(v20, v21);
    v23 = v68;
    v24 = v69;
    sub_10002CDC0(v67, v68);
    v25 = v66;
    (*(v24 + 32))(v23, v24);
    LOBYTE(v23) = static UUID.< infix(_:_:)();
    v26 = *v19;
    v27 = v73;
    (*v19)(v25, v73);
    v26(v22, v27);
    sub_10000C60C(v67);
    sub_10000C60C(v70);
    if (v23)
    {
      v28 = v18;
      v29 = v64;
      v30 = v64 == v18;
      v18 += 48;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 2);
      *(v29 + 1) = *(v28 + 1);
      *(v29 + 2) = v32;
      *v29 = v31;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v64;
    v30 = v64 == v15;
    v15 += 48;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 48;
    v17 = v63;
  }

  while (v15 < v63 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 48;
  if (v33 != v15 || v33 >= &v15[48 * v56])
  {
    memmove(v33, v15, 48 * v56);
  }

  return 1;
}

uint64_t sub_100497328(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004973B4(v3);
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

void *sub_1004973C8(uint64_t (*a1)(void *, void *, __n128), uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v10 = &v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10049755C(v10, v8, a3, v6);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1004976E8(v12, v8, a3, v6, a2, sub_10049755C);

  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_10049755C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *, __n128))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_1002D63B0(v15 + 48 * v14, v24);

    v18 = (a4)(v25, v24);
    sub_10000C60C(v24);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100620174(v21, a2, v22, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100620174(v21, a2, v22, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004976E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_10049779C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100497804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10049786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049791C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a5;
  v37 = a6;
  v34 = a6;
  v16 = sub_10002F604(&v35);
  (*(*(a5 - 8) + 32))(v16, a1, a5);
  v17 = *a4;
  v19 = sub_10000EBD4(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_7:
    v25 = *a4;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_10000C60C(v26);
      return sub_1000121F8(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_1002CF6F0();
    goto LABEL_7;
  }

  sub_100573D7C(v22, a3 & 1);
  v28 = sub_10000EBD4(a2);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a4;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  v30 = sub_10002F5B4(&v35, v36);
  __chkstk_darwin(v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_100497BCC(v19, v15, v32, v25, a5, v34);
  return sub_10000C60C(&v35);
}

uint64_t sub_100497BCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v11 = sub_10002F604(&v18);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_1000121F8(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_100497CD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004867D8(a1, v4, v5, v6);
}

uint64_t sub_100497D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100480B14(a1, v4, v5, v7, v6);
}

uint64_t sub_100497E4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100497E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1004800E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100497F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10048579C(a1, v4, v5, v6);
}

uint64_t sub_100498008()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10037A014();
}

uint64_t sub_1004980F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100485E74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004981BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100485D50(a1, v4, v5, v7, v6);
}

uint64_t sub_1004982D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100485564(a1, v4, v5, v7, v6);
}

uint64_t sub_1004983CC(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100498430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100482F04(a1, v4, v5, v7, v6);
}

uint64_t sub_100498544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100491848(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10049860C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100491E40(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1004986CC()
{

  return sub_1004844CC();
}

uint64_t sub_100498740(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004987DC, v3, 0);
}

uint64_t sub_1004987DC(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v3)
  {
    goto LABEL_3;
  }

  if (SFAirDropReceive.AskRequest.senderBundleID.getter() == 0xD000000000000015 && 0x8000000100791E10 == v8)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
LABEL_3:
      v4 = 0;
      goto LABEL_4;
    }
  }

  v4 = sub_1002F5CC4(*(v1 + 16));
LABEL_4:
  v5 = *(v1 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_1004988D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100498930@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerVoiceMails();
  v2 = swift_allocObject();
  type metadata accessor for SDAirDropContentHandlerVoiceMemos();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100498984(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100498740(a1);
}

uint64_t sub_100498A20(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_100498B28(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x49414D4543494F56;
  v5 = inited + 32;
  *(inited + 40) = 0xE90000000000004CLL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_1003470A0(v5);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100498CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C04;

  return sub_1002F6228(a1, a2, a3, v8);
}

uint64_t sub_100498D58()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F478);
  v1 = sub_10000C4AC(v0, qword_10097F478);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100498E20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    v4 = a2;
    if (a3 == 1)
    {
      _StringGuts.grow(_:)(21);

      v5 = 0xD000000000000012;
    }

    else
    {
      _StringGuts.grow(_:)(24);

      v5 = 0xD000000000000015;
    }

    v8 = v5;
    a1 = v3;
    a2 = v4;
  }

  else
  {
    v8 = 0x656C62617369642ELL;
  }

  String.append(_:)(*&a1);
  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v8;
}

uint64_t sub_100498F44(uint64_t a1)
{
  v3 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
  v4 = *(a1 + 16);
  _StringGuts.grow(_:)(22);

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v1;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004990C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 88) = a7;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  v9 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  *(v7 + 136) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v7 + 144) = v10;
  *(v7 + 152) = *(v10 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  *(v7 + 184) = static AirDropActor.shared;

  return _swift_task_switch(sub_1004992B4, v11, 0);
}

uint64_t sub_1004992B4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v35 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v9 = (v4 + 16);
    v10 = _swiftEmptyArrayStorage;
    v36 = v6;
    v6(*(v0 + 176), v7, *(v0 + 144));
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        v11 = *v9;
        (*v9)(*(v0 + 160), *(v0 + 176), *(v0 + 144));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_10028FAB4((v12 > 1), v13 + 1, 1);
        }

        v14 = *(v0 + 160);
        v15 = *(v0 + 144);
        _swiftEmptyArrayStorage[2] = v13 + 1;
        v11(_swiftEmptyArrayStorage + v35 + v13 * v8, v14, v15);
        v5 = v36;
      }

      else
      {
        (*(v4 - 8))(*(v0 + 176), *(v0 + 144));
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v5(*(v0 + 176), v7, *(v0 + 144));
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  *(v0 + 192) = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  *(v0 + 200) = v16;
  if (v16)
  {
    v17 = *(v0 + 152);
    *(v0 + 208) = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v18 = *(v17 + 80);
    *(v0 + 28) = v18;
    *(v0 + 216) = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      v19 = *(v0 + 168);
      v21 = *(v0 + 136);
      v20 = *(v0 + 144);
      v22 = *(v0 + 80);
      (*(v17 + 16))(v19, _swiftEmptyArrayStorage + ((v18 + 32) & ~v18), v20);
      sub_100499FB4(v19, v22, v21);
      (*(v17 + 8))(v19, v20);
      SFProgressTask.makeAsyncIterator()();
      v23 = *(v0 + 208);
      v24 = *(v0 + 184);
      v25 = swift_task_alloc();
      *(v0 + 224) = v25;
      *v25 = v0;
      v25[1] = sub_100499738;
      v26 = *(v0 + 96);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v24, v23, v26, v0 + 32);
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_21:
    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_10097F478);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109376;
      *(v32 + 8) = 1024;
      v28 = v10 & 1;
      *(v32 + 10) = v10 & 1;
      _os_log_impl(&_mh_execute_header, v30, v31, "isContentSensitive returning sensitiveContentOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v32, 0xEu);
    }

    else
    {

      v28 = v10 & 1;
    }

    goto LABEL_24;
  }

  sub_10039D0AC();
  v27 = static NSUserDefaults.airdrop.getter();
  LOBYTE(v10) = SFAirDropUserDefaults.sensitiveContentOverride.getter();

  if (v10 != 2)
  {
    if (qword_1009738C8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v28 = 0;
LABEL_24:
  **(v0 + 40) = v28;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100499738()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_100499E28;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = sub_100499858;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100499858()
{
  v11 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96), v1);
    v2 = swift_task_alloc();
    *(v0 + 232) = v2;
    *v2 = v0;
    v2[1] = sub_1004999E0;
    v3 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v0 + 25, v3);
  }

  else
  {
    v4 = *(v0 + 48);
    v10 = v1 / *(v0 + 88);
    v4(&v10);
    v5 = *(v0 + 208);
    v6 = *(v0 + 184);
    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_100499738;
    v8 = *(v0 + 96);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v6, v5, v8, v0 + 32);
  }
}

uint64_t sub_1004999E0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_100499EFC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = sub_100499B04;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100499B04()
{
  v1 = (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = *(v0 + 25);
  if ((v6 & 1) != 0 || (v7 = *(v0 + 216) + 1, v7 == *(v0 + 200)))
  {

    sub_10039D0AC();
    v8 = static NSUserDefaults.airdrop.getter();
    v9 = SFAirDropUserDefaults.sensitiveContentOverride.getter();

    if (v9 != 2)
    {
      if (qword_1009738C8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_10097F478);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109376;
        *(v13 + 4) = v6;
        *(v13 + 8) = 1024;
        LOBYTE(v6) = v9 & 1;
        *(v13 + 10) = v9 & 1;
        _os_log_impl(&_mh_execute_header, v11, v12, "isContentSensitive returning sensitiveContentOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v13, 0xEu);
      }

      else
      {

        LOBYTE(v6) = v9 & 1;
      }
    }

    **(v0 + 40) = v6;

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    *(v0 + 216) = v7;
    v14 = *(v0 + 192);
    if (v7 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 168);
      v16 = *(v0 + 144);
      v17 = *(v0 + 152);
      v18 = *(v0 + 136);
      v19 = *(v0 + 80);
      (*(v17 + 16))(v15, v14 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(v17 + 72) * v7, v16);
      sub_100499FB4(v15, v19, v18);
      (*(v17 + 8))(v15, v16);
      SFProgressTask.makeAsyncIterator()();
      v20 = *(v0 + 208);
      v21 = *(v0 + 184);
      v22 = swift_task_alloc();
      *(v0 + 224) = v22;
      *v22 = v0;
      v22[1] = sub_100499738;
      v4 = *(v0 + 96);
      v1 = v0 + 16;
      v5 = v0 + 32;
      v2 = v21;
      v3 = v20;
    }

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v1, v2, v3, v4, v5);
  }
}

uint64_t sub_100499E28()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100499EFC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100499FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v18, "analyze(url: ");
  HIWORD(v18[1]) = -4864;
  v9._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v18[0] = 0;
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v11, v8, v5);
  *(v13 + v12) = v3;
  v14 = v17[0];
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17[0];

  v15 = v14;
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10049A1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for URL.DirectoryHint();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = sub_10028088C(&qword_100975180, &qword_100805430);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v10 = type metadata accessor for UTType();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v6[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_10049A518, v11, 0);
}

uint64_t sub_10049A518(uint64_t a1)
{
  v2 = URL.pathExtension.getter();
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;

    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    _StringGuts.grow(_:)(35);

    v7._countAndFlagsBits = v6;
    v7._object = v4;
    String.append(_:)(v7);
    Optional.tryUnwrap(_:file:line:)();
    v15 = *(v1 + 360);
    v14 = *(v1 + 368);
    v16 = *(v1 + 344);
    v17 = *(v1 + 336);
    sub_100005508(*(v1 + 352), &qword_100975180, &qword_100805430);

    static UTType.package.getter();
    UTType.init(filenameExtension:conformingTo:)();
    UTType.identifier.getter();
    sub_10000FF90(v16, v17, &qword_100975180, &qword_100805430);
    v18 = (*(v14 + 48))(v17, 1, v15);
    if (v18 == 1)
    {
      sub_100005508(*(v1 + 336), &qword_100975180, &qword_100805430);
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v21 = *(v1 + 360);
      v22 = *(v1 + 368);
      v23 = *(v1 + 336);
      UTType.identifier.getter();
      v20 = v24;
      (*(v22 + 8))(v23, v21);

      v19 = String._bridgeToObjectiveC()();
    }

    v25 = SFIsPhotosAssetBundle();

    if (v25)
    {

      v26 = objc_allocWithZone(PFAssetBundle);
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = [v26 initWithAssetBundleAtURL:v28];

      *(v1 + 104) = v30;
      _StringGuts.grow(_:)(19);

      v31 = type metadata accessor for URL();
      sub_1000107C8(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);

      sub_10028088C(&qword_10097F628, &qword_100805448);
      Optional.tryUnwrap(_:file:line:)();

      v33 = *(v1 + 96);
      *(v1 + 400) = v33;
      v34 = [v33 photoURL];
      if (v34)
      {
        v35 = v34;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v72 = *(v1 + 312);
      v71 = *(v1 + 320);
      v107 = *(*(v31 - 8) + 56);
      v107(v72, v36, 1, v31);
      sub_1003332E8(v72, v71);
      v73 = [v33 videoURL];
      if (v73)
      {
        v74 = v73;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v76 = *(v1 + 320);
      v78 = *(v1 + 296);
      v77 = *(v1 + 304);
      v79 = *(v1 + 264);
      v80 = *(v1 + 160);
      v81 = *(v1 + 144);
      v107(v78, v75, 1, v31);
      sub_1003332E8(v78, v77);
      sub_10049D770(v81, v76, v77, v80, v79);
      SFProgressTask.makeAsyncIterator()();
      v56 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      *(v1 + 408) = v56;
      v57 = *(v1 + 392);
      v82 = swift_task_alloc();
      *(v1 + 416) = v82;
      *v82 = v1;
      v82[1] = sub_10049B5CC;
      v59 = *(v1 + 192);
      v60 = v1 + 48;
      v61 = v1 + 112;
      goto LABEL_48;
    }

    if (v20)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    v38 = SFIsLivePhotos();

    if (v38)
    {

      v39 = objc_allocWithZone(PFVideoComplement);
      URL._bridgeToObjectiveC()(v40);
      v42 = v41;
      v43 = [v39 initWithBundleAtURL:v41];

      *(v1 + 80) = v43;
      _StringGuts.grow(_:)(22);

      v44 = type metadata accessor for URL();
      sub_1000107C8(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      sub_10028088C(&qword_10097F620, &qword_100805440);
      Optional.tryUnwrap(_:file:line:)();

      v62 = *(v1 + 72);
      *(v1 + 440) = v62;
      v63 = [v62 imagePath];
      if (v63 && (v64 = v63, static String._unconditionallyBridgeFromObjectiveC(_:)(), v66 = v65, v64, v66))
      {
        v106 = *(v1 + 288);
        v67 = *(v1 + 176);
        v68 = *(v1 + 184);
        v105 = *(v1 + 168);
        v69 = *(v44 - 8);
        v70 = *(v69 + 56);
        v70(*(v1 + 280), 1, 1, v44);
        (*(v67 + 104))(v68, enum case for URL.DirectoryHint.inferFromPath(_:), v105);
        URL.init(filePath:directoryHint:relativeTo:)();
        v70(v106, 0, 1, v44);
      }

      else
      {
        v69 = *(v44 - 8);
        (*(v69 + 56))(*(v1 + 288), 1, 1, v44);
      }

      v89 = [v62 videoPath];
      if (v89)
      {
        v91 = *(v1 + 272);
        v90 = *(v1 + 280);
        v93 = *(v1 + 176);
        v92 = *(v1 + 184);
        v108 = *(v1 + 168);
        v94 = v89;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v95 = *(v69 + 56);
        v95(v90, 1, 1, v44);
        (*(v93 + 104))(v92, enum case for URL.DirectoryHint.inferFromPath(_:), v108);
        URL.init(filePath:directoryHint:relativeTo:)();
        v95(v91, 0, 1, v44);
      }

      else
      {
        (*(v69 + 56))(*(v1 + 272), 1, 1, v44);
      }

      sub_10049D770(*(v1 + 144), *(v1 + 288), *(v1 + 272), *(v1 + 160), *(v1 + 256));
      SFProgressTask.makeAsyncIterator()();
      v56 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      *(v1 + 448) = v56;
      v57 = *(v1 + 392);
      v96 = swift_task_alloc();
      *(v1 + 456) = v96;
      *v96 = v1;
      v96[1] = sub_10049BB78;
      v59 = *(v1 + 192);
      v60 = v1 + 32;
      v61 = v1 + 88;
      goto LABEL_48;
    }

    v47 = String._bridgeToObjectiveC()();
    v48 = SFIsImage();

    if (v48)
    {

      v49 = swift_task_alloc();
      *(v1 + 480) = v49;
      *v49 = v1;
      v49[1] = sub_10049C124;
      v50 = *(v1 + 160);
      v51 = *(v1 + 144);

      return sub_1004A0394(v51, v50);
    }

    v52 = String._bridgeToObjectiveC()();
    v53 = SFIsVideo();

    if (v53)
    {
      v54 = *(v1 + 160);
      v55 = *(v1 + 144);

      sub_10049EC30(v55, v54);
      SFProgressTask.makeAsyncIterator()();
      v56 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      *(v1 + 488) = v56;
      v57 = *(v1 + 392);
      v58 = swift_task_alloc();
      *(v1 + 496) = v58;
      *v58 = v1;
      v58[1] = sub_10049C3D0;
      v59 = *(v1 + 192);
      v60 = v1 + 16;
      v61 = v1 + 64;
LABEL_48:

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v60, v57, v56, v59, v61);
    }

    v83 = String._bridgeToObjectiveC()();

    v84 = String._bridgeToObjectiveC()();

    v85 = SFIsContact();

    if (v85)
    {
      v86 = swift_task_alloc();
      *(v1 + 520) = v86;
      *v86 = v1;
      v86[1] = sub_10049C934;
      v87 = *(v1 + 160);
      v88 = *(v1 + 144);

      return sub_1004A0A08(v88, v87);
    }

    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_10000C4AC(v97, qword_10097F478);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Unsupported file extension for sensitive analysis", v100, 2u);
    }

    v101 = *(v1 + 384);
    v102 = *(v1 + 360);
    v103 = *(v1 + 368);
    v104 = *(v1 + 344);
    v12 = *(v1 + 120);

    sub_100005508(v104, &qword_100975180, &qword_100805430);
    (*(v103 + 8))(v101, v102);
  }

  else
  {

    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097F478);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unsupported file extension for sensitive analysis", v11, 2u);
    }

    v12 = *(v1 + 120);
  }

  *v12 = 0;

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_10049B5CC()
{
  v2 = *v1;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10049CBE0;
  }

  else
  {
    v4 = sub_10049B6E0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049B6E0()
{
  v11 = v0;
  if (*(v0 + 56))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192), *(v0 + 48));
    v1 = swift_task_alloc();
    *(v0 + 424) = v1;
    *v1 = v0;
    v1[1] = sub_10049B860;
    v2 = *(v0 + 232);
    v3 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v3, v2);
  }

  else
  {
    v4 = *(v0 + 128);
    v10 = *(v0 + 48);
    v4(&v10);
    v5 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = swift_task_alloc();
    *(v0 + 416) = v7;
    *v7 = v0;
    v7[1] = sub_10049B5CC;
    v8 = *(v0 + 192);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 48, v6, v5, v8, v0 + 112);
  }
}

uint64_t sub_10049B860()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10049CDF8;
  }

  else
  {
    v4 = sub_10049B98C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049B98C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10049BB78()
{
  v2 = *v1;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10049CFEC;
  }

  else
  {
    v4 = sub_10049BC8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049BC8C()
{
  v11 = v0;
  if (*(v0 + 40))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192), *(v0 + 32));
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = sub_10049BE0C;
    v2 = *(v0 + 232);
    v3 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v3, v2);
  }

  else
  {
    v4 = *(v0 + 128);
    v10 = *(v0 + 32);
    v4(&v10);
    v5 = *(v0 + 448);
    v6 = *(v0 + 392);
    v7 = swift_task_alloc();
    *(v0 + 456) = v7;
    *v7 = v0;
    v7[1] = sub_10049BB78;
    v8 = *(v0 + 192);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 32, v6, v5, v8, v0 + 88);
  }
}

uint64_t sub_10049BE0C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10049D204;
  }

  else
  {
    v4 = sub_10049BF38;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049BF38()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10049C124(char a1)
{
  v2 = *(*v1 + 392);
  *(*v1 + 25) = a1;

  return _swift_task_switch(sub_10049C23C, v2, 0);
}

uint64_t sub_10049C23C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 120);
  sub_100005508(*(v0 + 344), &qword_100975180, &qword_100805430);
  (*(v4 + 8))(v2, v3);
  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10049C3D0()
{
  v2 = *v1;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10049D3F8;
  }

  else
  {
    v4 = sub_10049C4E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049C4E4()
{
  v11 = v0;
  if (*(v0 + 24))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192), *(v0 + 16));
    v1 = swift_task_alloc();
    *(v0 + 504) = v1;
    *v1 = v0;
    v1[1] = sub_10049C664;
    v2 = *(v0 + 232);
    v3 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v3, v2);
  }

  else
  {
    v4 = *(v0 + 128);
    v10 = *(v0 + 16);
    v4(&v10);
    v5 = *(v0 + 488);
    v6 = *(v0 + 392);
    v7 = swift_task_alloc();
    *(v0 + 496) = v7;
    *v7 = v0;
    v7[1] = sub_10049C3D0;
    v8 = *(v0 + 192);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v6, v5, v8, v0 + 64);
  }
}

uint64_t sub_10049C664()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10049D5C4;
  }

  else
  {
    v4 = sub_10049C790;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049C790()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10049C934(char a1)
{
  v2 = *(*v1 + 392);
  *(*v1 + 26) = a1;

  return _swift_task_switch(sub_10049CA4C, v2, 0);
}

uint64_t sub_10049CA4C()
{
  v1 = *(v0 + 26);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 120);
  sub_100005508(*(v0 + 344), &qword_100975180, &qword_100805430);
  (*(v4 + 8))(v2, v3);
  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10049CBE0()
{
  v1 = *(v0 + 368);
  v13 = *(v0 + 360);
  v14 = *(v0 + 384);
  v12 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 264);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_100005508(v3, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v2, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v12, &qword_100975180, &qword_100805430);
  (*(v1 + 8))(v14, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10049CDF8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10049CFEC()
{
  v1 = *(v0 + 368);
  v13 = *(v0 + 360);
  v14 = *(v0 + 384);
  v12 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_100005508(v3, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v2, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v12, &qword_100975180, &qword_100805430);
  (*(v1 + 8))(v14, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10049D204()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10049D3F8()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v6 + 8))(v5, v7);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10049D5C4()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10049D770@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v72 = a5;
  v66 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v68 = (&v63 - v12);
  v13 = __chkstk_darwin(v11);
  v65 = &v63 - v14;
  v15 = __chkstk_darwin(v13);
  v70 = &v63 - v16;
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  v19 = sub_10028088C(&qword_10097F618, &unk_1008053E0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v63 - v21;
  v23 = *(v20 + 56);
  sub_10000FF90(a2, &v63 - v21, &unk_100974E00, &qword_1007F8940);
  sub_10000FF90(a3, &v22[v23], &unk_100974E00, &qword_1007F8940);
  v24 = *(v8 + 48);
  v25 = v24(v22, 1, v7);
  v26 = v24(&v22[v23], 1, v7);
  v27 = v26;
  if (v25 == 1)
  {
    if (v26 == 1)
    {
      if (qword_1009738C8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000C4AC(v28, qword_10097F478);
      v29 = v67;
      (*(v8 + 16))(v67, v66, v7);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v73 = v33;
        *v32 = 136315138;
        sub_1000107C8(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v8 + 8))(v29, v7);
        v37 = sub_10000C4E4(v34, v36, &v73);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Live Photo URL is missing both image and video - treating a non-sensitive {baseURL: %s}", v32, 0xCu);
        sub_10000C60C(v33);
      }

      else
      {

        (*(v8 + 8))(v29, v7);
      }

      v73 = 0;
      return SFProgressTask.init(_:initialProgress:operation:file:line:)();
    }

    else
    {
      (*(v8 + 32))(v18, &v22[v23], v7);
      sub_10049EC30(v18, v71);
      return (*(v8 + 8))(v18, v7);
    }
  }

  else
  {
    v38 = *(v8 + 32);
    v38(v18, v22, v7);
    v39 = v27 == 1;
    v40 = v18;
    if (v39)
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      v68 = v38;
      v41 = v69;
      v42 = v18;
      _StringGuts.grow(_:)(21);

      v73 = 0xD000000000000012;
      v74 = 0x8000000100792140;
      v43._countAndFlagsBits = URL.lastPathComponent.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 41;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v67 = v73;
      v73 = 0;
      v45 = v70;
      (*(v8 + 16))(v70, v42, v7);
      v46 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v41;
      v68(v47 + v46, v45, v7);
      v48 = v71;
      *(v47 + ((v9 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v71;

      v49 = v48;
      SFProgressTask.init(_:initialProgress:operation:file:line:)();
      return (*(v8 + 8))(v42, v7);
    }

    else
    {
      v50 = &v22[v23];
      v51 = v70;
      v38(v70, v50, v7);
      v66 = "analyze(nil,nil)";
      v73 = 0;
      v52 = *(v8 + 16);
      v53 = v65;
      v52(v65, v40, v7);
      v52(v68, v51, v7);
      v54 = *(v8 + 80);
      v55 = (v54 + 24) & ~v54;
      v67 = v40;
      v56 = (v9 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = v8;
      v57 = (v54 + v56 + 8) & ~v54;
      v58 = swift_allocObject();
      *(v58 + 16) = v69;
      v38((v58 + v55), v53, v7);
      v59 = v71;
      *(v58 + v56) = v71;
      v38((v58 + v57), v68, v7);

      v60 = v59;
      SFProgressTask.init(_:initialProgress:operation:file:line:)();
      v61 = *(v64 + 8);
      v61(v70, v7);
      return (v61)(v67, v7);
    }
  }
}

uint64_t sub_10049DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6[3] = static AirDropActor.shared;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10049E02C;

  return sub_1004A0394(a5, a6);
}

uint64_t sub_10049E02C(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10049E144, v2, 0);
}

uint64_t sub_10049E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a3;
  v7[8] = a4;
  v7[5] = a1;
  v7[6] = a2;
  v10 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v7[14] = v11;
  v7[15] = *(v11 - 8);
  v7[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7[17] = static AirDropActor.shared;
  v12 = swift_task_alloc();
  v7[18] = v12;
  *v12 = v7;
  v12[1] = sub_10049E320;

  return sub_1004A0394(a5, a6);
}

uint64_t sub_10049E320(char a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 25) = a1;

  return _swift_task_switch(sub_10049E438, v2, 0);
}

uint64_t sub_10049E438()
{
  v11 = v0;
  if (*(v0 + 25) == 1)
  {
    **(v0 + 40) = 1;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 48);
    v10 = 0x3FE0000000000000;
    v5(&v10);
    sub_10049EC30(v3, v4);
    SFProgressTask.makeAsyncIterator()();
    v6 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    *(v0 + 152) = v6;
    v7 = *(v0 + 136);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_10049E5EC;
    v9 = *(v0 + 88);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v7, v6, v9, v0 + 32);
  }
}

uint64_t sub_10049E5EC()
{
  v2 = *v1;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_10049EA40;
  }

  else
  {
    v4 = sub_10049E700;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049E700()
{
  v12 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88), v1);
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_10049E88C;
    v3 = *(v0 + 112);
    v4 = *(v0 + 40);

    return SFProgressTask.finalValue.getter(v4, v3);
  }

  else
  {
    v5 = *(v0 + 48);
    v11 = v1 * 0.5 + 0.5;
    v5(&v11);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_10049E5EC;
    v9 = *(v0 + 88);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v7, v6, v9, v0 + 32);
  }
}

uint64_t sub_10049E88C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_10049EAEC;
  }

  else
  {
    v4 = sub_10049E9B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049E9B8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10049EA40()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10049EAEC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10049EB74(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_10049EC10, v2, 0);
}

uint64_t sub_10049EC30(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  _StringGuts.grow(_:)(16);

  strcpy(v13, "analyzeVideo(");
  HIWORD(v13[1]) = -4864;
  v7._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v13[0] = 0;
  (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = a2;
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10049EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[22] = static AirDropActor.shared;

  return _swift_task_switch(sub_10049EED4, v6, 0);
}

uint64_t sub_10049EED4@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[20];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[23] = v3;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10049F010;
  v5 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10034B0A4;
  v1[13] = &unk_1008E32F0;
  v1[14] = v5;
  [v2 analyzeVideoFile:v4 options:0 progressHandler:0 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10049F010()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_100391248;
  }

  else
  {
    v4 = sub_10049F130;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049F130()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = [v2 isSensitive];

  *v3 = v4;
  v5 = v0[1];

  return v5();
}

unint64_t sub_10049F1E0()
{
  v0 = [objc_opt_self() analysisFeatureEnablement];
  _StringGuts.grow(_:)(45);

  if (v0 == 1)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v0 == 1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  if (v0 == 2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0 == 2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._object = 0x8000000100792040;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  String.append(_:)(v7);

  return 0xD000000000000015;
}

void sub_10049F300()
{
  v0 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.AskRequest.type.getter();
  v8 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v0 = String._bridgeToObjectiveC()();
    v3 = SFLocalizedStringForKey();

    if (v3)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v9 = SFAirDropReceive.AskRequest.files.getter();
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_21;
  }

  v34[1] = v9;
  v35 = 0;
  v11 = 0;
  v13 = *(v1 + 16);
  v12 = v1 + 16;
  v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v36 = *(v12 + 56);
  v37 = v13;
  v38 = v12;
  v15 = (v12 - 8);
  v13(v3, v14, v0);
  while (1)
  {
    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();

    v17 = String._bridgeToObjectiveC()();

    v18 = SFIsPhotosAssetBundle();

    if (v18 && (, SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter(), !v19))
    {
      (*v15)(v3, v0);
    }

    else
    {
      v20 = String._bridgeToObjectiveC()();
      v21 = SFIsImage();

      if (v21)
      {
        (*v15)(v3, v0);

        v16 = __OFADD__(v11++, 1);
        if (v16)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v22 = String._bridgeToObjectiveC()();

        v23 = SFIsVideo();

        (*v15)(v3, v0);
        if (v23)
        {
          v16 = __OFADD__(v35++, 1);
          if (v16)
          {
            goto LABEL_37;
          }
        }
      }
    }

    v14 += v36;
    if (!--v10)
    {
      break;
    }

    v37(v3, v14, v0);
  }

  v24 = v35;
  if (v11 != 1 || v35)
  {
    if (!v11)
    {
LABEL_29:
      if (!v24)
      {
        v11 = 0;
        goto LABEL_22;
      }

      if (v24 != 1)
      {
        v31 = String._bridgeToObjectiveC()();
        v32 = SFLocalizedStringForKey();

        if (!v32)
        {
          goto LABEL_40;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1007F5670;
        *(v33 + 56) = &type metadata for Int;
        *(v33 + 64) = &protocol witness table for Int;
        *(v33 + 32) = v24;
        goto LABEL_24;
      }

      v30 = String._bridgeToObjectiveC()();
      v3 = SFLocalizedStringForKey();

      if (!v3)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      goto LABEL_22;
    }

    v29 = String._bridgeToObjectiveC()();
    v3 = SFLocalizedStringForKey();

    if (!v3)
    {
      __break(1u);
      goto LABEL_29;
    }

LABEL_32:
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  v25 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_21:

  v11 = 0;
LABEL_22:
  v26 = String._bridgeToObjectiveC()();
  v27 = SFLocalizedStringForKey();

  if (v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1007F5670;
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v11;
LABEL_24:
    static String.localizedStringWithFormat(_:_:)();

    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_10049F8B4(uint64_t a1)
{
  *(v1 + 152) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 160) = static AirDropActor.shared;

  return _swift_task_switch(sub_10049F954, v2, 0);
}

uint64_t sub_10049F954()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10049FAA4;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10034B0A4;
  v0[13] = &unk_1008E32A0;
  v0[14] = v3;
  [v2 analyzeCGImage:v1 orientation:1 options:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10049FAA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_10049FD58;
  }

  else
  {
    v4 = sub_10049FBC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10049FBC4()
{
  v1 = *(v0 + 144);
  v2 = [v1 isSensitive];

  sub_10039D0AC();
  v3 = static NSUserDefaults.airdrop.getter();
  v4 = SFAirDropUserDefaults.sensitivePreviewOverride.getter();

  if (v4 != 2)
  {
    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097F478);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109376;
      *(v8 + 4) = v2;
      *(v8 + 8) = 1024;
      *(v8 + 10) = v4 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "isPreviewSensitive returning sensitivePreviewOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v8, 0xEu);
    }

    LOBYTE(v2) = v4;
  }

  v9 = *(v0 + 8);

  return v9(v2 & 1);
}

uint64_t sub_10049FD58(uint64_t a1)
{
  swift_willThrow();
  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097F478);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "UserSafety analyze failed: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  sub_10039D0AC();
  v8 = static NSUserDefaults.airdrop.getter();
  v9 = SFAirDropUserDefaults.sensitivePreviewOverride.getter();

  if (v9 == 2)
  {
    v9 = 0;
  }

  else
  {
    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v2, qword_10097F478);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v9 & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "isPreviewSensitive returning sensitivePreviewOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v12, 0xEu);
    }
  }

  v13 = *(v1 + 8);

  return v13(v9 & 1);
}

uint64_t sub_1004A001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100005C00;

  return sub_10049EE30(a1, a2, a3, v10, v3 + v9);
}

uint64_t sub_1004A0118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(type metadata accessor for URL() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 24) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + v12 + 8) & ~v10;
  v14 = *(v3 + 16);
  v15 = *(v3 + v12);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100005C00;

  return sub_10049E168(a1, a2, a3, v14, v3 + v11, v15, v3 + v13);
}

uint64_t sub_1004A0260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_100005C00;

  return sub_10049DF4C(a1, a2, a3, v10, v3 + v9, v11);
}

uint64_t sub_1004A0394(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A0434, v3, 0);
}

uint64_t sub_1004A0434@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[20];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[22] = v3;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1004A0570;
  v5 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10034B0A4;
  v1[13] = &unk_1008E3368;
  v1[14] = v5;
  [v2 analyzeFile:v4 options:0 progressHandler:0 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004A0570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_1004A0718;
  }

  else
  {
    v4 = sub_1004A0690;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004A0690()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = [v2 isSensitive];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1004A0718(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097F478);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "UserSafety analyze failed: %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v9 = *(v1 + 8);

  return v9(0);
}

uint64_t sub_1004A08CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v10);
  v12 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_100005C00;

  return sub_10049A1D8(a1, a2, a3, v3 + v9, v11, v12);
}

uint64_t sub_1004A0A08(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[29] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A0AA8, v3, 0);
}

uint64_t sub_1004A0AA8()
{
  v0[30] = Data.init(contentsOf:options:)();
  v0[31] = v1;
  v2 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = isa;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1004A0D8C;
  v4 = swift_continuation_init();
  v0[25] = sub_10028088C(&qword_10097AB10, &qword_100805450);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100390734;
  v0[21] = &unk_1008E33B8;
  v0[22] = v4;
  [v2 contactsWithData:isa completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004A0D8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 232);
  if (v2)
  {
    v4 = sub_1004A2098;
  }

  else
  {
    v4 = sub_1004A0EAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004A0EAC()
{
  v59 = v0;
  v1 = (v0 + 26);
  v2 = v0[26];
  v3 = v0[32];
  v0[34] = v2;

  if (v2 >> 62)
  {
LABEL_44:
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v0[35] = v55;
    if (v55)
    {
      goto LABEL_3;
    }

LABEL_36:
    v49 = v0[30];
    v48 = v0[31];

    sub_100026AC0(v49, v48);
    v50 = v0[1];

    return v50(0);
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[35] = v4;
  if (!v4)
  {
    goto LABEL_36;
  }

LABEL_3:
  v56 = v1;
  v5 = 0;
  v6 = &selRef_setTargetQueue_;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  while (1)
  {
    v8 = v0[34];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v9 = *(v8 + 8 * v5 + 32);
    }

    v10 = v9;
    v0[36] = v9;
    v0[37] = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ([v9 v6[25]])
    {
      break;
    }

    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v1 = sub_10000C4AC(v28, qword_10097F478);
    v29 = v10;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v1 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v1 = 138739971;
      *(v1 + 4) = v29;
      *v32 = v29;
      v33 = v29;
      v34 = v31;
      v35 = v30;
      v36 = "Contact has no imageDataAvailable. Skipping {contact: %{sensitive}@}";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v35, v34, v36, v1, 0xCu);
      sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

      goto LABEL_5;
    }

LABEL_4:

LABEL_5:
    v5 = v0[37];
    if (v5 == v0[35])
    {
      goto LABEL_36;
    }
  }

  v11 = [v10 imageData];
  if (!v11)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v1 = sub_10000C4AC(v37, qword_10097F478);
    v29 = v10;
    v30 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v38))
    {
      v1 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v1 = 138739971;
      *(v1 + 4) = v29;
      *v32 = v29;
      v33 = v29;
      v34 = v38;
      v35 = v30;
      v36 = "Contact has no imageData. Skipping {contact: %{sensitive}@}";
      goto LABEL_27;
    }

    goto LABEL_4;
  }

  v12 = v11;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v0[38] = v13;
  v0[39] = v15;
  v16 = objc_allocWithZone(UIImage);
  sub_100294008(v13, v15);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = [v16 initWithData:isa];
  v0[40] = v18;

  sub_100026AC0(v13, v15);
  if (!v18)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v1 = sub_10000C4AC(v39, qword_10097F478);
    sub_100294008(v13, v15);
    v40 = v10;
    v23 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    sub_100026AC0(v13, v15);
    if (os_log_type_enabled(v23, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58 = v44;
      *v42 = 138740227;
      *(v42 + 4) = v40;
      *v43 = v40;
      *(v42 + 12) = 2080;
      sub_100294008(v13, v15);
      v57 = v40;
      v45 = Data.description.getter();
      v47 = v46;
      sub_100026AC0(v13, v15);
      v1 = sub_10000C4E4(v45, v47, &v58);

      *(v42 + 14) = v1;
      _os_log_impl(&_mh_execute_header, v23, v41, "Failed to create UIImage from contact.imageData {contact: %{sensitive}@, imageData: %s}", v42, 0x16u);
      sub_100005508(v43, &qword_100975400, &qword_1007F65D0);
      v6 = &selRef_setTargetQueue_;

      sub_10000C60C(v44);

      sub_100026AC0(v13, v15);

LABEL_32:
    }

    else
    {

      sub_100026AC0(v13, v15);
    }

    goto LABEL_35;
  }

  v19 = [v18 CGImage];
  v0[41] = v19;
  if (!v19)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097F478);
    v21 = v10;
    v22 = v18;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      *v25 = 138740227;
      *(v25 + 4) = v21;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v1 = v21;
      *(v1 + 8) = v18;
      v26 = v21;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get cgImage from contact.imageData {contact: %{sensitive}@, uiImage: %@}", v25, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      v6 = &selRef_setTargetQueue_;

      sub_100026AC0(v13, v15);

      goto LABEL_32;
    }

    sub_100026AC0(v13, v15);

LABEL_35:
    p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
    goto LABEL_5;
  }

  v52 = v0[28];
  v0[10] = v0;
  v0[15] = v56;
  v0[11] = sub_1004A1708;
  v53 = v19;
  v54 = swift_continuation_init();
  v0[25] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10034B0A4;
  v0[21] = &unk_1008E33E0;
  v0[22] = v54;
  [v52 analyzeCGImage:v53 orientation:1 options:0 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1004A1708()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = *(v1 + 232);

    v4 = sub_1004A2258;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 232);
    v4 = sub_1004A1830;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1004A1830()
{
  v64 = v0;
  v1 = v0[26];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v7 = [v1 isSensitive];
  sub_100026AC0(v5, v4);

  v62 = v7;
  if ((v7 & 1) != 0 || (v9 = v0[37], v9 == v0[35]))
  {
LABEL_3:
    v10 = v0[30];
    v11 = v0[31];

    sub_100026AC0(v10, v11);
    v12 = v0[1];

    return v12(v62);
  }

  v14 = &selRef_setTargetQueue_;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  while (1)
  {
    v16 = v0[34];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v8 = *(v16 + 8 * v9 + 32);
    }

    v17 = v8;
    v0[36] = v8;
    v0[37] = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return _swift_continuation_await(v8);
    }

    if ([v8 v14[25]])
    {
      break;
    }

    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_10097F478);
    v37 = v17;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138739971;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      v43 = v39;
      v44 = v38;
      v45 = "Contact has no imageDataAvailable. Skipping {contact: %{sensitive}@}";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v44, v43, v45, v40, 0xCu);
      sub_100005508(v41, &qword_100975400, &qword_1007F65D0);

      goto LABEL_8;
    }

LABEL_7:

LABEL_8:
    v9 = v0[37];
    if (v9 == v0[35])
    {
      goto LABEL_3;
    }
  }

  v18 = [v17 imageData];
  if (!v18)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000C4AC(v46, qword_10097F478);
    v37 = v17;
    v38 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v47))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138739971;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      v43 = v47;
      v44 = v38;
      v45 = "Contact has no imageData. Skipping {contact: %{sensitive}@}";
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v19 = v18;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v0[38] = v20;
  v0[39] = v22;
  v23 = objc_allocWithZone(UIImage);
  sub_100294008(v20, v22);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25 = [v23 initWithData:isa];
  v0[40] = v25;

  sub_100026AC0(v20, v22);
  if (!v25)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_10097F478);
    sub_100294008(v20, v22);
    v49 = v17;
    v30 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    sub_100026AC0(v20, v22);
    if (os_log_type_enabled(v30, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *v51 = 138740227;
      *(v51 + 4) = v49;
      *v52 = v49;
      *(v51 + 12) = 2080;
      sub_100294008(v20, v22);
      v61 = v49;
      v54 = Data.description.getter();
      v56 = v55;
      sub_100026AC0(v20, v22);
      v57 = sub_10000C4E4(v54, v56, &v63);

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v30, v50, "Failed to create UIImage from contact.imageData {contact: %{sensitive}@, imageData: %s}", v51, 0x16u);
      sub_100005508(v52, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v53);
      v14 = &selRef_setTargetQueue_;

      sub_100026AC0(v20, v22);

LABEL_35:
    }

    else
    {

      v8 = sub_100026AC0(v20, v22);
    }

    goto LABEL_38;
  }

  v26 = [v25 CGImage];
  v0[41] = v26;
  if (!v26)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_10097F478);
    v28 = v17;
    v29 = v25;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138740227;
      *(v32 + 4) = v28;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v29;
      *v33 = v28;
      v33[1] = v25;
      v34 = v28;
      v35 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to get cgImage from contact.imageData {contact: %{sensitive}@, uiImage: %@}", v32, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      v14 = &selRef_setTargetQueue_;

      sub_100026AC0(v20, v22);

      goto LABEL_35;
    }

    sub_100026AC0(v20, v22);

LABEL_38:
    p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
    goto LABEL_8;
  }

  v58 = v0[28];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1004A1708;
  v59 = v26;
  v60 = swift_continuation_init();
  v0[25] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10034B0A4;
  v0[21] = &unk_1008E33E0;
  v0[22] = v60;
  [v58 analyzeCGImage:v59 orientation:1 options:0 completionHandler:v0 + 18];
  v8 = v0 + 10;

  return _swift_continuation_await(v8);
}

uint64_t sub_1004A2098(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[30];
  v4 = v1[31];
  swift_willThrow();
  sub_100026AC0(v3, v4);

  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097F478);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "UserSafety analyze failed: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v1[1];

  return v11(0);
}

uint64_t sub_1004A2258(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[39];
  v4 = v1[40];
  v5 = v1[38];
  v6 = v1[36];
  v8 = v1[30];
  v7 = v1[31];
  swift_willThrow();
  sub_100026AC0(v8, v7);
  sub_100026AC0(v5, v3);

  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097F478);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "UserSafety analyze failed: %@", v12, 0xCu);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v15 = v1[1];

  return v15(0);
}

uint64_t sub_1004A2448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 2);
  v9 = *(v3 + 3);
  v10 = *(v3 + 4);
  v11 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_100005C04;

  return sub_1004990C4(a1, a2, a3, v8, v9, v10, v11);
}

uint64_t sub_1004A2544()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Descriptor();
  v38 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for NWBrowser.Descriptor.Options();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser;
  if (!*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser])
  {
    v34 = result;
    v35 = &v31 - v18;
    v32 = v5;
    sub_10028088C(&qword_10097F6A0, &qword_100805498);
    v37 = v9;
    v33 = v13;
    v31 = v2;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007FA7E0;
    static NWBrowser.Descriptor.Options.Scope.nfc.getter();
    static NWBrowser.Descriptor.Options.Scope.personal.getter();
    v36 = v10;
    static NWBrowser.Descriptor.Options.Scope.contacts.getter();
    static NWBrowser.Descriptor.Options.Scope.family.getter();
    v40 = v20;
    sub_1004A4E9C(&qword_10097F6A8, &type metadata accessor for NWBrowser.Descriptor.Options.Scope, &protocol conformance descriptor for NWBrowser.Descriptor.Options.Scope);
    sub_10028088C(&qword_10097F6B0, &qword_1008054A0);
    sub_10044EDD8(&qword_10097F6B8, &qword_10097F6B0, &qword_1008054A0);
    v21 = v35;
    v22 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v13 + 16))(v16, v21, v22);
    static NWBrowser.Descriptor.Options.DeviceType.all.getter();
    v23 = v39;
    NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:rssiThreshold:)();
    v24 = *(sub_10028088C(&qword_100986240, &qword_10080D410) + 48);
    *v7 = 0xD00000000000001ALL;
    *(v7 + 1) = 0x800000010078FCF0;
    (*(v36 + 16))(&v7[v24], v23, v37);
    v25 = v38;
    v26 = v31;
    (*(v38 + 104))(v7, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v31);
    (*(v25 + 16))(v32, v7, v26);
    type metadata accessor for NWParameters();
    static NWParameters.airDropNetworkBrowserParameters(domain:type:)();
    type metadata accessor for NWBrowser();
    swift_allocObject();
    *&v1[v19] = NWBrowser.init(for:using:)();
    swift_retain_n();

    *(swift_allocObject() + 16) = v1;
    v27 = v1;
    NWBrowser.browseResultsChangedHandler.setter();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_weakInit();

    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;

    NWBrowser.stateUpdateHandler.setter();

    NWBrowser.start(queue:)();

    (*(v25 + 8))(v7, v26);
    (*(v36 + 8))(v39, v37);
    return (*(v33 + 8))(v35, v34);
  }

  return result;
}

void sub_1004A2B58()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser))
  {
    return;
  }

  v2 = v0;

  NWBrowser.cancel()();
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_sessionLogger);
  sub_10055FC6C();
  v4 = String._bridgeToObjectiveC()();

  v5 = *(v3 + 24);
  if (v5)
  {
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {

          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
          v6 = v8;
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v6 = *(*(v5 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_11;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_11:
  sub_100086D20(@"ApplicationServiceBrowse", @"Stop", v4, v6);

  *(v2 + v1) = 0;
}

uint64_t sub_1004A2CC0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F630);
  v1 = sub_10000C4AC(v0, qword_10097F630);
  if (qword_1009736F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0918);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004A2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v17 = a1;
  ObjectType = swift_getObjectType();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browserQueue;
  v9 = sub_1002DDC10();
  v14[1] = "ationServiceBrowser";
  v14[2] = v9;
  static DispatchQoS.default.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1004A4E9C(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  *&v3[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser] = 0;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_parameters;
  type metadata accessor for NWParameters();
  *&v3[v10] = static NWParameters.applicationService.getter();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_sessionLogger] = v17;
  v11 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_endpointsUpdateHandler];
  v12 = v20;
  *v11 = v19;
  v11[1] = v12;
  v21.receiver = v3;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_1004A3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;

  sub_1002B3398(0, 0, v7, &unk_1008054D8, v10);
}

uint64_t sub_1004A31C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1004A31E8, 0, 0);
}

uint64_t sub_1004A31E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v2 = static AirDropActor.shared;

    return _swift_task_switch(sub_1004A32E4, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1004A32E4()
{
  v1 = *(v0 + 64);
  sub_1004A384C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

void *sub_1004A3350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_1004A4058(a1);
  }

  return result;
}

uint64_t sub_1004A33E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A3480, v5, 0);
}

uint64_t sub_1004A3480()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_sessionLogger);
  sub_10055FC6C();
  v2 = String._bridgeToObjectiveC()();

  v3 = *(v1 + 24);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
  }

LABEL_9:
  sub_100086D20(@"ApplicationServiceBrowse", @"Start", v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004A35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A3664, v5, 0);
}

uint64_t sub_1004A3664()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v2, v3))
  {
    sub_10047FAC0();
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser;
    v5 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser);
    if (v5)
    {
      v6 = v5;
      sub_1004A2B58();

      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;

    swift_unknownObjectRelease();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  **(v0 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

void sub_1004A384C(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v2 - 8);
  v70 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v10 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v10 - 8);
  v80 = &v55 - v11;
  v79 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v12 = *(v79 - 8);
  v13 = __chkstk_darwin(v79);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = &v55 - v16;
  __chkstk_darwin(v15);
  v56 = &v55 - v17;
  v18 = type metadata accessor for NWBrowser.Result();
  __chkstk_darwin(v18);
  v82 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v72 = (v5 + 8);
  v75 = (v12 + 56);
  v76 = v19 + 16;
  v66 = (v5 + 32);
  v67 = (v5 + 16);
  v77 = v19;
  v74 = (v19 + 8);
  v57 = v12;
  v73 = (v12 + 48);
  v81 = a1;

  v25 = 0;
  v65 = _swiftEmptyArrayStorage;
  *&v26 = 136315138;
  v61 = v26;
  v78 = v18;
  v71 = v9;
  v60 = v4;
  while (1)
  {
    v27 = v25;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v77 + 16))(v82, *(v81 + 48) + *(v77 + 72) * (__clz(__rbit64(v23)) | (v25 << 6)), v18);
    NWBrowser.Result.endpoint.getter();
    if (sub_10062FAF4())
    {
      v28 = v70;
      (*v66)(v70, v9, v4);
      v29 = v28;
      v30 = v80;
      v31 = v69;
      sub_10000EE48(v29, v69, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v32 = v79;
      swift_storeEnumTagMultiPayload();
      sub_10000EE48(v31, v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v33 = 0;
    }

    else
    {
      if (qword_1009738D0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000C4AC(v34, qword_10097F630);
      v35 = v68;
      (*v67)(v68, v9, v4);
      v36 = v4;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v63 = v39;
        v64 = swift_slowAlloc();
        v83 = v64;
        *v39 = v61;
        v40 = v35;
        v62 = NWEndpoint.debugDescription.getter();
        v42 = v41;
        v43 = v36;
        v44 = *v72;
        (*v72)(v40, v43);
        v45 = sub_10000C4E4(v62, v42, &v83);

        v46 = v63;
        *(v63 + 1) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Dropping Endpoint %s - missing essential metadata for rendering", v46, 0xCu);
        sub_10000C60C(v64);

        v47 = v71;
        v4 = v60;
        v44(v71, v60);
        v33 = 1;
        v9 = v47;
      }

      else
      {

        v48 = v35;
        v49 = *v72;
        (*v72)(v48, v36);
        v50 = v71;
        v49(v71, v36);
        v33 = 1;
        v4 = v36;
        v9 = v50;
      }

      v32 = v79;
      v30 = v80;
    }

    v23 &= v23 - 1;
    (*v75)(v30, v33, 1, v32);
    v18 = v78;
    (*v74)(v82, v78);
    if ((*v73)(v30, 1, v32) == 1)
    {
      sub_100005508(v30, &qword_1009763E0, &qword_1007F95D0);
    }

    else
    {
      v51 = v56;
      sub_10000EE48(v30, v56, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10000EE48(v51, v58, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_10028E820(0, v65[2] + 1, 1, v65);
      }

      v53 = v65[2];
      v52 = v65[3];
      if (v53 >= v52 >> 1)
      {
        v65 = sub_10028E820((v52 > 1), v53 + 1, 1, v65);
      }

      v54 = v65;
      v65[2] = v53 + 1;
      sub_10000EE48(v58, v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }
  }

  while (1)
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      (*(v59 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_endpointsUpdateHandler))(v65);

      return;
    }

    v23 = *(a1 + 56 + 8 * v25);
    ++v27;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1004A4058(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = v73 - v3;
  v5 = type metadata accessor for NWError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v73 - v11;
  v13 = __chkstk_darwin(v10);
  v74 = v73 - v14;
  __chkstk_darwin(v13);
  v16 = v73 - v15;
  v17 = type metadata accessor for NWBrowser.State();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for NWBrowser.State.failed(_:))
  {
    v74 = v4;
    (*(v18 + 96))(v20, v17);
    (*(v6 + 32))(v12, v20, v5);
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097F630);
    v23 = *(v6 + 16);
    v23(v9, v12, v5);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v73[1] = v6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v73[0] = v12;
      v29 = v28;
      *v27 = 138412290;
      sub_1004A4E9C(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v23(v30, v9, v5);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v6 + 8);
      v32(v9, v5);
      *(v27 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "AirDrop application service browser failed with error %@", v27, 0xCu);
      sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
      v12 = v73[0];
    }

    else
    {

      v32 = *(v6 + 8);
      v32(v9, v5);
    }

    v44 = type metadata accessor for TaskPriority();
    v45 = v74;
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = qword_1009735E0;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = static AirDropActor.shared;
    v49 = sub_1004A4E9C(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v50 = swift_allocObject();
    v50[2] = v48;
    v50[3] = v49;
    v50[4] = v46;

    sub_1002B3398(0, 0, v45, &unk_1008054B0, v50);

    v32(v12, v5);
    return;
  }

  if (v21 == enum case for NWBrowser.State.waiting(_:))
  {
    (*(v18 + 96))(v20, v17);
    v33 = v16;
    (*(v6 + 32))(v16, v20, v5);
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_10097F630);
    v35 = *(v6 + 16);
    v36 = v74;
    v35(v74, v33, v5);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v39 = 138412290;
      sub_1004A4E9C(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v35(v40, v36, v5);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v6 + 8);
      v42(v36, v5);
      *(v39 + 4) = v41;
      v43 = v75;
      *v75 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop application service browser waiting with error %@", v39, 0xCu);
      sub_100005508(v43, &qword_100975400, &qword_1007F65D0);

      v42(v33, v5);
    }

    else
    {

      v56 = *(v6 + 8);
      v56(v36, v5);
      v56(v33, v5);
    }

    return;
  }

  if (v21 == enum case for NWBrowser.State.setup(_:))
  {
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C4AC(v51, qword_10097F630);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_21;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "AirDrop application service browser setting up";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);

LABEL_21:

    return;
  }

  if (v21 == enum case for NWBrowser.State.ready(_:))
  {
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000C4AC(v57, qword_10097F630);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "AirDrop application service browser ready", v60, 2u);
    }

    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v4, 1, 1, v61);
    v62 = qword_1009735E0;
    v63 = v75;
    v64 = v4;
    if (v62 != -1)
    {
      swift_once();
    }

    v65 = static AirDropActor.shared;
    v66 = sub_1004A4E9C(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = v66;
    v67[4] = v63;

    sub_1002B3098(0, 0, v64, &unk_1008054C8, v67);
  }

  else
  {
    if (v21 == enum case for NWBrowser.State.cancelled(_:))
    {
      if (qword_1009738D0 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_10000C4AC(v68, qword_10097F630);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_21;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "AirDrop application service browser cancelled";
      goto LABEL_20;
    }

    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000C4AC(v69, qword_10097F630);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "AirDrop application service browser in unknown state", v72, 2u);
    }

    (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1004A4C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004A35C8(a1, v4, v5, v6);
}

uint64_t sub_1004A4D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004A33E4(a1, v4, v5, v6);
}

uint64_t sub_1004A4DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1004A31C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1004A4E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004A4EE4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F6C0);
  v1 = sub_10000C4AC(v0, qword_10097F6C0);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A4FAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for UUID();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10032E82C();
  v34 = a1;
  if (!v14)
  {
    v13 = sub_10032B99C();
  }

  v15 = v14;
  *(v2 + 16) = v13;
  *(v2 + 24) = v14;
  v17 = v36;
  v16 = v37;
  v18 = v13;
  (*(v36 + 56))(v10, 1, 1, v37);

  v19 = v35;
  sub_10062E9D8(v10, v18, v15, v35);

  sub_100005508(v10, &unk_100976120, &qword_1007F9260);
  (*(v17 + 16))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_connectableUUID, v19, v16);
  *v7 = nw_endpoint_create_application_service();
  (*(v5 + 104))(v7, enum case for NWEndpoint.opaque(_:), v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_displayEndpoint, v7, v4);
  sub_10028088C(&qword_1009750D0, &qword_1007FE490);
  v20 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007F5670;
  v23 = v34;
  sub_1002940CC(v34, v22 + v21);
  v24 = sub_1002F334C(v22);
  swift_setDeallocating();
  sub_1002F96B0(v22 + v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  swift_deallocClassInstance();
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints) = v24;
  sub_1004A54BC();
  if (qword_1009738D8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_10097F6C0);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    v30 = *(v2 + 16);
    v31 = *(v2 + 24);

    v32 = sub_10000C4E4(v30, v31, &v38);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Creating Device %s", v28, 0xCu);
    sub_10000C60C(v29);
  }

  sub_1002F96B0(v23, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v36 + 8))(v35, v37);
  return v2;
}

id sub_1004A54BC()
{
  v213 = type metadata accessor for SFAirDrop.TXTRecord();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v201 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v2 = *(v261 - 8);
  v3 = __chkstk_darwin(v261);
  v223 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v228 = &v201 - v6;
  __chkstk_darwin(v5);
  v227 = &v201 - v7;
  v233 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v233);
  v9 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for SFString();
  v266 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v11 = __chkstk_darwin(v253);
  v13 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v201 - v14;
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v17 = __chkstk_darwin(v16 - 8);
  v245 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v246 = &v201 - v20;
  v21 = __chkstk_darwin(v19);
  v206 = &v201 - v22;
  v23 = __chkstk_darwin(v21);
  v217 = &v201 - v24;
  v25 = __chkstk_darwin(v23);
  v208 = &v201 - v26;
  v27 = __chkstk_darwin(v25);
  v216 = &v201 - v28;
  __chkstk_darwin(v27);
  v259 = &v201 - v29;
  v267 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v258 = *(v267 - 8);
  v30 = __chkstk_darwin(v267);
  v263 = &v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v264 = &v201 - v33;
  v34 = __chkstk_darwin(v32);
  v218 = &v201 - v35;
  v36 = __chkstk_darwin(v34);
  v248 = (&v201 - v37);
  v38 = __chkstk_darwin(v36);
  v219 = (&v201 - v39);
  v40 = __chkstk_darwin(v38);
  v247 = &v201 - v41;
  v42 = __chkstk_darwin(v40);
  v265 = &v201 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v201 - v45;
  __chkstk_darwin(v44);
  v257 = &v201 - v47;
  v48 = sub_10028088C(&qword_10097F7B0, &unk_1008055D8);
  v49 = __chkstk_darwin(v48 - 8);
  v224 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v236 = &v201 - v52;
  v53 = __chkstk_darwin(v51);
  v215 = &v201 - v54;
  v55 = __chkstk_darwin(v53);
  v237 = &v201 - v56;
  __chkstk_darwin(v55);
  v58 = &v201 - v57;
  v225 = sub_1004A77A0();
  v226 = v59;
  result = NWEndpoint.nw.getter();
  v241 = result;
  if (!result)
  {
    goto LABEL_172;
  }

  v222 = v2;
  v62 = *(v2 + 56);
  v61 = v2 + 56;
  v229 = v62;
  v62(v58, 1, 1, v261);
  v63 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v221 = v0;
  v64 = *(v0 + v63);
  v260 = v58;
  v65 = v64 + 56;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v64 + 56);
  v249 = v13;
  v209 = v13 + 8;
  v69 = v64;
  v232 = v9 + 8;
  v231 = v15 + 8;
  v70 = (v66 + 63) >> 6;
  v204 = enum case for SFString.maybeContact(_:);
  v203 = (v266 + 104);
  v202 = (v266 + 8);
  v252 = (v61 - 8);
  v220 = enum case for SFAirDrop.DeviceRelationship.contact(_:);
  v230 = v61;
  v244 = (v61 + 48);
  v210 = enum case for SFAirDrop.DeviceRelationship.stranger(_:);
  v214 = enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);

  v238 = 0;
  v243 = 0;
  v242 = 0;
  v234 = 0;
  v251 = 0;
  v240 = 0;
  v254 = 0;
  v235 = 0;
  v255 = 0;
  v256 = 0;
  v71 = 0;
  v72 = 0;
  v201 = xmmword_1007F5670;
  v73 = &unk_1008055D8;
  v262 = v9;
  v250 = v15;
  v239 = v69;
  while (v68)
  {
    v266 = v71;
    v75 = v259;
LABEL_14:
    v77 = v257;
    sub_1002940CC(*(v69 + 48) + *(v258 + 72) * (__clz(__rbit64(v68)) | (v72 << 6)), v257);
    sub_10000ECA8(v77, v46, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1002940CC(v46, v265);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (qword_1009738D8 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_10000C4AC(v83, qword_10097F6C0);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "NearField endpoints not applicable for SDAirDropDiscoveredDevice", v86, 2u);
          v73 = &unk_1008055D8;
          v69 = v239;
        }

        sub_1002F96B0(v265, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      }

      else
      {
        sub_1002F96B0(v265, type metadata accessor for SDAirDropDiscoveredEndpoint);
        if (qword_1009738D8 != -1)
        {
          swift_once();
        }

        v92 = type metadata accessor for Logger();
        sub_10000C4AC(v92, qword_10097F6C0);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "Classroom endpoints not applicable for SDAirDropDiscoveredDevice", v95, 2u);
          v73 = &unk_1008055D8;
          v69 = v239;
        }
      }

      v9 = v262;
      goto LABEL_111;
    }

    if (EnumCaseMultiPayload)
    {

      sub_10000ECA8(v265, v249, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      sub_1002940CC(v46, v248);
      v87 = swift_getEnumCaseMultiPayload();
      if (v87 > 1)
      {
        if (v87 != 2)
        {
          v107 = *v248;
          result = [*v248 displayName];
          if (!result)
          {
            goto LABEL_175;
          }

          v108 = result;
          v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;

          v255 = v110;
          v111 = v236;
          v69 = v239;
          device_model = v256;
          if (!v256)
          {
LABEL_72:
            sub_1002940CC(v46, v218);
            v131 = swift_getEnumCaseMultiPayload();
            if (v131 > 1)
            {
              if (v131 == 2)
              {
                v133 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
              }

              else
              {
                v133 = type metadata accessor for SDAirDropDiscoveredEndpoint;
              }

              sub_1002F96B0(v218, v133);
              v235 = 0;
              device_model = 0;
            }

            else
            {
              if (!v131)
              {
                sub_10000ECA8(v218, v206, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
                result = NWEndpoint.nw.getter();
                if (!result)
                {
                  goto LABEL_177;
                }

                device_model = nw_endpoint_get_device_model();
                swift_unknownObjectRelease();
                if (device_model)
                {
                  v235 = String.init(cString:)();
                  device_model = v132;
                }

                else
                {
                  v235 = 0;
                }

                v111 = v236;
                sub_1002F96B0(v206, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
                goto LABEL_87;
              }

              v134 = v250;
              sub_10000ECA8(v218, v250, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
              v135 = (v134 + v253[8]);
              device_model = v135[1];
              v235 = *v135;

              sub_1002F96B0(v134, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
            }

            v111 = v236;
          }

LABEL_87:
          v256 = device_model;
          v136 = v260;
          sub_1004A8A1C(v260, v111);
          v137 = (*v252)(v111, 1, v261);
          v9 = v262;
          if (v137 == 1)
          {
            sub_100005508(v136, &qword_10097F7B0, &unk_1008055D8);
            v73 = &unk_1008055D8;
            sub_100005508(v111, &qword_10097F7B0, &unk_1008055D8);
            if (*(v249 + v253[13]) == 1)
            {
              (*v244)(v136, v214, v261);
            }

            else
            {
              v136 = v260;
              if (*&v209[v253[11]])
              {
                v138 = &v253 + 1;
              }

              else
              {
                v138 = &v243;
              }

              (*v244)(v260, *(v138 - 64), v261);
            }

            v229(v136, 0, 1, v261);
          }

          else
          {
            sub_100005508(v111, &qword_10097F7B0, &unk_1008055D8);
          }

          v139 = v249;
          v140 = v249[1];
          v234 = *v249;
          v251 = v140;

          sub_1002F96B0(v139, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          v243 = 1;
          goto LABEL_111;
        }

        v97 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v98 = &v273;
LABEL_67:
        sub_1002F96B0(*(v98 - 32), v97);
      }

      else
      {
        if (!v87)
        {
          sub_10000ECA8(v248, v217, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          result = NWEndpoint.nw.getter();
          if (!result)
          {
            goto LABEL_173;
          }

          device_name = nw_endpoint_get_device_name();
          swift_unknownObjectRelease();
          if (device_name)
          {
            v89 = String.init(cString:)();
            v91 = v90;
            if ((sub_10032C7CC() & 0x4000000000) != 0)
            {
              v128 = v205;
              (*v203)(v205, v204, v207);
              sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
              v129 = swift_allocObject();
              *(v129 + 16) = v201;
              *(v129 + 56) = &type metadata for String;
              *(v129 + 64) = sub_100026764();
              *(v129 + 32) = v89;
              *(v129 + 40) = v91;
              v266 = SFString.format(_:)();
              v91 = v130;
              v73 = &unk_1008055D8;
              v69 = v239;

              (*v202)(v128, v207);
            }

            else
            {
              v266 = v89;
            }

            v111 = v236;
            sub_1002F96B0(v217, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);

            v255 = v91;
            device_model = v256;
            if (!v256)
            {
              goto LABEL_72;
            }

            goto LABEL_87;
          }

          v97 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v98 = &v250;
          goto LABEL_67;
        }

        v103 = v250;
        sub_10000ECA8(v248, v250, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v104 = (v103 + v253[9]);
        v106 = *v104;
        v105 = v104[1];

        sub_1002F96B0(v103, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v105)
        {

          v266 = v106;
          v255 = v105;
        }
      }

      v111 = v236;
      device_model = v256;
      if (!v256)
      {
        goto LABEL_72;
      }

      goto LABEL_87;
    }

    sub_10000ECA8(v265, v75, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    sub_1002940CC(v46, v247);
    v79 = swift_getEnumCaseMultiPayload();
    if (v79 > 1)
    {
      if (v79 == 2)
      {
        v96 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v96 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      sub_1002F96B0(v247, v96);
    }

    else
    {
      if (v79)
      {
        v99 = v250;
        sub_10000ECA8(v247, v250, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v100 = (v99 + v253[8]);
        v102 = *v100;
        v101 = v100[1];

        sub_1002F96B0(v99, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v101)
        {

          v235 = v102;
          v256 = v101;
        }
      }

      else
      {
        sub_10000ECA8(v247, v216, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_176;
        }

        v80 = nw_endpoint_get_device_model();
        swift_unknownObjectRelease();
        if (v80)
        {
          v235 = String.init(cString:)();
          v82 = v81;
          sub_1002F96B0(v216, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);

          v256 = v82;
        }

        else
        {
          sub_1002F96B0(v216, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        }
      }

      v9 = v262;
      v75 = v259;
    }

    v113 = v237;
    if (!v255)
    {
      sub_1002940CC(v46, v219);
      v114 = swift_getEnumCaseMultiPayload();
      if (v114 > 1)
      {
        if (v114 == 2)
        {
          sub_1002F96B0(v219, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v266 = 0;
          v255 = 0;
          goto LABEL_100;
        }

        v125 = *v219;
        result = [*v219 displayName];
        if (!result)
        {
          goto LABEL_179;
        }

        v126 = result;
        v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v255 = v127;
      }

      else
      {
        if (v114)
        {
          v120 = v250;
          sub_10000ECA8(v219, v250, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          v121 = (v120 + v253[9]);
          v122 = v121[1];
          v266 = *v121;
          v255 = v122;

          v123 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
          v124 = v120;
          goto LABEL_99;
        }

        sub_10000ECA8(v219, v208, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_178;
        }

        v115 = nw_endpoint_get_device_name();
        swift_unknownObjectRelease();
        if (v115)
        {
          v116 = String.init(cString:)();
          v118 = v117;
          v119 = sub_10032C7CC();
          v255 = v118;
          if ((v119 & 0x4000000000) != 0)
          {
            v141 = v205;
            (*v203)(v205, v204, v207);
            sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
            v142 = swift_allocObject();
            *(v142 + 16) = v201;
            *(v142 + 56) = &type metadata for String;
            *(v142 + 64) = sub_100026764();
            v143 = v255;
            *(v142 + 32) = v116;
            *(v142 + 40) = v143;
            v266 = SFString.format(_:)();
            v255 = v144;

            (*v202)(v141, v207);
          }

          else
          {
            v266 = v116;
          }

          v9 = v262;
          v75 = v259;
          v123 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v124 = v208;
LABEL_99:
          sub_1002F96B0(v124, v123);
LABEL_100:
          v113 = v237;
          goto LABEL_101;
        }

        sub_1002F96B0(v208, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v266 = 0;
        v255 = 0;
      }

      v9 = v262;
      v75 = v259;
      goto LABEL_100;
    }

LABEL_101:
    sub_1004A8A1C(v260, v113);
    if ((*v252)(v113, 1, v261) == 1)
    {
      sub_100005508(v113, &qword_10097F7B0, &unk_1008055D8);
      if ((sub_10032C7CC() & 0x80000) != 0)
      {
        v145 = v244;
        sub_1002F96B0(v75, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v147 = v260;
        sub_100005508(v260, &qword_10097F7B0, &unk_1008055D8);
        v149 = v214;
      }

      else
      {
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_174;
        }

        v145 = v244;
        contact_id = nw_endpoint_get_contact_id();
        swift_unknownObjectRelease();
        if (contact_id)
        {
          String.init(cString:)();
          sub_1002F96B0(v259, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          v147 = v260;
          sub_100005508(v260, &qword_10097F7B0, &unk_1008055D8);

          v148 = &v253 + 1;
        }

        else
        {
          sub_1002F96B0(v259, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          v147 = v260;
          sub_100005508(v260, &qword_10097F7B0, &unk_1008055D8);
          v148 = &v243;
        }

        v149 = *(v148 - 64);
        v9 = v262;
      }

      v150 = *v145;
      v151 = v215;
      v152 = v261;
      v150(v215, v149, v261);
      v242 = 1;
      v229(v151, 0, 1, v152);
      sub_1004A8A8C(v151, v147);
      v69 = v239;
      v73 = &unk_1008055D8;
    }

    else
    {
      sub_1002F96B0(v75, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_100005508(v113, &qword_10097F7B0, &unk_1008055D8);
      v242 = 1;
    }

LABEL_111:
    sub_1002940CC(v46, v264);
    v153 = swift_getEnumCaseMultiPayload();
    if (v153 > 1)
    {
      if (v153 == 2)
      {
        v157 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v157 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      sub_1002F96B0(v264, v157);
      goto LABEL_125;
    }

    if (!v153)
    {
      sub_10000ECA8(v264, v246, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        return result;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (!device_id)
      {
        sub_1002F96B0(v246, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        goto LABEL_124;
      }

      v240 = String.init(cString:)();
      v156 = v155;
      sub_1002F96B0(v246, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);

      goto LABEL_120;
    }

    v158 = v250;
    sub_10000ECA8(v264, v250, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v159 = (v158 + v253[7]);
    v160 = *v159;
    v156 = v159[1];

    sub_1002F96B0(v158, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v156)
    {

      v240 = v160;
LABEL_120:
      v254 = v156;
    }

LABEL_124:
    v9 = v262;
LABEL_125:
    v68 &= v68 - 1;
    sub_1002940CC(v46, v263);
    v161 = swift_getEnumCaseMultiPayload();
    if (v161 > 1)
    {
      if (v161 != 2)
      {
        sub_1002F96B0(v46, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v74 = v263;
        goto LABEL_6;
      }

      sub_1002F96B0(v46, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10000ECA8(v263, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      v163 = *&v232[*(v233 + 28)];

      v164 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v165 = v9;
LABEL_133:
      sub_1002F96B0(v165, v164);
      v71 = v266;
      if (v163)
      {

        v238 = 1;
        v71 = v266;
      }
    }

    else
    {
      if (v161)
      {
        sub_1002F96B0(v46, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v166 = v250;
        sub_10000ECA8(v263, v250, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v163 = *&v231[v253[11]];

        v164 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
        v165 = v166;
        goto LABEL_133;
      }

      sub_10000ECA8(v263, v245, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        goto LABEL_171;
      }

      v162 = nw_endpoint_get_contact_id();
      swift_unknownObjectRelease();
      if (v162)
      {
        String.init(cString:)();
        sub_1002F96B0(v245, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        sub_1002F96B0(v46, type metadata accessor for SDAirDropDiscoveredEndpoint);

        v238 = 1;
        v9 = v262;
        v71 = v266;
      }

      else
      {
        sub_1002F96B0(v245, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v74 = v46;
        v9 = v262;
LABEL_6:
        sub_1002F96B0(v74, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v71 = v266;
      }
    }
  }

  v75 = v259;
  while (1)
  {
    v76 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_169:
      swift_once();
      goto LABEL_164;
    }

    if (v76 >= v70)
    {
      break;
    }

    v68 = *(v65 + 8 * v76);
    ++v72;
    if (v68)
    {
      v266 = v71;
      v72 = v76;
      goto LABEL_14;
    }
  }

  v167 = v260;
  if (v255)
  {
    String.utf8CString.getter();

    nw_endpoint_set_device_name();
    v167 = v260;
  }

  v168 = v228;
  v169 = v227;
  v170 = v222;
  v171 = v254;
  if (v256)
  {
    String.utf8CString.getter();

    nw_endpoint_set_device_model();
    v167 = v260;
  }

  if (v171)
  {
    v172 = v240;
    String.utf8CString.getter();
    nw_endpoint_set_device_id();

    sub_10054141C(8, v172, v171);

    v173 = static String._fromSubstring(_:)();
    v175 = v174;
    goto LABEL_144;
  }

  if (v251)
  {
    v176 = String.lowercased()();

    sub_10054141C(8, v176._countAndFlagsBits, v176._object);

    v173 = static String._fromSubstring(_:)();
    v175 = v177;
LABEL_144:

    v268 = v173;
    v269 = v175;
    v167 = v260;
    v178._countAndFlagsBits = 58;
    v178._object = 0xE100000000000000;
    String.append(_:)(v178);
    v179 = v269;
    v271 = v268;
  }

  else
  {
    v271 = 980183406;
    v179 = 0xE400000000000000;
  }

  v272 = v179;
  if (v242)
  {
    v180._countAndFlagsBits = 97;
    v180._object = 0xE100000000000000;
    String.append(_:)(v180);
  }

  if (v243)
  {
    v181._countAndFlagsBits = 98;
    v181._object = 0xE100000000000000;
    String.append(_:)(v181);
  }

  if (v238)
  {
    v182._countAndFlagsBits = 99;
    v182._object = 0xE100000000000000;
    String.append(_:)(v182);
  }

  v183 = v224;
  sub_1004A8A1C(v167, v224);
  if ((*v252)(v183, 1, v261) == 1)
  {
    sub_100005508(v183, &qword_10097F7B0, &unk_1008055D8);
  }

  else
  {
    v184 = v261;
    (*(v170 + 32))(v169, v183, v261);
    v185 = *(v170 + 104);
    v186 = v223;
    v185(v223, v220, v184);
    sub_1004A8AFC(&unk_100978CF0, &type metadata accessor for SFAirDrop.DeviceRelationship, &protocol conformance descriptor for SFAirDrop.DeviceRelationship);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v187 = *(v170 + 8);
    v187(v186, v184);
    if ((v268 != v270) | v238 & 1)
    {
      v188 = *(v170 + 16);
      v188(v168, v169, v261);
    }

    else
    {
      v185(v168, v210, v261);
      v188 = *(v170 + 16);
    }

    v189 = v261;
    v188(v223, v168, v261);
    v190 = v211;
    SFAirDrop.TXTRecord.init(deviceRelationship:)();
    SFAirDrop.TXTRecord.addToEndpoint(_:)();
    (*(v212 + 8))(v190, v213);
    v187(v168, v189);
    v187(v169, v189);
  }

  v70 = sub_1004A77A0();
  v69 = v191;
  v68 = v225;
  v73 = v226;
  if (v225 == v70 && v226 == v191 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    swift_unknownObjectRelease();

LABEL_161:

    return sub_100005508(v260, &qword_10097F7B0, &unk_1008055D8);
  }

  if (qword_1009738D8 != -1)
  {
    goto LABEL_169;
  }

LABEL_164:
  v192 = type metadata accessor for Logger();
  sub_10000C4AC(v192, qword_10097F6C0);
  v194 = v271;
  v193 = v272;

  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v195, v196))
  {

    swift_unknownObjectRelease();

    goto LABEL_161;
  }

  v197 = swift_slowAlloc();
  v268 = swift_slowAlloc();
  *v197 = 136315651;
  v198 = sub_10000C4E4(v194, v193, &v268);

  *(v197 + 4) = v198;
  *(v197 + 12) = 2081;
  v199 = sub_10000C4E4(v68, v73, &v268);

  *(v197 + 14) = v199;
  *(v197 + 22) = 2081;
  v200 = sub_10000C4E4(v70, v69, &v268);

  *(v197 + 24) = v200;
  _os_log_impl(&_mh_execute_header, v195, v196, "DiscoveredDevice Updated %s [%{private}s] -> [%{private}s]", v197, 0x20u);
  swift_arrayDestroy();

  swift_unknownObjectRelease();
  return sub_100005508(v260, &qword_10097F7B0, &unk_1008055D8);
}

uint64_t sub_1004A77A0()
{
  _StringGuts.grow(_:)(25);
  v1._countAndFlagsBits = 0x28656369766544;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[1]);
  v2._countAndFlagsBits = 0x22206D4E20;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  result = NWEndpoint.nw.getter();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  device_name = nw_endpoint_get_device_name();
  swift_unknownObjectRelease();
  if (device_name)
  {
    String.init(cString:)();
  }

  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v5._countAndFlagsBits = 0x20644D202C22;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  device_model = nw_endpoint_get_device_model();
  swift_unknownObjectRelease();
  if (device_model)
  {
    String.init(cString:)();
  }

  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_1004A792C()
{

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_connectableUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_displayEndpoint;
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredDevice(uint64_t a1)
{
  result = qword_10097F708;
  if (!qword_10097F708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A7A74(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1004A7B9C()
{
  v1 = v0;
  v37 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 56);
  v17 = (v14 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v19 = 0;
  LOBYTE(v20) = 0;
  v38 = v9;
  while (v16)
  {
    v23 = v19;
LABEL_11:
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1002940CC(*(v13 + 48) + *(v6 + 72) * (v24 | (v23 << 6)), v11);
    if (v20)
    {
      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v22 = v11;
      goto LABEL_5;
    }

    sub_1002940CC(v11, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v22 = v9;
      }

      else
      {
        sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v22 = v9;
        v21 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_5:
      result = sub_1002F96B0(v22, v21);
      LOBYTE(v20) = 1;
      v19 = v23;
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v29 = v9;
      v30 = v6;
      v31 = v5;
      v32 = v36;
      sub_10000ECA8(v29, v36, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v20) = *(v32 + *(v37 + 60));
      v33 = v32;
      v5 = v31;
      v6 = v30;
      v9 = v38;
      result = sub_1002F96B0(v33, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v19 = v23;
    }

    else
    {
      v26 = v9;
      v27 = v35;
      sub_10000ECA8(v26, v35, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if ((sub_10032C7CC() & 0x4000000000) != 0)
      {
        sub_1002F96B0(v27, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        LOBYTE(v20) = 1;
      }

      else
      {
        v28 = sub_10032C7CC();
        sub_1002F96B0(v27, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v20 = (v28 >> 39) & 1;
      }

      v19 = v23;
      v9 = v38;
    }
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v17)
    {

      return v20 & 1;
    }

    v16 = *(v13 + 56 + 8 * v23);
    ++v19;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A7FE0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A8140, v4, 0);
}

uint64_t sub_1004A8140()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(swift_task_alloc() + 16) = v4;

  sub_1002CC594(sub_1004A8B44, v7, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[14], &qword_1009763E0, &qword_1007F95D0);
  }

  else
  {
    sub_10000ECA8(v0[14], v0[20], type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (qword_1009738D8 != -1)
    {
      swift_once();
    }

    v8 = v0[19];
    v9 = v0[20];
    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097F6C0);
    sub_1002940CC(v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[19];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = sub_10032B99C();
      v19 = v18;
      sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v20 = sub_10000C4E4(v17, v19, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Removing duplicate/stale endpoint %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {

      sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v21 = v0[20];
    v22 = v0[13];
    swift_beginAccess();
    sub_10036E788(v21, v22);
    swift_endAccess();
    sub_100005508(v22, &qword_1009763E0, &qword_1007F95D0);
    sub_1002F96B0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v24 = v0[17];
  v23 = v0[18];
  sub_1002940CC(v0[11], v24);
  swift_beginAccess();
  sub_10046DE64(v23, v24);
  swift_endAccess();
  sub_1002F96B0(v23, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1004A54BC();

  v25 = v0[1];

  return v25();
}

BOOL sub_1004A8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_1002940CC(a1, &v13 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = EnumCaseMultiPayload;
  sub_1002F96B0(v9, off_1008E3598[EnumCaseMultiPayload]);
  sub_1002940CC(a2, v7);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_1002F96B0(v7, off_1008E35B8[a2]);
  return v11 == a2;
}

uint64_t sub_1004A8660()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A86FC, v2, 0);
}