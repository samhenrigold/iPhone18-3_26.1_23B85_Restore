uint64_t sub_100039990(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = sub_10003987C(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1000C72F4();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1000C72F4())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = sub_1000C7254();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    if (*(v11 + 16) == *(a2 + 16) && *(v11 + 24) == *(a2 + 24))
    {
LABEL_8:
    }

    else
    {
      v12 = sub_1000C73A4();

      if ((v12 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v13 = sub_1000C7254();
            v14 = sub_1000C7254();
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v15)
            {
              goto LABEL_51;
            }

            if (v9 >= v15)
            {
              goto LABEL_52;
            }

            v13 = *(v5 + 32 + 8 * v8);
            v14 = *(v5 + 32 + 8 * v9);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_100030E08(v5);
            v16 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v16) = 0;
          }

          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

          if ((v5 & 0x8000000000000000) != 0 || v16)
          {
            v5 = sub_100030E08(v5);
            v17 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v8;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v9 >= *(v17 + 16))
          {
            goto LABEL_49;
          }

          *(v17 + 8 * v9 + 32) = v13;

          *a1 = v5;
        }

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_47;
    }
  }

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
LABEL_52:
  __break(1u);
  return sub_1000C72F4();
}

uint64_t *sub_100039C00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100039C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039CCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100039D30()
{
  sub_100010544((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100039D68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100039D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100039DA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100039E24()
{
  result = qword_100117100;
  if (!qword_100117100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117100);
  }

  return result;
}

id sub_100039E78()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(CNAvatarViewController) init];
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000CD0E0;
  *(v3 + 32) = v1;
  sub_10003A07C();
  v4 = v1;
  isa = sub_1000C6E84().super.isa;

  [v2 setContacts:isa];

  return v2;
}

uint64_t sub_100039F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003A028();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100039F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003A028();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10003A000(uint64_t a1)
{
  sub_10003A028();
  sub_1000C6724();
  __break(1u);
}

unint64_t sub_10003A028()
{
  result = qword_100117108;
  if (!qword_100117108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117108);
  }

  return result;
}

unint64_t sub_10003A07C()
{
  result = qword_100117088;
  if (!qword_100117088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100117088);
  }

  return result;
}

uint64_t sub_10003A0C8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003A0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 281))
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

uint64_t sub_10003A130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 281) = 1;
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

    *(result + 281) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A1E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C6674();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000FEB8(&qword_100117110, &qword_1000CE150);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-v10];
  v18 = v2;
  sub_10003A924();
  sub_1000C6864();
  sub_1000C6664();
  sub_10003A978();
  sub_1000C69F4();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1 + *(sub_10000FEB8(&qword_100117128, &qword_1000CE1A0) + 36);
  sub_1000C6094();

  type metadata accessor for GlobalPermissionViewModel(0);
  sub_10003AB08(&qword_100117130, type metadata accessor for GlobalPermissionViewModel, &unk_1000CEDAC);
  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  v13 = v19;
  v14 = v20;
  LOBYTE(v4) = v21;
  result = type metadata accessor for AlertViewModelAlert(0);
  v16 = v12 + *(result + 20);
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v16 + 16) = v4;
  return result;
}

void *sub_10003A4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *(a1 + 16);

  sub_10000FEB8(&qword_100117138, &unk_1000CE1D0);
  sub_1000C6BB4();
  v27 = *(a1 + 48);
  v26 = *(a1 + 56);
  v24 = v29;
  v25 = *(a1 + 64);
  sub_1000229B4(v27, v26);

  sub_10000FEB8(&qword_100117140, &qword_1000D5B40);
  sub_1000C6BB4();
  v22 = v29;
  v20 = *(a1 + 104);
  v21 = *(a1 + 96);
  v23 = *(a1 + 120);
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  v19 = v4;
  v18 = *(a1 + 112);
  v17 = *(a1 + 144);
  sub_1000229B4(v21, v20);

  sub_1000229B4(v4, v5);

  sub_10000FEB8(&qword_100117148, &qword_1000CE1E0);
  sub_1000C6B84();
  v16 = v29;
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  sub_1000229B4(v6, v7);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6BB4();
  v15 = v29;
  sub_1000C6BB4();
  v14 = v29;
  sub_1000C6BB4();
  v8 = v29;
  v32 = *(a1 + 240);
  sub_1000C6BB4();
  v9 = v29;
  type metadata accessor for SharingModel(0);
  sub_10003AB08(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  v10 = sub_1000C6404();
  v12 = v11;
  LOBYTE(v29) = 1;
  result = sub_1000C6AD4();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v28;
  *(a2 + 24) = v24;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  *(a2 + 41) = v32;
  *(a2 + 44) = *(&v32 + 3);
  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  *(a2 + 64) = v25;
  *(a2 + 72) = v22;
  *(a2 + 80) = v30;
  *(a2 + 88) = v31;
  *(a2 + 92) = *(&v29 + 3);
  *(a2 + 89) = v29;
  *(a2 + 96) = v21;
  *(a2 + 104) = v20;
  *(a2 + 112) = v18;
  *(a2 + 120) = v23;
  *(a2 + 124) = *&v39[3];
  *(a2 + 121) = *v39;
  *(a2 + 128) = v19;
  *(a2 + 136) = v5;
  *(a2 + 144) = v17;
  *(a2 + 152) = v16;
  *(a2 + 156) = *&v38[3];
  *(a2 + 153) = *v38;
  *(a2 + 160) = v6;
  *(a2 + 168) = v7;
  *(a2 + 176) = v15;
  *(a2 + 184) = v30;
  *(a2 + 192) = v31;
  *(a2 + 196) = *&v37[3];
  *(a2 + 193) = *v37;
  *(a2 + 200) = v14;
  *(a2 + 208) = v30;
  *(a2 + 216) = v31;
  *(a2 + 220) = *&v36[3];
  *(a2 + 217) = *v36;
  *(a2 + 224) = v8;
  *(a2 + 232) = v30;
  *(a2 + 240) = v31;
  *(a2 + 244) = *&v35[3];
  *(a2 + 241) = *v35;
  *(a2 + 248) = v9;
  *(a2 + 256) = v30;
  *(a2 + 264) = v31;
  *(a2 + 268) = *&v34[3];
  *(a2 + 265) = *v34;
  *(a2 + 272) = v32;
  *(a2 + 276) = *&v33[3];
  *(a2 + 273) = *v33;
  *(a2 + 280) = *(&v32 + 1);
  return result;
}

unint64_t sub_10003A924()
{
  result = qword_100117118;
  if (!qword_100117118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117118);
  }

  return result;
}

unint64_t sub_10003A978()
{
  result = qword_100117120;
  if (!qword_100117120)
  {
    sub_100010624(&qword_100117110, &qword_1000CE150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117120);
  }

  return result;
}

unint64_t sub_10003A9F0()
{
  result = qword_100117160;
  if (!qword_100117160)
  {
    sub_100010624(&qword_100117128, &qword_1000CE1A0);
    sub_100010624(&qword_100117110, &qword_1000CE150);
    sub_1000C6674();
    sub_10003A978();
    swift_getOpaqueTypeConformance2();
    sub_10003AB08(&qword_100117168, type metadata accessor for AlertViewModelAlert, &unk_1000D32A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117160);
  }

  return result;
}

uint64_t sub_10003AB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10003AB60()
{
  v104 = sub_1000C5F74();
  v106 = *(v104 - 8);
  v1 = __chkstk_darwin(v104);
  v102 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v100 = &v95 - v4;
  v5 = __chkstk_darwin(v3);
  v101 = &v95 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v95 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v95 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v95 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = &v95 - v17;
  __chkstk_darwin(v16);
  v20 = &v95 - v19;
  v103 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v21 = v107;
  if (v107)
  {
    return v21;
  }

  v99 = v18;
  v95 = v12;
  v96 = v9;
  v97 = v15;
  v22 = v106;
  sub_1000C5F54();
  v23 = sub_1000C5F64();
  v24 = sub_1000C6FF4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "configuredContainer needsBundleIDOverride initially true", v25, 2u);
  }

  v26 = *(v22 + 8);
  v27 = v20;
  v28 = v104;
  v106 = v22 + 8;
  v26(v27, v104);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v29 = v107;
  v98 = v26;
  v30 = v99;
  if (v107)
  {
    sub_1000C5F54();
    v31 = v29;
    v32 = sub_1000C5F64();
    v33 = sub_1000C6FF4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v107 = v97;
      *v34 = 136315138;
      v35 = v31;
      v36 = [v35 description];
      v37 = sub_1000C6D84();
      LODWORD(v96) = v33;
      v38 = v28;
      v39 = v37;
      v41 = v40;

      v42 = sub_100071844(v39, v41, &v107);

      *(v34 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v96, "configuredContainer using setupInfo: %s", v34, 0xCu);
      sub_100010544(v97);

      v98(v30, v38);
    }

    else
    {

      v26(v30, v28);
    }

    v51 = [v31 containerOptions];
    v52 = [v51 applicationBundleIdentifierOverrideForContainerAccess];

    v21 = v105;
    if (v52)
    {

      v53 = 0;
    }

    else
    {

      v53 = 1;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v43 = v107;
    if (v107)
    {
      v44 = v97;
      sub_1000C5F54();
      v45 = v43;
      v46 = sub_1000C5F64();
      v47 = sub_1000C6FF4();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v43;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v46, v47, "configuredContainer with id: %@", v48, 0xCu);
        sub_10003BBA0(v49);
        v26 = v98;

        v44 = v97;
      }

      else
      {
        v50 = v46;
        v46 = v45;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v107 != 9)
      {
        v88 = v95;
        sub_1000C5F54();
        v89 = sub_1000C5F64();
        v90 = sub_1000C6FD4();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "configuredContainer throwing as it can't build a container", v91, 2u);
        }

        v26(v88, v28);
        v87 = "configuredContainer()";
        v77 = 0xD000000000000019;
        goto LABEL_36;
      }

      sub_1000C6D84();
      sub_1000C6DA4();

      v54 = objc_allocWithZone(CKContainerID);
      v55 = sub_1000C6D44();

      v56 = [v54 initWithContainerIdentifier:v55 environment:1];

      sub_1000860A0(v56, 0);

      v44 = v96;
      sub_1000C5F54();

      v46 = sub_1000C5F64();
      v57 = sub_1000C6FF4();

      if (os_log_type_enabled(v46, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        v26 = v98;

        v44 = v96;

        v60 = v107;
        *(v58 + 4) = v107;
        *v59 = v60;
        _os_log_impl(&_mh_execute_header, v46, v57, "configuredContainer with containerID: %@", v58, 0xCu);
        sub_10003BBA0(v59);
      }
    }

    v26(v44, v28);
    v53 = 1;
    v21 = v105;
  }

  sub_100086B10();

  if (v21)
  {
    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v21 = v107;
  if (!v107)
  {
LABEL_29:
    v77 = 0xD000000000000033;
    v78 = v102;
    sub_1000C5F54();

    v79 = sub_1000C5F64();
    v80 = sub_1000C6FF4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v109 = v82;
      *v81 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
      v83 = sub_1000C6D94();
      v85 = sub_100071844(v83, v84, &v109);

      *(v81 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "configuredContainer throwing as it doesn't have a container or nil sourceAppBundleID: %s", v81, 0xCu);
      sub_100010544(v82);

      v86 = v102;
    }

    else
    {

      v86 = v78;
    }

    v98(v86, v104);
    v87 = "can't build a CKContainer";
LABEL_36:
    v21 = 0x80000001000D8E60;
    v92 = v87 | 0x8000000000000000;
    sub_1000100B0();
    swift_allocError();
    *v93 = 0xD000000000000015;
    *(v93 + 8) = 0x80000001000D8E60;
    *(v93 + 16) = 0;
    *(v93 + 24) = v77;
    *(v93 + 32) = v92;
    *(v93 + 40) = 10;
    swift_willThrow();
    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v61 = v108;
  if (!v108)
  {

    goto LABEL_29;
  }

  v105 = 0;
  v62 = v104;
  v63 = v107;
  v64 = v101;
  sub_1000C5F54();
  v65 = sub_1000C5F64();
  v66 = sub_1000C6FF4();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 67109120;
    *(v67 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v65, v66, "configuredContainer about to return container, needsBundleIDOverride: %{BOOL}d", v67, 8u);
    v64 = v101;
  }

  v98(v64, v62);
  if (v53)
  {
    v68 = [v21 options];
    v69 = sub_1000C6D44();
    [v68 setApplicationBundleIdentifierOverride:v69];

    v70 = v100;
    sub_1000C5F54();

    v71 = sub_1000C5F64();
    v72 = sub_1000C6FF4();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v107 = v74;
      *v73 = 136315138;
      v75 = sub_100071844(v63, v61, &v107);

      *(v73 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v71, v72, "configuredContainer options applicationBundleIDOverride set to: %s", v73, 0xCu);
      sub_100010544(v74);

      v76 = v100;
    }

    else
    {

      v76 = v70;
    }

    v98(v76, v62);
  }

  else
  {
  }

  return v21;
}

double sub_10003B924@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10003B9A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10003BBA0(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100117080, &unk_1000CC350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003BC08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003BC7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003BCF0()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel__selectedPermission;
  v2 = sub_10000FEB8(&unk_100117020, &qword_1000CD838);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel__allowInviting;
  v4 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_10003BE00()
{
  sub_10003BCF0();

  return swift_deallocClassInstance();
}

void sub_10003BE80(uint64_t a1)
{
  sub_10003BF94(319);
  if (v1 <= 0x3F)
  {
    sub_10003BFF8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003BF94(uint64_t a1)
{
  if (!qword_1001171B8)
  {
    sub_100010624(&qword_100117018, &qword_1000CD830);
    v1 = sub_1000C60B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1001171B8);
    }
  }
}

void sub_10003BFF8()
{
  if (!qword_100117460)
  {
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100117460);
    }
  }
}

uint64_t sub_10003C048@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_10003C06C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CB8C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10003C0B4()
{
  v1 = *v0;
  sub_1000C7464();
  sub_1000C7474(v1);
  return sub_1000C7494();
}

Swift::Int sub_10003C128()
{
  v1 = *v0;
  sub_1000C7464();
  sub_1000C7474(v1);
  return sub_1000C7494();
}

uint64_t sub_10003C16C()
{
  swift_getKeyPath();
  sub_10003CBD4();
  sub_1000C5DF4();

  return *(v0 + 32);
}

uint64_t sub_10003C1DC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003CBD4();
    sub_1000C5DE4();
  }

  return result;
}

uint64_t sub_10003C2C4()
{
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing23OneTimeLinkRowViewModel___observationRegistrar;
  v2 = sub_1000C5E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10003C398(uint64_t a1)
{
  result = sub_1000C5E14();
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

uint64_t getEnumTagSinglePayload for SharePermission(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePermission(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003C5C0()
{
  result = qword_100117380;
  if (!qword_100117380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117380);
  }

  return result;
}

unint64_t sub_10003C618()
{
  result = qword_100117388;
  if (!qword_100117388)
  {
    sub_100010624(&qword_100117390, qword_1000CE4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117388);
  }

  return result;
}

uint64_t sub_10003C688@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000C7064();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10003C6B8(unint64_t a1)
{
  if (a1 < 5)
  {
    return 0x302010004uLL >> (8 * a1);
  }

  sub_1000C7244(35);
  v2._object = 0x80000001000D90B0;
  v2._countAndFlagsBits = 0xD000000000000021;
  sub_1000C6E04(v2);
  type metadata accessor for ParticipantRole(0);
  sub_1000C72D4();
  result = sub_1000C72E4();
  __break(1u);
  return result;
}

uint64_t sub_10003C790(void *a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isOrgAdmin))
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
  v5 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v27)
  {
    v6 = *(v27 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);

    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v25 = v26 != 3 && v7 && v26 == 0;
  v8 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_existingContact);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v26 != 1)
  {
    v23 = v5;
    v22 = v7;
    v24 = v4;
    v9 = a1[13];
    v10 = a1[14];
    v11 = v10 & 0x2000000000000000;
    v12 = HIBYTE(v10) & 0xF;
    v13 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v14 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v15 = v9 & 0xFFFFFFFFFFFFLL;
    v16 = HIBYTE(v10) & 0xF;
    if (!v14)
    {
      v17 = a1[12];
      v11 = v17 & 0x2000000000000000;
      v16 = HIBYTE(v17) & 0xF;
      v15 = a1[11] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    if (v18 | v8)
    {
      return 1;
    }

    if (v24)
    {
      if (v26)
      {
        return 0;
      }
    }

    else
    {
      v19 = v10 & 0x2000000000000000;
      if (!v14)
      {
        v20 = a1[12];
        v19 = v20 & 0x2000000000000000;
        v12 = HIBYTE(v20) & 0xF;
        v13 = a1[11] & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v21 = v12;
      }

      else
      {
        v21 = v13;
      }

      result = v21 != 0;
      if ((v21 != 0) | v26 & 1)
      {
        return result;
      }

      if (v25 && v23)
      {
        return 1;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if ((v26 & 8) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();
    }

    return (v22 & ((v23 != 0) | v24) & 1) != 0;
  }

  if (v4 && v5)
  {
    if (!v8)
    {
      return v26 ^ 1u;
    }

    return 1;
  }

  result = 0;
  if (v8 && (v5 == 0) | v4 & 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_10003CB8C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_10003CBD4()
{
  result = qword_100117398;
  if (!qword_100117398)
  {
    type metadata accessor for OneTimeLinkRowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117398);
  }

  return result;
}

uint64_t sub_10003CC40(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v12 = v31;
  if (v31 > 4u)
  {
    if (v31 <= 6u)
    {
      if (v31 == 5)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v13 = 11;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v31 == 7 || v31 == 8)
    {
      goto LABEL_22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      v21 = v30;
      v22 = sub_10009DE88(v11, v30);
      v24 = v23;

      (*(v9 + 16))(v5, v11, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      LOBYTE(v21) = sub_10009EC80(v22, v24, v5);

      sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
      v25 = *(a1 + 16);
      switch(v21)
      {
        case 1:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 1;
          break;
        case 2:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 2;
          break;
        case 3:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 3;
          break;
        case 4:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 4;
          break;
        case 5:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 5;
          break;
        case 6:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 6;
          break;
        case 7:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 7;
          break;
        case 8:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 8;
          break;
        case 9:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 9;
          break;
        case 10:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 10;
          break;
        case 11:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 11;
          break;
        case 12:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 12;
          break;
        case 13:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 13;
          break;
        default:
          if (!v25)
          {
            goto LABEL_64;
          }

          v26 = 0;
          break;
      }

      v27 = sub_100071E64(v26);
      if (v28)
      {
        v19 = *(*(a1 + 56) + 16 * v27);
        v29 = *(v9 + 8);

        v29(v11, v8);
        return v19;
      }

LABEL_64:
      (*(v9 + 8))(v11, v8);
      goto LABEL_25;
    }

    sub_100010F24(v7, &qword_100116260, &qword_1000CD940);
    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v14 = sub_100071E64(1);
    if (v15)
    {
      goto LABEL_27;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v14 = sub_100071E64(13);
    if (v16)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_16:
    if (v12)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v13 = 7;
      goto LABEL_24;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 13;
    goto LABEL_24;
  }

  if (v31 <= 1u)
  {
    goto LABEL_16;
  }

  if (v31 == 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 8;
  }

  else
  {
    if (v31 == 3)
    {
      if (*(a1 + 16))
      {
        v13 = 9;
        goto LABEL_24;
      }

LABEL_25:
      if (*(a1 + 16))
      {
        v14 = sub_100071E64(13);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_67:
      __break(1u);
      JUMPOUT(0x10003D178);
    }

    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 10;
  }

LABEL_24:
  v14 = sub_100071E64(v13);
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v19 = *(*(a1 + 56) + 16 * v14);

  return v19;
}

uint64_t sub_10003D1B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10003D264(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v1 = [objc_opt_self() mainBundle];
      v9._countAndFlagsBits = 0x80000001000DA0F0;
      v6._countAndFlagsBits = 0x646578694DLL;
      v3._object = 0x80000001000DA0D0;
      v2 = 0xD00000000000003ELL;
      v3._countAndFlagsBits = 0xD000000000000010;
      v4.value._countAndFlagsBits = 0;
      v4.value._object = 0;
      v5.super.isa = v1;
      v6._object = 0xE500000000000000;
      goto LABEL_7;
    }

    v1 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0x80000001000D7E90;
    v3._countAndFlagsBits = 0x6C6E6F2077656956;
    v2 = 0xD00000000000001BLL;
    v3._object = 0xE900000000000079;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0x80000001000D7E70;
    v3._object = 0x80000001000D7E50;
    v2 = 0xD00000000000001CLL;
    v3._countAndFlagsBits = 0xD000000000000010;
  }

  v4.value._countAndFlagsBits = 0;
  v4.value._object = 0;
  v5.super.isa = v1;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
LABEL_7:
  v7 = sub_1000C5B74(v3, v4, v5, v6, v2, v9);

  return v7;
}

unint64_t *sub_10003D40C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10003D43C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v3._object = 0x80000001000DA130;
    v10._countAndFlagsBits = 0x80000001000DA130;
    v3._countAndFlagsBits = 0xD000000000000014;
    v4.value._countAndFlagsBits = 0;
    v4.value._object = 0;
    v5.super.isa = v2;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v7 = 0xD000000000000014;
  }

  else
  {
    v3._object = 0x80000001000DA150;
    v10._countAndFlagsBits = 0x80000001000DA150;
    v3._countAndFlagsBits = 0xD000000000000016;
    v7 = 0xD000000000000016;
    v4.value._countAndFlagsBits = 0;
    v4.value._object = 0;
    v5.super.isa = v2;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
  }

  v8 = sub_1000C5B74(v3, v4, v5, v6, v7, v10);

  return v8;
}

void *sub_10003D538@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10003D578(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v1 = [objc_opt_self() mainBundle];
      v9._countAndFlagsBits = 0x80000001000D7EB0;
      v2._countAndFlagsBits = 0x61635F646578694DLL;
      v2._object = 0xEF657469766E496ELL;
      v6._countAndFlagsBits = 0x646578694DLL;
      v3 = 0xD00000000000003DLL;
      v4.value._countAndFlagsBits = 0;
      v4.value._object = 0;
      v5.super.isa = v1;
      v6._object = 0xE500000000000000;
      goto LABEL_7;
    }

    v1 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0x80000001000DA060;
    v2._countAndFlagsBits = 0xD000000000000017;
    v2._object = 0x80000001000DA040;
    v3 = 0xD000000000000021;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0x80000001000DA0B0;
    v2._object = 0x80000001000DA090;
    v3 = 0xD00000000000001FLL;
    v2._countAndFlagsBits = 0xD000000000000015;
  }

  v4.value._countAndFlagsBits = 0;
  v4.value._object = 0;
  v5.super.isa = v1;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
LABEL_7:
  v7 = sub_1000C5B74(v2, v4, v5, v6, v3, v9);

  return v7;
}

uint64_t sub_10003D734(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10003D7B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100048B54(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100048B54(v8, v6);

  sub_1000C60A4();
  return sub_100010F24(v8, &qword_100116C80, &unk_1000CE870);
}

uint64_t sub_10003D8E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003D96C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = type metadata accessor for AlertViewModelButton(0);
  v66 = *(v15 - 1);
  v16 = __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = *a1;
  if ((*a1 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , v68 != 1))
  {
    sub_1000C6F24();
    v58 = sub_1000C6F44();
    (*(*(v58 - 8) + 56))(v8, 0, 1, v58);
    sub_1000C6F14();

    v59 = sub_1000C6F04();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = &protocol witness table for MainActor;
    *(v60 + 32) = a4;
    *(v60 + 40) = v21;
    sub_1000B8860(0, 0, v8, &unk_1000CF828, v60);
  }

  else
  {
    sub_1000C65D4();
    v22 = sub_1000C68C4();
    v24 = v23;
    v65 = v12;
    LODWORD(v64) = v25;
    v27 = v26;
    v28 = v15[6];
    v29 = sub_1000C61F4();
    v30 = *(v29 - 8);
    v62 = *(v30 + 56);
    v63 = v30 + 56;
    v62(&v20[v28], 1, 1, v29);
    v31 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v32 = &v20[v15[5]];
    *v32 = v22;
    *(v32 + 1) = v24;
    v32[16] = v64 & 1;
    *(v32 + 3) = v27;
    v33 = &v20[v15[7]];
    *v33 = sub_1000495E4;
    v33[1] = v31;
    sub_1000C65D4();
    LOWORD(v61._object) = 256;
    v34 = sub_1000C68C4();
    v36 = v35;
    LOBYTE(v22) = v37;
    v39 = v38;
    v64 = a4;
    v40 = v15[6];
    sub_1000C61D4();
    v62(&v18[v40], 0, 1, v29);
    sub_1000C5DB4();
    v41 = &v18[v15[5]];
    *v41 = v34;
    *(v41 + 1) = v36;
    v41[16] = v22 & 1;
    *(v41 + 3) = v39;
    v42 = &v18[v15[7]];
    *v42 = 0;
    *(v42 + 1) = 0;
    v43 = [objc_opt_self() mainBundle];
    v61._countAndFlagsBits = 0x80000001000D9C70;
    v69._object = 0x80000001000D9C50;
    v69._countAndFlagsBits = 0xD000000000000016;
    v70.value._countAndFlagsBits = 0;
    v70.value._object = 0;
    v44.super.isa = v43;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v63 = sub_1000C5B74(v69, v70, v44, v71, 0xD00000000000002DLL, v61);
    v46 = v45;

    v47 = sub_10003E610();
    v49 = v48;
    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v50 = *(v66 + 72);
    v51 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1000CC5C0;
    v53 = v52 + v51;
    sub_100049224(v20, v53);
    sub_100049224(v18, v53 + v50);
    sub_1000C5DB4();
    v54 = type metadata accessor for AlertViewModel(0);
    v55 = &v14[v54[5]];
    *v55 = v63;
    v55[1] = v46;
    v56 = &v14[v54[6]];
    *v56 = v47;
    v56[1] = v49;
    *&v14[v54[7]] = v52;
    (*(*(v54 - 1) + 56))(v14, 0, 1, v54);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100048B54(v14, v65);

    sub_1000C60A4();
    sub_100010F24(v14, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = 1;

    sub_1000C60A4();
    sub_1000492E0(v18);
    return sub_1000492E0(v20);
  }
}

uint64_t sub_10003DFF0(uint64_t a1)
{
  v1 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000C6F24();
    v6 = sub_1000C6F44();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1000C6F14();

    v7 = sub_1000C6F04();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_1000B8860(0, 0, v3, &unk_1000CF888, v8);
  }

  return result;
}

uint64_t sub_10003E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1000C6F14();
  v4[4] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003E1E8, v6, v5);
}

uint64_t sub_10003E1E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 0;

  sub_1000C60A4();
  *(v0 + 56) = sub_1000C6F04();
  v2 = sub_1000C6ED4();
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;

  return _swift_task_switch(sub_10003E2C8, v2, v1);
}

uint64_t sub_10003E2C8()
{
  v1 = *(v0[2] + 16);
  v0[10] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10003E388;

  return sub_10001A94C(2, v1, 1);
}

uint64_t sub_10003E388()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10003E508;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10003E4A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10003E4A4()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10003E5B0, v1, v2);
}

uint64_t sub_10003E508()
{
  v1 = v0[12];

  sub_1000401D8(v1, 0xD000000000000019, 0x80000001000DA020);

  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_10003E5B0, v2, v3);
}

uint64_t sub_10003E5B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003E610()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (LOBYTE(v12._object) == 9)
  {
    v0 = sub_100042AE4();
    v1 = sub_10003CC40(v0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v12._object && (sub_1000C7154(), v2 = sub_1000C7174(), , v12._object, v2) && (sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70), (swift_dynamicCast() & 1) != 0))
    {
      object = v12._object;
      v3 = v13;
    }

    else
    {
      object = 0;
      v3 = 0xE000000000000000;
    }

    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = object & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() mainBundle];
      v12._countAndFlagsBits = 0x80000001000D9CE0;
      v14._object = 0x80000001000D9CA0;
      v14._countAndFlagsBits = 0x100000000000003ELL;
      v16.value._countAndFlagsBits = 0;
      v16.value._object = 0;
      v7.super.isa = v6;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      sub_1000C5B74(v14, v16, v7, v18, 0xD000000000000038, v12);

      sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000CB170;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 64) = sub_1000382F4();
      *(v8 + 32) = object;
      *(v8 + 40) = v3;
      v1 = sub_1000C6D54();
    }

    else
    {

      v9 = [objc_opt_self() mainBundle];
      v15._countAndFlagsBits = 0xD000000000000032;
      v12._countAndFlagsBits = 0x80000001000D9CE0;
      v15._object = 0x80000001000D9D20;
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v10.super.isa = v9;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v1 = sub_1000C5B74(v15, v17, v10, v19, 0xD000000000000038, v12);
    }
  }

  return v1;
}

uint64_t sub_10003E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 113) = a5;
  *(v5 + 24) = a4;
  *(v5 + 32) = sub_1000C6F14();
  *(v5 + 40) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return _swift_task_switch(sub_10003E9B8, v7, v6);
}

uint64_t sub_10003E9B8()
{
  v1 = *(v0 + 113);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = v1 & 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = _swiftEmptyArrayStorage;

  sub_1000C60A4();
  *(v0 + 64) = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;

  return _swift_task_switch(sub_10003EAEC, v3, v2);
}

uint64_t sub_10003EAEC()
{
  v1 = *(v0 + 113);
  v2 = *(*(v0 + 24) + 16);
  *(v0 + 88) = *(v2 + 16);

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_10003EBBC;
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_10001A94C(v4, v2, 1);
}

uint64_t sub_10003EBBC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_10003ED3C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_10003ECD8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10003ECD8()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10003EDE4, v1, v2);
}

uint64_t sub_10003ED3C()
{
  v1 = v0[13];

  sub_1000401D8(v1, 0xD000000000000019, 0x80000001000DA020);

  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_10003EDE4, v2, v3);
}

uint64_t sub_10003EDE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003EE58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003EECC(char a1)
{
  v2 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v3 = __chkstk_darwin(v2 - 8);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v64 - v5;
  v7 = type metadata accessor for AlertViewModelButton(0);
  v69 = *(v7 - 1);
  v8 = __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v64 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v13 = v75;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v14 = v74;
  if (v74 && ((v15 = [v74 participants], v14, sub_100010778(0, &qword_100117010, CKShareParticipant_ptr), v16 = sub_1000C6E94(), v15, v16 >> 62) ? (v17 = sub_1000C72F4()) : (v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v17 == 1) && v13 != 1 && (a1 & 1) != 0))
  {
    sub_1000C65D4();
    v18 = sub_1000C68C4();
    v20 = v19;
    v22 = v21;
    v68 = v6;
    v24 = v23;
    v25 = v7[6];
    sub_1000C61C4();
    v26 = sub_1000C61F4();
    v27 = *(*(v26 - 8) + 56);
    v65 = v10;
    v66 = v27;
    v27(&v12[v25], 0, 1, v26);
    v28 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v29 = v7[5];
    v67 = v12;
    v30 = &v12[v29];
    *v30 = v18;
    *(v30 + 1) = v20;
    v30[16] = v22 & 1;
    *(v30 + 3) = v24;
    v31 = &v12[v7[7]];
    *v31 = sub_10004921C;
    v31[1] = v28;
    sub_1000C65D4();
    LOWORD(v62._object) = 256;
    v32 = sub_1000C68C4();
    v34 = v33;
    LOBYTE(v18) = v35;
    v37 = v36;
    v38 = v7[6];
    v39 = v65;
    sub_1000C61D4();
    v66(v39 + v38, 0, 1, v26);
    sub_1000C5DB4();
    v40 = v39 + v7[5];
    *v40 = v32;
    *(v40 + 8) = v34;
    *(v40 + 16) = v18 & 1;
    *(v40 + 24) = v37;
    v41 = (v39 + v7[7]);
    v42 = v39;
    *v41 = 0;
    v41[1] = 0;
    v43 = objc_opt_self();
    v44 = [v43 mainBundle];
    v62._countAndFlagsBits = 0x80000001000D9AF0;
    v76._object = 0x80000001000D9AD0;
    v76._countAndFlagsBits = 0xD000000000000017;
    v78.value._countAndFlagsBits = 0;
    v78.value._object = 0;
    v45.super.isa = v44;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v66 = sub_1000C5B74(v76, v78, v45, v80, 0xD000000000000057, v62);
    v47 = v46;

    v48 = [v43 mainBundle];
    v63._countAndFlagsBits = 0x80000001000D9B90;
    v77._countAndFlagsBits = 0xD000000000000035;
    v77._object = 0x80000001000D9B50;
    v79.value._countAndFlagsBits = 0;
    v79.value._object = 0;
    v49.super.isa = v48;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    v50 = sub_1000C5B74(v77, v79, v49, v81, 0xD000000000000056, v63);
    v52 = v51;

    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v53 = *(v69 + 72);
    v54 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000CC5C0;
    v56 = v67;
    sub_100049224(v67, v55 + v54);
    sub_100049224(v42, v55 + v54 + v53);
    v57 = v68;
    sub_1000C5DB4();
    v58 = type metadata accessor for AlertViewModel(0);
    v59 = (v57 + v58[5]);
    *v59 = v66;
    v59[1] = v47;
    v60 = (v57 + v58[6]);
    *v60 = v50;
    v60[1] = v52;
    *(v57 + v58[7]) = v55;
    (*(*(v58 - 1) + 56))(v57, 0, 1, v58);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100048B54(v57, v70);

    sub_1000C60A4();
    sub_100010F24(v57, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    v71 = 1;

    sub_1000C60A4();
    sub_1000492E0(v42);
    return sub_1000492E0(v56);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v73 = a1 & 1;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    return sub_100040B70(v72);
  }
}

uint64_t sub_10003F6AC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_10003F72C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10003F7DC@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a4 = v6;
  return result;
}

uint64_t sub_10003F858(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003EECC(v4);
  }

  return result;
}

uint64_t sub_10003F8B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t (*sub_10003F940())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_100049734;
}

uint64_t sub_10003FA3C@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v7 == 1)
  {

    result = sub_100042A64(v4);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    result = v6;
  }

  *a3 = result;
  return result;
}

uint64_t sub_10003FB3C@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v7 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    result = v6;
  }

  else
  {

    result = sub_100042A64(v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_10003FC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(*(a4 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
    if (v6 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (v7)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (v6)
      {
LABEL_8:

        swift_getKeyPath();
        swift_getKeyPath();
        return sub_1000C60A4();
      }
    }

    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_100052CE0();

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10003FD8C(int a1, int a2, unsigned __int8 a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
    v11 = ((a4 & 0xFE) == 2) & (a2 | a1);
    if (v11 == 1)
    {

      v12 = sub_10004910C;
    }

    else
    {
      v12 = 0;
      a6 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    if (v11)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a6;
    }

    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10003FF14(char a1, char a2, char a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10004009C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v10 = a2;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  v12 = sub_100042DC0(a1 & 1, v10, v9, a5 & 1, a7);

  return v12;
}

BOOL sub_1000401A0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100042A28(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

void sub_1000401D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43 = a2;
  v5 = sub_1000C5F74();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
  v50 = a1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v44 = v11;
    v13 = v46;
    if (v49 == 4)
    {
      v42 = v6;

      if (!v13)
      {
        __break(1u);
        return;
      }

      v12 = v13;
      v14 = [v12 underlyingErrors];
      v15 = sub_1000C6E94();

      if (*(v15 + 16))
      {
        swift_errorRetain();

        v16 = sub_1000C5CD4();

        v12 = v16;
      }

      else
      {
      }

      v6 = v42;
    }

    else
    {
      sub_1000494BC(v45[0], v45[1], v46, v47, v48, v49);
    }

    v11 = v44;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C5F54();

    v17 = v12;
    v18 = sub_1000C5F64();
    v19 = sub_1000C6FD4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v44 = v11;
      v21 = v20;
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v21 = 136315394;
      *(v21 + 4) = sub_100071844(v43, a3, v45);
      *(v21 + 12) = 2080;
      v22 = v6;
      v23 = v17;
      v24 = [v23 description];
      v25 = sub_1000C6D84();
      v42 = v5;
      v27 = v26;

      v28 = sub_100071844(v25, v27, v45);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s; exiting with final error %s", v21, 0x16u);
      swift_arrayDestroy();

      (*(v22 + 8))(v44, v42);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    sub_10000B6FC(v17, 1u);

    swift_unknownObjectRelease();
  }

  else
  {
    v42 = v5;
    sub_1000C5F54();

    v29 = v12;
    v30 = sub_1000C5F64();
    v31 = sub_1000C6FD4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_100071844(v43, a3, v45);
      *(v32 + 12) = 2080;
      v33 = v29;
      v34 = v6;
      v35 = [v33 description];
      v36 = sub_1000C6D84();
      v38 = v37;

      v39 = sub_100071844(v36, v38, v45);

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s; unable to exit with final error %s", v32, 0x16u);
      swift_arrayDestroy();

      (*(v34 + 8))(v9, v42);
    }

    else
    {

      (*(v6 + 8))(v9, v42);
    }
  }
}

uint64_t sub_10004077C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 65) = a4;
  sub_1000C6F14();
  *(v5 + 24) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_100040818, v7, v6);
}

uint64_t sub_100040818()
{
  v1 = *(v0 + 65);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 64) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1000409A8;

    return sub_1000588A0(v1 == 0);
  }

  else
  {

    if (v1)
    {
      v4 = &off_100107368;
    }

    else
    {
      v4 = &off_100107340;
    }

    sub_10001B418(v4);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000409A8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100040AE4;
  }

  else
  {
    v5 = sub_10004975C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100040AE4()
{
  v1 = *(v0 + 56);

  sub_1000401D8(v1, 0xD000000000000029, 0x80000001000D9C20);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100040B70(char a1)
{
  v2 = v1;
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = &unk_100107170;
  if ((a1 & 1) == 0)
  {
    v7 = &unk_100107148;
  }

  if (*v7)
  {
    v8 = &unk_100107158;
    if (a1)
    {
      v8 = &unk_100107180;
    }

    v9 = *v8;

    sub_1000C6F24();
    v10 = sub_1000C6F44();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    sub_1000C6F14();

    v11 = sub_1000C6F04();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v2;
    *(v12 + 40) = v9;
    sub_1000B8860(0, 0, v6, &unk_1000CF7C0, v12);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100040CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 16) = a4;
  sub_1000C6F14();
  *(v5 + 24) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_100040D94, v7, v6);
}

uint64_t sub_100040D94()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 48) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100040E58;
  v3 = *(v0 + 72);

  return sub_10001BBE4(v3, v1, 1);
}

uint64_t sub_100040E58()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100040FD4;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100040F74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100040F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040FD4()
{
  v1 = *(v0 + 64);

  sub_1000401D8(v1, 0xD000000000000029, 0x80000001000D9BF0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041074(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1000C6F24();
  v5 = sub_1000C6F44();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1000C6F14();

  v6 = sub_1000C6F04();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_1000B8860(0, 0, v4, &unk_1000D47D0, v7);
}

uint64_t sub_1000411A0(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1000C6F44();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1000C6F14();

  v6 = sub_1000C6F04();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_1000B85A4(0, 0, v4, &unk_1000CF7B0, v7);
}

uint64_t sub_1000412C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1000C6F14();
  v4[7] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10004135C, v6, v5);
}

uint64_t sub_10004135C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 16);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_10004147C;

    return sub_100056B08();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10004147C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100041610;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100041598;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100041598()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041610()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041680()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlert;
  v2 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlertBool;
  v4 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAccessPermissions;
  v7 = sub_10000FEB8(&qword_100117648, &qword_1000CEDE8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAccessPermissionSelected;
  v9 = sub_10000FEB8(&qword_100117650, &qword_1000CEDF0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__readWritePermissions;
  v11 = sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__readWritePermissionSelected;
  v13 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAddPeoplePermissions;
  v15 = sub_10000FEB8(&qword_100117668, &qword_1000CEE08);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAddPeoplePermissionSelected;
  v17 = sub_10000FEB8(&qword_100117670, &qword_1000CEE10);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v5(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__anyoneCanAddPeople, v4);
  v18 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanRequestAccessPermissions;
  v19 = sub_10000FEB8(&qword_100117678, &qword_1000CEE18);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanRequestAccessSelected;
  v21 = sub_10000FEB8(&unk_100117680, &unk_1000CEE20);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__localizedPermissionSummary;
  v23 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v5(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__shouldShowSharingOptionsView, v4);
  v24 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__didTapCopyLink;
  v25 = sub_10000FEB8(&qword_100117690, &qword_1000CEE30);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v5(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__savingInProgress, v4);
  return v0;
}

uint64_t sub_100041AA8()
{
  sub_100041680();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalPermissionViewModel(uint64_t a1)
{
  result = qword_100117440;
  if (!qword_100117440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041B54(uint64_t a1)
{
  sub_10002F0A0(319, &unk_100117450, &qword_100116C80, &unk_1000CE870);
  if (v1 <= 0x3F)
  {
    sub_10001D1A8(319, &qword_100117460, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10002F0A0(319, &qword_100117468, &qword_100117470, &qword_1000D5C30);
      if (v3 <= 0x3F)
      {
        sub_10001D1A8(319, &qword_100117478, &type metadata for GlobalPermissionViewModel.WhoCanAccess);
        if (v4 <= 0x3F)
        {
          sub_10002F0A0(319, &qword_100117480, &qword_100117488, &qword_1000CE880);
          if (v5 <= 0x3F)
          {
            sub_10001D1A8(319, &qword_100117490, &type metadata for GlobalPermissionViewModel.CanMakeChangesOrViewOnly);
            if (v6 <= 0x3F)
            {
              sub_10002F0A0(319, &qword_100117498, &qword_1001174A0, &qword_1000CE888);
              if (v7 <= 0x3F)
              {
                sub_10001D1A8(319, &qword_1001174A8, &type metadata for GlobalPermissionViewModel.WhoCanAddPeople);
                if (v8 <= 0x3F)
                {
                  sub_10002F0A0(319, &qword_1001174B0, &qword_1001174B8, &qword_1000CE890);
                  if (v9 <= 0x3F)
                  {
                    sub_10001D1A8(319, &unk_1001174C0, &type metadata for GlobalPermissionViewModel.WhoCanRequestAccess);
                    if (v10 <= 0x3F)
                    {
                      sub_10001D1A8(319, &qword_100116C88, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        sub_10002F0A0(319, &qword_1001174D0, &unk_1001174D8, &qword_1000CE898);
                        if (v12 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
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
  }
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100042288()
{
  result = qword_1001175D8;
  if (!qword_1001175D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175D8);
  }

  return result;
}

unint64_t sub_1000422DC()
{
  result = qword_1001175E0;
  if (!qword_1001175E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175E0);
  }

  return result;
}

unint64_t sub_1000423A4()
{
  result = qword_1001175F0;
  if (!qword_1001175F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175F0);
  }

  return result;
}

unint64_t sub_1000423F8()
{
  result = qword_1001175F8;
  if (!qword_1001175F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175F8);
  }

  return result;
}

unint64_t sub_1000424C0()
{
  result = qword_100117608;
  if (!qword_100117608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117608);
  }

  return result;
}

unint64_t sub_100042514()
{
  result = qword_100117610;
  if (!qword_100117610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117610);
  }

  return result;
}

uint64_t sub_1000425DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100042618()
{
  result = qword_100117620;
  if (!qword_100117620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117620);
  }

  return result;
}

unint64_t sub_10004266C()
{
  result = qword_100117628;
  if (!qword_100117628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117628);
  }

  return result;
}

uint64_t sub_100042730@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_1000427B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

double sub_10004289C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10004291C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_10004911C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_1000229B4(v2, v3);

  return sub_1000C60A4();
}

uint64_t sub_100042A64(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(result + 32);
  if (v2 == 1)
  {
    if (v1 != 1)
    {
      if (*(result + 33))
      {

        return 0;
      }

      v3 = 0;
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (v1 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(result + 33);
LABEL_9:

  if (v2 != v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_100042AE4()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CE810;
  *(inited + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v29._countAndFlagsBits = 0x80000001000D9DE0;
  v34._countAndFlagsBits = 0xD000000000000072;
  v34._object = 0x80000001000D9D60;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v3.super.isa = v2;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v34, v39, v3, v44, 0xD00000000000006ALL, v29);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 1;
  v7 = [v1 mainBundle];
  v30._countAndFlagsBits = 0x80000001000D9DE0;
  v35._countAndFlagsBits = 0xD00000000000006DLL;
  v35._object = 0x80000001000D9E50;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v8.super.isa = v7;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v35, v40, v8, v45, 0xD00000000000006ALL, v30);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 2;
  v12 = [v1 mainBundle];
  v31._countAndFlagsBits = 0x80000001000D9DE0;
  v36._countAndFlagsBits = 0xD000000000000070;
  v36._object = 0x80000001000D9EC0;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v13.super.isa = v12;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v36, v41, v13, v46, 0xD00000000000006ALL, v31);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 3;
  v17 = [v1 mainBundle];
  v32._countAndFlagsBits = 0x80000001000D9DE0;
  v37._countAndFlagsBits = 0xD000000000000071;
  v37._object = 0x80000001000D9F40;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v18.super.isa = v17;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v37, v42, v18, v47, 0xD00000000000006ALL, v32);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 13;
  v22 = [v1 mainBundle];
  v38._countAndFlagsBits = 0xD000000000000059;
  v33._countAndFlagsBits = 0x80000001000D9DE0;
  v38._object = 0x80000001000D9FC0;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v23.super.isa = v22;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v38, v43, v23, v48, 0xD00000000000006ALL, v33);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  v27 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  return v27;
}

uint64_t sub_100042DC0(char a1, char a2, unsigned __int8 a3, char a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v17 = a3;
        v5 = [objc_opt_self() mainBundle];
        if (v17 > 1)
        {
          v6._countAndFlagsBits = 0xD000000000000023;
          v73._countAndFlagsBits = 0x80000001000D9370;
          v6._object = 0x80000001000D9340;
          v10 = 0xD000000000000056;
        }

        else
        {
          v6._countAndFlagsBits = 0xD000000000000034;
          v10 = 0xD000000000000044;
          v73._countAndFlagsBits = 0x80000001000D9410;
          v6._object = 0x80000001000D93D0;
        }

        goto LABEL_10;
      }

      v11 = "xisting participants";
      v12 = 0x80000001000D9480;
      v5 = [objc_opt_self() mainBundle];
      v6._countAndFlagsBits = 0xD00000000000001DLL;
      v10 = 0xD00000000000003BLL;
      goto LABEL_9;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        v5 = [objc_opt_self() mainBundle];
        v6._countAndFlagsBits = 0xD00000000000002FLL;
        v73._countAndFlagsBits = 0x80000001000D94F0;
        v6._object = 0x80000001000D94C0;
        v10 = 0xD000000000000091;
        goto LABEL_10;
      }

      if ((a4 & 1) == 0)
      {
        sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000CD0A0;
        *(inited + 32) = 7;
        v21 = objc_opt_self();
        v22 = [v21 mainBundle];
        v73._countAndFlagsBits = 0x80000001000D95D0;
        v84._object = 0x80000001000D9590;
        v84._countAndFlagsBits = 0xD000000000000030;
        v94.value._countAndFlagsBits = 0;
        v94.value._object = 0;
        v23.super.isa = v22;
        v104._countAndFlagsBits = 0;
        v104._object = 0xE000000000000000;
        v24 = sub_1000C5B74(v84, v94, v23, v104, 0xD000000000000049, v73);
        v26 = v25;

        *(inited + 40) = v24;
        *(inited + 48) = v26;
        *(inited + 56) = 8;
        v74._object = "rmission to invite others";
        v27 = [v21 mainBundle];
        v74._countAndFlagsBits = 0x80000001000D95D0;
        v85._object = 0x80000001000D9620;
        v85._countAndFlagsBits = 0xD000000000000039;
        v95.value._countAndFlagsBits = 0;
        v95.value._object = 0;
        v28.super.isa = v27;
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        v29 = sub_1000C5B74(v85, v95, v28, v105, 0xD000000000000049, v74);
        v31 = v30;

        *(inited + 64) = v29;
        *(inited + 72) = v31;
        *(inited + 80) = 9;
        v32 = [v21 mainBundle];
        v75._countAndFlagsBits = 0x80000001000D95D0;
        v86._object = 0x80000001000D9660;
        v86._countAndFlagsBits = 0xD000000000000030;
        v96.value._countAndFlagsBits = 0;
        v96.value._object = 0;
        v33.super.isa = v32;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        v34 = sub_1000C5B74(v86, v96, v33, v106, 0xD000000000000049, v75);
        v36 = v35;

        *(inited + 88) = v34;
        *(inited + 96) = v36;
        *(inited + 104) = 10;
        v37 = [v21 mainBundle];
        v87._countAndFlagsBits = 0xD000000000000035;
        v76._countAndFlagsBits = 0x80000001000D95D0;
        v87._object = 0x80000001000D96A0;
        v97.value._countAndFlagsBits = 0;
        v97.value._object = 0;
        v38.super.isa = v37;
        v107._countAndFlagsBits = 0;
        v107._object = 0xE000000000000000;
        v39 = sub_1000C5B74(v87, v97, v38, v107, 0xD000000000000049, v76);
        v41 = v40;

        *(inited + 112) = v39;
        *(inited + 120) = v41;
        *(inited + 128) = 11;
        v42 = [v21 mainBundle];
        v88._countAndFlagsBits = 0xD000000000000031;
        v77._countAndFlagsBits = 0x80000001000D95D0;
        v88._object = 0x80000001000D96E0;
        v98.value._countAndFlagsBits = 0;
        v98.value._object = 0;
        v43.super.isa = v42;
        v108._countAndFlagsBits = 0;
        v108._object = 0xE000000000000000;
        v44 = sub_1000C5B74(v88, v98, v43, v108, 0xD000000000000049, v77);
        v46 = v45;

        *(inited + 136) = v44;
        *(inited + 144) = v46;
        *(inited + 152) = 0;
        v47 = [v21 mainBundle];
        v78._countAndFlagsBits = 0x80000001000D95D0;
        v89._object = (v78._object | 0x8000000000000000);
        v89._countAndFlagsBits = 0xD000000000000039;
        v99.value._countAndFlagsBits = 0;
        v99.value._object = 0;
        v48.super.isa = v47;
        v109._countAndFlagsBits = 0;
        v109._object = 0xE000000000000000;
        v49 = sub_1000C5B74(v89, v99, v48, v109, 0xD000000000000049, v78);
        v51 = v50;

        *(inited + 160) = v49;
        *(inited + 168) = v51;
        *(inited + 176) = 1;
        v52 = [v21 mainBundle];
        v90._countAndFlagsBits = 0xD000000000000034;
        v79._countAndFlagsBits = 0x80000001000D95D0;
        v90._object = 0x80000001000D9720;
        v100.value._countAndFlagsBits = 0;
        v100.value._object = 0;
        v53.super.isa = v52;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        v54 = sub_1000C5B74(v90, v100, v53, v110, 0xD000000000000049, v79);
        v56 = v55;

        *(inited + 184) = v54;
        *(inited + 192) = v56;
        *(inited + 200) = 2;
        v57 = [v21 mainBundle];
        v91._countAndFlagsBits = 0xD000000000000037;
        v80._countAndFlagsBits = 0x80000001000D95D0;
        v91._object = 0x80000001000D9760;
        v101.value._countAndFlagsBits = 0;
        v101.value._object = 0;
        v58.super.isa = v57;
        v111._countAndFlagsBits = 0;
        v111._object = 0xE000000000000000;
        v59 = sub_1000C5B74(v91, v101, v58, v111, 0xD000000000000049, v80);
        v61 = v60;

        *(inited + 208) = v59;
        *(inited + 216) = v61;
        *(inited + 224) = 3;
        v62 = [v21 mainBundle];
        v92._countAndFlagsBits = 0xD000000000000038;
        v81._countAndFlagsBits = 0x80000001000D95D0;
        v92._object = 0x80000001000D97A0;
        v102.value._countAndFlagsBits = 0;
        v102.value._object = 0;
        v63.super.isa = v62;
        v112._countAndFlagsBits = 0;
        v112._object = 0xE000000000000000;
        v64 = sub_1000C5B74(v92, v102, v63, v112, 0xD000000000000049, v81);
        v66 = v65;

        *(inited + 232) = v64;
        *(inited + 240) = v66;
        *(inited + 248) = 13;
        v67 = [v21 mainBundle];
        v82._countAndFlagsBits = 0x80000001000D95D0;
        v93._object = 0x80000001000D97E0;
        v93._countAndFlagsBits = 0xD000000000000030;
        v103.value._countAndFlagsBits = 0;
        v103.value._object = 0;
        v68.super.isa = v67;
        v113._countAndFlagsBits = 0;
        v113._object = 0xE000000000000000;
        v69 = sub_1000C5B74(v93, v103, v68, v113, 0xD000000000000049, v82);
        v71 = v70;

        *(inited + 256) = v69;
        *(inited + 264) = v71;
        v72 = sub_100078E3C(inited);
        swift_setDeallocating();
        sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
        swift_arrayDestroy();
        v13 = sub_10003CC40(v72);

        return v13;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if ((v83 & 0xFE) != 8 && (v83 | 4) == 7)
      {
        v15 = "tee may not add others";
        v16 = 0x80000001000D98F0;
        v5 = [objc_opt_self() mainBundle];
        v6._countAndFlagsBits = 0xD000000000000023;
LABEL_26:
        v73._countAndFlagsBits = v16;
        v6._object = (v15 | 0x8000000000000000);
        v10 = 0xD000000000000077;
        goto LABEL_10;
      }

      v18 = "ill have access.";
      v19 = 0x80000001000D9850;
      v5 = [objc_opt_self() mainBundle];
      v6._countAndFlagsBits = 0xD000000000000023;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if ((v83 & 0xFE) != 8 && (v83 | 4) == 7)
      {
        v15 = "tee may add others too";
        v16 = 0x80000001000D9A50;
        v5 = [objc_opt_self() mainBundle];
        v6._countAndFlagsBits = 0xD000000000000021;
        goto LABEL_26;
      }

      v18 = "others (Reminders only)";
      v19 = 0x80000001000D99B0;
      v5 = [objc_opt_self() mainBundle];
      v6._countAndFlagsBits = 0xD000000000000032;
    }

    v73._countAndFlagsBits = v19;
    v6._object = (v18 | 0x8000000000000000);
    v10 = 0xD000000000000066;
    goto LABEL_10;
  }

  if (!a2)
  {
    v11 = "This share is public read-only";
    v12 = 0x80000001000D9320;
    v5 = [objc_opt_self() mainBundle];
    v10 = 0xD00000000000001FLL;
    v6._countAndFlagsBits = 0xD000000000000026;
LABEL_9:
    v73._countAndFlagsBits = v12;
    v6._object = (v11 | 0x8000000000000000);
LABEL_10:
    v7.value._countAndFlagsBits = 0;
    v7.value._object = 0;
    v8.super.isa = v5;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v5 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v73._countAndFlagsBits = 0x80000001000D92D0;
  v6._object = 0x80000001000D92B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v8.super.isa = v5;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0xD00000000000001ELL;
LABEL_11:
  v13 = sub_1000C5B74(v6, v7, v8, v9, v10, v73);

  return v13;
}

char *sub_100043774(char *a1)
{
  v2 = v1;
  v439 = a1;
  v434 = *v1;
  v386 = sub_10000FEB8(&qword_100117698, &qword_1000CEE38);
  v385 = *(v386 - 8);
  __chkstk_darwin(v386);
  v383 = v287 - v3;
  v388 = sub_10000FEB8(&qword_1001176A0, &qword_1000CEE40);
  __chkstk_darwin(v388);
  v387 = v287 - v4;
  v372 = sub_10000FEB8(&qword_1001176A8, &qword_1000CEE48);
  v371 = *(v372 - 8);
  __chkstk_darwin(v372);
  v369 = v287 - v5;
  v384 = sub_10000FEB8(&qword_1001176B0, &qword_1000CEE50);
  __chkstk_darwin(v384);
  v382 = v287 - v6;
  v368 = sub_10000FEB8(&qword_1001176B8, &qword_1000CEE58);
  v367 = *(v368 - 8);
  __chkstk_darwin(v368);
  v366 = v287 - v7;
  v381 = sub_10000FEB8(&qword_1001176C0, &qword_1000CEE60);
  __chkstk_darwin(v381);
  v380 = v287 - v8;
  v365 = sub_10000FEB8(&qword_1001176C8, &qword_1000CEE68);
  v364 = *(v365 - 8);
  __chkstk_darwin(v365);
  v363 = v287 - v9;
  v374 = sub_10000FEB8(&qword_1001176D0, &qword_1000CEE70);
  __chkstk_darwin(v374);
  v370 = v287 - v10;
  v376 = sub_10000FEB8(&qword_1001176D8, &qword_1000CEE78);
  v375 = *(v376 - 8);
  __chkstk_darwin(v376);
  v373 = v287 - v11;
  v379 = sub_10000FEB8(&unk_1001176E0, &unk_1000CEE80);
  v378 = *(v379 - 8);
  __chkstk_darwin(v379);
  v377 = v287 - v12;
  v362 = sub_10000FEB8(&qword_100116EF0, &qword_1000CD2B0);
  v361 = *(v362 - 8);
  v13 = __chkstk_darwin(v362);
  v359 = v287 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v360 = v287 - v15;
  v351 = sub_10000FEB8(&qword_1001176F0, &qword_1000CEE90);
  __chkstk_darwin(v351);
  v352 = v287 - v16;
  v355 = sub_10000FEB8(&qword_1001176F8, &qword_1000CEE98);
  v354 = *(v355 - 8);
  __chkstk_darwin(v355);
  v353 = v287 - v17;
  v358 = sub_10000FEB8(&unk_100117700, &unk_1000CEEA0);
  v357 = *(v358 - 8);
  __chkstk_darwin(v358);
  v356 = v287 - v18;
  v342 = sub_10000FEB8(&qword_100116998, &unk_1000CC910);
  v341 = *(v342 - 8);
  __chkstk_darwin(v342);
  v340 = v287 - v19;
  v344 = sub_10000FEB8(&qword_100117710, &qword_1000CEEB0);
  __chkstk_darwin(v344);
  v343 = v287 - v20;
  v347 = sub_10000FEB8(&qword_100117718, &qword_1000CEEB8);
  v346 = *(v347 - 8);
  __chkstk_darwin(v347);
  v345 = v287 - v21;
  v350 = sub_10000FEB8(&qword_100117720, &unk_1000CEEC0);
  v349 = *(v350 - 8);
  __chkstk_darwin(v350);
  v348 = v287 - v22;
  v405 = sub_10000FEB8(&qword_100117728, &unk_1000D0B00);
  v423 = *(v405 - 8);
  __chkstk_darwin(v405);
  v403 = v287 - v23;
  v406 = sub_10000FEB8(&qword_100117730, &qword_1000CEED0);
  __chkstk_darwin(v406);
  v404 = v287 - v24;
  v336 = sub_10000FEB8(&qword_100117738, &qword_1000CEED8);
  v335 = *(v336 - 8);
  __chkstk_darwin(v336);
  v334 = v287 - v25;
  v339 = sub_10000FEB8(&unk_100117740, &unk_1000CEEE0);
  v338 = *(v339 - 8);
  __chkstk_darwin(v339);
  v337 = v287 - v26;
  v327 = sub_10000FEB8(&qword_100116EC8, &qword_1000D0AB0);
  v326 = *(v327 - 1);
  __chkstk_darwin(v327);
  v324 = v287 - v27;
  v329 = sub_10000FEB8(&qword_100116ED0, &qword_1000CD290);
  v328 = *(v329 - 8);
  __chkstk_darwin(v329);
  v325 = v287 - v28;
  v332 = sub_10000FEB8(&qword_100116ED8, &qword_1000CD298);
  v331 = *(v332 - 8);
  __chkstk_darwin(v332);
  v330 = v287 - v29;
  v408 = sub_10000FEB8(&unk_100117750, &unk_1000CEEF0);
  v424 = *(v408 - 8);
  v30 = __chkstk_darwin(v408);
  v323 = v287 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v407 = v287 - v32;
  v438 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v433 = *(v438 - 8);
  v33 = __chkstk_darwin(v438);
  v409 = v287 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v425 = v287 - v35;
  v422 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v319 = *(v422 - 8);
  v36 = __chkstk_darwin(v422);
  v333 = v287 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v421 = v287 - v39;
  __chkstk_darwin(v38);
  v430 = v287 - v40;
  v322 = sub_10000FEB8(&qword_100117768, &qword_1000CEF08);
  v321 = *(v322 - 8);
  __chkstk_darwin(v322);
  v320 = v287 - v41;
  v42 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  __chkstk_darwin(v42 - 8);
  v432 = v287 - v43;
  v310 = sub_10000FEB8(&unk_100116E70, &unk_1000CD240);
  v309 = *(v310 - 8);
  __chkstk_darwin(v310);
  v308 = v287 - v44;
  v312 = sub_10000FEB8(&qword_100117780, &qword_1000CEF20);
  __chkstk_darwin(v312);
  v311 = v287 - v45;
  v315 = sub_10000FEB8(&qword_100117788, &qword_1000CEF28);
  v314 = *(v315 - 8);
  __chkstk_darwin(v315);
  v313 = v287 - v46;
  v318 = sub_10000FEB8(&qword_100117790, &qword_1000CEF30);
  v317 = *(v318 - 8);
  __chkstk_darwin(v318);
  v316 = v287 - v47;
  v402 = sub_10000FEB8(&qword_100117798, &qword_1000CEF38);
  v431 = *(v402 - 8);
  v48 = __chkstk_darwin(v402);
  v416 = v287 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v401 = v287 - v50;
  v414 = sub_10000FEB8(&qword_1001177A0, &qword_1000CEF40);
  v427 = *(v414 - 8);
  __chkstk_darwin(v414);
  v412 = v287 - v51;
  v413 = sub_10000FEB8(&qword_1001177A8, &qword_1000CEF48);
  v426 = *(v413 - 8);
  __chkstk_darwin(v413);
  v410 = v287 - v52;
  v415 = sub_10000FEB8(&qword_1001177B0, &qword_1000CEF50);
  v391 = *(v415 - 1);
  __chkstk_darwin(v415);
  v306 = v287 - v53;
  v400 = sub_10000FEB8(&qword_1001177B8, &qword_1000CEF58);
  v420 = *(v400 - 8);
  v54 = __chkstk_darwin(v400);
  v390 = v287 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v399 = v287 - v56;
  v300 = sub_10000FEB8(&qword_1001177C0, &qword_1000CEF60);
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v297 = v287 - v57;
  v302 = sub_10000FEB8(&qword_1001177C8, &qword_1000CEF68);
  v301 = *(v302 - 8);
  __chkstk_darwin(v302);
  v298 = v287 - v58;
  v305 = sub_10000FEB8(&qword_1001177D0, &qword_1000CEF70);
  v304 = *(v305 - 1);
  __chkstk_darwin(v305);
  v303 = v287 - v59;
  v398 = sub_10000FEB8(&qword_1001177D8, &qword_1000CEF78);
  v419 = *(v398 - 8);
  v60 = __chkstk_darwin(v398);
  v296 = v287 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v397 = v287 - v62;
  v396 = sub_10000FEB8(&qword_100116E60, &qword_1000CD230);
  v417 = *(v396 - 1);
  __chkstk_darwin(v396);
  v394 = v287 - v63;
  v395 = sub_10000FEB8(&qword_100116E68, &qword_1000CD238);
  v411 = *(v395 - 8);
  __chkstk_darwin(v395);
  v393 = v287 - v64;
  v294 = sub_10000FEB8(&unk_1001177E0, &qword_1000CEF80);
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = v287 - v65;
  v436 = sub_10000FEB8(&qword_100117690, &qword_1000CEE30);
  v429 = *(v436 - 1);
  __chkstk_darwin(v436);
  v428 = v287 - v66;
  v437 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v67 = *(v437 - 8);
  __chkstk_darwin(v437);
  v69 = v287 - v68;
  v70 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = v287 - v72;
  v74 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v75 = __chkstk_darwin(v74);
  v77 = v287 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v79 = v287 - v78;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v80 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v80 = &_swiftEmptySetSingleton;
  }

  v2[3] = v80;
  v418 = v2 + 3;
  v81 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlert;
  v82 = type metadata accessor for AlertViewModel(0);
  (*(*(v82 - 8) + 56))(v79, 1, 1, v82);
  sub_100048B54(v79, v77);
  sub_1000C6054();
  sub_100010F24(v79, &qword_100116C80, &unk_1000CE870);
  v83 = v2;
  (*(v71 + 32))(v2 + v81, v73, v70);
  v84 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlertBool;
  LOBYTE(v442) = 0;
  sub_1000C6054();
  (*(v67 + 32))(v2 + v84, v69, v437);
  v85 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__didTapCopyLink;
  v442 = 0;
  v443 = 0;
  sub_10000FEB8(&unk_1001174D8, &qword_1000CE898);
  v86 = v428;
  sub_1000C6054();
  (*(v429 + 32))(v2 + v85, v86, v436);
  v2[2] = v439;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LODWORD(v85) = v442;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v87 = v442;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v88 = v442;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v85 & v88 & ((~v87 & 3) == 0)) != 0)
  {
    v89 = &off_1001071B0;
  }

  else
  {
    v89 = _swiftEmptyArrayStorage;
  }

  if ((v442 & 0xFE) == 2)
  {
    v90 = v89;
  }

  else
  {
    v90 = &off_100107188;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v91 = v442;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v92 = v442;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v93 = v442;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v91 & v93 & ((~v92 & 0xC) == 0)) != 0)
  {
    v94 = &off_100107200;
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  if ((v442 & 0xFE) == 2)
  {
    v95 = v94;
  }

  else
  {
    v95 = &off_1001071D8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v96 = v442;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v97 = v442;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v98 = v96 & v97;
  if (v96 & v97)
  {
    v99 = &off_100107228;
  }

  else
  {
    v99 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v100 = v442;
  if (v442)
  {
    v101 = &off_100107250;
  }

  else
  {
    v101 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v440 = v90;

  sub_10000FEB8(&qword_100117470, &qword_1000D5C30);
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v440 = v95;

  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v440 = v99;

  sub_10000FEB8(&qword_1001174A0, &qword_1000CE888);
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v440 = v101;

  sub_10000FEB8(&qword_1001174B8, &qword_1000CE890);
  sub_1000C6054();
  swift_endAccess();
  v102 = v90[2];

  if (v102 >= 2)
  {

LABEL_24:

LABEL_25:

    v104 = 1;
    goto LABEL_26;
  }

  v103 = v95[2];

  if (v103 > 1)
  {
    goto LABEL_24;
  }

  v283 = &off_100107228;
  if ((v98 & 1) == 0)
  {
    v283 = _swiftEmptyArrayStorage;
  }

  v284 = v283[2];

  if (v284 >= 2)
  {
    goto LABEL_25;
  }

  if (v100)
  {
    v285 = &off_100107250;
  }

  else
  {
    v285 = _swiftEmptyArrayStorage;
  }

  v286 = v285[2];

  v104 = v286 > 1;
LABEL_26:
  v105 = v439;
  swift_beginAccess();
  LOBYTE(v440) = v104;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v106 = v442 - 6 < 0xFFFFFFFC;
  swift_beginAccess();
  LOBYTE(v440) = v106;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v107 = v442;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v108 = 8 * v442;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v109 = sub_100042A64(v442);
  if (v109 == 3)
  {
    v110 = 1;
  }

  else
  {
    v110 = v109;
  }

  if (*(*(v105 + 2) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();
  }

  v111 = v83 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAccessPermissionSelected;
  swift_beginAccess();
  LOBYTE(v440) = v107 & 1;
  v112 = v111;
  sub_1000C6054();
  swift_endAccess();
  v113 = v83 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__readWritePermissionSelected;
  swift_beginAccess();
  LOBYTE(v440) = 0x2010000u >> v108;
  v392 = v113;
  sub_1000C6054();
  swift_endAccess();
  v114 = v83 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAddPeoplePermissionSelected;
  swift_beginAccess();
  LOBYTE(v440) = v110;
  v429 = v114;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v440) = v110 == 0;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v115 = sub_100042DC0(v107 & 1, 0x2010000u >> v108, v110, v442, v105);
  v117 = v116;
  v118 = v83 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__localizedPermissionSummary;
  swift_beginAccess();
  v440 = v115;
  v441 = v117;
  v307 = v118;
  sub_1000C6054();
  swift_endAccess();
  v119 = *(*(v105 + 2) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v119 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    LOBYTE(v119) = v442;
  }

  v435 = v83;
  v389 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanRequestAccessSelected;
  swift_beginAccess();
  LOBYTE(v440) = (v119 & 1) == 0;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();

  v291 = sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v120 = v394;
  sub_1000C6064();
  swift_endAccess();

  v289 = sub_10001E490(&unk_100116FD0, &qword_100116E60, &qword_1000CD230, &protocol conformance descriptor for Published<A>.Publisher);
  v290 = sub_100035290();
  v121 = v393;
  v122 = v396;
  sub_1000C6114();
  v123 = *(v417 + 8);
  v417 += 8;
  v288 = v123;
  v123(v120, v122);
  v287[1] = sub_10001E490(&qword_1001177F0, &qword_100116E68, &qword_1000CD238, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v124 = v292;
  v125 = v395;
  sub_1000C60D4();
  v411[1](v121, v125);
  swift_beginAccess();
  v126 = sub_10000FEB8(&qword_100117650, &qword_1000CEDF0);
  v127 = v397;
  v295 = v126;
  sub_1000C6064();
  swift_endAccess();
  v411 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10001E490(&qword_1001177F8, &unk_1001177E0, &qword_1000CEF80, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v128 = v294;
  sub_1000C6134();
  (*(v293 + 8))(v124, v128);
  v129 = v419;
  v130 = v127;
  v131 = v127;
  v132 = v398;
  (*(v419 + 16))(v296, v130, v398);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v133 = *(v129 + 8);
  v419 = v129 + 8;
  v296 = v133;
  (v133)(v131, v132);
  swift_beginAccess();

  sub_10000FEB8(&unk_100117800, &unk_1000D0B90);
  v134 = v297;
  sub_1000C6064();
  swift_endAccess();

  v436 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001E490(&unk_100118490, &qword_1001177C0, &qword_1000CEF60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100048C1C();
  v135 = v298;
  v136 = v300;
  sub_1000C6114();
  v299[1](v134, v136);
  v428 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_10001E490(&qword_100117818, &qword_1001177C8, &qword_1000CEF68, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v137 = v303;
  v138 = v302;
  sub_1000C60D4();
  (*(v301 + 8))(v135, v138);
  swift_beginAccess();
  v139 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  v140 = v399;
  v302 = v139;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100117820, &qword_1001177D0, &qword_1000CEF70, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v141 = v140;
  v142 = v305;
  sub_1000C6134();
  (*(v304 + 8))(v137, v142);
  v143 = v420;
  v144 = v140;
  v145 = v400;
  (*(v420 + 16))(v390, v144, v400);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v146 = *(v143 + 8);
  v420 = v143 + 8;
  v305 = v146;
  (v146)(v141, v145);
  swift_beginAccess();

  v303 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v147 = v412;
  sub_1000C6064();
  swift_endAccess();

  v301 = sub_10001E490(&unk_100117830, &qword_1001177A0, &qword_1000CEF40, &protocol conformance descriptor for Published<A>.Publisher);
  v300 = sub_100048C70();
  v304 = v112;
  v148 = v410;
  v149 = v414;
  sub_1000C6114();
  v150 = *(v427 + 1);
  v427 += 8;
  v299 = v150;
  (v150)(v147, v149);
  v298 = sub_10001E490(&qword_100117840, &qword_1001177A8, &qword_1000CEF48, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  v151 = v306;
  v152 = v413;
  sub_1000C60D4();

  v153 = *(v426 + 8);
  v426 += 8;
  v297 = v153;
  (v153)(v148, v152);
  swift_beginAccess();
  v154 = sub_10000FEB8(&qword_100117670, &qword_1000CEE10);
  v155 = v401;
  v390 = v154;
  sub_1000C6064();
  swift_endAccess();
  v294 = sub_10001E490(&qword_100117848, &qword_1001177B0, &qword_1000CEF50, v411);
  v156 = v415;
  sub_1000C6134();
  v293 = *(v391 + 1);
  (v293)(v151, v156);
  v157 = v431;
  v292 = *(v431 + 16);
  v158 = v402;
  (v292)(v416, v155, v402);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v159 = *(v157 + 8);
  v431 = v157 + 8;
  v391 = v159;
  v160 = v155;
  v161 = v155;
  v162 = v158;
  v159(v160, v158);
  swift_beginAccess();

  v163 = v412;
  sub_1000C6064();
  swift_endAccess();

  v164 = v410;
  v165 = v414;
  sub_1000C6114();
  (v299)(v163, v165);

  v166 = v413;
  sub_1000C60D4();

  (v297)(v164, v166);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v167 = v415;
  sub_1000C6134();
  (v293)(v151, v167);
  (v292)(v416, v161, v162);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v391(v161, v162);
  v168 = v439;
  swift_beginAccess();

  sub_10000FEB8(&unk_100117850, &qword_1000CC8C0);
  v169 = v308;
  sub_1000C6064();
  swift_endAccess();

  v170 = v436;
  sub_10001E490(&unk_100116FB0, &unk_100116E70, &unk_1000CD240, v436);
  sub_100035214();
  v171 = v310;
  sub_1000C6114();
  (*(v309 + 8))(v169, v171);
  swift_beginAccess();

  v172 = v394;
  sub_1000C6064();
  swift_endAccess();

  v173 = v396;
  sub_1000C6114();
  v288(v172, v173);
  v174 = v428;
  sub_10001E490(&unk_100116FE0, &qword_100117780, &qword_1000CEF20, v428);
  v175 = v313;
  sub_1000C5F84();
  v396 = objc_opt_self();
  v176 = [v396 mainRunLoop];
  v442 = v176;
  v416 = sub_1000C71A4();
  v177 = *(v416 - 1);
  v415 = *(v177 + 56);
  v417 = v177 + 56;
  v178 = v432;
  (v415)(v432, 1, 1, v416);
  v414 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  sub_10001E490(&unk_100117870, &qword_100117788, &qword_1000CEF28, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v413 = sub_10001E2AC();
  v179 = v316;
  v180 = v315;
  sub_1000C6104();
  sub_100010F24(v178, &unk_100117770, &unk_1000CEF10);

  (*(v314 + 8))(v175, v180);
  v181 = swift_allocObject();
  swift_weakInit();
  v182 = swift_allocObject();
  v182[2] = v181;
  v182[3] = v168;
  v182[4] = v434;
  v183 = swift_allocObject();
  *(v183 + 16) = sub_100048D10;
  *(v183 + 24) = v182;
  v412 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001E490(&unk_100117880, &qword_100117790, &qword_1000CEF30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v184 = v318;
  sub_1000C6124();

  (*(v317 + 8))(v179, v184);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();

  v185 = v425;
  sub_1000C6064();
  swift_endAccess();

  v410 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0, v170);
  v186 = v430;
  v187 = v438;
  sub_1000C6114();
  v188 = *(v433 + 8);
  v426 = v433 + 8;
  v427 = v188;
  (v188)(v185, v187);
  v189 = v174;
  v395 = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00, v174);
  v190 = v320;
  v191 = v422;
  sub_1000C60D4();
  (*(v319 + 8))(v186, v191);
  swift_beginAccess();
  v192 = sub_10000FEB8(&unk_100117680, &unk_1000CEE20);
  v193 = v407;
  v319 = v192;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100117898, &qword_100117768, &qword_1000CEF08, v411);
  v194 = v322;
  sub_1000C6134();
  (*(v321 + 8))(v190, v194);
  v195 = v424;
  v196 = v408;
  (*(v424 + 16))(v323, v193, v408);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v197 = *(v195 + 8);
  v424 = v195 + 8;
  v393 = v197;
  (v197)(v193, v196);
  v198 = v439;
  swift_beginAccess();
  sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  v199 = v198;
  v200 = v324;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100116F38, &qword_100116EC8, &qword_1000D0AB0, v436);
  sub_100035088();
  v201 = v325;
  v202 = v327;
  sub_1000C6114();
  (*(v326 + 8))(v200, v202);
  sub_10001E490(&qword_100116F48, &qword_100116ED0, &qword_1000CD290, v189);
  v203 = v330;
  v204 = v329;
  sub_1000C60D4();
  (*(v328 + 8))(v201, v204);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116F50, &qword_100116ED8, &qword_1000CD298, v411);
  v205 = v332;
  sub_1000C6134();
  (*(v331 + 8))(v203, v205);
  v206 = *(v433 + 16);
  v433 += 16;
  v394 = v206;
  v207 = v438;
  (v206)(v409, v185, v438);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v208 = v427;
  (v427)(v185, v207);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_1000C6114();
  v208(v185, v207);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_1000C6114();
  v208(v185, v207);
  v332 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShareRoot;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v208(v185, v207);
  v330 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  swift_beginAccess();
  v331 = sub_10000FEB8(&qword_1001178A8, &unk_1000CF2C0);
  v209 = v403;
  sub_1000C6064();
  swift_endAccess();
  v329 = sub_10001E490(&qword_1001178B0, &qword_100117728, &unk_1000D0B00, v436);
  v328 = sub_100048D84();
  v210 = v405;
  sub_1000C6114();
  v211 = *(v423 + 8);
  v423 += 8;
  v327 = v211;
  (v211)(v209, v210);
  v326 = sub_10001E490(&qword_1001178C0, &qword_100117730, &qword_1000CEED0, v428);
  v212 = v334;
  sub_1000C5FC4();
  v213 = [v396 mainRunLoop];
  v442 = v213;
  v214 = v432;
  (v415)(v432, 1, 1, v416);
  v411 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_10001E490(&qword_1001178C8, &qword_100117738, &qword_1000CEED8, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v215 = v337;
  v216 = v336;
  sub_1000C6104();
  sub_100010F24(v214, &unk_100117770, &unk_1000CEF10);

  (*(v335 + 8))(v212, v216);
  v217 = swift_allocObject();
  swift_weakInit();
  v218 = swift_allocObject();
  v218[2] = v217;
  v218[3] = v199;
  v218[4] = v434;
  v219 = swift_allocObject();
  *(v219 + 16) = sub_100048DD8;
  *(v219 + 24) = v218;
  sub_10001E490(&unk_1001178D0, &unk_100117740, &unk_1000CEEE0, v412);

  v220 = v339;
  sub_1000C6124();

  (*(v338 + 8))(v215, v220);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  v221 = v438;
  sub_1000C6114();
  v222 = v427;
  (v427)(v185, v221);
  swift_beginAccess();

  sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  v223 = v340;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_1001178E0, &qword_100116998, &unk_1000CC910, v436);
  sub_10001E3FC();
  v224 = v342;
  sub_1000C6114();
  (*(v341 + 8))(v223, v224);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v225 = v438;
  sub_1000C6114();
  v222(v185, v225);
  swift_beginAccess();
  v226 = v403;
  sub_1000C6064();
  swift_endAccess();
  v227 = v405;
  sub_1000C6114();
  (v327)(v226, v227);
  sub_10001E490(&qword_1001178F0, &qword_100117710, &qword_1000CEEB0, v428);
  v228 = v345;
  sub_1000C5FC4();
  v229 = v396;
  v230 = [v396 mainRunLoop];
  v442 = v230;
  v231 = v432;
  (v415)(v432, 1, 1, v416);
  sub_10001E490(&qword_1001178F8, &qword_100117718, &qword_1000CEEB8, v411);
  v232 = v348;
  v233 = v347;
  sub_1000C6104();
  sub_100010F24(v231, &unk_100117770, &unk_1000CEF10);

  (*(v346 + 8))(v228, v233);
  v234 = swift_allocObject();
  v235 = v435;
  swift_weakInit();
  v236 = swift_allocObject();
  v237 = v434;
  *(v236 + 16) = v234;
  *(v236 + 24) = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = sub_100048E58;
  *(v238 + 24) = v236;
  sub_10001E490(&qword_100117900, &qword_100117720, &unk_1000CEEC0, v412);
  v239 = v350;
  sub_1000C6124();

  (*(v349 + 8))(v232, v239);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v240 = v397;
  sub_1000C6064();
  swift_endAccess();
  v241 = v436;
  sub_10001E490(&qword_100117908, &qword_1001177D8, &qword_1000CEF78, v436);
  sub_1000423A4();
  v242 = v352;
  v243 = v398;
  sub_1000C6114();
  (v296)(v240, v243);
  swift_beginAccess();
  v244 = v399;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117910, &qword_1001177B8, &qword_1000CEF58, v241);
  sub_100042288();
  v245 = v400;
  sub_1000C6114();
  (v305)(v244, v245);
  swift_beginAccess();
  v246 = v401;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117918, &qword_100117798, &qword_1000CEF38, v241);
  sub_1000424C0();
  v247 = v402;
  sub_1000C6114();
  v391(v246, v247);
  swift_beginAccess();
  v248 = v407;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117920, &unk_100117750, &unk_1000CEEF0, v241);
  sub_100042618();
  v249 = v408;
  sub_1000C6114();
  (v393)(v248, v249);
  v250 = v439;
  swift_beginAccess();

  v251 = v425;
  sub_1000C6064();
  swift_endAccess();

  v252 = v438;
  sub_1000C6114();
  (v427)(v251, v252);
  v253 = [v229 mainRunLoop];
  v442 = v253;
  v254 = v432;
  (v415)(v432, 1, 1, v416);
  sub_10001E490(&qword_100117928, &qword_1001176F0, &qword_1000CEE90, &protocol conformance descriptor for Publishers.CSCombineLatest5<A, B, C, D, E>);
  v255 = v353;
  sub_1000C6104();
  sub_100010F24(v254, &unk_100117770, &unk_1000CEF10);

  sub_100010F24(v242, &qword_1001176F0, &qword_1000CEE90);
  v256 = swift_allocObject();
  swift_weakInit();
  v257 = v235;

  v258 = swift_allocObject();
  v258[2] = v256;
  v258[3] = v250;
  v258[4] = v434;
  v259 = swift_allocObject();
  *(v259 + 16) = sub_100048EDC;
  *(v259 + 24) = v258;
  sub_10001E490(&qword_100117930, &qword_1001176F8, &qword_1000CEE98, v412);

  v260 = v356;
  v261 = v355;
  sub_1000C60E4();

  (*(v354 + 8))(v255, v261);
  swift_beginAccess();
  sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v262 = v360;
  sub_1000C6064();
  swift_endAccess();
  v439 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10001E490(&qword_100117938, &unk_100117700, &unk_1000CEEA0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v263 = v358;
  sub_1000C6134();
  (*(v357 + 8))(v260, v263);
  v264 = v361;
  v265 = v362;
  (*(v361 + 16))(v359, v262, v362);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (*(v264 + 8))(v262, v265);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117648, &qword_1000CEDE8);
  v266 = v363;
  sub_1000C6064();
  swift_endAccess();
  v267 = v436;
  sub_10001E490(&qword_100117940, &qword_1001176C8, &qword_1000CEE68, v436);
  sub_100048F38(&qword_100117948, &qword_100117470, &qword_1000D5C30, sub_1000423A4);
  v268 = v365;
  sub_1000C6114();
  (*(v364 + 8))(v266, v268);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  v269 = v366;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117950, &qword_1001176B8, &qword_1000CEE58, v267);
  sub_100048F38(&qword_100117958, &qword_100117488, &qword_1000CE880, sub_100042288);
  v270 = v368;
  sub_1000C6114();
  (*(v367 + 8))(v269, v270);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117668, &qword_1000CEE08);
  v271 = v369;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117960, &qword_1001176A8, &qword_1000CEE48, v267);
  sub_100048F38(&qword_100117968, &qword_1001174A0, &qword_1000CE888, sub_1000424C0);
  v272 = v372;
  sub_1000C6114();
  (*(v371 + 8))(v271, v272);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117678, &qword_1000CEE18);
  v273 = v383;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117970, &qword_100117698, &qword_1000CEE38, v267);
  sub_100048F38(&qword_100117978, &qword_1001174B8, &qword_1000CE890, sub_100042618);
  v274 = v386;
  sub_1000C6114();
  (*(v385 + 8))(v273, v274);
  v275 = v428;
  sub_10001E490(&qword_100117980, &qword_1001176D0, &qword_1000CEE70, v428);
  sub_10001E490(&qword_100117988, &qword_1001176C0, &qword_1000CEE60, v275);
  sub_10001E490(&qword_100117990, &qword_1001176B0, &qword_1000CEE50, v275);
  sub_10001E490(&qword_100117998, &qword_1001176A0, &qword_1000CEE40, v275);
  v276 = v373;
  sub_1000C5FC4();
  sub_10001E490(&qword_1001179A0, &qword_1001176D8, &qword_1000CEE78, v411);
  v277 = v377;
  v278 = v376;
  sub_1000C60E4();
  (*(v375 + 8))(v276, v278);
  swift_beginAccess();
  v279 = v425;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_1001179A8, &unk_1001176E0, &unk_1000CEE80, v439);
  v280 = v379;
  sub_1000C6134();
  (*(v378 + 8))(v277, v280);
  v281 = v438;
  (v394)(v409, v279, v438);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (v427)(v279, v281);
  return v257;
}

uint64_t sub_100048B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048C1C()
{
  result = qword_100117810;
  if (!qword_100117810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117810);
  }

  return result;
}

unint64_t sub_100048C70()
{
  result = qword_1001184C0;
  if (!qword_1001184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001184C0);
  }

  return result;
}

uint64_t sub_100048CD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048D1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100048D84()
{
  result = qword_1001178B8;
  if (!qword_1001178B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178B8);
  }

  return result;
}

uint64_t sub_100048E20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048E9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100048EF0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3], a1[4]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100048F38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000492E0(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004933C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_1000412C4(a1, v4, v5, v6);
}

uint64_t sub_1000493F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_100040CF8(a1, v4, v5, v6, v7);
}

uint64_t sub_1000494BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {
  }

  return result;
}

uint64_t sub_100049518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10003E918(a1, v4, v5, v6, v7);
}

uint64_t sub_1000495EC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100049638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10003E14C(a1, v4, v5, v6);
}

void sub_100049760(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_1000C5CD4();
    a4(0, v13);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v11 = sub_1000C5CD4();
      a4(0, v11);
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v12 = sub_1000C5CD4();
        a4(0, v12);
      }

      else
      {
        a4(a7, 0);
      }
    }
  }
}

void sub_1000498A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  (*(v12 + 16))(&v26 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  sub_10004B148();
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000CD0E0;
  *(v17 + 32) = a3;
  v18 = a3;
  v27.value._rawValue = v17;
  v27.is_nil = 0;
  v19.super.super.super.super.isa = sub_1000C70B4(v27, v28).super.super.super.super.isa;
  [(objc_class *)v19.super.super.super.super.isa setQualityOfService:25];
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;

  sub_1000C70C4();

  sub_1000C70D4();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_10004B258;
  v22[4] = v16;
  v22[5] = v21;
  v22[6] = v18;
  v23 = v18;

  sub_1000C70A4();
  v24 = &selRef_sharedCloudDatabase;
  if ((a4 & 0x10000000000) != 0)
  {
    v24 = &selRef_privateCloudDatabase;
  }

  v25 = [a7 *v24];
  [v25 addOperation:v19.super.super.super.super.isa];
}

uint64_t sub_100049B8C(void *a1, void *a2)
{
  if (!a1 || a2)
  {
    sub_1000100B0();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000001000D78B0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a2;
    *(v5 + 40) = 4;
    v6 = a2;
    sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);
    return sub_1000C6EE4();
  }

  else
  {
    v3 = a1;
    sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);
    return sub_1000C6EF4();
  }
}

void sub_100049C64(int a1, id a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    v7 = sub_1000C5CD4();
    (a4)(0, 0, 0);
  }

  else
  {
    v6 = [a2 share];
    v7 = [a2 containerID];
    a4(v6);
  }
}

uint64_t sub_100049D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000FEB8(&qword_100117B20, &qword_1000CF938);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_10004B49C(a3, a4, sub_10004BE10, v12);
}

uint64_t sub_100049E84(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && !a4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    sub_10000FEB8(&qword_100117B20, &qword_1000CF938);
    return sub_1000C6EF4();
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    *(v11 + 8) = 0x80000001000DA250;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = a4;
    *(v11 + 40) = 5;
    v12 = a4;
    sub_10000FEB8(&qword_100117B20, &qword_1000CF938);
    return sub_1000C6EE4();
  }
}

void sub_100049F78(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  (*(v10 + 16))(&v22 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_10004B148();
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000CD0E0;
  *(v15 + 32) = [a3 recordID];
  v23.value._rawValue = _swiftEmptyArrayStorage;
  v23.is_nil = v15;
  v16.super.super.super.super.isa = sub_1000C70B4(v23, v24).super.super.super.super.isa;
  [(objc_class *)v16.super.super.super.super.isa setQualityOfService:25];
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;

  sub_1000C70C4();

  sub_1000C70D4();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = sub_10004B0CC;
  v19[4] = v14;
  v19[5] = v18;

  sub_1000C70A4();
  v20 = &selRef_privateCloudDatabase;
  if ((a4 & 1) == 0)
  {
    v20 = &selRef_sharedCloudDatabase;
  }

  v21 = [a5 *v20];
  [v21 addOperation:v16.super.super.super.super.isa];
}

uint64_t sub_10004A270(void *a1)
{
  if (a1)
  {
    sub_1000100B0();
    swift_allocError();
    *v2 = 0xD000000000000030;
    *(v2 + 8) = 0x80000001000D77E0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = a1;
    *(v2 + 40) = 8;
    v3 = a1;
    sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);
    return sub_1000C6EE4();
  }

  else
  {
    sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);
    return sub_1000C6EF4();
  }
}

uint64_t sub_10004A344(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    *(a4 + 16) = a2;
    swift_errorRetain();
  }

  return result;
}

void sub_10004A3AC(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_1000C5CD4();
    a4();
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v9 = sub_1000C5CD4();
      a4();
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v10 = sub_1000C5CD4();
        a4();
      }

      else
      {
        (a4)(0);
      }
    }
  }
}

uint64_t sub_10004A4C0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1000C5F74();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10004A5C8, 0, 0);
}

uint64_t sub_10004A5C8()
{
  v1 = v0[25];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10004A6E4;
  v3 = swift_continuation_init();
  v0[17] = sub_10000FEB8(&qword_100117B18, &unk_1000CF928);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004B348;
  v0[13] = &unk_100108F08;
  v0[14] = v3;
  [v2 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004A6E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10004A9E0;
  }

  else
  {
    v2 = sub_10004A7F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004A7F4()
{
  v19 = v0;
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[18];
  sub_10004BD8C(v0[25], v1);
  v4 = (v1 + *(v2 + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_1000C5C54();
  (*(*(v7 - 8) + 32))(v3, v1, v7);
  sub_1000C5F54();

  v8 = sub_1000C5F64();
  v9 = sub_1000C6FF4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100071844(v5, v6, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "Username: %s", v14, 0xCu);
    sub_100010544(v15);
  }

  (*(v12 + 8))(v11, v13);

  v16 = v0[1];

  return v16(v5, v6);
}

uint64_t sub_10004A9E0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10004AA74(uint64_t a1)
{
  v1[18] = a1;
  v1[19] = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10004AB20, 0, 0);
}

uint64_t sub_10004AB20()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10004AC3C;
  v3 = swift_continuation_init();
  v0[17] = sub_10000FEB8(&qword_100117B18, &unk_1000CF928);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004B348;
  v0[13] = &unk_100108EE0;
  v0[14] = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004AC3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10004AE20;
  }

  else
  {
    v2 = sub_10004AD4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004AD4C()
{
  v1 = v0[20];
  v2 = v0[19];
  sub_10004BD8C(v0[21], v1);
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1000C5C54();
  (*(*(v6 - 8) + 8))(v1, v6);

  v7 = v0[1];

  return v7(v4, v5);
}

uint64_t sub_10004AE20(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10004AEA0()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v2 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudKitOperations(uint64_t a1)
{
  result = qword_1001179E8;
  if (!qword_1001179E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004AFB4(uint64_t a1)
{
  sub_10004B054(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10004B054(uint64_t a1)
{
  if (!qword_1001179F8)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    v1 = sub_1000C60B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1001179F8);
    }
  }
}

uint64_t sub_10004B0CC(void *a1)
{
  sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);

  return sub_10004A270(a1);
}

unint64_t sub_10004B148()
{
  result = qword_100117B00;
  if (!qword_100117B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100117B00);
  }

  return result;
}

uint64_t sub_10004B194()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B1EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004B258(void *a1, void *a2)
{
  sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);

  return sub_100049B8C(a1, a2);
}

uint64_t sub_10004B2E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004B348(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *sub_100011818((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_1000C5C34();
    v13 = &v8[*(v6 + 48)];
    *v13 = sub_1000C6D84();
    v13[1] = v14;
    sub_10004BD8C(v8, *(*(v9 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_10004B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:a2];
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_1000C6D44();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];

    v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
  }

  sub_10000FEB8(&qword_100117B28, &unk_1000CF940);
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000CB170;
  (*(v12 + 16))(v14 + v13, a1, v11);
  v15 = objc_allocWithZone(CKFetchShareMetadataOperation);
  v19 = v7;
  isa = sub_1000C6E84().super.isa;

  v17 = [v15 initWithShareURLs:isa];

  [v17 setShouldFetchRootRecord:0];
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  sub_1000C7104();
  [v19 addOperation:v17];
}

uint64_t sub_10004B70C(uint64_t a1)
{
  v1[6] = a1;
  v3 = sub_1000C5C54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[9] = v4;
  v1[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_10004B820;

  return sub_10004A4C0(v4, a1);
}

uint64_t sub_10004B820(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v5 = sub_10004BC84;
  }

  else
  {
    v5 = sub_10004B93C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004B93C()
{
  (*(v0[8] + 32))(v0[10], v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10004B9E8;
  v2 = v0[6];

  return sub_10004AA74(v2);
}

uint64_t sub_10004B9E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    v7 = sub_10004BCF0;
  }

  else
  {
    v8 = v6[3];
    v6[16] = a2;
    v6[17] = a1;
    v6[18] = v8;
    v7 = sub_10004BB2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10004BB2C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v17._object = 0x80000001000D7150;
  v17._countAndFlagsBits = 0xD000000000000017;
  if (sub_1000C6E34(v17))
  {
    v1 = v2;
    v3 = v4;
  }

  v8 = objc_opt_self();
  v9 = sub_1000C5C24();
  v10 = [v8 localizedStringFromPersonNameComponents:v9 style:2 options:0];

  v11 = sub_1000C6D84();
  v13 = v12;

  (*(v7 + 8))(v5, v6);

  v14 = v0[1];

  return v14(v11, v13, v1, v3);
}

uint64_t sub_10004BC84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004BCF0()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10004BD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BE10(void *a1, void *a2, void *a3, void *a4)
{
  sub_10000FEB8(&qword_100117B20, &qword_1000CF938);

  return sub_100049E84(a1, a2, a3, a4);
}

uint64_t sub_10004BEB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BF18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10004C0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for PersonInfoView(uint64_t a1)
{
  result = qword_100117B98;
  if (!qword_100117B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004C2BC(uint64_t a1)
{
  sub_10004C40C(319);
  if (v1 <= 0x3F)
  {
    sub_10004C464(319);
    if (v2 <= 0x3F)
    {
      sub_10004C4F8(319, &qword_100117BC0, &qword_100117018, &qword_1000CD830, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10004C4F8(319, &qword_100117BC8, &unk_100117BD0, qword_1000CF980, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10004C4F8(319, &qword_100116A98, &qword_100116A20, &qword_1000CCB90, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10004C40C(uint64_t a1)
{
  if (!qword_100117BA8)
  {
    sub_1000C62E4();
    v1 = sub_1000C6214();
    if (!v2)
    {
      atomic_store(v1, &qword_100117BA8);
    }
  }
}

void sub_10004C464(uint64_t a1)
{
  if (!qword_100117BB0)
  {
    type metadata accessor for PersonInfoViewModel(255);
    sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
    v1 = sub_1000C6244();
    if (!v2)
    {
      atomic_store(v1, &qword_100117BB0);
    }
  }
}

void sub_10004C4F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010624(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10004C578@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v97 = sub_10000FEB8(&qword_100117C10, &qword_1000CF9E0);
  v82 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v78 - v1;
  v93 = sub_10000FEB8(&qword_100117C18, &qword_1000CF9E8);
  __chkstk_darwin(v93);
  v95 = &v78 - v2;
  v91 = sub_1000C65B4();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10000FEB8(&qword_100117C20, &qword_1000CF9F0);
  v79 = *(v92 - 8);
  __chkstk_darwin(v92);
  v83 = &v78 - v4;
  v94 = sub_10000FEB8(&qword_100117C28, &qword_1000CF9F8);
  v80 = *(v94 - 8);
  __chkstk_darwin(v94);
  v84 = &v78 - v5;
  v85 = sub_1000C6694();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v78 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v78 - v9;
  v11 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v12 = __chkstk_darwin(v11 - 8);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v78 - v15;
  __chkstk_darwin(v14);
  v99 = &v78 - v17;
  v100 = sub_10000FEB8(&qword_100117C38, &qword_1000CFA08);
  v88 = *(v100 - 8);
  __chkstk_darwin(v100);
  v19 = &v78 - v18;
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DA280;
  v109._countAndFlagsBits = 0x4D2065766F6D6552;
  v109._object = 0xE900000000000065;
  v111.value._countAndFlagsBits = 0;
  v111.value._object = 0;
  v22.super.isa = v21;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v23 = sub_1000C5B74(v109, v111, v22, v113, 0xD00000000000002CLL, v76);
  v25 = v24;

  v26 = [v20 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DA2B0;
  v110._countAndFlagsBits = 0x412065766F6D6552;
  v110._object = 0xED00007373656363;
  v27 = v16;
  v28 = v10;
  v112.value._countAndFlagsBits = 0;
  v112.value._object = 0;
  v29.super.isa = v26;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v30 = sub_1000C5B74(v110, v112, v29, v114, 0xD000000000000031, v77);
  v32 = v31;

  v102 = v87;
  v103 = v23;
  v104 = v25;
  v105 = v30;
  v106 = v32;
  sub_10000FEB8(&qword_100117C40, &unk_1000CFA10);
  v33 = v19;
  v34 = v85;
  sub_10001E490(&qword_100117C48, &qword_100117C40, &unk_1000CFA10, &protocol conformance descriptor for TupleView<A>);
  v35 = v99;
  sub_1000C6864();

  type metadata accessor for PersonInfoView(0);
  sub_1000A36E0(v35);
  v36 = v86;
  (*(v86 + 104))(v27, enum case for UserInterfaceSizeClass.regular(_:), v34);
  (*(v36 + 56))(v27, 0, 1, v34);
  v37 = *(v8 + 56);
  sub_100017574(v35, v28, &unk_100117BD0, qword_1000CF980);
  sub_100017574(v27, v28 + v37, &unk_100117BD0, qword_1000CF980);
  v38 = *(v36 + 48);
  v39 = v38(v28, 1, v34);
  v101 = v33;
  if (v39 == 1)
  {
    sub_100010F24(v27, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v35, &unk_100117BD0, qword_1000CF980);
    v40 = v38(v28 + v37, 1, v34);
    v41 = v100;
    if (v40 == 1)
    {
      sub_100010F24(v28, &unk_100117BD0, qword_1000CF980);
LABEL_9:
      sub_1000C6774();
      v60 = sub_10001E490(&qword_100117C50, &qword_100117C38, &qword_1000CFA08, &protocol conformance descriptor for List<A, B>);
      v99 = v60;
      sub_1000C6934();
      sub_1000C65D4();
      v61 = sub_1000C68C4();
      v63 = v62;
      v65 = v64;
      v66 = v90;
      v67 = v89;
      v68 = v91;
      (*(v90 + 104))(v89, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v91);
      v107 = v100;
      v108 = v60;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v70 = v92;
      v71 = v83;
      sub_1000C6954();
      sub_1000500D8(v61, v63, v65 & 1);

      (*(v66 + 8))(v67, v68);
      v41 = v100;
      (*(v79 + 8))(v71, v70);
      v72 = v80;
      v73 = v94;
      v74 = v84;
      (*(v80 + 16))(v95, v84, v94);
      swift_storeEnumTagMultiPayload();
      v107 = v70;
      v108 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v107 = v41;
      v108 = v99;
      swift_getOpaqueTypeConformance2();
      sub_1000C6624();
      (*(v72 + 8))(v74, v73);
      return (*(v88 + 8))(v101, v41);
    }

    goto LABEL_6;
  }

  v42 = v81;
  sub_100017574(v28, v81, &unk_100117BD0, qword_1000CF980);
  if (v38(v28 + v37, 1, v34) == 1)
  {
    sub_100010F24(v27, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v99, &unk_100117BD0, qword_1000CF980);
    (*(v36 + 8))(v42, v34);
    v41 = v100;
LABEL_6:
    sub_100010F24(v28, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_7;
  }

  v56 = v28 + v37;
  v57 = v78;
  (*(v36 + 32))(v78, v56, v34);
  sub_1000503E4(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v58 = sub_1000C6D34();
  v59 = *(v36 + 8);
  v59(v57, v34);
  sub_100010F24(v27, &unk_100117BD0, qword_1000CF980);
  sub_100010F24(v99, &unk_100117BD0, qword_1000CF980);
  v59(v42, v34);
  sub_100010F24(v28, &unk_100117BD0, qword_1000CF980);
  v41 = v100;
  if (v58)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1000C65D4();
  v43 = sub_1000C68C4();
  v45 = v44;
  v47 = v46;
  v48 = v90;
  v49 = v89;
  v50 = v91;
  (*(v90 + 104))(v89, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v91);
  v51 = sub_10001E490(&qword_100117C50, &qword_100117C38, &qword_1000CFA08, &protocol conformance descriptor for List<A, B>);
  sub_1000C6954();
  sub_1000500D8(v43, v45, v47 & 1);

  (*(v48 + 8))(v49, v50);
  v52 = v82;
  v53 = v97;
  v54 = v98;
  (*(v82 + 16))(v95, v98, v97);
  swift_storeEnumTagMultiPayload();
  v107 = v41;
  v108 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v107 = v92;
  v108 = v55;
  swift_getOpaqueTypeConformance2();
  v107 = v41;
  v108 = v51;
  swift_getOpaqueTypeConformance2();
  sub_1000C6624();
  (*(v52 + 8))(v54, v53);
  return (*(v88 + 8))(v101, v41);
}

uint64_t sub_10004D354@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a4;
  v61 = a5;
  v58 = a2;
  v59 = a3;
  v70 = a6;
  v7 = sub_10000FEB8(&qword_100117C60, &qword_1000D6440);
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v57 = &v56 - v8;
  v9 = sub_10000FEB8(&qword_100117C68, &qword_1000CFA20);
  v10 = __chkstk_darwin(v9 - 8);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = (&v56 - v12);
  v13 = type metadata accessor for PersonInfoView(0);
  v14 = v13 - 8;
  v87 = *(v13 - 8);
  v15 = *(v87 + 64);
  v16 = __chkstk_darwin(v13);
  v85 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v56 - v17;
  v18 = sub_10000FEB8(&qword_100117C70, &qword_1000CFA28);
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = __chkstk_darwin(v18);
  v96 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v101 = 0;
  LOBYTE(v102) = 0;
  v71 = a1;
  v99 = a1;
  sub_10000FEB8(&qword_100117C78, &qword_1000CFA30);
  sub_10001E490(&qword_100117C80, &qword_100117C78, &qword_1000CFA30, &protocol conformance descriptor for TupleView<A>);
  v95 = v22;
  sub_1000C6C04();
  LOBYTE(v101) = 1;
  sub_1000C6BD4();
  v93 = v165;
  v94 = v164;
  v92 = v166;
  v23 = *(a1 + *(v14 + 28) + 16);
  v24 = type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  v62 = v24;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v91 = v101;
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v89 = v162;
  v90 = v161;
  v88 = v163;
  v25 = v71;
  v26 = v86;
  sub_1000501FC(v71, v86);
  v27 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v87 = swift_allocObject();
  sub_10005026C(v26, v87 + v27);
  v28 = v25;
  v29 = v85;
  sub_1000501FC(v28, v85);
  v86 = swift_allocObject();
  sub_10005026C(v29, v86 + v27);
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v85 = v158;
  v65 = v159;
  v64 = v160;
  LOBYTE(v101) = 1;
  sub_1000C6BD4();
  v83 = v156;
  v84 = v155;
  v82 = v157;
  v63 = v23;
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v80 = v153;
  v81 = v152;
  v79 = v154;
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v30 = v101;
  v31 = v102;
  v32 = v103;
  swift_getKeyPath();
  v100[0] = v30;
  v100[1] = v31;
  v100[2] = v32;
  sub_10000FEB8(&qword_100117C98, &qword_1000CFB58);
  sub_1000C6BA4();

  v77 = v150;
  v78 = v149;
  v76 = v151;

  type metadata accessor for SharingModel(0);
  sub_1000503E4(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  v33 = sub_1000C6404();
  v72 = v34;
  v73 = v33;
  v146 = 1;
  sub_1000C6AD4();
  v74 = v147;
  v75 = v148;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v101 & 1) != 0 || (sub_1000C6224(), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , v35 = , v101 == 1))
  {
    __chkstk_darwin(v35);
    v37 = v58;
    v36 = v59;
    *(&v56 - 6) = v71;
    *(&v56 - 5) = v37;
    *(&v56 - 4) = v36;
    v38 = v61;
    *(&v56 - 3) = v60;
    *(&v56 - 2) = v38;
    sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
    sub_1000505FC();
    v39 = v57;
    sub_1000C6C14();
    v40 = v66;
    v41 = v68;
    v42 = v39;
    v43 = v67;
    (*(v66 + 32))(v68, v42, v67);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v67;
    v41 = v68;
    v40 = v66;
  }

  (*(v40 + 56))(v41, v44, 1, v43);
  v45 = v96;
  v46 = *(v97 + 16);
  v47 = v98;
  v46(v96, v95, v98);
  v48 = v69;
  sub_100017574(v41, v69, &qword_100117C68, &qword_1000CFA20);
  v49 = v70;
  v46(v70, v45, v47);
  v50 = sub_10000FEB8(&qword_100117CA0, &qword_1000CFBF0);
  v51 = *(v50 + 48);
  v100[0] = v73;
  v100[1] = v72;
  v100[2] = _swiftEmptyArrayStorage;
  v100[3] = v94;
  v100[4] = v93;
  LOBYTE(v100[5]) = v92;
  *(&v100[5] + 1) = v175[0];
  HIDWORD(v100[5]) = *(v175 + 3);
  v100[6] = 0;
  v100[7] = 0;
  v100[8] = v91;
  v100[9] = v90;
  v100[10] = v89;
  LOBYTE(v100[11]) = v88;
  HIDWORD(v100[11]) = *&v174[3];
  *(&v100[11] + 1) = *v174;
  v71 = sub_1000502D0;
  v100[12] = sub_1000502D0;
  v100[13] = v87;
  v100[14] = _swiftEmptyArrayStorage;
  LOBYTE(v100[15]) = 0;
  *(&v100[15] + 1) = *v173;
  HIDWORD(v100[15]) = *&v173[3];
  v68 = sub_1000502E8;
  v100[16] = sub_1000502E8;
  v100[17] = v86;
  v100[18] = _swiftEmptyArrayStorage;
  LOBYTE(v100[19]) = 0;
  *(&v100[19] + 1) = *v172;
  HIDWORD(v100[19]) = *&v172[3];
  v67 = nullsub_2;
  HIDWORD(v100[24]) = *&v171[3];
  *(&v100[24] + 1) = *v171;
  HIDWORD(v100[27]) = *&v170[3];
  *(&v100[27] + 1) = *v170;
  HIDWORD(v100[30]) = *&v169[3];
  *(&v100[30] + 1) = *v169;
  *(&v100[33] + 1) = *v168;
  *(&v100[34] + 1) = *v167;
  HIDWORD(v100[33]) = *&v168[3];
  HIDWORD(v100[34]) = *&v167[3];
  v100[20] = nullsub_2;
  v100[21] = 0;
  v100[22] = v85;
  v52 = v65;
  v100[23] = v65;
  LOBYTE(v46) = v64;
  LOBYTE(v100[24]) = v64;
  v100[25] = v84;
  v100[26] = v83;
  LOBYTE(v100[27]) = v82;
  v100[28] = v81;
  v100[29] = v80;
  LOBYTE(v100[30]) = v79;
  v100[31] = v78;
  v100[32] = v77;
  LOBYTE(v100[33]) = v76;
  LOBYTE(v100[34]) = v74;
  v100[35] = v75;
  memcpy((v49 + v51), v100, 0x120uLL);
  sub_100017574(v48, v49 + *(v50 + 64), &qword_100117C68, &qword_1000CFA20);
  sub_10005051C(v100, &v101);
  sub_100010F24(v41, &qword_100117C68, &qword_1000CFA20);
  v53 = v98;
  v54 = *(v97 + 8);
  v54(v95, v98);
  sub_100010F24(v48, &qword_100117C68, &qword_1000CFA20);
  v101 = v73;
  v102 = v72;
  v103 = _swiftEmptyArrayStorage;
  v104 = v94;
  v105 = v93;
  v106 = v92;
  *v107 = v175[0];
  *&v107[3] = *(v175 + 3);
  v109 = 0;
  v108 = 0;
  v110 = v91;
  v111 = v90;
  v112 = v89;
  v113 = v88;
  *&v114[3] = *&v174[3];
  *v114 = *v174;
  v115 = v71;
  v116 = v87;
  v117 = _swiftEmptyArrayStorage;
  v118 = 0;
  *v119 = *v173;
  *&v119[3] = *&v173[3];
  v120 = v68;
  v121 = v86;
  v122 = _swiftEmptyArrayStorage;
  v123 = 0;
  *v124 = *v172;
  *&v124[3] = *&v172[3];
  v125 = v67;
  v126 = 0;
  v127 = v85;
  v128 = v52;
  v129 = v46;
  *&v130[3] = *&v171[3];
  *v130 = *v171;
  v131 = v84;
  v132 = v83;
  v133 = v82;
  *&v134[3] = *&v170[3];
  *v134 = *v170;
  v135 = v81;
  v136 = v80;
  v137 = v79;
  *&v138[3] = *&v169[3];
  *v138 = *v169;
  v139 = v78;
  v140 = v77;
  v141 = v76;
  *v142 = *v168;
  *&v142[3] = *&v168[3];
  v143 = v74;
  *v144 = *v167;
  *&v144[3] = *&v167[3];
  v145 = v75;
  sub_100050578(&v101);
  return (v54)(v96, v53);
}

uint64_t sub_10004E0BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = sub_1000C65C4();
  LOBYTE(v62) = 1;
  sub_10004E774(a1, &v49);
  v76 = *&v50[48];
  v77 = *&v50[64];
  v78 = *&v50[80];
  v72 = v49;
  v73 = *v50;
  v75 = *&v50[32];
  v74 = *&v50[16];
  v79[0] = v49;
  v79[1] = *v50;
  v79[2] = *&v50[16];
  v79[3] = *&v50[32];
  v79[4] = *&v50[48];
  v79[5] = *&v50[64];
  v79[6] = *&v50[80];
  sub_100017574(&v72, &v39, &qword_100117CD8, &qword_1000CFCB0);
  sub_100010F24(v79, &qword_100117CD8, &qword_1000CFCB0);
  *&v71[55] = v75;
  *&v71[71] = v76;
  *&v71[87] = v77;
  *&v71[103] = v78;
  *&v71[7] = v72;
  *&v71[23] = v73;
  *&v71[39] = v74;
  v27 = v62;
  type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  v3 = sub_1000C6224();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_1000C6604();
    LOBYTE(v49) = 1;
    sub_10004ED44(&v39);
    *&v61[7] = v39;
    *&v61[23] = *v40;
    *&v61[39] = *&v40[16];
    *&v61[55] = *&v40[32];
    v8 = v49;
    v9 = sub_1000C67B4();
    sub_1000C6204();
    *&v50[17] = *&v61[16];
    *&v50[33] = *&v61[32];
    *&v50[49] = *&v61[48];
    v49 = v7;
    v50[0] = v8;
    *&v50[64] = *&v61[63];
    *&v50[1] = *v61;
    v50[72] = v9;
    *&v50[80] = v10;
    *&v50[88] = v11;
    *&v50[96] = v12;
    *&v50[104] = v13;
    v50[112] = 0;
    nullsub_2();
    v68 = *&v50[80];
    v69 = *&v50[96];
    v70 = v50[112];
    v64 = *&v50[16];
    v65 = *&v50[32];
    v67 = *&v50[64];
    v66 = *&v50[48];
    v63 = *v50;
    v62 = v49;
  }

  else
  {
    sub_100050DF0(&v62);
  }

  v14 = sub_1000C6224();
  v15 = *(v14 + 88);
  v16 = *(v14 + 96);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = sub_1000C6604();
    LOBYTE(v49) = 1;
    sub_10004EFB0(&v39);
    *&v51[7] = v39;
    *&v51[23] = *v40;
    *&v51[39] = *&v40[16];
    *&v51[55] = *&v40[32];
    v19 = v49;
    v20 = sub_1000C67B4();
    sub_1000C6204();
    *&v50[17] = *&v51[16];
    *&v50[33] = *&v51[32];
    *&v50[49] = *&v51[48];
    v49 = v18;
    v50[0] = v19;
    *&v50[64] = *&v51[63];
    *&v50[1] = *v51;
    v50[72] = v20;
    *&v50[80] = v21;
    *&v50[88] = v22;
    *&v50[96] = v23;
    *&v50[104] = v24;
    v50[112] = 0;
    nullsub_2();
    v58 = *&v50[80];
    v59 = *&v50[96];
    v60 = v50[112];
    v54 = *&v50[16];
    v55 = *&v50[32];
    v57 = *&v50[64];
    v56 = *&v50[48];
    v53 = *v50;
    v52 = v49;
  }

  else
  {
    sub_100050DF0(&v52);
  }

  v36 = v68;
  v37 = v69;
  v32 = v64;
  v33 = v65;
  v34 = v66;
  v35 = v67;
  v30 = v62;
  v31 = v63;
  v45[6] = v58;
  v45[7] = v59;
  v45[2] = v54;
  v45[3] = v55;
  v45[5] = v57;
  v45[4] = v56;
  v45[1] = v53;
  v45[0] = v52;
  v39 = v28;
  v40[0] = v27;
  *&v40[1] = *v71;
  *&v40[17] = *&v71[16];
  *&v40[81] = *&v71[80];
  *&v40[65] = *&v71[64];
  *&v40[97] = *&v71[96];
  *&v40[33] = *&v71[32];
  *&v40[49] = *&v71[48];
  __src[6] = *&v40[80];
  __src[7] = *&v40[96];
  __src[2] = *&v40[16];
  __src[3] = *&v40[32];
  __src[4] = *&v40[48];
  __src[5] = *&v40[64];
  __src[0] = v28;
  __src[1] = *v40;
  v41[6] = v68;
  v41[7] = v69;
  v41[2] = v64;
  v41[3] = v65;
  v41[4] = v66;
  v41[5] = v67;
  v41[0] = v62;
  v41[1] = v63;
  *(&__src[13] + 8) = v67;
  *(&__src[14] + 8) = v68;
  *(&__src[15] + 8) = v69;
  *(&__src[9] + 8) = v63;
  *(&__src[10] + 8) = v64;
  *(&__src[11] + 8) = v65;
  *(&__src[12] + 8) = v66;
  *(&__src[8] + 8) = v62;
  v43[6] = v58;
  v43[7] = v59;
  v43[2] = v54;
  v43[3] = v55;
  v43[4] = v56;
  v43[5] = v57;
  v43[0] = v52;
  v43[1] = v53;
  __src[23] = v58;
  __src[24] = v59;
  __src[19] = v54;
  __src[20] = v55;
  __src[21] = v56;
  __src[22] = v57;
  v38 = v70;
  v46 = v60;
  *&v40[112] = *&v71[111];
  *&__src[8] = *&v71[111];
  v42 = v70;
  BYTE8(__src[16]) = v70;
  v44 = v60;
  LOBYTE(__src[25]) = v60;
  __src[17] = v52;
  __src[18] = v53;
  memcpy(a2, __src, 0x191uLL);
  sub_100017574(&v39, &v49, &qword_100117CE0, &qword_1000CFCB8);
  sub_100017574(v41, &v49, &qword_100117CE8, &qword_1000CFCC0);
  sub_100017574(v43, &v49, &qword_100117CE8, &qword_1000CFCC0);
  sub_100010F24(v45, &qword_100117CE8, &qword_1000CFCC0);
  v47[6] = v36;
  v47[7] = v37;
  v48 = v38;
  v47[2] = v32;
  v47[3] = v33;
  v47[5] = v35;
  v47[4] = v34;
  v47[1] = v31;
  v47[0] = v30;
  sub_100010F24(v47, &qword_100117CE8, &qword_1000CFCC0);
  *&v50[65] = *&v71[64];
  *&v50[81] = *&v71[80];
  *&v50[97] = *&v71[96];
  *&v50[1] = *v71;
  *&v50[17] = *&v71[16];
  *&v50[33] = *&v71[32];
  v49 = v28;
  v50[0] = v27;
  *&v50[112] = *&v71[111];
  *&v50[49] = *&v71[48];
  return sub_100010F24(&v49, &qword_100117CE0, &qword_1000CFCB8);
}

uint64_t sub_10004E774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C6A94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for PersonInfoView(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = type metadata accessor for PersonInfoViewModel(0);
  v13 = sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  v39 = v10;
  v40 = v9;
  v38 = v11;
  v36 = v13;
  v37 = v12;
  v14 = *(sub_1000C6224() + 104);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    v35 = v16;
    sub_1000C6C54();
    sub_1000C62C4();
    *(v48 + 6) = v50[4];
    *(&v48[1] + 6) = v50[5];
    *(&v48[2] + 6) = v51;
    v49 = v16;
    LOWORD(v50[0]) = 257;
    *(v50 + 2) = v48[0];
    *(&v50[1] + 2) = v48[1];
    *(&v50[2] + 2) = v48[2];
    *&v50[3] = *(&v51 + 1);
    v52 = v16;
    v53 = v50[0];
    v54 = v50[1];
    *v55 = v50[2];
    *&v55[16] = *(&v51 + 1);
    LOBYTE(v46[0]) = 0;
    v55[24] = 0;
    sub_100017574(&v49, v48, &qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_100050EA0(&qword_100117D00, &qword_100117CF0, &unk_1000D6550, sub_100050E14);
    sub_100050EA0(&qword_100117D18, &qword_100117CF8, &unk_1000CFD00, sub_100050F24);
    sub_1000C6624();

    sub_100010F24(&v49, &qword_100117CF0, &unk_1000D6550);
    v53 = v48[1];
    v54 = v48[2];
    *v55 = v48[3];
    *&v55[9] = *(&v48[3] + 9);
    v52 = v48[0];
  }

  else
  {
    sub_1000C6A84();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v17 = sub_1000C6AB4();

    (*(v5 + 8))(v7, v4);
    v18 = sub_1000C6A54();
    KeyPath = swift_getKeyPath();
    sub_1000C6C54();
    sub_1000C62C4();
    LOBYTE(v49) = 1;
    *&v48[0] = v17;
    *(&v48[0] + 1) = KeyPath;
    *&v48[1] = v18;
    BYTE8(v48[4]) = 1;
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_100050EA0(&qword_100117D00, &qword_100117CF0, &unk_1000D6550, sub_100050E14);
    sub_100050EA0(&qword_100117D18, &qword_100117CF8, &unk_1000CFD00, sub_100050F24);
    sub_1000C6624();
  }

  v20 = sub_1000C6224();
  v22 = *(v20 + 56);
  v21 = *(v20 + 64);

  *&v48[0] = v22;
  *(&v48[0] + 1) = v21;
  sub_1000383C8();
  v23 = sub_1000C68D4();
  v25 = v24;
  v26 = v53;
  v44 = v54;
  v45[0] = *v55;
  *(v45 + 9) = *&v55[9];
  *(v47 + 9) = *&v55[9];
  v47[0] = *v55;
  v42 = v52;
  v43 = v53;
  v46[0] = v52;
  v46[1] = v53;
  v46[2] = v54;
  *(&v48[3] + 9) = *&v55[9];
  v48[2] = v54;
  v48[3] = *v55;
  v48[0] = v52;
  v48[1] = v53;
  v28 = v27 & 1;
  v41 = v27 & 1;
  v29 = v52;
  v30 = v54;
  v31 = v48[4];
  *(a2 + 48) = *v55;
  *(a2 + 64) = v31;
  *(a2 + 16) = v26;
  *(a2 + 32) = v30;
  *a2 = v29;
  *(a2 + 80) = v23;
  *(a2 + 88) = v24;
  *(a2 + 96) = v27 & 1;
  *(a2 + 104) = v32;
  sub_100017574(v46, &v49, &qword_100117D40, &qword_1000CFD20);
  sub_100050DE0(v23, v25, v28);

  sub_1000500D8(v23, v25, v28);

  v50[1] = v44;
  v50[2] = v45[0];
  *(&v50[2] + 9) = *(v45 + 9);
  v49 = v42;
  v50[0] = v43;
  return sub_100010F24(&v49, &qword_100117D40, &qword_1000CFD20);
}

uint64_t sub_10004ED44@<X0>(uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  sub_1000C6224();

  sub_1000383C8();
  v20 = sub_1000C68D4();
  v22 = v21;
  v23 = v17 & 1;
  v28 = v17 & 1;
  v25 = v24 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_100050DE0(v13, v15, v23);

  sub_100050DE0(v20, v22, v25);

  sub_1000500D8(v20, v22, v25);

  sub_1000500D8(v13, v15, v28);
}

uint64_t sub_10004EFB0@<X0>(uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  sub_1000C6224();

  sub_1000383C8();
  v20 = sub_1000C68D4();
  v22 = v21;
  v23 = v17 & 1;
  v28 = v17 & 1;
  v25 = v24 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_100050DE0(v13, v15, v23);

  sub_100050DE0(v20, v22, v25);

  sub_1000500D8(v20, v22, v25);

  sub_1000500D8(v13, v15, v28);
}

uint64_t sub_10004F21C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_10004F29C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10004F310(unsigned __int8 a1, uint64_t a2)
{
  type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  v3 = sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  sub_10002AF10(*(v3 + 40), *(v3 + 48), a1);
}

uint64_t sub_10004F418(char a1, uint64_t a2)
{
  type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  v3 = sub_1000C6224();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  sub_10002B19C(*(v3 + 40), *(v3 + 48), a1 == 0);
}

uint64_t sub_10004F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v8 = type metadata accessor for PersonInfoView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  sub_1000C61C4();
  v15 = sub_1000C61F4();
  (*(*(v15 - 8) + 56))(a6, 0, 1, v15);
  sub_1000501FC(a1, v14);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = v16 + v10;
  v18 = swift_allocObject();
  sub_10005026C(v14, v18 + v16);
  sub_1000501FC(a1, v12);
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_10005026C(v12, v20 + v16);
  v21 = (v20 + v19);
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  v24 = v38;
  *v23 = v37;
  v23[1] = v24;
  v25 = sub_10000FEB8(&qword_100117CC0, &unk_1000CFC00);
  v26 = (a6 + v25[9]);
  *v26 = &unk_1000CFC18;
  v26[1] = v18;
  v27 = (a6 + v25[10]);
  *v27 = sub_100050D10;
  v27[1] = v20;
  v28 = a6 + v25[11];
  v39 = 0;

  sub_1000C6AD4();
  v29 = v41;
  *v28 = v40;
  *(v28 + 8) = v29;
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v28) = v40;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  result = sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  v33 = (a6 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = sub_100050DD8;
  v33[2] = v31;
  return result;
}

uint64_t sub_10004F8D8(uint64_t a1)
{
  v1[5] = a1;
  sub_1000C63D4();
  v1[6] = swift_task_alloc();
  v1[7] = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v1[8] = swift_task_alloc();
  v1[9] = sub_1000C6F14();
  v1[10] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[11] = v3;
  v1[12] = v2;

  return _swift_task_switch(sub_10004F9DC, v3, v2);
}

uint64_t sub_10004F9DC()
{
  v0[13] = type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  v0[14] = sub_1000C6224();
  v0[15] = sub_1000C6F04();
  v2 = sub_1000C6ED4();
  v0[16] = v2;
  v0[17] = v1;

  return _swift_task_switch(sub_10004FAF4, v2, v1);
}

uint64_t sub_10004FAF4()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_10004FBBC;

  return sub_1000298A4(v2);
}

uint64_t sub_10004FBBC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10004FD00, v3, v2);
}

uint64_t sub_10004FD00()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_10004FD6C, v1, v2);
}

uint64_t sub_10004FD6C()
{
  v1 = *(v0 + 64);

  sub_1000A36BC(v1);
  sub_1000C6B84();
  sub_1000C63C4();
  sub_1000C6B94();
  sub_100010F24(v1, &qword_100116A20, &qword_1000CCB90);

  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_10004FE48@<Q0>(uint64_t a6@<X8>)
{
  v7 = sub_1000C65C4();
  sub_10004FF10(v10);
  *&v9[48] = *&v11[9];
  *&v9[39] = *v11;
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a6 + 17) = *v9;
  *(a6 + 33) = *&v9[16];
  result = *&v9[32];
  *(a6 + 49) = *&v9[32];
  *a6 = v7;
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  *(a6 + 65) = *&v9[48];
  return result;
}

uint64_t sub_10004FF10@<X0>(uint64_t a6@<X8>)
{
  type metadata accessor for PersonInfoView(0);
  type metadata accessor for PersonInfoViewModel(0);
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel, &unk_1000D1110);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_1000383C8();
  v7 = sub_1000C68D4();
  v9 = v8;
  v11 = v10 & 1;
  *a6 = 0;
  *(a6 + 8) = 1;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
  *(a6 + 32) = v10 & 1;
  *(a6 + 40) = v12;
  *(a6 + 48) = 0;
  *(a6 + 56) = 1;
  sub_100050DE0(v7, v8, v10 & 1);

  sub_1000500D8(v7, v9, v11);
}

uint64_t sub_1000500D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000500F0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_100050174(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000501FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInfoView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005026C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInfoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050300(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PersonInfoView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000503E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000505FC()
{
  result = qword_100117CB0;
  if (!qword_100117CB0)
  {
    sub_100010624(&qword_100117CA8, &qword_1000CFBF8);
    sub_10001E490(&qword_100117CB8, &qword_100117CC0, &unk_1000CFC00, &unk_1000D18C8);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117CB0);
  }

  return result;
}

uint64_t sub_1000506E0()
{
  v1 = type metadata accessor for PersonInfoView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100050264(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[7];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C6694();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v5 + v1[8];
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v12 = *(sub_10000FEB8(&qword_100116A20, &qword_1000CCB90) + 32);
    v13 = sub_1000C63D4();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005097C()
{
  v2 = *(type metadata accessor for PersonInfoView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011080;

  return sub_10004F8D8(v0 + v3);
}

uint64_t sub_100050A48()
{
  v1 = type metadata accessor for PersonInfoView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100050264(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[7];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C6694();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v5 + v1[8];
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v12 = *(sub_10000FEB8(&qword_100116A20, &qword_1000CCB90) + 32);
    v13 = sub_1000C63D4();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

double sub_100050D10@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PersonInfoView(0);

  *&result = sub_10004FE48(a1).n128_u64[0];
  return result;
}

uint64_t sub_100050DE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_100050DF0(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100050E14()
{
  result = qword_100117D08;
  if (!qword_100117D08)
  {
    sub_100010624(&qword_100117D10, &unk_1000D6560);
    sub_100039E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D08);
  }

  return result;
}

uint64_t sub_100050EA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100050F24()
{
  result = qword_100117D20;
  if (!qword_100117D20)
  {
    sub_100010624(&qword_100117D28, &unk_1000CFD10);
    sub_10001E490(&qword_100117D30, &qword_100117D38, &qword_1000D2370, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D20);
  }

  return result;
}

unint64_t sub_100050FE0()
{
  result = qword_100117D48;
  if (!qword_100117D48)
  {
    sub_100010624(&qword_100117D50, &qword_1000CFD28);
    sub_100010624(&qword_100117C20, &qword_1000CF9F0);
    sub_100010624(&qword_100117C38, &qword_1000CFA08);
    sub_10001E490(&qword_100117C50, &qword_100117C38, &qword_1000CFA08, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D48);
  }

  return result;
}

uint64_t sub_100051154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100051230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for OneTimeLinkListView(uint64_t a1)
{
  result = qword_100117DB0;
  if (!qword_100117DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051340(uint64_t a1)
{
  sub_10004C40C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PeopleViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000513E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C65A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100052928(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000C62E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000C6FE4();
    v13 = sub_1000C6764();
    sub_1000C5F44();

    sub_1000C6594();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000515C8@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = sub_1000C65B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_100117DE8, &qword_1000CFDB8);
  v21[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v22 = v1;
  sub_10000FEB8(&qword_100117DF0, &qword_1000CFDC0);
  sub_100052278();
  sub_1000C6864();
  v9 = [objc_opt_self() mainBundle];
  v20._countAndFlagsBits = 0x80000001000DA350;
  v25._object = 0x80000001000DA330;
  v25._countAndFlagsBits = 0xD000000000000014;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v10.super.isa = v9;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v11 = sub_1000C5B74(v25, v26, v10, v27, 0xD00000000000003ELL, v20);
  v13 = v12;

  v23 = v11;
  v24 = v13;
  sub_1000383C8();
  v14 = sub_1000C68D4();
  v16 = v15;
  v18 = v17;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v2);
  sub_10001E490(&qword_100117E18, &qword_100117DE8, &qword_1000CFDB8, &protocol conformance descriptor for List<A, B>);
  sub_1000C6954();
  sub_1000500D8(v14, v16, v18 & 1);

  (*(v3 + 8))(v5, v2);
  return (*(v21[0] + 8))(v8, v6);
}

uint64_t sub_1000518D0(uint64_t a1)
{
  v2 = type metadata accessor for OneTimeLinkListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_100052410(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100052594(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_10000FEB8(&qword_100116C50, &qword_1000CD178);
  sub_10000FEB8(&qword_100117E08, &qword_1000CFDC8);
  sub_10001E490(&qword_100117E20, &qword_100116C50, &qword_1000CD178, &protocol conformance descriptor for [A]);
  sub_1000522FC();
  sub_100052678();
  return sub_1000C6BF4();
}

uint64_t sub_100051AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for OneTimeLinkListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = *a1;
  sub_100052410(a2, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_100052594(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_1000C6094();

  v12 = v15[15];
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v12;
  *a3 = v9;
  a3[1] = &unk_1000CFE38;
  a3[2] = v11;
  a3[3] = KeyPath;
  a3[4] = sub_100050DD8;
  a3[5] = result;
  return result;
}

uint64_t sub_100051C84(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1000C6F14();
  v2[3] = sub_1000C6F04();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100051D40;

  return sub_100051E7C(a2);
}

uint64_t sub_100051D40()
{

  v1 = sub_1000C6ED4();

  return _swift_task_switch(sub_100040F74, v1, v0);
}

uint64_t sub_100051E7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000C62E4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1000C6F14();
  v2[8] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v2[9] = v5;
  v2[10] = v4;

  return _swift_task_switch(sub_100051F70, v5, v4);
}

uint64_t sub_100051F70()
{
  v1 = v0[4];
  v0[11] = *(v1 + *(type metadata accessor for OneTimeLinkListView(0) + 20));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10005201C;
  v3 = v0[3];

  return sub_100026394(v3);
}

uint64_t sub_10005201C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10005213C, v3, v2);
}

uint64_t sub_10005213C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = v0[2];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_1000C72F4();

  if (!v8)
  {
LABEL_3:
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    sub_1000513E0(v3);
    sub_1000C62D4();
    (*(v4 + 8))(v3, v5);
  }

LABEL_4:

  v6 = v0[1];

  return v6();
}

unint64_t sub_100052278()
{
  result = qword_100117DF8;
  if (!qword_100117DF8)
  {
    sub_100010624(&qword_100117DF0, &qword_1000CFDC0);
    sub_1000522FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117DF8);
  }

  return result;
}

unint64_t sub_1000522FC()
{
  result = qword_100117E00;
  if (!qword_100117E00)
  {
    sub_100010624(&qword_100117E08, &qword_1000CFDC8);
    sub_1000523B4();
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E00);
  }

  return result;
}

unint64_t sub_1000523B4()
{
  result = qword_100117E10;
  if (!qword_100117E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E10);
  }

  return result;
}

uint64_t sub_100052410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneTimeLinkListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052474()
{
  v1 = *(type metadata accessor for OneTimeLinkListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C62E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100052594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneTimeLinkListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000525F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for OneTimeLinkListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100051AC8(a1, v6, a2);
}

unint64_t sub_100052678()
{
  result = qword_100117E28;
  if (!qword_100117E28)
  {
    type metadata accessor for OneTimeLinkRowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E28);
  }

  return result;
}

uint64_t sub_1000526D0()
{
  v1 = *(type metadata accessor for OneTimeLinkListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C62E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100052804()
{
  v2 = *(type metadata accessor for OneTimeLinkListView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100011080;

  return sub_100051C84(v0 + v3, v4);
}

uint64_t sub_100052928(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052998()
{
  sub_100010624(&qword_100117DE8, &qword_1000CFDB8);
  sub_10001E490(&qword_100117E18, &qword_100117DE8, &qword_1000CFDB8, &protocol conformance descriptor for List<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100052A30()
{
  v0 = sub_100059520();
  v1 = (v0 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName);
  v2 = *(v0 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName + 8);
  if (v2 || (v1 = (v0 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName), (v2 = *(v0 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName + 8)) != 0))
  {
    v3 = *v1;

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
    v2 = *(v0 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName + 8);

    result = swift_unknownObjectRelease();
    if (!v2)
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v7 == v3 && v8 == v2)
  {
  }

  else
  {
    v5 = sub_1000C73A4();

    if (v5)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_1000C60A4();
    }
  }
}

uint64_t sub_100052BD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100052C58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100052CE0()
{
  v0 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = sub_1000C5D84();
  v4 = 1;
  v5 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100010F24(v2, &qword_100116260, &qword_1000CD940);
  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v6 = v12;
    if (v12)
    {
      v7 = sub_1000C6D44();
      v8 = NSSelectorFromString(v7);

      if ([v6 respondsToSelector:v8] && objc_msgSend(v6, "br_isCloudDocsShare"))
      {

        return 1;
      }

      v9 = sub_10005A104();

      if (v9 == 9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_100052EEC(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 106) = a1;
  sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v3 = type metadata accessor for AlertViewModelButton(0);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_1000C5F74();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = sub_1000C6F14();
  *(v2 + 312) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v2 + 320) = v6;
  *(v2 + 328) = v5;

  return _swift_task_switch(sub_100053114, v6, v5);
}

uint64_t sub_100053114()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 57) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 58) - 2 > 3))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 168);
    sub_1000C6F24();
    v3 = sub_1000C6F44();
    (*(*(v3 - 8) + 56))(v1, 0, 1, v3);

    v4 = sub_1000C6F04();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = &protocol witness table for MainActor;
    v5[4] = v2;
    v6 = sub_1000B82F8(0, 0, v1, &unk_1000D1038, v5);
    *(v0 + 336) = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_1000C60A4();
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    v8 = sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    *(v0 + 352) = v8;
    *v7 = v0;
    v7[1] = sub_100053464;

    return Task.value.getter(v8, v6, &type metadata for () + 8, v8, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100053464()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_1000536F8;
  }

  else
  {
    v5 = sub_1000535A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000535A0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 2;

  sub_1000C60A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000536F8()
{
  v200 = v0;
  *(v0 + 144) = *(v0 + 360);
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    *(v0 + 368) = v2;
    *(v0 + 376) = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    *(v0 + 384) = v3;
    *(v0 + 392) = v4;
    v5 = *(v0 + 48);
    *(v0 + 400) = v5;
    v198 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 2;

    sub_1000C60A4();
    sub_1000C5F54();
    sub_1000199B8(v2, v1, v3, v4, v5, v198);
    v6 = v1;
    v7 = sub_1000C5F64();
    v8 = sub_1000C6FD4();
    v196 = v3;
    v9 = v3;
    v10 = v4;
    v11 = v4;
    v12 = v198;
    sub_1000494BC(v2, v6, v9, v11, v5, v198);
    v188 = v8;
    v13 = os_log_type_enabled(v7, v8);
    v193 = *(v0 + 288);
    v14 = *(v0 + 224);
    v15 = *(v0 + 216);
    v197 = v5;
    if (v13)
    {
      v16 = v6;
      loga = v7;
      v184 = *(v0 + 216);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v199 = v18;
      *v17 = 136315138;
      *(v0 + 64) = v2;
      *(v0 + 72) = v16;
      *(v0 + 80) = v196;
      *(v0 + 88) = v10;
      *(v0 + 96) = v5;
      *(v0 + 104) = v198;
      sub_1000199B8(v2, v16, v196, v10, v5, v198);
      v19 = sub_1000C6D94();
      v21 = sub_100071844(v19, v20, &v199);
      v22 = v10;

      *(v17 + 4) = v21;
      v12 = v198;
      _os_log_impl(&_mh_execute_header, loga, v188, "saveShareAndReportErrors error: %s", v17, 0xCu);
      sub_100010544(v18);

      v23 = *(v14 + 8);
      result = v23(v193, v184);
    }

    else
    {

      v25 = *(v14 + 8);
      result = v25(v193, v15);
      v23 = v25;
      v22 = v10;
      v16 = v6;
    }

    *(v0 + 408) = v23;
    if (v12 == 4)
    {
      v194 = v23;
      v26 = v196;
      if (!v196)
      {
        __break(1u);
        return result;
      }

      sub_1000199B8(v2, v16, v196, v22, v197, 4u);
      v27 = v196;
      v28 = v16;
      sub_1000230E4(22);
      v30 = v29;

      if (v30)
      {

        sub_1000C5F54();
        v31 = sub_1000C5F64();
        v32 = sub_1000C6FD4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "saveShareAndReportErrors got batchRequestFailed, will retry once", v33, 2u);
        }

        v34 = *(v0 + 280);
        v35 = *(v0 + 216);
        v36 = *(v0 + 106);

        v194(v34, v35);
        if (v36 == 1)
        {
          v37 = swift_task_alloc();
          *(v0 + 416) = v37;
          *v37 = v0;
          v37[1] = sub_100054E5C;

          return sub_100052EEC(0);
        }

        v26 = v196;
        v16 = v28;
        LOBYTE(v12) = v198;
        goto LABEL_16;
      }

      v40 = v27;
      sub_1000230E4(14);
      v42 = v41;

      if (v42)
      {
        v189 = v22;
        sub_1000C5F54();
        v43 = sub_1000C5F64();
        v44 = sub_1000C6FD4();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "saveShareAndReportErrors got oplock error, will update share and show alert", v45, 2u);
        }

        v46 = *(v0 + 272);
        v47 = *(v0 + 216);
        v185 = v0;

        v194(v46, v47);
        v48 = v40;

        v49 = [v48 userInfo];
        log = v48;

        v50 = sub_1000C6CE4();
        v51 = sub_1000C6D84();
        if (*(v50 + 16))
        {
          v53 = sub_100071DEC(v51, v52);
          v55 = v54;

          v56 = v28;
          if (v55)
          {
            sub_100038D8C(*(v50 + 56) + 32 * v53, v0 + 112);

            sub_100010778(0, &qword_100116320, CKShare_ptr);
            if (swift_dynamicCast())
            {
              sub_1000494BC(v2, v28, v196, v189, v197, 4u);
              v57 = *(v0 + 152);
              sub_1000C5F54();
              v58 = v57;
              v59 = sub_1000C5F64();
              v60 = sub_1000C6FC4();

              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                *v61 = 138412290;
                *(v61 + 4) = v58;
                *v62 = v58;
                v63 = v58;
                _os_log_impl(&_mh_execute_header, v59, v60, "saveShareAndReportErrors oplock error server's updated share: %@", v61, 0xCu);
                sub_100010F24(v62, &qword_100117080, &unk_1000CC350);
              }

              v64 = *(v185 + 208);
              v65 = *(v185 + 192);
              v179 = *(v185 + 200);
              v180 = *(v185 + 184);
              v190 = *(v185 + 176);
              v194(*(v185 + 264), *(v185 + 216));
              swift_getKeyPath();
              swift_getKeyPath();
              *(v185 + 160) = v58;
              v195 = v58;

              sub_1000C60A4();
              sub_1000C65D4();
              LOWORD(v176._object) = 256;
              v66 = sub_1000C68C4();
              v68 = v67;
              v70 = v69;
              v72 = v71;
              v73 = v65[6];
              v74 = sub_1000C61F4();
              (*(*(v74 - 8) + 56))(v64 + v73, 1, 1, v74);
              v75 = swift_allocObject();
              swift_weakInit();
              sub_1000C5DB4();
              v76 = v64 + v65[5];
              *v76 = v66;
              *(v76 + 8) = v68;
              *(v76 + 16) = v70 & 1;
              *(v76 + 24) = v72;
              v77 = (v64 + v65[7]);
              *v77 = sub_10007B4F4;
              v77[1] = v75;
              v78 = objc_opt_self();
              v79 = [v78 mainBundle];
              v176._countAndFlagsBits = 0x80000001000DADE0;
              v202._countAndFlagsBits = 0x1000000000000019;
              v202._object = 0x80000001000DADC0;
              v207.value._countAndFlagsBits = 0;
              v207.value._object = 0;
              v80.super.isa = v79;
              v212._countAndFlagsBits = 0;
              v212._object = 0xE000000000000000;
              v81 = sub_1000C5B74(v202, v207, v80, v212, 0xD000000000000029, v176);
              v83 = v82;

              v84 = v64;
              v85 = [v78 mainBundle];
              v177._countAndFlagsBits = 0x80000001000DAE30;
              v203._object = 0x80000001000DAE10;
              v203._countAndFlagsBits = 0xD000000000000011;
              v208.value._countAndFlagsBits = 0;
              v208.value._object = 0;
              v86.super.isa = v85;
              v213._countAndFlagsBits = 0;
              v213._object = 0xE000000000000000;
              v87 = sub_1000C5B74(v203, v208, v86, v213, 0xD00000000000002BLL, v177);
              v89 = v88;

              sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
              v90 = (*(v179 + 80) + 32) & ~*(v179 + 80);
              v91 = swift_allocObject();
              *(v91 + 16) = xmmword_1000CB170;
              sub_100049224(v84, v91 + v90);
              sub_1000C5DB4();
              v92 = type metadata accessor for AlertViewModel(0);
              v93 = (v180 + v92[5]);
              *v93 = v81;
              v93[1] = v83;
              v94 = (v180 + v92[6]);
              *v94 = v87;
              v94[1] = v89;
              *(v180 + v92[7]) = v91;
              (*(*(v92 - 1) + 56))(v180, 0, 1, v92);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_100017574(v180, v190, &qword_100116C80, &unk_1000CE870);

              sub_1000C60A4();
              sub_100010F24(v180, &qword_100116C80, &unk_1000CE870);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v185 + 63) = 1;

              sub_1000C60A4();

              v0 = v185;
              goto LABEL_40;
            }
          }

          else
          {
          }
        }

        else
        {

          v56 = v28;
        }

        sub_1000C5F54();
        v170 = sub_1000C5F64();
        v171 = sub_1000C6FC4();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          *v172 = 0;
          _os_log_impl(&_mh_execute_header, v170, v171, "saveShareAndReportErrors userInfo has no CKRecordChangedErrorServerRecordKey, so rethrow oplock", v172, 2u);
        }

        v173 = *(v0 + 256);
        v174 = *(v0 + 216);

        v194(v173, v174);
        sub_1000100B0();
        swift_allocError();
        *v175 = v2;
        *(v175 + 8) = v56;
        *(v175 + 16) = v196;
        *(v175 + 24) = v189;
        *(v175 + 32) = v197;
        *(v175 + 40) = 4;
        swift_willThrow();
        sub_1000199B8(v2, v56, v196, v189, v197, 4u);

        sub_1000494BC(v2, v56, v196, v189, v197, 4u);
        goto LABEL_17;
      }

      v95 = v40;
      sub_10002335C(2011);
      v97 = v96;

      if (v97)
      {
        v195 = v95;
        sub_1000494BC(v2, v28, v196, v22, v197, 4u);
        sub_1000C5F54();
        v98 = sub_1000C5F64();
        v99 = sub_1000C6FC4();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "saveShareAndReportErrors got rejected login error", v100, 2u);
        }

        v101 = *(v0 + 248);
        v102 = *(v0 + 216);
        v103 = *(v0 + 208);
        v105 = *(v0 + 184);
        v104 = *(v0 + 192);
        v186 = *(v0 + 200);
        v191 = *(v0 + 176);

        v194(v101, v102);
        sub_1000C65D4();
        LOWORD(v176._object) = 256;
        v106 = sub_1000C68C4();
        v108 = v107;
        LOBYTE(v102) = v109;
        v111 = v110;
        v112 = v104[6];
        v113 = sub_1000C61F4();
        (*(*(v113 - 8) + 56))(v103 + v112, 1, 1, v113);
        v114 = swift_allocObject();
        swift_weakInit();
        sub_1000C5DB4();
        v115 = v103 + v104[5];
        *v115 = v106;
        *(v115 + 8) = v108;
        *(v115 + 16) = v102 & 1;
        *(v115 + 24) = v111;
        v116 = (v103 + v104[7]);
        *v116 = sub_10007B4EC;
        v116[1] = v114;
        v117 = [objc_opt_self() mainBundle];
        v176._countAndFlagsBits = 0x80000001000DAD70;
        v204._countAndFlagsBits = 0x6E67695320746F4ELL;
        v204._object = 0xED00006E49206465;
        v209.value._countAndFlagsBits = 0;
        v209.value._object = 0;
        v118.super.isa = v117;
        v214._countAndFlagsBits = 0;
        v214._object = 0xE000000000000000;
        v119 = sub_1000C5B74(v204, v209, v118, v214, 0xD000000000000047, v176);
        v121 = v120;

        v122 = sub_100079048();
        v123 = sub_10003CC40(v122);
        v125 = v124;

        sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
        v126 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_1000CB170;
        v128 = v127 + v126;
        v84 = v103;
        sub_100049224(v103, v128);
        sub_1000C5DB4();
        v129 = type metadata accessor for AlertViewModel(0);
        v130 = (v105 + v129[5]);
        *v130 = v119;
        v130[1] = v121;
        v131 = (v105 + v129[6]);
        *v131 = v123;
        v131[1] = v125;
        *(v105 + v129[7]) = v127;
        (*(*(v129 - 1) + 56))(v105, 0, 1, v129);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100017574(v105, v191, &qword_100116C80, &unk_1000CE870);

        sub_1000C60A4();
        sub_100010F24(v105, &qword_100116C80, &unk_1000CE870);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 62) = 1;

LABEL_39:
        sub_1000C60A4();

LABEL_40:

        sub_1000492E0(v84);

        v39 = *(v0 + 8);
        goto LABEL_18;
      }

      v132 = v95;
      sub_10002335C(2045);
      v134 = v133;

      if (v134)
      {
        v195 = v132;
        sub_1000494BC(v2, v28, v196, v22, v197, 4u);
        sub_1000C5F54();
        v135 = sub_1000C5F64();
        v136 = sub_1000C6FC4();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&_mh_execute_header, v135, v136, "saveShareAndReportErrors got too many participants error", v137, 2u);
        }

        v138 = *(v0 + 240);
        v139 = *(v0 + 216);
        v140 = *(v0 + 208);
        v141 = *(v0 + 192);
        logb = *(v0 + 200);
        v187 = *(v0 + 184);
        v192 = *(v0 + 176);

        v194(v138, v139);
        sub_1000C65D4();
        LOWORD(v176._object) = 256;
        v142 = sub_1000C68C4();
        v144 = v143;
        LOBYTE(v139) = v145;
        v147 = v146;
        v148 = v141[6];
        v149 = sub_1000C61F4();
        (*(*(v149 - 8) + 56))(v140 + v148, 1, 1, v149);
        v150 = swift_allocObject();
        swift_weakInit();
        sub_1000C5DB4();
        v151 = v140 + v141[5];
        *v151 = v142;
        *(v151 + 8) = v144;
        *(v151 + 16) = v139 & 1;
        *(v151 + 24) = v147;
        v152 = (v140 + v141[7]);
        *v152 = sub_10007B974;
        v152[1] = v150;
        v153 = objc_opt_self();
        v154 = [v153 mainBundle];
        v176._countAndFlagsBits = 0x80000001000DAC40;
        v205._object = 0x80000001000DAC20;
        v205._countAndFlagsBits = 0x1000000000000017;
        v210.value._countAndFlagsBits = 0;
        v210.value._object = 0;
        v155.super.isa = v154;
        v215._countAndFlagsBits = 0;
        v215._object = 0xE000000000000000;
        v156 = sub_1000C5B74(v205, v210, v155, v215, 0xD000000000000063, v176);
        v158 = v157;

        v159 = [v153 mainBundle];
        v178._countAndFlagsBits = 0x80000001000DAD00;
        v206._countAndFlagsBits = 0xD000000000000041;
        v206._object = 0x80000001000DACB0;
        v211.value._countAndFlagsBits = 0;
        v211.value._object = 0;
        v160.super.isa = v159;
        v216._countAndFlagsBits = 0;
        v216._object = 0xE000000000000000;
        v161 = sub_1000C5B74(v206, v211, v160, v216, 0xD000000000000065, v178);
        v163 = v162;

        sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
        v164 = (LOBYTE(logb[10].isa) + 32) & ~LOBYTE(logb[10].isa);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_1000CB170;
        v166 = v165 + v164;
        v84 = v140;
        sub_100049224(v140, v166);
        sub_1000C5DB4();
        v167 = type metadata accessor for AlertViewModel(0);
        v168 = (v187 + v167[5]);
        *v168 = v156;
        v168[1] = v158;
        v169 = (v187 + v167[6]);
        *v169 = v161;
        v169[1] = v163;
        *(v187 + v167[7]) = v165;
        (*(*(v167 - 1) + 56))(v187, 0, 1, v167);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100017574(v187, v192, &qword_100116C80, &unk_1000CE870);

        sub_1000C60A4();
        sub_100010F24(v187, &qword_100116C80, &unk_1000CE870);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 61) = 1;

        goto LABEL_39;
      }

      v16 = v28;
    }

    else
    {

      v26 = v196;
    }

LABEL_16:
    sub_1000100B0();
    swift_allocError();
    *v38 = v2;
    *(v38 + 8) = v16;
    *(v38 + 16) = v26;
    *(v38 + 24) = v22;
    *(v38 + 32) = v197;
    *(v38 + 40) = v12;
    swift_willThrow();

    goto LABEL_17;
  }

LABEL_17:

  v39 = *(v0 + 8);
LABEL_18:

  return v39();
}

uint64_t sub_100054E5C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_1000550E8;
  }

  else
  {
    v5 = sub_100054F98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100054F98()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];

  sub_1000494BC(v5, v4, v3, v1, v2, 4u);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000550E8()
{

  sub_1000C5F54();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveShareAndReportErrors retry failed, so rethrow batchRequestFailed", v3, 2u);
  }

  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[47];
  v12 = v0[46];
  v13 = v0[49];
  v8 = v0[29];
  v9 = v0[27];

  v5(v8, v9);
  swift_willThrow();

  sub_1000494BC(v12, v7, v6, v13, v4, 4u);

  v10 = v0[1];

  return v10();
}

void sub_10005539C(void *a1)
{
  v3 = sub_1000C5F74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v7 = v17;
  if (v17)
  {
    sub_1000C5F54();
    v8 = a1;
    v9 = sub_1000C5F64();
    v10 = sub_1000C6FF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[1] = v1;
      v13 = v12;
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "removingParticipantFromShare: %@", v11, 0xCu);
      sub_100010F24(v13, &qword_100117080, &unk_1000CC350);
    }

    (*(v4 + 8))(v6, v3);
    [v7 removeParticipant:v8];
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v15 = 0xD00000000000001DLL;
    *(v15 + 8) = 0x80000001000DB5E0;
    *(v15 + 16) = xmmword_1000CFEE0;
    *(v15 + 32) = 0x80000001000DB600;
    *(v15 + 40) = 11;
    swift_willThrow();
  }
}

uint64_t sub_100055638(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[95] = sub_10000FEB8(&qword_100116790, &qword_1000D0610);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v3 = sub_1000C5D84();
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v4 = sub_1000C5F74();
  v2[111] = v4;
  v2[112] = *(v4 - 8);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_1000C6F14();
  v2[118] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v2[119] = v6;
  v2[120] = v5;

  return _swift_task_switch(sub_1000558AC, v6, v5);
}

uint64_t sub_1000558AC(uint64_t a1)
{
  v65 = v1;
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 936);
  v6 = *(v1 + 896);
  v7 = *(v1 + 888);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v64);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_100010544(v9);
  }

  v10 = *(v6 + 8);
  v10(v5, v7);
  *(v1 + 968) = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v1 + 1012) & 0xFE) != 8)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v11 = *(v1 + 696);
    if (v11)
    {
      v12 = [*(v1 + 696) URL];
      if (v12)
      {
        v13 = v12;
        v63 = v11;
        v14 = *(v1 + 880);
        v15 = *(v1 + 872);
        v16 = *(v1 + 856);
        v17 = *(v1 + 848);

        sub_1000C5D44();

        sub_1000C5F54();
        v62 = *(v16 + 16);
        v62(v15, v14, v17);
        v18 = sub_1000C5F64();
        v19 = sub_1000C6FB4();
        v20 = os_log_type_enabled(v18, v19);
        v21 = *(v1 + 928);
        v22 = *(v1 + 888);
        v23 = *(v1 + 872);
        v24 = *(v1 + 856);
        v25 = *(v1 + 848);
        if (v20)
        {
          v26 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v26 = 136315394;
          *(v26 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v64);
          *(v26 + 12) = 2080;
          v59 = v22;
          v60 = v21;
          v27 = sub_1000C5D04();
          v29 = v28;
          v61 = *(v24 + 8);
          v61(v23, v25);
          v30 = sub_100071844(v27, v29, &v64);

          *(v26 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s Found CKShare URL, replacing URL with: %s", v26, 0x16u);
          swift_arrayDestroy();

          v32 = v59;
          v31 = v60;
        }

        else
        {

          v61 = *(v24 + 8);
          v61(v23, v25);
          v31 = v21;
          v32 = v22;
        }

        v10(v31, v32);
        v52 = *(v1 + 880);
        v53 = *(v1 + 856);
        v54 = *(v1 + 848);
        v55 = *(v1 + 840);
        v56 = *(v1 + 832);
        v62(v55, v52, v54);
        (*(v53 + 56))(v55, 0, 1, v54);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100017574(v55, v56, &qword_100116260, &qword_1000CD940);

        sub_1000C60A4();

        sub_100010F24(v55, &qword_100116260, &qword_1000CD940);
        v61(v52, v54);
LABEL_20:
        sub_100068C08();

        v57 = *(v1 + 8);

        return v57();
      }
    }
  }

  v33 = *(v1 + 856);
  v34 = *(v1 + 848);
  v35 = *(v1 + 824);
  sub_100017574(*(v1 + 744), v35, &qword_100116260, &qword_1000CD940);
  v36 = *(v33 + 48);
  *(v1 + 976) = v36;
  *(v1 + 984) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v36(v35, 1, v34) == 1)
  {
    v37 = *(v1 + 824);

    sub_100010F24(v37, &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    v38 = sub_1000C5F64();
    v39 = sub_1000C6FD4();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v1 + 904);
    v42 = *(v1 + 888);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v64 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v64);
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s Is not a CKShare nor is there a fileURL. This is a silent failure.", v43, 0xCu);
      sub_100010544(v44);
    }

    v10(v41, v42);
    goto LABEL_20;
  }

  (*(*(v1 + 856) + 32))(*(v1 + 864), *(v1 + 824), *(v1 + 848));
  sub_1000C5F54();
  v45 = sub_1000C5F64();
  v46 = sub_1000C6FB4();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v1 + 920);
  v49 = *(v1 + 888);
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v64 = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v64);
    _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s Copying sharing URL...", v50, 0xCu);
    sub_100010544(v51);
  }

  v10(v48, v49);
  *(v1 + 1008) = *(*(v1 + 760) + 48);

  return _swift_task_switch(sub_1000561B0, 0, 0);
}

uint64_t sub_1000561B0()
{
  v1 = v0[108];
  v2 = swift_task_alloc();
  v0[124] = v2;
  *(v2 + 16) = v1;
  swift_asyncLet_begin();
  v3 = v0[101];

  return _swift_asyncLet_get(v0 + 2, v3, sub_100056264, v0 + 82);
}

uint64_t sub_100056280()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  sub_100017574(v0[101], v2, &qword_100116790, &qword_1000D0610);
  v0[125] = *(v2 + *(v3 + 48));
  sub_100020D0C(v2, v1, &qword_100116260, &qword_1000CD940);
  v4 = v0[101];

  return _swift_asyncLet_finish(v0 + 2, v4, sub_10005633C, v0 + 88);
}

uint64_t sub_100056358()
{

  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  return _swift_task_switch(sub_1000563C0, v2, v1);
}

uint64_t sub_1000563C0()
{
  v52 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 760);
  *(v1 + *(v0 + 1008)) = *(v0 + 1000);
  sub_100017574(v1, v2, &qword_100116790, &qword_1000D0610);
  v4 = *(v2 + *(v3 + 48));
  if (!v4)
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 784);
    sub_100010F24(*(v0 + 792), &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    sub_100017574(v12, v13, &qword_100116790, &qword_1000D0610);
    v14 = sub_1000C5F64();
    v15 = sub_1000C6FB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 976);
      v17 = *(v0 + 848);
      v18 = *(v0 + 784);
      v19 = *(v0 + 776);
      v20 = *(v0 + 760);
      v21 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, v51);
      *(v21 + 12) = 2080;
      sub_100017574(v18, v19, &qword_100116790, &qword_1000D0610);

      result = v16(v19, 1, v17);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v47 = *(v0 + 912);
      v49 = *(v0 + 968);
      v46 = *(v0 + 888);
      v23 = *(v0 + 856);
      v24 = *(v0 + 848);
      v25 = *(v0 + 784);
      v26 = *(v0 + 776);
      v27 = sub_1000C5D04();
      v29 = v28;
      sub_100010F24(v25, &qword_100116790, &qword_1000D0610);
      (*(v23 + 8))(v26, v24);
      v30 = sub_100071844(v27, v29, v51);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Replacing URL with: %s", v21, 0x16u);
      swift_arrayDestroy();

      v49(v47, v46);
    }

    else
    {
      v31 = *(v0 + 968);
      v32 = *(v0 + 912);
      v33 = *(v0 + 888);
      v34 = *(v0 + 784);

      sub_100010F24(v34, &qword_100116790, &qword_1000D0610);
      v31(v32, v33);
    }

    v35 = *(v0 + 976);
    v36 = *(v0 + 848);
    v37 = *(v0 + 768);
    v38 = *(v0 + 760);
    sub_100017574(*(v0 + 816), v37, &qword_100116790, &qword_1000D0610);
    v39 = *(v37 + *(v38 + 48));

    result = v35(v37, 1, v36);
    if (result != 1)
    {
      v40 = *(v0 + 856);
      v41 = *(v0 + 848);
      v42 = *(v0 + 840);
      v43 = *(v0 + 832);
      v48 = *(v0 + 816);
      v50 = *(v0 + 864);
      v44 = *(v0 + 768);

      (*(v40 + 16))(v42, v44, v41);
      (*(v40 + 56))(v42, 0, 1, v41);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100017574(v42, v43, &qword_100116260, &qword_1000CD940);
      sub_1000C60A4();
      sub_100010F24(v42, &qword_100116260, &qword_1000CD940);
      sub_100010F24(v48, &qword_100116790, &qword_1000D0610);
      v45 = *(v40 + 8);
      v45(v50, v41);
      v45(v44, v41);
      sub_100068C08();

      v11 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v0 + 816);
  v9 = *(v0 + 792);

  sub_100010F24(v9, &qword_100116260, &qword_1000CD940);
  sub_1000100B0();
  swift_allocError();
  *v10 = 0xD00000000000001CLL;
  *(v10 + 8) = 0x80000001000DAA50;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v4;
  *(v10 + 40) = 7;
  swift_willThrow();
  sub_100010F24(v8, &qword_100116790, &qword_1000D0610);
  (*(v6 + 8))(v5, v7);
  sub_100068C08();

  v11 = *(v0 + 8);
LABEL_9:

  return v11();
}

uint64_t sub_100056B08()
{
  v1[5] = v0;
  v2 = sub_1000C5F74();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1000C6F14();
  v1[13] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v1[14] = v4;
  v1[15] = v3;

  return _swift_task_switch(sub_100056C58, v4, v3);
}