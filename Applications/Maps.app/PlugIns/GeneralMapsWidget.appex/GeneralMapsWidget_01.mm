double sub_100021FB0(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10007DEB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007DED8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = *&a3[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  aBlock[4] = sub_10002643C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8410;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  v21 = a4;

  sub_10007DEC8();
  v23[1] = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v19);
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);

  return result;
}

uint64_t sub_100022244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v7 = sub_10007D5C8();
  sub_1000046BC(v7, qword_1000E4B28);
  v8 = sub_10007D5A8();
  v9 = sub_10007E298();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "GeneralMapsStateCollector: GEOMapItemFromMapsSuggestionsEntry complete", v10, 2u);
  }

  result = sub_100022364(a2, a3, a4);
  if ((result & 1) == 0)
  {
    return a3(0);
  }

  return result;
}

BOOL sub_100022364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10007DF48();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = sub_10007DF68();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  sub_100015ECC(&v29);
  if (v29)
  {
    v23 = v29;
    v26 = v32;
    v27 = v33;
    v28[0] = v34[0];
    *(v28 + 9) = *(v34 + 9);
    v24 = v30;
    v25 = v31;
    v13 = v29;
    sub_100024FF8(&v23);
    v14 = *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_transportModePredictor);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v22[4] = sub_1000250F8;
    v22[5] = v15;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_1000226BC;
    v22[3] = &unk_1000C82A8;
    v16 = _Block_copy(v22);

    LODWORD(v14) = [v14 transportTypeFromLocation:v13 toEntry:a1 completion:v16];

    _Block_release(v16);
    return v14 == 1;
  }

  v23 = 0;
  v26 = v32;
  v27 = v33;
  v28[0] = v34[0];
  *(v28 + 9) = *(v34 + 9);
  v24 = v30;
  v25 = v31;
  sub_100024FF8(&v23);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = sub_10007D5C8();
  sub_1000046BC(v18, qword_1000E4B28);
  v19 = sub_10007D5A8();
  v20 = sub_10007E298();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "GeneralMapsStateCollector: determineTransportType had no origin location", v21, 2u);
  }

  return 0;
}

void sub_1000226BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100022734()
{
  v0 = sub_10007D418();
  v32 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_10007D3B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  if ((v37 & 1) != 0 || v36)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v16 = sub_10007D5C8();
    sub_1000046BC(v16, qword_1000E4B28);
    v17 = sub_10007D5A8();
    v18 = sub_10007E298();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_22;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "GeneralMapsStateCollector: canFetchRoutesForSuggestions location is not precise";
    goto LABEL_21;
  }

  sub_100015ECC(&v36);
  v10 = v36;
  sub_100024FF8(&v36);
  if (!v10)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v21 = sub_10007D5C8();
    sub_1000046BC(v21, qword_1000E4B28);
    v17 = sub_10007D5A8();
    v18 = sub_10007E298();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_22;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "GeneralMapsStateCollector: canFetchRoutesForSuggestions no location";
    goto LABEL_21;
  }

  Integer = GEOConfigGetInteger();
  if (Integer <= 0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v22 = sub_10007D5C8();
    sub_1000046BC(v22, qword_1000E4B28);
    v17 = sub_10007D5A8();
    v18 = sub_10007E298();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_22;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "GeneralMapsStateCollector: canFetchRoutesForSuggestions routing requests not allowed";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

LABEL_22:

    return 0;
  }

  v12 = Integer;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = sub_10007E138();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    sub_10007E3D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  if (*(&v34 + 1))
  {
    v24 = swift_dynamicCast();
    (*(v7 + 56))(v5, v24 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000256C0(v35, &qword_1000DE930, &unk_100083CC0);
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  sub_10007D3A8();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1000256C0(v5, &qword_1000DE928, &unk_100082900);
  }

LABEL_31:
  v25 = sub_10007E138();
  v26 = [v13 integerForKey:v25];

  sub_10007D408();
  LOBYTE(v25) = sub_10007D3F8();
  (*(v32 + 8))(v2, v0);
  if ((v25 & 1) != 0 && v26 >= v12)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v27 = sub_10007D5C8();
    sub_1000046BC(v27, qword_1000E4B28);
    v28 = sub_10007D5A8();
    v29 = sub_10007E298();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v28, v29, "GeneralMapsStateCollector: canFetchRoutesForSuggestions already fetched the maximum number of routes for today (%ld)", v30, 0xCu);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  (*(v7 + 8))(v9, v6);

  return 1;
}

void sub_100022E8C(void *a1)
{
  v2 = v1;
  v98 = a1;
  v3 = sub_10007D418();
  v91 = *(v3 - 1);
  v92 = v3;
  __chkstk_darwin(v3);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v6 - 8);
  v8 = &v84 - v7;
  v9 = sub_10007D3B8();
  v10 = *(v9 - 8);
  v96 = v9;
  v97 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v94 = &v84 - v14;
  v15 = __chkstk_darwin(v13);
  v95 = &v84 - v16;
  __chkstk_darwin(v15);
  v99 = &v84 - v17;
  v18 = sub_10007DF48();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  LOBYTE(v22) = sub_10007DF68();
  (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
LABEL_5:
    v90 = v21;
    v24 = sub_10007D5C8();
    v87 = sub_1000046BC(v24, qword_1000E4B28);
    v25 = sub_10007D5A8();
    v26 = sub_10007E2C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "GeneralMapsStateCollector: fetchRouteForSuggestion BEGIN", v27, 2u);
    }

    v88 = v2;
    dispatch_group_enter(*&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
    sub_10007D3A8();
    v28 = [objc_opt_self() standardUserDefaults];
    v29 = sub_10007E138();
    v30 = [v28 objectForKey:v29];

    if (v30)
    {
      sub_10007E3D8();
      swift_unknownObjectRelease();
    }

    else
    {
      v104 = 0u;
      v105 = 0u;
    }

    v40 = v96;
    v39 = v97;
    v100 = v104;
    v101 = v105;
    v89 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (*(&v105 + 1))
    {
      v41 = swift_dynamicCast();
      (*(v39 + 56))(v8, v41 ^ 1u, 1, v40);
      if ((*(v39 + 48))(v8, 1, v40) != 1)
      {
        (*(v39 + 32))(v95, v8, v40);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1000256C0(&v100, &qword_1000DE930, &unk_100083CC0);
      (*(v39 + 56))(v8, 1, 1, v40);
    }

    sub_10007D3A8();
    if ((*(v39 + 48))(v8, 1, v40) != 1)
    {
      sub_1000256C0(v8, &qword_1000DE928, &unk_100082900);
    }

LABEL_26:
    v42 = sub_10007E138();
    v43 = [v28 integerForKey:v42];

    sub_10007D408();
    LOBYTE(v42) = sub_10007D3F8();
    v91[1](v5, v92);
    if (v42)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v44 = 1;
    }

    isa = sub_10007D2C8().super.isa;
    v46 = sub_10007E138();
    [v28 setObject:isa forKey:v46];

    v47 = sub_10007E138();
    [v28 setInteger:v44 forKey:v47];

    BOOL = GEOConfigGetBOOL();
    v49 = GEOTransportTypeFromUserPreference();
    v50 = v98;
    if (![v98 containsKey:@"MapsSuggestionsTransportTypeKey"])
    {
      goto LABEL_34;
    }

    v51 = [v50 integerForKey:@"MapsSuggestionsTransportTypeKey"];
    v52 = v90;
    if (v51 >= 0xFFFFFFFF80000000)
    {
      v49 = v51;
      if (v51 <= 0x7FFFFFFF)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_34:
      v52 = v90;
LABEL_35:
      v92 = v28;
      if (v49 > 5)
      {
        v53 = 1;
      }

      else
      {
        v53 = qword_100082AB8[v49];
      }

      v54 = [objc_allocWithZone(MKDirectionsRequest) init];
      [v52 coordinate];
      v57 = [objc_allocWithZone(MKPlacemark) initWithCoordinate:{v55, v56}];
      v58 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v57];

      [v54 setSource:v58];
      [v54 setDestination:v93];
      [v54 setTransportType:v53];
      [v54 _setUseBackgroundURL:BOOL];
      v91 = [objc_allocWithZone(MKDirections) initWithRequest:v54];
      v59 = [objc_opt_self() sharedService];
      if (v59)
      {
        v60 = v59;
        v86 = v54;
        v84 = v44;
        v61 = [v59 defaultTraits];

        if (v61)
        {
          [v61 setIsWidgetRequest:1];
          v62 = [objc_allocWithZone(GEOLocation) initWithCLLocation:v52];
          [v61 setDeviceLocation:v62];

          [v61 addTransportType:v49];
          v63 = v96;
          v64 = v97;
          v85 = *(v97 + 16);
          v65 = v94;
          v85(v94, v99, v96);
          v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v67 = swift_allocObject();
          v68 = v88;
          v69 = v98;
          *(v67 + 16) = v88;
          *(v67 + 24) = v69;
          (*(v64 + 32))(v67 + v66, v65, v63);
          v102 = sub_100025028;
          v103 = v67;
          *&v100 = _NSConcreteStackBlock;
          *(&v100 + 1) = 1107296256;
          *&v101 = sub_100026438;
          *(&v101 + 1) = &unk_1000C8258;
          v70 = _Block_copy(&v100);
          v71 = v61;
          v72 = v68;
          v73 = v69;
          v74 = v63;

          v75 = v91;
          [v91 _calculateDirectionsWithTraits:v71 completionHandler:v70];
          _Block_release(v70);
          v98 = v71;

          v76 = v89;
          v85(v89, v99, v74);
          v77 = sub_10007D5A8();
          v78 = sub_10007E298();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 134349312;
            v80 = v94;
            sub_10007D3A8();
            sub_10007D2B8();
            v82 = v81;
            v83 = *(v97 + 8);
            v83(v80, v74);
            v83(v76, v74);
            *(v79 + 4) = v82;
            *(v79 + 12) = 2050;
            *(v79 + 14) = v84;
            _os_log_impl(&_mh_execute_header, v77, v78, "GeneralMapsStateCollector: fetchRouteForSuggestion blocked caller for %{public}f seconds, request %{public}ld", v79, 0x16u);
          }

          else
          {

            v83 = *(v97 + 8);
            v83(v76, v74);
          }

          v83(v95, v74);
          v83(v99, v74);
          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100015ECC(&v112);
  if (v112)
  {
    v106 = v112;
    v109 = v115;
    v110 = v116;
    v111[0] = v117[0];
    *(v111 + 9) = *(v117 + 9);
    v107 = v113;
    v108 = v114;
    v21 = v112;
    sub_100024FF8(&v106);
    v93 = [v98 MKMapItem];
    if (v93)
    {
      if (qword_1000DE268 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_45;
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v35 = sub_10007D5C8();
    sub_1000046BC(v35, qword_1000E4B28);
    v36 = sub_10007D5A8();
    v37 = sub_10007E2A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "GeneralMapsStateCollector: fetchRouteForSuggestion had no map item", v38, 2u);
    }
  }

  else
  {
    v106 = 0;
    v109 = v115;
    v110 = v116;
    v111[0] = v117[0];
    *(v111 + 9) = *(v117 + 9);
    v107 = v113;
    v108 = v114;
    sub_100024FF8(&v106);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v31 = sub_10007D5C8();
    sub_1000046BC(v31, qword_1000E4B28);
    v32 = sub_10007D5A8();
    v33 = sub_10007E2A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "GeneralMapsStateCollector: fetchRouteForSuggestion had no origin location", v34, 2u);
    }
  }
}

void sub_100023C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v62 = a3;
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v60 = &v58 - v14;
  __chkstk_darwin(v13);
  v59 = &v58 - v15;
  v16 = sub_10007DF48();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(a1);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v18)
  {
    goto LABEL_20;
  }

  v58 = a4;
  v21 = [v18 routes];
  sub_10002620C(0, &unk_1000DE940, MKRoute_ptr);
  v22 = sub_10007E1D8();

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_10007E528())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = sub_10007E468();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  v25 = [v24 _geoComposedRoute];

  v26 = v58;
  if (!v25)
  {
LABEL_20:
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v46 = sub_10007D5C8();
    sub_1000046BC(v46, qword_1000E4B28);
    (*(v9 + 16))(v12, v61, v8);
    swift_errorRetain();
    v47 = sub_10007D5A8();
    v48 = sub_10007E2A8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v66[0] = v50;
      *v49 = 136446466;
      *&v64[0] = a2;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v51 = sub_10007E178();
      v53 = sub_100051190(v51, v52, v66);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2050;
      v54 = v60;
      sub_10007D3A8();
      sub_10007D2B8();
      v56 = v55;
      v57 = *(v9 + 8);
      v57(v54, v8);
      v57(v12, v8);
      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "GeneralMapsStateCollector: fetchRouteForSuggestion END (error: %{public}s, %{public}f seconds elapsed)", v49, 0x16u);
      sub_1000250AC(v50);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    a2 = v62;
    goto LABEL_26;
  }

  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v20 = sub_10007E328();
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v27 = sub_10007DF68();
  (*(v17 + 8))(v20, v16);
  if ((v27 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
LABEL_15:
    v37 = sub_10007D5C8();
    sub_1000046BC(v37, qword_1000E4B28);
    (*(v9 + 16))(v16, v61, v8);
    v38 = v20;
    v39 = sub_10007D5A8();
    v40 = sub_10007E2C8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67174913;
      *(v41 + 4) = [v38 expectedTime] / 0x3C;

      *(v41 + 8) = 2050;
      v42 = v60;
      sub_10007D3A8();
      sub_10007D2B8();
      v44 = v43;
      v45 = *(v9 + 8);
      v45(v42, v8);
      v45(v16, v8);
      *(v41 + 10) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "GeneralMapsStateCollector: fetchRouteForSuggestion END (route with expected travel time: %{private}u mins, %{public}f seconds elapsed)", v41, 0x12u);
    }

    else
    {

      (*(v9 + 8))(v16, v8);
    }

LABEL_26:
    dispatch_group_leave(*(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
    return;
  }

  v20 = v25;
  a2 = v62;
  sub_100015ECC(v66);
  v28 = v67;
  v16 = v59;
  if ((v67 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

  if (v67 >= 0)
  {
    v28 = v67 & 0xFFFFFFFFFFFFFF8;
  }

  v29 = sub_10007E4E8();
  if (!__OFADD__(v29, 1))
  {
    v28 = sub_1000248B0(v28, v29 + 1);
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v28;
    sub_10003FCB4(v20, v26, isUniquelyReferenced_nonNull_native);
    v31 = v63;
    v32 = a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v33 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v64[4] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v64[5] = v33;
    v65 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v34 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v64[0] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v64[1] = v34;
    v35 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v64[3] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v64[2] = v35;
    v36 = v66[1];
    *v32 = v66[0];
    *(v32 + 16) = v36;
    *(v32 + 32) = v66[2];
    *(v32 + 48) = v31;
    *(v32 + 81) = *&v69[9];
    *(v32 + 72) = *v69;
    *(v32 + 56) = v68;
    sub_1000256C0(v64, &qword_1000DE950, &qword_100082918);
    if (qword_1000DE268 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  __break(1u);
}

void sub_100024404(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_100024520(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GeneralMapsStateCollector();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100024694(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000246C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024774(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1000247CC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002620C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10002481C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_10002483C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

Swift::Int sub_1000248B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100015240(&qword_1000DE958, &qword_100082920);
    v2 = sub_10007E558();
    v19 = v2;
    sub_10007E4D8();
    v3 = sub_10007E508();
    if (v3)
    {
      v4 = v3;
      sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10002620C(0, &qword_1000DE968, GEOComposedRoute_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10003F078(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_10007E388(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10007E508();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_100024AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&qword_1000DE958, &qword_100082920);
    v3 = sub_10007E568();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100077B00(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100024BF4(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DEA20, &qword_1000829B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100015240(&qword_1000DEA28, &qword_1000829C0);
    v7 = sub_10007E568();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100026310(v9, v5, &qword_1000DEA20, &qword_1000829B8);
      v11 = *v5;
      result = sub_100077B50(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
      result = sub_100025500(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_100024DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&qword_1000DEB28, &qword_100082AB0);
    v3 = sub_10007E568();
    v4 = a1 + 32;

    while (1)
    {
      sub_100026310(v4, v13, &unk_1000DEB30, &qword_1000846D0);
      result = sub_100077BBC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100026378(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100024EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&qword_1000DEB20, &unk_100083CD0);
    v3 = sub_10007E568();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_100077C00(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

void sub_100025028(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10007D3B8() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100023C54(a1, a2, v6, v7, v8);
}

double sub_1000250AC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

void sub_10002513C()
{
  v1 = *(v0 + 16);
  sub_100022E8C(*(v0 + 24));
  v2 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup);

  dispatch_group_leave(v2);
}

uint64_t sub_10002518C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002522C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DE928, &unk_100082900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10002529C()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001EDF4(v5, v6, v0 + v2, v7, v8, v9);
}

uint64_t type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(uint64_t a1)
{
  result = qword_1000DEAB8;
  if (!qword_1000DEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000253E0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10007D3B8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001D134(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_10002549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025564(uint64_t a1)
{
  v2 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000255C4()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10001D4E4(v4, v5, v6, (v0 + v2), v7, v8);
}

double sub_100025664(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1000256C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100015240(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10002576C(double a1, double a2)
{
  v5 = *(sub_10007D3B8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  sub_1000186BC(v7, v8, v9, (v2 + v6), v11, v12, a1, a2);
}

void sub_100025844(uint64_t a1)
{
  v3 = *(sub_10007D3B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_100018EEC(a1, v5, v1 + v4, v7, v8);
}

void sub_1000258E8()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  v2 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup);

  dispatch_group_leave(v2);
}

void sub_100025934(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10007D3B8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + v10 + 16) & ~v8;
  v12 = *(v3 + 16);
  v13 = v3 + v10;
  v14 = *v13;
  v15 = *(v13 + 8);

  sub_100017498(a1, a2, a3, v12, v3 + v9, v14, v15, v3 + v11);
}

uint64_t sub_100025A00()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025ADC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_10007D3B8() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100025B54()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100025BA0()
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v0 = sub_10007D5C8();
  sub_1000046BC(v0, qword_1000E4B28);
  oslog = sub_10007D5A8();
  v1 = sub_10007E298();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "GeneralMapsStateCollector: MSg invalidate sink", v2, 2u);
  }
}

double sub_100025C88()
{
  v1 = sub_10007DEB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007DED8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_10000485C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8938;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  sub_10007DEC8();
  v13[1] = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

void *sub_100025EF8(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (a7)
  {
    v14 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeneralMapsStateCollector.NearbyCategoryCacheDomain(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeneralMapsStateCollector.NearbyCategoryCacheDomain(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100026128(uint64_t a1)
{
  sub_10007D3B8();
  if (v1 <= 0x3F)
  {
    sub_10002620C(319, &qword_1000DEAC8, GEOLocation_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GEOUserPreferredTransportType(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GEOURLOptions_MapType(319);
        if (v4 <= 0x3F)
        {
          sub_100026254(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10002620C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100026254(uint64_t a1)
{
  if (!qword_1000DEAD0)
  {
    sub_100015288(&unk_1000DEAD8, &qword_1000861D0);
    v1 = sub_10007E3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DEAD0);
    }
  }
}

unint64_t sub_1000262BC()
{
  result = qword_1000DEB18;
  if (!qword_1000DEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEB18);
  }

  return result;
}

uint64_t sub_100026310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015240(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100026378(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100026488(uint64_t a1)
{
  type metadata accessor for NearbyEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100026544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v5 = sub_10007DD98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DF1F0, &unk_1000831F0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  v12 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  v15 = enum case for Image.TemplateRenderingMode.original(_:);
  v16 = sub_10007DDC8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v11, v15, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_10007DDA8();
  sub_1000256C0(v11, &qword_1000DF1F0, &unk_1000831F0);
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  sub_10007DDE8();

  (*(v6 + 8))(v8, v5);
  sub_10007DFA8();
  v18 = sub_10007DFC8();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_10007DDD8();

  sub_1000256C0(v4, &qword_1000DF1E8, &unk_100084A40);
  sub_10007DE88();
  sub_10007D668();
  v19 = &v14[*(v12 + 36)];
  v20 = v24;
  *v19 = v23;
  *(v19 + 1) = v20;
  *(v19 + 2) = v25;
  sub_10002DDF4();
  sub_10007DC78();
  return sub_1000256C0(v14, &qword_1000DF1F8, &qword_100084360);
}

uint64_t sub_100026908@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_100015240(&qword_1000DF1B8, &qword_1000831D0);
  __chkstk_darwin(v34);
  v3 = (&v33 - v2);
  v4 = sub_10007D288();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for NearbyButtonAction(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100015240(&qword_1000DF1C0, &qword_1000831D8);
  v14 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v33 - v15;
  v17 = type metadata accessor for NearbyButtonContent(0);
  sub_10002CE34(v1 + *(v17 + 24), v13, type metadata accessor for NearbyButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v10, v13, v4);
  (*(v5 + 16))(v8, v10, v4);
  if (EnumCaseMultiPayload == 1)
  {
    sub_10007DB78();
  }

  else
  {
    sub_10007DB68();
  }

  (*(v5 + 8))(v10, v4);
  v19 = *(v1 + *(type metadata accessor for NearbyButtonActionLink(0) + 20));
  v20 = sub_10007DE88();
  v22 = v21;
  v23 = v33;
  v24 = v3 + *(v34 + 36);
  (*(v14 + 16))(v24, v16, v33);
  v25 = &v24[*(sub_100015240(&qword_1000DF1C8, &unk_1000831E0) + 36)];
  *v25 = v20;
  v25[1] = v22;
  *v3 = v19;
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  v36 = v26;
  v37 = v27;
  sub_10002D9A8();

  v28 = sub_10007DBF8();
  v30 = v29;
  LOBYTE(v22) = v31;
  sub_10002DCA0();
  sub_10007DC88();
  sub_10002D9FC(v28, v30, v22 & 1);

  sub_1000256C0(v3, &qword_1000DF1B8, &qword_1000831D0);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_100026D24@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NearbyButtonAction(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NearbyButtonContent(0);
  sub_10002CE34(v1 + *(v6 + 24), v5, type metadata accessor for NearbyButtonAction);
  v7 = sub_10007D288();
  return (*(*(v7 - 8) + 32))(a1, v5, v7);
}

uint64_t sub_100026DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_10007DA88();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100015240(&qword_1000DF060, &qword_100083010);
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v38 = &v37 - v15;
  v16 = sub_10007DE88();
  v18 = v17;
  v19 = *(v1 + 8);
  v44 = v5;
  v45 = a1;
  if (v19 == 2)
  {
    goto LABEL_4;
  }

  v20 = *v1;
  sub_10002CE34(v1, v13, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v13[*(v11 + 20)], v10, &qword_1000DEF00, &qword_100082E50);
  v21 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v21 - 8) + 48))(v10, 1, v21);
  if (result != 1)
  {
    v23 = &v10[*(v21 + 28)];
    v24 = *v23;
    v25 = v23[8];
    sub_10002D1C4(v10, type metadata accessor for NearbyEntryContent.ResolvedContent);
    if ((v25 & 1) == 0)
    {
      v26 = v19 & 1;
      goto LABEL_6;
    }

LABEL_4:
    v20 = 0;
    v24 = 0;
    v26 = 2;
LABEL_6:
    v46 = v16;
    v47 = v18;
    v48 = v20;
    v49 = v26;
    v51 = 0;
    v52 = 0;
    v50 = v24;
    v27 = v39;
    v28 = sub_10007DA78();
    v37 = &v37;
    __chkstk_darwin(v28);
    sub_10007DE88();
    v29 = sub_100015240(&qword_1000DF068, &qword_100083018);
    v30 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
    v31 = sub_10002DDAC(&qword_1000DF070, &qword_1000DF068, &qword_100083018, &protocol conformance descriptor for ZStack<A>);
    v36 = sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60, &unk_100083A08);
    v32 = v38;
    sub_10007DCB8();
    (*(v42 + 8))(v27, v43);
    v33 = sub_10007D288();
    v34 = v44;
    (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v49 = v36;
    swift_getOpaqueTypeConformance2();
    v35 = v41;
    sub_10007DC18();
    sub_1000256C0(v34, &qword_1000DEEE0, &qword_100082E30);
    return (*(v40 + 8))(v32, v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_100027320@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CE34(a1, v9, type metadata accessor for NearbyEntryContent);
  if (*(a1 + 8) == 2)
  {
    v10 = 0;
LABEL_5:
    v14 = v10 & 1;
    *a2 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v16 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
    *(a2 + v16[9]) = KeyPath;
    sub_100015240(&qword_1000DEF28, &qword_100083930);
    swift_storeEnumTagMultiPayload();
    result = sub_10002D858(v9, a2 + v16[10], type metadata accessor for NearbyEntryContent);
    *(a2 + v16[11]) = v14;
    return result;
  }

  sub_100026310(a1 + *(v7 + 20), v6, &qword_1000DEF00, &qword_100082E50);
  v11 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v11 - 8) + 48))(v6, 1, v11);
  if (result != 1)
  {
    v13 = v6[*(v11 + 28) + 8];
    sub_10002D1C4(v6, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v10 = v13 ^ 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100027578@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v1 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v1 - 8);
  v91 = &v82 - v2;
  v87 = sub_10007DA88();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100015240(&qword_1000DF078, &qword_100083020);
  __chkstk_darwin(v89);
  v84 = (&v82 - v4);
  v5 = sub_100015240(&qword_1000DF080, &qword_100083028);
  v90 = *(v5 - 8);
  __chkstk_darwin(v5);
  v88 = &v82 - v6;
  v97 = sub_10007D848();
  v107 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v113);
  v115 = &v82 - v8;
  v9 = sub_10007D638();
  v106 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v112 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = &v82 - v12;
  v13 = sub_100015240(&qword_1000DEEF8, &qword_100082E48);
  __chkstk_darwin(v13 - 8);
  v15 = &v82 - v14;
  v111 = type metadata accessor for NearbyButtonActionLink(0);
  v98 = *(v111 - 8);
  v16 = __chkstk_darwin(v111);
  v110 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v99 = &v82 - v19;
  __chkstk_darwin(v18);
  v109 = &v82 - v20;
  v21 = type metadata accessor for NearbyButtonContent(0);
  v114 = *(v21 - 8);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  v27 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v27 - 8);
  v29 = &v82 - v28;
  v30 = type metadata accessor for NearbyEntryContent(0);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = _swiftEmptyArrayStorage;
  v34 = type metadata accessor for NearbyMediumWidgetView(0);
  sub_10002CE34(v116 + *(v34 + 20), v33, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v33[*(v31 + 28)], v29, &qword_1000DEF00, &qword_100082E50);
  v35 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if ((*(*(v35 - 8) + 48))(v29, 1, v35) != 1)
  {
    v83 = v5;
    v36 = *&v29[*(v35 + 20)];

    sub_10002D1C4(v29, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v108 = *(v36 + 16);
    if (!v108)
    {
LABEL_25:

      v67 = sub_10007DE88();
      v68 = v84;
      *v84 = v67;
      *(v68 + 8) = v69;
      v70 = sub_100015240(&qword_1000DF088, &qword_100083030);
      sub_100028450(&v122, *&v116, v68 + *(v70 + 44));
      v71 = v85;
      v72 = sub_10007DA78();
      v117 = &v82;
      __chkstk_darwin(v72);
      sub_10007DE88();
      v73 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
      v74 = sub_10002DDAC(&qword_1000DF090, &qword_1000DF078, &qword_100083020, &protocol conformance descriptor for ZStack<A>);
      v81 = sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60, &unk_100083A08);
      v75 = v88;
      v76 = v89;
      sub_10007DCB8();
      (*(v86 + 8))(v71, v87);
      sub_1000256C0(v68, &qword_1000DF078, &qword_100083020);
      v77 = sub_10007D288();
      v78 = v91;
      (*(*(v77 - 8) + 56))(v91, 1, 1, v77);
      v118 = v76;
      v119 = v73;
      v120 = v74;
      v121 = v81;
      swift_getOpaqueTypeConformance2();
      v79 = v83;
      sub_10007DC18();
      sub_1000256C0(v78, &qword_1000DEEE0, &qword_100082E30);
      (*(v90 + 8))(v75, v79);
    }

    v37 = 0;
    v95 = (v107 + 8);
    v94 = (v106 + 32);
    v104 = (v106 + 88);
    v105 = (v106 + 16);
    v103 = enum case for ColorScheme.light(_:);
    v93 = enum case for ColorScheme.dark(_:);
    v102 = (v106 + 8);
    v101 = (v98 + 56);
    v38 = _swiftEmptyArrayStorage;
    v100 = (v98 + 48);
    v39 = v115;
    v40 = v117;
    v106 = v36;
    v107 = v9;
    while (v37 < *(v36 + 16))
    {
      sub_10002CE34(v36 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v37, v26, type metadata accessor for NearbyButtonContent);
      if (v38[2] > 1uLL)
      {
        sub_10002D1C4(v26, type metadata accessor for NearbyButtonContent);
        goto LABEL_25;
      }

      sub_10002CE34(v26, v24, type metadata accessor for NearbyButtonContent);
      sub_100026310(v116, v39, &qword_1000DEC18, &qword_100082C10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v94)(v40, v39, v9);
      }

      else
      {
        sub_10007E2B8();
        v41 = sub_10007DA98();
        sub_10007D598();

        v39 = v115;
        v42 = v96;
        sub_10007D838();
        swift_getAtKeyPath();

        (*v95)(v42, v97);
      }

      v43 = v40;
      v45 = *v24;
      v44 = v24[1];
      v46 = v112;
      (*v105)(v112, v43, v9);
      v47 = (*v104)(v46, v9);
      if (v47 == v103)
      {
        v44 = v45;
        v48 = v111;
      }

      else
      {
        v48 = v111;
        if (v47 != v93)
        {
          goto LABEL_28;
        }
      }

      if (v44)
      {
        v49 = v24;
        v50 = v37;
        v51 = v117;
        v52 = v24;
        v53 = v38;
        v54 = v15;
        v55 = v26;
        v56 = v9;
        v57 = v99;
        sub_10002CE34(v49, v99, type metadata accessor for NearbyButtonContent);
        v58 = v44;
        v59 = sub_10007DD78();
        v60 = v51;
        v37 = v50;
        v61 = v56;
        v26 = v55;
        v15 = v54;
        v38 = v53;
        v24 = v52;
        v39 = v115;
        (*v102)(v60, v61);
        sub_10002D1C4(v24, type metadata accessor for NearbyButtonContent);
        *(v57 + *(v48 + 20)) = v59;
        sub_10002D858(v57, v15, type metadata accessor for NearbyButtonActionLink);
        v62 = 0;
      }

      else
      {
        (*v102)(v117, v9);
        sub_10002D1C4(v24, type metadata accessor for NearbyButtonContent);
        v62 = 1;
      }

      (*v101)(v15, v62, 1, v48);
      if ((*v100)(v15, 1, v48) == 1)
      {
        sub_10002D1C4(v26, type metadata accessor for NearbyButtonContent);
        sub_1000256C0(v15, &qword_1000DEEF8, &qword_100082E48);
        v36 = v106;
        v9 = v107;
        v40 = v117;
      }

      else
      {
        v63 = v109;
        sub_10002D858(v15, v109, type metadata accessor for NearbyButtonActionLink);
        sub_10002CE34(v63, v110, type metadata accessor for NearbyButtonActionLink);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = v107;
        v40 = v117;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_1000771EC(0, v38[2] + 1, 1, v38);
        }

        v66 = v38[2];
        v65 = v38[3];
        if (v66 >= v65 >> 1)
        {
          v38 = sub_1000771EC((v65 > 1), v66 + 1, 1, v38);
        }

        sub_10002D1C4(v109, type metadata accessor for NearbyButtonActionLink);
        sub_10002D1C4(v26, type metadata accessor for NearbyButtonContent);
        v38[2] = v66 + 1;
        sub_10002D858(v110, v38 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v66, type metadata accessor for NearbyButtonActionLink);
        v122 = v38;
        v36 = v106;
      }

      if (v108 == ++v37)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100028450@<X0>(uint64_t *a1@<X0>, float64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v59.f64[0] = a2;
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DF098, &qword_100083038);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = sub_100015240(&qword_1000DF0A0, &qword_100083040);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = sub_100015240(&qword_1000DF0A8, &qword_100083048);
  v21 = __chkstk_darwin(v20 - 8);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v54 - v23;
  if (*(*a1 + 16))
  {
    *v19 = sub_10007D948();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v25 = *(sub_100015240(&qword_1000DF0B8, &qword_100083058) + 44);
    *&v56 = v24;
    v26 = v6;
    v27 = &v19[v25];
    *v15 = sub_10007D878();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v28 = sub_100015240(&qword_1000DF0C0, &qword_100083060);
    sub_100028A14(a1, &v15[*(v28 + 44)]);
    v55 = v16;
    sub_100026310(v15, v13, &qword_1000DF098, &qword_100083038);
    *v27 = 0;
    v27[8] = 1;
    *(v27 + 2) = 0x3FF0000000000000;
    v29 = &v27[*(sub_100015240(&qword_1000DF0C8, &qword_100083068) + 48)];
    v6 = v26;
    v24 = v56;
    sub_100026310(v13, v29, &qword_1000DF098, &qword_100083038);
    sub_1000256C0(v15, &qword_1000DF098, &qword_100083038);
    sub_1000256C0(v13, &qword_1000DF098, &qword_100083038);
    sub_10002DB0C(v19, v24, &qword_1000DF0A0, &qword_100083040);
    (*(v17 + 56))(v24, 0, 1, v55);
  }

  else
  {
    (*(v17 + 56))(&v54 - v23, 1, 1, v16);
  }

  v30 = *&v59.f64[0] + *(type metadata accessor for NearbyMediumWidgetView(0) + 20);
  v31 = *(v30 + 8);
  v59 = 0u;
  if (v31 == 2)
  {
    goto LABEL_7;
  }

  v32 = *v30;
  sub_10002CE34(v30, v9, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v9[*(v7 + 20)], v6, &qword_1000DEF00, &qword_100082E50);
  v33 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v33 - 8) + 48))(v6, 1, v33);
  if (result != 1)
  {
    v35 = &v6[*(v33 + 28)];
    v36 = *v35;
    v37 = v35[8];
    sub_10002D1C4(v6, type metadata accessor for NearbyEntryContent.ResolvedContent);
    if ((v37 & 1) == 0)
    {
      v39 = objc_opt_self();
      v40 = [v39 mainScreen];
      [v40 scale];
      v59 = v41;

      v42 = [v39 mainScreen];
      [v42 scale];
      v56 = v43;

      v44.f64[0] = v59.f64[0];
      *&v44.f64[1] = v56;
      __asm { FMOV            V0.2D, #1.0 }

      v50 = vdivq_f64(_Q0, v44);
      v59 = vmulq_f64(v50, vrndaq_f64(vdivq_f64(xmmword_100082AF0, v50)));
      v38 = v31 & 1;
      goto LABEL_9;
    }

LABEL_7:
    v32 = 0;
    v36 = 0;
    v38 = 2;
LABEL_9:
    v51 = v57;
    sub_100026310(v24, v57, &qword_1000DF0A8, &qword_100083048);
    v52 = v58;
    sub_100026310(v51, v58, &qword_1000DF0A8, &qword_100083048);
    v53 = v52 + *(sub_100015240(&qword_1000DF0B0, &qword_100083050) + 48);
    *v53 = v32;
    *(v53 + 8) = v38;
    *(v53 + 16) = v36;
    *(v53 + 24) = v59;
    sub_1000256C0(v24, &qword_1000DF0A8, &qword_100083048);
    return sub_1000256C0(v51, &qword_1000DF0A8, &qword_100083048);
  }

  __break(1u);
  return result;
}

uint64_t sub_100028A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000DF0D0, &qword_100083070);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v16 - v9);
  *v10 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v5 + 44)) = 0x4030000000000000;
  v11 = v10 + *(v5 + 48);
  *v11 = sub_10007D948();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v11[*(sub_100015240(&qword_1000DF0D8, &qword_100083078) + 44)];
  *v12 = sub_10007D878();
  *(v12 + 1) = 0x402E000000000000;
  v12[16] = 0;
  v13 = sub_100015240(&qword_1000DF0E0, &qword_100083080);
  sub_100028BEC(a1, &v12[*(v13 + 44)]);
  sub_100026310(v10, v8, &qword_1000DF0D0, &qword_100083070);
  sub_100026310(v8, a2, &qword_1000DF0D0, &qword_100083070);
  v14 = a2 + *(sub_100015240(&qword_1000DF0E8, &qword_100083088) + 48);
  sub_1000256C0(v10, &qword_1000DF0D0, &qword_100083070);
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v14 + 16) = 0x3FF0000000000000;
  return sub_1000256C0(v8, &qword_1000DF0D0, &qword_100083070);
}

uint64_t sub_100028BEC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v15 = a1;
  v16 = a2;
  v3 = sub_100015240(&qword_1000DF0F0, &qword_100083090);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v17 = *v2;

  sub_100015240(&qword_1000DF0F8, &qword_100083098);
  sub_10007D288();
  type metadata accessor for NearbyButtonActionLink(0);
  sub_10002DDAC(&qword_1000DF100, &qword_1000DF0F8, &qword_100083098, &protocol conformance descriptor for [A]);
  sub_10002CE9C(&qword_1000DF108, type metadata accessor for NearbyButtonActionLink, &unk_10008317C);
  sub_10002CE9C(&qword_1000DF110, type metadata accessor for NearbyButtonActionLink, &unk_100083144);
  sub_10007DE38();
  LOBYTE(v2) = *(*v15 + 16) != 1;
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  v11 = v16;
  v10(v16, v7, v3);
  v11[*(sub_100015240(&qword_1000DF118, &unk_1000830A0) + 48)] = v2;
  v12 = *(v4 + 8);
  v12(v9, v3);
  return (v12)(v7, v3);
}

void sub_100028EB8(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v1 - 8);
  v81 = &v72 - v2;
  v76 = sub_10007DA88();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100015240(&qword_1000DEEE8, &qword_100082E38);
  __chkstk_darwin(v78);
  v73 = (&v72 - v4);
  v80 = sub_100015240(&qword_1000DEEF0, &qword_100082E40);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v72 - v5;
  v87 = sub_10007D848();
  v96 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v101);
  v103 = &v72 - v7;
  v8 = sub_10007D638();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v100 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v72 - v12;
  v14 = type metadata accessor for NearbyButtonContent(0);
  v102 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v16 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100015240(&qword_1000DEEF8, &qword_100082E48);
  __chkstk_darwin(v17 - 8);
  v19 = &v72 - v18;
  v20 = type metadata accessor for NearbyButtonActionLink(0);
  v88 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v99 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v89 = &v72 - v24;
  __chkstk_darwin(v23);
  v98 = &v72 - v25;
  v26 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v26 - 8);
  v28 = &v72 - v27;
  v29 = type metadata accessor for NearbyEntryContent(0);
  v30 = v29 - 8;
  __chkstk_darwin(v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = swift_allocObject();
  *(v105 + 16) = _swiftEmptyArrayStorage;
  v33 = type metadata accessor for NearbyLargeWidgetView(0);
  sub_10002CE34(v106 + *(v33 + 20), v32, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v32[*(v30 + 28)], v28, &qword_1000DEF00, &qword_100082E50);
  v34 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if ((*(*(v34 - 8) + 48))(v28, 1, v34) != 1)
  {
    v35 = *&v28[*(v34 + 20)];

    sub_10002D1C4(v28, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v104 = v35;
    v36 = v103;
    v97 = *(v35 + 16);
    if (!v97)
    {
LABEL_22:

      v58 = sub_10007DE88();
      v59 = v73;
      *v73 = v58;
      *(v59 + 8) = v60;
      v61 = sub_100015240(&qword_1000DEF08, &qword_100082E58);
      sub_100029CB8(v105, *&v106, v59 + *(v61 + 44));
      v62 = v74;
      v63 = sub_10007DA78();
      __chkstk_darwin(v63);
      sub_10007DE88();
      v64 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
      v65 = sub_10002DDAC(&qword_1000DEF18, &qword_1000DEEE8, &qword_100082E38, &protocol conformance descriptor for ZStack<A>);
      v71 = sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60, &unk_100083A08);
      v66 = v77;
      v67 = v78;
      sub_10007DCB8();
      (*(v75 + 8))(v62, v76);
      sub_1000256C0(v59, &qword_1000DEEE8, &qword_100082E38);
      v68 = sub_10007D288();
      v69 = v81;
      (*(*(v68 - 8) + 56))(v81, 1, 1, v68);
      v107 = v67;
      v108 = v64;
      v109 = v65;
      v110 = v71;
      swift_getOpaqueTypeConformance2();
      v70 = v80;
      sub_10007DC18();
      sub_1000256C0(v69, &qword_1000DEEE0, &qword_100082E30);
      (*(v79 + 8))(v66, v70);

      return;
    }

    v37 = 0;
    v95 = v104 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v85 = (v96 + 8);
    v84 = (v9 + 32);
    v93 = (v9 + 88);
    v94 = (v9 + 16);
    v92 = enum case for ColorScheme.light(_:);
    v83 = enum case for ColorScheme.dark(_:);
    v91 = (v9 + 8);
    v90 = (v88 + 56);
    v38 = (v88 + 48);
    v96 = v20;
    while (v37 < *(v104 + 16))
    {
      sub_10002CE34(v95 + *(v102 + 72) * v37, v16, type metadata accessor for NearbyButtonContent);
      sub_100026310(v106, v36, &qword_1000DEC18, &qword_100082C10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v84)(v13, v36, v8);
      }

      else
      {
        sub_10007E2B8();
        v39 = sub_10007DA98();
        v36 = v103;
        sub_10007D598();

        v40 = v86;
        sub_10007D838();
        swift_getAtKeyPath();

        (*v85)(v40, v87);
      }

      v41 = v13;
      v43 = *v16;
      v42 = v16[1];
      v44 = v100;
      v45 = v41;
      (*v94)(v100);
      v46 = (*v93)(v44, v8);
      if (v46 == v92)
      {
        v42 = v43;
      }

      else if (v46 != v83)
      {
        goto LABEL_25;
      }

      v13 = v45;
      if (v42)
      {
        v47 = v89;
        sub_10002CE34(v16, v89, type metadata accessor for NearbyButtonContent);
        v48 = v42;
        v49 = sub_10007DD78();
        (*v91)(v45, v8);
        sub_10002D1C4(v16, type metadata accessor for NearbyButtonContent);
        v50 = v96;
        *(v47 + *(v96 + 20)) = v49;
        sub_10002D858(v47, v19, type metadata accessor for NearbyButtonActionLink);
        v51 = 0;
      }

      else
      {
        (*v91)(v45, v8);
        sub_10002D1C4(v16, type metadata accessor for NearbyButtonContent);
        v51 = 1;
        v50 = v96;
      }

      (*v90)(v19, v51, 1, v50);
      if ((*v38)(v19, 1, v50) == 1)
      {
        sub_1000256C0(v19, &qword_1000DEEF8, &qword_100082E48);
      }

      else
      {
        v52 = v98;
        sub_10002D858(v19, v98, type metadata accessor for NearbyButtonActionLink);
        sub_10002CE34(v52, v99, type metadata accessor for NearbyButtonActionLink);
        v53 = v105;
        v54 = *(v105 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v53 + 16) = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = sub_1000771EC(0, v54[2] + 1, 1, v54);
          *(v105 + 16) = v54;
        }

        v57 = v54[2];
        v56 = v54[3];
        if (v57 >= v56 >> 1)
        {
          v54 = sub_1000771EC((v56 > 1), v57 + 1, 1, v54);
          *(v105 + 16) = v54;
        }

        sub_10002D1C4(v98, type metadata accessor for NearbyButtonActionLink);
        v54[2] = v57 + 1;
        sub_10002D858(v99, v54 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v57, type metadata accessor for NearbyButtonActionLink);
        *(v105 + 16) = v54;
        v36 = v103;
      }

      if (v97 == ++v37)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  sub_10007E518();
  __break(1u);
}

uint64_t sub_100029CB8@<X0>(uint64_t a1@<X0>, float64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v59.f64[0] = a2;
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  *&v56 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v56);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEF30, &qword_100082EA0);
  v9 = __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v54 - v12);
  v14 = sub_100015240(&qword_1000DEF38, &qword_100082EA8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = sub_100015240(&qword_1000DEF40, &qword_100082EB0);
  v19 = __chkstk_darwin(v18 - 8);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  swift_beginAccess();
  v23 = 1;
  if (*(*(a1 + 16) + 16))
  {
    *v17 = sub_10007D948();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v24 = *(sub_100015240(&qword_1000DEF50, &qword_100082EC0) + 44);
    v54 = v6;
    v25 = &v17[v24];
    *v13 = swift_getKeyPath();
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    *(v13 + *(v8 + 36)) = 0x4030000000000000;
    v26 = v13 + *(v8 + 40);
    *v26 = sub_10007D878();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v27 = sub_100015240(&qword_1000DEF60, &qword_100082F00);
    sub_10002A2B4(a1, &v26[*(v27 + 44)]);
    sub_100026310(v13, v11, &qword_1000DEF30, &qword_100082EA0);
    *v25 = 0;
    v25[8] = 1;
    *(v25 + 2) = 0x3FF0000000000000;
    v28 = &v25[*(sub_100015240(&qword_1000DEF68, &qword_100082F08) + 48)];
    v6 = v54;
    sub_100026310(v11, v28, &qword_1000DEF30, &qword_100082EA0);
    sub_1000256C0(v13, &qword_1000DEF30, &qword_100082EA0);
    sub_1000256C0(v11, &qword_1000DEF30, &qword_100082EA0);
    sub_10002DB0C(v17, v22, &qword_1000DEF38, &qword_100082EA8);
    v23 = 0;
  }

  (*(v15 + 56))(v22, v23, 1, v14);
  v29 = *&v59.f64[0] + *(type metadata accessor for NearbyLargeWidgetView(0) + 20);
  v30 = *(v29 + 8);
  v59 = 0u;
  if (v30 == 2)
  {
    goto LABEL_6;
  }

  v31 = *v29;
  v32 = v55;
  sub_10002CE34(v29, v55, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(v32 + *(v56 + 20), v6, &qword_1000DEF00, &qword_100082E50);
  v33 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v33 - 8) + 48))(v6, 1, v33);
  if (result != 1)
  {
    v35 = &v6[*(v33 + 28)];
    v36 = *v35;
    v37 = v35[8];
    sub_10002D1C4(v6, type metadata accessor for NearbyEntryContent.ResolvedContent);
    if ((v37 & 1) == 0)
    {
      v39 = objc_opt_self();
      v40 = [v39 mainScreen];
      [v40 scale];
      v59 = v41;

      v42 = [v39 mainScreen];
      [v42 scale];
      v56 = v43;

      v44.f64[0] = v59.f64[0];
      *&v44.f64[1] = v56;
      __asm { FMOV            V0.2D, #1.0 }

      v50 = vdivq_f64(_Q0, v44);
      v59 = vmulq_f64(v50, vrndaq_f64(vdivq_f64(xmmword_100082B00, v50)));
      v38 = v30 & 1;
      goto LABEL_8;
    }

LABEL_6:
    v31 = 0;
    v36 = 0;
    v38 = 2;
LABEL_8:
    v51 = v57;
    sub_100026310(v22, v57, &qword_1000DEF40, &qword_100082EB0);
    v52 = v58;
    sub_100026310(v51, v58, &qword_1000DEF40, &qword_100082EB0);
    v53 = v52 + *(sub_100015240(&qword_1000DEF48, &qword_100082EB8) + 48);
    *v53 = v31;
    *(v53 + 8) = v38;
    *(v53 + 16) = v36;
    *(v53 + 24) = v59;
    sub_1000256C0(v22, &qword_1000DEF40, &qword_100082EB0);
    return sub_1000256C0(v51, &qword_1000DEF40, &qword_100082EB0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A2B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = sub_100015240(&qword_1000DEF70, &qword_100082F10);
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v34 = &v34 - v4;
  v5 = sub_100015240(&qword_1000DEF78, &qword_100082F18);
  v6 = __chkstk_darwin(v5 - 8);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = sub_100015240(&qword_1000DEF80, &unk_100082F20);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = __chkstk_darwin(v10);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  swift_beginAccess();
  v15 = *(*(a1 + 16) + 16);
  v42 = 0;
  v43 = v15;
  swift_getKeyPath();

  sub_100015240(&qword_1000DEF88, &qword_100082F48);
  sub_100015240(&qword_1000DEF90, &qword_100082F50);
  sub_10002D8C8();
  sub_10002DDAC(&qword_1000DEFA8, &qword_1000DEF90, &qword_100082F50, &protocol conformance descriptor for TupleView<A>);
  v16 = v14;
  sub_10007DE28();
  swift_beginAccess();
  if (*(*(a1 + 16) + 16) == 1)
  {
    sub_100015240(&qword_1000DEFB8, &qword_100082F60);
    sub_10002DDAC(&qword_1000DEFC0, &qword_1000DEFB8, &qword_100082F60, &protocol conformance descriptor for TupleView<A>);
    v17 = v34;
    sub_10007DE48();
    v18 = v38;
    v19 = v17;
    v20 = v39;
    (*(v38 + 32))(v9, v19, v39);
    v21 = 0;
    v22 = v20;
    v23 = v9;
    v24 = v18;
  }

  else
  {
    v21 = 1;
    v24 = v38;
    v22 = v39;
    v23 = v9;
  }

  (*(v24 + 56))(v23, v21, 1, v22);
  v25 = v35;
  v26 = v36;
  v27 = *(v35 + 16);
  v28 = v37;
  v27(v37, v16, v36);
  v29 = v40;
  sub_100026310(v23, v40, &qword_1000DEF78, &qword_100082F18);
  v30 = v41;
  v27(v41, v28, v26);
  v31 = sub_100015240(&qword_1000DEFB0, &qword_100082F58);
  sub_100026310(v29, &v30[*(v31 + 48)], &qword_1000DEF78, &qword_100082F18);
  sub_1000256C0(v23, &qword_1000DEF78, &qword_100082F18);
  v32 = *(v25 + 8);
  v32(v16, v26);
  sub_1000256C0(v29, &qword_1000DEF78, &qword_100082F18);
  return (v32)(v28, v26);
}

uint64_t sub_10002A76C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NearbyButtonActionLink(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *a1;
  result = swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = *(a2 + 16);
  v16 = *(v15 + 16);
  if (v13 >= v16)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_10002CE34(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v12, type metadata accessor for NearbyButtonActionLink);
  v17 = v13 >= v16 - 1;
  v18 = !v17;
  sub_10002CE34(v12, v10, type metadata accessor for NearbyButtonActionLink);
  sub_10002CE34(v10, a3, type metadata accessor for NearbyButtonActionLink);
  v19 = a3 + *(sub_100015240(&qword_1000DEFC8, &qword_100082F68) + 48);
  *v19 = 0;
  *(v19 + 8) = v18;
  *(v19 + 9) = v17;
  sub_10002D1C4(v12, type metadata accessor for NearbyButtonActionLink);
  return sub_10002D1C4(v10, type metadata accessor for NearbyButtonActionLink);
}

uint64_t sub_10002A93C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(a2(0) + 20);
  sub_10002CE34(v12, v11, type metadata accessor for NearbyEntryContent);
  if (*(v12 + 8) == 2)
  {
    v13 = 0;
LABEL_5:
    v17 = v13 & 1;
    *a3 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v19 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
    *(a3 + v19[9]) = KeyPath;
    sub_100015240(&qword_1000DEF28, &qword_100083930);
    swift_storeEnumTagMultiPayload();
    result = sub_10002D858(v11, a3 + v19[10], type metadata accessor for NearbyEntryContent);
    *(a3 + v19[11]) = v17;
    return result;
  }

  sub_100026310(v12 + *(v9 + 20), v8, &qword_1000DEF00, &qword_100082E50);
  v14 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v14 - 8) + 48))(v8, 1, v14);
  if (result != 1)
  {
    v16 = v8[*(v14 + 28) + 8];
    sub_10002D1C4(v8, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v13 = v16 ^ 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002ABC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a1;
  v3 = sub_100015240(&qword_1000DEFE8, &qword_100082F80);
  __chkstk_darwin(v3);
  v5 = (v25 - v4);
  v6 = sub_100015240(&qword_1000DEFF0, &qword_100082F88);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  *v5 = sub_10007DE88();
  v5[1] = v12;
  v13 = sub_100015240(&qword_1000DEFF8, &qword_100082F90);
  sub_10002AEBC(v5 + *(v13 + 44));
  sub_10002DDAC(&qword_1000DF000, &qword_1000DEFE8, &qword_100082F80, &protocol conformance descriptor for ZStack<A>);
  sub_10007DC78();
  sub_1000256C0(v5, &qword_1000DEFE8, &qword_100082F80);
  v14 = sub_10007D958();
  LOBYTE(v30[0]) = 0;
  sub_10002B2BC(v27);
  *&v26[7] = v27[0];
  *&v26[23] = v27[1];
  *&v26[39] = v27[2];
  *&v26[55] = v27[3];
  v15 = v30[0];
  sub_100006D48(v11, v9);
  sub_100006D48(v9, a2);
  v16 = sub_100015240(&qword_1000DF008, &qword_100082F98);
  v17 = a2 + *(v16 + 48);
  v28[0] = v14;
  v28[1] = 0;
  v29[0] = v15;
  *&v29[1] = *v26;
  *&v29[17] = *&v26[16];
  *&v29[33] = *&v26[32];
  *&v29[49] = *&v26[48];
  v18 = *&v26[63];
  *&v29[64] = *&v26[63];
  v19 = *v29;
  *v17 = v14;
  *(v17 + 16) = v19;
  v20 = *&v29[16];
  v21 = *&v29[32];
  v22 = *&v29[48];
  *(v17 + 80) = v18;
  *(v17 + 48) = v21;
  *(v17 + 64) = v22;
  *(v17 + 32) = v20;
  v23 = a2 + *(v16 + 64);
  *v23 = 0;
  *(v23 + 8) = 0;
  sub_100026310(v28, v30, &qword_1000DF010, &qword_100082FA0);
  sub_1000256C0(v11, &qword_1000DEFF0, &qword_100082F88);
  v30[0] = v14;
  v30[1] = 0;
  v31 = v15;
  v33 = *&v26[16];
  v34 = *&v26[32];
  *v35 = *&v26[48];
  *&v35[15] = *&v26[63];
  v32 = *v26;
  sub_1000256C0(v30, &qword_1000DF010, &qword_100082FA0);
  return sub_1000256C0(v9, &qword_1000DEFF0, &qword_100082F88);
}

uint64_t sub_10002AEBC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_100015240(&qword_1000DF018, &qword_100082FA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_100015240(&qword_1000DF020, &qword_100082FB0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_100015240(&qword_1000DF028, &qword_100082FB8);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  sub_10007DE68();
  *&v15[*(sub_100015240(&qword_1000DF030, &qword_100082FC0) + 56)] = 256;
  sub_10007DE88();
  sub_10007D668();
  v16 = &v15[*(v11 + 44)];
  v17 = v37;
  *v16 = v36;
  *(v16 + 1) = v17;
  *(v16 + 2) = v38;
  v18 = sub_10007DD88();
  v19 = sub_10007DB08();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = sub_10007DB28();
  sub_1000256C0(v3, &qword_1000DF018, &qword_100082FA8);
  KeyPath = swift_getKeyPath();
  v33 = v18;
  v34 = KeyPath;
  v35 = v20;
  sub_10007DB18();
  sub_100015240(&qword_1000DF038, &qword_100082FF8);
  sub_10002DA1C();
  sub_10007DC48();

  v22 = v32;
  sub_100026310(v15, v32, &qword_1000DF028, &qword_100082FB8);
  v23 = *(v5 + 16);
  v24 = v30;
  v23(v30, v9, v4);
  v25 = v22;
  v26 = v31;
  sub_100026310(v25, v31, &qword_1000DF028, &qword_100082FB8);
  v27 = sub_100015240(&qword_1000DF058, &qword_100083008);
  v23((v26 + *(v27 + 48)), v24, v4);
  v28 = *(v5 + 8);
  v28(v9, v4);
  sub_1000256C0(v15, &qword_1000DF028, &qword_100082FB8);
  v28(v24, v4);
  return sub_1000256C0(v32, &qword_1000DF028, &qword_100082FB8);
}

uint64_t sub_10002B2BC@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for NearbyAccessoryRectangularWidgetView(0);
  sub_10002D9A8();

  v2 = sub_10007DBF8();
  v34 = v3;
  v33 = v4;
  sub_10007DA38();
  v5 = sub_10007DBA8();
  v7 = v6;
  v9 = v8;
  sub_10007DB38();
  v10 = sub_10007DBB8();
  v12 = v11;
  v14 = v13;

  sub_10002D9FC(v5, v7, v9 & 1);

  sub_10007DB18();
  v15 = sub_10007DB88();
  v38 = v16;
  v39 = v15;
  v37 = v17;
  v36 = v18;
  sub_10002D9FC(v10, v12, v14 & 1);

  sub_10002D9FC(v2, v34, v33 & 1);

  v40 = sub_10007DBF8();
  v35 = v19;
  LOBYTE(v5) = v20;
  sub_10007DA48();
  v21 = sub_10007DBA8();
  v23 = v22;
  v25 = v24;
  sub_10007DAF8();
  v26 = sub_10007DBB8();
  v28 = v27;
  LOBYTE(v2) = v29;
  v31 = v30;

  sub_10002D9FC(v21, v23, v25 & 1);

  sub_10002D9FC(v40, v35, v5 & 1);

  *a2 = v39;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v2 & 1;
  *(a2 + 56) = v31;
  sub_10002DA0C(v39, v37, v36 & 1);

  sub_10002DA0C(v26, v28, v2 & 1);

  sub_10002D9FC(v26, v28, v2 & 1);

  sub_10002D9FC(v39, v37, v36 & 1);
}

uint64_t sub_10002B5F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_100026310(v2 + *(v12 + 20), v11, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_10007E2B8();
    v15 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10002B800()
{
  v1 = sub_10007DFF8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_100015240(&qword_1000DEFD0, &qword_100082F70);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  *v10 = sub_10007D878();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100015240(&qword_1000DEFD8, &qword_100082F78);
  sub_10002ABC4(v0, &v10[*(v11 + 44)]);
  sub_10002B5F0(type metadata accessor for NearbyAccessoryRectangularWidgetView, v4);
  sub_10006707C(v4);
  (*(v2 + 8))(v4, v1);
  v12 = sub_10007D288();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  sub_10002DDAC(&qword_1000DEFE0, &qword_1000DEFD0, &qword_100082F70, &protocol conformance descriptor for HStack<A>);
  sub_10007DC18();
  sub_1000256C0(v7, &qword_1000DEEE0, &qword_100082E30);
  return sub_1000256C0(v10, &qword_1000DEFD0, &qword_100082F70);
}

uint64_t sub_10002BA80@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v54 = type metadata accessor for NearbyAccessoryRectangularWidgetView(0);
  __chkstk_darwin(v54);
  v49 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_100015240(&qword_1000DEBE0, &qword_100082BA8);
  __chkstk_darwin(v51);
  v53 = &v47 - v3;
  v62 = sub_100015240(&qword_1000DEBE8, &qword_100082BB0);
  __chkstk_darwin(v62);
  v55 = &v47 - v4;
  v52 = type metadata accessor for NearbyLargeWidgetView(0);
  __chkstk_darwin(v52);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for NearbyMediumWidgetView(0);
  __chkstk_darwin(v56);
  v50 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_100015240(&qword_1000DEBF0, &qword_100082BB8);
  __chkstk_darwin(v58);
  v57 = &v47 - v7;
  v59 = sub_100015240(&qword_1000DEBF8, &qword_100082BC0);
  __chkstk_darwin(v59);
  v64 = &v47 - v8;
  v9 = sub_100015240(&qword_1000DEC00, &qword_100082BC8);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v60 = sub_100015240(&qword_1000DEC08, &qword_100082BD0);
  __chkstk_darwin(v60);
  v13 = &v47 - v12;
  v63 = sub_100015240(&qword_1000DEC10, &qword_100082BD8);
  __chkstk_darwin(v63);
  v15 = &v47 - v14;
  v16 = type metadata accessor for NearbySmallWidgetView(0);
  __chkstk_darwin(v16);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10007DFF8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B5F0(type metadata accessor for NearbyWidgetView, v22);
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 != enum case for WidgetFamily.systemSmall(_:))
  {
    v28 = v15;
    v29 = v57;
    if (v23 == enum case for WidgetFamily.systemMedium(_:))
    {
      v30 = v50;
      sub_10002CE34(v1, v50 + *(v56 + 20), type metadata accessor for NearbyEntryContent);
      *v30 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      sub_10002CE34(v30, v11, type metadata accessor for NearbyMediumWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10002CE9C(&qword_1000DEC40, type metadata accessor for NearbySmallWidgetView, &unk_100082D40);
      sub_10002CE9C(&qword_1000DEC48, type metadata accessor for NearbyMediumWidgetView, &unk_100082CF0);
      sub_10007D9D8();
      sub_100026310(v13, v64, &qword_1000DEC08, &qword_100082BD0);
      swift_storeEnumTagMultiPayload();
      sub_10002CEE4();
      sub_10002CFD0();
      sub_10007D9D8();
      sub_1000256C0(v13, &qword_1000DEC08, &qword_100082BD0);
      sub_100026310(v28, v29, &qword_1000DEC10, &qword_100082BD8);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_10002D0BC();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v28, &qword_1000DEC10, &qword_100082BD8);
      v31 = type metadata accessor for NearbyMediumWidgetView;
    }

    else
    {
      v32 = v64;
      if (v23 == enum case for WidgetFamily.systemLarge(_:))
      {
        v24 = v48;
        sub_10002CE34(v1, v48 + *(v52 + 20), type metadata accessor for NearbyEntryContent);
        *v24 = swift_getKeyPath();
        sub_100015240(&qword_1000DEC18, &qword_100082C10);
        swift_storeEnumTagMultiPayload();
        sub_10002CE34(v24, v53, type metadata accessor for NearbyLargeWidgetView);
        swift_storeEnumTagMultiPayload();
        sub_10002CE9C(&qword_1000DEC28, type metadata accessor for NearbyLargeWidgetView, &unk_100082DE0);
        sub_10002CE9C(&qword_1000DEC30, type metadata accessor for NearbyAccessoryRectangularWidgetView, &unk_100082D90);
        v33 = v55;
        sub_10007D9D8();
        sub_100026310(v33, v32, &qword_1000DEBE8, &qword_100082BB0);
        swift_storeEnumTagMultiPayload();
        sub_10002CEE4();
        sub_10002CFD0();
        sub_10007D9D8();
        sub_1000256C0(v33, &qword_1000DEBE8, &qword_100082BB0);
        sub_100026310(v28, v29, &qword_1000DEC10, &qword_100082BD8);
        swift_storeEnumTagMultiPayload();
        sub_100015240(&qword_1000DEC58, &unk_100082C50);
        sub_10002D0BC();
        sub_10002D148();
        sub_10007D9D8();
        sub_1000256C0(v28, &qword_1000DEC10, &qword_100082BD8);
        v25 = type metadata accessor for NearbyLargeWidgetView;
        goto LABEL_3;
      }

      if (v23 == enum case for WidgetFamily.systemExtraLarge(_:) || v23 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v23 == enum case for WidgetFamily.accessoryCorner(_:) || v23 == enum case for WidgetFamily.accessoryCircular(_:) || (v34 = v28, v35 = v54, v30 = v49, v23 != enum case for WidgetFamily.accessoryRectangular(_:)))
      {
        while (1)
        {
          sub_10007E518();
          __break(1u);
        }
      }

      sub_10002CE34(v1, v49 + *(v54 + 24), type metadata accessor for NearbyEntryContent);
      *v30 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      *(v30 + v35[5]) = swift_getKeyPath();
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      v36 = (v30 + v35[7]);
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v37 = qword_1000E4B68;
      v65._countAndFlagsBits = 0xD000000000000014;
      v45._countAndFlagsBits = 0x800000010008F6C0;
      v69._countAndFlagsBits = 0x686372616553;
      v65._object = 0x800000010008F6A0;
      v67.value._countAndFlagsBits = 0;
      v67.value._object = 0;
      v38.super.isa = qword_1000E4B68;
      v69._object = 0xE600000000000000;
      *v36 = sub_10007D258(v65, v67, v38, v69, 0xD00000000000001FLL, v45);
      v36[1] = v39;
      v40 = (v30 + v35[8]);
      v66._countAndFlagsBits = 0xD000000000000010;
      v46._countAndFlagsBits = 0x800000010008F700;
      v66._object = 0x800000010008F6E0;
      v68.value._countAndFlagsBits = 0;
      v68.value._object = 0;
      v41.super.isa = v37;
      v70._countAndFlagsBits = 1936744781;
      v70._object = 0xE400000000000000;
      *v40 = sub_10007D258(v66, v68, v41, v70, 0xD000000000000019, v46);
      v40[1] = v42;
      sub_10002CE34(v30, v53, type metadata accessor for NearbyAccessoryRectangularWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10002CE9C(&qword_1000DEC28, type metadata accessor for NearbyLargeWidgetView, &unk_100082DE0);
      sub_10002CE9C(&qword_1000DEC30, type metadata accessor for NearbyAccessoryRectangularWidgetView, &unk_100082D90);
      v43 = v55;
      sub_10007D9D8();
      sub_100026310(v43, v64, &qword_1000DEBE8, &qword_100082BB0);
      swift_storeEnumTagMultiPayload();
      sub_10002CEE4();
      sub_10002CFD0();
      sub_10007D9D8();
      sub_1000256C0(v43, &qword_1000DEBE8, &qword_100082BB0);
      sub_100026310(v34, v29, &qword_1000DEC10, &qword_100082BD8);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_10002D0BC();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v34, &qword_1000DEC10, &qword_100082BD8);
      v31 = type metadata accessor for NearbyAccessoryRectangularWidgetView;
    }

    v26 = v31;
    v27 = v30;
    return sub_10002D1C4(v27, v26);
  }

  v24 = v18;
  sub_10002CE34(v1, v18, type metadata accessor for NearbyEntryContent);
  sub_10002CE34(v18, v11, type metadata accessor for NearbySmallWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_10002CE9C(&qword_1000DEC40, type metadata accessor for NearbySmallWidgetView, &unk_100082D40);
  sub_10002CE9C(&qword_1000DEC48, type metadata accessor for NearbyMediumWidgetView, &unk_100082CF0);
  sub_10007D9D8();
  sub_100026310(v13, v64, &qword_1000DEC08, &qword_100082BD0);
  swift_storeEnumTagMultiPayload();
  sub_10002CEE4();
  sub_10002CFD0();
  sub_10007D9D8();
  sub_1000256C0(v13, &qword_1000DEC08, &qword_100082BD0);
  sub_100026310(v15, v57, &qword_1000DEC10, &qword_100082BD8);
  swift_storeEnumTagMultiPayload();
  sub_100015240(&qword_1000DEC58, &unk_100082C50);
  sub_10002D0BC();
  sub_10002D148();
  sub_10007D9D8();
  sub_1000256C0(v15, &qword_1000DEC10, &qword_100082BD8);
  v25 = type metadata accessor for NearbySmallWidgetView;
LABEL_3:
  v26 = v25;
  v27 = v24;
  return sub_10002D1C4(v27, v26);
}

uint64_t sub_10002CA74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100026310(v2, &v14 - v9, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D638();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10002CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10002CE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002CE9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002CEE4()
{
  result = qword_1000DEC38;
  if (!qword_1000DEC38)
  {
    sub_100015288(&qword_1000DEC08, &qword_100082BD0);
    sub_10002CE9C(&qword_1000DEC40, type metadata accessor for NearbySmallWidgetView, &unk_100082D40);
    sub_10002CE9C(&qword_1000DEC48, type metadata accessor for NearbyMediumWidgetView, &unk_100082CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC38);
  }

  return result;
}

unint64_t sub_10002CFD0()
{
  result = qword_1000DEC50;
  if (!qword_1000DEC50)
  {
    sub_100015288(&qword_1000DEBE8, &qword_100082BB0);
    sub_10002CE9C(&qword_1000DEC28, type metadata accessor for NearbyLargeWidgetView, &unk_100082DE0);
    sub_10002CE9C(&qword_1000DEC30, type metadata accessor for NearbyAccessoryRectangularWidgetView, &unk_100082D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC50);
  }

  return result;
}

unint64_t sub_10002D0BC()
{
  result = qword_1000DEC60;
  if (!qword_1000DEC60)
  {
    sub_100015288(&qword_1000DEC10, &qword_100082BD8);
    sub_10002CEE4();
    sub_10002CFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC60);
  }

  return result;
}

unint64_t sub_10002D148()
{
  result = qword_1000DEC68;
  if (!qword_1000DEC68)
  {
    sub_100015288(&qword_1000DEC58, &unk_100082C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC68);
  }

  return result;
}

uint64_t sub_10002D1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10002D24C(uint64_t a1)
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NearbyEntryContent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002D330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10002D3AC(uint64_t a1)
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NearbyEntryContent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002D460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NearbyEntryContent(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002D570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NearbyEntryContent(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002D6A0(uint64_t a1)
{
  result = type metadata accessor for NearbyEntryContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002D70C()
{
  result = qword_1000DEED0;
  if (!qword_1000DEED0)
  {
    sub_100015288(&qword_1000DEED8, &qword_100082CE8);
    sub_10002D0BC();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEED0);
  }

  return result;
}

uint64_t sub_10002D858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002D8C8()
{
  result = qword_1000DEF98;
  if (!qword_1000DEF98)
  {
    sub_100015288(&qword_1000DEF88, &qword_100082F48);
    sub_10002D954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEF98);
  }

  return result;
}

unint64_t sub_10002D954()
{
  result = qword_1000DEFA0;
  if (!qword_1000DEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFA0);
  }

  return result;
}

unint64_t sub_10002D9A8()
{
  result = qword_1000E0940;
  if (!qword_1000E0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0940);
  }

  return result;
}

void sub_10002D9FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_10002DA0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002DA1C()
{
  result = qword_1000DF040;
  if (!qword_1000DF040)
  {
    sub_100015288(&qword_1000DF038, &qword_100082FF8);
    sub_10002DDAC(&qword_1000DF048, &qword_1000DF050, &qword_100083000, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF040);
  }

  return result;
}

uint64_t sub_10002DB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015240(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002DB9C(uint64_t a1)
{
  result = type metadata accessor for NearbyButtonContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002DCA0()
{
  result = qword_1000DF1D0;
  if (!qword_1000DF1D0)
  {
    sub_100015288(&qword_1000DF1B8, &qword_1000831D0);
    sub_10002DD58();
    sub_10002DDAC(&qword_1000DF1E0, &qword_1000DF1C8, &unk_1000831E0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1D0);
  }

  return result;
}

unint64_t sub_10002DD58()
{
  result = qword_1000DF1D8;
  if (!qword_1000DF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1D8);
  }

  return result;
}

uint64_t sub_10002DDAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002DDF4()
{
  result = qword_1000DF200;
  if (!qword_1000DF200)
  {
    sub_100015288(&qword_1000DF1F8, &qword_100084360);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF200);
  }

  return result;
}

uint64_t sub_10002DE98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    sub_10002CE9C(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002DF60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002DFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002E01C()
{
  result = [v0 destination];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result mapItemStorage];

  if (!v3)
  {
    return 1;
  }

  v4 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v3 isPlaceHolderPlace:0];
  if (!v4)
  {

    return 1;
  }

  v5 = v4;
  v6 = [v4 _styleAttributes];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 scale];
  v10 = v9;

  if (!v6 || (v11 = [objc_opt_self() imageForStyle:v6 size:3 forScale:0 format:0 nightMode:v10]) == 0)
  {
    v12 = objc_opt_self();
    v13 = [objc_opt_self() markerStyleAttributes];
    v11 = [v12 imageForStyle:v13 size:3 forScale:0 format:0 nightMode:v10];
  }

  v14 = [v7 mainScreen];
  [v14 scale];
  v16 = v15;

  if (!v6 || ![objc_opt_self() imageForStyle:v6 size:3 forScale:0 format:1 nightMode:v16])
  {
    v17 = objc_opt_self();
    v18 = [objc_opt_self() markerStyleAttributes];
    [v17 imageForStyle:v18 size:3 forScale:0 format:1 nightMode:v16];
  }

  return v11;
}

id sub_10002E2C0()
{
  v1 = v0;
  v2 = sub_10007D6B8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v9 = sub_100015240(&qword_1000DF230, &qword_100083280);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  *(&v38 - v10) = swift_getKeyPath();
  sub_100015240(&qword_1000DF238, &qword_1000832B8);
  swift_storeEnumTagMultiPayload();
  if ([v0 type] == 24 && ((v12 = objc_msgSend(v0, "dataForKey:", @"MapsSuggestionsContactAsDataKey")) != 0 && (v13 = v12, v14 = sub_10007D2A8(), v16 = v15, v13, sub_10002620C(0, &qword_1000DF240, NSKeyedUnarchiver_ptr), sub_10002620C(0, &qword_1000DF248, CNContact_ptr), v31 = sub_10007E2D8(), sub_100005744(v14, v16), v31) || (v17 = objc_msgSend(v1, "stringForKey:", @"MapsSuggestionsContactLikelyAppleIDKey"), v31 = objc_msgSend(objc_opt_self(), "contactWithDisplayName:emailOrPhoneNumber:", 0, v17), v17, v31)))
  {
    v32 = [objc_opt_self() mainScreen];
    [v32 scale];
    v34 = v33;

    sub_10002E98C(v11, v8);
    (*(v3 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v2);
    LOBYTE(v32) = sub_10007D6A8();
    v35 = *(v3 + 8);
    v35(v6, v2);
    v35(v8, v2);
    v23 = [v31 avatarImageWithSize:v32 & 1 scale:128.0 rightToLeft:{128.0, v34}];

    sub_10002EE0C(v11);
    v36 = v23;
  }

  else
  {
    v18 = [v1 styleAttributes];
    v19 = objc_opt_self();
    v20 = [v19 mainScreen];
    [v20 scale];
    v22 = v21;

    if (!v18 || (v23 = [objc_opt_self() imageForStyle:v18 size:3 forScale:0 format:0 nightMode:v22]) == 0)
    {
      v24 = objc_opt_self();
      v25 = [objc_opt_self() markerStyleAttributes];
      v23 = [v24 imageForStyle:v25 size:3 forScale:0 format:0 nightMode:v22];
    }

    v26 = [v19 mainScreen];
    [v26 scale];
    v28 = v27;

    if (!v18 || ![objc_opt_self() imageForStyle:v18 size:3 forScale:0 format:1 nightMode:v28])
    {
      v29 = objc_opt_self();
      v30 = [objc_opt_self() markerStyleAttributes];
      [v29 imageForStyle:v30 size:3 forScale:0 format:1 nightMode:v28];
    }

    sub_10002EE0C(v11);
  }

  return v23;
}

uint64_t sub_10002E8C4(uint64_t a1)
{
  v2 = sub_10007D6B8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10007D798();
}

uint64_t sub_10002E98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v15 = sub_10007D848();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000DF238, &qword_1000832B8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_100015240(&qword_1000DF230, &qword_100083280);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  sub_100026310(a1, &v15 - v10, &qword_1000DF230, &qword_100083280);
  sub_100026310(v11, v8, &qword_1000DF238, &qword_1000832B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002EE0C(v11);
    v12 = sub_10007D6B8();
    return (*(*(v12 - 8) + 32))(v16, v8, v12);
  }

  else
  {
    sub_10007E2B8();
    v14 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v15);
    return sub_10002EE0C(v11);
  }
}

void sub_10002EC08()
{
  v0 = objc_opt_self();
  v1 = [v0 recentSearchStyleAttributes];
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  if (!v1 || (v6 = [objc_opt_self() imageForStyle:v1 size:4 forScale:0 format:0 nightMode:v5]) == 0)
  {
    v7 = objc_opt_self();
    v8 = [v0 markerStyleAttributes];
    v6 = [v7 imageForStyle:v8 size:4 forScale:0 format:0 nightMode:v5];
  }

  v9 = [v2 mainScreen];
  [v9 scale];
  v11 = v10;

  if (!v1 || (v12 = [objc_opt_self() imageForStyle:v1 size:4 forScale:0 format:1 nightMode:v11]) == 0)
  {
    v13 = objc_opt_self();
    v14 = [v0 markerStyleAttributes];
    v12 = [v13 imageForStyle:v14 size:4 forScale:0 format:1 nightMode:v11];
  }

  qword_1000E4AD0 = v6;
  *algn_1000E4AD8 = v12;
}

uint64_t sub_10002EE0C(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DF230, &qword_100083280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10002EE74(uint64_t a1)
{
  v2 = sub_10007D638();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE228 != -1)
  {
    swift_once();
  }

  v7 = qword_1000E4AD0;
  v6 = *algn_1000E4AD8;
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 88))(v5, v2);
  if (v8 == enum case for ColorScheme.light(_:))
  {
    v6 = v7;
  }

  else if (v8 != enum case for ColorScheme.dark(_:))
  {
    goto LABEL_12;
  }

  if (v6)
  {
    v9 = v6;
LABEL_10:
    v11 = v6;
    return v9;
  }

  v10 = sub_10007E138();
  v9 = [objc_opt_self() imageNamed:v10];

  if (v9)
  {
    v6 = 0;
    goto LABEL_10;
  }

  __break(1u);
LABEL_12:
  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_10002F074()
{
  result = sub_10007DD58();
  qword_1000E4AE0 = result;
  return result;
}

__n128 sub_10002F0BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10002F0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10002F120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002F1A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10007D8E8();
  __chkstk_darwin(v2 - 8);
  sub_10007D8D8();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_10007D8C8(v53);
  v51 = v1;
  v44 = *(v1 + 24);
  v46 = *(v1 + 16);

  sub_10007DDB8();
  sub_10007D8A8();

  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_10007D8C8(v54);
  sub_10007D908();
  v3 = sub_10007DBD8();
  v41 = v4;
  v42 = v3;
  v40 = v5;
  sub_10007DA38();
  v6 = sub_10007DBA8();
  v8 = v7;
  v10 = v9;
  sub_10007DB58();
  v11 = sub_10007DBB8();
  v13 = v12;
  v15 = v14;

  sub_10002D9FC(v6, v8, v10 & 1);

  sub_10007DB18();
  v16 = sub_10007DB88();
  v49 = v17;
  v50 = v16;
  v47 = v18;
  v48 = v19;
  sub_10002D9FC(v11, v13, v15 & 1);

  sub_10002D9FC(v42, v41, v40 & 1);

  sub_10007D8D8();
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_10007D8C8(v55);
  v56._object = v44;
  v56._countAndFlagsBits = v46;
  sub_10007D8B8(v56);
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_10007D8C8(v57);
  sub_10007D908();
  v20 = sub_10007DBD8();
  v43 = v21;
  v45 = v20;
  LOBYTE(v42) = v22;
  sub_10007DA38();
  v23 = sub_10007DBA8();
  v25 = v24;
  LOBYTE(v6) = v26;
  sub_10007DB38();
  v27 = sub_10007DBB8();
  v29 = v28;
  LOBYTE(v13) = v30;

  sub_10002D9FC(v23, v25, v6 & 1);

  sub_10007DB18();
  v31 = sub_10007DB88();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10002D9FC(v27, v29, v13 & 1);

  sub_10002D9FC(v45, v43, v42 & 1);

  *a1 = sub_10007D878();
  a1[1] = 0;
  *(a1 + 16) = 1;
  v38 = sub_100015240(&qword_1000DF250, &qword_1000833F8);
  sub_10002F5D4(v48, v31, v33, v35 & 1, v37, a1 + *(v38 + 44), v51);
  sub_10002D9FC(v50, v49, v47 & 1);

  sub_10002D9FC(v31, v33, v35 & 1);
}

uint64_t sub_10002F5D4@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = a6;
  v23 = a8;
  v21[0] = a4;
  v21[1] = a5;
  v12 = sub_100015240(&qword_1000DF258, &qword_100083400);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v21 - v16;
  *v17 = sub_10007D958();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_100015240(&qword_1000DF260, &qword_100083408);
  sub_10002F768(v22, a7 & 1, &v17[*(v18 + 44)], a10);
  sub_100026310(v17, v15, &qword_1000DF258, &qword_100083400);
  sub_100026310(v15, a9, &qword_1000DF258, &qword_100083400);
  v19 = a9 + *(sub_100015240(&qword_1000DF268, &unk_100083410) + 48);
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_1000256C0(v17, &qword_1000DF258, &qword_100083400);
  return sub_1000256C0(v15, &qword_1000DF258, &qword_100083400);
}

uint64_t sub_10002F768@<X0>(uint64_t a6@<X5>, int a7@<W6>, uint64_t a9@<X8>, uint64_t a10)
{
  LODWORD(v93) = a7;
  v94 = a6;
  v90 = a9;
  v10 = sub_10007D8E8();
  __chkstk_darwin(v10 - 8);
  v87 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v92 = *(v98 - 8);
  v12 = __chkstk_darwin(v98);
  v89 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v79 - v14;
  v16 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v17 = __chkstk_darwin(v16 - 8);
  v88 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v96 = &v79 - v20;
  v21 = __chkstk_darwin(v19);
  v95 = &v79 - v22;
  __chkstk_darwin(v21);
  v91 = &v79 - v23;
  sub_10007D8D8();
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  sub_10007D8C8(v103);
  sub_10007D898();
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  sub_10007D8C8(v104);
  sub_10007D898();
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  sub_10007D8C8(v105);
  sub_10007D908();
  v24 = sub_10007DBD8();
  v26 = v25;
  v99 = v24;
  v100 = v25;
  v28 = v27 & 1;
  v101 = v27 & 1;
  v102 = v29;
  sub_10007DCA8();
  sub_10002D9FC(v24, v26, v28);

  v99 = &type metadata for Text;
  v100 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v98;
  v97 = v15;
  sub_10007DC78();
  v93 = *(v92 + 8);
  v94 = v92 + 8;
  v93(v15, v30);
  v31 = *(a10 + 32);
  v32 = *(a10 + 40);
  v33 = *(a10 + 56);
  v85 = *(a10 + 48);
  v84 = v33;
  v86 = *(a10 + 72);
  v83 = *(a10 + 64);
  v99 = v31;
  v100 = v32;
  sub_10002D9A8();

  v80 = sub_10007DBF8();
  v79 = v34;
  v36 = v35;
  v81 = v37;
  LODWORD(v99) = sub_10007DA38();
  v38 = sub_10007DBA8();
  v40 = v39;
  v42 = v41;
  sub_10007DB38();
  v43 = sub_10007DBB8();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_10002D9FC(v38, v40, v42 & 1);

  sub_10002D9FC(v80, v79, v36 & 1);

  v99 = v43;
  v100 = v45;
  v101 = v47 & 1;
  v102 = v49;
  v50 = v97;
  sub_10007DCA8();
  sub_10002D9FC(v43, v45, v47 & 1);

  v51 = v98;
  sub_10007DC78();
  v93(v50, v51);
  sub_10007D8D8();
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  sub_10007D8C8(v106);
  sub_10007D898();
  v107._countAndFlagsBits = 0;
  v107._object = 0xE000000000000000;
  sub_10007D8C8(v107);
  sub_10007D908();
  v86 = sub_10007DBD8();
  v85 = v52;
  LOBYTE(v45) = v53;
  v87 = v54;
  LODWORD(v99) = sub_10007DA48();
  v55 = sub_10007DBA8();
  v57 = v56;
  v59 = v58;
  sub_10007DAF8();
  v60 = sub_10007DBB8();
  v62 = v61;
  v64 = v63;
  v66 = v65;

  sub_10002D9FC(v55, v57, v59 & 1);

  sub_10002D9FC(v86, v85, v45 & 1);

  v99 = v60;
  v100 = v62;
  v101 = v64 & 1;
  v102 = v66;
  v67 = v97;
  sub_10007DCA8();
  sub_10002D9FC(v60, v62, v64 & 1);

  v68 = v96;
  sub_100026310(v91, v96, &qword_1000DF278, &qword_100083420);
  v69 = v95;
  v70 = v88;
  sub_100026310(v95, v88, &qword_1000DF278, &qword_100083420);
  v71 = *(v92 + 16);
  v72 = v89;
  v73 = v98;
  v71(v89, v67, v98);
  v74 = v68;
  v75 = v90;
  sub_100026310(v74, v90, &qword_1000DF278, &qword_100083420);
  v76 = sub_100015240(&qword_1000DF280, &qword_100083428);
  sub_100026310(v70, v75 + *(v76 + 48), &qword_1000DF278, &qword_100083420);
  v71((v75 + *(v76 + 64)), v72, v73);
  v77 = v93;
  v93(v97, v73);
  sub_1000256C0(v69, &qword_1000DF278, &qword_100083420);
  sub_1000256C0(v91, &qword_1000DF278, &qword_100083420);
  v77(v72, v73);
  sub_1000256C0(v70, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v96, &qword_1000DF278, &qword_100083420);
}

__n128 sub_100030000(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003001C(uint64_t a1, int a2)
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

uint64_t sub_100030064(uint64_t result, int a2, int a3)
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

unint64_t sub_1000300C8()
{
  result = qword_1000DF288;
  if (!qword_1000DF288)
  {
    sub_100015288(&unk_1000DF290, &unk_1000834E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF288);
  }

  return result;
}

void sub_10003012C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_1000301E4(v3, v4);
  a2(v3, v4);

  sub_100030228(v3, v4);
}

uint64_t sub_100030190()
{
  sub_10003AAE8();

  return swift_deallocClassInstance();
}

id sub_1000301E4(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

void sub_100030228(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10003026C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v32[-v8];
  sub_10007E0B8();
  v10 = *(v4 + 88);
  v11 = v10(v9, v3);
  if (v11 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_23;
  }

  v33 = enum case for WidgetFamily.systemLarge(_:);
  if (v11 != enum case for WidgetFamily.systemMedium(_:) && v11 != enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_23;
  }

  v34 = enum case for WidgetFamily.systemMedium(_:);
  v35 = enum case for WidgetFamily.systemSmall(_:);
  if (a2 >> 62)
  {
    v13 = sub_10007E528();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v36 = v10;
  v37 = v3;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    v18 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v19 = sub_10007E468();
      }

      else
      {
        v19 = *(a2 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = [v19 boundingMapRegion];
      GEOMapRectForMapRegion();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v40.origin.x = v23;
      v40.origin.y = v25;
      v40.size.width = v27;
      v40.size.height = v29;
      v39 = MKMapRectUnion(v38, v40);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
    }

    while (v13 != v18);
  }

  sub_10007E0A8();
  sub_10007E0B8();
  v30 = v36(v7, v37);
  if (v30 != v35)
  {
    if (v30 == v34)
    {
      sub_10007E0A8();
      return _MKMapRectThatFits();
    }

    if (v30 == v33)
    {
      return _MKMapRectThatFits();
    }
  }

LABEL_23:
  result = sub_10007E518();
  __break(1u);
  return result;
}

void sub_1000306EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = xmmword_1000834F0;
  *(v5 + 32) = 0;
  *(v5 + 40) = dispatch_group_create();
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_100024EF0(_swiftEmptyArrayStorage);
  *(v5 + 64) = 0;
  *(v5 + 72) = _swiftEmptyArrayStorage;
  v10 = objc_allocWithZone(MKMapSnapshotOptions);

  v11 = [v10 init];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  v13 = *(v5 + 16);
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v13 _setShowsAppleLogo:0];
  v14 = *(v5 + 16);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  sub_10007E0A8();
  [v15 setSize:?];

  v16 = *(v5 + 16);
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100015240(&qword_1000DF448, &unk_100083550);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100083500;
  v18 = objc_opt_self();
  v19 = v16;
  *(v17 + 32) = [v18 customFeatureAnnotationForMapItem:a2 styleAttributes:a3 suppressLabel:1];
  sub_100015240(&unk_1000DF450, &qword_100083560);
  isa = sub_10007E1C8().super.isa;

  [v19 _setCustomFeatureAnnotations:isa];

  v21 = *(v5 + 16);
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v21 _setSearchResultsType:1];
  v22 = *(v5 + 16);
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  sub_10003026C(a1, a4);
  [v23 setMapRect:?];

  v24 = *(v5 + 16);
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_100030A4C();
  v25 = v24;
  v26 = sub_10007E1C8().super.isa;
  [v25 _setComposedRoutesForRouteLines:v26 selectedRouteIndex:0];

  v27 = *(v5 + 16);
  v28 = v27;

  if (v27)
  {
    if (a4 >> 62)
    {
      if (sub_10007E528())
      {
        goto LABEL_10;
      }
    }

    else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((a4 & 0xC000000000000001) != 0)
      {
        v29 = sub_10007E468();
        goto LABEL_13;
      }

      if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(a4 + 32);
LABEL_13:
        v30 = v29;

        v31 = [v30 mapType];

LABEL_16:
        [v28 setMapType:v31];

        v32 = sub_10007E0C8();
        (*(*(v32 - 8) + 8))(a1, v32);
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v31 = 0;
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_100030A4C()
{
  result = qword_1000DE968;
  if (!qword_1000DE968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DE968);
  }

  return result;
}

void sub_100030A98(void *a1)
{
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location] = 0;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error] = 0;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager] = 0;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup] = 0;
  v3 = sub_10007E138();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for GeneralMapsLocationUpdater();
  v4 = objc_msgSendSuper2(&v13, "initWithName:queue:", v3, a1);

  v5 = qword_1000DE278;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = objc_allocWithZone(CLLocationManager);

  v8 = a1;
  v9 = sub_10007E138();

  v10 = [v7 initWithEffectiveBundleIdentifier:v9 delegate:v6 onQueue:v8];

  v11 = *&v6[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  *&v6[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager] = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
  }

  else
  {
    __break(1u);
  }
}

id sub_100030C50()
{
  v1 = v0;
  v2 = sub_10007DEB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  if (v11)
  {
    v21 = v8;
    v12 = v11;
    v20 = [v1 dispatchQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = sub_100032FE8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C8D80;
    v14 = _Block_copy(aBlock);
    v15 = v12;
    sub_10007DEC8();
    v22 = _swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    v16 = v20;
    sub_10007E338();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v21);
  }

  v17 = type metadata accessor for GeneralMapsLocationUpdater();
  v24.receiver = v1;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, "dealloc");
}

double sub_100030FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10007DEB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007DED8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v3 dispatchQueue];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100004690;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8CB8;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  sub_10007DEC8();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);

  return result;
}

void sub_100031240(void (*a1)(id, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = sub_1000312D4();
  v6 = v5;
  v7 = *(a3 + OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error);
  swift_errorRetain();
  a1(v8, v6, v7);
}

void *sub_1000312D4()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = [v0 dispatchQueue];
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = sub_10007DF68();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location];
    if (!v7)
    {
      return sub_10003145C();
    }

    v8 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
    if (v8)
    {
      v9 = v7;
      v10 = [v8 accuracyAuthorization];
      v11 = qword_1000DF460;
      qword_1000DF460 = v7;
      qword_1000DF468 = v10;
      v12 = v9;

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10003145C()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v48[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v48[-1] - v7;
  if (!qword_1000DF460)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v28 = sub_10007D5C8();
    sub_1000046BC(v28, qword_1000E4B28);
    v29 = sub_10007D5A8();
    v30 = sub_10007E288();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "GeneralMapsLocationUpdater: previousLocationInfo: no previous location data available", v31, 2u);
    }

    goto LABEL_31;
  }

  v9 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager;
  v10 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager);
  if (!v10)
  {
    __break(1u);
    goto LABEL_34;
  }

  v11 = qword_1000DF468;
  v12 = qword_1000DF460;
  v13 = qword_1000DF460;
  if ([v10 authorizationStatus] - 3 > 1)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v32 = sub_10007D5C8();
    sub_1000046BC(v32, qword_1000E4B28);
    v33 = sub_10007D5A8();
    v34 = sub_10007E288();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "GeneralMapsLocationUpdater: previousLocationInfo: previous location authorization revoked";
    goto LABEL_24;
  }

  result = *(v0 + v9);
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  if (v11 != [result accuracyAuthorization])
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v37 = sub_10007D5C8();
    sub_1000046BC(v37, qword_1000E4B28);
    v33 = sub_10007D5A8();
    v34 = sub_10007E288();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "GeneralMapsLocationUpdater: previousLocationInfo: previous location accuracy authorization changed";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_25:

    return 0;
  }

  sub_10007D3A8();
  v14 = [v13 timestamp];
  sub_10007D388();

  sub_10007D2B8();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v5, v1);
  v17(v8, v1);
  if (v16 >= 3600.0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v38 = sub_10007D5C8();
    sub_1000046BC(v38, qword_1000E4B28);
    v39 = v13;
    v29 = sub_10007D5A8();
    v40 = sub_10007E288();

    if (os_log_type_enabled(v29, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v41 = 136446210;
      v43 = [v39 timestamp];
      sub_10007D388();

      v44 = sub_10007E178();
      v46 = sub_100051190(v44, v45, v48);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v29, v40, "GeneralMapsLocationUpdater: previousLocationInfo: previous location is too old (%{public}s)", v41, 0xCu);
      sub_1000250AC(v42);
    }

LABEL_31:
    return 0;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v18 = sub_10007D5C8();
  sub_1000046BC(v18, qword_1000E4B28);
  v19 = v13;
  v20 = sub_10007D5A8();
  v21 = sub_10007E288();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48[1] = v11;
    v49 = v23;
    *v22 = 136380675;
    v48[0] = v19;
    v24 = v19;
    v25 = sub_10007E178();
    v27 = sub_100051190(v25, v26, &v49);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "GeneralMapsLocationUpdater: previousLocationInfo: using previous location (%{private}s)", v22, 0xCu);
    sub_1000250AC(v23);
  }

  return v12;
}

double sub_100031AA8()
{
  v1 = sub_10007DEB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007DED8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 dispatchQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100032FC4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8D30;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_10007DEC8();
  v14[1] = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

void sub_100031D78(void *a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_10007DF48();
  isa = v7[-1].isa;
  __chkstk_darwin(v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = [v4 dispatchQueue];
  (*(isa + 13))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_10007DF68();
  (*(isa + 1))(v10, v7);
  if (v11)
  {
    v3 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup;
    v12 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup];
    if (!v12)
    {
      if (qword_1000DE268 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    v7 = v12;
    [v4 considerMyAllowanceAsLimited:{objc_msgSend(a1, "accuracyAuthorization") != 0}];
    if (!(a2 >> 62))
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }

LABEL_19:
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v32 = sub_10007D5C8();
      sub_1000046BC(v32, qword_1000E4B28);
      v28 = sub_10007D5A8();
      v33 = sub_10007E2A8();
      if (os_log_type_enabled(v28, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v28, v33, "GeneralMapsLocationUpdater: singleLocationUpdate END (no location)", v34, 2u);
      }

      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  v13 = sub_10007E528();
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_5:
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_26:
    v16 = sub_10007E468();
LABEL_10:
    a2 = v16;
    if (qword_1000DE268 == -1)
    {
LABEL_11:
      v17 = sub_10007D5C8();
      sub_1000046BC(v17, qword_1000E4B28);
      v18 = a2;
      v19 = sub_10007D5A8();
      v20 = sub_10007E2C8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v18;
        v37 = v22;
        *v21 = 136380675;
        sub_10002620C(0, &qword_1000DF538, CLLocation_ptr);
        v23 = v18;
        v24 = sub_10007E178();
        v26 = sub_100051190(v24, v25, &v37);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "GeneralMapsLocationUpdater: singleLocationUpdate END (location: %{private}s)", v21, 0xCu);
        sub_1000250AC(v22);
      }

      v27 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location];
      *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location] = v18;
      v28 = v18;

      [v4 considerMyNewLocation:v28];
LABEL_23:

      v35 = *&v4[v3];
      *&v4[v3] = 0;

      dispatch_group_leave(v7);
      goto LABEL_24;
    }

LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v15 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a2 + 8 * v15 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_15:
  v29 = sub_10007D5C8();
  sub_1000046BC(v29, qword_1000E4B28);
  v7 = sub_10007D5A8();
  v30 = sub_10007E2A8();
  if (os_log_type_enabled(v7, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v7, v30, "GeneralMapsLocationUpdater: locationManager:didUpdateLocations: was called when not expected", v31, 2u);
  }

LABEL_24:
}

double sub_1000324B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007DEB8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_10007DED8();
  v12 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 dispatchQueue];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_100032C1C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8C18;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_10007DEC8();
  v20[1] = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20[0]);

  return result;
}

void sub_1000327E8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10002620C(0, &qword_1000DF518, _CLPlaceInference_ptr);
    isa = sub_10007E1C8().super.isa;
  }

  if (a2)
  {
    v6 = sub_10007D268();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_100032894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007DF48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = [v4 dispatchQueue];
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = sub_10007DF68();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_10007D5C8();
  sub_1000046BC(v13, qword_1000E4B28);
  v14 = sub_10007D5A8();
  v15 = sub_10007E298();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching Place Inference", v16, 2u);
  }

  v17 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  if (v17)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032B24;
    aBlock[3] = &unk_1000C8BC8;
    v18 = _Block_copy(aBlock);
    v19 = v17;

    [v19 _fetchPlaceInferencesWithFidelityPolicy:a1 handler:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100032B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10002620C(0, &qword_1000DF518, _CLPlaceInference_ptr);
    v4 = sub_10007E1D8();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100032C50(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10007DF48();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8->isa = [v3 dispatchQueue];
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = sub_10007DF68();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup;
  v10 = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup];
  if (v10)
  {
    v11 = qword_1000DE268;
    v8 = v10;
    if (v11 == -1)
    {
LABEL_4:
      v12 = sub_10007D5C8();
      sub_1000046BC(v12, qword_1000E4B28);
      swift_errorRetain();
      v13 = sub_10007D5A8();
      v14 = sub_10007E2A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = a1;
        v25 = v16;
        *v15 = 136446210;
        swift_errorRetain();
        sub_100015240(&unk_1000DF540, &qword_100082988);
        v17 = sub_10007E178();
        v19 = sub_100051190(v17, v18, &v25);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsLocationUpdater: singleLocationUpdate END (error: %{public}s)", v15, 0xCu);
        sub_1000250AC(v16);
      }

      *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error] = a1;
      swift_errorRetain();

      v20 = *&v3[v2];
      *&v3[v2] = 0;

      dispatch_group_leave(v8);
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v21 = sub_10007D5C8();
  sub_1000046BC(v21, qword_1000E4B28);
  v8 = sub_10007D5A8();
  v22 = sub_10007E2A8();
  if (os_log_type_enabled(v8, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v8, v22, "GeneralMapsLocationUpdater: locationManager:didFailWithError: was called when not expected", v23, 2u);
  }

LABEL_11:
}

char *sub_100032FC4()
{
  result = *(v0 + 16);
  if (*&result[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location])
  {
    return [result considerMyNewLocation:?];
  }

  return result;
}

uint64_t sub_100032FF8(uint64_t *a1, int a2)
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

uint64_t sub_100033040(uint64_t result, int a2, int a3)
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

void sub_1000330F0(uint64_t a1)
{
  type metadata accessor for CommuteWindowEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000331AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v3 - 8);
  v37 = &v35 - v4;
  v5 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v39 = sub_10007DA88();
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&qword_1000DF888, &qword_100083988);
  __chkstk_darwin(v11);
  v13 = (&v35 - v12);
  v14 = sub_100015240(&qword_1000DF890, qword_100083990);
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for CommuteWindowPlatterContent(0);
  v18 = v13 + v17[7];
  v40 = v2;
  sub_100035A24(v2, v18, type metadata accessor for CommuteWindowEntryContent);
  *v13 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v13 + v17[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  *(v13 + v17[6]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v19 = (v13 + v17[8]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v20.super.isa = qword_1000E4B68;
  v34._countAndFlagsBits = 0x800000010008FAB0;
  v45._countAndFlagsBits = 0x20B7C22040243125;
  v45._object = 0xAC00000040243225;
  v46.value._countAndFlagsBits = 0;
  v46.value._object = 0;
  v47._countAndFlagsBits = 0x20B7C22040243125;
  v47._object = 0xAC00000040243225;
  *v19 = sub_10007D258(v45, v46, v20, v47, 0xD000000000000076, v34);
  v19[1] = v21;
  v22 = sub_10007DAC8();
  sub_10007D628();
  v23 = v13 + *(v11 + 36);
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_10007DA78();
  sub_10007DE88();
  v28 = sub_100036114();
  sub_10007DCB8();
  (*(v8 + 8))(v10, v39);
  sub_1000256C0(v13, &qword_1000DF888, &qword_100083988);
  v29 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v40 + *(v29 + 40), v7, &qword_1000DF810, &qword_1000838C0);
  v30 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v30 - 8) + 48))(v7, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v37;
    sub_100026310(&v7[*(v30 + 24)], v37, &qword_1000DEEE0, &qword_100082E30);
    sub_100035D38(v7, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    v41 = v11;
    v42 = &type metadata for Color;
    v43 = v28;
    v44 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v33 = v36;
    sub_10007DC18();
    sub_1000256C0(v32, &qword_1000DEEE0, &qword_100082E30);
    return (*(v35 + 8))(v16, v33);
  }

  return result;
}

double sub_100033748@<D0>(void *a1@<X8>)
{
  if (qword_1000DE238 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000E4AE8;

  return result;
}

uint64_t sub_1000337D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v3 - 8);
  v54 = &v51 - v4;
  v5 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  __chkstk_darwin(v5 - 8);
  v61 = &v51 - v6;
  v7 = sub_10007DA88();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DF818, &qword_1000838C8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v57 = sub_100015240(&qword_1000DF820, &qword_1000838D0);
  __chkstk_darwin(v57);
  v16 = &v51 - v15;
  v17 = sub_100015240(&qword_1000DF828, &qword_1000838D8);
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v62 = &v51 - v18;
  v19 = sub_10007DFF8();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  sub_1000349B0(type metadata accessor for CommuteWindowMediumLargeWidgetView, &v51 - v24);
  (*(v20 + 104))(v23, enum case for WidgetFamily.systemMedium(_:), v19);
  sub_100035A8C(&qword_1000DF830, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10007E1B8();
  sub_10007E1B8();
  v26 = *(v20 + 8);
  v26(v23, v19);
  v26(v25, v19);
  v27 = v64;
  v28 = v68;
  v29 = sub_10007D948();
  v30 = v27 == v28;
  v31 = v27 == v28;
  v32 = !v30;
  *v16 = v29;
  *(v16 + 1) = 0;
  v16[16] = 1;
  if (v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0x3FF0000000000000;
  }

  v34 = &v16[*(sub_100015240(&qword_1000DF838, &qword_1000838E0) + 44)];
  *v14 = sub_10007D878();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v35 = &v14[*(sub_100015240(&qword_1000DF840, &qword_1000838E8) + 44)];
  v36 = v2;
  v56 = v2;
  sub_100033F4C(v2, v31, v35);
  sub_100026310(v14, v12, &qword_1000DF818, &qword_1000838C8);
  *v34 = 0;
  *(v34 + 1) = v32;
  *(v34 + 2) = v33;
  v34[24] = v31;
  v37 = sub_100015240(&qword_1000DF848, &qword_1000838F0);
  sub_100026310(v12, &v34[*(v37 + 48)], &qword_1000DF818, &qword_1000838C8);
  sub_1000256C0(v14, &qword_1000DF818, &qword_1000838C8);
  sub_1000256C0(v12, &qword_1000DF818, &qword_1000838C8);
  v38 = v58;
  sub_10007DA78();
  v63 = v36;
  sub_10007DE88();
  v39 = sub_100015240(&qword_1000DF850, &qword_1000838F8);
  v40 = sub_10002DDAC(&qword_1000DF858, &qword_1000DF820, &qword_1000838D0, &protocol conformance descriptor for VStack<A>);
  v41 = v57;
  v42 = sub_10002DDAC(&qword_1000DF860, &qword_1000DF850, &qword_1000838F8, &unk_100083A08);
  v51 = v39;
  sub_10007DCB8();
  v43 = v61;
  (*(v59 + 8))(v38, v60);
  sub_1000256C0(v16, &qword_1000DF820, &qword_1000838D0);
  v44 = v56 + *(type metadata accessor for CommuteWindowMediumLargeWidgetView(0) + 24);
  v45 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v44 + *(v45 + 40), v43, &qword_1000DF810, &qword_1000838C0);
  v46 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v46 - 8) + 48))(v43, 1, v46);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = v54;
    sub_100026310(v43 + *(v46 + 24), v54, &qword_1000DEEE0, &qword_100082E30);
    sub_100035D38(v43, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    v64 = v41;
    v65 = v51;
    v66 = v40;
    v67 = v42;
    swift_getOpaqueTypeConformance2();
    v49 = v53;
    v50 = v62;
    sub_10007DC18();
    sub_1000256C0(v48, &qword_1000DEEE0, &qword_100082E30);
    return (*(v52 + 8))(v50, v49);
  }

  return result;
}

uint64_t sub_100033F4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v43 = a3;
  v4 = sub_10007E0C8();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100015240(&qword_1000DF868, &qword_100083938);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v39 - v12);
  v42 = sub_100015240(&qword_1000DF870, &qword_100083940);
  v14 = __chkstk_darwin(v42);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v39 - v18;
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  *v13 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v11 + 44)) = 0x4024000000000000;
  v22 = (v13 + *(v11 + 48));
  v23 = a1 + *(type metadata accessor for CommuteWindowMediumLargeWidgetView(0) + 24);
  v24 = type metadata accessor for CommuteWindowPlatterContent(0);
  sub_100035A24(v23, v22 + v24[7], type metadata accessor for CommuteWindowEntryContent);
  *v22 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v22 + v24[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  *(v22 + v24[6]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v25 = (v22 + v24[8]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v26.super.isa = qword_1000E4B68;
  v38._countAndFlagsBits = 0x800000010008FAB0;
  v48._countAndFlagsBits = 0x20B7C22040243125;
  v48._object = 0xAC00000040243225;
  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v50._countAndFlagsBits = 0x20B7C22040243125;
  v50._object = 0xAC00000040243225;
  *v25 = sub_10007D258(v48, v49, v26, v50, 0xD000000000000076, v38);
  v25[1] = v27;
  v28 = v44;
  if ((v44 & 1) == 0)
  {
    goto LABEL_6;
  }

  v29 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v23 + *(v29 + 40), v9, &qword_1000DF810, &qword_1000838C0);
  v30 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v30 - 8) + 48))(v9, 1, v30);
  if (result != 1)
  {
    v33 = v40;
    v32 = v41;
    (*(v40 + 16))(v6, v9, v41);
    sub_100035D38(v9, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    sub_10007E0A8();
    (*(v33 + 8))(v6, v32);
LABEL_6:
    sub_10007DE88();
    sub_10007D668();
    sub_10002DB0C(v13, v19, &qword_1000DF868, &qword_100083938);
    v34 = &v19[*(v42 + 36)];
    v35 = v46;
    *v34 = v45;
    *(v34 + 1) = v35;
    *(v34 + 2) = v47;
    sub_10002DB0C(v19, v21, &qword_1000DF870, &qword_100083940);
    sub_100026310(v21, v16, &qword_1000DF870, &qword_100083940);
    v36 = v43;
    sub_100026310(v16, v43, &qword_1000DF870, &qword_100083940);
    v37 = v36 + *(sub_100015240(&qword_1000DF878, &qword_100083980) + 48);
    *v37 = 0;
    *(v37 + 8) = v28 & 1;
    *(v37 + 9) = (v28 & 1) == 0;
    sub_1000256C0(v21, &qword_1000DF870, &qword_100083940);
    return sub_1000256C0(v16, &qword_1000DF870, &qword_100083940);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000344FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for CommuteWindowMediumLargeWidgetView(0) + 24);
  v5 = sub_100015240(&qword_1000DF850, &qword_1000838F8);
  sub_100035A24(a1 + v4, a2 + v5[10], type metadata accessor for CommuteWindowEntryContent);
  *a2 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[9]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5[11]) = 3;
  return result;
}

uint64_t sub_1000345EC()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CommuteWindowPlatterContent(0);
  v9 = __chkstk_darwin(v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100035A24(v1, v11 + *(v9 + 28), type metadata accessor for CommuteWindowEntryContent);
  *v11 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v11 + v8[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  *(v11 + v8[6]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v12 = (v11 + v8[8]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v13.super.isa = qword_1000E4B68;
  v18._countAndFlagsBits = 0x800000010008FAB0;
  v20._countAndFlagsBits = 0x20B7C22040243125;
  v20._object = 0xAC00000040243225;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v22._countAndFlagsBits = 0x20B7C22040243125;
  v22._object = 0xAC00000040243225;
  *v12 = sub_10007D258(v20, v21, v13, v22, 0xD000000000000076, v18);
  v12[1] = v14;
  v15 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v1 + *(v15 + 40), v7, &qword_1000DF810, &qword_1000838C0);
  v16 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v16 - 8) + 48))(v7, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100026310(&v7[*(v16 + 24)], v4, &qword_1000DEEE0, &qword_100082E30);
    sub_100035D38(v7, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    sub_100035A8C(&qword_1000DF880, type metadata accessor for CommuteWindowPlatterContent, &unk_10008562C);
    sub_10007DC18();
    sub_1000256C0(v4, &qword_1000DEEE0, &qword_100082E30);
    return sub_100035D38(v11, type metadata accessor for CommuteWindowPlatterContent);
  }

  return result;
}

uint64_t sub_1000349B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_100026310(v2 + *(v12 + 20), v11, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_10007E2B8();
    v15 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100034BC4@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v40 = type metadata accessor for CommuteWindowAccessoryRectangularWidgetView(0);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100015240(&qword_1000DF5E0, &qword_100083678);
  __chkstk_darwin(v38);
  v39 = &v36 - v3;
  v46 = sub_100015240(&qword_1000DF5E8, &qword_100083680);
  __chkstk_darwin(v46);
  v41 = &v36 - v4;
  v45 = type metadata accessor for CommuteWindowMediumLargeWidgetView(0);
  __chkstk_darwin(v45);
  v42 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_100015240(&qword_1000DF5F0, &qword_100083688);
  __chkstk_darwin(v48);
  v47 = &v36 - v6;
  v44 = sub_100015240(&qword_1000DF5F8, &qword_100083690);
  __chkstk_darwin(v44);
  v43 = &v36 - v7;
  v8 = sub_100015240(&qword_1000DF600, &qword_100083698);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v49 = sub_100015240(&qword_1000DF608, &qword_1000836A0);
  __chkstk_darwin(v49);
  v12 = &v36 - v11;
  v50 = sub_100015240(&qword_1000DF610, &unk_1000836A8);
  __chkstk_darwin(v50);
  v14 = &v36 - v13;
  v15 = type metadata accessor for CommuteWindowSmallWidgetView(0);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007DFF8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000349B0(type metadata accessor for CommuteWindowWidgetView, v21);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100035A24(v1, v17, type metadata accessor for CommuteWindowEntryContent);
    sub_100035A24(v17, v10, type metadata accessor for CommuteWindowSmallWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100035A8C(&qword_1000DF630, type metadata accessor for CommuteWindowSmallWidgetView, &unk_1000837C8);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView, &unk_100083868);
    sub_10007D9D8();
    sub_100026310(v12, v43, &qword_1000DF608, &qword_1000836A0);
    swift_storeEnumTagMultiPayload();
    sub_100035AD4();
    sub_100035BC0();
    sub_10007D9D8();
    sub_1000256C0(v12, &qword_1000DF608, &qword_1000836A0);
    sub_100026310(v14, v47, &qword_1000DF610, &unk_1000836A8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100035CAC();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v14, &qword_1000DF610, &unk_1000836A8);
    v23 = type metadata accessor for CommuteWindowSmallWidgetView;
    v24 = v17;
    return sub_100035D38(v24, v23);
  }

  v25 = v10;
  v26 = v43;
  if (v22 == enum case for WidgetFamily.systemMedium(_:))
  {
    v27 = v12;
    v28 = v45;
    v29 = v42;
    sub_100035A24(v1, v42 + *(v45 + 24), type metadata accessor for CommuteWindowEntryContent);
    *v29 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v29 + *(v28 + 20)) = swift_getKeyPath();
    sub_100015240(&qword_1000DEC20, &unk_100083720);
    swift_storeEnumTagMultiPayload();
    sub_100035A24(v29, v25, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100035A8C(&qword_1000DF630, type metadata accessor for CommuteWindowSmallWidgetView, &unk_1000837C8);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView, &unk_100083868);
    sub_10007D9D8();
    sub_100026310(v27, v26, &qword_1000DF608, &qword_1000836A0);
    swift_storeEnumTagMultiPayload();
    sub_100035AD4();
    sub_100035BC0();
    sub_10007D9D8();
    sub_1000256C0(v27, &qword_1000DF608, &qword_1000836A0);
    sub_100026310(v14, v47, &qword_1000DF610, &unk_1000836A8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100035CAC();
    sub_10002D148();
LABEL_7:
    sub_10007D9D8();
    sub_1000256C0(v14, &qword_1000DF610, &unk_1000836A8);
    v23 = type metadata accessor for CommuteWindowMediumLargeWidgetView;
    v24 = v29;
    return sub_100035D38(v24, v23);
  }

  if (v22 == enum case for WidgetFamily.systemLarge(_:))
  {
    v30 = v45;
    v29 = v42;
    sub_100035A24(v1, v42 + *(v45 + 24), type metadata accessor for CommuteWindowEntryContent);
    *v29 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v29 + *(v30 + 20)) = swift_getKeyPath();
    sub_100015240(&qword_1000DEC20, &unk_100083720);
    swift_storeEnumTagMultiPayload();
    sub_100035A24(v29, v39, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView, &unk_100083868);
    sub_100035A8C(&qword_1000DF620, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView, &unk_100083818);
    v31 = v41;
    sub_10007D9D8();
    sub_100026310(v31, v26, &qword_1000DF5E8, &qword_100083680);
    swift_storeEnumTagMultiPayload();
    sub_100035AD4();
    sub_100035BC0();
    sub_10007D9D8();
    sub_1000256C0(v31, &qword_1000DF5E8, &qword_100083680);
    sub_100026310(v14, v47, &qword_1000DF610, &unk_1000836A8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100035CAC();
    sub_10002D148();
    goto LABEL_7;
  }

  v32 = v47;
  if (v22 == enum case for WidgetFamily.systemExtraLarge(_:) || v22 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v22 == enum case for WidgetFamily.accessoryCorner(_:) || v22 == enum case for WidgetFamily.accessoryCircular(_:) || v22 != enum case for WidgetFamily.accessoryRectangular(_:))
  {
    while (1)
    {
      sub_10007E518();
      __break(1u);
    }
  }

  v33 = v37;
  sub_100035A24(v1, v37, type metadata accessor for CommuteWindowEntryContent);
  sub_100035A24(v33, v39, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView, &unk_100083868);
  sub_100035A8C(&qword_1000DF620, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView, &unk_100083818);
  v34 = v41;
  sub_10007D9D8();
  sub_100026310(v34, v26, &qword_1000DF5E8, &qword_100083680);
  swift_storeEnumTagMultiPayload();
  sub_100035AD4();
  sub_100035BC0();
  sub_10007D9D8();
  sub_1000256C0(v34, &qword_1000DF5E8, &qword_100083680);
  sub_100026310(v14, v32, &qword_1000DF610, &unk_1000836A8);
  swift_storeEnumTagMultiPayload();
  sub_100015240(&qword_1000DEC58, &unk_100082C50);
  sub_100035CAC();
  sub_10002D148();
  sub_10007D9D8();
  sub_1000256C0(v14, &qword_1000DF610, &unk_1000836A8);
  v23 = type metadata accessor for CommuteWindowAccessoryRectangularWidgetView;
  v24 = v33;
  return sub_100035D38(v24, v23);
}

uint64_t sub_100035A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100035AD4()
{
  result = qword_1000DF628;
  if (!qword_1000DF628)
  {
    sub_100015288(&qword_1000DF608, &qword_1000836A0);
    sub_100035A8C(&qword_1000DF630, type metadata accessor for CommuteWindowSmallWidgetView, &unk_1000837C8);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView, &unk_100083868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF628);
  }

  return result;
}

unint64_t sub_100035BC0()
{
  result = qword_1000DF638;
  if (!qword_1000DF638)
  {
    sub_100015288(&qword_1000DF5E8, &qword_100083680);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView, &unk_100083868);
    sub_100035A8C(&qword_1000DF620, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView, &unk_100083818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF638);
  }

  return result;
}

unint64_t sub_100035CAC()
{
  result = qword_1000DF640;
  if (!qword_1000DF640)
  {
    sub_100015288(&qword_1000DF610, &unk_1000836A8);
    sub_100035AD4();
    sub_100035BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF640);
  }

  return result;
}

uint64_t sub_100035D38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100035DE8(uint64_t a1)
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CommuteWindowEntryContent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100035ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommuteWindowEntryContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100035F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommuteWindowEntryContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100035FC0(uint64_t a1)
{
  result = type metadata accessor for CommuteWindowEntryContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003602C()
{
  result = qword_1000DF800;
  if (!qword_1000DF800)
  {
    sub_100015288(&qword_1000DF808, &qword_1000837C0);
    sub_100035CAC();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF800);
  }

  return result;
}

unint64_t sub_100036114()
{
  result = qword_1000DF898[0];
  if (!qword_1000DF898[0])
  {
    sub_100015288(&qword_1000DF888, &qword_100083988);
    sub_100035A8C(&qword_1000DF880, type metadata accessor for CommuteWindowPlatterContent, &unk_10008562C);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000DF898);
  }

  return result;
}

void sub_1000361D4(uint64_t a1)
{
  sub_1000368BC(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_1000368BC(319, &qword_1000DF920, &type metadata accessor for RedactionReasons);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000362B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10007D638() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_10007D708() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v7 + v15 + 1;
  v17 = v9 + v13 + 1;
  if (a2 <= v14)
  {
    goto LABEL_34;
  }

  v18 = *(v10 + 64) + ((v17 + (v16 & ~v15)) & ~v13) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v11 > 0xFE)
      {
        v27 = *(v10 + 48);

        return v27((v17 + ((a1 + v16) & ~v15)) & ~v13);
      }

      else
      {
        v26 = *(a1 + v7);
        if (v26 >= 2)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void sub_100036534(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10007D638() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_10007D708() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v9 + 1;
  v18 = v14 & 0xF8 | 7;
  v19 = v9 + 1 + v18;
  v20 = v11 + v15 + 1;
  v21 = *(v12 + 64) + ((v20 + (v19 & ~v18)) & ~v15) + 1;
  if (a3 <= v16)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v16 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v16 < a2)
  {
    v23 = ~v16 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (*(v12 + 64) + ((v20 + (v19 & ~v18)) & ~v15) != -1)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_61:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v13 > 0xFE)
  {
    v28 = *(v12 + 56);

    v28((v20 + (&a1[v19] & ~v18)) & ~v15, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v17 <= 3)
    {
      v29 = ~(-1 << (8 * v17));
    }

    else
    {
      v29 = -1;
    }

    if (v9 != -1)
    {
      v30 = v29 & (a2 - 255);
      if (v17 <= 3)
      {
        v31 = v9 + 1;
      }

      else
      {
        v31 = 4;
      }

      bzero(a1, v17);
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else
        {
          *a1 = v30;
        }
      }

      else if (v31 == 1)
      {
        *a1 = v30;
      }

      else
      {
        *a1 = v30;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_1000368BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MapSnapshotImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MapSnapshotImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100036A68(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100036A84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100036AF0(char a1)
{
  if ((a1 - 2) < 3u)
  {
    return 0;
  }

  if (a1)
  {
    if (qword_1000DE280 != -1)
    {
      v7._object = "t without user location";
      swift_once();
    }

    v2.super.isa = qword_1000E4B68;
    v7._countAndFlagsBits = 0x800000010008FCB0;
    v3._countAndFlagsBits = 0xD000000000000030;
    v3._object = 0x800000010008FC50;
    v6._object = 0x800000010008FC90;
    v4 = 0xD000000000000044;
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    if (qword_1000DE280 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1000E4B68;
    v7._countAndFlagsBits = 0x800000010008FC00;
    v3._countAndFlagsBits = 0xD000000000000033;
    v3._object = 0x800000010008FBC0;
    v4 = 0xD000000000000047;
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6._countAndFlagsBits = 7364941;
    v6._object = 0xE300000000000000;
  }

  return sub_10007D258(v3, v5, v2, v6, v4, v7);
}

uint64_t sub_100036C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100026310(v2, &v14 - v9, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D638();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100036E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEF28, &qword_100083930);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100026310(v2 + *(a1 + 36), &v15 - v10, &qword_1000DEF28, &qword_100083930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10007D708();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_10007E2B8();
    v14 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100037060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_10007DE88();
  a2[1] = v5;
  v6 = sub_100015240(&qword_1000DF928, &qword_100083A58);
  return sub_1000370BC(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
}

uint64_t sub_1000370BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a4;
  v84 = type metadata accessor for PlaceholderBackgroundView(0);
  __chkstk_darwin(v84);
  v79 = (v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_100015240(&qword_1000DF930, &unk_100083A60);
  __chkstk_darwin(v81);
  v82 = v64 - v8;
  v9 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v9 - 8);
  v66 = v64 - v10;
  v11 = sub_100015240(&qword_1000DF938, &qword_100083A70);
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v67 = v64 - v12;
  v80 = sub_100015240(&qword_1000DF940, &qword_100083A78);
  v13 = __chkstk_darwin(v80);
  v70 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = v64 - v15;
  v16 = sub_10007D638();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = __chkstk_darwin(v16);
  v72 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = v64 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_10007E3A8();
  v76 = *(v21 - 8);
  v77 = v21;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  v24 = sub_10007D708();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v64 - v29;
  v78 = a3;
  v32 = type metadata accessor for MapSnapshotImage(0, a2, a3, v31);
  v65 = *(a1 + *(v32 + 44));
  if ((v65 & 0xFE) == 2)
  {
    v64[1] = a1;
    sub_100036E5C(v32, v30);
    sub_10007D6F8();
    sub_100037CE4(&qword_1000DF958, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v33 = sub_10007E3E8();
    v34 = *(v25 + 8);
    v34(v28, v24);
    v34(v30, v24);
    if (v33)
    {
      goto LABEL_10;
    }
  }

  (*(v78 + 24))(a2, v78);
  v35 = *(AssociatedTypeWitness - 8);
  if ((*(v35 + 48))(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v76 + 8))(v23, v77);
LABEL_10:
    KeyPath = swift_getKeyPath();
    v63 = v79;
    *v79 = KeyPath;
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    sub_100037AE8(v63, v82);
    swift_storeEnumTagMultiPayload();
    sub_100037B4C();
    sub_100037CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView, &unk_100084548);
    sub_10007D9D8();
    return sub_100037C20(v63);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v39 = v38;
  (*(v35 + 8))(v23, AssociatedTypeWitness);
  if (v37 == 1)
  {
    goto LABEL_10;
  }

  v40 = v73;
  sub_100036C5C(v73);
  v42 = v74;
  v41 = v75;
  v43 = v72;
  (*(v74 + 16))(v72, v40, v75);
  v44 = (*(v42 + 88))(v43, v41);
  v45 = v37;
  if (v44 == enum case for ColorScheme.light(_:) || (v45 = v39, v44 == enum case for ColorScheme.dark(_:)))
  {
    v46 = *(v42 + 8);
    v47 = v45;
    v46(v40, v41);

    if (v45)
    {
      v48 = v47;
      sub_10007DD78();
      v49 = v66;
      sub_10007DFB8();
      v50 = sub_10007DFC8();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      v51 = v67;
      sub_10007DDD8();

      sub_100037C7C(v49);
      v52 = v65;
      swift_getOpaqueTypeConformance2();
      v53 = v69;
      v54 = v70;
      sub_10007DCC8();

      (*(v68 + 8))(v51, v53);
      v85 = sub_100036AF0(v52);
      v86 = v55;
      sub_10002D9A8();
      v56 = sub_10007DBF8();
      v58 = v57;
      LOBYTE(v51) = v59;
      sub_100036AF0(v52);

      v60 = v71;
      sub_10007D6D8();
      sub_10002D9FC(v56, v58, v51 & 1);

      sub_100007C84(v54);
      sub_100007CEC(v60, v82);
      swift_storeEnumTagMultiPayload();
      sub_100037B4C();
      sub_100037CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView, &unk_100084548);
      sub_10007D9D8();

      return sub_100007C84(v60);
    }

    goto LABEL_10;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100037AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderBackgroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100037B4C()
{
  result = qword_1000DF948;
  if (!qword_1000DF948)
  {
    sub_100015288(&qword_1000DF940, &qword_100083A78);
    swift_getOpaqueTypeConformance2();
    sub_100037CE4(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF948);
  }

  return result;
}

uint64_t sub_100037C20(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderBackgroundView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037C7C(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100037D5C()
{
  result = qword_1000DF960;
  if (!qword_1000DF960)
  {
    sub_100015288(qword_1000DF968, &qword_100083AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF960);
  }

  return result;
}

uint64_t sub_100037DC0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_10007DEA8();
}

uint64_t sub_100037F90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v37 = a2;
  v3 = sub_100015240(&qword_1000DF9F8, &qword_100083B50);
  __chkstk_darwin(v3 - 8);
  v36 = &v28 - v4;
  sub_100015288(&qword_1000DFA00, &qword_100083B58);
  v32 = *(a1 + 16);
  sub_10007D6E8();
  swift_getTupleTypeMetadata2();
  v31 = sub_10007DE98();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_10007DE18();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_10007D6E8();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _PaddingLayout;
  v29 = swift_getWitnessTable();
  v13 = type metadata accessor for ContentSizeCategoryLimiter(0, v9, v29, v12);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = *(v33 + 24);
  v38 = v32;
  v39 = v20;
  v40 = v35;
  sub_10007DE88();
  sub_10007DE08();
  sub_10007DCD8();
  (*(v6 + 8))(v8, v5);
  v21 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v22 = sub_10007D938();
  v23 = *(v22 - 8);
  v24 = v36;
  (*(v23 + 104))(v36, v21, v22);
  (*(v23 + 56))(v24, 0, 1, v22);
  sub_100038820(v24, v9, v29, v17);
  sub_1000256C0(v24, &qword_1000DF9F8, &qword_100083B50);
  (*(v34 + 8))(v11, v9);
  swift_getWitnessTable();
  v25 = *(v14 + 16);
  v25(v19, v17, v13);
  v26 = *(v14 + 8);
  v26(v17, v13);
  v25(v37, v19, v13);
  return (v26)(v19, v13);
}

uint64_t sub_100038454@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v6 = sub_10007D6E8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &WitnessTable - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v30 = &WitnessTable - v11;
  v12 = sub_100015240(&qword_1000DFA00, &qword_100083B58);
  v13 = __chkstk_darwin(v12);
  v29 = &WitnessTable - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &WitnessTable - v15;
  sub_10007DE58();
  *&v16[*(sub_100015240(&qword_1000DFA18, &qword_100083BA0) + 56)] = 256;
  if (qword_1000DE240 != -1)
  {
    swift_once();
  }

  v17 = qword_1000E4AF0;
  v18 = &v16[*(sub_100015240(&qword_1000DFA20, &qword_100083BA8) + 36)];
  *v18 = v17;
  v18[1] = 0x4000000000000000;
  v18[2] = 0;
  v18[3] = 0;
  v19 = qword_1000DE248;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = &v16[*(v12 + 36)];
  *v21 = qword_1000E4AF8;
  *(v21 + 8) = xmmword_100083AC0;
  *(v21 + 3) = 0x3FF8000000000000;
  type metadata accessor for PlatterView(0, a2, a3, v20);

  sub_10007DCD8();
  v35[2] = a3;
  v35[3] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v22 = v12;
  v23 = *(v7 + 16);
  v24 = v30;
  v23(v30, v10, v6);
  v25 = *(v7 + 8);
  v25(v10, v6);
  v26 = v29;
  sub_100026310(v16, v29, &qword_1000DFA00, &qword_100083B58);
  v35[0] = v26;
  v23(v10, v24, v6);
  v35[1] = v10;
  v34[0] = v22;
  v34[1] = v6;
  v32 = sub_100039A14();
  v33 = WitnessTable;
  sub_100037DC0(v35, 2uLL, v34);
  v25(v24, v6);
  sub_1000256C0(v16, &qword_1000DFA00, &qword_100083B58);
  v25(v10, v6);
  return sub_1000256C0(v26, &qword_1000DFA00, &qword_100083B58);
}

uint64_t sub_100038820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v21 = a4;
  v9 = sub_100015240(&qword_1000DFA08, &qword_100083B60);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (&v20 - v11);
  v13 = *(a2 - 8);
  __chkstk_darwin(v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100015240(&qword_1000DF9F8, &qword_100083B50);
  __chkstk_darwin(v16 - 8);
  v18 = &v20 - v17;
  sub_100026310(a1, &v20 - v17, &qword_1000DF9F8, &qword_100083B50);
  (*(v13 + 16))(v15, v5, a2);
  sub_1000398E4(v12);
  return sub_100039944(v18, v12, v15, a2, a3, v21);
}

uint64_t sub_1000389E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DFA10, &qword_100083B98);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100026310(v2 + *(a1 + 36), &v15 - v10, &qword_1000DFA10, &qword_100083B98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10007D938();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_10007E2B8();
    v14 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100038BE8()
{
  result = sub_10007DD58();
  qword_1000E4AE8 = result;
  return result;
}

void sub_100038C24(uint64_t a1)
{
  sub_10003A39C(319, &qword_1000DF9F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100038CE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10007DF98() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v12 = (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9) + v10;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v21 = *(*(*(a3 + 16) - 8) + 48);

        return v21((((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
      }

      else
      {
        v20 = *(a1 + v6);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_100038EF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10007DF98() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + v13;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
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

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
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
LABEL_57:
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
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
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

      goto LABEL_33;
    }

    *&a1[v15] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v22 = v8 + 1;
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(((&a1[v22 + 7] & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v22 <= 3)
    {
      v24 = ~(-1 << (8 * v22));
    }

    else
    {
      v24 = -1;
    }

    if (v8 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v22 <= 3)
      {
        v26 = v8 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v22);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v8] = -a2;
  }
}

uint64_t sub_10003927C()
{
  result = sub_10007DD58();
  qword_1000E4AF0 = result;
  return result;
}

uint64_t sub_1000392C0()
{
  result = sub_10007DD58();
  qword_1000E4AF8 = result;
  return result;
}

uint64_t sub_1000392FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100015240(&qword_1000DF9F8, &qword_100083B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_10007D938();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  sub_100026310(v2, v7, &qword_1000DF9F8, &qword_100083B50);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v29 = a2;
    v28 = *(v9 + 32);
    v28(v14, v7, v8);
    v27 = a1;
    sub_1000389E4(a1, v12);
    v15 = sub_10007D928();
    v16 = sub_100039B5C(v12, v15);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v20 = sub_10007D928();
    v21 = sub_100039B5C(v14, v20);
    v23 = v22;

    v24 = *(v9 + 8);
    v24(v12, v8);
    if (v23)
    {
      if (v19 > 0)
      {
        return (v28)(v29, v14, v8);
      }
    }

    else if (v21 < v19)
    {
      return (v28)(v29, v14, v8);
    }

    v24(v14, v8);
    a2 = v29;
    a1 = v27;
    return sub_1000389E4(a1, a2);
  }

  sub_1000256C0(v7, &qword_1000DF9F8, &qword_100083B50);
  return sub_1000389E4(a1, a2);
}

uint64_t sub_100039584@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v19 = sub_10007D938();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a1 + 16);
  sub_100015288(&qword_1000DFAD0, &unk_100083C30);
  v6 = sub_10007D6E8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  sub_1000392FC(a1, v5);
  v13 = *(a1 + 24);
  sub_10007DC68();

  (*(v3 + 8))(v5, v19);
  v14 = sub_10002DDAC(&qword_1000DFAD8, &qword_1000DFAD0, &unk_100083C30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v21 = v13;
  v22 = v14;
  swift_getWitnessTable();
  v15 = *(v7 + 16);
  v15(v12, v10, v6);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v15(v20, v12, v6);
  return (v16)(v12, v6);
}

uint64_t sub_10003981C(uint64_t a1)
{
  v2 = sub_10007D938();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10007D758();
}

uint64_t sub_1000398E4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100015240(&qword_1000DFA10, &qword_100083B98);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100039944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10002DB0C(a1, a6, &qword_1000DF9F8, &qword_100083B50);
  v12 = type metadata accessor for ContentSizeCategoryLimiter(0, a4, a5, v11);
  sub_10002DB0C(a2, a6 + *(v12 + 36), &qword_1000DFA08, &qword_100083B60);
  v13 = *(*(a4 - 8) + 32);
  v14 = a6 + *(v12 + 40);

  return v13(v14, a3, a4);
}

unint64_t sub_100039A14()
{
  result = qword_1000DFA28;
  if (!qword_1000DFA28)
  {
    sub_100015288(&qword_1000DFA00, &qword_100083B58);
    sub_100039AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFA28);
  }

  return result;
}

unint64_t sub_100039AA0()
{
  result = qword_1000DFA30;
  if (!qword_1000DFA30)
  {
    sub_100015288(&qword_1000DFA20, &qword_100083BA8);
    sub_10002DDAC(qword_1000DFA38, &qword_1000DFA18, &qword_100083BA0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFA30);
  }

  return result;
}

uint64_t sub_100039B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_10007D938() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_10003A444();
  v7 = 0;
  while ((sub_10007E128() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_100039C4C(uint64_t a1)
{
  sub_10003A39C(319, &qword_1000DFAC0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10003A39C(319, &qword_1000DFAC8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100039D4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_10007D938() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v6 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v9 <= v13)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v6 + 80) & 0xF8 | 7;
  v19 = v17 + v18;
  v20 = v11 + v14 + 1;
  if (a2 > v16)
  {
    v21 = ((v20 + (v19 & ~v18)) & ~v14) + *(v12 + 64);
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_19;
    }

    v24 = ((a2 - v16 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 >= 2)
    {
LABEL_19:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

LABEL_26:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = ((v20 + (v19 & ~v18)) & ~v14) + *(v12 + 64);
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v16 + (v27 | v25) + 1;
    }
  }

LABEL_39:
  if (v9 == v16)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v31 = (*(v7 + 48))(a1);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = (a1 + v19) & ~v18;
    if (v15 > 0xFE)
    {
      v32 = *(v12 + 48);

      return v32((v20 + v29) & ~v14, v13);
    }

    else
    {
      v30 = *(v29 + v11);
      if (v30 >= 2)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100039FEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_10007D938();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(*(v8 - 8) + 64);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  if (v13 <= v16)
  {
    v18 = *(v15 + 84);
  }

  else
  {
    v18 = v13;
  }

  if (v18 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v18;
  }

  if (!v11)
  {
    ++v12;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = v12 + v20;
  v22 = (v12 + v20) & ~v20;
  v23 = v14 + 1;
  v24 = v14 + 1 + v17;
  v25 = ((v24 + v22) & ~v17) + *(v15 + 64);
  if (a3 <= v19)
  {
    goto LABEL_26;
  }

  if (v25 <= 3)
  {
    v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v26))
    {
      v9 = 4;
      if (v19 >= a2)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }

LABEL_26:
    if (v19 >= a2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v9 = 1;
  if (v19 >= a2)
  {
LABEL_36:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_43;
      }

      *&a1[v25] = 0;
    }

    else if (v9)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

LABEL_43:
      if (v13 == v19)
      {
        v31 = *(v10 + 56);

        v31(a1, (a2 + 1));
      }

      else
      {
        v32 = (&a1[v21] & ~v20);
        if (v18 > 0xFE)
        {
          v33 = *(v15 + 56);

          v33(&v32[v24] & ~v17, a2, v16);
        }

        else if (a2 > 0xFE)
        {
          if (v23 <= 3)
          {
            v34 = ~(-1 << (8 * v23));
          }

          else
          {
            v34 = -1;
          }

          if (v14 != -1)
          {
            v35 = v34 & (a2 - 255);
            if (v23 <= 3)
            {
              v36 = v14 + 1;
            }

            else
            {
              v36 = 4;
            }

            bzero(v32, v23);
            if (v36 > 2)
            {
              if (v36 == 3)
              {
                *v32 = v35;
                v32[2] = BYTE2(v35);
              }

              else
              {
                *v32 = v35;
              }
            }

            else if (v36 == 1)
            {
              *v32 = v35;
            }

            else
            {
              *v32 = v35;
            }
          }
        }

        else
        {
          v32[v14] = -a2;
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

LABEL_27:
  v28 = ~v19 + a2;
  if (v25 >= 4)
  {
    bzero(a1, v25);
    *a1 = v28;
    v29 = 1;
    if (v9 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v29 = (v28 >> (8 * v25)) + 1;
  if (!v25)
  {
LABEL_56:
    if (v9 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v30 = v28 & ~(-1 << (8 * v25));
  bzero(a1, v25);
  if (v25 == 3)
  {
    *a1 = v30;
    a1[2] = BYTE2(v30);
    goto LABEL_56;
  }

  if (v25 == 2)
  {
    *a1 = v30;
    if (v9 > 1)
    {
LABEL_60:
      if (v9 == 2)
      {
        *&a1[v25] = v29;
      }

      else
      {
        *&a1[v25] = v29;
      }

      return;
    }
  }

  else
  {
    *a1 = v28;
    if (v9 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v9)
  {
    a1[v25] = v29;
  }
}

void sub_10003A39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10003A444()
{
  result = qword_1000DFAE0;
  if (!qword_1000DFAE0)
  {
    sub_10007D938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFAE0);
  }

  return result;
}

void *sub_10003A4A0(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_10007E4A8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10003ECFC(i, v5);
    sub_10002620C(0, &qword_1000DFD10, GEOSearchCategory_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_10007E488();
    sub_10007E4B8();
    sub_10007E4C8();
    sub_10007E498();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_10003A5AC(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_10007E4A8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10003ECFC(i, v5);
    type metadata accessor for MapSnapshotter.Context(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_10007E488();
    sub_10007E4B8();
    sub_10007E4C8();
    sub_10007E498();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t *sub_10003A698(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100077E54(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10003ECFC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100077E54((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10003A7AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100015240(&qword_1000DEA10, &unk_100083CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000256C0(a1, &qword_1000DEA10, &unk_100083CE0);
    v13 = sub_100077B50(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100040210();
        v17 = v21;
      }

      sub_100025500(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_10003F80C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000256C0(v8, &qword_1000DEA10, &unk_100083CE0);
  }

  else
  {
    sub_100025500(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_10003FB68(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

void sub_10003A9D8(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_10003FE2C(a1, a2, a3, isUniquelyReferenced_nonNull_native, v9);

    *v4 = v16;
  }

  else
  {
    v10 = sub_100077C00(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v17 = *v5;
      if (!v13)
      {
        sub_10004057C();
        v14 = v17;
      }

      sub_10003F9DC(v12, v14);

      *v5 = v14;
    }

    else
    {
    }
  }
}

id *sub_10003AAE8()
{
  sub_100030228(v0[3], v0[4]);

  return v0;
}

uint64_t sub_10003AB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v20 = a1;
  v21 = a2;
  v3 = sub_10007DEB8();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v13 = sub_10007E328();
  sub_100026310(v20, v12, &qword_1000DE928, &unk_100082900);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = v21;
  v15[2] = v22;
  v15[3] = v16;
  v15[4] = v23;
  sub_10002522C(v12, v15 + v14);
  aBlock[4] = sub_100040980;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9100;
  v17 = _Block_copy(aBlock);

  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100040A84(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v17);

  (*(v26 + 8))(v5, v3);
  return (*(v24 + 8))(v8, v25);
}

void sub_10003AECC()
{
  v1 = v0;
  v2 = sub_10007DEF8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v36[-v7];
  v9 = sub_10007DEB8();
  __chkstk_darwin(v9);
  sub_10007D318();
  v11 = v10 + -5.0;
  if (v10 + -5.0 <= 0.0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v28 = sub_10007D5C8();
    sub_1000046BC(v28, qword_1000E4B28);

    v39 = sub_10007D5A8();
    v29 = sub_10007E2A8();

    if (os_log_type_enabled(v39, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136446210;
      v40 = *v1;
      aBlock[0] = v31;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v32 = sub_10007E168();
      v34 = sub_100051190(v32, v33, aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v39, v29, "%{public}s: could not schedule snapshot cancellation", v30, 0xCu);
      sub_1000250AC(v31);
    }

    else
    {
      v35 = v39;
    }
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v39 = v9;
    v12 = sub_10007D5C8();
    sub_1000046BC(v12, qword_1000E4B28);

    v13 = sub_10007D5A8();
    v14 = sub_10007E298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136446466;
      v40 = *v1;
      aBlock[0] = v16;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v17 = sub_10007E168();
      v37 = v14;
      v19 = v6;
      v20 = v8;
      v21 = v3;
      v22 = v2;
      v23 = sub_100051190(v17, v18, aBlock);

      *(v15 + 4) = v23;
      v2 = v22;
      v3 = v21;
      v8 = v20;
      v6 = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v13, v37, "%{public}s: scheduled snapshot cancellation in %{public}f seconds", v15, 0x16u);
      sub_1000250AC(v38);
    }

    v24 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100040978;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C90B0;
    _Block_copy(aBlock);
    v40 = _swiftEmptyArrayStorage;
    sub_100040A84(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007DF38();
    swift_allocObject();
    v25 = sub_10007DF08();

    *(v1 + 64) = v25;

    sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
    v26 = sub_10007E328();
    sub_10007DEE8();
    sub_10007DF58();
    v27 = *(v3 + 8);
    v27(v6, v2);
    if (*(v1 + 64))
    {

      sub_10007E308();

      v27(v8, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10003B530()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v6 = v0[7];
  v7 = qword_1000DE268;

  if (v7 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = sub_10007D5C8();
    sub_1000046BC(v8, qword_1000E4B28);
    swift_bridgeObjectRetain_n();

    v9 = sub_10007D5A8();
    v10 = sub_10007E2A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v28 = *v1;
      v29 = v12;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v13 = sub_10007E168();
      v15 = sub_100051190(v13, v14, &v29);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2050;
      v16 = *(v6 + 16);

      *(v11 + 14) = v16;

      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: will cancel %{public}ld snapshots", v11, 0x16u);
      sub_1000250AC(v12);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
    *v5 = sub_10007E328();
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v17 = sub_10007DF68();
    v18 = *(v3 + 8);
    v3 += 8;
    v18(v5, v2);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v1 = 0;
    v5 = (v6 + 64);
    v19 = 1 << *(v6 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v6 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v23 = v1;
LABEL_14:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(*(v6 + 56) + 16 * v25);
      v2 = *(*(v6 + 48) + 8 * v25);

      [v2 cancel];
      v28 = 0;
      v29 = 0;
      v26(&v29, &v28);
    }

    while (1)
    {
      v23 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        return;
      }

      v21 = v5[v23];
      v1 = (v1 + 1);
      if (v21)
      {
        v1 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  __break(1u);
}

void sub_10003B8F8()
{
  v1 = v0;
  v2 = sub_10007DEB8();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10007DED8();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10007D3B8();
  v51 = *(v53 - 8);
  v5 = __chkstk_darwin(v53);
  v49 = v6;
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  v9 = sub_10007DF48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v13 = sub_10007D5C8();
  sub_1000046BC(v13, qword_1000E4B28);

  v14 = sub_10007D5A8();
  v15 = sub_10007E298();

  v16 = os_log_type_enabled(v14, v15);
  v59 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock = v18;
    *v17 = 136446210;
    v66 = *v1;
    sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    v19 = sub_10007E168();
    v21 = sub_100051190(v19, v20, &aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s: generateSnapshot BEGIN", v17, 0xCu);
    sub_1000250AC(v18);
  }

  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v12 = sub_10007E328();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v22 = sub_10007DF68();
  (*(v10 + 8))(v12, v9);
  if (v22)
  {
    sub_10007D3A8();
    v23 = *(v1 + 16);
    if (v23)
    {
      [v23 copy];
      sub_10007E3D8();
      swift_unknownObjectRelease();
      sub_10002620C(0, &qword_1000DFD00, MKMapSnapshotOptions_ptr);
      swift_dynamicCast();
      v24 = v66;
      [v66 _setAllowsSimultaneousLightDarkSnapshots:1];
      v25 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:0];
      [v24 setTraitCollection:v25];

      v26 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v24];
      v48 = *(v1 + 40);
      v27 = v48;

      dispatch_group_enter(v27);
      v28 = swift_allocObject();
      v28[2] = v1;
      v28[3] = v26;
      v28[4] = sub_100040898;
      v28[5] = v1;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1000408D8;
      *(v29 + 24) = v28;
      swift_beginAccess();
      v30 = v26;
      swift_retain_n();
      v31 = v30;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *(v1 + 56);
      *(v1 + 56) = 0x8000000000000000;
      sub_10003FE2C(sub_1000408E4, v29, v31, isUniquelyReferenced_nonNull_native, v33);

      v47 = v31;
      *(v1 + 56) = v66;
      swift_endAccess();
      v34 = sub_10007E328();
      v64 = sub_1000408D8;
      v65 = v28;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_100024404;
      v63 = &unk_1000C9010;
      v35 = _Block_copy(&aBlock);

      [v31 startWithQueue:v34 completionHandler:v35];
      _Block_release(v35);

      v36 = sub_10007E328();
      v37 = v50;
      v38 = v51;
      v39 = v53;
      (*(v51 + 16))(v50, v59, v53);
      v40 = (*(v38 + 80) + 24) & ~*(v38 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v1;
      (*(v38 + 32))(v41 + v40, v37, v39);
      v64 = sub_100040914;
      v65 = v41;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1000041A4;
      v63 = &unk_1000C9060;
      v42 = _Block_copy(&aBlock);

      v43 = v52;
      sub_10007DEC8();
      v66 = _swiftEmptyArrayStorage;
      sub_100040A84(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100015240(&unk_1000DE980, &unk_1000835B0);
      sub_100002EBC();
      v44 = v55;
      v45 = v58;
      sub_10007E3F8();
      sub_10007E2E8();
      _Block_release(v42);

      (*(v57 + 8))(v44, v45);
      (*(v54 + 8))(v43, v56);
      (*(v38 + 8))(v59, v39);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003C1C4(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v8 - 8);
  v10 = &v30[-1] - v9;
  v11 = sub_10007D3B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[3] == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    swift_beginAccess();
    v16 = a1[9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[9] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_100077214(0, v16[2] + 1, 1, v16);
      a1[9] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_100077214((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1000409F4;
    v20[5] = v15;
    a1[9] = v16;
    swift_endAccess();
    if (!v19)
    {
      sub_100026310(a4, v10, &qword_1000DE928, &unk_100082900);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1000256C0(v10, &qword_1000DE928, &unk_100082900);
      }

      else
      {
        (*(v12 + 32))(v14, v10, v11);
        sub_10003AECC();
        (*(v12 + 8))(v14, v11);
      }

      sub_10003B8F8();
    }
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v21 = sub_10007D5C8();
    sub_1000046BC(v21, qword_1000E4B28);

    v22 = sub_10007D5A8();
    v23 = sub_10007E298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136446210;
      v29 = *a1;
      v30[0] = v25;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v26 = sub_10007E168();
      v28 = sub_100051190(v26, v27, v30);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s: using previously-generated snapshot", v24, 0xCu);
      sub_1000250AC(v25);
    }

    a2(a1);
  }
}

double sub_10003C5CC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10003B530();
  }

  return result;
}

uint64_t sub_10003C624(void *a1, void *a2)
{
  v47 = a2;
  v3 = sub_10007D3B8();
  v48 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  if (a1[8])
  {

    sub_10007DF18();
  }

  v8 = v3;
  v9 = a1[6];
  if (v9)
  {
    v10 = [v9 image];
    v11 = [v10 imageAsset];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_self();
  v13 = [v12 traitCollectionWithUserInterfaceStyle:1];
  v14 = [v12 traitCollectionWithUserInterfaceStyle:2];
  if (v11)
  {
    v15 = [v11 imageWithTraitCollection:v13];
    v16 = [v11 imageWithTraitCollection:v14];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = a1[3];
  v18 = a1[4];
  a1[3] = v15;
  a1[4] = v16;
  v44 = v16;
  v43 = v15;
  sub_100030228(v17, v18);
  v19 = v11;
  v46 = v13;
  [v19 unregisterImageWithTraitCollection:v13];
  v45 = v14;
  [v19 unregisterImageWithTraitCollection:v14];

  if (qword_1000DE268 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = sub_10007D5C8();
    sub_1000046BC(v20, qword_1000E4B28);
    v21 = v48;
    (*(v48 + 16))(v7, v47, v8);

    v22 = sub_10007D5A8();
    v23 = sub_10007E298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47 = v8;
      v25 = v21;
      v26 = v24;
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v49 = *a1;
      v50[0] = v27;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v28 = sub_10007E168();
      v30 = sub_100051190(v28, v29, v50);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2050;
      v31 = v42;
      sub_10007D3A8();
      sub_10007D2B8();
      v33 = v32;
      v34 = *(v25 + 8);
      v35 = v31;
      v36 = v47;
      v34(v35, v47);
      v34(v7, v36);
      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s: generateSnapshot END (%{public}f seconds elapsed)", v26, 0x16u);
      sub_1000250AC(v27);
    }

    else
    {

      (*(v21 + 8))(v7, v8);
    }

    swift_beginAccess();
    v37 = a1[9];
    v38 = *(v37 + 16);

    if (!v38)
    {
      break;
    }

    v7 = 0;
    v8 = (v37 + 40);
    while (v7 < *(v37 + 16))
    {
      ++v7;
      v39 = *(v8 - 1);
      v49 = a1;

      v39(&v49);

      v8 += 2;
      if (v38 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:

  a1[9] = _swiftEmptyArrayStorage;
}