uint64_t sub_2AAB80()
{
  sub_20410(&qword_356D18, &unk_2D90C0);
  v0 = sub_20410(&qword_34E150, &qword_2D1E98);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2D9090;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = enum case for CommonAudio.Decade._1920s(_:);
  v7 = sub_2CD4D0();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 1920;
  v9 = *(v0 + 48);
  v8(v4 + v1, enum case for CommonAudio.Decade._1930s(_:), v7);
  *(v4 + v1 + v9) = 1930;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, enum case for CommonAudio.Decade._1940s(_:), v7);
  *(v4 + 2 * v1 + v10) = 1940;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, enum case for CommonAudio.Decade._1950s(_:), v7);
  *(v4 + 3 * v1 + v11) = 1950;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, enum case for CommonAudio.Decade._1960s(_:), v7);
  *(v4 + 4 * v1 + v12) = 1960;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, enum case for CommonAudio.Decade._1970s(_:), v7);
  *(v4 + 5 * v1 + v13) = 1970;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, enum case for CommonAudio.Decade._1980s(_:), v7);
  *(v4 + 6 * v1 + v14) = 1980;
  v15 = *(v0 + 48);
  v8(v4 + 7 * v1, enum case for CommonAudio.Decade._1990s(_:), v7);
  *(v4 + 7 * v1 + v15) = 1990;
  v16 = *(v0 + 48);
  v8(v4 + 8 * v1, enum case for CommonAudio.Decade._2000s(_:), v7);
  *(v4 + 8 * v1 + v16) = 2000;
  v17 = *(v0 + 48);
  v8(v4 + 9 * v1, enum case for CommonAudio.Decade._2010s(_:), v7);
  *(v4 + 9 * v1 + v17) = 2010;
  v18 = v4 + 10 * v1;
  v19 = *(v0 + 48);
  v8(v18, enum case for CommonAudio.Decade._2020s(_:), v7);
  *(v18 + v19) = 2020;
  v20 = sub_90444(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F948 = v20;
  return result;
}

id sub_2AAEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C8CB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  isa = 0;
  if (v6(a1, 1, v4) != 1)
  {
    isa = sub_2C8C50().super.isa;
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2C8C50().super.isa;
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDateComponents:isa endDateComponents:v8];

  return v9;
}

uint64_t sub_2AB054()
{
  sub_20410(&qword_356D00, &qword_2D90A8);
  v0 = sub_20410(&qword_34E140, &qword_2D1E88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2D5FC0;
  v3 = v19 + v2;
  v4 = *(v0 + 48);
  v5 = enum case for CommonAudio.Sort.popular(_:);
  v6 = sub_2CD4B0();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 5;
  v8 = *(v0 + 48);
  v7(v3 + v1, enum case for CommonAudio.Sort.unpopular(_:), v6);
  *(v3 + v1 + v8) = 6;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, enum case for CommonAudio.Sort.worst(_:), v6);
  *(v3 + 2 * v1 + v9) = 4;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, enum case for CommonAudio.Sort.newest(_:), v6);
  *(v3 + 3 * v1 + v10) = 1;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, enum case for CommonAudio.Sort.oldest(_:), v6);
  *(v3 + 4 * v1 + v11) = 2;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, enum case for CommonAudio.Sort.hottest(_:), v6);
  *(v3 + 5 * v1 + v12) = 7;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, enum case for CommonAudio.Sort.greatest(_:), v6);
  *(v3 + 6 * v1 + v13) = 3;
  v14 = 8 * v1;
  v15 = *(v0 + 48);
  v7(v3 + 7 * v1, enum case for CommonAudio.Sort.best(_:), v6);
  *(v3 + v14 - v1 + v15) = 3;
  v16 = *(v0 + 48);
  v7(v3 + 8 * v1, enum case for CommonAudio.Sort.mediocre(_:), v6);
  *(v3 + v14 + v16) = 0;
  v17 = sub_9025C(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F950 = v17;
  return result;
}

uint64_t sub_2AB370()
{
  sub_20410(&qword_356CF8, &qword_2D90A0);
  v0 = sub_20410(&qword_34E130, &qword_2D1E78);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D1060;
  v3 = v21 + v2;
  v4 = *(v0 + 48);
  v5 = enum case for CommonAudio.MediaType.album(_:);
  v6 = sub_2CD540();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 2;
  v8 = *(v0 + 48);
  v7(v3 + v1, enum case for CommonAudio.MediaType.artist(_:), v6);
  *(v3 + v1 + v8) = 3;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, enum case for CommonAudio.MediaType.song(_:), v6);
  *(v3 + 2 * v1 + v9) = 1;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, enum case for CommonAudio.MediaType.audioBook(_:), v6);
  *(v3 + 3 * v1 + v10) = 10;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, enum case for CommonAudio.MediaType.genre(_:), v6);
  *(v3 + 4 * v1 + v11) = 4;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, enum case for CommonAudio.MediaType.playlist(_:), v6);
  *(v3 + 5 * v1 + v12) = 5;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, enum case for CommonAudio.MediaType.musicPlaylist(_:), v6);
  *(v3 + 6 * v1 + v13) = 5;
  v14 = *(v0 + 48);
  v7(v3 + 7 * v1, enum case for CommonAudio.MediaType.podcast(_:), v6);
  *(v3 + 7 * v1 + v14) = 6;
  v15 = *(v0 + 48);
  v7(v3 + 8 * v1, enum case for CommonAudio.MediaType.video(_:), v6);
  *(v3 + 8 * v1 + v15) = 14;
  v16 = *(v0 + 48);
  v7(v3 + 9 * v1, enum case for CommonAudio.MediaType.musicVideo(_:), v6);
  *(v3 + 9 * v1 + v16) = 14;
  v17 = *(v0 + 48);
  v7(v3 + 10 * v1, enum case for CommonAudio.MediaType.music(_:), v6);
  *(v3 + 10 * v1 + v17) = 18;
  v18 = *(v0 + 48);
  v7(v3 + 11 * v1, enum case for CommonAudio.MediaType.news(_:), v6);
  *(v3 + 11 * v1 + v18) = 20;
  v19 = sub_90074(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F958 = v19;
  return result;
}

uint64_t sub_2AB720()
{
  sub_20410(&qword_356CF8, &qword_2D90A0);
  v0 = sub_20410(&qword_34E130, &qword_2D1E78);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = 2 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2D10E0;
  v5 = v4 + v2;
  v6 = *(v0 + 48);
  v7 = enum case for CommonAudio.MediaType.radioStation(_:);
  v8 = sub_2CD540();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 16;
  v10 = v5 + v1;
  v11 = *(v0 + 48);
  v9(v10, enum case for CommonAudio.MediaType.podcastStation(_:), v8);
  *(v10 + v11) = 15;
  v12 = *(v0 + 48);
  v9(v5 + v3, enum case for CommonAudio.MediaType.station(_:), v8);
  *(v5 + v3 + v12) = 17;
  v13 = sub_90074(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F960 = v13;
  return result;
}

unint64_t sub_2AB8FC()
{
  result = qword_34D720;
  if (!qword_34D720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34D720);
  }

  return result;
}

void sub_2AB948(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_2AF15C(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

uint64_t sub_2AB9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_2ABA10()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2ABA68()
{
  sub_20410(&qword_354B98, &unk_2D7080);
  v0 = sub_2CB900();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2D10E0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for PlaybackItem.Scheme.album(_:), v0);
  v6(v5 + v2, enum case for PlaybackItem.Scheme.playlist(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for PlaybackItem.Scheme.song(_:), v0);
  qword_35F968 = v4;
  return result;
}

uint64_t sub_2ABBA8(void (*a1)(char *, uint64_t), unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v147 = a5;
  v146 = a4;
  v162 = a3;
  v163 = a1;
  v8 = *v5;
  v9 = sub_20410(&qword_3519E8, &qword_2D49F0);
  __chkstk_darwin(v9 - 8);
  v158 = &v126 - v10;
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v133 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2CE150();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v149 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2CE180();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2C8E80();
  v138 = *(v136 - 8);
  __chkstk_darwin(v136);
  v137 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v157 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v135 = &v126 - v22;
  __chkstk_darwin(v21);
  p_aBlock = &v126 - v23;
  if (qword_34BF58 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v25 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    v26 = *(v18 + 16);
    v145 = v25;
    v144 = v18 + 16;
    v143 = v26;
    v26(p_aBlock, v25, v17);
    v27 = sub_2CDFE0();
    v28 = sub_2CE670();
    if (os_log_type_enabled(v27, v28))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v27, v28, "PlayMediaAlternativesViewProvider building alternatives section...", v6, 2u);
    }

    v30 = *(v18 + 8);
    v18 += 8;
    v29 = v30;
    v30(p_aBlock, v17);
    v31 = a2 >> 62;
    v134 = v12;
    if (a2 >> 62)
    {
      break;
    }

    v32 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v12 = v32 != 0;
    if (v32 < v12)
    {
      goto LABEL_144;
    }

LABEL_6:
    v140 = v29;
    v159 = a2 & 0xC000000000000001;
    if ((a2 & 0xC000000000000001) != 0 && v32 > 1)
    {
      v6 = v32;
      p_aBlock = sub_334A0(0, &qword_356F50, INMediaItem_ptr);

      v33 = v12;
      do
      {
        v34 = v33 + 1;
        sub_2CECC0(v33);
        v33 = v34;
      }

      while (v6 != v34);
    }

    else
    {
      v6 = v32;
    }

    v160 = a2;
    v161 = v6;
    v132 = v8;
    v131 = v11;
    v142 = v17;
    v141 = v18;
    if (v31)
    {

      a2 = sub_2CEDB0();
      v17 = v35;
      v12 = v36;
      v8 = v37 >> 1;
    }

    else
    {
      a2 &= 0xFFFFFFFFFFFFFF8uLL;
      v17 = a2 + 32;
      v8 = v161;
    }

    v31 = _swiftEmptyArrayStorage;
    aBlock = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    v38 = v12;
LABEL_16:
    v39 = v38;
    while (v8 != v39)
    {
      if (v38 < v12 || v39 >= v8)
      {
        __break(1u);
        goto LABEL_129;
      }

      v11 = v39 + 1;
      v6 = *(v17 + 8 * v39);
      p_aBlock = v164;
      v18 = sub_2AF260(v163, v6, v162);

      v39 = v11;
      if (v18)
      {
        p_aBlock = &aBlock;
        sub_2CE3F0();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_2CE430();
        }

        sub_2CE460();
        v31 = aBlock;
        v38 = v11;
        goto LABEL_16;
      }
    }

    swift_unknownObjectRelease_n();
    v6 = v31 >> 62;
    if (v31 >> 62)
    {
      goto LABEL_145;
    }

    result = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (result >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    }

    if (result < v17)
    {
LABEL_160:
      __break(1u);
      return result;
    }

LABEL_29:
    if ((v31 & 0xC000000000000001) != 0 && v17)
    {
      type metadata accessor for PlayMediaAlternativesViewProvider.AlternativeItem();

      sub_2CECC0(0);
      if (v17 != 1)
      {
        sub_2CECC0(1);
        if (v17 != 2)
        {
          sub_2CECC0(2);
          if (v17 != 3)
          {
            sub_2CECC0(3);
          }
        }
      }
    }

    else
    {
    }

    if (v6)
    {
      v11 = sub_2CEDB0();
      v41 = v42;
      v18 = v43;
      v45 = v44;

      v17 = v45 >> 1;
    }

    else
    {
      v18 = 0;
      v11 = v31 & 0xFFFFFFFFFFFFFF8;
      v41 = (v31 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v12 = v17 - v18;
    if (__OFSUB__(v17, v18))
    {
      goto LABEL_147;
    }

    if (v12 <= 0)
    {
      v72 = v157;
      v73 = v142;
      v143(v157, v145, v142);
      v74 = sub_2CDFE0();
      v75 = sub_2CE690();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v74, v75, "PlayMediaAlternativesViewProvider no valid alternative item.", v76, 2u);
      }

      v140(v72, v73);
      v77 = sub_2CBA10();
      v78 = swift_allocObject();
      v78[2] = 0;
      v78[3] = 0;
      v79 = v163;
      v78[4] = v164;
      v78[5] = v79;
      v78[6] = v12;
      v78[7] = _swiftEmptyArrayStorage;
      v170 = sub_2B3F58;
      v171 = v78;
      aBlock = _NSConcreteStackBlock;
      v167 = 1107296256;
      v168 = sub_A4294;
      v169 = &unk_33E058;
      v80 = _Block_copy(&aBlock);

      v81 = v148;
      sub_2CE160();
      v165 = _swiftEmptyArrayStorage;
      sub_10101C();
      sub_20410(&qword_34DD48, &qword_2D5F80);
      sub_7DDE8();
      v82 = v149;
      v83 = v153;
      sub_2CEC10();
      sub_2CE9C0();
      _Block_release(v80);

      (*(v152 + 8))(v82, v83);
      (*(v150 + 8))(v81, v151);

      v84 = sub_20410(&qword_3519F0, &qword_2D49F8);
      v85 = v158;
      (*(*(v84 - 8) + 56))(v158, 1, 1, v84);
      v146(v85);
      swift_unknownObjectRelease();
      return sub_30B8(v85, &qword_3519E8, &qword_2D49F0);
    }

    p_aBlock = sub_2CCC10();
    swift_unknownObjectRetain();
    v158 = sub_2CCC00();
    v46 = _swiftEmptyArrayStorage;
    v47 = v18;
    v155 = v17 - v18;
LABEL_42:
    v48 = v47;
    while (v17 != v48)
    {
      if (v47 < v18 || v48 >= v17)
      {
        goto LABEL_131;
      }

      v6 = v48 + 1;
      v49 = *(v41 + 8 * v48);
      a2 = *(v49 + 56);
      ++v48;
      if (a2)
      {
        v8 = *(v49 + 48);

        p_aBlock = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_B90C4(0, *(v46 + 2) + 1, 1, v46);
        }

        v51 = *(v46 + 2);
        v50 = *(v46 + 3);
        if (v51 >= v50 >> 1)
        {
          v46 = sub_B90C4((v50 > 1), v51 + 1, 1, v46);
        }

        *(v46 + 2) = v51 + 1;
        v52 = &v46[16 * v51];
        *(v52 + 4) = v8;
        *(v52 + 5) = a2;
        v47 = v6;
        v11 = p_aBlock;
        v12 = v155;
        goto LABEL_42;
      }
    }

    v128 = v11;
    swift_unknownObjectRelease();
    sub_2CCBD0();

    v11 = _swiftEmptyArrayStorage;
    aBlock = _swiftEmptyArrayStorage;
    p_aBlock = &aBlock;
    sub_2CED20();
    if (v17 <= v18)
    {
      v12 = v18;
    }

    else
    {
      v12 = v17;
    }

    v8 = v12 - v18;
    a2 = v18;
    while (v12 != a2)
    {
      v53 = *(*(v41 + 8 * a2) + 16);
      p_aBlock = &aBlock;
      sub_2CED00();
      v6 = *(aBlock + 16);
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      if (v17 == ++a2)
      {
        v139 = aBlock;
        aBlock = _swiftEmptyArrayStorage;
        sub_2CED20();
        a2 = v18;
        while (v12 != a2)
        {
          swift_unknownObjectRetain();
          p_aBlock = &aBlock;
          sub_2CED00();
          v6 = *(aBlock + 16);
          sub_2CED30();
          sub_2CED40();
          sub_2CED10();
          if (v17 == ++a2)
          {
            v127 = aBlock;
            v12 = _swiftEmptyArrayStorage;
            v54 = v18;
LABEL_62:
            v55 = v54;
            while (v17 != v55)
            {
              if (v54 < v18 || v55 >= v17)
              {
                goto LABEL_132;
              }

              v56 = v55 + 1;
              v57 = *(v41 + 8 * v55);
              p_aBlock = *(v57 + 40);
              ++v55;
              if (p_aBlock)
              {
                v6 = *(v57 + 32);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_B90C4(0, *(v12 + 16) + 1, 1, v12);
                }

                a2 = *(v12 + 16);
                v58 = *(v12 + 24);
                v59 = v12;
                if (a2 >= v58 >> 1)
                {
                  v59 = sub_B90C4((v58 > 1), a2 + 1, 1, v12);
                }

                *(v59 + 2) = a2 + 1;
                v12 = v59;
                v60 = &v59[16 * a2];
                *(v60 + 4) = v6;
                *(v60 + 5) = p_aBlock;
                v54 = v56;
                goto LABEL_62;
              }
            }

            v61 = *(v12 + 16);
            if (!v61)
            {
              v154 = _swiftEmptyArrayStorage;
LABEL_99:

              aBlock = _swiftEmptyArrayStorage;
              p_aBlock = &aBlock;
              a2 = v155;
              sub_2DC1C(0, v155, 0);
              v6 = aBlock;
              v12 = v41 + 8 * v18;
              v17 = v138;
              v18 = v137;
              while (v8)
              {
                v86 = *(*v12 + 64);
                aBlock = v6;
                v11 = *(v6 + 16);
                p_aBlock = *(v6 + 24);

                if (v11 >= p_aBlock >> 1)
                {
                  v87 = p_aBlock > 1;
                  p_aBlock = &aBlock;
                  sub_2DC1C(v87, v11 + 1, 1);
                  v6 = aBlock;
                }

                *(v6 + 16) = v11 + 1;
                *(v6 + 8 * v11 + 32) = v86;
                --v8;
                v12 += 8;
                if (!--a2)
                {
                  v88 = [objc_allocWithZone(SFCard) init];
                  sub_2C8E70();
                  sub_2C8E50();
                  v12 = *(v17 + 8);
                  a2 = v136;
                  (v12)(v18, v136);
                  v89 = sub_2CE260();

                  v31 = v88;
                  [v88 setCardId:v89];

                  v8 = v139 >> 62;
                  if (v139 >> 62)
                  {
                    goto LABEL_148;
                  }

                  sub_2CEEB0();
                  sub_334A0(0, &unk_351910, SFCardSection_ptr);
                  goto LABEL_106;
                }
              }

              goto LABEL_133;
            }

            v62 = 0;
            v157 = (v160 & 0xFFFFFFFFFFFFFF8);
            v130 = v12 + 40;
            v156 = v61;
            v129 = v61 - 1;
            v154 = _swiftEmptyArrayStorage;
            v158 = v12;
LABEL_74:
            v11 = v130 + 16 * v62;
            v63 = v62;
            while (v63 < *(v12 + 16))
            {
              a2 = *(v11 - 8);
              v17 = *v11;
              if (!v161)
              {

LABEL_89:
                p_aBlock = v154;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock = p_aBlock;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_2DBFC(0, *(p_aBlock + 16) + 1, 1);
                  p_aBlock = aBlock;
                }

                v6 = *(p_aBlock + 16);
                v70 = *(p_aBlock + 24);
                if (v6 >= v70 >> 1)
                {
                  sub_2DBFC((v70 > 1), v6 + 1, 1);
                  p_aBlock = aBlock;
                }

                v62 = v63 + 1;
                *(p_aBlock + 16) = v6 + 1;
                v154 = p_aBlock;
                v71 = p_aBlock + 16 * v6;
                *(v71 + 32) = a2;
                *(v71 + 40) = v17;
                v12 = v158;
                if (v129 != v63)
                {
                  goto LABEL_74;
                }

                goto LABEL_99;
              }

              if (v159)
              {

                v65 = sub_2CECD0();
              }

              else
              {
                if (!*(v157 + 2))
                {
                  goto LABEL_135;
                }

                v64 = *(v160 + 32);

                v65 = v64;
              }

              v66 = v65;
              v6 = [v65 artist];

              if (!v6)
              {
                goto LABEL_89;
              }

              v67 = sub_2CE270();
              p_aBlock = v68;

              if (a2 == v67 && v17 == p_aBlock)
              {

                v12 = v158;
              }

              else
              {
                v6 = sub_2CEEA0();

                v12 = v158;
                if ((v6 & 1) == 0)
                {
                  goto LABEL_89;
                }

                p_aBlock = v17;
              }

              ++v63;

              v11 += 16;
              if (v156 == v63)
              {
                goto LABEL_99;
              }
            }

            goto LABEL_134;
          }
        }

        goto LABEL_130;
      }
    }

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
LABEL_135:
    __break(1u);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    p_aBlock = a2;
  }

  else
  {
    p_aBlock = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v123 = sub_2CEDA0();
  if (v123 < 0)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    v32 = v6;
    goto LABEL_6;
  }

  v12 = v123 != 0;
  v6 = v123;
  if (sub_2CEDA0() >= v12)
  {
    if (sub_2CEDA0() >= v6)
    {
      goto LABEL_152;
    }

    __break(1u);
  }

LABEL_144:
  __break(1u);
LABEL_145:
  v124 = sub_2CEDA0();
  if ((sub_2CEDA0() & 0x8000000000000000) == 0)
  {
    if (v124 >= 4)
    {
      v125 = 4;
    }

    else
    {
      v125 = v124;
    }

    if (v124 >= 0)
    {
      v17 = v125;
    }

    else
    {
      v17 = 4;
    }

    result = sub_2CEDA0();
    if (result < v17)
    {
      goto LABEL_160;
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_334A0(0, &unk_351910, SFCardSection_ptr);

  sub_2CED90();

LABEL_106:
  sub_334A0(0, &unk_351910, SFCardSection_ptr);
  isa = sub_2CE400().super.isa;

  v11 = v31;
  [v31 setCardSections:isa];

  v29 = [objc_allocWithZone(SFDetailedRowCardSection) init];
  sub_2C8E70();
  sub_2C8E50();
  (v12)(v18, a2);
  v91 = sub_2CE260();

  [v29 setCardSectionId:v91];

  [v29 setNextCard:v31];
  v92 = [v29 cardSectionId];

  if (v92)
  {
    v93 = sub_2CE270();
    v95 = v94;
  }

  else
  {
    v93 = 0;
    v95 = 0;
  }

  v31 = sub_2CBA10();
  v96 = swift_allocObject();
  v96[2] = v93;
  v96[3] = v95;
  v97 = v163;
  v96[4] = v164;
  v96[5] = v97;
  v96[6] = v155;
  v96[7] = v6;
  v170 = sub_2B4084;
  v171 = v96;
  aBlock = _NSConcreteStackBlock;
  v167 = 1107296256;
  v168 = sub_A4294;
  v169 = &unk_33E0A8;
  v98 = _Block_copy(&aBlock);

  v99 = v148;
  sub_2CE160();
  v165 = _swiftEmptyArrayStorage;
  v12 = sub_10101C();
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v18 = v149;
  v100 = v153;
  sub_2CEC10();
  p_aBlock = v31;
  sub_2CE9C0();
  _Block_release(v98);

  (*(v152 + 8))(v18, v100);
  (*(v150 + 8))(v99, v151);

  v17 = v139;
  if (v8)
  {
    v101 = sub_2CEDA0();
  }

  else
  {
    v101 = *(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8));
  }

  a2 = v135;
  v8 = v142;
  v6 = &selRef_hasTwoOrMoreRooms;
  if (!v101)
  {
    goto LABEL_120;
  }

  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v102 = *(v17 + 32);
      goto LABEL_116;
    }

    __break(1u);
    goto LABEL_151;
  }

  v102 = sub_2CECD0();
LABEL_116:
  v103 = v102;
  v104 = [v102 thumbnail];

  if (v104)
  {
    [v104 copy];

    sub_2CEC00();
    swift_unknownObjectRelease();
    sub_334A0(0, &qword_356F58, SFImage_ptr);
    if (swift_dynamicCast())
    {
      v105 = v165;
    }

    else
    {
      v105 = 0;
    }
  }

  else
  {
LABEL_120:
    v105 = 0;
  }

  [v29 setThumbnail:v105];

  v106 = [v29 thumbnail];
  if (v106)
  {
    v107 = v106;
    [v106 setSize:{29.0, 29.0}];
  }

  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  *(v108 + 24) = 0xE000000000000000;
  v143(a2, v145, v8);
  v109 = sub_2CDFE0();
  v110 = sub_2CE670();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_0, v109, v110, "PlayMediaAlternativesViewProvider#makeAlternativesCardSectionAndCommands evaluating alternatives title...", v111, 2u);
  }

  v140(a2, v8);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v112 = qword_35F760;
  v113 = v133;
  sub_2CDFB0();
  v114 = sub_2CE9E0();
  sub_2CDF90(v114, &dword_0, v112, "alternativesViewProviderMakeTitleLabel", 38, 2, v113, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v115 = v164;
  sub_2AD430(v108, v164, v29);
  sub_2CE9D0();
  sub_2CDFA0();
  (*(v134 + 8))(v113, v131);
  v116 = swift_allocObject();
  v116[2] = v29;
  v117 = v146;
  v116[3] = v160;
  v116[4] = v117;
  v118 = v127;
  v116[5] = v147;
  v116[6] = v118;
  v120 = v162;
  v119 = v163;
  v116[7] = v115;
  v116[8] = v119;
  v116[9] = v120;
  v116[10] = v108;
  v116[11] = v17;

  v121 = v29;

  v122 = v120;
  sub_2AE578(v154, sub_2B3FD4, v116);
  swift_unknownObjectRelease();
}

void sub_2AD430(uint64_t a1, void *a2, void *a3)
{
  v31 = a3;
  v5 = sub_2CE000();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C8EC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0(a2 + 2, a2[5]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v14 = sub_2CC620();
  v16 = v15;

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = v30;
  v18 = sub_3ED0(v30, static Logger.default);
  swift_beginAccess();
  v19 = v29;
  (*(v29 + 16))(v7, v18, v17);

  v20 = sub_2CDFE0();
  v21 = sub_2CE690();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32[0] = v23;
    *v22 = 136315138;
    swift_beginAccess();
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);

    v26 = sub_3F08(v24, v25, v32);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v20, v21, "PlayMediaAlternativesViewProvider#makeAlternativesCardSectionAndCommands alternatives title from Strings file as: %s...", v22, 0xCu);
    sub_306C(v23);
  }

  (*(v19 + 8))(v7, v17);
  swift_beginAccess();

  v27 = sub_2C9C50();

  [v31 setTitle:v27];
}

uint64_t sub_2AD83C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, unint64_t a12)
{
  v66 = a7;
  v67 = a6;
  v68 = a5;
  v17 = sub_20410(&qword_3519E8, &qword_2D49F0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v62 - v18);
  v20 = sub_20410(&unk_356F60, qword_2D4A00);
  __chkstk_darwin(v20 - 8);
  v22 = &v62 - v21;
  v23 = sub_2CE000();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23);
  v26 = (&v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v27 = swift_allocObject();
    v64 = v19;
    v65 = v24;
    *(v27 + 16) = xmmword_2D0770;
    *(v27 + 32) = sub_2C9C50();
    sub_334A0(0, &qword_356F28, SFRichText_ptr);
    v12 = v23;
    v28 = v22;
    v29 = a2;
    v30 = a1;
    isa = sub_2CE400().super.isa;
    v19 = v64;
    v24 = v65;

    [a3 setDescriptions:isa];

    a1 = v30;
    a2 = v29;
    v22 = v28;
    v23 = v12;
  }

  if (a4 >> 62)
  {
    if (sub_2CEDA0())
    {
LABEL_5:
      v63 = a3;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v26 = v68;
        v32 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_33;
        }

        v26 = v68;
        v32 = *(a4 + 32);
      }

      v23 = v32;
      v24 = a11;
      v33 = sub_2B1C24();
      v62 = a1;
      v68 = v23;
      if (v33)
      {
        v34 = [v23 privateMediaItemValueData];
        if (v34 && (v35 = v34, v36 = [v34 punchoutURI], v35, v36))
        {
          v37 = sub_2CE270();
          v23 = v38;

          v12 = sub_2B3528(v37, v23);
        }

        else
        {
          v12 = sub_2B33AC();
        }
      }

      else
      {
        v39 = sub_2B3768(v23, a10);
        if (v39)
        {
          v40 = v39;
          v12 = sub_2B3B4C(v39);
        }

        else
        {
          v12 = 0;
        }
      }

      swift_beginAccess();
      a1 = *(a11 + 16);
      a3 = *(a11 + 24);
      if (a12 >> 62)
      {
        if (sub_2CEDA0())
        {
LABEL_18:
          if ((a12 & 0xC000000000000001) == 0)
          {
            if (*(&dword_10 + (a12 & 0xFFFFFFFFFFFFFF8)))
            {
              v41 = *(a12 + 32);

              v42 = v41;
LABEL_21:
              v43 = v42;
LABEL_30:
              v55 = [v43 thumbnail];

              sub_2ADF1C(a1, a3, v62, a2, v55, v12, v22);

              v56 = sub_20410(&qword_3519F0, &qword_2D49F8);
              v57 = *(v56 + 64);
              v58 = v63;
              v59 = v66;
              *v19 = v63;
              v19[1] = v59;
              sub_2B4010(v22, v19 + v57);
              (*(*(v56 - 8) + 56))(v19, 0, 1, v56);
              v60 = v58;

              v26(v19);

              sub_30B8(v19, &qword_3519E8, &qword_2D49F0);
              v52 = &unk_356F60;
              v53 = qword_2D4A00;
              v54 = v22;
              return sub_30B8(v54, v52, v53);
            }

            __break(1u);
            goto LABEL_35;
          }

LABEL_33:

          v42 = sub_2CECD0();
          goto LABEL_21;
        }
      }

      else if (*(&dword_10 + (a12 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v43 = 0;
      goto LABEL_30;
    }
  }

  else if (*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_5;
  }

  if (qword_34BF58 != -1)
  {
LABEL_35:
    swift_once();
  }

  v44 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  (*(v24 + 16))(v26, v44, v23);
  v45 = sub_2CDFE0();
  v46 = sub_2CE690();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "PlayMediaAlternativesViewProvider#makeAlternativesCardSectionAndCommands returning no alternative snippet model - no mediaItem", v47, 2u);
  }

  (*(v24 + 8))(v26, v23);
  v48 = sub_20410(&qword_3519F0, &qword_2D49F8);
  v49 = *(v48 + 64);
  *v19 = a3;
  v19[1] = v66;
  v50 = sub_2CD2B0();
  (*(*(v50 - 8) + 56))(v19 + v49, 1, 1, v50);
  (*(*(v48 - 8) + 56))(v19, 0, 1, v48);
  v51 = a3;

  v68(v19);
  v52 = &qword_3519E8;
  v53 = &qword_2D49F0;
  v54 = v19;
  return sub_30B8(v54, v52, v53);
}

uint64_t sub_2ADF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v65 = a4;
  v60 = a5;
  v62 = a3;
  v10 = sub_20410(&unk_3519B0, &qword_2D1230);
  v11 = __chkstk_darwin(v10 - 8);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v56 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v63 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v59 = &v56 - v19;
  v20 = __chkstk_darwin(v18);
  v58 = &v56 - v21;
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v66 = *(v15 + 16);
  v66(v23, v24, v14);
  v25 = sub_2CDFE0();
  v26 = sub_2CE690();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v56 = a1;
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "PlayMediaAlternativesViewProvider#alternativesSnippetModel...", v27, 2u);
  }

  v28 = *(v15 + 8);
  v28(v23, v14);
  if (!a2)
  {
    v37 = v63;
    v66(v63, v24, v14);
    v38 = sub_2CDFE0();
    v39 = sub_2CE690();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "PlayMediaAlternativesViewProvider#alternativesSnippetModel returning nil for alternatives - no title", v40, 2u);
    }

    v41 = v37;
    goto LABEL_22;
  }

  if (!v65)
  {
    v42 = v59;
    v66(v59, v24, v14);
    v43 = sub_2CDFE0();
    v44 = sub_2CE690();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "PlayMediaAlternativesViewProvider#alternativesSnippetModel returning nil for alternatives - no title", v45, 2u);
    }

    v41 = v42;
    goto LABEL_22;
  }

  v29 = v64;
  if (!v64)
  {
    v48 = v58;
    v66(v58, v24, v14);
    v49 = sub_2CDFE0();
    v50 = sub_2CE690();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "PlayMediaAlternativesViewProvider#alternativesSnippetModel returning nil for alternatives - no action", v51, 2u);
    }

    v41 = v48;
LABEL_22:
    v28(v41, v14);
    v52 = 1;
    goto LABEL_26;
  }

  if (v60 && (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
  {
    v31 = v30;
    v32 = v29;

    v33 = [v31 urlValue];
    if (v33)
    {
      v34 = v57;
      v35 = v33;
      sub_2C8D60();

      v36 = 0;
    }

    else
    {
      v36 = 1;
      v34 = v57;
    }

    v53 = sub_2C8D90();
    (*(*(v53 - 8) + 56))(v34, v36, 1, v53);
    sub_7FD30(v34, v61);
  }

  else
  {
    v46 = sub_2C8D90();
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    v47 = v29;
  }

  sub_2CD2A0();
  v52 = 0;
LABEL_26:
  v54 = sub_2CD2B0();
  return (*(*(v54 - 8) + 56))(a7, v52, 1, v54);
}

uint64_t sub_2AE578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_2CDFD0();
  v41 = *(v45 - 8);
  v6 = *(v41 + 64);
  v7 = __chkstk_darwin(v45);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v38 - v8;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2CDFE0();
  v15 = sub_2CE690();

  v16 = os_log_type_enabled(v14, v15);
  v43 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v38 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39 = a3;
    v20 = v19;
    v46 = v19;
    *v18 = 136315138;
    v21 = sub_2CE420();
    v23 = v6;
    v24 = sub_3F08(v21, v22, &v46);

    *(v18 + 4) = v24;
    v6 = v23;
    _os_log_impl(&dword_0, v14, v15, "PlayMediaAlternativesViewProvider#makeArtistsLabel making artists label with %s", v18, 0xCu);
    sub_306C(v20);
    a3 = v39;

    (*(v10 + 8))(v12, v38);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = qword_34BF98;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_35F760;
  v28 = v42;
  sub_2CDFB0();
  v29 = v40;
  v30 = v41;
  v31 = v45;
  (*(v41 + 16))(v40, v28, v45);
  v32 = (*(v30 + 80) + 33) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = "alternativesViewProviderMakeArtistsLabel";
  *(v33 + 24) = 40;
  *(v33 + 32) = 2;
  (*(v30 + 32))(v33 + v32, v29, v31);
  v34 = (v33 + ((v6 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_BB214;
  v34[1] = v25;

  v35 = sub_2CE9E0();
  sub_2CDF90(v35, &dword_0, v27, "alternativesViewProviderMakeArtistsLabel", 40, 2, v28, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_BB21C;
  *(v36 + 24) = v33;

  sub_2AEA6C(sub_BB2C4, v36, v43, v44);

  return (*(v30 + 8))(v28, v31);
}

unint64_t sub_2AEA6C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2C8EC0();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v48 - v16;
  __chkstk_darwin(v15);
  v19 = &v48 - v18;

  v51 = _swiftEmptyArrayStorage;
  swift_retain_n();
  sub_2AB948(a3, &v51);
  v20 = v51;
  v21 = v51[2];
  if (v21 == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v17, v26, v10);
    v14 = sub_2CDFE0();
    a4 = sub_2CE690();
    if (os_log_type_enabled(v14, a4))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v14, a4, "PlayMediaAlternativesViewProvider#makeArtistsLabel only 1 artist, returning it", v9, 2u);
    }

    v27 = *(v11 + 8);
    v11 += 8;
    v27(v17, v10);
    if (v20[2])
    {
      v28 = v20[4];
      v29 = v20[5];

      v30 = v28;
      v31 = v29;
      v32 = a1;
LABEL_23:
      sub_2B3CAC(v30, v31, v32);

LABEL_24:
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v21)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v19, v22, v10);
    v23 = sub_2CDFE0();
    v24 = sub_2CE690();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "PlayMediaAlternativesViewProvider#makeArtistsLabel empty artists, nil return", v25, 2u);
    }

    (*(v11 + 8))(v19, v10);

    sub_2B3CAC(0, 0, a1);
    goto LABEL_24;
  }

  v48 = a1;
  if (qword_34BF58 != -1)
  {
LABEL_26:
    swift_once();
  }

  v33 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v33, v10);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "PlayMediaAlternativesViewProvider#makeArtistsLabel > 1 artists, evaluating", v36, 2u);
  }

  (*(v11 + 8))(v14, v10);
  sub_35E0(a4 + 2, a4[5]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  sub_2CC620();

  (*(v49 + 8))(v9, v50);
  v39 = v20[2];
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2D0E40;
  *(v40 + 56) = &type metadata for String;
  result = sub_1087C();
  *(v40 + 64) = result;
  if (v39 > 3)
  {
    v44 = v20[5];
    *(v40 + 32) = v20[4];
    *(v40 + 40) = v44;
    *(v40 + 96) = &type metadata for Int;
    *(v40 + 104) = &protocol witness table for Int;
    *(v40 + 72) = v39 - 2;
    goto LABEL_22;
  }

  if (v39)
  {
    v42 = v20[5];
    *(v40 + 32) = v20[4];
    *(v40 + 40) = v42;
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = result;
    if (v39 != 1)
    {
      v43 = v20[7];
      *(v40 + 72) = v20[6];
      *(v40 + 80) = v43;

LABEL_22:

      v45 = sub_2CE280();
      v47 = v46;

      v30 = v45;
      v31 = v47;
      v32 = v48;
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2AF15C(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *a2;
  v6 = (*a2 + 40);
  v7 = *(*a2 + 16) + 1;
  while (--v7)
  {
    if (v3 != *(v6 - 1) || v4 != *v6)
    {
      v6 += 2;
      result = sub_2CEEA0();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_B90C4(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a2 = result;
  }

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_B90C4((v9 > 1), v10 + 1, 1, v5);
    v5 = result;
    *a2 = result;
  }

  *(v5 + 16) = v10 + 1;
  v11 = v5 + 16 * v10;
  *(v11 + 32) = v3;
  *(v11 + 40) = v4;
  return result;
}

void *sub_2AF260(void (*a1)(char *, uint64_t), void *a2, void *a3)
{
  v88 = a1;
  v84 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v83 = &v80 - v9;
  __chkstk_darwin(v8);
  v11 = &v80 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v86 = *(v5 + 16);
  v87 = v12;
  v86(v11, v12, v4);
  v13 = a2;
  v14 = sub_2CDFE0();
  v15 = sub_2CE660();

  if (os_log_type_enabled(v14, v15))
  {
    v81 = v5;
    v82 = v4;
    v16 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v91 = v80;
    *v16 = 136315650;
    v17 = [v13 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_2CE270();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v89 = v19;
    v90 = v21;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v22 = sub_2CE2A0();
    v24 = sub_3F08(v22, v23, &v91);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v13 title];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2CE270();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v89 = v27;
    v90 = v29;
    v30 = sub_2CE2A0();
    v32 = sub_3F08(v30, v31, &v91);

    *(v16 + 14) = v32;
    *(v16 + 22) = 2080;
    v33 = [v13 artist];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2CE270();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v89 = v35;
    v90 = v37;
    v38 = sub_2CE2A0();
    v40 = sub_3F08(v38, v39, &v91);

    *(v16 + 24) = v40;
    _os_log_impl(&dword_0, v14, v15, "PlayMediaAlternativesViewProvider making DetailedRow for mediaItem identifier: %s, title: %s, artist: %s", v16, 0x20u);
    swift_arrayDestroy();

    v5 = v81;
    v4 = v82;
  }

  else
  {
  }

  v41 = *(v5 + 8);
  v41(v11, v4);
  v42 = sub_2AF98C(v88, v13);
  if (!v42)
  {
    v53 = v85;
    v86(v85, v87, v4);
    v54 = sub_2CDFE0();
    v55 = sub_2CE680();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "PlayMediaAlternativesViewProvider invalid alternative item", v56, 2u);
    }

    v57 = v53;
    goto LABEL_37;
  }

  v44 = v42;
  v45 = v43;
  if (sub_2B1C24())
  {
    v46 = [v13 privateMediaItemValueData];
    if (v46 && (v47 = v46, v48 = [v46 punchoutURI], v47, v48))
    {
      v49 = sub_2CE270();
      v51 = v50;

      v52 = sub_2B3528(v49, v51);
    }

    else
    {
      v52 = sub_2B33AC();
    }

    goto LABEL_26;
  }

  v58 = sub_2B3768(v13, v84);
  if (!v58)
  {

    v76 = v83;
    v86(v83, v87, v4);
    v77 = sub_2CDFE0();
    v78 = sub_2CE680();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "PlayMediaAlternativesViewProvider failed to generate ACE command", v79, 2u);
    }

    else
    {
    }

    v57 = v76;
LABEL_37:
    v41(v57, v4);
    return 0;
  }

  v59 = v58;
  v52 = sub_2B3B4C(v58);

LABEL_26:
  sub_20410(&unk_351900, &unk_2D0960);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2D0770;
  v61 = v44;
  v62 = v52;
  v63 = sub_2C9C60();

  *(v60 + 32) = v63;
  sub_334A0(0, &qword_3519E0, SFAbstractCommand_ptr);
  isa = sub_2CE400().super.isa;

  [v61 setCommands:isa];

  v65 = [v13 artist];
  if (v65)
  {
    v66 = v65;
    v67 = sub_2CE270();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  v70 = [v13 identifier];
  if (v70)
  {
    v71 = v70;
    v72 = sub_2CE270();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  type metadata accessor for PlayMediaAlternativesViewProvider.AlternativeItem();
  result = swift_allocObject();
  result[2] = v61;
  result[3] = v62;
  result[4] = v67;
  result[5] = v69;
  result[6] = v72;
  result[7] = v74;
  result[8] = v45;
  return result;
}

id sub_2AF98C(void (*a1)(char *, uint64_t), void *a2)
{
  v3 = v2;
  v134 = a1;
  v5 = sub_2CE000();
  v135 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v125 = v116 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v116 - v12;
  v14 = __chkstk_darwin(v11);
  v120 = v116 - v15;
  __chkstk_darwin(v14);
  v119 = v116 - v16;
  v124 = sub_2CB900();
  v126 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2CB8B0();
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2C8E80();
  v132 = *(v19 - 8);
  v133 = v19;
  __chkstk_darwin(v19);
  v21 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2C8EC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a2 title];
  if (!v26)
  {
    v39 = v135;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v40 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (v39)[2](v8, v40, v5);
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "PlayMediaAlternativesViewProvider empty title.", v43, 2u);
    }

    (v39[1])(v8, v5);
    return 0;
  }

  v117 = v13;
  v118 = v5;
  v27 = v26;
  v129 = sub_2CE270();
  v131 = v28;

  v29 = *(v3 + 40);
  v116[1] = v3;
  v128 = sub_35E0((v3 + 16), v29);
  sub_1E93D4([a2 type]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v127 = a2;
  v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v128 = sub_2CC620();

  (*(v23 + 8))(v25, v22);
  v32 = [objc_allocWithZone(SFDetailedRowCardSection) init];
  sub_2C8E70();
  sub_2C8E50();
  (v132[1])(v21, v133);
  v33 = sub_2CE260();

  [v32 setCardSectionId:v33];

  v34 = sub_2C9C50();
  [v32 setTitle:v34];

  sub_20410(&unk_351900, &unk_2D0960);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2D0770;
  v36 = v127;
  v37 = [v127 artist];
  if (v37)
  {
    v38 = v37;
    sub_2CE270();
  }

  v44 = sub_2C9C50();

  *(v35 + 32) = v44;
  sub_334A0(0, &qword_356F28, SFRichText_ptr);
  isa = sub_2CE400().super.isa;

  [v32 setDescriptions:isa];

  v46 = sub_2C9C50();

  [v32 setFootnote:v46];

  if (sub_2B1C24())
  {
    v47 = [v36 identifier];
    if (v47)
    {
      v48 = v47;
      v49 = sub_2CE270();
      v51 = v50;

      sub_2CB910();
      swift_allocObject();

      v52 = sub_2CB920();
      if (v52)
      {
        v53 = v52;
        if (qword_34C078 != -1)
        {
          swift_once();
        }

        v54 = qword_35F968;
        v55 = v121;
        sub_2CB8C0();
        v56 = v123;
        sub_2CB8A0();
        v57 = *(v130 + 8);
        v130 += 8;
        v134 = v57;
        v57(v55, v122);
        v58 = sub_195984(v56, v54);
        v59 = v126 + 8;
        v60 = *(v126 + 8);
        v60(v56, v124);
        if (!v58)
        {
          v126 = v59;

          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v86 = v118;
          v87 = sub_3ED0(v118, static Logger.default);
          swift_beginAccess();
          v88 = v135;
          v89 = v117;
          (v135)[2](v117, v87, v86);

          v90 = sub_2CDFE0();
          v91 = sub_2CE680();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v133 = v53;
            v93 = v92;
            v132 = swift_slowAlloc();
            v136 = v132;
            *v93 = 136315138;
            v94 = v121;
            sub_2CB8C0();
            v95 = v123;
            sub_2CB8A0();
            v134(v94, v122);
            v96 = sub_2CB8F0();
            v98 = v97;
            v60(v95, v124);
            v99 = sub_3F08(v96, v98, &v136);

            *(v93 + 4) = v99;
            _os_log_impl(&dword_0, v90, v91, "PlayMediaAlternativesViewProvider scheme %s is not supported.", v93, 0xCu);
            sub_306C(v132);

            (v88[1])(v117, v118);
          }

          else
          {

            (v88[1])(v89, v86);
          }

          return 0;
        }

        v61 = sub_2B0B2C(v36, v53);
        if (v61)
        {
          v62 = v61;
          v63 = sub_2B28AC(v53);
          if (v63)
          {
            v64 = v63;
            v133 = v53;
            v135 = v62;
            [v32 setThumbnail:v62];
            v134 = v64;
            [v32 setAction:v64];
            sub_20410(&unk_356F30, &qword_2D69C0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2D5F90;
            strcpy((inited + 32), "cardSectionId");
            *(inited + 46) = -4864;
            v66 = [v32 cardSectionId];

            if (v66)
            {
              v67 = sub_2CE270();
              v69 = v68;
            }

            else
            {
              v67 = 0;
              v69 = 0xE000000000000000;
            }

            *(inited + 48) = v67;
            *(inited + 56) = v69;
            *(inited + 64) = 0x6449616964656DLL;
            *(inited + 72) = 0xE700000000000000;
            *(inited + 80) = v49;
            *(inited + 88) = v51;
            *(inited + 96) = 0x656C746974;
            *(inited + 104) = 0xE500000000000000;
            v106 = v131;
            *(inited + 112) = v129;
            *(inited + 120) = v106;
            *(inited + 128) = 0x747369747261;
            *(inited + 136) = 0xE600000000000000;
            v107 = [v36 artist];
            if (v107)
            {
              v108 = v107;
              v109 = sub_2CE270();
              v111 = v110;
            }

            else
            {
              v109 = 0;
              v111 = 0xE000000000000000;
            }

            *(inited + 144) = v109;
            *(inited + 152) = v111;
            *(inited + 160) = 1701869940;
            *(inited + 168) = 0xE400000000000000;
            sub_1E93D4([v36 type]);
            v112 = sub_2CE2B0();
            v114 = v113;

            *(inited + 176) = v112;
            *(inited + 184) = v114;
            v115 = sub_90A9C(inited);
            swift_setDeallocating();
            sub_20410(&qword_354748, &qword_2D69C8);
            swift_arrayDestroy();
            sub_2349AC(v115);

            return v32;
          }

          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v78 = v118;
          v103 = sub_3ED0(v118, static Logger.default);
          swift_beginAccess();
          v80 = v135;
          v81 = v119;
          (v135)[2](v119, v103, v78);
          v82 = sub_2CDFE0();
          v104 = sub_2CE680();
          if (os_log_type_enabled(v82, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&dword_0, v82, v104, "PlayMediaAlternativesViewProvider empty action item.", v105, 2u);

            goto LABEL_28;
          }

LABEL_30:

          goto LABEL_31;
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v78 = v118;
        v100 = sub_3ED0(v118, static Logger.default);
        swift_beginAccess();
        v80 = v135;
        v81 = v120;
        (v135)[2](v120, v100, v78);
        v82 = sub_2CDFE0();
        v101 = sub_2CE680();
        if (!os_log_type_enabled(v82, v101))
        {

          goto LABEL_30;
        }

        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_0, v82, v101, "PlayMediaAlternativesViewProvider empty thumbnail.", v102, 2u);

        goto LABEL_28;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v78 = v118;
    v79 = sub_3ED0(v118, static Logger.default);
    swift_beginAccess();
    v80 = v135;
    v81 = v125;
    (v135)[2](v125, v79, v78);
    v82 = sub_2CDFE0();
    v83 = sub_2CE680();
    if (!os_log_type_enabled(v82, v83))
    {

      goto LABEL_30;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_0, v82, v83, "PlayMediaAlternativesViewProvider invalid identifier.", v84, 2u);

LABEL_28:
LABEL_31:
    (v80[1])(v81, v78);
    return 0;
  }

  v70 = sub_2B21DC(v36);
  [v32 setThumbnail:v70];

  v71 = [objc_allocWithZone(SFActionItem) init];
  [v71 setInteractionContentType:INInteractionMediaPlaybackContentType];
  [v32 setAction:v71];

  sub_20410(&unk_356F30, &qword_2D69C0);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_2D0090;
  strcpy((v72 + 32), "cardSectionId");
  *(v72 + 46) = -4864;
  v73 = [v32 cardSectionId];

  if (v73)
  {
    v74 = sub_2CE270();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0xE000000000000000;
  }

  *(v72 + 48) = v74;
  *(v72 + 56) = v76;
  v77 = sub_90A9C(v72);
  swift_setDeallocating();
  sub_30B8(v72 + 32, &qword_354748, &qword_2D69C8);
  sub_2349AC(v77);

  return v32;
}

id sub_2B0B2C(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v94 = a1;
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v100 = v3;
  v101 = v4;
  v5 = __chkstk_darwin(v3);
  v99 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v97 = &v92 - v8;
  v9 = __chkstk_darwin(v7);
  v96 = &v92 - v10;
  __chkstk_darwin(v9);
  v12 = &v92 - v11;
  v13 = sub_2CB8E0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v95 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v92 - v17;
  v19 = sub_2CB8B0();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v92 - v24;
  sub_2CB8C0();
  sub_2CB880();
  v26 = *(v20 + 8);
  v27 = v25;
  v28 = v19;
  v26(v27, v19);
  v29 = v14;
  v30 = (*(v14 + 88))(v18, v13);
  if (v30 == enum case for PlaybackItem.ContentOrigin.device(_:))
  {
    v31 = [objc_allocWithZone(SFMediaArtworkImage) init];
    sub_2CB8C0();
    sub_2CB870();
    v26(v23, v28);
    v32 = sub_2CE260();

    [v31 setPersistentID:v32];

    v33 = a2;
LABEL_3:
    [v31 setMediaEntityType:sub_2B23BC(v33)];
    return v31;
  }

  v98 = a2;
  v93 = v28;
  if (v30 == enum case for PlaybackItem.ContentOrigin.sirisync(_:))
  {
    sub_2CB8C0();
    v35 = sub_2CB860();
    v37 = v36;
    v94 = v26;
    v26(v23, v28);
    v38 = v101;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = v100;
    v40 = sub_3ED0(v100, static Logger.default);
    swift_beginAccess();
    v41 = *(v38 + 16);
    v99 = v40;
    v95 = v41;
    v41(v12, v40, v39);

    v42 = sub_2CDFE0();
    v43 = sub_2CE690();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v103 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_3F08(v35, v37, &v103);
      _os_log_impl(&dword_0, v42, v43, "PlayMediaAlternativesViewProvider#makeActionItemForInternal trying to build SFMediaArtworkImage for siriSyncID: %s", v44, 0xCu);
      sub_306C(v45);
      v39 = v100;

      v46 = v101;
    }

    else
    {

      v46 = v38;
    }

    v60 = *(v46 + 8);
    v60(v12, v39);
    v61 = [objc_opt_self() defaultMediaLibrary];
    v104._countAndFlagsBits = v35;
    v104._object = v37;
    v62 = sub_2CE6A0(v104);
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      v77 = v96;
      v95(v96, v99, v39);
      v78 = v98;

      v79 = sub_2CDFE0();
      v80 = sub_2CE680();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v99 = v60;
        v82 = v81;
        v83 = swift_slowAlloc();
        v102 = v62;
        v103 = v83;
        *v82 = 136315394;
        v84 = sub_2CEE70();
        v86 = sub_3F08(v84, v85, &v103);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        LODWORD(v102) = sub_2B23BC(v78);
        type metadata accessor for SFMediaEntityType(0);
        v87 = sub_2CE2A0();
        v89 = sub_3F08(v87, v88, &v103);

        *(v82 + 14) = v89;
        _os_log_impl(&dword_0, v79, v80, "PlayMediaAlternativesViewProvider persistentID: %s self.mediaEntityType(from: playbackItem)%s", v82, 0x16u);
        swift_arrayDestroy();

        (v99)(v77, v39);
      }

      else
      {

        v60(v77, v39);
      }

      v31 = [objc_allocWithZone(SFMediaArtworkImage) init];
      v103 = v62;
      sub_2CEE70();
      v91 = sub_2CE260();

      [v31 setPersistentID:v91];

      v33 = v78;
      goto LABEL_3;
    }

    v65 = v60;
    v66 = v97;
    v95(v97, v99, v39);

    v67 = sub_2CDFE0();
    v68 = sub_2CE680();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v103 = v70;
      *v69 = 136315138;
      sub_2CB8C0();
      v71 = sub_2CB870();
      v73 = v72;
      v94(v23, v93);
      v74 = sub_3F08(v71, v73, &v103);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_0, v67, v68, "PlayMediaAlternativesViewProvider received nil persistentID when converting siriSyncID: %s", v69, 0xCu);
      sub_306C(v70);

      v75 = v100;
      v76 = v97;
    }

    else
    {

      v76 = v66;
      v75 = v39;
    }

    v65(v76, v75);
    return 0;
  }

  else
  {
    v47 = v101;
    v48 = v99;
    if (v30 != enum case for PlaybackItem.ContentOrigin.multiverse(_:))
    {
      if (v30 == enum case for PlaybackItem.ContentOrigin.store(_:))
      {
        return sub_2B21DC(v94);
      }

      if (v30 == enum case for PlaybackItem.ContentOrigin.ulid(_:))
      {
        v31 = [objc_allocWithZone(SFMediaArtworkImage) init];
        sub_2CB8C0();
        sub_2CB870();
        v26(v23, v93);
        v90 = sub_2CE260();

        [v31 setUniversalLibraryID:v90];

        return v31;
      }

      if (v30 != enum case for PlaybackItem.ContentOrigin.spotlight(_:) && v30 != enum case for PlaybackItem.ContentOrigin.wholelibrary(_:) && v30 != enum case for PlaybackItem.ContentOrigin.unknown(_:))
      {
        (*(v14 + 8))(v18, v13);
      }
    }

    v94 = v26;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v49 = v100;
    v50 = sub_3ED0(v100, static Logger.default);
    swift_beginAccess();
    (*(v47 + 16))(v48, v50, v49);

    v51 = sub_2CDFE0();
    v52 = sub_2CE680();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v103 = v97;
      *v53 = 136315138;
      LODWORD(v96) = v52;
      sub_2CB8C0();
      v54 = v95;
      sub_2CB880();
      v94(v23, v93);
      v55 = sub_2CB8D0();
      v56 = v47;
      v58 = v57;
      (*(v29 + 8))(v54, v13);
      v59 = sub_3F08(v55, v58, &v103);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_0, v51, v96, "PlayMediaAlternativesViewProvider hasn't yet supported %s.", v53, 0xCu);
      sub_306C(v97);

      (*(v56 + 8))(v99, v100);
    }

    else
    {

      (*(v47 + 8))(v48, v49);
    }

    return 0;
  }
}

double sub_2B1764(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2CE000();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_2D1010;
  *(inited + 32) = 0x7463655364726163;
  if (a2)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  *(inited + 40) = 0xED000064496E6F69;
  *(inited + 48) = v15;
  v16 = 0xE000000000000000;
  if (a2)
  {
    v16 = a2;
  }

  *(inited + 56) = v16;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isInternalApp");
  *(inited + 94) = -4864;

  *(v14 + 96) = sub_2B1C24() & 1;
  *(v14 + 120) = &type metadata for Bool;
  *(v14 + 128) = 0xD000000000000011;
  *(v14 + 136) = 0x80000000002E1200;
  *(v14 + 144) = a5;
  *(v14 + 168) = &type metadata for Int;
  strcpy((v14 + 176), "alternatives");
  *(v14 + 189) = 0;
  *(v14 + 190) = -5120;
  *(v14 + 216) = sub_20410(&qword_356F70, qword_2D9180);
  *(v14 + 192) = a6;

  v17 = sub_112C0(v14);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v19 = v35;
  (*(v35 + 16))(v12, v18, v10);

  v20 = sub_2CDFE0();
  v21 = sub_2CE670();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = v10;
    v23 = v19;
    v24 = v22;
    v25 = swift_slowAlloc();
    v36[0] = v25;
    *v24 = 136315138;
    v26 = sub_2CE210();
    v28 = sub_3F08(v26, v27, v36);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v20, v21, "PlayMediaAlternativesViewProvider sending event to AFAnalytics: %s", v24, 0xCu);
    sub_306C(v25);

    (*(v23 + 8))(v12, v34);
  }

  else
  {

    (*(v19 + 8))(v12, v10);
  }

  v29 = [objc_opt_self() sharedAnalytics];
  if (v29)
  {
    v30 = v29;
    sub_E014(v17);

    isa = sub_2CE1F0().super.isa;

    [v30 logEventWithType:2908 context:isa];
  }

  else
  {
  }

  return result;
}

uint64_t sub_2B1C24()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CCF90();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (v4 == sub_2CBE10() && v7 == v8)
    {
      goto LABEL_13;
    }

    v14 = sub_2CEEA0();

    if (v14)
    {
LABEL_14:

      return 1;
    }

    if (v6 == sub_2CBE30() && v7 == v15)
    {
LABEL_13:

      goto LABEL_14;
    }

    v16 = sub_2CEEA0();

    return v16 & 1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v9 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v9, v0);
    v10 = sub_2CDFE0();
    v11 = sub_2CE680();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "PlayMediaAlternativesViewProvider encounters null app identifier.", v12, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

id sub_2B1E98(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C8D90();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 _imageData];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2C8DC0();
    v14 = v13;

    sub_525D4(v12, v14);
    isa = sub_2C8DB0().super.isa;
    sub_52628(v12, v14);
    v16 = [objc_opt_self() imageWithData:isa];

    sub_52628(v12, v14);
  }

  else
  {
    v17 = [a1 _uri];
    if (v17)
    {
      v18 = v17;
      sub_2C8D60();

      v19 = objc_allocWithZone(SFURLImage);
      sub_2C8D50(v20);
      v22 = v21;
      v16 = [v19 initWithURL:v21];

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v23 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      (*(v3 + 16))(v5, v23, v2);
      v24 = sub_2CDFE0();
      v25 = sub_2CE680();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "PlayMediaAlternativesViewProvider unsupported INImage.", v26, 2u);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return v16;
}

id sub_2B21DC(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 artwork];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2B1E98(v6);

    return v8;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v5, v10, v2);
    v11 = sub_2CDFE0();
    v12 = sub_2CE680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaAlternativesViewProvider empty artwork field.", v13, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_2B23BC(uint64_t a1)
{
  v1 = sub_2CE000();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2CB900();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_2CB8B0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_2CB8C0();
  sub_2CB8A0();
  v16 = *(v10 + 8);
  v16(v15, v9);
  v17 = v4;
  v18 = (*(v4 + 88))(v8, v3);
  if (v18 == enum case for PlaybackItem.Scheme.playlist(_:))
  {
    return 1;
  }

  if (v18 == enum case for PlaybackItem.Scheme.album(_:))
  {
    return 4;
  }

  if (v18 == enum case for PlaybackItem.Scheme.song(_:) || v18 == enum case for PlaybackItem.Scheme.podcastEpisode(_:))
  {
    return 0;
  }

  if (v18 == enum case for PlaybackItem.Scheme.artist(_:))
  {
    return 2;
  }

  if (v18 != enum case for PlaybackItem.Scheme.genre(_:))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v40;
    v36 = sub_3ED0(v40, static Logger.default);
    swift_beginAccess();
    (*(v39 + 16))(v38, v36, v21);

    v22 = sub_2CDFE0();
    v23 = sub_2CE660();

    LODWORD(v36) = v23;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = v24;
      v35 = swift_slowAlloc();
      v41 = v35;
      *v24 = 136446210;
      v34 = v22;
      sub_2CB8C0();
      v25 = v37;
      sub_2CB8A0();
      v16(v13, v9);
      v26 = sub_2CB8F0();
      v28 = v27;
      v29 = *(v17 + 8);
      v29(v25, v3);
      v30 = sub_3F08(v26, v28, &v41);

      v31 = v33;
      v32 = v34;
      *(v33 + 1) = v30;
      _os_log_impl(&dword_0, v32, v36, "PlayMediaAlternativesViewProvider#mediaEntityType Unknown scheme for SFMediaEntityType scheme: %{public}s. Returning .item", v31, 0xCu);
      sub_306C(v35);

      (*(v39 + 8))(v38, v40);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
      v29 = *(v17 + 8);
    }

    v29(v8, v3);
    return 0;
  }

  return 3;
}

id sub_2B28AC(uint64_t a1)
{
  v2 = sub_2CE000();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = __chkstk_darwin(v2);
  v93 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v92 = &v86 - v6;
  __chkstk_darwin(v5);
  v94 = &v86 - v7;
  v8 = sub_2CB8E0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v90 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v86 - v12;
  v14 = sub_2CB8B0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v86 - v19;
  v21 = [objc_allocWithZone(SFActionItem) init];
  sub_2CB8C0();
  sub_2CB880();
  v24 = *(v15 + 8);
  v23 = v15 + 8;
  v22 = v24;
  (v24)(v20, v14);
  v91 = v9;
  v25 = (*(v9 + 88))(v13, v8);
  if (v25 == enum case for PlaybackItem.ContentOrigin.device(_:))
  {
    sub_2CB8C0();
    sub_2CB870();
    (v22)(v18, v14);
    v26 = sub_2CE260();

    [v21 setPersistentID:v26];

    v27 = a1;
LABEL_3:
    [v21 setMediaEntityType:sub_2B23BC(v27)];
LABEL_4:
    [v21 setRequiresLocalMedia:1];
    return v21;
  }

  v88 = v21;
  v89 = v14;
  v95 = a1;
  if (v25 == enum case for PlaybackItem.ContentOrigin.sirisync(_:))
  {
    sub_2CB8C0();
    v29 = sub_2CB860();
    v31 = v30;
    v90 = v22;
    v87 = v23;
    (v22)(v18, v89);
    v32 = v96;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = v97;
    v34 = sub_3ED0(v97, static Logger.default);
    swift_beginAccess();
    v35 = *(v32 + 16);
    v36 = v94;
    v93 = v34;
    v91 = v35;
    (v35)(v94, v34, v33);

    v37 = sub_2CDFE0();
    v38 = sub_2CE690();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v98 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_3F08(v29, v31, &v98);
      _os_log_impl(&dword_0, v37, v38, "PlayMediaAlternativesViewProvider#makeActionItemForInternal trying to build SFActionItem for siriSyncID: %s", v39, 0xCu);
      sub_306C(v40);
      v33 = v97;
    }

    v94 = *(v32 + 8);
    (v94)(v36, v33);
    v41 = v18;
    v42 = [objc_opt_self() defaultMediaLibrary];
    v99._countAndFlagsBits = v29;
    v99._object = v31;
    v43 = sub_2CE6A0(v99);
    v45 = v44;

    v46 = v95;
    if ((v45 & 1) == 0)
    {
      v98 = v43;
      sub_2CEE70();
      v78 = sub_2CE260();

      v21 = v88;
      [v88 setPersistentID:v78];

      v27 = v46;
      goto LABEL_3;
    }

    v47 = v92;
    (v91)(v92, v93, v33);

    v48 = sub_2CDFE0();
    v49 = sub_2CE680();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v33;
      v51 = swift_slowAlloc();
      v52 = v47;
      v53 = swift_slowAlloc();
      v98 = v53;
      *v51 = 136315138;
      sub_2CB8C0();
      v54 = sub_2CB870();
      v56 = v55;
      v90(v41, v89);
      v57 = sub_3F08(v54, v56, &v98);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_0, v48, v49, "PlayMediaAlternativesViewProvider received nil persistentID when converting siriSyncID: %s", v51, 0xCu);
      sub_306C(v53);

      v58 = v52;
      v59 = v50;
    }

    else
    {

      v58 = v47;
      v59 = v33;
    }

    (v94)(v58, v59);
    return 0;
  }

  else
  {
    v60 = v89;
    v61 = v23;
    v62 = v18;
    if (v25 != enum case for PlaybackItem.ContentOrigin.multiverse(_:))
    {
      if (v25 == enum case for PlaybackItem.ContentOrigin.store(_:))
      {
        sub_20410(&unk_356F40, &unk_2D0740);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_2D0090;
        v80 = v22;
        sub_2CB8C0();
        v81 = sub_2CB870();
        v83 = v82;
        v80(v18, v60);
        *(v79 + 32) = v81;
        *(v79 + 40) = v83;
        isa = sub_2CE400().super.isa;

        v21 = v88;
        [v88 setStoreIdentifiers:isa];

        return v21;
      }

      if (v25 == enum case for PlaybackItem.ContentOrigin.ulid(_:))
      {
        sub_2CB8C0();
        sub_2CB870();
        (v22)(v18, v60);
        v85 = sub_2CE260();

        v21 = v88;
        [v88 setUniversalLibraryID:v85];

        goto LABEL_4;
      }

      if (v25 != enum case for PlaybackItem.ContentOrigin.spotlight(_:) && v25 != enum case for PlaybackItem.ContentOrigin.wholelibrary(_:) && v25 != enum case for PlaybackItem.ContentOrigin.unknown(_:))
      {
        v91[1](v13, v8);
      }
    }

    v87 = v61;
    v63 = v22;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v64 = v97;
    sub_3ED0(v97, static Logger.default);
    swift_beginAccess();
    v65 = v96;
    v66 = v93;
    (*(v96 + 16))();

    v67 = sub_2CDFE0();
    v68 = sub_2CE680();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      LODWORD(v94) = v68;
      v70 = v60;
      v71 = v69;
      v72 = swift_slowAlloc();
      v98 = v72;
      *v71 = 136315138;
      sub_2CB8C0();
      v73 = v90;
      sub_2CB880();
      v63(v62, v70);
      v74 = sub_2CB8D0();
      v76 = v75;
      v91[1](v73, v8);
      v77 = sub_3F08(v74, v76, &v98);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_0, v67, v94, "PlayMediaAlternativesViewProvider hasn't yet supported %s.", v71, 0xCu);
      sub_306C(v72);

      (*(v65 + 8))(v93, v97);
    }

    else
    {

      (*(v65 + 8))(v66, v64);
    }

    return 0;
  }
}

id sub_2B33AC()
{
  v0 = sub_2C8E80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAAppsLaunchApp) init];
  sub_2C8E70();
  sub_2C8E50();
  (*(v1 + 8))(v3, v0);
  v5 = sub_2CE260();

  [v4 setAceId:v5];

  sub_2CCF90();
  if (v6)
  {
    v7 = sub_2CE260();
  }

  else
  {
    v7 = 0;
  }

  [v4 setLaunchId:v7];

  return v4;
}

id sub_2B3528(uint64_t a1, uint64_t a2)
{
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_2C8E80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_2C8E70();
  sub_2C8E50();
  (*(v6 + 8))(v8, v5);
  v10 = sub_2CE260();

  [v9 setAceId:v10];

  sub_2C8D80();
  v11 = sub_2C8D90();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v4, 1, v11) != 1)
  {
    sub_2C8D50(v13);
    v14 = v15;
    (*(v12 + 8))(v4, v11);
  }

  [v9 setPunchOutUri:v14];

  return v9;
}

void *sub_2B3768(void *a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (swift_dynamicCast())
  {
    v8 = v18[1];
    sub_20410(&unk_351900, &unk_2D0960);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2D0770;
    *(v9 + 32) = a1;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v10 = a1;
    isa = sub_2CE400().super.isa;

    v12 = sub_2CE260();
    [v8 setValue:isa forKey:v12];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v13 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v7, v13, v4);
    v14 = sub_2CDFE0();
    v15 = sub_2CE680();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "PlayMediaAlternativesViewProvider failed to clone PlayMediaIntent.", v16, 2u);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v8;
}

id sub_2B3A30(void *a1)
{
  v2 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
  v3 = [a1 typeName];
  if (!v3)
  {
    sub_2CE270();
    v3 = sub_2CE260();
  }

  [v2 setTypeName:v3];

  v4 = [a1 backingStore];
  isa = [v4 data];

  if (isa)
  {
    v6 = sub_2C8DC0();
    v8 = v7;

    isa = sub_2C8DB0().super.isa;
    sub_52628(v6, v8);
  }

  [v2 setData:isa];

  return v2;
}

id sub_2B3B4C(void *a1)
{
  v2 = sub_2C8E80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SAIntentGroupHandleIntent) init];
  sub_2C8E70();
  sub_2C8E50();
  (*(v3 + 8))(v5, v2);
  v7 = sub_2CE260();

  [v6 setAceId:v7];

  v8 = sub_2B3A30(a1);
  [v6 setIntent:v8];

  return v6;
}

uint64_t sub_2B3CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_2CDFE0();
  v12 = sub_2CE670();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v7;
    v14 = v13;
    v22 = swift_slowAlloc();
    v24 = v22;
    v25 = a1;
    *v14 = 136315138;
    v26 = a2;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v15 = sub_2CE2A0();
    v17 = sub_3F08(v15, v16, &v24);
    v21 = v6;
    v18 = v17;

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "PlayMediaAlternativesViewProvider#makeArtistsLabel completed as %s", v14, 0xCu);
    sub_306C(v22);

    (*(v23 + 8))(v9, v21);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v25 = a1;
  v26 = a2;
  return a3(&v25);
}

uint64_t sub_2B3F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B3F74()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_2B4010(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_356F60, qword_2D4A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AddMediaViewProvider(uint64_t a1)
{
  result = qword_356FA0;
  if (!qword_356FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B40E8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v48 = sub_2CD5B0();
  v1 = *(v48 - 8);
  v2 = __chkstk_darwin(v48);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v43 - v4;
  v51 = sub_2CE000();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C9120();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CD540();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v43 - v15;
  v16 = sub_2C8F90();
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v5;
  v47 = v1;
  if (!v18)
  {
  }

  v19 = sub_2C9060();
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
  }

  sub_2C9050();
  sub_107D78(v54);
  (*(v8 + 8))(v10, v7);
  v22 = sub_2C9070();
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
  }

  v26 = v50;
  v25 = v51;
  v27 = v45;
  (*(v52 + 16))(v14, v54, v53);
  sub_2CD580();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  v29 = v49;
  (*(v49 + 16))(v26, v28, v25);
  v31 = v46;
  v30 = v47;
  v32 = *(v47 + 16);
  v33 = v27;
  v34 = v48;
  v32(v46, v33, v48);
  v35 = sub_2CDFE0();
  LODWORD(v45) = sub_2CE670();
  if (os_log_type_enabled(v35, v45))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v55 = v37;
    *v36 = 136315138;
    v32(v44, v31, v34);
    v38 = sub_2CE2A0();
    v40 = v39;
    (*(v30 + 8))(v31, v34);
    v41 = sub_3F08(v38, v40, &v55);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v35, v45, "AudioItem#toAudioMediaItem converted to %s", v36, 0xCu);
    sub_306C(v37);

    (*(v29 + 8))(v50, v51);
  }

  else
  {

    (*(v30 + 8))(v31, v34);
    (*(v29 + 8))(v26, v25);
  }

  return (*(v52 + 8))(v54, v53);
}

uint64_t sub_2B4684@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a1;
  v60 = a2;
  v65 = sub_2CE000();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2CB020();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v75 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20410(&qword_357060, qword_2D9260);
  v67 = *(v63 - 8);
  v5 = __chkstk_darwin(v63);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v66 = &v59 - v8;
  __chkstk_darwin(v7);
  v81 = &v59 - v9;
  v10 = sub_2CB030();
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CB040();
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v68 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CB060();
  v79 = *(v14 - 8);
  v80 = v14;
  __chkstk_darwin(v14);
  v82 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2C8E30();
  __chkstk_darwin(v16 - 8);
  v17 = sub_2C8F20();
  __chkstk_darwin(v17 - 8);
  v18 = sub_2CB070();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2C8F40();
  __chkstk_darwin(v22 - 8);
  v23 = sub_2C8EC0();
  v24 = __chkstk_darwin(v23 - 8);
  v25 = __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v74 = *v74;
  sub_2CB570();
  sub_2CB570();
  sub_2CB570();
  sub_2C8F30();
  (*(v19 + 104))(v21, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v18);
  sub_2C8EF0();
  sub_2C8E20();
  sub_2CB090();
  swift_allocObject();
  v26 = v75;
  v28 = v81;
  v27 = v82;
  sub_2CB080();
  (*(v69 + 104))(v68, enum case for DateTimeResolutionSpec.ExpandToType.range(_:), v70);
  (*(v72 + 104))(v71, enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.past(_:), v73);
  sub_90BB0(_swiftEmptyArrayStorage);
  sub_2CB050();
  sub_2CB010();
  v29 = v78;
  sub_2CB000();
  if (v29)
  {

    (*(v76 + 8))(v26, v77);
    return (*(v79 + 8))(v27, v80);
  }

  else
  {
    v31 = v65;
    (*(v76 + 8))(v26, v77);
    v33 = v66;
    v32 = v67;
    v34 = *(v67 + 16);
    v35 = v63;
    v34(v66, v28, v63);
    if ((*(v32 + 88))(v33, v35) == enum case for Recommendation.confident<A>(_:))
    {
      v36 = v67;
      (*(v67 + 96))(v33, v35);
      isa = sub_2CB0B0().super.isa;

      (*(v36 + 8))(v28, v35);
      result = (*(v79 + 8))(v82, v80);
      *v60 = isa;
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v38 = sub_3ED0(v31, static Logger.default);
      swift_beginAccess();
      v39 = v62;
      (*(v64 + 16))(v62, v38, v31);
      v40 = v61;
      v34(v61, v28, v35);
      v41 = v39;
      v42 = sub_2CDFE0();
      v43 = sub_2CE680();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v77 = v44;
        v78 = swift_slowAlloc();
        v83 = v78;
        *v44 = 136315138;
        sub_2B515C();
        v45 = sub_2CEE70();
        v46 = v35;
        v48 = v47;
        v49 = *(v67 + 8);
        v49(v40, v46);
        v50 = sub_3F08(v45, v48, &v83);
        v35 = v46;

        v51 = v77;
        *(v77 + 1) = v50;
        _os_log_impl(&dword_0, v42, v43, "Transformer#transformer DateTimeResolver returned unexpected recommendation: %s", v51, 0xCu);
        sub_306C(v78);

        (*(v64 + 8))(v62, v65);
      }

      else
      {

        v49 = *(v67 + 8);
        v49(v40, v35);
        (*(v64 + 8))(v41, v31);
      }

      v56 = v79;
      v55 = v80;
      sub_2B50FC(0, v52, v53, v54);
      sub_2B51FC(&qword_357070, &unk_2D9308, v57, v58);
      swift_allocError();
      swift_willThrow();

      v49(v81, v35);
      (*(v56 + 8))(v82, v55);
      return (v49)(v66, v35);
    }
  }

  return result;
}

void sub_2B50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_357068)
  {
    v4 = _s5ErrorOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_357068);
    }
  }
}

unint64_t sub_2B515C()
{
  result = qword_357078;
  if (!qword_357078)
  {
    sub_2DB30(&qword_357060, qword_2D9260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357078);
  }

  return result;
}

uint64_t sub_2B51FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2B50FC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShazamKitMatch.toRREntity()@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v1 - 8);
  v3 = v39 - v2;
  v45 = sub_2C8E80();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_350260, qword_2D3810);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - v11;
  v13 = sub_2CBE10();
  v15 = v14;
  sub_2B57DC(v13, v14);
  v16 = sub_2CAD20();
  if (v16)
  {
    v43 = v16;
    v44 = v13;
    v17 = sub_2CAC40();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = sub_2CAC00();
    sub_DF928(v12);
    v42 = v18;
    v40 = sub_2CAB50();
    v20 = v19;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v7;
    v22 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    v23 = v46;
    v24 = *(v46 + 16);
    v41 = v21;
    v24(v9, v22, v21);

    v25 = sub_2CDFE0();
    v26 = sub_2CE670();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39[0] = v9;
      v28 = v27;
      v29 = swift_slowAlloc();
      v39[1] = v15;
      v30 = v29;
      v48 = v29;
      *v28 = 136315138;
      v31 = v4;
      v32 = v3;
      v33 = sub_3F08(v40, v20, &v48);

      *(v28 + 4) = v33;
      v3 = v32;
      v4 = v31;
      _os_log_impl(&dword_0, v25, v26, "ShazamKitMatch#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v28, 0xCu);
      sub_306C(v30);

      (*(v46 + 8))(v39[0], v41);
    }

    else
    {

      (*(v23 + 8))(v9, v41);
    }

    sub_2C8E70();
    sub_2C8E50();
    (*(v4 + 8))(v6, v45);
    v36 = sub_2CE030();
    (*(*(v36 - 8) + 56))(v3, 1, 1, v36);
    v37 = v47;
    sub_2CE040();

    v38 = sub_2CE050();
    return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  else
  {
    v34 = sub_2CE050();
    (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  }
}

uint64_t sub_2B57DC(uint64_t a1, uint64_t a2)
{
  v12[0] = a1;
  v12[1] = a2;
  v3 = sub_2CAB40();
  v13 = *(v3 - 8);
  v14 = v3;
  __chkstk_darwin(v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CAE60();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CAF20();
  swift_allocObject();
  v10 = sub_2CAF10();
  if (v2[5])
  {
    sub_2CAF00();
    sub_2CAF80();
    swift_allocObject();
    sub_2CAF70();
    (*(v7 + 104))(v9, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Song(_:), v6);
    sub_2CAF60();
    (*(v7 + 8))(v9, v6);

    sub_2CAEF0();
  }

  if (v2[9])
  {
    swift_allocObject();
    sub_2CAF10();
    sub_2CAF00();
    sub_2CAF80();
    swift_allocObject();
    sub_2CAF70();
    (*(v7 + 104))(v9, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Artist(_:), v6);
    sub_2CAF60();
    (*(v7 + 8))(v9, v6);

    sub_2CAEF0();

    sub_2CAEE0();
  }

  if (v2[11])
  {

    sub_2CAB10();
    sub_2CAAD0();
    (*(v13 + 8))(v5, v14);
  }

  return v10;
}

uint64_t type metadata accessor for AudioNLv3Intent(uint64_t a1)
{
  result = qword_357218;
  if (!qword_357218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2B5BB8(uint64_t a1)
{
  sub_2CAFE0();
  if (v1 <= 0x3F)
  {
    sub_2B610C(319, &qword_357228, &type metadata accessor for Parse.ServerConversion, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_2B6028(319, &qword_357230, &type metadata for String, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_2B5FC4(319);
        if (v4 <= 0x3F)
        {
          sub_2B6028(319, &qword_34EE78, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_2B610C(319, &qword_357248, &type metadata accessor for UsoEntity_common_App, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              sub_2B610C(319, &qword_357250, &type metadata accessor for UsoEntity_common_DateTime, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_2B610C(319, &qword_34F670, &type metadata accessor for CommonAudio.Decade, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_2B610C(319, &qword_357258, &type metadata accessor for UsoEntity_common_MediaItem, &type metadata accessor for Array);
                  if (v9 <= 0x3F)
                  {
                    sub_2B6028(319, &qword_357260, &type metadata for Double, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_2B6078(319);
                      if (v11 <= 0x3F)
                      {
                        sub_2B610C(319, &qword_34F680, &type metadata accessor for CommonAudio.RadioType, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_2B610C(319, &unk_357270, &type metadata accessor for UsoEntity_common_MediaItem, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_2B610C(319, &qword_34F688, &type metadata accessor for CommonAudio.Sort, &type metadata accessor for Optional);
                            if (v14 <= 0x3F)
                            {
                              sub_2B610C(319, &qword_34F660, &type metadata accessor for CommonAudio.MediaType, &type metadata accessor for Optional);
                              if (v15 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_2B5FC4(uint64_t a1)
{
  if (!qword_357238)
  {
    sub_2DB30(&qword_357240, &qword_2D9388);
    v1 = sub_2CE470();
    if (!v2)
    {
      atomic_store(v1, &qword_357238);
    }
  }
}

void sub_2B6028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2B6078(uint64_t a1)
{
  if (!qword_357268)
  {
    sub_2CD4E0();
    sub_2BE04C(&qword_353140, &type metadata accessor for CommonAudio.Modifier, &protocol conformance descriptor for CommonAudio.Modifier);
    v1 = sub_2CE550();
    if (!v2)
    {
      atomic_store(v1, &qword_357268);
    }
  }
}

void sub_2B610C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2B6170@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_2CE000();
  v116 = *(v3 - 8);
  v117 = v3;
  v4 = __chkstk_darwin(v3);
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v109 = (&v98 - v7);
  __chkstk_darwin(v6);
  v110 = &v98 - v8;
  v9 = sub_2CAFE0();
  isa = v9[-1].isa;
  v10 = __chkstk_darwin(v9);
  v105 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v108 = (&v98 - v13);
  v14 = __chkstk_darwin(v12);
  v107 = &v98 - v15;
  __chkstk_darwin(v14);
  v115 = (&v98 - v16);
  v17 = sub_2CA870();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v99 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v102 = (&v98 - v22);
  __chkstk_darwin(v21);
  v24 = &v98 - v23;
  v25 = type metadata accessor for AudioNLv3Intent(0);
  v112 = *(v25 - 1);
  v26 = __chkstk_darwin(v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v26[5];
  *(v28 + v104) = 0;
  *(v28 + v26[6]) = _swiftEmptyArrayStorage;
  *(v28 + v26[7]) = _swiftEmptyArrayStorage;
  *(v28 + v26[8]) = _swiftEmptyArrayStorage;
  *(v28 + v26[9]) = _swiftEmptyArrayStorage;
  *(v28 + v26[10]) = _swiftEmptyArrayStorage;
  v29 = (v28 + v26[11]);
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v28 + v26[12]) = _swiftEmptyArrayStorage;
  *(v28 + v26[13]) = _swiftEmptyArrayStorage;
  *(v28 + v26[14]) = _swiftEmptyArrayStorage;
  *(v28 + v26[15]) = _swiftEmptyArrayStorage;
  *(v28 + v26[16]) = _swiftEmptyArrayStorage;
  *(v28 + v26[17]) = 0;
  v30 = v26[18];
  v31 = sub_2CD4D0();
  v32 = *(*(v31 - 8) + 56);
  v103 = v30;
  v32(&v30[v28], 1, 1, v31);
  *(v28 + v25[19]) = _swiftEmptyArrayStorage;
  *(v28 + v25[20]) = _swiftEmptyArrayStorage;
  v33 = (v28 + v25[21]);
  *v33 = 0;
  v33[8] = 1;
  *(v28 + v25[22]) = _swiftEmptyArrayStorage;
  *(v28 + v25[23]) = &_swiftEmptySetSingleton;
  *(v28 + v25[24]) = _swiftEmptyArrayStorage;
  *(v28 + v25[25]) = _swiftEmptyArrayStorage;
  *(v28 + v25[26]) = _swiftEmptyArrayStorage;
  *(v28 + v25[27]) = _swiftEmptyArrayStorage;
  v34 = v25[28];
  v35 = sub_2CD560();
  (*(*(v35 - 8) + 56))(&v34[v28], 1, 1, v35);
  *(v28 + v25[29]) = 0;
  *(v28 + v25[30]) = _swiftEmptyArrayStorage;
  v36 = a1;
  v37 = v25[31];
  v38 = sub_2CD4B0();
  v39 = *(*(v38 - 8) + 56);
  v101 = v37;
  v39(v28 + v37, 1, 1, v38);
  v40 = v25[32];
  v41 = sub_2CD540();
  v42 = *(*(v41 - 8) + 56);
  v100 = v40;
  v42(v28 + v40, 1, 1, v41);
  v43 = *(v18 + 16);
  v43(v24, v36, v17);
  v44 = (*(v18 + 88))(v24, v17);
  v111 = v36;
  v114 = v18;
  if (v44 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v18 + 96))(v24, v17);
    v108 = isa[4];
    v109 = isa + 4;
    v108(v115, v24, v9);
    v45 = v17;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v46 = v117;
    v47 = sub_3ED0(v117, static Logger.default);
    swift_beginAccess();
    v48 = v116;
    (*(v116 + 16))(v110, v47, v46);
    v49 = v107;
    (isa[2])(v107, v115, v9);
    v50 = sub_2CDFE0();
    v51 = sub_2CE670();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v106 = v45;
      v53 = v52;
      v54 = swift_slowAlloc();
      v119 = v54;
      *v53 = 136315138;
      sub_2BE04C(&qword_34D678, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v55 = sub_2CEE70();
      v57 = v56;
      (isa[1])(v49, v9);
      v58 = sub_3F08(v55, v57, &v119);
      v59 = v9;
      v60 = v58;

      *(v53 + 4) = v60;
      _os_log_impl(&dword_0, v50, v51, "AudioNLv3Intent#init unpacking AudioNLv3Intent from NLv3IntentOnly: %s", v53, 0xCu);
      sub_306C(v54);

      (*(v114 + 8))(v111, v106);
      (*(v116 + 8))(v110, v117);
      v61 = v59;
    }

    else
    {

      (*(v114 + 8))(v111, v45);
      (isa[1])(v49, v9);
      (*(v48 + 8))(v110, v46);
      v61 = v9;
    }

    v108(v28, v115, v61);
LABEL_19:
    v96 = v113;
    sub_11C8D4(v28, v113);
    (*(v112 + 56))(v96, 0, 1, v25);
    return sub_FED50(v28);
  }

  v110 = v34;
  v62 = isa;
  v115 = v9;
  if (v44 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v63 = *(v114 + 96);
    v106 = v17;
    v63(v24, v17);
    v110 = *&v24[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v64 = v62;
    v65 = (v62 + 4);
    v66 = v62[4];
    v67 = v108;
    v68 = v24;
    v69 = v115;
    v107 = v65;
    v103 = v66;
    v66(v108, v68, v115);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v70 = v117;
    v71 = sub_3ED0(v117, static Logger.default);
    swift_beginAccess();
    v72 = v116;
    (*(v116 + 16))(v109, v71, v70);
    v73 = v105;
    (v64[2])(v105, v67, v69);
    v74 = sub_2CDFE0();
    v75 = sub_2CE670();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v119 = v102;
      *v76 = 136315138;
      sub_2BE04C(&qword_34D678, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v77 = sub_2CEE70();
      v78 = v72;
      v80 = v79;
      (v64[1])(v73, v115);
      v81 = sub_3F08(v77, v80, &v119);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_0, v74, v75, "AudioNLv3Intent#init unpacking AudioNLv3Intent from NLv3IntentPlusServerConversion: %s", v76, 0xCu);
      sub_306C(v102);

      v69 = v115;

      (*(v114 + 8))(v111, v106);
      (*(v78 + 8))(v109, v117);
    }

    else
    {

      (*(v114 + 8))(v111, v106);
      (v64[1])(v73, v69);
      (*(v72 + 8))(v109, v70);
    }

    v103(v28, v108, v69);
    *(v28 + v104) = v110;
    goto LABEL_19;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v82 = v117;
  v83 = sub_3ED0(v117, static Logger.default);
  swift_beginAccess();
  v84 = v106;
  (*(v116 + 16))(v106, v83, v82);
  v85 = v102;
  v43(v102, v36, v17);
  v86 = sub_2CDFE0();
  v87 = sub_2CE680();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v115 = v86;
    v89 = v88;
    isa = swift_slowAlloc();
    v119 = isa;
    *v89 = 136315138;
    LODWORD(v109) = v87;
    v43(v99, v85, v17);
    v108 = sub_2CE2A0();
    v91 = v90;
    v92 = *(v114 + 8);
    v92(v85, v17);
    v93 = sub_3F08(v108, v91, &v119);

    v94 = v89;
    *(v89 + 4) = v93;
    v95 = v115;
    _os_log_impl(&dword_0, v115, v109, "AudioNLv3Intent#init Unsupported parse while creating AudioNLv3Intent: %s", v94, 0xCu);
    sub_306C(isa);

    v92(v111, v17);
    (*(v116 + 8))(v106, v117);
  }

  else
  {

    v92 = *(v114 + 8);
    v92(v111, v17);
    v92(v85, v17);
    (*(v116 + 8))(v84, v117);
  }

  v92(v24, v17);
  sub_30B8(v103 + v28, &qword_34D718, &unk_2D15F0);
  sub_30B8(&v110[v28], &qword_34D6A0, &unk_2D3490);
  sub_30B8(v28 + v101, &qword_34D6C8, &unk_2D15C0);
  sub_30B8(v28 + v100, &qword_34D6D0, qword_2D34A0);
  return (*(v112 + 56))(v113, 1, 1, v25);
}

BOOL sub_2B7010()
{
  v57 = sub_2CD540();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51[0] = v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  __chkstk_darwin(v54);
  v3 = v51 - v2;
  v4 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v5 = __chkstk_darwin(v4 - 8);
  v52 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v60 = v51 - v8;
  __chkstk_darwin(v7);
  v61 = v51 - v9;
  v10 = sub_2CD4C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  __chkstk_darwin(v13);
  v15 = v51 - v14;
  v16 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v17 = __chkstk_darwin(v16 - 8);
  v58 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v51 - v20;
  __chkstk_darwin(v19);
  v23 = v51 - v22;
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AudioNLv3Intent(0);
  v51[1] = sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  v51[2] = v24;
  v59 = v0;
  sub_2CACA0();
  v25 = (v11 + 56);
  v56 = v3;
  if (v64 == 11)
  {
    v26 = *v25;
    (*v25)(v23, 1, 1, v10);
  }

  else
  {
    sub_DEB38(v64, v23);
    v26 = *v25;
    (*v25)(v23, 0, 1, v10);
  }

  (*(v11 + 104))(v21, enum case for CommonAudio.Verb.shuffle(_:), v10);
  v26(v21, 0, 1, v10);
  v27 = *(v13 + 48);
  sub_F3F4(v23, v15, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v21, &v15[v27], &qword_34D6B8, &qword_2D15B0);
  v28 = *(v11 + 48);
  if (v28(v15, 1, v10) == 1)
  {
    sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v23, &qword_34D6B8, &qword_2D15B0);
    if (v28(&v15[v27], 1, v10) == 1)
    {
      sub_30B8(v15, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_13;
    }

LABEL_11:
    v30 = &qword_34D6B0;
    v31 = &unk_2D4FC0;
    v32 = v15;
LABEL_19:
    sub_30B8(v32, v30, v31);
    return 0;
  }

  v29 = v58;
  sub_F3F4(v15, v58, &qword_34D6B8, &qword_2D15B0);
  if (v28(&v15[v27], 1, v10) == 1)
  {
    sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v23, &qword_34D6B8, &qword_2D15B0);
    (*(v11 + 8))(v29, v10);
    goto LABEL_11;
  }

  v33 = v53;
  (*(v11 + 32))(v53, &v15[v27], v10);
  sub_2BE04C(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v34 = v29;
  v35 = sub_2CE250();
  v36 = *(v11 + 8);
  v36(v33, v10);
  sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v23, &qword_34D6B8, &qword_2D15B0);
  v36(v34, v10);
  sub_30B8(v15, &qword_34D6B8, &qword_2D15B0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v37 = v61;
  sub_2B84C8(v61);
  v38 = v55;
  v39 = v60;
  v40 = v57;
  (*(v55 + 104))(v60, enum case for CommonAudio.MediaType.music(_:), v57);
  (*(v38 + 56))(v39, 0, 1, v40);
  v41 = *(v54 + 48);
  v42 = v56;
  sub_F3F4(v37, v56, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v39, v42 + v41, &qword_34D6D0, qword_2D34A0);
  v43 = *(v38 + 48);
  if (v43(v42, 1, v40) == 1)
  {
    sub_30B8(v39, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v37, &qword_34D6D0, qword_2D34A0);
    if (v43(v42 + v41, 1, v40) == 1)
    {
      sub_30B8(v42, &qword_34D6D0, qword_2D34A0);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v44 = v52;
  sub_F3F4(v42, v52, &qword_34D6D0, qword_2D34A0);
  if (v43(v42 + v41, 1, v40) == 1)
  {
    sub_30B8(v60, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v61, &qword_34D6D0, qword_2D34A0);
    (*(v38 + 8))(v44, v40);
LABEL_18:
    v30 = &qword_34D6A8;
    v31 = &unk_2D15A0;
    v32 = v42;
    goto LABEL_19;
  }

  v46 = v42 + v41;
  v47 = v51[0];
  (*(v38 + 32))(v51[0], v46, v40);
  sub_2BE04C(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v48 = sub_2CE250();
  v49 = *(v38 + 8);
  v49(v47, v40);
  sub_30B8(v60, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v61, &qword_34D6D0, qword_2D34A0);
  v49(v44, v40);
  sub_30B8(v42, &qword_34D6D0, qword_2D34A0);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (qword_34C088 != -1)
  {
    swift_once();
  }

  sub_2CACA0();
  if (v63 != 1)
  {
    return 0;
  }

  v50 = *(sub_2B9984() + 2);

  if (v50)
  {
    return 0;
  }

  if (qword_34C0D0 != -1)
  {
    swift_once();
  }

  sub_2CACA0();
  return v62 == 4;
}

uint64_t sub_2B7A00@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v5 == 11)
  {
    v2 = sub_2CD4C0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_DEB38(v5, a1);
    v4 = sub_2CD4C0();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_2B7B44()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  if (!*(v0 + *(type metadata accessor for AudioNLv3Intent(0) + 20)))
  {
    goto LABEL_19;
  }

  v8 = sub_2CA830();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9 || (v10 = [v9 privatePlayMediaIntentData]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "audioSearchResults"), v11, !v12))
  {

LABEL_19:
    if (qword_34BF58 != -1)
    {
LABEL_29:
      swift_once();
    }

    v20 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v5, v20, v1);
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "AudioNLv3Intent called for non INPlayMediaIntent. Returning newsPodcastTopicId=nil", v23, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  sub_736BC();
  v13 = sub_2CE410();

  v35 = v7;
  v36 = v8;
  if (!(v13 >> 62))
  {
    v5 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_31:

    v28 = v36;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v30 = v35;
    (*(v2 + 16))(v35, v29, v1);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "AudioNLv3Intent had no relevant topicId. Returning newsPodcastTopicId=nil", v33, 2u);
    }

    (*(v2 + 8))(v30, v1);
    return 0;
  }

  v5 = sub_2CEDA0();
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_7:
  v14 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = sub_2CECD0();
    }

    else
    {
      if (v14 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v15 = *(v13 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = [v15 type];
    v19 = vdupq_n_s64(v18);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_330968, v19), vceqq_s64(unk_330978, v19)), vuzp1q_s32(vceqq_s64(xmmword_330988, v19), vceqq_s64(unk_330998, v19))))) & 1) != 0 || v18 == (&dword_4 + 1) || v18 == &dword_10)
    {
      break;
    }

    ++v14;
    if (v17 == v5)
    {
      goto LABEL_31;
    }
  }

  v25 = [v16 identifier];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2CE270();

    return v27;
  }

  return 0;
}

uint64_t sub_2B8018()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  if (!*(v0 + *(type metadata accessor for AudioNLv3Intent(0) + 20)))
  {
    goto LABEL_18;
  }

  v8 = sub_2CA830();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9 || (v10 = [v9 privatePlayMediaIntentData]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "audioSearchResults"), v11, !v12))
  {

LABEL_18:
    if (qword_34BF58 != -1)
    {
LABEL_28:
      swift_once();
    }

    v20 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v5, v20, v1);
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "AudioNLv3Intent called for non INPlayMediaIntent. Returning newsPodcastIdentifier=nil", v23, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  sub_736BC();
  v13 = sub_2CE410();

  v35 = v7;
  v36 = v8;
  if (!(v13 >> 62))
  {
    v5 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_30:

    v28 = v36;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v30 = v35;
    (*(v2 + 16))(v35, v29, v1);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "AudioNLv3Intent had no relevant podcastId. Returning newsPodcastIdentifier=nil", v33, 2u);
    }

    (*(v2 + 8))(v30, v1);
    return 0;
  }

  v5 = sub_2CEDA0();
  if (!v5)
  {
    goto LABEL_30;
  }

LABEL_7:
  v14 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = sub_2CECD0();
    }

    else
    {
      if (v14 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_27;
      }

      v15 = *(v13 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v18 = [v15 type];
    v19 = vdupq_n_s64(v18);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_3309D8, v19), vceqq_s64(unk_3309E8, v19)))) & 1) != 0 || v18 == &dword_14)
    {
      break;
    }

    ++v14;
    if (v17 == v5)
    {
      goto LABEL_30;
    }
  }

  v25 = [v16 identifier];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2CE270();

    return v27;
  }

  return 0;
}

uint64_t sub_2B84C8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_2CD540();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  if (qword_34C090 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v16 != 25)
  {
    sub_22B830(v16, v6);
    v10 = *(v3 + 32);
    v10(v8, v6, v2);
    v10(a1, v8, v2);
LABEL_14:
    v9 = 0;
    return (*(v3 + 56))(a1, v9, 1, v2);
  }

  if (qword_34C0B8 != -1)
  {
    swift_once();
  }

  sub_2CACA0();
  if (v15 == 14)
  {
    goto LABEL_7;
  }

  if (sub_720B4(v15) == 0x747369747261 && v11 == 0xE600000000000000)
  {

LABEL_13:
    (*(v3 + 104))(a1, enum case for CommonAudio.MediaType.artist(_:), v2);
    goto LABEL_14;
  }

  v12 = sub_2CEEA0();

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = 1;
  return (*(v3 + 56))(a1, v9, 1, v2);
}

uint64_t sub_2B8780()
{
  sub_20410(&qword_357328, &qword_2D9630);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357108 = result;
  return result;
}

uint64_t sub_2B87F0()
{
  sub_20410(&qword_357338, &qword_2D9638);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357110 = result;
  return result;
}

uint64_t sub_2B8860()
{
  sub_20410(&qword_357348, &qword_2D9640);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357118 = result;
  return result;
}

uint64_t sub_2B88C8()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357120 = result;
  return result;
}

uint64_t sub_2B892C()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357128 = result;
  return result;
}

uint64_t sub_2B8998()
{
  sub_20410(&qword_357368, &qword_2D9650);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357130 = result;
  return result;
}

uint64_t sub_2B8A00()
{
  sub_20410(&qword_357378, &qword_2D9658);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357138 = result;
  return result;
}

uint64_t sub_2B8A68()
{
  sub_20410(&qword_357388, &qword_2D9660);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357140 = result;
  return result;
}

uint64_t sub_2B8AD0()
{
  sub_20410(&qword_357398, &qword_2D9668);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357148 = result;
  return result;
}

uint64_t sub_2B8B38()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357150 = result;
  return result;
}

uint64_t sub_2B8BA8()
{
  sub_20410(&qword_3573A8, &qword_2D9670);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357158 = result;
  return result;
}

uint64_t sub_2B8C10()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357160 = result;
  return result;
}

uint64_t sub_2B8C78()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357168 = result;
  return result;
}

uint64_t sub_2B8CE0()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357170 = result;
  return result;
}

uint64_t sub_2B8D48()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357178 = result;
  return result;
}

uint64_t sub_2B8DB0()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357180 = result;
  return result;
}

uint64_t sub_2B8E18()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357188 = result;
  return result;
}

uint64_t sub_2B8E80()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357190 = result;
  return result;
}

uint64_t sub_2B8EE8()
{
  sub_20410(&qword_3573B8, &qword_2D9678);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357198 = result;
  return result;
}

uint64_t sub_2B8F50()
{
  sub_20410(&qword_357358, &qword_2D9648);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_3571A0 = result;
  return result;
}

uint64_t sub_2B8FB8()
{
  sub_20410(&qword_3573C8, &qword_2D9680);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_3571A8 = result;
  return result;
}

uint64_t sub_2B9020()
{
  sub_20410(&qword_3573D8, &unk_2D9688);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_3571B0 = result;
  return result;
}

uint64_t sub_2B9088()
{
  sub_20410(&qword_357320, &qword_2D9628);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2D9350;
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  v1 = qword_357108;
  *(v0 + 56) = sub_20410(&qword_357328, &qword_2D9630);
  *(v0 + 64) = sub_2BC6CC(&qword_357330, &qword_357328, &qword_2D9630);
  *(v0 + 32) = v1;
  v2 = qword_34C088;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_357110;
  *(v0 + 96) = sub_20410(&qword_357338, &qword_2D9638);
  *(v0 + 104) = sub_2BC6CC(&qword_357340, &qword_357338, &qword_2D9638);
  *(v0 + 72) = v3;
  v4 = qword_34C090;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_357118;
  *(v0 + 136) = sub_20410(&qword_357348, &qword_2D9640);
  *(v0 + 144) = sub_2BC6CC(&qword_357350, &qword_357348, &qword_2D9640);
  *(v0 + 112) = v5;
  v6 = qword_34C0A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_357128;
  v8 = sub_20410(&qword_357358, &qword_2D9648);
  *(v0 + 176) = v8;
  v9 = sub_2BC6CC(&qword_357360, &qword_357358, &qword_2D9648);
  *(v0 + 184) = v9;
  *(v0 + 152) = v7;
  v10 = qword_34C0A8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_357130;
  *(v0 + 216) = sub_20410(&qword_357368, &qword_2D9650);
  *(v0 + 224) = sub_2BC6CC(&qword_357370, &qword_357368, &qword_2D9650);
  *(v0 + 192) = v11;
  v12 = qword_34C0B0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_357138;
  *(v0 + 256) = sub_20410(&qword_357378, &qword_2D9658);
  *(v0 + 264) = sub_2BC6CC(&qword_357380, &qword_357378, &qword_2D9658);
  *(v0 + 232) = v13;
  v14 = qword_34C0B8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_357140;
  *(v0 + 296) = sub_20410(&qword_357388, &qword_2D9660);
  *(v0 + 304) = sub_2BC6CC(&qword_357390, &qword_357388, &qword_2D9660);
  *(v0 + 272) = v15;
  v16 = qword_34C0C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_357148;
  *(v0 + 336) = sub_20410(&qword_357398, &qword_2D9668);
  *(v0 + 344) = sub_2BC6CC(&qword_3573A0, &qword_357398, &qword_2D9668);
  *(v0 + 312) = v17;
  v18 = qword_34C0C8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_357150;
  *(v0 + 376) = v8;
  *(v0 + 384) = v9;
  *(v0 + 352) = v19;
  v20 = qword_34C0D0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_357158;
  *(v0 + 416) = sub_20410(&qword_3573A8, &qword_2D9670);
  *(v0 + 424) = sub_2BC6CC(&qword_3573B0, &qword_3573A8, &qword_2D9670);
  *(v0 + 392) = v21;
  v22 = qword_34C118;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_3571A0;
  *(v0 + 456) = v8;
  *(v0 + 464) = v9;
  *(v0 + 432) = v23;
  v24 = qword_34C0D8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_357160;
  *(v0 + 496) = v8;
  *(v0 + 504) = v9;
  *(v0 + 472) = v25;
  v26 = qword_34C0E0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_357168;
  *(v0 + 536) = v8;
  *(v0 + 544) = v9;
  *(v0 + 512) = v27;
  v28 = qword_34C0E8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_357170;
  *(v0 + 576) = v8;
  *(v0 + 584) = v9;
  *(v0 + 552) = v29;
  v30 = qword_34C0F0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_357178;
  *(v0 + 616) = v8;
  *(v0 + 624) = v9;
  *(v0 + 592) = v31;
  v32 = qword_34C0F8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_357180;
  *(v0 + 656) = v8;
  *(v0 + 664) = v9;
  *(v0 + 632) = v33;
  v34 = qword_34C100;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_357188;
  *(v0 + 696) = v8;
  *(v0 + 704) = v9;
  *(v0 + 672) = v35;
  v36 = qword_34C108;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_357190;
  *(v0 + 736) = v8;
  *(v0 + 744) = v9;
  *(v0 + 712) = v37;
  v38 = qword_34C110;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_357198;
  *(v0 + 776) = sub_20410(&qword_3573B8, &qword_2D9678);
  *(v0 + 784) = sub_2BC6CC(&qword_3573C0, &qword_3573B8, &qword_2D9678);
  *(v0 + 752) = v39;
  v40 = qword_34C120;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_3571A8;
  *(v0 + 816) = sub_20410(&qword_3573C8, &qword_2D9680);
  *(v0 + 824) = sub_2BC6CC(&qword_3573D0, &qword_3573C8, &qword_2D9680);
  *(v0 + 792) = v41;
  v42 = qword_34C128;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_3571B0;
  *(v0 + 856) = sub_20410(&qword_3573D8, &unk_2D9688);
  *(v0 + 864) = sub_2BC6CC(&qword_3573E0, &qword_3573D8, &unk_2D9688);
  *(v0 + 832) = v43;
  sub_2CAAB0();
  swift_allocObject();

  result = sub_2CAAA0();
  qword_3571B8 = result;
  return result;
}

void *sub_2B9984()
{
  if (qword_34C0A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v6 == 8)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v1 = sub_2CD500();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2D0090;
  (*(v2 + 104))(v4 + v3, **(&off_33E1B0 + v6), v1);
  v5 = sub_2BDE18(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_2B9B5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C0C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v8 <= 1u)
  {
    if (v8)
    {
      v2 = &enum case for CommonAudio.Confirmation.no(_:);
    }

    else
    {
      v2 = &enum case for CommonAudio.Confirmation.yes(_:);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v2 = &enum case for CommonAudio.Confirmation.cancel(_:);
    goto LABEL_11;
  }

  if (v8 == 3)
  {
    v2 = &enum case for CommonAudio.Confirmation.moreInfo(_:);
LABEL_11:
    v3 = *v2;
    v4 = sub_2CD490();
    v5 = *(v4 - 8);
    (*(v5 + 104))(a1, v3, v4);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  v7 = sub_2CD490();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

void *sub_2B9D38()
{
  v1 = sub_20410(&qword_34DA20, &qword_2D1900);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_2CDD00();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v39 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  if (*(v0 + *(type metadata accessor for AudioNLv3Intent(0) + 20)))
  {
    v16 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v39 = v16;
      v17 = sub_2CE800();
      v16 = v39;
      if (v17)
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v18 = sub_3ED0(v10, static Logger.default);
        swift_beginAccess();
        (*(v11 + 16))(v15, v18, v10);
        v19 = sub_2CDFE0();
        v20 = sub_2CE690();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_0, v19, v20, "Found AirPlayRequest internal setting", v21, 2u);
        }

        (*(v11 + 8))(v15, v10);
        sub_20410(&qword_3573F0, &qword_2D9698);
        v22 = sub_2CD9B0();
        v23 = *(v22 - 8);
        v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2D0090;
        (*(v23 + 104))(v25 + v24, enum case for UsoMediaSettingName.airplay(_:), v22);

        return v25;
      }
    }
  }

  if (qword_34C120 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_30B8(v3, &qword_34DA20, &qword_2D1900);
    return _swiftEmptyArrayStorage;
  }

  v27 = v41;
  (*(v5 + 32))(v41, v3, v4);
  (*(v5 + 104))(v8, enum case for DeviceType.airplaySpeaker(_:), v4);
  sub_2BE04C(&qword_3573E8, &type metadata accessor for DeviceType, &protocol conformance descriptor for DeviceType);
  sub_2CE3E0();
  sub_2CE3E0();
  if (v42 == v44 && v43 == v45)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_2CEEA0();
  }

  v29 = *(v5 + 8);
  v29(v8, v4);

  if ((v28 & 1) == 0)
  {
    v29(v27, v4);
    return _swiftEmptyArrayStorage;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v31 = v40;
  (*(v11 + 16))(v40, v30, v10);
  v32 = sub_2CDFE0();
  v33 = sub_2CE660();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Got .airplaySpeaker as device type. Using as audioSettingName instead", v34, 2u);
  }

  (*(v11 + 8))(v31, v10);
  sub_20410(&qword_3573F0, &qword_2D9698);
  v35 = sub_2CD9B0();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2D0090;
  (*(v36 + 104))(v38 + v37, enum case for UsoMediaSettingName.airplay(_:), v35);
  v29(v27, v4);
  return v38;
}

uint64_t sub_2BA4F8()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AudioNLv3Intent(0) + 20)))
  {
    v5 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = sub_2CE730();

      return v6 & 1;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v1, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v4, v8, v1);
  v9 = sub_2CDFE0();
  v10 = sub_2CE680();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "AudioNLv3Intent called for non INPlayMediaIntent. Returning appInferred=true", v11, 2u);
  }

  (*(v2 + 8))(v4, v1);
  return 1;
}

char *sub_2BA6F8()
{
  v0 = sub_20410(&qword_3573F8, &qword_2D96A8);
  __chkstk_darwin(v0 - 8);
  v58 = v49 - v1;
  v2 = sub_20410(&qword_357400, &unk_2D96B0);
  __chkstk_darwin(v2 - 8);
  v63 = v49 - v3;
  v4 = sub_2CDD20();
  v68 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v56 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v49 - v7;
  v9 = sub_20410(&qword_34D668, &qword_2D1540);
  v10 = __chkstk_darwin(v9 - 8);
  v65 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v49 - v12;
  v14 = sub_20410(&qword_357408, &qword_2D96C0);
  __chkstk_darwin(v14 - 8);
  v74 = v49 - v15;
  v75 = sub_2CDD50();
  v64 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2CABF0();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_357410, &qword_2D96C8);
  __chkstk_darwin(v19 - 8);
  v21 = v49 - v20;
  v22 = sub_2CAC70();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v57 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34C108 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CAC90();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_30B8(v21, &qword_357410, &qword_2D96C8);
    return _swiftEmptyArrayStorage;
  }

  v61 = v4;
  (*(v23 + 32))(v57, v21, v22);
  v26 = sub_2CAC60();
  v27 = *(v26 + 16);
  if (v27)
  {
    v50 = v23;
    v51 = v22;
    v71 = *(v73 + 16);
    v28 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v49[1] = v26;
    v29 = v26 + v28;
    v70 = (v73 + 8);
    v59 = (v68 + 6);
    v55 = (v68 + 4);
    v73 += 16;
    v69 = *(v73 + 56);
    v52 = (v68 + 2);
    v54 = (v68 + 1);
    v62 = enum case for TerminalElement.Value.string(_:);
    v30 = v65;
    v67 = (v64 + 48);
    v68 = (v64 + 56);
    v66 = (v64 + 32);
    v25 = _swiftEmptyArrayStorage;
    v31 = v76;
    v60 = v13;
    v71(v18, v26 + v28, v76);
    while (1)
    {
      sub_2CABE0();
      v32 = sub_2CABD0();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v13, 1, v32) == 1)
      {
        (*v70)(v18, v31);
        v34 = 1;
        goto LABEL_21;
      }

      sub_F3F4(v13, v30, &qword_34D668, &qword_2D1540);
      v35 = (*(v33 + 88))(v30, v32);
      if (v35 != v62)
      {
        (*v70)(v18, v76);
        (*(v33 + 8))(v30, v32);
        v34 = 1;
        goto LABEL_21;
      }

      (*(v33 + 96))(v30, v32);
      v36 = v63;
      sub_2CDD10();
      v37 = v61;
      if ((*v59)(v36, 1, v61) == 1)
      {
        (*v70)(v18, v76);
        sub_30B8(v63, &qword_357400, &unk_2D96B0);
      }

      else
      {
        (*v55)(v8, v63, v37);
        v38 = v58;
        sub_2CABC0();
        v39 = sub_2CABA0();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v38, 1, v39) != 1)
        {
          sub_2CAB90();
          v53 = v41;
          (*(v40 + 8))(v38, v39);
          (*v52)(v56, v8, v37);
          sub_2CDD30();
          (*v54)(v8, v37);
          (*v70)(v18, v76);
          v34 = 0;
          goto LABEL_20;
        }

        sub_30B8(v38, &qword_3573F8, &qword_2D96A8);
        (*v54)(v8, v37);
        (*v70)(v18, v76);
      }

      v34 = 1;
LABEL_20:
      v30 = v65;
      v13 = v60;
LABEL_21:
      v42 = v74;
      v43 = v75;
      (*v68)(v74, v34, 1, v75);
      sub_30B8(v13, &qword_34D668, &qword_2D1540);
      if ((*v67)(v42, 1, v43) == 1)
      {
        sub_30B8(v42, &qword_357408, &qword_2D96C0);
      }

      else
      {
        v44 = v43;
        v45 = *v66;
        (*v66)(v72, v42, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_B9220(0, *(v25 + 2) + 1, 1, v25);
        }

        v47 = *(v25 + 2);
        v46 = *(v25 + 3);
        if (v47 >= v46 >> 1)
        {
          v25 = sub_B9220((v46 > 1), v47 + 1, 1, v25);
        }

        *(v25 + 2) = v47 + 1;
        v45(&v25[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v47], v72, v75);
        v30 = v65;
      }

      v29 += v69;
      --v27;
      v31 = v76;
      if (!v27)
      {

        v22 = v51;
        v23 = v50;
        goto LABEL_29;
      }

      v71(v18, v29, v76);
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_29:
  (*(v23 + 8))(v57, v22);
  return v25;
}

uint64_t sub_2BB1A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2CE000();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_34DA20, &qword_2D1900);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2CDD00();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  if (qword_34C120 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_30B8(v6, &qword_34DA20, &qword_2D1900);
  }

  else
  {
    v27 = v2;
    v28 = a1;
    v14 = *(v8 + 32);
    v14(v13, v6, v7);
    (*(v8 + 104))(v11, enum case for DeviceType.airplaySpeaker(_:), v7);
    sub_2BE04C(&qword_3573E8, &type metadata accessor for DeviceType, &protocol conformance descriptor for DeviceType);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v31 == v33 && v32 == v34)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_2CEEA0();
    }

    v26 = *(v8 + 8);
    v26(v11, v7);

    if ((v15 & 1) == 0)
    {
      v24 = v28;
      v14(v28, v13, v7);
      a1 = v24;
      v23 = 0;
      return (*(v8 + 56))(a1, v23, 1, v7);
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v16 = v27;
    v17 = sub_3ED0(v27, static Logger.default);
    swift_beginAccess();
    v18 = v29;
    (*(v29 + 16))(v30, v17, v16);
    v19 = sub_2CDFE0();
    v20 = sub_2CE660();
    v21 = os_log_type_enabled(v19, v20);
    a1 = v28;
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v19, v20, "Got .airplaySpeaker as device type. Ignoring since it needs to be treated as a setting name instead", v22, 2u);
    }

    (*(v18 + 8))(v30, v16);
    v26(v13, v7);
  }

  v23 = 1;
  return (*(v8 + 56))(a1, v23, 1, v7);
}

uint64_t sub_2BB698@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C0B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent(0);
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v9 == 2)
  {
    v2 = sub_2CDF80();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  if (v9)
  {
  }

  else
  {
    v4 = sub_2CEEA0();

    if ((v4 & 1) == 0)
    {

      v5 = &enum case for Reference.the(_:);
      goto LABEL_10;
    }
  }

  v5 = &enum case for Reference.one(_:);
LABEL_10:
  v6 = *v5;
  v7 = sub_2CDF80();
  v8 = *(v7 - 8);
  (*(v8 + 104))(a1, v6, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_2BB890@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2CAFE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2BB8F8()
{
  if (qword_34C130 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2BB990(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_2BBB18@<X0>(uint64_t a2@<X8>)
{
  if (qword_34C088 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v8)
  {
    v3 = sub_2CD4A0();
    return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  }

  else
  {
    v5 = enum case for CommonAudio.Noun.library(_:);
    v6 = sub_2CD4A0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a2, v5, v6);
    return (*(v7 + 56))(a2, 0, 1, v6);
  }
}

void *sub_2BBCD4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_20410(&unk_356F40, &unk_2D0740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = v9;
  v6 = inited + 32;
  *(inited + 40) = v10;
  v7 = sub_2AC4C(inited);
  swift_setDeallocating();
  sub_F1954(v6);
  return v7;
}

uint64_t sub_2BBE34@<X0>(uint64_t a2@<X8>)
{
  if (qword_34C0B0 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v8 == 2)
  {
    v3 = sub_2CD570();
    return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  }

  else
  {
    v5 = enum case for CommonAudio.Reference.definite(_:);
    v6 = sub_2CD570();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a2, v5, v6);
    return (*(v7 + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_2BC01C@<X0>(uint64_t a2@<X8>)
{
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  if (v6 == 11)
  {
    v3 = sub_2CD4C0();
    return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  }

  else
  {
    sub_DEB38(v6, a2);
    v5 = sub_2CD4C0();
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_2BC1A8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  sub_2CACA0();
  return v6;
}

uint64_t sub_2BC270(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;
  v7 = sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);

  return IntentNodeTraversable.values<A>(forNode:)(v6, a1, v7);
}

void *sub_2BC3F0(uint64_t a1, void x1_0, void *a2)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);

  return sub_2CACA0();
}

uint64_t sub_2BC49C(uint64_t a1)
{
  v2 = sub_2BE04C(&qword_357318, type metadata accessor for AudioNLv3Intent, &unk_2D95B8);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_2BC518(uint64_t a1)
{
  v2 = sub_2BE04C(&qword_357318, type metadata accessor for AudioNLv3Intent, &unk_2D95B8);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_2BC584(uint64_t a1)
{
  v2 = sub_2BE04C(&qword_357318, type metadata accessor for AudioNLv3Intent, &unk_2D95B8);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_2BC6CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2BC720(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2CD500();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
  v33 = a2;
  v11 = sub_2CE220();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2BE04C(&qword_353158, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
      v21 = sub_2CE250();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2BD10C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2BCA00(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2CEF50();
  sub_2CE310();
  v8 = sub_2CEF80();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2CEEA0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2BD3B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2BCB50(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2CD500();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_20410(&qword_353160, &qword_2D96A0);
  result = sub_2CEC80();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
      result = sub_2CE220();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2BCEAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20410(&qword_357418, &qword_2D96D0);
  result = sub_2CEC80();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2BD10C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2CD500();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2BCB50(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2BD530();
      goto LABEL_12;
    }

    sub_2BD8C4(v10 + 1);
  }

  v12 = *v3;
  sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
  v13 = sub_2CE220();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2BE04C(&qword_353158, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
      v21 = sub_2CE250();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2CEED0();
  __break(1u);
  return result;
}

uint64_t sub_2BD3B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2BCEAC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2BD768();
      goto LABEL_16;
    }

    sub_2BDBE0(v8 + 1);
  }

  v10 = *v4;
  sub_2CEF50();
  sub_2CE310();
  result = sub_2CEF80();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2CEEA0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2CEED0();
  __break(1u);
  return result;
}

void *sub_2BD530()
{
  v1 = v0;
  v2 = sub_2CD500();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_353160, &qword_2D96A0);
  v6 = *v0;
  v7 = sub_2CEC70();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2BD768()
{
  v1 = v0;
  sub_20410(&qword_357418, &qword_2D96D0);
  v2 = *v0;
  v3 = sub_2CEC70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_2BD8C4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2CD500();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_20410(&qword_353160, &qword_2D96A0);
  v7 = sub_2CEC80();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
      result = sub_2CE220();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2BDBE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20410(&qword_357418, &qword_2D96D0);
  result = sub_2CEC80();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2CEF50();

      sub_2CE310();
      result = sub_2CEF80();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2BDE18(uint64_t a1)
{
  v2 = sub_2CD500();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
  result = sub_2CE540();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_2BC720(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_2BDFB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2CE540();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2BCA00(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2BE04C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2BE0BC()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_357420 = v8;
  return result;
}

uint64_t sub_2BE254(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = *(a2 + 136);

  sub_1B4918(a3, a4, a5, v15, sub_2C5C40, v14, a7);
}

uint64_t sub_2BE324(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a2;
  v60 = sub_2CE000();
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v61 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = __chkstk_darwin(v61);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v58 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v20 = swift_projectBox();
  sub_F3F4(a1, v9, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_30B8(v9, &unk_3519A0, &qword_2D0980);
    return (v64)(v21);
  }

  v57 = v20;
  sub_14A58(v9, v19, &qword_34C6E8, &unk_2D0FF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = v60;
  v23 = sub_3ED0(v60, static Logger.default);
  swift_beginAccess();
  v24 = v62;
  (*(v62 + 16))(v6, v23, v22);
  sub_F3F4(v19, v17, &qword_34C6E8, &unk_2D0FF0);
  v25 = sub_2CDFE0();
  v26 = sub_2CE670();
  v27 = &off_349000;
  if (!os_log_type_enabled(v25, v26))
  {

    sub_30B8(v17, &qword_34C6E8, &unk_2D0FF0);
    (*(v24 + 8))(v6, v22);
    goto LABEL_16;
  }

  v23 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v65[0] = v56;
  *v23 = 138412546;
  sub_F3F4(v17, v14, &qword_34C6E8, &unk_2D0FF0);
  v28 = *(v14 + *(v61 + 48));
  v29 = [v28 dialog];

  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v30 = sub_2CE410();

  if (v30 >> 62)
  {
    result = sub_2CEDA0();
    v27 = &off_349000;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:

    v41 = sub_2CA130();
    (*(*(v41 - 8) + 8))(v14, v41);
    sub_30B8(v17, &qword_34C6E8, &unk_2D0FF0);
    v40 = 0;
    goto LABEL_15;
  }

  result = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
  v27 = &off_349000;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v30 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return result;
  }

  for (i = *(v30 + 32); ; i = sub_2CECD0())
  {
    v33 = i;

    v34 = [v33 fullPrint];

    v35 = sub_2CE270();
    v37 = v36;

    sub_10C40();
    swift_allocError();
    *v38 = v35;
    v38[1] = v37;
    v39 = sub_2CA130();
    (*(*(v39 - 8) + 8))(v14, v39);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    sub_30B8(v17, &qword_34C6E8, &unk_2D0FF0);
    v22 = v60;
    v27 = &off_349000;
LABEL_15:
    *(v23 + 4) = v40;
    v17 = v55;
    *v55 = v40;
    *(v23 + 12) = 2082;
    v42 = sub_2CCCA0();
    v44 = sub_3F08(v42, v43, v65);

    *(v23 + 14) = v44;
    _os_log_impl(&dword_0, v25, v26, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel conversationSpace dialog: %@ %{public}s", v23, 0x16u);
    sub_30B8(v17, &unk_34FC00, &unk_2D0150);

    sub_306C(v56);

    (*(v62 + 8))(v6, v22);
LABEL_16:
    v45 = v59;
    sub_F3F4(v19, v59, &qword_34C6E8, &unk_2D0FF0);
    v46 = *(v45 + *(v61 + 48));
    v6 = [v46 v27[473]];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v14 = sub_2CE410();

    v25 = v57;
    if (v14 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_23;
    }

LABEL_18:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v47 = sub_2CECD0();
      goto LABEL_21;
    }

    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      v47 = *(v14 + 32);
LABEL_21:
      v48 = v47;

      v49 = [v48 fullPrint];

      v50 = sub_2CE270();
      v52 = v51;

      sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
      goto LABEL_24;
    }

    __break(1u);
LABEL_28:
    ;
  }

  if (sub_2CEDA0())
  {
    goto LABEL_18;
  }

LABEL_23:
  sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);

  v50 = 0;
  v52 = 0;
LABEL_24:
  v53 = sub_2CA130();
  (*(*(v53 - 8) + 8))(v45, v53);
  swift_beginAccess();
  v54 = (v25 + *(v58 + 20));
  *v54 = v50;
  v54[1] = v52;

  return (v64)(v21);
}

uint64_t sub_2BEB3C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  sub_35E0((a2 + 184), *(a2 + 208));
  v10 = swift_allocObject();
  v10[2] = sub_2C5228;
  v10[3] = v9;
  v10[4] = a4;

  sub_204218(a3, sub_2C5250, v10);
}

uint64_t sub_2BEC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(__n128), uint64_t a4, uint64_t a5)
{
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v34 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v30 = v13;
    v32 = a4;
    v33 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v17 = 138412546;
    v31 = a1;
    if (a2)
    {
      sub_10C40();
      swift_allocError();
      *v19 = a1;
      v19[1] = a2;

      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 4) = v20;
    *v18 = v21;
    *(v17 + 12) = 2082;
    v22 = sub_2CCCA0();
    v24 = sub_3F08(v22, v23, v35);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel acquired UI sessionID: %@, %{public}s", v17, 0x16u);
    sub_30B8(v18, &unk_34FC00, &unk_2D0150);

    sub_306C(v29);

    (*(v10 + 8))(v12, v9);
    a3 = v33;
    v13 = v30;
    a1 = v31;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v25 = v34;
  swift_beginAccess();
  v26 = (v25 + *(v13 + 28));
  *v26 = a1;
  v26[1] = a2;

  return (a3)(v27);
}

uint64_t sub_2BEF74(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void *a4, void (*a5)(uint64_t), void *a6)
{
  v10 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_352960, &qword_2D5110);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = (v17 + *(v11 + 36));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18 & 0xFFFFFFFFFFFFLL;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v21 = v20;
    }

    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  sub_2C1DB0(a3, a4, v22, v16);
  swift_beginAccess();
  sub_2C51B8(v16, v17);
  swift_beginAccess();
  sub_2C59C0(v17, v13, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  sub_2BF140(v13, a3, a4, a5, a6);
  return sub_2C5A28(v13, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
}

uint64_t sub_2BF140(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), void *a5)
{
  v105 = a2;
  v108 = a4;
  v104 = a3;
  v95 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v95);
  v96 = &v84 - v7;
  v8 = type metadata accessor for SnippetModelResponse(0);
  v94 = *(v8 - 1);
  v9 = __chkstk_darwin(v8);
  v87 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v84 - v12;
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  v15 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v16 = __chkstk_darwin(v15 - 8);
  v99 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v98 = &v84 - v18;
  v92 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v101 = *(v92 - 8);
  v19 = __chkstk_darwin(v92);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v20;
  __chkstk_darwin(v19);
  v103 = &v84 - v22;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v97 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v84 - v27;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  v30 = *(v24 + 16);
  v90 = v29;
  v89 = v24 + 16;
  v88 = v30;
  v30(v28, v29, v23);
  v31 = sub_2CDFE0();
  v32 = sub_2CE670();
  v33 = os_log_type_enabled(v31, v32);
  v100 = v24;
  v107 = v23;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v85 = a1;
    v35 = v34;
    v36 = swift_slowAlloc();
    v86 = v21;
    v37 = v36;
    v109 = v36;
    *v35 = 136446210;
    v38 = sub_2CCCA0();
    v40 = v14;
    v41 = v8;
    v42 = a5;
    v43 = sub_3F08(v38, v39, &v109);

    *(v35 + 4) = v43;
    a5 = v42;
    v8 = v41;
    v14 = v40;
    _os_log_impl(&dword_0, v31, v32, "PlayMediaIOSSnippetModelProvider#buildMediaPlayerSnippetModel... %{public}s", v35, 0xCu);
    sub_306C(v37);
    v21 = v86;

    a1 = v85;

    v91 = *(v100 + 8);
    v91(v28, v107);
  }

  else
  {

    v91 = *(v24 + 8);
    v91(v28, v23);
  }

  v44 = v103;
  sub_2C59C0(a1, v103, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  sub_2C59C0(v44, v21, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  v45 = (*(v101 + 80) + 40) & ~*(v101 + 80);
  v46 = (v102 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v105;
  v49 = v106;
  v47[2] = v106;
  v47[3] = v48;
  v50 = v104;
  v47[4] = v104;
  v51 = v47 + v45;
  v52 = v48;
  sub_2C58A4(v44, v51);
  v53 = (v47 + v46);
  *v53 = v108;
  v53[1] = a5;

  v54 = v50;

  v55 = [v54 hashedRouteUIDs];
  if (v55)
  {
    v56 = v55;
    sub_2CE410();

    sub_2C5A28(v21, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
    sub_35E0(v49 + 28, *(v49 + 31));
    v57 = swift_allocObject();
    *(v57 + 16) = sub_2C5908;
    *(v57 + 24) = v47;

    sub_2CDE00();
  }

  else
  {
    v104 = a5;
    v59 = sub_2C01D4(v52, v54);
    v60 = v98;
    sub_2C15E8(v21, 0, 0xE000000000000000, v59, v61, v98);

    sub_2C0700(v21, v99);
    v62 = sub_2CD230();
    (*(*(v62 - 8) + 56))(v14, 1, 1, v62);
    sub_F3F4(v60, &v14[v8[5]], &unk_3530C0, &unk_2D0A40);
    v63 = &v21[*(v92 + 28)];
    v64 = *v63;
    v65 = *(v63 + 1);
    v66 = &v14[v8[6]];
    *v66 = v64;
    *(v66 + 1) = v65;
    *&v14[v8[7]] = 0;
    v67 = v97;
    v68 = v107;
    v88(v97, v90, v107);
    v69 = v93;
    sub_2C59C0(v14, v93, type metadata accessor for SnippetModelResponse);

    v70 = sub_2CDFE0();
    v71 = sub_2CE660();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v69;
      v73 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v14;
      v109 = v105;
      *v73 = 136315394;
      LODWORD(v103) = v71;
      sub_2C59C0(v72, v87, type metadata accessor for SnippetModelResponse);
      v74 = sub_2CE2A0();
      v76 = v75;
      sub_2C5A28(v72, type metadata accessor for SnippetModelResponse);
      v77 = sub_3F08(v74, v76, &v109);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2082;
      v78 = sub_2CCCA0();
      v80 = sub_3F08(v78, v79, &v109);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_0, v70, v103, "PlayMediaIOSSnippetModelProvider#buildMediaPlayerSnippetModel returning response: %s, %{public}s", v73, 0x16u);
      swift_arrayDestroy();
      v14 = v106;

      v81 = v97;
      v82 = v107;
    }

    else
    {

      sub_2C5A28(v69, type metadata accessor for SnippetModelResponse);
      v81 = v67;
      v82 = v68;
    }

    v91(v81, v82);
    v83 = v96;
    sub_2C59C0(v14, v96, type metadata accessor for SnippetModelResponse);
    (*(v94 + 56))(v83, 0, 1, v8);
    swift_storeEnumTagMultiPayload();
    v108(v83);
    sub_30B8(v83, &qword_34EE00, &qword_2D8ED0);
    sub_2C5A28(v14, type metadata accessor for SnippetModelResponse);
    sub_30B8(v99, &unk_3530C0, &unk_2D0A40);
    sub_30B8(v98, &unk_3530C0, &unk_2D0A40);

    return sub_2C5A28(v21, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  }
}

uint64_t sub_2BFBA8(char *a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v57 = a5;
  v59 = a1;
  v60 = a2;
  v64 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v64);
  v11 = &v54 - v10;
  v12 = sub_2CE000();
  v65 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SnippetModelResponse(0);
  v61 = *(v15 - 1);
  v16 = __chkstk_darwin(v15);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v58 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v54 - v26;
  v28 = sub_2C01D4(a4, v57);
  sub_2C15E8(a6, v59, v60, v28, v29, v27);

  v60 = v25;
  sub_2C0700(a6, v25);
  v30 = sub_2CD230();
  (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
  v31 = &v21[v15[5]];
  v59 = v27;
  sub_F3F4(v27, v31, &unk_3530C0, &unk_2D0A40);
  v32 = (a6 + *(type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0) + 28));
  v34 = *v32;
  v33 = v32[1];
  v35 = &v21[v15[6]];
  *v35 = v34;
  *(v35 + 1) = v33;
  *&v21[v15[7]] = 0;
  v36 = qword_34BF58;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v38 = v65;
  (*(v65 + 16))(v14, v37, v12);
  v39 = v58;
  sub_2C59C0(v21, v58, type metadata accessor for SnippetModelResponse);
  v40 = sub_2CDFE0();
  v41 = sub_2CE660();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v54 = v14;
    v55 = v12;
    v43 = v42;
    v66 = swift_slowAlloc();
    *v43 = 136315394;
    sub_2C59C0(v39, v56, type metadata accessor for SnippetModelResponse);
    v44 = sub_2CE2A0();
    v45 = v39;
    v46 = v44;
    v57 = v11;
    v48 = v47;
    sub_2C5A28(v45, type metadata accessor for SnippetModelResponse);
    v49 = sub_3F08(v46, v48, &v66);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2082;
    v50 = sub_2CCCA0();
    v52 = sub_3F08(v50, v51, &v66);

    *(v43 + 14) = v52;
    v11 = v57;
    _os_log_impl(&dword_0, v40, v41, "PlayMediaIOSSnippetModelProvider#buildMediaPlayerSnippetModel returning response: %s, %{public}s", v43, 0x16u);
    swift_arrayDestroy();

    (*(v65 + 8))(v54, v55);
  }

  else
  {

    sub_2C5A28(v39, type metadata accessor for SnippetModelResponse);
    (*(v38 + 8))(v14, v12);
  }

  sub_2C59C0(v21, v11, type metadata accessor for SnippetModelResponse);
  (*(v61 + 56))(v11, 0, 1, v15);
  swift_storeEnumTagMultiPayload();
  v63(v11);
  sub_30B8(v11, &qword_34EE00, &qword_2D8ED0);
  sub_2C5A28(v21, type metadata accessor for SnippetModelResponse);
  sub_30B8(v60, &unk_3530C0, &unk_2D0A40);
  return sub_30B8(v59, &unk_3530C0, &unk_2D0A40);
}

void *sub_2C01D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = sub_2CCF90();
  v12 = v11;
  v13 = sub_2CBE40();
  if (!v12)
  {

    goto LABEL_9;
  }

  if (v10 == v13 && v12 == v14)
  {

    goto LABEL_7;
  }

  v15 = sub_2CEEA0();

  if ((v15 & 1) == 0)
  {
LABEL_9:
    v18 = sub_2C32E4();
    v20 = v19;
    if (v18 == sub_2CBE10() && v20 == v21)
    {

      goto LABEL_13;
    }

    v22 = v18;
    v23 = sub_2CEEA0();

    if (v23)
    {
LABEL_13:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v24 = sub_3ED0(v3, static Logger.default);
      swift_beginAccess();
      (*(v4 + 16))(v9, v24, v3);
      v25 = sub_2CDFE0();
      v26 = sub_2CE670();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v28;
        *v27 = 136446210;
        v29 = sub_2CCCA0();
        v31 = sub_3F08(v29, v30, &v43);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_0, v25, v26, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system media application identifier for apple music. %{public}s", v27, 0xCu);
        sub_306C(v28);
      }

      result = (*(v4 + 8))(v9, v3);
      v32 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
      if (!kMRMediaRemoteSystemMediaApplicationDisplayIdentifier)
      {
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    if (v18 == sub_2CBE30() && v20 == v34)
    {
    }

    else
    {
      v35 = sub_2CEEA0();

      if ((v35 & 1) == 0)
      {
        return v22;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v7, v36, v3);
    v37 = sub_2CDFE0();
    v38 = sub_2CE670();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v39 = 136446210;
      v40 = sub_2CCCA0();
      v42 = sub_3F08(v40, v41, &v43);

      *(v39 + 4) = v42;
      _os_log_impl(&dword_0, v37, v38, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system podcast application identifier for apple podcast. %{public}s", v39, 0xCu);
      sub_306C(v22);
    }

    (*(v4 + 8))(v7, v3);
    v32 = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
    if (kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier)
    {
LABEL_18:
      v33 = v32;

      return sub_2CE290(v33);
    }

    __break(1u);
    return v22;
  }

LABEL_7:
  sub_35E0((v2 + 144), *(v2 + 168));
  result = sub_2CC520();
  if (!v17)
  {
    return sub_2CBDE0();
  }

  return result;
}

uint64_t sub_2C0700@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v69 = a1;
  v72 = a2;
  v2 = sub_20410(&qword_357568, &unk_2D9788);
  __chkstk_darwin(v2 - 8);
  v71 = &v61 - v3;
  v4 = sub_2CD240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v65 = &v61 - v14;
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v18 = *(v9 + 16);
  v67 = v9 + 16;
  v68 = v17;
  v66 = v18;
  v18(v16, v17, v8);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v63 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v64 = v8;
    v24 = v23;
    v73 = v23;
    *v22 = 136446210;
    v25 = sub_2CCCA0();
    v62 = v12;
    v27 = sub_3F08(v25, v26, &v73);
    v12 = v62;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v19, v20, "PlayMediaIOSSnippetModelProvider#conversationSpace... %{public}s", v22, 0xCu);
    sub_306C(v24);
    v8 = v64;

    v9 = v63;
  }

  v28 = *(v9 + 8);
  v28(v16, v8);
  v29 = v71;
  sub_2C0DFC(v69, v71);
  if ((*(v5 + 48))(v29, 1, v4) == 1)
  {
    sub_30B8(v29, &qword_357568, &unk_2D9788);
    v66(v12, v68, v8);
    v30 = sub_2CDFE0();
    v31 = sub_2CE670();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v12;
      v34 = v8;
      v35 = swift_slowAlloc();
      v73 = v35;
      *v32 = 136446210;
      v36 = sub_2CCCA0();
      v38 = sub_3F08(v36, v37, &v73);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "PlayMediaIOSSnippetModelProvider#conversationSpace returning no snippet. %{public}s", v32, 0xCu);
      sub_306C(v35);

      v28(v33, v34);
    }

    else
    {

      v28(v12, v8);
    }

    v55 = sub_2CD230();
    return (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  }

  else
  {
    v70 = v28;
    v41 = *(v5 + 32);
    v40 = v5 + 32;
    v39 = v41;
    v41(v7, v29, v4);
    v42 = v65;
    v66(v65, v68, v8);
    v43 = sub_2CDFE0();
    v44 = sub_2CE670();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = v8;
      v47 = v46;
      v73 = v46;
      *v45 = 136446210;
      v48 = sub_2CCCA0();
      v71 = v40;
      v50 = v7;
      v51 = v4;
      v52 = sub_3F08(v48, v49, &v73);

      *(v45 + 4) = v52;
      v4 = v51;
      v7 = v50;
      _os_log_impl(&dword_0, v43, v44, "PlayMediaIOSSnippetModelProvider#conversationSpace returning a simple message snippet. %{public}s", v45, 0xCu);
      sub_306C(v47);

      v54 = v64;
      v53 = v65;
    }

    else
    {

      v53 = v42;
      v54 = v8;
    }

    v70(v53, v54);
    v57 = v72;
    v39(v72, v7, v4);
    v58 = enum case for SiriAudioSnippets.simpleText(_:);
    v59 = sub_2CD230();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v57, v58, v59);
    return (*(v60 + 56))(v57, 0, 1, v59);
  }
}

uint64_t sub_2C0DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v69 = sub_20410(&qword_357568, &unk_2D9788);
  v3 = __chkstk_darwin(v69);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v70 = &v66 - v6;
  __chkstk_darwin(v5);
  v72 = &v66 - v7;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v66 - v14;
  v16 = __chkstk_darwin(v13);
  v71 = &v66 - v17;
  __chkstk_darwin(v16);
  v19 = &v66 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v21 = *(v9 + 16);
  v74 = v9 + 16;
  v75 = v20;
  v73 = v21;
  v21(v19, v20, v8);
  v22 = sub_2CDFE0();
  v23 = sub_2CE670();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v67 = v8;
    v25 = v24;
    v26 = swift_slowAlloc();
    v78 = v26;
    *v25 = 136446210;
    v27 = sub_2CCCA0();
    v66 = a1;
    v29 = sub_3F08(v27, v28, &v78);
    a1 = v66;

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog... %{public}s", v25, 0xCu);
    sub_306C(v26);

    v8 = v67;
  }

  v30 = *(v9 + 8);
  v30(v19, v8);
  sub_35E0((v76 + 144), *(v76 + 168));
  if ((sub_2CC430() & 1) == 0)
  {
    v73(v12, v75, v8);
    v49 = sub_2CDFE0();
    v50 = sub_2CE670();
    if (!os_log_type_enabled(v49, v50))
    {

      v56 = v12;
LABEL_19:
      v30(v56, v8);
      v65 = sub_2CD240();
      return (*(*(v65 - 8) + 56))(v77, 1, 1, v65);
    }

    v15 = v12;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v78 = v52;
    *v51 = 136446210;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v78);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_0, v49, v50, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog pym not enabled, returning nil for simple snippet dialog %{public}s", v51, 0xCu);
    sub_306C(v52);

LABEL_18:
    v56 = v15;
    goto LABEL_19;
  }

  if (!*(a1 + *(type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0) + 20) + 8))
  {
    v73(v15, v75, v8);
    v57 = sub_2CDFE0();
    v58 = sub_2CE670();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v78 = v60;
      *v59 = 136446210;
      v61 = sub_2CCCA0();
      v63 = sub_3F08(v61, v62, &v78);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v57, v58, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog there are no text for conversation snippet. %{public}s", v59, 0xCu);
      sub_306C(v60);
    }

    goto LABEL_18;
  }

  v31 = v72;
  sub_2CD250();
  v32 = v71;
  v73(v71, v75, v8);
  v33 = v70;
  sub_F3F4(v31, v70, &qword_357568, &unk_2D9788);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v36 = 136315394;
    v76 = v9;
    sub_F3F4(v33, v68, &qword_357568, &unk_2D9788);
    v37 = sub_2CE2A0();
    v38 = v33;
    v39 = v37;
    v40 = v8;
    v42 = v41;
    sub_30B8(v38, &qword_357568, &unk_2D9788);
    v43 = sub_3F08(v39, v42, &v78);

    *(v36 + 4) = v43;
    *(v36 + 12) = 2082;
    v44 = sub_2CCCA0();
    v46 = sub_3F08(v44, v45, &v78);

    *(v36 + 14) = v46;
    _os_log_impl(&dword_0, v34, v35, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog returning model:  %s %{public}s", v36, 0x16u);
    swift_arrayDestroy();

    v47 = v71;
    v48 = v40;
  }

  else
  {

    sub_30B8(v33, &qword_357568, &unk_2D9788);
    v47 = v32;
    v48 = v8;
  }

  v30(v47, v48);
  return sub_14A58(v72, v77, &qword_357568, &unk_2D9788);
}

uint64_t sub_2C15E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a4;
  v67 = a5;
  v74 = a2;
  v75 = a3;
  v78 = a6;
  v7 = sub_20410(&qword_352960, &qword_2D5110);
  __chkstk_darwin(v7 - 8);
  v9 = &v64 - v8;
  v77 = sub_2CD290();
  v10 = *(v77 - 8);
  v11 = __chkstk_darwin(v77);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - v14;
  __chkstk_darwin(v13);
  v81 = &v64 - v16;
  v17 = sub_20410(&qword_352968, &qword_2D9780);
  v18 = __chkstk_darwin(v17 - 8);
  v73 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v80 = &v64 - v20;
  v82 = sub_2CE000();
  v21 = *(v82 - 8);
  v22 = __chkstk_darwin(v82);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v64 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = v82;
  v28 = sub_3ED0(v82, static Logger.default);
  swift_beginAccess();
  v29 = *(v21 + 16);
  v70 = v21 + 16;
  v71 = v28;
  v69 = v29;
  v29(v26, v28, v27);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  v32 = os_log_type_enabled(v30, v31);
  v79 = v21;
  v76 = v24;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v65 = v10;
    v35 = v34;
    v83 = v34;
    *v33 = 136446210;
    v36 = sub_2CCCA0();
    v64 = v9;
    v38 = sub_3F08(v36, v37, &v83);
    v39 = v82;
    v9 = v64;

    *(v33 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "PlayMediaIOSSnippetModelProvider#snippetSpace building snippet model response... %{public}s", v33, 0xCu);
    sub_306C(v35);
    v10 = v65;

    v24 = v76;

    v72 = *(v79 + 8);
    v72(v26, v39);
  }

  else
  {

    v72 = *(v21 + 8);
    v72(v26, v82);
  }

  v40 = sub_2C566C(v74, v75);
  v41 = v80;
  if (v40)
  {

    sub_2CD340();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = sub_2CD350();
  (*(*(v43 - 8) + 56))(v41, v42, 1, v43);
  sub_F3F4(v41, v73, &qword_352968, &qword_2D9780);
  sub_F3F4(a1, v9, &qword_352960, &qword_2D5110);
  v44 = v81;
  sub_2CD280();
  v69(v24, v71, v82);
  v45 = *(v10 + 16);
  v46 = v77;
  v45(v15, v44, v77);
  v47 = v10;
  v48 = sub_2CDFE0();
  v49 = sub_2CE670();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v50 = 136315394;
    v45(v68, v15, v46);
    v51 = sub_2CE2A0();
    v53 = v52;
    (*(v47 + 8))(v15, v46);
    v54 = sub_3F08(v51, v53, &v83);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    v55 = sub_2CCCA0();
    v57 = sub_3F08(v55, v56, &v83);

    *(v50 + 14) = v57;
    _os_log_impl(&dword_0, v48, v49, "PlayMediaIOSSnippetModelProvider#snippetSpace building mediaPlayer snippet with model:  %s %{public}s", v50, 0x16u);
    swift_arrayDestroy();

    v72(v76, v82);
    v58 = v80;
  }

  else
  {

    (*(v47 + 8))(v15, v46);
    v72(v24, v82);
    v58 = v41;
  }

  sub_30B8(v58, &qword_352968, &qword_2D9780);
  v59 = v78;
  (*(v47 + 32))(v78, v81, v46);
  v60 = enum case for SiriAudioSnippets.mediaPlayer(_:);
  v61 = sub_2CD230();
  v62 = *(v61 - 8);
  (*(v62 + 104))(v59, v60, v61);
  return (*(v62 + 56))(v59, 0, 1, v61);
}

double sub_2C1DB0@<D0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v67 = a3;
  v68 = a1;
  v69 = a4;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v64 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v64 - v16;
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = sub_1D2364(&off_330F60);
  sub_F1954(&_s11descr32D959OMF.Kind);
  if ((v20 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a2, &off_330F90))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    v22 = v8;
    (*(v8 + 16))(v11, v21, v7);
    v23 = sub_2CDFE0();
    v24 = sub_2CE670();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v70 = v26;
      *v25 = 136446210;
      v27 = sub_2CCCA0();
      v29 = sub_3F08(v27, v28, &v70);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel won't build alternatives for story telling. %{public}s", v25, 0xCu);
      sub_306C(v26);
    }

    (*(v22 + 8))(v11, v7);
LABEL_8:
    v30 = sub_2CD270();
    (*(*(v30 - 8) + 56))(v69, 1, 1, v30);
    return result;
  }

  v32 = [a2 hashedRouteUIDs];
  if (v32)
  {
    v33 = v32;
    v34 = sub_2CE410();

    v35 = *(v34 + 16);

    if (v35)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v36 = sub_3ED0(v7, static Logger.default);
      swift_beginAccess();
      (*(v8 + 16))(v14, v36, v7);
      v37 = sub_2CDFE0();
      v38 = sub_2CE670();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v70 = v40;
        *v39 = 136446210;
        v41 = sub_2CCCA0();
        v43 = sub_3F08(v41, v42, &v70);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_0, v37, v38, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel won't build alternatives for whole house audio requests. hashedRouteUIDs present.  %{public}s", v39, 0xCu);
        sub_306C(v40);
      }

      (*(v8 + 8))(v14, v7);
      goto LABEL_8;
    }
  }

  v44 = [a2 mediaItems];
  if (!v44)
  {
LABEL_26:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v56 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v17, v56, v7);
    v57 = sub_2CDFE0();
    v58 = sub_2CE670();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v59 = 136446210;
      v61 = sub_2CCCA0();
      v63 = sub_3F08(v61, v62, &v70);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v57, v58, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel won't return an AceView because nil or empty mediaItems.  %{public}s", v59, 0xCu);
      sub_306C(v60);
    }

    (*(v8 + 8))(v17, v7);
    goto LABEL_8;
  }

  v45 = v44;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v46 = sub_2CE410();

  if (v46 >> 62)
  {
    if (sub_2CEDA0())
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (!*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_19:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v47 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v48 = v8;
  (*(v8 + 16))(v19, v47, v7);
  v49 = sub_2CDFE0();
  v50 = sub_2CE670();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v65 = v51;
    v66 = swift_slowAlloc();
    v70 = v66;
    *v51 = 136446210;
    v52 = sub_2CCCA0();
    v54 = sub_3F08(v52, v53, &v70);

    v55 = v65;
    *(v65 + 1) = v54;
    _os_log_impl(&dword_0, v49, v50, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel building alternative section...  %{public}s", v55, 0xCu);
    sub_306C(v66);
  }

  (*(v48 + 8))(v19, v7);
  sub_35E0((v5 + 16), *(v5 + 40));
  sub_220BC4(v46, v68, a2, v67 & 1, v69);

  return result;
}

uint64_t sub_2C259C()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  sub_306C(v0 + 18);
  sub_306C(v0 + 23);
  sub_306C(v0 + 28);

  return swift_deallocClassInstance();
}

uint64_t sub_2C2680(void *a1, void *a2)
{
  v100 = a2;
  v105 = a1;
  v2 = sub_2CB260();
  v3 = *(v2 - 8);
  v109 = v2;
  v110 = v3;
  __chkstk_darwin(v2);
  v101 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_357560, &qword_2D9778);
  __chkstk_darwin(v5);
  v7 = &v93 - v6;
  v8 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v9 = __chkstk_darwin(v8 - 8);
  v104 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v93 - v12;
  __chkstk_darwin(v11);
  v15 = &v93 - v14;
  v16 = sub_2CE000();
  v111 = *(v16 - 8);
  v112 = v16;
  v17 = __chkstk_darwin(v16);
  v103 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v102 = &v93 - v20;
  v21 = __chkstk_darwin(v19);
  v99 = &v93 - v22;
  v23 = __chkstk_darwin(v21);
  v98 = &v93 - v24;
  v25 = __chkstk_darwin(v23);
  v97 = &v93 - v26;
  __chkstk_darwin(v25);
  v28 = &v93 - v27;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = v112;
  v30 = sub_3ED0(v112, static Logger.default);
  swift_beginAccess();
  v31 = *(v111 + 16);
  v107 = v111 + 16;
  v108 = v30;
  v106 = v31;
  v31(v28, v30, v29);
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v114 = v35;
    *v34 = 136446210;
    v36 = sub_2CCCA0();
    v96 = v7;
    v94 = v5;
    v37 = v15;
    v95 = v13;
    v39 = sub_3F08(v36, v38, &v114);
    v40 = v111;
    v41 = v112;
    v7 = v96;

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v32, v33, "PlayMediaSnippetModelProvider#shouldRenderSnippets... %{public}s", v34, 0xCu);
    sub_306C(v35);

    v42 = v40;
    v15 = v37;
    v5 = v94;
    v43 = *(v42 + 8);
    v44 = v41;
    v13 = v95;
    v43(v28, v44);
  }

  else
  {

    v43 = *(v111 + 8);
    v43(v28, v112);
  }

  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD3C0();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = v109;
  v47 = v110;
  v48 = *(v110 + 56);
  v48(v15, v45, 1, v109);
  sub_2CB250();
  v48(v13, 0, 1, v46);
  v49 = *(v5 + 48);
  sub_F3F4(v15, v7, &qword_34C6B0, &qword_2D0700);
  sub_F3F4(v13, &v7[v49], &qword_34C6B0, &qword_2D0700);
  v50 = *(v47 + 48);
  if (v50(v7, 1, v46) == 1)
  {
    sub_30B8(v13, &qword_34C6B0, &qword_2D0700);
    sub_30B8(v15, &qword_34C6B0, &qword_2D0700);
    if (v50(&v7[v49], 1, v46) == 1)
    {
      sub_30B8(v7, &qword_34C6B0, &qword_2D0700);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  v96 = v15;
  v51 = v104;
  sub_F3F4(v7, v104, &qword_34C6B0, &qword_2D0700);
  if (v50(&v7[v49], 1, v46) == 1)
  {
    sub_30B8(v13, &qword_34C6B0, &qword_2D0700);
    sub_30B8(v96, &qword_34C6B0, &qword_2D0700);
    (*(v110 + 8))(v51, v46);
LABEL_14:
    sub_30B8(v7, &qword_357560, &qword_2D9778);
    goto LABEL_15;
  }

  v69 = v110;
  v70 = &v7[v49];
  v71 = v101;
  (*(v110 + 32))(v101, v70, v46);
  sub_2C525C();
  v72 = v51;
  v73 = sub_2CE250();
  v74 = *(v69 + 8);
  v74(v71, v46);
  sub_30B8(v13, &qword_34C6B0, &qword_2D0700);
  sub_30B8(v96, &qword_34C6B0, &qword_2D0700);
  v74(v72, v46);
  sub_30B8(v7, &qword_34C6B0, &qword_2D0700);
  if (v73)
  {
LABEL_28:
    v57 = v103;
    v106(v103, v108, v112);
    v58 = sub_2CDFE0();
    v59 = sub_2CE670();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v114 = v61;
      *v60 = 136446210;
      v75 = sub_2CCCA0();
      v77 = sub_3F08(v75, v76, &v114);

      *(v60 + 4) = v77;
      v65 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets returning false for voice only response mode. %{public}s";
      goto LABEL_32;
    }

LABEL_33:

    v81 = v57;
LABEL_34:
    v43(v81, v112);
    return 0;
  }

LABEL_15:
  v52 = v105;
  if (!sub_2CE810())
  {
    v57 = v102;
    v106(v102, v108, v112);
    v58 = sub_2CDFE0();
    v59 = sub_2CE670();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_33;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v114 = v61;
    *v60 = 136446210;
    v66 = sub_2CCCA0();
    v68 = sub_3F08(v66, v67, &v114);

    *(v60 + 4) = v68;
    v65 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't return snippets because no view actions on next/later destinations (or create radio). %{public}s";
    goto LABEL_32;
  }

  v53 = [v52 mediaItems];
  if (!v53 || ((v54 = v53, sub_334A0(0, &qword_356F50, INMediaItem_ptr), v55 = sub_2CE410(), v54, v55 >> 62) ? (v56 = sub_2CEDA0()) : (v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8))), , !v56))
  {
    v57 = v99;
    v106(v99, v108, v112);
    v58 = sub_2CDFE0();
    v59 = sub_2CE680();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v114 = v61;
      *v60 = 136446210;
      v78 = sub_2CCCA0();
      v80 = sub_3F08(v78, v79, &v114);

      *(v60 + 4) = v80;
      v65 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't return snippets because nil or empty mediaItems. %{public}s";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if ([v100 code] != &dword_4 && objc_msgSend(v100, "code") != &dword_0 + 1)
  {
    v106(v98, v108, v112);
    v83 = v100;
    v84 = sub_2CDFE0();
    v85 = sub_2CE670();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v86 = 136446466;
      v113 = [v83 code];
      v87 = sub_2CEE70();
      v89 = sub_3F08(v87, v88, &v114);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2082;
      v90 = sub_2CCCA0();
      v92 = sub_3F08(v90, v91, &v114);

      *(v86 + 14) = v92;
      _os_log_impl(&dword_0, v84, v85, "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't return snippets because non-success code: %{public}s. %{public}s", v86, 0x16u);
      swift_arrayDestroy();
    }

    v81 = v98;
    goto LABEL_34;
  }

  if (sub_2CB640())
  {
    v57 = v97;
    v106(v97, v108, v112);
    v58 = sub_2CDFE0();
    v59 = sub_2CE670();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_33;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v114 = v61;
    *v60 = 136446210;
    v62 = sub_2CCCA0();
    v64 = sub_3F08(v62, v63, &v114);

    *(v60 + 4) = v64;
    v65 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't create snippets for CarPlay. %{public}s";
LABEL_32:
    _os_log_impl(&dword_0, v58, v59, v65, v60, 0xCu);
    sub_306C(v61);

    goto LABEL_33;
  }

  return 1;
}

uint64_t sub_2C32E4()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2CE860())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v4 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v4, v0);
    v5 = sub_2CDFE0();
    v6 = sub_2CE670();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      v9 = sub_2CCCA0();
      v11 = sub_3F08(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v5, v6, "PlayMediaIOSSnippetModelProvider#bundleIdentifier fallbackImplicitRecommendation scenario, override bundleIdentifier with fallback: BundleIdentifiers.music. %{public}s", v7, 0xCu);
      sub_306C(v8);
    }

    (*(v1 + 8))(v3, v0);
    return sub_2CBE10();
  }

  else
  {
    result = sub_2CCF90();
    if (!v13)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2C3520()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CCF90();
  v6 = v5;
  v7 = sub_2CBE10();
  if (v6)
  {
    if (v4 == v7 && v6 == v8)
    {
      goto LABEL_10;
    }

    v9 = sub_2CEEA0();

    if (v9)
    {
      v10 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = sub_2C32E4();
  v13 = v12;
  if (v11 != sub_2CBE30() || v13 != v14)
  {
    v10 = sub_2CEEA0();

    goto LABEL_12;
  }

LABEL_10:

  v10 = 1;
LABEL_12:

LABEL_13:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v3, v15, v0);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 67109378;
    *(v18 + 4) = v10 & 1;
    *(v18 + 8) = 2082;
    v20 = sub_2CCCA0();
    v22 = sub_3F08(v20, v21, &v24);

    *(v18 + 10) = v22;
    _os_log_impl(&dword_0, v16, v17, "PlayMediaIOSSnippetModelProvider#ShouldStartPlayOnSetQueueForMusicOrPodcast isMusicOrPodcastApp: %{BOOL}d. %{public}s", v18, 0x12u);
    sub_306C(v19);
  }

  (*(v1 + 8))(v3, v0);
  return v10 & 1;
}

uint64_t sub_2C3828(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v95 = a4;
  v86 = a2;
  v91 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v91);
  v92 = &v84 - v10;
  v11 = sub_20410(&qword_34C6B0, &qword_2D0700);
  __chkstk_darwin(v11);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v88 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v87 = &v84 - v17;
  __chkstk_darwin(v16);
  v19 = &v84 - v18;
  v20 = swift_allocObject();
  v93 = a6;
  v94 = a5;
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  v21 = qword_34BF58;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v89 = *(v13 + 16);
  v90 = v22;
  v89(v19, v22, v12);
  v23 = a1;
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();
  v96 = v12;
  v26 = v25;

  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    v85 = a3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v84 = v13;
    v98 = v29;
    *v28 = 136446722;
    sub_2CB580();
    v30 = sub_2CE2A0();
    v32 = sub_3F08(v30, v31, &v98);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3568B0, &unk_2D8DC0);
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v98);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2082;
    v36 = sub_2CCCA0();
    v38 = sub_3F08(v36, v37, &v98);

    *(v28 + 24) = v38;
    _os_log_impl(&dword_0, v24, v26, "PlayMediaIOSSnippetModelProvider#intentPreHandledSnippet response mode: %{public}s for Intent: %{public}s, %{public}s", v28, 0x20u);
    swift_arrayDestroy();

    a3 = v85;

    v39 = v84;
  }

  else
  {

    v39 = v13;
  }

  v40 = *(v39 + 8);
  v41 = v96;
  v40(v19, v96);
  if ((sub_2C2680(v23, a3) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_2C3520())
  {
    v42 = v87;
    v89(v87, v90, v41);
    v43 = sub_2CDFE0();
    v44 = sub_2CE670();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v98 = v46;
      *v45 = 136446210;
      v47 = sub_2CCCA0();
      v49 = sub_3F08(v47, v48, &v98);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_0, v43, v44, "PlayMediaIOSSnippetModelProvider#intentPreHandledSnippet returning no snippet model for Intent Handled, %{public}s", v45, 0xCu);
      sub_306C(v46);

      v50 = v87;
    }

    else
    {

      v50 = v42;
    }

    v40(v50, v41);
LABEL_14:
    v61 = type metadata accessor for SnippetModelResponse(0);
    v62 = v92;
    (*(*(v61 - 8) + 56))(v92, 1, 1, v61);
    swift_storeEnumTagMultiPayload();
    v94(v62);
    sub_30B8(v62, &qword_34EE00, &qword_2D8ED0);
  }

  v94 = v23;
  v51 = v88;
  v89(v88, v90, v41);
  v52 = sub_2CDFE0();
  v53 = sub_2CE670();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v98 = v55;
    *v54 = 136446210;
    v56 = sub_2CCCA0();
    v58 = sub_3F08(v56, v57, &v98);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_0, v52, v53, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel intent is ready to create snippets, %{public}s", v54, 0xCu);
    sub_306C(v55);

    v59 = v88;
    v60 = v96;
  }

  else
  {

    v59 = v51;
    v60 = v41;
  }

  v40(v59, v60);
  v63 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v64 = swift_allocBox();
  v66 = v65;
  v67 = sub_2CD270();
  (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
  v68 = (v66 + v63[5]);
  *v68 = 0;
  v68[1] = 0;
  v69 = v63[6];
  v70 = sub_2CC380();
  (*(*(v70 - 8) + 56))(v66 + v69, 1, 1, v70);
  v71 = (v66 + v63[7]);
  *v71 = 0;
  v71[1] = 0;
  if (qword_34C138 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34F2A8, &qword_2D4990);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2D0E40;
  v73 = swift_allocObject();
  v74 = v86;
  *(v73 + 16) = v86;
  *(v73 + 24) = 1;
  v75 = v94;
  v76 = v95;
  *(v73 + 32) = v95;
  *(v73 + 40) = v75;
  *(v73 + 48) = a3;
  *(v73 + 56) = v64;
  *(v72 + 32) = sub_2C5C48;
  *(v72 + 40) = v73;
  v77 = swift_allocObject();
  v77[2] = v74;
  v77[3] = v75;
  v77[4] = v64;
  *(v72 + 48) = sub_2C5C3C;
  *(v72 + 56) = v77;
  v78 = swift_allocObject();
  v78[2] = v64;
  v78[3] = v74;
  v78[4] = v76;
  v78[5] = v75;
  v78[6] = sub_2C5C4C;
  v78[7] = v20;
  v79 = v75;
  swift_retain_n();
  swift_retain_n();
  v80 = v79;
  swift_retain_n();
  v81 = v80;
  v82 = a3;

  sub_2CCC70();
}

uint64_t sub_2C4148(uint64_t a1, void *a2, void *a3, void (*a4)(char *), void (*a5)(char *))
{
  v30 = a3;
  v29 = a1;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v28 = a2;
  v32 = a2;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC140())
  {
    v18 = type metadata accessor for SnippetModelResponse(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    swift_storeEnumTagMultiPayload();
    a4(v17);
    return sub_30B8(v17, &qword_34EE00, &qword_2D8ED0);
  }

  else
  {
    v27 = a5;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v20 = qword_35F760;
    sub_2CDFB0();
    (*(v9 + 16))(v12, v14, v8);
    v21 = (*(v9 + 80) + 33) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = "playMediaSnippetModelProviderMakeIntentPreHandledSnippet";
    *(v23 + 24) = 56;
    *(v23 + 32) = 2;
    (*(v9 + 32))(v23 + v21, v12, v8);
    v24 = (v23 + v22);
    v25 = v27;
    *v24 = a4;
    v24[1] = v25;

    v26 = sub_2CE9E0();
    sub_2CDF90(v26, &dword_0, v20, "playMediaSnippetModelProviderMakeIntentPreHandledSnippet", 56, 2, v14, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

    sub_2C3828(v28, v31, v30, v29, sub_2C5C44, v23);

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_2C44C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v95 = a4;
  v86 = a2;
  v91 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v91);
  v92 = &v84 - v10;
  v11 = sub_20410(&qword_34C6B0, &qword_2D0700);
  __chkstk_darwin(v11);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v88 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v87 = &v84 - v17;
  __chkstk_darwin(v16);
  v19 = &v84 - v18;
  v20 = swift_allocObject();
  v93 = a6;
  v94 = a5;
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  v21 = qword_34BF58;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v89 = *(v13 + 16);
  v90 = v22;
  v89(v19, v22, v12);
  v23 = a1;
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();
  v96 = v12;
  v26 = v25;

  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    v85 = a3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v84 = v13;
    v98 = v29;
    *v28 = 136446722;
    sub_2CB580();
    v30 = sub_2CE2A0();
    v32 = sub_3F08(v30, v31, &v98);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3568B0, &unk_2D8DC0);
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v98);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2082;
    v36 = sub_2CCCA0();
    v38 = sub_3F08(v36, v37, &v98);

    *(v28 + 24) = v38;
    _os_log_impl(&dword_0, v24, v26, "PlayMediaIOSSnippetModelProvider#intentHandledSnippet response mode: %{public}s for Intent: %{public}s, %{public}s", v28, 0x20u);
    swift_arrayDestroy();

    a3 = v85;

    v39 = v84;
  }

  else
  {

    v39 = v13;
  }

  v40 = *(v39 + 8);
  v41 = v96;
  v40(v19, v96);
  if ((sub_2C2680(v23, a3) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((sub_2C3520() & 1) == 0)
  {
    v52 = v88;
    v89(v88, v90, v41);
    v53 = sub_2CDFE0();
    v54 = sub_2CE670();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v98 = v56;
      *v55 = 136446210;
      v57 = sub_2CCCA0();
      v59 = sub_3F08(v57, v58, &v98);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_0, v53, v54, "PlayMediaIOSSnippetModelProvider#intentHandledSnippet returning no snippet model for Intent Handled, %{public}s", v55, 0xCu);
      sub_306C(v56);

      v60 = v88;
    }

    else
    {

      v60 = v52;
    }

    v40(v60, v41);
LABEL_18:
    v81 = type metadata accessor for SnippetModelResponse(0);
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    swift_storeEnumTagMultiPayload();
    v94(v82);
    sub_30B8(v82, &qword_34EE00, &qword_2D8ED0);
  }

  v94 = v23;
  v42 = v87;
  v89(v87, v90, v41);
  v43 = sub_2CDFE0();
  v44 = sub_2CE670();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v98 = v46;
    *v45 = 136446210;
    v47 = sub_2CCCA0();
    v49 = sub_3F08(v47, v48, &v98);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_0, v43, v44, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel intent is ready to create snippets, %{public}s", v45, 0xCu);
    sub_306C(v46);

    v50 = v87;
    v51 = v96;
  }

  else
  {

    v50 = v42;
    v51 = v41;
  }

  v40(v50, v51);
  v61 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v62 = swift_allocBox();
  v64 = v63;
  v65 = sub_2CD270();
  (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
  v66 = (v64 + v61[5]);
  *v66 = 0;
  v66[1] = 0;
  v67 = v61[6];
  v68 = sub_2CC380();
  (*(*(v68 - 8) + 56))(v64 + v67, 1, 1, v68);
  v69 = (v64 + v61[7]);
  *v69 = 0;
  v69[1] = 0;
  if (qword_34C138 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34F2A8, &qword_2D4990);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_2D0E40;
  v71 = swift_allocObject();
  v72 = v86;
  *(v71 + 16) = v86;
  *(v71 + 24) = 0;
  v73 = v94;
  v74 = v95;
  *(v71 + 32) = v95;
  *(v71 + 40) = v73;
  *(v71 + 48) = a3;
  *(v71 + 56) = v62;
  *(v70 + 32) = sub_2C51A4;
  *(v70 + 40) = v71;
  v75 = swift_allocObject();
  v75[2] = v72;
  v75[3] = v73;
  v75[4] = v62;
  *(v70 + 48) = sub_2C51A8;
  *(v70 + 56) = v75;
  v76 = swift_allocObject();
  v76[2] = v62;
  v76[3] = v72;
  v76[4] = v74;
  v76[5] = v73;
  v76[6] = sub_13D8C;
  v76[7] = v20;
  v77 = v73;
  swift_retain_n();
  swift_retain_n();
  v78 = v77;
  swift_retain_n();
  v79 = v78;
  v80 = a3;

  sub_2CCC70();
}

uint64_t sub_2C4DDC(uint64_t a1, void *a2, void *a3, void (*a4)(char *), void (*a5)(char *))
{
  v30 = a3;
  v29 = a1;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v28 = a2;
  v32 = a2;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC140())
  {
    v18 = type metadata accessor for SnippetModelResponse(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    swift_storeEnumTagMultiPayload();
    a4(v17);
    return sub_30B8(v17, &qword_34EE00, &qword_2D8ED0);
  }

  else
  {
    v27 = a5;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v20 = qword_35F760;
    sub_2CDFB0();
    (*(v9 + 16))(v12, v14, v8);
    v21 = (*(v9 + 80) + 33) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = "playMediaSnippetModelProviderMakeIntentHandledSnippet";
    *(v23 + 24) = 53;
    *(v23 + 32) = 2;
    (*(v9 + 32))(v23 + v21, v12, v8);
    v24 = (v23 + v22);
    v25 = v27;
    *v24 = a4;
    v24[1] = v25;

    v26 = sub_2CE9E0();
    sub_2CDF90(v26, &dword_0, v20, "playMediaSnippetModelProviderMakeIntentHandledSnippet", 53, 2, v14, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

    sub_2C44C0(v28, v31, v30, v29, sub_2C5154, v23);

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(uint64_t a1)
{
  result = qword_3575D0;
  if (!qword_3575D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2C51B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_352960, &qword_2D5110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2C525C()
{
  result = qword_352890;
  if (!qword_352890)
  {
    sub_2CB260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352890);
  }

  return result;
}

uint64_t sub_2C52B4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_2C5320()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_2C5368()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_2C53D0()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CB440();
  if (sub_2CB460())
  {
    sub_2CB130();

    v5 = sub_2CD3B0();
  }

  else
  {
    v5 = 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_2CDFE0();
  v8 = sub_2CE670();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 67109634;
    *(v9 + 4) = v4 & 1;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    *(v9 + 14) = 2082;
    v11 = sub_2CCCA0();
    v16 = v0;
    v13 = sub_3F08(v11, v12, &v17);

    *(v9 + 16) = v13;
    _os_log_impl(&dword_0, v7, v8, "PlayMediaIOSSnippetModelProvider#isSystemApertureEnabledOrIsInAmbient isSystemApertureEnabled = %{BOOL}d, isInAmbient = %{BOOL}d %{public}s", v9, 0x18u);
    sub_306C(v10);

    (*(v1 + 8))(v3, v16);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return (v4 | v5) & 1;
}

uint64_t sub_2C566C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v9 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v7, v9, v4);
    v10 = sub_2CDFE0();
    v11 = sub_2CE670();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = sub_2CCCA0();
      v16 = sub_3F08(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "PlayMediaIOSSnippetModelProvider#showCreateMediaPlayer returning true, because there is a routeID. %{public}s", v12, 0xCu);
      sub_306C(v13);
    }

    (*(v5 + 8))(v7, v4);
    v17 = 1;
  }

  else
  {
    v17 = sub_2C53D0() ^ 1;
  }

  return v17 & 1;
}

uint64_t sub_2C58A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C5908(char *a1, char *a2)
{
  v5 = *(type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return sub_2BFBA8(a1, a2, v7, v8, v9, v2 + v6, v11, v12);
}

uint64_t sub_2C59C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2C5A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2C5A88(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_7F0EC(a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v2(v3, v5);

  return result;
}

void sub_2C5B0C(uint64_t a1)
{
  sub_2C5BE4(319, &qword_3575E0, &type metadata accessor for SiriAudioAlternativeSnippetModel);
  if (v1 <= 0x3F)
  {
    sub_BF320();
    if (v2 <= 0x3F)
    {
      sub_2C5BE4(319, &unk_3575E8, &type metadata accessor for SubscriptionDetails);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2C5BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2C5C50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32FC98;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

char *DetermineIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id DetermineIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DetermineIntent();
  return objc_msgSendSuper2(&v3, "init");
}

id NowPlayingIntentInfo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id DetermineIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id DetermineIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2CE260();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DetermineIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2CE260();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DetermineIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id DetermineIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2CE260();

  v8 = sub_2CE260();

  if (a5)
  {
    v9.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id DetermineIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2CE260();

  v8 = sub_2CE260();

  if (a5)
  {
    v9.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DetermineIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

unint64_t sub_2C6350@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2C6CD4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t DetermineIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DetermineIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id DetermineIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DetermineIntentResponse();
  return objc_msgSendSuper2(&v3, "init");
}

id DetermineIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id DetermineIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id DetermineIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2C6758(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DetermineIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DetermineIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id DetermineIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_2C697C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2C6C9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason:a1];

  return v1;
}

id DetermineNowPlayingIntentInfoResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_2CE1F0().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id DetermineNowPlayingIntentInfoResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2C6C64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2C6C9C(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2C6CD4(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2C6D30()
{
  result = qword_357628;
  if (!qword_357628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357628);
  }

  return result;
}

unint64_t sub_2C6D88()
{
  result = qword_357630;
  if (!qword_357630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357630);
  }

  return result;
}

unint64_t sub_2C6E2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2C712C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static QueueLocationResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue:a1];

  return v1;
}

id static QueueLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm:a1];

  return v1;
}

id RequestTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RequestTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id RequestTypeResolutionResult.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RequestTypeResolutionResult();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_2C712C(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2C7164()
{
  result = qword_3576B0;
  if (!qword_3576B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3576B0);
  }

  return result;
}

uint64_t QueueLocation.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2C71DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id QueueLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for QueueLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id QueueLocationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueueLocationResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2C7458()
{
  result = qword_3576E0;
  if (!qword_3576E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3576E0);
  }

  return result;
}

unint64_t WHAError.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_2C74CC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id WHAErrorResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WHAErrorResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id WHAErrorResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WHAErrorResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2C7744()
{
  result = qword_357710;
  if (!qword_357710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357710);
  }

  return result;
}

id static NowPlayingIntentInfoResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___NowPlayingIntentInfoResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static NowPlayingIntentInfoResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2C7904();

    sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_2C7904();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2C7904();
  isa = sub_2CE400().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___NowPlayingIntentInfoResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_2C7904()
{
  result = qword_357768;
  if (!qword_357768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_357768);
  }

  return result;
}

id static NowPlayingIntentInfoResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___NowPlayingIntentInfoResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id NowPlayingIntentInfo.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2CE260();

  if (a6)
  {
    v10 = sub_2CE260();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id NowPlayingIntentInfo.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2CE260();

  if (a6)
  {
    v10 = sub_2CE260();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for NowPlayingIntentInfo();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id NowPlayingIntentInfo.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NowPlayingIntentInfo();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NowPlayingIntentInfoResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for NowPlayingIntentInfoResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2C81C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id WHADialogMetadata.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2CE260();

  if (a6)
  {
    v10 = sub_2CE260();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for WHADialogMetadata();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id WHADialogMetadata.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WHADialogMetadata();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WHADialogMetadataResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WHADialogMetadataResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WHADialogMetadataResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2C7904();

    sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_2C7904();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2C7904();
  isa = sub_2CE400().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WHADialogMetadataResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

id static WHADialogMetadataResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WHADialogMetadataResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WHADialogMetadataResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WHADialogMetadataResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2C8AF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}