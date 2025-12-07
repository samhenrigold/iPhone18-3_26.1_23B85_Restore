id sub_100032688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LinkAsset(uint64_t a1)
{
  result = qword_100121640;
  if (!qword_100121640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100032798()
{
  v1 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v2 = __chkstk_darwin(v1 - 8);
  v115 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v97 - v4;
  v6 = sub_1000DA124();
  __chkstk_darwin(v6 - 8);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DBED4();
  __chkstk_darwin(v9 - 8);
  v110 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007BC0(&qword_100121580, &qword_1000E14E0);
  v12 = __chkstk_darwin(v11 - 8);
  v111 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v112 = &v97 - v14;
  v15 = sub_1000D9DA4();
  v113 = *(v15 - 8);
  __chkstk_darwin(v15);
  v109 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000DAF04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000DA564();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v116 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100007BC0(&qword_100120468, &qword_1000E0020);
  v25 = __chkstk_darwin(v24 - 8);
  __chkstk_darwin(v25);
  v28 = &v97 - v27;
  v114 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure9LinkAsset_metadata))
  {
    return 0;
  }

  v107 = v15;
  v108 = OBJC_IVAR____TtC20JournalWidgetsSecure9LinkAsset_metadata;
  v106 = v26;

  sub_10001204C(v28);

  v29 = v22[6];
  if (!v29(v28, 1, v21))
  {
    v103 = v29;
    v104 = v22 + 6;
    v102 = v8;
    v105 = v5;
    v32 = v116;
    v98 = v22[2];
    v99 = v22 + 2;
    v98(v116, v28, v21);
    sub_1000080B0(v28, &qword_100120468, &qword_1000E0020);
    v33 = sub_1000DA544();
    v35 = v34;
    v36 = v22[1];
    v100 = v22 + 1;
    v36(v32, v21);
    isa = sub_1000D9DE4().super.isa;
    v38 = [objc_opt_self() metadataWithDataRepresentation:isa];

    sub_100010514(v33, v35);
    if (!v38)
    {
      return 0;
    }

    sub_1000DAE84();
    v39 = objc_allocWithZone(CSSearchableItemAttributeSet);
    v40 = sub_1000DAE64().super.isa;
    v101 = [v39 initWithContentType:v40];

    (*(v18 + 8))(v20, v17);
    v41 = [v38 title];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1000DBF44();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v111;
    v47 = [v38 appleSummary];
    if (v47 || (v47 = [v38 summary]) != 0)
    {
      v49 = v38;
      v50 = v47;
      v51 = sub_1000DBF44();
      v53 = v52;

      v38 = v49;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = v51;
    v30 = v101;
    sub_100046898(v43, v45, v54, v53, v48);

    v55 = [v38 imageMetadata];
    v56 = v105;
    v111 = v36;
    if (v55)
    {
      v57 = v55;
      v58 = [v55 URL];

      v59 = v107;
      v60 = v113;
      if (v58)
      {
        sub_1000D9D74();

        v61 = 0;
      }

      else
      {
        v61 = 1;
      }

      v63 = v114;
      (*(v60 + 56))(v46, v61, 1, v59);
      v62 = v112;
      sub_10003340C(v46, v112);
      if ((*(v60 + 48))(v62, 1, v59) != 1)
      {
        v72 = v109;
        (*(v60 + 32))(v109, v62, v59);
        sub_1000D9D54(v73);
        v75 = v74;
        [v30 setThumbnailURL:v74];

        (*(v60 + 8))(v72, v59);
        v65 = v115;
        goto LABEL_23;
      }
    }

    else
    {
      v62 = v112;
      (*(v113 + 56))(v112, 1, 1, v107);
      v63 = v114;
    }

    sub_1000080B0(v62, &qword_100121580, &qword_1000E14E0);
    v64 = [v38 image];
    v65 = v115;
    if (v64)
    {
      v66 = v64;
      v67 = [v64 data];

      if (v67)
      {
        v68 = sub_1000D9DF4();
        v70 = v69;

        v71 = sub_1000D9DE4().super.isa;
        [v30 setThumbnailData:v71];

        sub_100010514(v68, v70);
      }
    }

LABEL_23:
    v76 = sub_100031ACC();
    if (v76 == 6)
    {
      sub_1000DBE74();
      sub_1000DA114();
      v77 = sub_1000DBF64();
    }

    else
    {
      v77 = sub_100033EF0(v76);
    }

    v79 = v77;
    v80 = v78;
    if (*(v63 + v108))
    {

      v81 = v106;
      sub_10001204C(v106);

      if (!v103(v81, 1, v21))
      {
        v89 = v116;
        v98(v116, v81, v21);
        sub_1000080B0(v81, &qword_100120468, &qword_1000E0020);
        sub_1000DA554();
        v111(v89, v21);
        v90 = sub_1000DA084();
        v91 = *(v90 - 8);
        if ((*(v91 + 48))(v65, 1, v90) != 1)
        {
          (*(v91 + 32))(v56, v65, v90);
          (*(v91 + 56))(v56, 0, 1, v90);
LABEL_38:
          sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_1000DFEF0;
          v93 = sub_1000478A0(v79, v80, v56);
          v95 = v94;

          *(v92 + 32) = v93;
          *(v92 + 40) = v95;
          v96 = sub_1000DC124().super.isa;

          [v30 setAlternateNames:v96];

          sub_1000080B0(v56, &qword_1001203B8, &qword_1000E0460);
          return v30;
        }

LABEL_30:
        v83 = *(v63 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
        if (v83 && (v84 = [v83 entry]) != 0)
        {
          v85 = v84;
          sub_1000DA3A4();

          v86 = 0;
        }

        else
        {
          v86 = 1;
        }

        v87 = sub_1000DA084();
        v88 = *(v87 - 8);
        (*(v88 + 56))(v56, v86, 1, v87);
        if ((*(v88 + 48))(v65, 1, v87) != 1)
        {
          sub_1000080B0(v65, &qword_1001203B8, &qword_1000E0460);
        }

        goto LABEL_38;
      }

      sub_1000080B0(v81, &qword_100120468, &qword_1000E0020);
    }

    v82 = sub_1000DA084();
    (*(*(v82 - 8) + 56))(v65, 1, 1, v82);
    goto LABEL_30;
  }

  sub_1000080B0(v28, &qword_100120468, &qword_1000E0020);
  return 0;
}

uint64_t sub_1000333C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA564();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003340C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100121580, &qword_1000E14E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003347C()
{
  result = qword_1001216A0;
  if (!qword_1001216A0)
  {
    sub_100007C08(&qword_100121690, &qword_1000E1668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001216A0);
  }

  return result;
}

unint64_t sub_1000334F4()
{
  result = qword_1001216B0;
  if (!qword_1001216B0)
  {
    sub_100007C08(&qword_1001216B8, qword_1000E16B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001216B0);
  }

  return result;
}

uint64_t sub_100033558(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  v6 = 0xE200000000000000;
  v7 = 30324;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001000E7920;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x74736163646F70;
  if (a1 != 1)
  {
    v8 = 0x656C6369747261;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x636973756DLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1802465122)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE200000000000000;
      if (v9 != 30324)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x80000001000E7920;
      if (v9 != 0xD000000000000010)
      {
LABEL_34:
        v12 = sub_1000DCC74();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x656C6369747261)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x636973756DLL)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_10003370C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6172656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79636176697270;
    }

    else
    {
      v4 = 0x796C616E41707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC00000073636974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6163696669746F6ELL;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3)
    {
      v5 = 0xED0000736E6F6974;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79636176697270;
  if (a2 != 2)
  {
    v8 = 0x796C616E41707061;
    v7 = 0xEC00000073636974;
  }

  if (a2)
  {
    v2 = 0x6163696669746F6ELL;
    v6 = 0xED0000736E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000DCC74();
  }

  return v11 & 1;
}

uint64_t sub_100033878(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6154656772614C78;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a1 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a1 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xE500000000000000;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006564;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  v11 = 0xE600000000000000;
  v12 = 0x656772614C78;
  if (!a1)
  {
    v12 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6C6C616D73)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEA00000000006E65;
        if (v13 != 0x657263536C6C7566)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D756964656DLL)
      {
        goto LABEL_43;
      }
    }

    else if (v13 != 0x61546D756964656DLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006564;
        if (v13 != 0x69576D756964656DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x656772614C78)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_1000DCC74();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

Swift::Int sub_100033AB8(unsigned __int8 a1)
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

double sub_100033BAC(uint64_t a1, unsigned __int8 a2)
{
  sub_1000DBFD4();

  return result;
}

Swift::Int sub_100033CCC(uint64_t a1, unsigned __int8 a2)
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

Swift::Int sub_100033E00(uint64_t a1, unsigned __int8 a2)
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_100033EF0(unsigned __int8 a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBE74();
  sub_1000DA114();
  return sub_1000DBF64();
}

double sub_10003414C(uint64_t a1)
{
  sub_1000DBFD4();

  return result;
}

unint64_t sub_100034230@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100034374(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100034260(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000E7920;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74736163646F70;
  if (v2 != 1)
  {
    v9 = 0x656C6369747261;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_100034320()
{
  result = qword_1001216C0;
  if (!qword_1001216C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001216C0);
  }

  return result;
}

unint64_t sub_100034374(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010CF78;
  v6._object = a2;
  v4 = sub_1000DCB64(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void sub_1000343C0()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView];
  [v0 addSubview:v1];
  [v1 setContentMode:2];
  [v1 setAlpha:0.0];
  [v0 setIsAccessibilityElement:1];
  v2 = sub_1000DBF04();
  [v0 setAccessibilityIdentifier:v2];

  [v0 setAccessibilityIgnoresInvertColors:1];
  [v0 setClipsToBounds:0];
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityVideoAutoplayStatusDidChangeNotification object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [v3 defaultCenter];
    v9 = sub_1000DC644();
    [v8 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:v9 object:0];
  }
}

uint64_t sub_100034608(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10003464C()
{
  v1 = (v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction);
  v2 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction);
  v3 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_100030FC0(v2, v3);
  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView;
  v5 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 layer];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
    }

    v9 = [v8 player];

    [v9 pause];
    v10 = *(v0 + v4);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 layer];
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      v14 = [v13 player];

      if (v14)
      {
        [v14 replaceCurrentItemWithPlayerItem:0];
      }

      v15 = *(v0 + v4);
      if (v15)
      {
        v16 = v15;
        v17 = [v16 layer];
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {
        }

        [v18 setPlayer:0];
      }
    }
  }

  *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isAutoPlaying) = 0;
}

uint64_t sub_10003481C()
{
  v1 = v0;
  v2 = sub_100007BC0(&qword_1001217A0, &qword_1000E1880);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_1000DA0E4();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_1000DA084();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v52 - v13;
  v14 = sub_1000DA374();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_videoAsset];
  if (v19 && !*&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailOverride])
  {
    (*(v15 + 104))(v18, enum case for JournalFeatureFlags.debug(_:), v14);
    v20 = v19;
    v21 = v1;
    v22 = sub_1000DA364();
    (*(v15 + 8))(v18, v14);
    if (v22)
    {
      v23 = *&v20[OBJC_IVAR____TtC20JournalWidgetsSecure10VideoAsset_metadata];
      v24 = [v21 layer];
      v25 = v24;
      if (v23)
      {
        [v24 setBorderColor:0];
        v26 = 0.0;
      }

      else
      {
        v27 = [objc_opt_self() redColor];
        v28 = [v27 CGColor];

        [v25 setBorderColor:v28];
        v26 = 5.0;
        v25 = v28;
      }

      v29 = [v21 layer];
      [v29 setBorderWidth:v26];
    }

    sub_1000DA074();
    v52 = OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType;
    v30 = v21[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType];
    v55 = v20;
    if (v30 > 6)
    {
    }

    else
    {
      v31 = sub_1000DCC74();

      if ((v31 & 1) == 0)
      {
        v32 = v21;
        if (qword_10011FAF0 != -1)
        {
          swift_once();
        }

        v33 = &qword_1001271E8;
LABEL_17:
        v34 = *v33;
        v53 = v9;
        v54 = v34;
        sub_1000DA0D4();
        v36 = v60;
        v35 = v61;
        v37 = *(v60 + 16);
        v37(v4, v9, v61);
        (*(v36 + 56))(v4, 0, 1, v35);
        v38 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_1000185AC(v4, &v32[v38], &qword_1001217A0, &qword_1000E1880);
        swift_endAccess();
        LODWORD(v52) = v32[v52];
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = v57;
        v37(v57, v9, v35);
        v41 = v58;
        v42 = v59;
        v43 = v56;
        (*(v58 + 16))(v56, v62, v59);
        v44 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v45 = (v6 + *(v41 + 80) + v44) & ~*(v41 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v39;
        v47 = v61;
        (*(v36 + 32))(v46 + v44, v40, v61);
        (*(v41 + 32))(v46 + v45, v43, v42);
        v48 = objc_opt_self();

        v49 = [v48 currentTraitCollection];
        v50 = v54;
        v51 = v55;
        sub_10008306C(v52, 0, 1, v54, v49, sub_1000370E4, v46);

        (*(v36 + 8))(v53, v47);
        (*(v41 + 8))(v62, v42);
      }
    }

    v32 = v21;
    if (qword_10011FAF8 != -1)
    {
      swift_once();
    }

    v33 = &qword_1001271F0;
    goto LABEL_17;
  }

  return result;
}

void sub_100034FA4()
{
  v1 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isAutoPlaying;
  if (v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isAutoPlaying] == 1)
  {
    if ((sub_100021934(v0[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType]) & 1) == 0 || !UIAccessibilityIsVideoAutoplayEnabled() || UIAccessibilityIsReduceMotionEnabled() || (v6 = [v0 traitCollection], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == 5) && (sub_1000DC634() & 1) == 0)
    {
      v0[v1] = 0;
      v2 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView];
      if (v2)
      {
        v3 = v2;
        v4 = [v3 layer];
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
        }

        v8 = [v5 player];

        [v8 pause];
      }
    }
  }
}

uint64_t sub_100035100()
{
  v1 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerStatusObserver);
  *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerStatusObserver) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerTimeControlStatusObserver);
  *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerTimeControlStatusObserver) = 0;

  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_timeObserver;
  swift_beginAccess();
  sub_100007F58(v0 + v3, &v10, &qword_100121470, &qword_1000E13B0);
  if (!*(&v11 + 1))
  {
    return sub_1000080B0(&v10, &qword_100121470, &qword_1000E13B0);
  }

  sub_100007EAC(&v10, &v12);
  v4 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    if (v8)
    {
      sub_100007E68(&v12, v13);
      [v8 removeTimeObserver:sub_1000DCC54()];

      swift_unknownObjectRelease();
    }
  }

  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_1000185AC(&v10, v0 + v3, &qword_100121470, &qword_1000E13B0);
  swift_endAccess();
  return sub_100007FC0(&v12);
}

void *sub_1000352D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_timeObserver];
  *v9 = 0u;
  v9[1] = 0u;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerStatusObserver] = 0;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v10 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView] = 0;
  v11 = &v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isLoaded] = 0;
  v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_videoAsset] = 0;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailOverride] = 0;
  v12 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_latestImageRequestID;
  v13 = sub_1000DA0E4();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isAutoPlaying] = 0;
  v14 = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for VideoAssetView(0);
  v15 = v14;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = *((swift_isaMask & *v16) + 0x290);
  v18 = v16;
  v17(v18, v19);

  return v18;
}

void *sub_1000354FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_timeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerStatusObserver] = 0;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView] = 0;
  v5 = &v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isLoaded] = 0;
  v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_videoAsset] = 0;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailOverride] = 0;
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_latestImageRequestID;
  v7 = sub_1000DA0E4();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isAutoPlaying] = 0;
  v8 = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for VideoAssetView(0);
  v9 = v8;
  v10 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = *((swift_isaMask & *v10) + 0x290);
    v13 = v10;
    v12(v13, v14);
  }

  return v11;
}

void sub_100035708()
{
  sub_100018954(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_delegate);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_timeObserver, &qword_100121470, &qword_1000E13B0);

  sub_100030FC0(*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction), *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction + 8));
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_latestImageRequestID, &qword_1001217A0, &qword_1000E1880);
  v1 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_preferredVideoDynamicRange);
}

id sub_1000357FC()
{
  sub_10003464C();
  sub_100035100();
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView];
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoAssetView(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for VideoAssetView(uint64_t a1)
{
  result = qword_100121758;
  if (!qword_100121758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100035A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = sub_1000DBA34();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DBAA4();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000DA084();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA0E4();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008068(0, &qword_100120210, OS_dispatch_queue_ptr);
  v33 = sub_1000DC574();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_100037314;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034608;
  aBlock[3] = &unk_10010EBA0;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  sub_1000DBA54();
  v41 = _swiftEmptyArrayStorage;
  sub_100037404(&qword_100121568, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007BC0(&qword_100121570, &unk_1000E14C0);
  sub_100031080();
  v25 = v36;
  v24 = v37;
  sub_1000DC8D4();
  v26 = v33;
  sub_1000DC584();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_100035F64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v6 = sub_1000DA084();
  v69 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v60 - v13;
  v14 = sub_1000DA0E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007BC0(&qword_1001217A8, &qword_1000E1888);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = sub_100007BC0(&qword_1001217A0, &qword_1000E1880);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v61 = v6;
      v62 = a2;
      v27 = Strong;
      (*(v15 + 16))(v25, a3, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_100007F58(v25, v19, &qword_1001217A0, &qword_1000E1880);
      v63 = v27;
      sub_100007F58(&v27[v28], &v19[v29], &qword_1001217A0, &qword_1000E1880);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v62;
        v32 = v62;
        sub_1000080B0(v25, &qword_1001217A0, &qword_1000E1880);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_1000080B0(v19, &qword_1001217A0, &qword_1000E1880);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100007F58(v19, v23, &qword_1001217A0, &qword_1000E1880);
        v36 = v30(&v19[v29], 1, v14);
        v31 = v62;
        if (v36 != 1)
        {
          v38 = &v19[v29];
          v39 = v67;
          (*(v15 + 32))(v67, v38, v14);
          sub_100037404(&qword_1001202F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v40 = v31;
          v41 = sub_1000DBE64();
          v42 = *(v15 + 8);
          v42(v39, v14);
          sub_1000080B0(v25, &qword_1001217A0, &qword_1000E1880);
          v42(v23, v14);
          v31 = v62;
          sub_1000080B0(v19, &qword_1001217A0, &qword_1000E1880);
          if ((v41 & 1) == 0)
          {

            return;
          }

LABEL_15:
          v43 = v63;
          [*&v63[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView] setImage:v31];
          v44 = 1;
          (*((swift_isaMask & *v43) + 0x250))(1);
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          if (*(v43 + OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType) > 3u)
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
            if (*(v43 + OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType) > 5u && *(v43 + OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_sizeType) != 6)
            {
LABEL_22:

              (*(v47 + 16))(v46, v68, v48);
              (*(v47 + 56))(v46, 0, 1, v48);
              if (v44)
              {
                goto LABEL_23;
              }

              v52 = v66;
              sub_100007F58(v46, v66, &qword_1001203B8, &qword_1000E0460);
              if ((*(v47 + 48))(v52, 1, v48) == 1)
              {
                sub_1000080B0(v52, &qword_1001203B8, &qword_1000E0460);
              }

              else
              {
                v53 = v64;
                (*(v47 + 32))(v64, v52, v48);
                v54 = v65;
                sub_1000DA054();
                sub_1000D9FB4();
                v56 = v55;
                v57 = *(v47 + 8);
                v57(v54, v48);
                v57(v53, v48);
                if (v56 < 0.1)
                {
LABEL_23:
                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *(v49 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView);

                    [v51 setAlpha:1.0];

LABEL_30:
                    sub_1000080B0(v46, &qword_1001203B8, &qword_1000E0460);

                    return;
                  }

LABEL_29:

                  goto LABEL_30;
                }
              }

              v58 = objc_opt_self();
              aBlock[4] = sub_1000373FC;
              aBlock[5] = v45;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100034608;
              aBlock[3] = &unk_10010EBC8;
              v59 = _Block_copy(aBlock);

              [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:0.1 completion:0.0];
              _Block_release(v59);
              goto LABEL_29;
            }
          }

          else
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
          }

          v44 = sub_1000DCC74();
          goto LABEL_22;
        }

        v37 = v62;
        sub_1000080B0(v25, &qword_1001217A0, &qword_1000E1880);
        (*(v15 + 8))(v23, v14);
      }

      sub_1000080B0(v19, &qword_1001217A8, &qword_1000E1888);

      return;
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_isAssetFinishedLoading] = 1;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    (*((swift_isaMask & *v34) + 0x250))(0);
  }
}

void sub_100036A04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView);

    [v3 setAlpha:1.0];
  }
}

void sub_100036A80()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VideoAssetView(0);
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure16JournalAssetView_fallbackView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_thumbnailView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

void sub_100036C7C(uint64_t a1)
{
  sub_100036D6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100036D6C(uint64_t a1)
{
  if (!qword_100121768)
  {
    sub_1000DA0E4();
    v1 = sub_1000DC7C4();
    if (!v2)
    {
      atomic_store(v1, &qword_100121768);
    }
  }
}

id sub_100036EF0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100036F4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100036F5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036F94()
{
  v1 = sub_1000DA0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000DA084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000370E4(void *a1)
{
  v3 = *(sub_1000DA0E4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1000DA084() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100035A80(a1, v7, v1 + v4, v8);
}

uint64_t sub_1000371BC()
{
  v1 = sub_1000DA0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000DA084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_100037314()
{
  v1 = *(sub_1000DA0E4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1000DA084() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_100035F64(v5, v6, v0 + v2, v7);
}

uint64_t sub_1000373E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100037454(unsigned __int8 a1)
{
  v2 = sub_1000DA374();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  v16 = CGRectGetWidth(v42) + -40.0 + -4.0;
  v17 = v16 * 0.25 + -2.0;
  v18 = [v6 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  Width = CGRectGetWidth(v43);
  v28 = [v6 mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  v37 = CGRectGetWidth(v44);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        v17 = v37 + -90.0;
        v38 = Width + -40.0;
        (*(v3 + 104))(v5, enum case for JournalFeatureFlags.fullScreenViewer(_:), v2);
        v39 = sub_1000DA364();
        (*(v3 + 8))(v5, v2);
        if ((v39 & 1) == 0)
        {
          return v38;
        }
      }
    }

    else if (a1 == 4)
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return v16;
    }

    else
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else
  {
    return v16;
  }

  return v17;
}

NSObject *sub_10003771C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = a1;
  v12 = sub_100007BC0(&qword_100120488, &unk_1000E30B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for WorkoutRouteThumbnailCacheOperation(0));
  sub_1000154AC(v14);
  sub_100039848(v14, v15 + qword_100127110);
  v16 = sub_1000DC5A4();
  v17 = v6;

  return sub_10008A204(v17, v11, a2, a3 & 1, a4, a5, v16);
}

uint64_t sub_10003784C(uint64_t a1, unsigned __int8 a2)
{
  sub_1000DA0E4();
  sub_100039800(&qword_10011FDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_1000DBFE4(v15);
  v16._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_1000DBFE4(v17);
  v3 = 0x656772614C78;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v5 = 0x657263536C6C7566;
    v4 = 0xEA00000000006E65;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v7 = 0x61546D756964656DLL;
    v6 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000006564;
  v9 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v9 = 0x656772616CLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x6154656772614C78;
    v10 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v8 = v10;
  }

  else
  {
    v3 = v9;
  }

  if (a2 <= 3u)
  {
    v11._countAndFlagsBits = v3;
  }

  else
  {
    v11._countAndFlagsBits = v5;
  }

  if (a2 <= 3u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  v11._object = v12;
  sub_1000DBFE4(v11);

  v18._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  sub_1000DBFE4(v19);

  return 0x2D626D756874;
}

id sub_100037AD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRouteAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutRouteAsset(uint64_t a1)
{
  result = qword_1001217D8;
  if (!qword_1001217D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100037BC8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure17WorkoutRouteAsset_metadata) = a1;

  return result;
}

id sub_100037BE0()
{
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v133 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DA124();
  __chkstk_darwin(v3 - 8);
  v136 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_100121828, &qword_1000E1908);
  __chkstk_darwin(v5 - 8);
  v126 = &v112 - v6;
  v7 = sub_100007BC0(&qword_100121830, &qword_1000E1910);
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v122 = &v112 - v8;
  v121 = sub_100007BC0(&qword_100121838, &qword_1000E1918);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v112 - v9;
  v123 = sub_100007BC0(&qword_100121840, &qword_1000E1920);
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v112 - v10;
  v135 = sub_100007BC0(&qword_100121848, &qword_1000E1928);
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v112 - v11;
  v12 = sub_1000DABF4();
  v127 = *(v12 - 8);
  v128 = v12;
  __chkstk_darwin(v12);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v131 = &v112 - v19;
  __chkstk_darwin(v18);
  v21 = &v112 - v20;
  v22 = sub_1000DAF04();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007BC0(&qword_100120488, &unk_1000E30B0);
  __chkstk_darwin(v26 - 8);
  v28 = &v112 - v27;
  v29 = sub_1000DAB44();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure17WorkoutRouteAsset_metadata))
  {
    (*(v30 + 56))(v28, 1, 1, v29);
    goto LABEL_6;
  }

  sub_100011904(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
LABEL_6:
    sub_1000080B0(v28, &qword_100120488, &unk_1000E30B0);
    return 0;
  }

  v114 = v30;
  v33 = *(v30 + 32);
  v115 = v29;
  v33(v32, v28);
  sub_1000DAE84();
  v34 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v36 = [v34 initWithContentType:isa];

  (*(v23 + 8))(v25, v22);
  v37 = sub_1000DAAD4();
  if (!v38)
  {
    v39 = v37;
    v40 = [objc_opt_self() mainBundle];
    v111._countAndFlagsBits = 0x80000001000E8770;
    v140._countAndFlagsBits = 0x74756F6B726F57;
    v140._object = 0xE700000000000000;
    v141.value._countAndFlagsBits = v39;
    v141.value._object = 0;
    v41.super.isa = v40;
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    sub_1000D9BC4(v140, v141, v41, v142, 0xD000000000000018, v111);
  }

  v42 = sub_1000DBF04();

  [v36 setDisplayName:v42];

  sub_1000DAB34();
  v43 = sub_1000DA084();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v112 = v44 + 48;
  v116 = v45;
  v46 = 0;
  if (v45(v21, 1, v43) != 1)
  {
    v46 = sub_1000D9FE4().super.isa;
    (*(v44 + 8))(v21, v43);
  }

  [v36 setTimestamp:v46];

  v47 = sub_1000DAB14();
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    v51 = sub_100047140(0, 1, 1, _swiftEmptyArrayStorage);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_100047140((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[2 * v53];
    *(v54 + 4) = v49;
    *(v54 + 5) = v50;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  sub_1000DAB24();
  if (v55)
  {
    sub_100038BCC();
  }

  sub_1000DCE34();
  v56 = sub_1000DCE04();
  v58 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_100047140(0, *(v51 + 2) + 1, 1, v51);
  }

  v60 = *(v51 + 2);
  v59 = *(v51 + 3);
  if (v60 >= v59 >> 1)
  {
    v51 = sub_100047140((v59 > 1), v60 + 1, 1, v51);
  }

  v113 = v44;
  *(v51 + 2) = v60 + 1;
  v61 = &v51[2 * v60];
  *(v61 + 4) = v56;
  *(v61 + 5) = v58;
  v62 = sub_1000DAAC4();
  if (v63)
  {
    v64 = v135;
  }

  else
  {
    v137 = v62;
    sub_1000D9944();
    sub_100039180();
    sub_100039800(&qword_100121878, &type metadata accessor for WorkoutHeartRateFormatStyle, &protocol conformance descriptor for WorkoutHeartRateFormatStyle);
    v65 = v128;
    sub_1000DBD54();
    (*(v127 + 8))(v14, v65);
    v66 = v138;
    v67 = v139;
    v69 = *(v51 + 2);
    v68 = *(v51 + 3);
    v64 = v135;
    if (v69 >= v68 >> 1)
    {
      v51 = sub_100047140((v68 > 1), v69 + 1, 1, v51);
    }

    *(v51 + 2) = v69 + 1;
    v70 = &v51[2 * v69];
    *(v70 + 4) = v66;
    *(v70 + 5) = v67;
  }

  sub_1000DAAB4();
  v71 = [objc_opt_self() kilocalories];
  sub_100008068(0, &qword_100121850, NSUnitEnergy_ptr);
  v72 = v134;
  sub_1000D9994();
  v73 = sub_1000DAB04();
  if (!v74)
  {
    v75 = v117;
    sub_1000D99A4();
    v76 = v122;
    sub_1000D9CB4();
    sub_1000DA0F4();
    sub_100039180();
    v77 = v126;
    sub_1000D9C84();
    v78 = sub_100007BC0(&qword_100121860, &unk_1000E1930);
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    v79 = v43;
    v80 = v118;
    sub_1000D9964();
    sub_1000080B0(v77, &qword_100121828, &qword_1000E1908);
    (*(v124 + 8))(v76, v125);
    v81 = v75;
    v64 = v135;
    (*(v119 + 8))(v81, v121);
    sub_1000391D4(&qword_100121868, &qword_100121840, &qword_1000E1920, &protocol conformance descriptor for Measurement<A><>.FormatStyle);
    v82 = v123;
    sub_1000D99B4();
    v83 = v80;
    v43 = v79;
    (*(v120 + 8))(v83, v82);
    v84 = sub_1000DBF94();
    v86 = v85;

    v74 = v86;
    v73 = v84;
  }

  v88 = *(v51 + 2);
  v87 = *(v51 + 3);
  if (v88 >= v87 >> 1)
  {
    v108 = v73;
    v109 = v74;
    v110 = sub_100047140((v87 > 1), v88 + 1, 1, v51);
    v74 = v109;
    v72 = v134;
    v51 = v110;
    v73 = v108;
  }

  *(v51 + 2) = v88 + 1;
  v89 = &v51[2 * v88];
  *(v89 + 4) = v73;
  *(v89 + 5) = v74;
  v138 = v51;
  sub_100007BC0(&qword_100121560, &unk_1000E2040);
  sub_1000391D4(&qword_100121870, &qword_100121560, &unk_1000E2040, &protocol conformance descriptor for [A]);
  sub_1000DBDE4();

  v90 = sub_1000DBF04();

  [v36 setContentDescription:v90];

  v91 = v130;
  sub_1000DAB34();
  if (v116(v91, 1, v43) == 1)
  {
    v92 = *(v129 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    v93 = v131;
    if (v92 && (v94 = [v92 entry]) != 0)
    {
      v95 = v94;
      sub_1000DA3A4();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    (*(v113 + 56))(v93, v96, 1, v43);
    if (v116(v91, 1, v43) != 1)
    {
      sub_1000080B0(v91, &qword_1001203B8, &qword_1000E0460);
    }
  }

  else
  {
    v97 = v113;
    v93 = v131;
    (*(v113 + 32))(v131, v91, v43);
    (*(v97 + 56))(v93, 0, 1, v43);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v98 = sub_1000DBF64();
  v100 = v99;
  sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1000DFEF0;
  v102 = sub_1000478A0(v98, v100, v93);
  v103 = v93;
  v105 = v104;

  *(v101 + 32) = v102;
  *(v101 + 40) = v105;
  v106 = sub_1000DC124().super.isa;

  [v36 setAlternateNames:v106];

  sub_1000080B0(v103, &qword_1001203B8, &qword_1000E0460);
  (*(v132 + 8))(v72, v64);
  (*(v114 + 8))(v32, v115);
  return v36;
}

double sub_100038BCC()
{
  v0 = sub_1000DA204();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000D9B24();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_1000DA084();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_1000DAB34();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_1000DA074();
    if (v18(v10, 1, v11) != 1)
    {
      sub_1000080B0(v10, &qword_1001203B8, &qword_1000E0460);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_1000DAAF4();
  if (v18(v8, 1, v11) == 1)
  {
    sub_1000DA074();
    if (v18(v8, 1, v11) != 1)
    {
      sub_1000080B0(v8, &qword_1001203B8, &qword_1000E0460);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_1000DA1D4();
  sub_100007BC0(&qword_100121880, &unk_1000E7830);
  v19 = sub_1000DA1F4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000DFEF0;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10003921C(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  sub_1000DA164();

  (*(v32 + 8))(v2, v33);
  v24 = sub_1000D9B04();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

unint64_t sub_100039180()
{
  result = qword_100121858;
  if (!qword_100121858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121858);
  }

  return result;
}

uint64_t sub_1000391D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100007C08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10003921C(uint64_t a1)
{
  v2 = sub_1000DA1F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100007BC0(&qword_100121888, &unk_1000E1940);
    v9 = sub_1000DC9E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100039800(&qword_100121890, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_1000DBDB4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100039800(&qword_100121898, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_1000DBE64();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100039550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_1001218A0, &unk_1000E1950);
    v3 = sub_1000DC9E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1000DCD24();

      sub_1000DBFD4();
      result = sub_1000DCD74();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1000DCC74();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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

Swift::Int sub_1000396CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007BC0(a2, a3);
    v5 = sub_1000DC9E4();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1000DCD24();
      sub_1000DCD34(v12);
      result = sub_1000DCD74();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100039800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100039848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120488, &unk_1000E30B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000398B8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1000DCB14())
    {
LABEL_3:
      sub_100007BC0(&qword_100120310, &qword_1000DFEB8);
      v3 = sub_1000DC9E4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1000DCB14();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1000DCA24();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1000DC754(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100008068(0, &qword_100120308, NSManagedObjectID_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1000DC764();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_1000DC754(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100008068(0, &qword_100120308, NSManagedObjectID_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1000DC764();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100039BA8()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_1001218B0);
  sub_100007EBC(v0, qword_1001218B0);
  return sub_1000DAFE4();
}

uint64_t sub_100039C28(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v5 = sub_1000D9DA4();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_1000DC1D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_100039D30, v6, v8);
}

uint64_t sub_100039D30()
{
  v1 = v0[3];
  v2 = *(v1 + qword_1001218D8);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_10003AB9C();
  *v4 = v0;
  v4[1] = sub_100039E2C;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_1000E19B8, v3, v5);
}

uint64_t sub_100039E2C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10003A404;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100039F48;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100039F48()
{
  v1 = v0[2];
  if (!sub_1000DC714())
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_10011F9D8 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = sub_1000DAFF4();
    sub_100007EBC(v13, qword_1001218B0);
    v14 = v12;
    v1 = v1;
    v15 = sub_1000DAFD4();
    v16 = sub_1000DC4C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[3];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v17 + qword_1001218C8);
      *(v18 + 4) = v20;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v1;
      *v19 = v20;
      v19[1] = v1;
      v21 = v1;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "error getting JournalEntryAsset.assetMetadataAsset as CKAsset for requested id: %@. Record: %@", v18, 0x16u);
      sub_100007BC0(&qword_100120A80, &unk_1000E04B0);
      swift_arrayDestroy();
    }

    sub_10003ABE8();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v3 = [v2 fileURL];
  if (!v3)
  {
    if (qword_10011F9D8 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = sub_1000DAFF4();
    sub_100007EBC(v27, qword_1001218B0);
    v28 = v26;
    v29 = sub_1000DAFD4();
    v30 = sub_1000DC4C4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v31 + qword_1001218C8);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "ckAsset.fileURL is nil for requested recordID: %@", v32, 0xCu);
      sub_10001E820(v33);
    }

    sub_10003ABE8();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_12:

    goto LABEL_13;
  }

  v4 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v3;
  sub_1000D9D74();

  (*(v8 + 32))(v5, v6, v7);
  v11 = sub_1000D9DB4();
  if (v4)
  {
    (*(v0[5] + 8))(v0[7], v0[4], v11);

    swift_unknownObjectRelease();
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v37 = v11;
  v38 = v10;
  (*(v0[5] + 8))();
  swift_unknownObjectRelease();

  v39 = v0[1];

  return v39(v37, v38, v1);
}

uint64_t sub_10003A404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003A478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_10003A49C, 0, 0);
}

uint64_t sub_10003A49C()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_1001218C8);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10003A5D0;
  v3 = swift_continuation_init();
  v0[17] = sub_100007BC0(&qword_100121A08, &qword_1000E19C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100097F90;
  v0[13] = &unk_10010EBF0;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10003A5D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10003A700;
  }

  else
  {
    v2 = sub_10003A6E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003A700()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10003A79C()
{
  v1 = *(v0 + qword_1001218D8);
}

id sub_10003A7EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMetadataDownloadOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003A824(uint64_t a1)
{
  v2 = *(a1 + qword_1001218D8);
}

uint64_t type metadata accessor for AssetMetadataDownloadOperation(uint64_t a1)
{
  result = qword_100121908;
  if (!qword_100121908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10003A9C0;

  return sub_100039C28(a2, a3);
}

uint64_t sub_10003A9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_10003AAEC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CAAC;

  return sub_10003A478(a1, a2, v6);
}

unint64_t sub_10003AB9C()
{
  result = qword_1001219F8;
  if (!qword_1001219F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001219F8);
  }

  return result;
}

unint64_t sub_10003ABE8()
{
  result = qword_100121A00;
  if (!qword_100121A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121A00);
  }

  return result;
}

unint64_t sub_10003AC68()
{
  result = qword_100121A10;
  if (!qword_100121A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121A10);
  }

  return result;
}

uint64_t sub_10003ACBC()
{

  v1 = OBJC_IVAR____TtC20JournalWidgetsSecure31CustomAttributeProviderConcrete_logger;
  v2 = sub_1000DAFF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomAttributeProviderConcrete(uint64_t a1)
{
  result = qword_100121A40;
  if (!qword_100121A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003ADB4(uint64_t a1)
{
  result = sub_1000DAFF4();
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

uint64_t sub_10003AE50@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_1000DAFE4();
  *a1 = v2;
  return result;
}

uint64_t sub_10003AEE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003AF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for StreakSummary(uint64_t a1)
{
  result = qword_100121B28;
  if (!qword_100121B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B03C(uint64_t a1)
{
  sub_100024818(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10003B0B4(void *a1)
{
  v3 = sub_100007BC0(&qword_100121B78, &qword_1000E1BD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100007E68(a1, a1[3]);
  sub_10003C4A0();
  sub_1000DCDB4();
  v12 = 0;
  sub_1000DA084();
  sub_10003C96C(&qword_100121360, &protocol conformance descriptor for Date);
  sub_1000DCBF4();
  if (!v1)
  {
    type metadata accessor for StreakSummary(0);
    v11 = 1;
    sub_1000DCBF4();
    v10 = 2;
    sub_1000DCBF4();
    v9 = 3;
    sub_1000DCC14();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10003B2CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v4 = __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v36 = &v31 - v7;
  __chkstk_darwin(v6);
  v38 = &v31 - v8;
  v39 = sub_100007BC0(&qword_100121B68, &qword_1000E1BC8);
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v31 - v9;
  v11 = type metadata accessor for StreakSummary(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000DA084();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v33 = v12[7];
  v16(&v14[v33], 1, 1, v15);
  v17 = v12[8];
  v16(&v14[v17], 1, 1, v15);
  v18 = v12[9];
  v40 = v14;
  *&v14[v18] = 0;
  v19 = a1[3];
  v42 = a1;
  sub_100007E68(a1, v19);
  sub_10003C4A0();
  v37 = v10;
  v20 = v41;
  sub_1000DCDA4();
  if (v20)
  {
    v21 = v40;
  }

  else
  {
    v41 = v17;
    v31 = v18;
    v22 = v35;
    v23 = v36;
    v46 = 0;
    sub_10003C96C(&qword_100121330, &protocol conformance descriptor for Date);
    v24 = v38;
    v25 = v37;
    sub_1000DCB94();
    v21 = v40;
    sub_1000275E0(v24, v40);
    v45 = 1;
    sub_1000DCB94();
    sub_1000275E0(v23, v21 + v33);
    v44 = 2;
    v26 = v34;
    sub_1000DCB94();
    sub_1000275E0(v26, v21 + v41);
    v43 = 3;
    v28 = v39;
    v29 = sub_1000DCBB4();
    (*(v22 + 8))(v25, v28);
    v30 = v32;
    *(v21 + v31) = v29;
    sub_10003C550(v21, v30);
  }

  sub_100007FC0(v42);
  return sub_10003C4F4(v21);
}

uint64_t sub_10003B700()
{
  v1 = 0x7473726966;
  v2 = 0x6E4F676E69646E65;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 1953718636;
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

uint64_t sub_10003B770@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003C80C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003B7A4(uint64_t a1)
{
  v2 = sub_10003C4A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003B7E0(uint64_t a1)
{
  v2 = sub_10003C4A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003B84C(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v41 = sub_100007BC0(&qword_100121B98, &qword_1000E1CF0);
  v3 = __chkstk_darwin(v41);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v35 - v6;
  v39 = sub_100007BC0(&qword_100121BA0, &qword_1000E1CF8);
  __chkstk_darwin(v39);
  v42 = &v35 - v7;
  v8 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_1000DA084();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_100007F58(v2, v13, &qword_1001203B8, &qword_1000E0460);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v21 = v13;
LABEL_5:
    sub_1000080B0(v21, &qword_1001203B8, &qword_1000E0460);
    v25 = 0;
    return v25 & 1;
  }

  v22 = v13;
  v23 = *(v15 + 32);
  v23(v19, v22, v14);
  v24 = type metadata accessor for StreakSummary(0);
  sub_100007F58(v2 + *(v24 + 24), v11, &qword_1001203B8, &qword_1000E0460);
  if (v20(v11, 1, v14) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v21 = v11;
    goto LABEL_5;
  }

  v26 = v44;
  v23(v44, v11, v14);
  v27 = sub_10003C96C(&qword_100120AE0, &protocol conformance descriptor for Date);
  result = sub_1000DBE14();
  if (result)
  {
    v37 = v23;
    v38 = v27;
    v29 = *(v15 + 16);
    v30 = v40;
    v29(v40, v19, v14);
    v31 = v41;
    v29((v30 + *(v41 + 48)), v26, v14);
    sub_100007F58(v30, v5, &qword_100121B98, &qword_1000E1CF0);
    v36 = *(v31 + 48);
    v32 = v42;
    v33 = v37;
    v37(v42, v5, v14);
    v34 = *(v15 + 8);
    v34(&v5[v36], v14);
    sub_10003C9B0(v30, v5);
    v33(v32 + *(v39 + 36), &v5[*(v31 + 48)], v14);
    v34(v5, v14);
    if (sub_1000DBE14())
    {
      v25 = sub_1000DBDF4();
    }

    else
    {
      v25 = 0;
    }

    sub_1000080B0(v32, &qword_100121BA0, &qword_1000E1CF8);
    v34(v44, v14);
    v34(v19, v14);
    return v25 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_10003BD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA084();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v53 = &v51 - v11;
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = sub_100007BC0(&qword_1001211A0, &qword_1000E0D50);
  v15 = __chkstk_darwin(v14);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v51 - v21;
  v56 = v20;
  v57 = a1;
  v23 = *(v20 + 48);
  sub_100007F58(a1, &v51 - v21, &qword_1001203B8, &qword_1000E0460);
  sub_100007F58(a2, &v22[v23], &qword_1001203B8, &qword_1000E0460);
  v58 = v5;
  v24 = *(v5 + 48);
  if (v24(v22, 1, v4) == 1)
  {
    if (v24(&v22[v23], 1, v4) == 1)
    {
      v54 = a2;
      sub_1000080B0(v22, &qword_1001203B8, &qword_1000E0460);
      goto LABEL_8;
    }

LABEL_6:
    v25 = v22;
LABEL_20:
    sub_1000080B0(v25, &qword_1001211A0, &qword_1000E0D50);
    return 0;
  }

  sub_100007F58(v22, v13, &qword_1001203B8, &qword_1000E0460);
  if (v24(&v22[v23], 1, v4) == 1)
  {
    (*(v58 + 8))(v13, v4);
    goto LABEL_6;
  }

  v54 = a2;
  v26 = v58;
  v27 = v55;
  (*(v58 + 32))(v55, &v22[v23], v4);
  sub_10003C96C(&qword_100120AC0, &protocol conformance descriptor for Date);
  v28 = sub_1000DBE64();
  v29 = *(v26 + 8);
  v29(v27, v4);
  v29(v13, v4);
  sub_1000080B0(v22, &qword_1001203B8, &qword_1000E0460);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v30 = type metadata accessor for StreakSummary(0);
  v31 = v30[5];
  v32 = *(v56 + 48);
  sub_100007F58(v57 + v31, v19, &qword_1001203B8, &qword_1000E0460);
  v33 = v54 + v31;
  v34 = v54;
  sub_100007F58(v33, &v19[v32], &qword_1001203B8, &qword_1000E0460);
  if (v24(v19, 1, v4) != 1)
  {
    v35 = v53;
    sub_100007F58(v19, v53, &qword_1001203B8, &qword_1000E0460);
    if (v24(&v19[v32], 1, v4) != 1)
    {
      v54 = v34;
      v36 = v58;
      v37 = v55;
      (*(v58 + 32))(v55, &v19[v32], v4);
      sub_10003C96C(&qword_100120AC0, &protocol conformance descriptor for Date);
      v38 = v35;
      v39 = sub_1000DBE64();
      v40 = *(v36 + 8);
      v40(v37, v4);
      v40(v38, v4);
      sub_1000080B0(v19, &qword_1001203B8, &qword_1000E0460);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v58 + 8))(v35, v4);
LABEL_19:
    v25 = v19;
    goto LABEL_20;
  }

  if (v24(&v19[v32], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  v54 = v34;
  sub_1000080B0(v19, &qword_1001203B8, &qword_1000E0460);
LABEL_14:
  v41 = v30[6];
  v42 = *(v56 + 48);
  v19 = v52;
  sub_100007F58(v57 + v41, v52, &qword_1001203B8, &qword_1000E0460);
  v43 = v54 + v41;
  v44 = v54;
  sub_100007F58(v43, &v19[v42], &qword_1001203B8, &qword_1000E0460);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v42], 1, v4) == 1)
    {
      sub_1000080B0(v19, &qword_1001203B8, &qword_1000E0460);
      return *(v57 + v30[7]) == *(v44 + v30[7]);
    }

    goto LABEL_19;
  }

  v45 = v51;
  sub_100007F58(v19, v51, &qword_1001203B8, &qword_1000E0460);
  if (v24(&v19[v42], 1, v4) == 1)
  {
    (*(v58 + 8))(v45, v4);
    goto LABEL_19;
  }

  v47 = v58;
  v48 = v55;
  (*(v58 + 32))(v55, &v19[v42], v4);
  sub_10003C96C(&qword_100120AC0, &protocol conformance descriptor for Date);
  v49 = sub_1000DBE64();
  v50 = *(v47 + 8);
  v50(v48, v4);
  v50(v45, v4);
  sub_1000080B0(v19, &qword_1001203B8, &qword_1000E0460);
  if (v49)
  {
    return *(v57 + v30[7]) == *(v44 + v30[7]);
  }

  return 0;
}

unint64_t sub_10003C4A0()
{
  result = qword_100121B70;
  if (!qword_100121B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121B70);
  }

  return result;
}

uint64_t sub_10003C4F4(uint64_t a1)
{
  v2 = type metadata accessor for StreakSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003C550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for StreakSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StreakSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003C708()
{
  result = qword_100121B80;
  if (!qword_100121B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121B80);
  }

  return result;
}

unint64_t sub_10003C760()
{
  result = qword_100121B88;
  if (!qword_100121B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121B88);
  }

  return result;
}

unint64_t sub_10003C7B8()
{
  result = qword_100121B90;
  if (!qword_100121B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121B90);
  }

  return result;
}

uint64_t sub_10003C80C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953718636 && a2 == 0xE400000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4F676E69646E65 && a2 == 0xE800000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000DCC74();

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

uint64_t sub_10003C96C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA084();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003C9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100121B98, &qword_1000E1CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CA44(uint64_t a1)
{
  v2 = sub_1000DBC14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000DB1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000DB1D4();
  sub_10003CD34();
  v10 = sub_1000DC874();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    return 0xD00000000000007CLL;
  }

  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for WidgetFamily.accessoryCircular(_:))
  {
    if (qword_10011FAC8 != -1)
    {
      swift_once();
    }

    v14 = qword_1001271B8;
    v15 = unk_1001271C0;
    sub_100007C50();

    return sub_1000DB714();
  }

  else
  {
    if (qword_10011FAC0 != -1)
    {
      swift_once();
    }

    v14 = qword_1001271A8;
    v15 = unk_1001271B0;
    sub_100007C50();

    v12 = sub_1000DB714();
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

unint64_t sub_10003CD34()
{
  result = qword_100121C40;
  if (!qword_100121C40)
  {
    sub_1000DB1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C40);
  }

  return result;
}

uint64_t sub_10003CD8C(char a1, uint64_t a2)
{
  v4 = sub_1000DB1F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DB1D4();
  sub_10003CD34();
  v8 = sub_1000DC874();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    return 0xD00000000000007CLL;
  }

  if (a1 == 2 || a2 < 4)
  {
    if (qword_10011FAD0 != -1)
    {
      swift_once();
    }

    v13 = qword_1001271C8;
    v14 = unk_1001271D0;
    sub_100007C50();
  }

  else
  {
    if (a1)
    {
      v10 = sub_1000729E8(a2);
    }

    else
    {
      v10 = sub_100072828(a2);
    }

    v13 = v10;
    v14 = v11;
    sub_100007C50();
  }

  return sub_1000DB714();
}

uint64_t sub_10003CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007BC0(&qword_100120908, &qword_1000E1340);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001CBA0(a3, v25 - v10);
  v12 = sub_1000DC244();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CC10(v11);
  }

  else
  {
    sub_1000DC234();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000DC1D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000DBFA4() + 32;
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

      sub_10001CC10(a3);

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

  sub_10001CC10(a3);
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

uint64_t sub_10003D25C()
{
  v1 = *(v0 + qword_100121C48);
  v7 = *((swift_isaMask & *v0) + 0x50);
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked(0, v7, v2, v3);
  v4 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v5));
  sub_10003F5E4((v1 + v4), &v8);
  os_unfair_lock_unlock((v1 + v5));

  return v8;
}

void sub_10003D37C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = sub_1000DBF04();
  [v2 willChangeValueForKey:v6];

  v7 = *&v2[qword_100121C48];
  type metadata accessor for OperationBase.Locked(0, *((v5 & v4) + 0x50), v8, v9);
  sub_100007C08(&qword_100121D50, &qword_1000E1DB0);
  sub_1000DCD94();
  swift_getFunctionTypeMetadata1();
  sub_1000DC1C4();
  v10 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v11));
  sub_10003F590(v7 + v10, &v19);
  os_unfair_lock_unlock((v7 + v11));
  v12 = v19;
  v13 = sub_1000DBF04();
  [v2 didChangeValueForKey:v13];

  if (sub_1000DC1A4())
  {
    v14 = 0;
    v15 = v12 + 40;
    while (1)
    {
      v16 = sub_1000DC184();
      sub_1000DC154();
      if (!v16)
      {
        break;
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_8;
      }

      v18 = *(v15 - 8);

      v18(a1);

      ++v14;
      v15 += 16;
      if (v17 == sub_1000DC1A4())
      {
        goto LABEL_6;
      }
    }

    sub_1000DCA14();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

unint64_t sub_10003D5C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010D468;
  v6._object = a2;
  v4 = sub_1000DCB64(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003D614(char a1)
{
  if (!a1)
  {
    return 0x7964616572;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

uint64_t sub_10003D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000DCC84();
}

uint64_t sub_10003D6E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_10003D74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_10003D7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_10003D82C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003D5C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10003D85C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003D614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10003D888(uint64_t a1)
{
  sub_100007C08(&qword_100121D50, &qword_1000E1DB0);
  sub_1000DCD94();
  swift_getFunctionTypeMetadata1();
  sub_1000DBD34();
  return 0;
}

Swift::Int sub_10003D908()
{
  sub_1000DCD24();
  sub_1000DCD34(0);
  return sub_1000DCD74();
}

Swift::Int sub_10003D974(uint64_t a1)
{
  sub_1000DCD24();
  sub_1000DCD34(0);
  return sub_1000DCD74();
}

uint64_t sub_10003D9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = swift_isaMask & *v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1000DC1D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_10003DA7C, v5, v7);
}

uint64_t sub_10003DA7C()
{
  (*(*(*(v0[3] + 80) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

Swift::Int sub_10003DB28()
{
  v0 = sub_100039550(&off_10010D4D0);
  sub_10003F0DC(&unk_10010D4F0);
  return v0;
}

Swift::Int sub_10003DB7C()
{
  v0 = sub_100039550(&off_10010D500);
  sub_10003F0DC(&unk_10010D520);
  return v0;
}

Class sub_10003DBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4.super.isa = sub_1000DC294().super.isa;

  return v4.super.isa;
}

Swift::Int sub_10003DC38()
{
  v0 = sub_100039550(&off_10010D530);
  sub_10003F0DC(&unk_10010D550);
  return v0;
}

uint64_t sub_10003DC74(void *a1)
{
  v1 = a1;
  v2 = sub_10003DCE4(2);

  return v2 & 1;
}

uint64_t sub_10003DCAC(void *a1)
{
  v1 = a1;
  v2 = sub_10003DCE4(1);

  return v2 & 1;
}

uint64_t sub_10003DCE4(char a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  sub_10003D25C();
  type metadata accessor for OperationBase.State(0, *((v3 & v2) + 0x50), v4, v5);
  swift_getWitnessTable();
  return sub_1000DCC84() & 1;
}

uint64_t sub_10003DD94(void *a1)
{
  v1 = a1;
  v5 = sub_10003DDC8(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t sub_10003DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *v4) + 0x50);
  v10.receiver = v4;
  v10.super_class = type metadata accessor for OperationBase(0, v5, a3, a4);
  v6 = objc_msgSendSuper2(&v10, "isReady");
  if (v6)
  {
    sub_10003D25C();
    type metadata accessor for OperationBase.State(0, v5, v7, v8);
    swift_getWitnessTable();
    LOBYTE(v6) = sub_1000DCC84();
  }

  return v6 & 1;
}

void sub_10003DE8C()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  sub_100007C08(&qword_100121D50, &qword_1000E1DB0);
  v2 = sub_1000DCD94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-v4];
  v6 = sub_100007BC0(&qword_100120908, &qword_1000E1340);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7];
  if ([v0 isCancelled])
  {
    sub_1000DC1E4();
    sub_10003F360();
    v9 = swift_allocError();
    sub_1000DBD44();
    *v5 = v9;
    swift_storeEnumTagMultiPayload();
    sub_10003D37C(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = sub_1000DC244();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;
    v12 = v0;
    v13 = sub_10003CF9C(0, 0, v8, &unk_1000E1DE8, v11);
    v14 = sub_1000DBF04();
    [v12 willChangeValueForKey:v14];

    v15 = *(v12 + qword_100121C48);
    __chkstk_darwin(v16);
    *&v22[-16] = v1;
    *&v22[-8] = v13;
    type metadata accessor for OperationBase.Locked(0, v1, v17, v18);
    v19 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
    v20 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v20));
    sub_10003F30C(v15 + v19);
    os_unfair_lock_unlock((v15 + v20));
    v21 = sub_1000DBF04();
    [v12 didChangeValueForKey:v21];
  }
}

uint64_t sub_10003E1F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *((swift_isaMask & *a4) + 0x50);
  v4[3] = v5;
  sub_100007C08(&qword_100121D50, &qword_1000E1DB0);
  v6 = sub_1000DCD94();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = sub_1000DC7C4();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10003E3B0, 0, 0);
}

uint64_t sub_10003E3B0()
{
  sub_1000DC264();
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0x68) + **((swift_isaMask & **(v0 + 16)) + 0x68));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10003E5AC;
  v2 = *(v0 + 72);

  return v4(v2, 0, 0);
}

uint64_t sub_10003E5AC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10003E8D8;
  }

  else
  {
    v2 = sub_10003E6C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003E6C0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    type metadata accessor for OperationBase.Failure(0, v3, v4, v5);
    swift_getWitnessTable();
    v6 = swift_allocError();
    swift_willThrow();
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    *v7 = v6;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_10003D37C(v7);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v10 = v0[11];
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    swift_storeEnumTagMultiPayload();
    sub_10003D37C(v11);
    (*(v12 + 8))(v11, v13);
    (*(v2 + 8))(v10, v3);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10003E8D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = v0[13];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10003D37C(v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_10003E9B4(void *a1)
{
  v1 = a1;
  sub_10003DE8C();
}

double sub_10003EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *v4) + 0x50);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for OperationBase(0, v5, a3, a4);
  objc_msgSendSuper2(&v13, "cancel");
  v6 = *(v4 + qword_100121C48);
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked(0, v5, v7, v8);
  v9 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v10));
  sub_10003F1D0((v6 + v9), &v12);
  os_unfair_lock_unlock((v6 + v10));

  if (v12)
  {
    sub_1000DC254();
  }

  return result;
}

uint64_t sub_10003EB70(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getAtKeyPath();

  return v5;
}

void sub_10003EBE4(void *a1)
{
  v4 = a1;
  sub_10003EA00(v4, v1, v2, v3);
}

uint64_t sub_10003EC2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getAtKeyPath();

  return v5;
}

id sub_10003ECA0(void *a1)
{
  v1 = a1;
  sub_10003ED08();

  v2 = sub_1000DBF04();

  return v2;
}

uint64_t sub_10003ED08()
{
  v0 = sub_10003D25C();
  if (!v0)
  {
    return 0x7964616572;
  }

  if (v0 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

void sub_10003ED78(uint64_t a1, uint64_t a2)
{
  sub_100007C08(&qword_100121D50, &qword_1000E1DB0);
  sub_1000DCD94();
  swift_getFunctionTypeMetadata1();
  sub_1000DC1C4();
  sub_1000DC1B4(0);
}

id sub_10003EE00()
{
  v1 = qword_100121C48;
  v2 = *((swift_isaMask & *v0) + 0x50);
  v12[0] = sub_10003D888(v2);
  v13 = v3;
  v14 = v4;
  v6 = type metadata accessor for OperationBase.Locked(0, v2, v4, v5);
  v7 = sub_10003F060(v12, v6);

  *(v0 + v1) = v7;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for OperationBase(0, v2, v8, v9);
  return objc_msgSendSuper2(&v11, "init");
}

id sub_10003EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OperationBase(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10003EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10003EFAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003EFC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10003F008(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10003F060(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1000DCA64();
  return sub_1000DCA54();
}

uint64_t sub_10003F130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t sub_10003F1D0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_10003F218()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F258(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001CAAC;

  return sub_10003E1F4(a1, v4, v5, v6);
}

void sub_10003F30C(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = 1;

  *(a1 + 16) = v3;
}

unint64_t sub_10003F360()
{
  result = qword_100121D58[0];
  if (!qword_100121D58[0])
  {
    sub_1000DC1E4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100121D58);
  }

  return result;
}

uint64_t sub_10003F3B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F3F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CD68;

  return sub_10001A39C(a1, v4);
}

uint64_t sub_10003F4A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CAAC;

  return sub_10001A39C(a1, v4);
}

void sub_10003F590(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  *a1 = 2;
  *a2 = *(a1 + 8);

  sub_10003ED78(a1, v4);
}

uint64_t sub_10003F5E4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_10003F630(unsigned int *a1, int a2)
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

_WORD *sub_10003F680(_WORD *result, int a2, int a3)
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

void sub_10003F74C(int a1)
{
  v48 = a1;
  v2 = sub_1000DA124();
  __chkstk_darwin(v2 - 8);
  v47[1] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA9A4();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_10001793C(0, v8, 0);
    v9 = 0;
    v10 = v51;
    while (v9 < *(v7 + 2))
    {
      v49 = v7[v9 + 4];
      sub_10003FCE0(&v49, v50);
      v1 = v50[0];
      v11 = v50[1];
      v51 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_10001793C((v12 > 1), v13 + 1, 1);
        v10 = v51;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v50[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_100047140(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v50[0] = v10;
              }

              sub_1000421DC(v25, v28, 0);
              sub_1000DBE74();
              sub_1000DA114();
              v15 = sub_1000DBF54();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v44 = v15;
            v45 = v16;
            v46 = sub_100047140((v27 > 1), v17, 1, v10);
            v16 = v45;
            v10 = v46;
            v15 = v44;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = v15;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v40 = v10[v24 + 6];
          v39 = v10[v24 + 7];
          v27 = HIBYTE(*&v39) & 0xFLL;
          if ((*&v39 & 0x2000000000000000) == 0)
          {
            v27 = *&v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v41 = &v10[2 * v25 + 4];
              v1 = *v41;
              v42 = v41[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100042080(v10);
              }

              v43 = &v10[2 * v25];
              v43[4] = v40;
              v43[5] = v39;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v38 = &v10[v24];
              *(v38 + 6) = v1;
              *(v38 + 7) = v42;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v48 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_10011FBB8 != -1)
      {
        swift_once();
      }

      sub_100007BC0(&qword_100121ED8, &unk_1000E6500);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000DE2C0;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_100042300();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      sub_1000DBF14();
      goto LABEL_59;
    }

    v51 = v10;
    if (qword_10011FBB0 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_100007BC0(&qword_100121560, &unk_1000E2040);
  sub_10004229C();
  sub_1000DBDE4();
LABEL_59:
}

uint64_t sub_10003FCE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000DA124();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBED4();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1ALL:
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
      sub_1000DBE74();
      sub_1000DA114();
      result = sub_1000DBF54();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_100040A8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

void sub_100040B38(int a1)
{
  v48 = a1;
  v2 = sub_1000DA124();
  __chkstk_darwin(v2 - 8);
  v47[1] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA9B4();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_10001793C(0, v8, 0);
    v9 = 0;
    v10 = v51;
    while (v9 < *(v7 + 2))
    {
      v49 = v7[v9 + 4];
      sub_1000410CC(&v49, v50);
      v1 = v50[0];
      v11 = v50[1];
      v51 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_10001793C((v12 > 1), v13 + 1, 1);
        v10 = v51;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v50[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_100047140(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v50[0] = v10;
              }

              sub_1000421DC(v25, v28, 0);
              sub_1000DBE74();
              sub_1000DA114();
              v15 = sub_1000DBF54();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v44 = v15;
            v45 = v16;
            v46 = sub_100047140((v27 > 1), v17, 1, v10);
            v16 = v45;
            v10 = v46;
            v15 = v44;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = v15;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v40 = v10[v24 + 6];
          v39 = v10[v24 + 7];
          v27 = HIBYTE(*&v39) & 0xFLL;
          if ((*&v39 & 0x2000000000000000) == 0)
          {
            v27 = *&v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v41 = &v10[2 * v25 + 4];
              v1 = *v41;
              v42 = v41[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100042080(v10);
              }

              v43 = &v10[2 * v25];
              v43[4] = v40;
              v43[5] = v39;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v38 = &v10[v24];
              *(v38 + 6) = v1;
              *(v38 + 7) = v42;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v48 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_10011FBB8 != -1)
      {
        swift_once();
      }

      sub_100007BC0(&qword_100121ED8, &unk_1000E6500);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000DE2C0;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_100042300();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      sub_1000DBF14();
      goto LABEL_59;
    }

    v51 = v10;
    if (qword_10011FBB0 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_100007BC0(&qword_100121560, &unk_1000E2040);
  sub_10004229C();
  sub_1000DBDE4();
LABEL_59:
}

uint64_t sub_1000410CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000DA124();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBED4();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
      sub_1000DBE74();
      sub_1000DA114();
      result = sub_1000DBF54();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

id sub_1000417E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAsset(uint64_t a1)
{
  result = qword_100121E88;
  if (!qword_100121E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000418D4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure16StateOfMindAsset_metadata) = a1;

  return result;
}

id sub_1000418EC()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v48[2] = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v48[1] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v48 - v9;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_1001204A8, &qword_1000E0050);
  __chkstk_darwin(v15 - 8);
  v17 = v48 - v16;
  v18 = sub_1000DA9C4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = v0;
  sub_10001592C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000080B0(v17, &qword_1001204A8, &qword_1000E0050);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_10003F74C(0);
  v23 = v22;
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  sub_1000DAE84();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_10003F74C(0);
  v30 = sub_1000DBF04();

  [v29 setDisplayName:v30];

  sub_100040B38(0);
  v31 = sub_1000DBF04();

  [v29 setContentDescription:v31];

  sub_1000DA994();
  v32 = sub_1000DA084();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v8, 1, v32) == 1)
  {
    v35 = *(v48[0] + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v35)
    {
      v48[0] = v34;
      v36 = [v35 entry];
      if (v36)
      {
        v37 = v36;
        sub_1000DA3A4();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v34 = v48[0];
    }

    else
    {
      v38 = 1;
    }

    (*(v33 + 56))(v10, v38, 1, v32);
    if (v34(v8, 1, v32) != 1)
    {
      sub_1000080B0(v8, &qword_1001203B8, &qword_1000E0460);
    }
  }

  else
  {
    (*(v33 + 32))(v10, v8, v32);
    (*(v33 + 56))(v10, 0, 1, v32);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v39 = sub_1000DBF64();
  v41 = v40;
  sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000DFEF0;
  v43 = sub_1000478A0(v39, v41, v10);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1000DC124().super.isa;

  [v29 setAlternateNames:v46];

  sub_1000080B0(v10, &qword_1001203B8, &qword_1000E0460);
  (*(v19 + 8))(v21, v18);
  return v29;
}

uint64_t sub_100042000(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA9C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100042094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1000421DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10004229C()
{
  result = qword_100121870;
  if (!qword_100121870)
  {
    sub_100007C08(&qword_100121560, &unk_1000E2040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121870);
  }

  return result;
}

unint64_t sub_100042300()
{
  result = qword_100121EE0;
  if (!qword_100121EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EE0);
  }

  return result;
}

uint64_t sub_100042368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_100121EE8, &unk_1000E2050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StreaksWidgetTimelineEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100042478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007BC0(&qword_100121EE8, &unk_1000E2050);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StreaksWidgetTimelineEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for StreaksWidgetAccessoryRectangularView(uint64_t a1)
{
  result = qword_100121F48;
  if (!qword_100121F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000425CC(uint64_t a1)
{
  sub_100042650(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StreaksWidgetTimelineEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100042650(uint64_t a1)
{
  if (!qword_100121F58)
  {
    sub_1000DB1F4();
    v1 = sub_1000DB124();
    if (!v2)
    {
      atomic_store(v1, &qword_100121F58);
    }
  }
}

__n128 sub_1000426C4@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_100121F88, &qword_1000E20D8);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_1000DB3F4();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v6 = sub_100007BC0(&qword_100121F90, &qword_1000E20E0);
  sub_100042828(v1, &v5[*(v6 + 44)]);
  sub_1000DB974();
  sub_1000DB204();
  sub_10001865C(v5, a1, &qword_100121F88, &qword_1000E20D8);
  v7 = a1 + *(sub_100007BC0(&qword_100121F98, &qword_1000E20E8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_100042828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v142 = a1;
  v138 = sub_100007BC0(&qword_100121FA0, &qword_1000E20F0);
  __chkstk_darwin(v138);
  v140 = (v126 - v2);
  v139 = sub_100007BC0(&qword_100121FA8, &qword_1000E20F8);
  v3 = __chkstk_darwin(v139);
  v129 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v130 = (v126 - v5);
  v133 = sub_1000DB654();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DB1F4();
  v8 = *(v7 - 8);
  v144 = v7;
  v145 = v8;
  v9 = __chkstk_darwin(v7);
  v128 = (v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v134 = v126 - v12;
  __chkstk_darwin(v11);
  v143 = v126 - v13;
  v127 = sub_1000DBC14();
  v14 = *(v127 - 8);
  __chkstk_darwin(v127);
  v16 = v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007BC0(&qword_100121FB0, &qword_1000E2100);
  v18 = __chkstk_darwin(v17 - 8);
  v137 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = v126 - v20;
  v21 = type metadata accessor for WidgetHeaderView(0);
  v22 = __chkstk_darwin(v21);
  v135 = v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = (v126 - v24);
  if (qword_10011FAB8 != -1)
  {
    swift_once();
  }

  v148 = xmmword_100127198;
  sub_100007C50();

  v26 = sub_1000DB714();
  v28 = v27;
  v30 = v29;
  v32 = v31 & 1;
  *v25 = swift_getKeyPath();
  sub_100007BC0(&qword_100121FB8, &qword_1000E48D0);
  swift_storeEnumTagMultiPayload();
  v146 = v25;
  v33 = v21[5];
  *(v146 + v33) = swift_getKeyPath();
  sub_100007BC0(&qword_100121FC0, &qword_1000E2170);
  swift_storeEnumTagMultiPayload();
  v34 = v21[6];
  *(v146 + v34) = swift_getKeyPath();
  sub_100007BC0(&qword_100121FC8, &unk_1000E66C0);
  swift_storeEnumTagMultiPayload();
  v35 = (v146 + v21[7]);
  *v35 = v26;
  v35[1] = v28;
  v35[2] = v32;
  v35[3] = v30;
  v36 = v142 + *(type metadata accessor for StreaksWidgetAccessoryRectangularView(0) + 20);
  v37 = (v36 + *(type metadata accessor for StreaksWidgetTimelineEntry(0) + 20));
  v38 = *v37;
  if (v38 == 2)
  {
    v39 = v127;
    (*(v14 + 104))(v16, enum case for WidgetFamily.accessoryRectangular(_:), v127);
    v40 = v143;
    sub_100080BE4(v143);
    v129 = sub_10003CA44(v16);
    v42 = v41;
    v44 = v43;
    v45 = v131;
    v130 = *(v145 + 8);
    v145 += 8;
    v130(v40, v144);
    (*(v14 + 8))(v16, v39);
    sub_1000DB5E4();
    v46 = v132;
    v47 = v133;
    (*(v45 + 104))(v132, enum case for Font.Leading.tight(_:), v133);
    sub_1000DB674();

    (*(v45 + 8))(v46, v47);
    v48 = v129;
    v49 = sub_1000DB6F4();
    v51 = v50;
    LOBYTE(v47) = v52;

    sub_10004369C(v48, v42, v44 & 1);

    sub_1000DB614();
    v53 = sub_1000DB6B4();
    v55 = v54;
    LOBYTE(v45) = v56;
    sub_10004369C(v49, v51, v47 & 1);

    LODWORD(v148) = sub_1000DB4C4();
    v133 = sub_1000DB6C4();
    v132 = v57;
    v59 = v58;
    v131 = v60;
    sub_10004369C(v53, v55, v45 & 1);

    sub_100080BE4(v40);
    v61 = v134;
    sub_1000DB1D4();
    sub_10003CD34();
    v62 = v144;
    LOBYTE(v53) = sub_1000DC874();
    v63 = v130;
    v130(v61, v62);
    v63(v40, v62);
    if (v53)
    {
      v64 = 1.0;
    }

    else
    {
      v64 = 0.1;
    }

    KeyPath = swift_getKeyPath();
    sub_100080BE4(v40);
    sub_1000DB1D4();
    v66 = sub_1000DC874();
    v63(v61, v62);
    v63(v40, v62);
    v67 = v66 & 1;
    if (v67)
    {
      v68 = 0;
    }

    else
    {
      v68 = 2;
    }

    v69 = swift_getKeyPath();
    LOBYTE(v148) = v59 & 1;
    v147 = v67;
    v70 = v140;
    v71 = v132;
    *v140 = v133;
    v70[1] = v71;
    *(v70 + 16) = v59 & 1;
    v70[3] = v131;
    v70[4] = KeyPath;
    *(v70 + 5) = v64;
    v70[6] = v69;
    v70[7] = v68;
    *(v70 + 64) = v67;
    swift_storeEnumTagMultiPayload();
    sub_100007BC0(&qword_100121FD0, &qword_1000E2210);
    sub_1000436BC();
    sub_100043774();
    v72 = v136;
    sub_1000DB464();
  }

  else
  {
    v73 = *(v37 + 1);
    v74 = v128;
    sub_100080BE4(v128);
    v75 = v143;
    sub_1000DB1D4();
    v76 = sub_10003CD34();
    v77 = v144;
    v126[1] = v76;
    v78 = sub_1000DC874();
    v79 = v145 + 8;
    v80 = v77;
    v81 = *(v145 + 8);
    v81(v75, v80);
    v127 = v73;
    if (v78)
    {
      v82 = 0;
      v83 = 0x80000001000E8920;
      v84 = 0xD00000000000007CLL;
    }

    else
    {
      if (v38)
      {
        v85 = sub_100072678(v73);
      }

      else
      {
        v85 = sub_1000724C8(v73);
      }

      *&v148 = v85;
      *(&v148 + 1) = v86;
      v84 = sub_1000DB714();
      v83 = v87;
      v82 = v88;
    }

    v126[0] = v81;
    v81(v74, v144);
    sub_1000DB5F4();
    v89 = v131;
    v90 = v132;
    v91 = v133;
    (*(v131 + 104))(v132, enum case for Font.Leading.tight(_:), v133);
    sub_1000DB674();
    v145 = v79;

    (*(v89 + 8))(v90, v91);
    v92 = sub_1000DB6F4();
    v94 = v93;
    LOBYTE(v89) = v95;

    sub_10004369C(v84, v83, v82 & 1);

    sub_1000DB614();
    v96 = sub_1000DB6B4();
    v98 = v97;
    v100 = v99;
    sub_10004369C(v92, v94, v89 & 1);

    LODWORD(v148) = sub_1000DB4C4();
    v101 = sub_1000DB6C4();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    sub_10004369C(v96, v98, v100 & 1);

    v108 = v143;
    sub_100080BE4(v143);
    v109 = v134;
    sub_1000DB1D4();
    v110 = v144;
    v111 = sub_1000DC874();
    v112 = v109;
    v113 = v126[0];
    (v126[0])(v112, v110);
    v113(v108, v110);
    if (v111)
    {
      v114 = 1.0;
    }

    else
    {
      v114 = 0.1;
    }

    v115 = swift_getKeyPath();
    v116 = swift_getKeyPath();
    LOBYTE(v148) = v105 & 1;
    v147 = 0;
    v117 = v129;
    v118 = &v129[*(v139 + 36)];
    sub_100007BC0(&qword_100122020, &qword_1000E2230);
    sub_1000DB244();
    *v118 = swift_getKeyPath();
    *v117 = v101;
    *(v117 + 8) = v103;
    *(v117 + 16) = v105 & 1;
    *(v117 + 24) = v107;
    *(v117 + 32) = v115;
    *(v117 + 40) = v114;
    *(v117 + 48) = v116;
    *(v117 + 56) = 1;
    *(v117 + 64) = 0;
    v119 = v130;
    sub_10001865C(v117, v130, &qword_100121FA8, &qword_1000E20F8);
    sub_100007F58(v119, v140, &qword_100121FA8, &qword_1000E20F8);
    swift_storeEnumTagMultiPayload();
    sub_100007BC0(&qword_100121FD0, &qword_1000E2210);
    sub_1000436BC();
    sub_100043774();
    v72 = v136;
    sub_1000DB464();
    sub_1000080B0(v119, &qword_100121FA8, &qword_1000E20F8);
  }

  v120 = v146;
  v121 = v135;
  sub_1000438E4(v146, v135);
  v122 = v137;
  sub_100007F58(v72, v137, &qword_100121FB0, &qword_1000E2100);
  v123 = v141;
  sub_1000438E4(v121, v141);
  v124 = sub_100007BC0(&qword_100122028, &qword_1000E2238);
  sub_100007F58(v122, v123 + *(v124 + 48), &qword_100121FB0, &qword_1000E2100);
  sub_1000080B0(v72, &qword_100121FB0, &qword_1000E2100);
  sub_100043948(v120);
  sub_1000080B0(v122, &qword_100121FB0, &qword_1000E2100);
  return sub_100043948(v121);
}

double sub_10004369C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1000436BC()
{
  result = qword_100121FD8;
  if (!qword_100121FD8)
  {
    sub_100007C08(&qword_100121FA8, &qword_1000E20F8);
    sub_100043774();
    sub_1000391D4(&qword_100122018, &qword_100122020, &qword_1000E2230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FD8);
  }

  return result;
}

unint64_t sub_100043774()
{
  result = qword_100121FE0;
  if (!qword_100121FE0)
  {
    sub_100007C08(&qword_100121FD0, &qword_1000E2210);
    sub_10004382C();
    sub_1000391D4(&qword_100122008, &qword_100122010, &unk_1000E3360, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FE0);
  }

  return result;
}

unint64_t sub_10004382C()
{
  result = qword_100121FE8;
  if (!qword_100121FE8)
  {
    sub_100007C08(&qword_100121FF0, &qword_1000E2218);
    sub_1000391D4(&qword_100121FF8, &qword_100122000, &unk_1000E2220, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FE8);
  }

  return result;
}

uint64_t sub_1000438E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043948(uint64_t a1)
{
  v2 = type metadata accessor for WidgetHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000439B0()
{
  result = qword_100122030;
  if (!qword_100122030)
  {
    sub_100007C08(&qword_100121F98, &qword_1000E20E8);
    sub_1000391D4(&qword_100122038, &qword_100121F88, &qword_1000E20D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122030);
  }

  return result;
}

id sub_100043A68(int a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v4 = 0x300000005;
    v5 = 6;
    v6 = a1;
    v7 = 0x100010024;
    v3 = result;
    [result replaceAttributes:&v4 count:3];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100043AF0(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = [v4 superview];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v4 bottomAnchor];
  v11 = [v9 bottomAnchor];
  v12 = [v10 *off_10010F008[a1]];

  if (v12)
  {
    [v12 setConstant:-a3];
    if (a2)
    {
      [v12 setActive:1];
    }
  }

  else if (a2)
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_100043C54()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100122040);
  v1 = sub_100007EBC(v0, qword_100122040);
  if (qword_10011FA60 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_1001270E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100043D58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1000DB9B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100043DE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1000DB9B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100044050(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1000DB9B4() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_1000443A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1000DB114();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = __chkstk_darwin(v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v43 - v6;
  v7 = sub_1000DB9B4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v45 = &v43 - v13;
  v51 = a1;
  v54 = *(a1 + 16);
  v44 = *(v54 - 8);
  __chkstk_darwin(v12);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000DBBF4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = sub_100007BC0(&qword_100122220, &unk_1000E2370);
  __chkstk_darwin(v22 - 8);
  v24 = &v43 - v23;
  sub_1000DB2F4();
  v25 = sub_1000DB964();
  v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
  sub_1000448F0(v24);
  if (v26 == 1 && (sub_1000DB374(), sub_1000DBBD4(), sub_100044958(), v27 = sub_1000DBE64(), v28 = *(v16 + 8), v28(v19, v15), v28(v21, v15), (v27 & 1) == 0))
  {
    v30 = v44;
    v31 = v52;
    (*(v44 + 16))(v50, v52, v54);
    v32 = v46;
    sub_1000DB294();
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 104))(v47, enum case for ColorScheme.dark(_:), v49);
    v36 = sub_1000DB104();
    v37 = *(v33 + 8);
    v37(v34, v35);
    v37(v32, v35);
    v38 = 36;
    if (v36)
    {
      v38 = 40;
    }

    v39 = v31 + *(v51 + v38);
    v40 = v45;
    (*(v8 + 16))(v45, v39, v7);
    v41 = v54;
    v42 = v50;
    sub_1000DB0F4();
    (*(v8 + 8))(v40, v7);
    return (*(v30 + 8))(v42, v41);
  }

  else
  {
    (*(v8 + 104))(v11, enum case for BlendMode.normal(_:), v7);
    sub_1000DB0F4();
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000448F0(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100122220, &unk_1000E2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100044958()
{
  result = qword_100122228;
  if (!qword_100122228)
  {
    sub_1000DBBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122228);
  }

  return result;
}

uint64_t sub_1000449B0(void *a1)
{
  sub_1000DB484();

  return swift_getWitnessTable();
}

uint64_t sub_1000449F8()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100122230);
  v1 = sub_100007EBC(v0, qword_100122230);
  if (qword_10011FA48 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_100127098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100044AC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007BC0(&qword_100121580, &qword_1000E14E0);
  v3[5] = swift_task_alloc();
  v5 = sub_1000D9DA4();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_1000DC1D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_100044BF8, v6, v8);
}

uint64_t sub_100044BF8()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100044C90;
  v2 = v0[3];
  v3 = v0[2];

  return sub_100088628(v3, v2);
}

uint64_t sub_100044C90(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_100044DB8, v4, v3);
}

uint64_t sub_100044DB8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
LABEL_4:

    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_1000453D8(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000080B0(*(v0 + 40), &qword_100121580, &qword_1000E14E0);
    goto LABEL_4;
  }

  v7 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  *(v0 + 128) = *(v7 + qword_100127280);
  sub_100065D44();
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_100044F9C;
  v14 = *(v0 + 64);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_100099D00(v16, v15, v14, v9 * v12);
}

uint64_t sub_100044F9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_1000451D0;
  }

  else
  {
    v7 = sub_1000450E0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000450E0()
{
  if (sub_100021930())
  {
    if (qword_10011F9A0 != -1)
    {
      swift_once();
    }

    v1.n128_f64[0] = sub_100097C1C(*(v0 + 112), *(*(v0 + 32) + qword_100124898), *(*(v0 + 32) + qword_100124898 + 8));
  }

  v2 = *(v0 + 112);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48), v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000451D0()
{
  if (qword_10011F9E8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100122230);
  v3 = v1;
  swift_errorRetain();
  v4 = sub_1000DAFD4();
  v5 = sub_1000DC4C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ - error generating video preview image: %@", v7, 0x16u);
    sub_100007BC0(&qword_100120A80, &unk_1000E04B0);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11(0);
}

void sub_1000453D8(uint64_t a1@<X8>)
{
  v3 = sub_100007BC0(&qword_1001223A8, &unk_1000E2C90);
  v4 = __chkstk_darwin(v3 - 8);
  v105 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v108 = &v95 - v6;
  v125 = sub_1000DAF04();
  v107 = *(v125 - 8);
  v7 = __chkstk_darwin(v125 - 8);
  v98 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v124 = &v95 - v10;
  __chkstk_darwin(v9);
  v109 = &v95 - v11;
  v115 = sub_1000DA844();
  v106 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v127);
  v112 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v111 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v126 = (&v95 - v18);
  __chkstk_darwin(v17);
  v120 = (&v95 - v19);
  v20 = sub_100007BC0(&qword_100121580, &qword_1000E14E0);
  v21 = __chkstk_darwin(v20 - 8);
  v119 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v95 - v23;
  v25 = sub_1000D9DA4();
  v113 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v110 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v116 = &v95 - v28;
  v29 = type metadata accessor for AssetAttachment.AssetType(0);
  v30 = __chkstk_darwin(v29);
  v118 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v130 = &v95 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v95 - v35;
  __chkstk_darwin(v34);
  v38 = &v95 - v37;
  v131 = *(v1 + qword_100127260);
  v104 = a1;
  if (v131 >> 62)
  {
    goto LABEL_92;
  }

  v39 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v100 = v1;
  v137 = v1 + qword_100127288;
  v128 = v29;
  v129 = v25;
  v1 = v131;
  if (v39)
  {
    v40 = 0;
    v133 = v131 & 0xFFFFFFFFFFFFFF8;
    v134 = v131 & 0xC000000000000001;
    v122 = (v113 + 56);
    v99 = (v106 + 8);
    v117 = (v113 + 32);
    v121 = (v113 + 48);
    v103 = (v107 + 48);
    v97 = (v107 + 32);
    v96 = (v107 + 8);
    v101 = (v113 + 8);
    v123 = v24;
    v102 = v36;
    v132 = v39;
    while (1)
    {
      if (v134)
      {
        v44 = sub_1000DCA24();
        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v40 >= *(v133 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v39 = sub_1000DCB14();
          goto LABEL_3;
        }

        v44 = *(v1 + 8 * v40 + 32);

        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_43;
        }
      }

      v135 = *v137;
      v136 = *(v137 + 8);
      v46 = OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType;
      sub_100046830(v44 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v38, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v41 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v41 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        v42 = v41;
        v43 = v38;
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v53 = v38;
        if (v136)
        {
          goto LABEL_88;
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      sub_100046830(v44 + v46, v36, type metadata accessor for AssetAttachment.AssetType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = v48;
      if (v48 > 1)
      {
        break;
      }

      v51 = v36;
      v52 = v126;
      if (!v49)
      {
        goto LABEL_24;
      }

      sub_10004676C(v36, type metadata accessor for AssetAttachment.AssetType);
      v60 = 1;
      v24 = v123;
LABEL_28:
      (*v122)(v24, v60, 1, v25);
      v53 = &v38[*(sub_100007BC0(&qword_1001223B0, &qword_1000E23B0) + 48)];
      if ((*v121)(v24, 1, v25) == 1)
      {

        sub_1000080B0(v24, &qword_100121580, &qword_1000E14E0);
      }

      else
      {
        v61 = v116;
        (*v117)(v116, v24, v25);
        sub_1000D9D24();
        v62 = v124;
        sub_1000DAE74();
        v24 = v108;
        sub_1000DAE44();
        v63 = v125;
        if ((*v103)(v24, 1, v125) == 1)
        {

          v25 = v129;
          (*v101)(v61, v129);
          sub_1000080B0(v24, &qword_1001223A8, &unk_1000E2C90);
          v29 = v128;
          v36 = v102;
        }

        else
        {
          (*v97)();
          sub_1000DAEC4();
          v64 = sub_1000DAEE4();
          v24 = *v96;
          (*v96)(v62, v63);
          if (v64)
          {
            (v24)(v109, v63);
            v25 = v129;
            (*v101)(v116, v129);
            v36 = v102;
LABEL_38:
            v29 = v128;
            if (v136)
            {
              v38 = v53;
              goto LABEL_88;
            }

LABEL_21:
            v54 = *(v44 + 16);
            sub_10004676C(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v54 == v135)
            {
LABEL_86:
              v94 = v104;
              goto LABEL_89;
            }

            v1 = v131;
            goto LABEL_8;
          }

          sub_1000DAEB4();
          v95 = v24;
          v24 = v109;
          v65 = sub_1000DAEE4();
          v66 = v62;
          v67 = v95;
          (v95)(v66, v63);
          (v67)(v24, v63);
          v25 = v129;
          (*v101)(v116, v129);
          v36 = v102;
          if (v65)
          {
            goto LABEL_38;
          }

          v29 = v128;
        }

        v1 = v131;
      }

      v42 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      v43 = v53;
LABEL_7:
      sub_10004676C(v43, v42);
LABEL_8:
      ++v40;
      if (v45 == v132)
      {
        goto LABEL_44;
      }
    }

    v50 = v48 - 2;
    v51 = v36;
    v52 = v126;
    if (v50 >= 2)
    {

      v51 = v36 + *(sub_100007BC0(&qword_1001223B0, &qword_1000E23B0) + 48);
    }

LABEL_24:
    v55 = v120;
    sub_1000467CC(v51, v120);
    sub_100046830(v55, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10004676C(v55, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v24 = v123;
      (*v117)(v123, v52, v25);
    }

    else
    {
      v56 = v114;
      sub_1000DA834();
      v57 = v123;
      sub_1000DA804();
      v29 = v128;

      v58 = v56;
      v1 = v131;
      (*v99)(v58, v115);
      v59 = v55;
      v24 = v57;
      v25 = v129;
      sub_10004676C(v59, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v60 = 0;
    goto LABEL_28;
  }

LABEL_44:
  v36 = *(v100 + qword_100127268);
  if (v36 >> 62)
  {
    v24 = sub_1000DCB14();
    v1 = v130;
    if (v24)
    {
      goto LABEL_46;
    }

LABEL_94:
    (*(v113 + 56))(v104, 1, 1, v25);
    return;
  }

  v24 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1 = v130;
  if (!v24)
  {
    goto LABEL_94;
  }

LABEL_46:
  v68 = 0;
  v38 = (v36 & 0xC000000000000001);
  v134 = v36 & 0xFFFFFFFFFFFFFF8;
  v131 = v113 + 56;
  v117 = (v106 + 8);
  v123 = (v113 + 32);
  v126 = (v113 + 48);
  v121 = (v107 + 48);
  v116 = (v107 + 32);
  v109 = (v107 + 8);
  v120 = (v113 + 8);
  v132 = v24;
  v133 = v36 & 0xC000000000000001;
  v122 = v36;
  while (1)
  {
    if (v38)
    {
      v70 = sub_1000DCA24();
      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v68 >= *(v134 + 16))
      {
        goto LABEL_91;
      }

      v70 = *(v36 + 8 * v68 + 32);

      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v135 = *v137;
    v136 = *(v137 + 8);
    v72 = OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType;
    sub_100046830(v70 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v1, type metadata accessor for AssetAttachment.AssetType);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 > 1)
    {
      break;
    }

    if (v73)
    {

      v69 = type metadata accessor for AssetAttachment.AssetType;
      goto LABEL_48;
    }

LABEL_47:

    v69 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_48:
    sub_10004676C(v1, v69);
LABEL_49:
    ++v68;
    if (v71 == v24)
    {
      goto LABEL_94;
    }
  }

  if (v73 != 2)
  {
    if (v73 != 3)
    {

      v74 = v70 + v72;
      v75 = v118;
      sub_100046830(v74, v118, type metadata accessor for AssetAttachment.AssetType);
      v76 = swift_getEnumCaseMultiPayload();
      v77 = v76;
      if (v76 <= 1)
      {
        v79 = v75;
        if (!v77)
        {
          goto LABEL_65;
        }

        sub_10004676C(v75, type metadata accessor for AssetAttachment.AssetType);
        v85 = 1;
        v84 = v25;
        v83 = v119;
      }

      else
      {
        v78 = v76 - 2;
        v79 = v75;
        if (v78 >= 2)
        {

          v79 = v75 + *(sub_100007BC0(&qword_1001223B0, &qword_1000E23B0) + 48);
        }

LABEL_65:
        v81 = v111;
        sub_1000467CC(v79, v111);
        v82 = v112;
        sub_100046830(v81, v112, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_10004676C(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v83 = v119;
          v84 = v129;
          (*v123)(v119, v82, v129);
          v85 = 0;
        }

        else
        {
          v86 = v114;
          sub_1000DA834();
          v83 = v119;
          sub_1000DA804();
          v1 = v130;

          (*v117)(v86, v115);
          sub_10004676C(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v85 = 0;
          v84 = v129;
        }

        v24 = v132;
      }

      (*v131)(v83, v85, 1, v84);
      v38 = (v1 + *(sub_100007BC0(&qword_1001223B0, &qword_1000E23B0) + 48));
      if ((*v126)(v83, 1, v84) == 1)
      {

        sub_1000080B0(v83, &qword_100121580, &qword_1000E14E0);
        v25 = v84;
        v29 = v128;
        goto LABEL_74;
      }

      v87 = v110;
      (*v123)(v110, v83, v84);
      sub_1000D9D24();
      v88 = v124;
      sub_1000DAE74();
      v89 = v105;
      sub_1000DAE44();
      v90 = v125;
      if ((*v121)(v89, 1, v125) == 1)
      {

        (*v120)(v87, v84);
        sub_1000080B0(v89, &qword_1001223A8, &unk_1000E2C90);
        v25 = v84;
        v29 = v128;
        v36 = v122;
LABEL_73:
        v24 = v132;
LABEL_74:
        sub_10004676C(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_75:
        v1 = v130;
        v38 = v133;
        goto LABEL_49;
      }

      v91 = v98;
      (*v116)(v98, v89, v90);
      sub_1000DAEC4();
      v92 = sub_1000DAEE4();
      v93 = *v109;
      (*v109)(v88, v90);
      if (v92)
      {
        v93(v91, v90);
        v25 = v129;
        (*v120)(v110, v129);
        v29 = v128;
        v36 = v122;
      }

      else
      {
        sub_1000DAEB4();
        LODWORD(v108) = sub_1000DAEE4();
        v93(v88, v90);
        v93(v91, v90);
        v25 = v129;
        (*v120)(v110, v129);
        v29 = v128;
        v36 = v122;
        if ((v108 & 1) == 0)
        {

          goto LABEL_73;
        }
      }

      v24 = v132;
      if (v136)
      {
        goto LABEL_88;
      }

LABEL_62:
      v80 = *(v70 + 16);
      sub_10004676C(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (v80 == v135)
      {
        goto LABEL_86;
      }

      goto LABEL_75;
    }

    goto LABEL_47;
  }

  v38 = v1;
  if ((v136 & 1) == 0)
  {
    goto LABEL_62;
  }

  v38 = v130;
LABEL_88:
  v94 = v104;
  sub_10004676C(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_89:
  sub_1000B3098(v94);
}

id sub_1000466A8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoThumbnailCacheOperation(uint64_t a1)
{
  result = qword_100122270;
  if (!qword_100122270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004676C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000467CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100046898(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v10 = HIBYTE(a2) & 0xF;
  v11 = HIBYTE(a4) & 0xF;
  if (a2)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a2) & 0xF;
    }

    v13 = a2;
    v14 = a1;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v15 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a4) & 0xF;
  }

  v13 = a4;
  v14 = a3;
  if (v15)
  {
LABEL_9:
    sub_100046B08(10, v14, v13);
    v16 = sub_1000DBF04();
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  [v5 setDisplayName:v16];

  if (a4)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v17 = v11;
    }

    if (v17)
    {
      goto LABEL_19;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v18 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = v10;
  }

  if (v18)
  {
LABEL_19:
    v19 = sub_1000DBF04();
  }

  else
  {
LABEL_20:
    v19 = 0;
  }

  v20 = v19;
  [v5 setContentDescription:?];
}

id sub_1000469D8()
{
  v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v1 setAlignment:{objc_msgSend(v0, "alignment")}];
  [v0 firstLineHeadIndent];
  [v1 setFirstLineHeadIndent:?];
  [v0 headIndent];
  [v1 setHeadIndent:?];
  [v1 setBaseWritingDirection:{objc_msgSend(v0, "baseWritingDirection")}];
  isa = [v0 textLists];
  if (!isa)
  {
    sub_1000483AC();
    sub_1000DC134();
    isa = sub_1000DC124().super.isa;
  }

  [v1 setTextLists:isa];

  return v1;
}

uint64_t sub_100046B08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = v6;

  sub_100007BC0(&qword_1001223D0, &qword_1000E23D0);
  sub_100007C50();
  sub_1000391D4(&qword_1001223D8, &qword_1001223D0, &qword_1000E23D0, &protocol conformance descriptor for Range<A>);
  sub_1000DC844();

  swift_beginAccess();
  if (*(v6 + 32))
  {
  }

  else
  {
    sub_1000DC064();
    a2 = sub_1000DBFB4();
  }

  return a2;
}

uint64_t sub_100046D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 >= a9)
    {
      result = swift_beginAccess();
      *(a10 + 16) = a5;
      *(a10 + 24) = a6;
      *(a10 + 32) = 0;
      *a7 = 1;
    }
  }

  return result;
}

double *sub_100046DB8(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_100120648, &qword_1000E0198);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100046EE0(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_100120678, &qword_1000E01C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_100046FE4(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_100122408, &qword_1000E2400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_100007BC0(&qword_100122410, &unk_1000E3880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100047140(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10004724C(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_1001223E0, &qword_1000E23D8);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_100047350(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_100122400, &qword_1000E23F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_100007BC0(&qword_1001208E8, &qword_1000E0360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100047540(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007BC0(&qword_100122418, &qword_1000E2408);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_100007BC0(&qword_100122420, &qword_1000E2410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000476C4(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007BC0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000478A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v4 = sub_1000D9ED4();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D9F24();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D9F54();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D9EF4();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D9CF4();
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000DA274();
  __chkstk_darwin(v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000DA204();
  __chkstk_darwin(v16 - 8);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000DA124();
  __chkstk_darwin(v18 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007BC0(&qword_1001223B8, &qword_1000E23C8);
  __chkstk_darwin(v20 - 8);
  v69 = &v67 - v21;
  v22 = sub_100007BC0(&qword_1001223C0, &qword_1000E4C80);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = sub_1000D9F84();
  v67 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v68 = &v67 - v30;
  v31 = __chkstk_darwin(v29);
  v70 = &v67 - v32;
  v33 = __chkstk_darwin(v31);
  v72 = &v67 - v34;
  __chkstk_darwin(v33);
  v73 = &v67 - v35;
  v36 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v36 - 8);
  v38 = &v67 - v37;
  v39 = sub_1000DA084();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;

  v43 = sub_100047140(0, 1, 1, _swiftEmptyArrayStorage);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_100047140((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[2 * v45];
  v47 = v90;
  *(v46 + 4) = v89;
  *(v46 + 5) = v42;
  sub_100026B98(v47, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_100048260(v38);
  }

  else
  {
    v48 = *(v40 + 32);
    v90 = v39;
    v48(v91, v38, v39);
    v49 = sub_1000D9E74();
    (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
    v50 = sub_1000D9E54();
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000D9CE4();
    sub_1000D9E94();
    v51 = v77;
    sub_1000D9EE4();
    v52 = v68;
    sub_1000D9EA4();
    (*(v78 + 8))(v51, v79);
    v53 = *(v67 + 8);
    v53(v28, v25);
    v54 = v80;
    sub_1000D9F34();
    v55 = v70;
    sub_1000D9F74();
    (*(v81 + 8))(v54, v82);
    v53(v52, v25);
    v56 = v83;
    sub_1000D9F04();
    v57 = v72;
    sub_1000D9EB4();
    (*(v84 + 8))(v56, v85);
    v53(v55, v25);
    v58 = v86;
    sub_1000D9EC4();
    v59 = v73;
    sub_1000D9E84();
    (*(v87 + 8))(v58, v88);
    v53(v57, v25);
    sub_1000482C8();
    sub_1000DA064();
    v53(v59, v25);
    v60 = v92;
    v61 = v93;
    v63 = *(v43 + 2);
    v62 = *(v43 + 3);
    if (v63 >= v62 >> 1)
    {
      v43 = sub_100047140((v62 > 1), v63 + 1, 1, v43);
    }

    (*(v40 + 8))(v91, v90);
    *(v43 + 2) = v63 + 1;
    v64 = &v43[2 * v63];
    *(v64 + 4) = v60;
    *(v64 + 5) = v61;
  }

  v92 = v43;
  sub_100007BC0(&qword_100121560, &unk_1000E2040);
  sub_1000391D4(&qword_100121870, &qword_100121560, &unk_1000E2040, &protocol conformance descriptor for [A]);
  v65 = sub_1000DBDE4();

  return v65;
}

uint64_t sub_100048260(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000482C8()
{
  result = qword_1001223C8;
  if (!qword_1001223C8)
  {
    sub_1000D9F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001223C8);
  }

  return result;
}

uint64_t sub_100048340()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000483AC()
{
  result = qword_10011FDD8;
  if (!qword_10011FDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011FDD8);
  }

  return result;
}

uint64_t sub_10004840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA084();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100007BC0(&qword_100122430, &unk_1000E2460);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100048548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000DA084();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007BC0(&qword_100122430, &unk_1000E2460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for StreaksWidgetTimelineEntry(uint64_t a1)
{
  result = qword_100122490;
  if (!qword_100122490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000486A8(uint64_t a1)
{
  sub_1000DA084();
  if (v1 <= 0x3F)
  {
    sub_1000487DC(319, &qword_1001224A0, &type metadata for StreaksWidgetStreak);
    if (v2 <= 0x3F)
    {
      sub_100048784(319);
      if (v3 <= 0x3F)
      {
        sub_1000487DC(319, &unk_1001224B0, &type metadata for JournalWidgetDemoMode.TimelineEntryAppearance);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100048784(uint64_t a1)
{
  if (!qword_1001224A8)
  {
    sub_1000DBCC4();
    v1 = sub_1000DC7C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1001224A8);
    }
  }
}

void sub_1000487DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000DC7C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100048828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000DA084();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000488A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100122430, &unk_1000E2460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100048920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookAsset(uint64_t a1)
{
  result = qword_100122518;
  if (!qword_100122518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100048A10(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure9BookAsset_metadata) = a1;

  return result;
}

id sub_100048A28()
{
  v1 = v0;
  v2 = sub_1000DA124();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v5 - 8);
  v41 = v40 - v6;
  v7 = sub_1000DAF04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007BC0(&qword_1001204D0, &qword_1000E0070);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = sub_1000DA534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015B6C(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000080B0(v13, &qword_1001204D0, &qword_1000E0070);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1000DAE94();
    v19 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_1000DAE64().super.isa;
    v18 = [v19 initWithContentType:isa];

    (*(v8 + 8))(v10, v7);
    sub_1000DA514();
    if (v21)
    {
      v22 = sub_1000DBF04();
    }

    else
    {
      v22 = 0;
    }

    [v18 setDisplayName:v22];

    sub_1000DA524();
    if (v23)
    {
      v24 = sub_1000DBF04();
    }

    else
    {
      v24 = 0;
    }

    v25 = v41;
    [v18 setContentDescription:v24];

    v26 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v26 && (v27 = [v26 entry]) != 0)
    {
      v28 = v27;
      sub_1000DA3A4();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = sub_1000DA084();
    (*(*(v30 - 8) + 56))(v25, v29, 1, v30);
    sub_1000DBE74();
    sub_1000DA114();
    v31 = sub_1000DBF64();
    v33 = v32;
    sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000DFEF0;
    v35 = sub_1000478A0(v31, v33, v25);
    v37 = v36;

    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = sub_1000DC124().super.isa;

    [v18 setAlternateNames:v38];

    sub_1000080B0(v25, &qword_1001203B8, &qword_1000E0460);
    (*(v15 + 8))(v17, v14);
  }

  return v18;
}

uint64_t sub_100048FF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA534();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049038@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v153 = a2;
  v123 = a3;
  v4 = sub_1000DBC94();
  __chkstk_darwin(v4 - 8);
  v124 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StreaksWidgetTimelineEntry(0);
  v135 = *(v6 - 8);
  v136 = v6;
  v7 = __chkstk_darwin(v6);
  v142 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v122 = &v117 - v10;
  v11 = __chkstk_darwin(v9);
  v121 = &v117 - v12;
  __chkstk_darwin(v11);
  v118 = &v117 - v13;
  v14 = sub_100007BC0(&qword_100121B98, &qword_1000E1CF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v117 - v18;
  v20 = sub_100007BC0(&qword_100121BA0, &qword_1000E1CF8);
  __chkstk_darwin(v20);
  v154 = &v117 - v21;
  v22 = sub_1000DA084();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v130 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v141 = &v117 - v27;
  v28 = __chkstk_darwin(v26);
  v120 = &v117 - v29;
  v30 = __chkstk_darwin(v28);
  v117 = &v117 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v117 - v33;
  __chkstk_darwin(v32);
  v36 = &v117 - v35;
  sub_1000DA054();
  sub_1000D9FD4();
  v133 = sub_10004A00C(&qword_100120AE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((sub_1000DBE14() & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v149 = v36;
  v37 = v23[2];
  v119 = a1;
  v147 = v37;
  v148 = v23 + 2;
  v37(v19, a1, v22);
  v38 = *(v14 + 48);
  v152 = v20;
  v39 = v23[4];
  v134 = v34;
  v39(&v19[v38], v34, v22);
  sub_100049EDC(v19, v17);
  v40 = *(v14 + 48);
  v41 = v14;
  v129 = v14;
  v42 = v154;
  v39(v154, v17, v22);
  v43 = v23[1];
  v43(&v17[v40], v22);
  sub_10003C9B0(v19, v17);
  v44 = *(v41 + 48);
  v34 = *(v152 + 36);
  v144 = v39;
  v145 = v23 + 4;
  v39(&v34[v42], &v17[v44], v22);
  v45 = v153;
  v137 = (v23 + 1);
  v146 = v43;
  v43(v17, v22);
  v138 = *(v45 + 16);
  if (v138)
  {
    v126 = v19;
    v127 = v17;
    v46 = 0;
    v128 = 0;
    v140 = 0;
    v47 = (v45 + 40);
    v150 = _swiftEmptyArrayStorage;
    v131 = xmmword_1000E1190;
    v132 = 2;
    v143 = 2;
    v19 = v137;
    v48 = v149;
    v125 = v34;
    do
    {
      v153 = *(v47 - 8);
      v50 = *v47;
      v151 = v47;
      v152 = v50;
      if (v46)
      {
        v51 = v134;
        sub_1000D9FD4();
        if ((sub_1000DBE14() & 1) == 0)
        {
          __break(1u);
          goto LABEL_51;
        }

        v52 = v154;
        v53 = &v34[v154];
        v54 = v126;
        v147(v126, v53, v22);
        sub_10004A054(v52);
        v139 = v46;
        v55 = v19;
        v56 = v129;
        v57 = v144;
        v144(v54 + *(v129 + 48), v51, v22);
        v58 = v22;
        v59 = v127;
        sub_100049EDC(v54, v127);
        v60 = *(v56 + 48);
        v57(v52, v59, v58);
        v61 = v59 + v60;
        v48 = v149;
        v62 = v146;
        v146(v61, v58);
        v63 = v54;
        v34 = v125;
        sub_10003C9B0(v63, v59);
        v64 = *(v56 + 48);
        v19 = v55;
        v46 = v139;
        v57(&v34[v52], v59 + v64, v58);
        v65 = v59;
        v22 = v58;
        v62(v65, v58);
      }

      v66 = v154;
      if (sub_1000DA004() & 1) != 0 || (sub_1000DBE14() & 1) != 0 && (v66 = v48, (sub_1000DBDF4()))
      {
        v67 = v141;
        v68 = v66;
        v69 = v147;
        v147(v141, v68, v22);
        v70 = v143;
        v72 = v152;
        v71 = v153;
        if (!v46)
        {
          v70 = v153;
        }

        v143 = v70;
        v73 = v140;
        if (!v46)
        {
          v73 = v152;
        }

        v140 = v73;
        v74 = v130;
        v69(v130, v67, v22);
        if (v72)
        {
          v75 = v71;
        }

        else
        {
          v75 = 2;
        }

        v76 = v136;
        v77 = v136[7];
        v78 = sub_1000DBCC4();
        v79 = v142;
        (*(*(v78 - 8) + 56))(v142 + v77, 1, 1, v78);
        v144(v79, v74, v22);
        v80 = (v79 + v76[5]);
        *v80 = v75;
        v80[1] = v72;
        *(v79 + v76[6]) = v131;
        *(v79 + v76[8]) = 1;
        *(v79 + v76[9]) = 1;
        v81 = v150;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1000474C8(0, *(v81 + 2) + 1, 1, v81);
        }

        v83 = *(v81 + 2);
        v82 = *(v81 + 3);
        v150 = v81;
        v19 = v137;
        if (v83 >= v82 >> 1)
        {
          v150 = sub_1000474C8((v82 > 1), v83 + 1, 1, v150);
        }

        v146(v141, v22);
        v49 = v150;
        *(v150 + 2) = v83 + 1;
        sub_10004A0BC(v142, v49 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v83);
        v132 = v153;
        v128 = v152;
        v48 = v149;
      }

      ++v46;
      v47 = v151 + 2;
    }

    while (v138 != v46);
    v84 = v34;
    v85 = v143;
    if (v143 == 2)
    {
      v34 = v123;
      v19 = v122;
    }

    else
    {
      v88 = sub_1000DA004();
      v34 = v123;
      v19 = v122;
      if (v88)
      {
        v89 = v117;
        v147(v117, v48, v22);
        v90 = v140;
        if (v140)
        {
          v91 = v85;
        }

        else
        {
          v91 = 2;
        }

        v92 = v136;
        v93 = v136[7];
        v94 = sub_1000DBCC4();
        v95 = v118;
        (*(*(v94 - 8) + 56))(&v118[v93], 1, 1, v94);
        v144(v95, v89, v22);
        v96 = (v95 + v92[5]);
        *v96 = v91;
        v96[1] = v90;
        *(v95 + v92[6]) = v131;
        *(v95 + v92[8]) = 1;
        *(v95 + v92[9]) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_1000474C8(0, *(v150 + 2) + 1, 1, v150);
        }

        v98 = *(v150 + 2);
        v97 = *(v150 + 3);
        v99 = v132;
        if (v98 >= v97 >> 1)
        {
          v150 = sub_1000474C8((v97 > 1), v98 + 1, 1, v150);
        }

        v100 = v150;
        *(v150 + 2) = v98 + 1;
        sub_10004A0BC(v95, v100 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v98);
        v48 = v149;
        v34 = v123;
LABEL_38:
        if (v99 == 2)
        {
          v86 = v150;
          v87 = v150[2];
          if (v87 == 0.0)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }

        v104 = &v84[v154];
        v105 = v120;
        v147(v120, v104, v22);
        v106 = v128;
        if (v128)
        {
          v107 = v99;
        }

        else
        {
          v107 = 2;
        }

        v108 = v136;
        v109 = v136[7];
        v110 = sub_1000DBCC4();
        v111 = v121;
        (*(*(v110 - 8) + 56))(v121 + v109, 1, 1, v110);
        v144(v111, v105, v22);
        v112 = (v111 + v108[5]);
        *v112 = v107;
        v112[1] = v106;
        *(v111 + v108[6]) = v131;
        *(v111 + v108[8]) = 1;
        *(v111 + v108[9]) = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_45:
          v114 = *(v150 + 2);
          v113 = *(v150 + 3);
          if (v114 >= v113 >> 1)
          {
            v150 = sub_1000474C8((v113 > 1), v114 + 1, 1, v150);
          }

          v86 = v150;
          *(v150 + 2) = v114 + 1;
          sub_10004A0BC(v121, v86 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v114);
          v48 = v149;
          v87 = v86[2];
          if (v87 == 0.0)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }

LABEL_52:
        v150 = sub_1000474C8(0, *(v150 + 2) + 1, 1, v150);
        goto LABEL_45;
      }
    }

    v99 = v132;
    goto LABEL_38;
  }

  v86 = _swiftEmptyArrayStorage;
  v48 = v149;
  v34 = v123;
  v19 = v122;
  v87 = _swiftEmptyArrayStorage[2];
  if (v87 == 0.0)
  {
LABEL_48:
    sub_10004A054(v154);
    v146(v48, v22);

    v103 = 1;
    goto LABEL_49;
  }

LABEL_40:
  sub_100049F4C(v86 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * (*&v87 - 1), v19);
  v101 = v134;
  v147(v134, v19, v22);
  sub_100049FB0(v19);
  sub_1000DBC74();
  sub_10004A00C(&qword_100121430, type metadata accessor for StreaksWidgetTimelineEntry, &unk_1000E248C);
  sub_1000DBD24();
  v102 = v146;
  v146(v101, v22);
  sub_10004A054(v154);
  v102(v48, v22);
  v103 = 0;
LABEL_49:
  v115 = sub_100007BC0(&qword_100121440, &unk_1000E25E0);
  return (*(*(v115 - 8) + 56))(v34, v103, 1, v115);
}

unint64_t sub_100049E88()
{
  result = qword_100122600;
  if (!qword_100122600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122600);
  }

  return result;
}

uint64_t sub_100049EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100121B98, &qword_1000E1CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreaksWidgetTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049FB0(uint64_t a1)
{
  v2 = type metadata accessor for StreaksWidgetTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004A054(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100121BA0, &qword_1000E1CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreaksWidgetTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A120()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100122608);
  v1 = sub_100007EBC(v0, qword_100122608);
  if (qword_10011FA48 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_100127098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10004A1E8(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 272) = a1;
  v3 = sub_1000DA374();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  sub_1000DC224();
  *(v2 + 184) = sub_1000DC214();
  v5 = sub_1000DC1D4();
  *(v2 + 192) = v5;
  *(v2 + 200) = v4;

  return _swift_task_switch(sub_10004A2E0, v5, v4);
}

double *sub_10004A2E0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 272);
  *(v0 + 208) = CFAbsoluteTimeGetCurrent();
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_sizeType) = v2;
  v3 = sub_100037454(v2);
  v5 = v4;
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  if (v2 == 3)
  {
    v10 = -70.0;
  }

  else if (v2 == 7)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 104))(v6, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v9 = sub_1000DA364();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      v10 = -145.0;
    }

    else
    {
      v10 = -116.0;
    }
  }

  else
  {
    v10 = -16.0;
  }

  v11 = *(*(v0 + 152) + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_routeCoordinates);
  if (v11 >> 62)
  {
    v12 = sub_1000DCB14();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {

    result = sub_1000179E4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_1000DCA24();
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      v16 = v15;
      [v15 coordinate];
      v17 = MKMapPointForCoordinate(v31);

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (*&v19 >= *&v18 >> 1)
      {
        sub_1000179E4((*&v18 > 1uLL), *&v19 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v19 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v19 + 4] = v17;
    }
  }

  *(v0 + 232) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 272);

  v22 = sub_10004C780(v21, v20, v3, v5, (v5 + v10) * 0.5);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_10004A5D4;

  return sub_10004CDC0(v22, v24, v26, v28, v3, v5);
}

uint64_t sub_10004A5D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_10004A6FC, v4, v3);
}

uint64_t sub_10004A6FC()
{
  v1 = *(v0 + 152);
  [*(v0 + 248) _setRendersInBackground:1];
  v2 = OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_mapSnapshotter;
  v3 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure17RouteMapGenerator_mapSnapshotter);
  if (v3)
  {
    [v3 cancel];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 248);
  *(v1 + v2) = 0;

  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  v8 = *(v1 + v2);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = qword_10011FAF0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_1001271E8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10004A950;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_100007BC0(&qword_100122730, &unk_1000E26D0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100097F90;
    *(v0 + 104) = &unk_10010F278;
    *(v0 + 112) = v12;
    [v10 startWithQueue:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);

    sub_10004ADC8(*(v0 + 152), *(v0 + 216), *(v0 + 224), *(v0 + 208));

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_10004A950()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_10004AB70;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_10004AA68;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004AA68()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);

  v4 = *(v0 + 144);

  v5 = [objc_opt_self() polylineWithPoints:v3 + 32 count:*(v3 + 16)];

  [v1 mapRect];
  sub_10004D19C(v5, v4, v6, v7, v8, v9);
  v11 = v10;

  sub_10004ADC8(*(v0 + 152), *(v0 + 216), *(v0 + 224), *(v0 + 208));

  v12 = *(v0 + 8);

  return v12(v11);
}