Swift::Int Library.Context.hashValue.getter()
{
  sub_1004DF26C();
  Library.Context.hash(into:)(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_1001B0E90()
{
  sub_1004DF26C();
  Library.Context.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t sub_1001B0ECC()
{
  v0 = type metadata accessor for Library.Context(0);
  sub_100035718(v0, qword_100638A98);
  v1 = sub_100035430(v0, qword_100638A98);
  sub_1004DC7AC();
  *v1 = sub_1004DC79C();
  v2 = v0[5];
  v3 = sub_1004DCA0C();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = sub_1004DCB3C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = sub_1004D91FC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = sub_1004DCA3C();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = sub_1004DD05C();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = sub_1004D91EC();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = sub_1004D924C();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_1001B1150@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633D18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context(0);
  v3 = sub_100035430(v2, qword_100638A98);

  return sub_1001B2FF8(v3, a1);
}

uint64_t sub_1001B11C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001B3D58(&qword_100638B28, type metadata accessor for Library.Context, &protocol conformance descriptor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_1001B305C();

  return sub_1004DA75C();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  sub_1001B2FF8(a1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001B305C();
  sub_1004DA76C();
  return sub_1001B30B0(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1001B305C();
  sub_1004DA75C();
  return sub_1001B1450;
}

void sub_1001B1450(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1001B2FF8((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1001B2FF8(v3[2], v3[1]);
    sub_1004DA76C();
    sub_1001B30B0(v6);
  }

  else
  {
    sub_1004DA76C();
  }

  sub_1001B30B0(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

double View.libraryContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1004DB40C();

  return result;
}

uint64_t sub_1001B1594(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1001B2FF8(a1, &v7 - v4);
  sub_1001B2FF8(v5, v3);
  sub_1001B305C();
  sub_1004DA76C();
  return sub_1001B30B0(v5);
}

uint64_t MusicLibraryRequest.apply(_:)(void *a1, uint64_t a2)
{

  sub_1004DC0DC();
  v4 = *(a1 + *(type metadata accessor for Library.Context(0) + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v146 = sub_1004D924C();
  v147 = *(v146 - 8);
  __chkstk_darwin();
  v141 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636598, &qword_100518E88);
  __chkstk_darwin();
  v142 = &v138 - v5;
  v144 = sub_100004CB8(&qword_100638C58, &qword_10051E430);
  __chkstk_darwin();
  v145 = &v138 - v6;
  v152 = sub_1004D91EC();
  v153 = *(v152 - 8);
  __chkstk_darwin();
  v143 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_1006365C8, &unk_10051E1A0);
  __chkstk_darwin();
  v150 = &v138 - v8;
  v149 = sub_100004CB8(&qword_100638C60, &qword_10051E438);
  __chkstk_darwin();
  v151 = &v138 - v9;
  v10 = sub_1004DD05C();
  v11 = *(v10 - 8);
  v158 = v10;
  v159 = v11;
  __chkstk_darwin();
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  __chkstk_darwin();
  v156 = &v138 - v13;
  v155 = sub_100004CB8(&qword_100638C68, &qword_10051E440);
  __chkstk_darwin();
  v157 = &v138 - v14;
  v163 = sub_1004DCA3C();
  v165 = *(v163 - 8);
  __chkstk_darwin();
  v154 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638AC0, &unk_10051E190);
  __chkstk_darwin();
  v171 = &v138 - v16;
  v161 = sub_100004CB8(&qword_100638C70, &qword_10051E448);
  __chkstk_darwin();
  v162 = &v138 - v17;
  v18 = sub_1004D91FC();
  v168 = *(v18 - 8);
  v169 = v18;
  __chkstk_darwin();
  v160 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638AB8, &qword_10051E188);
  __chkstk_darwin();
  v164 = &v138 - v20;
  v167 = sub_100004CB8(&qword_100638C78, &qword_10051E450);
  __chkstk_darwin();
  v174 = &v138 - v21;
  v173 = sub_1004DCB3C();
  v175 = *(v173 - 8);
  __chkstk_darwin();
  v166 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636470, &qword_100518C10);
  __chkstk_darwin();
  v170 = &v138 - v23;
  v24 = sub_100004CB8(&qword_100638C80, &qword_10051E458);
  __chkstk_darwin();
  v172 = &v138 - v25;
  v26 = sub_1004DCA0C();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  __chkstk_darwin();
  v31 = &v138 - v30;
  v32 = sub_100004CB8(&qword_100638C88, &qword_10051E460);
  __chkstk_darwin();
  v34 = &v138 - v33;
  sub_1004DC7AC();
  if ((sub_1004DC5EC() & 1) == 0)
  {
    return 0;
  }

  v35 = type metadata accessor for Library.Context(0);
  v176 = a2;
  v36 = a1;
  v139 = v35;
  v37 = *(v35 + 20);
  v38 = *(v32 + 48);
  v140 = v36;
  sub_1000108DC(v36 + v37, v34, &qword_100635B98, &qword_100517440);
  sub_1000108DC(v176 + v37, &v34[v38], &qword_100635B98, &qword_100517440);
  v39 = *(v27 + 48);
  if (v39(v34, 1, v26) == 1)
  {
    if (v39(&v34[v38], 1, v26) == 1)
    {
      sub_10001074C(v34, &qword_100635B98, &qword_100517440);
      goto LABEL_9;
    }

LABEL_7:
    v40 = &qword_100638C88;
    v41 = &qword_10051E460;
    v42 = v34;
LABEL_44:
    sub_10001074C(v42, v40, v41);
    return 0;
  }

  sub_1000108DC(v34, v31, &qword_100635B98, &qword_100517440);
  if (v39(&v34[v38], 1, v26) == 1)
  {
    (*(v27 + 8))(v31, v26);
    goto LABEL_7;
  }

  (*(v27 + 32))(v29, &v34[v38], v26);
  sub_1001B3D58(&qword_100638CB8, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v43 = sub_1004DD35C();
  v44 = *(v27 + 8);
  v44(v29, v26);
  v44(v31, v26);
  sub_10001074C(v34, &qword_100635B98, &qword_100517440);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = v139;
  v46 = v139[6];
  v47 = *(v24 + 48);
  v48 = v172;
  sub_1000108DC(v140 + v46, v172, &qword_100636470, &qword_100518C10);
  v49 = v176 + v46;
  v50 = v176;
  sub_1000108DC(v49, v48 + v47, &qword_100636470, &qword_100518C10);
  v51 = *(v175 + 48);
  v52 = v173;
  if (v51(v48, 1, v173) == 1)
  {
    v53 = v51(v48 + v47, 1, v52);
    v54 = v171;
    v55 = v174;
    if (v53 == 1)
    {
      sub_10001074C(v48, &qword_100636470, &qword_100518C10);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v56 = v170;
  sub_1000108DC(v48, v170, &qword_100636470, &qword_100518C10);
  v57 = v51(v48 + v47, 1, v52);
  v55 = v174;
  if (v57 == 1)
  {
    (*(v175 + 8))(v56, v52);
LABEL_14:
    v40 = &qword_100638C80;
    v41 = &qword_10051E458;
    v42 = v48;
    goto LABEL_44;
  }

  v58 = v175;
  v59 = v48 + v47;
  v60 = v45;
  v61 = v48;
  v62 = v166;
  (*(v175 + 32))(v166, v59, v52);
  sub_1001B3D58(&qword_100638CB0, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  v63 = sub_1004DD35C();
  v64 = *(v58 + 8);
  v64(v62, v52);
  v64(v56, v52);
  v65 = v61;
  v45 = v60;
  v54 = v171;
  sub_10001074C(v65, &qword_100636470, &qword_100518C10);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v66 = v45[7];
  v67 = v50;
  v68 = *(v167 + 48);
  sub_1000108DC(v140 + v66, v55, &qword_100638AB8, &qword_10051E188);
  sub_1000108DC(v67 + v66, v55 + v68, &qword_100638AB8, &qword_10051E188);
  v70 = v168;
  v69 = v169;
  v71 = *(v168 + 48);
  if (v71(v55, 1, v169) == 1)
  {
    if (v71(v55 + v68, 1, v69) == 1)
    {
      sub_10001074C(v55, &qword_100638AB8, &qword_10051E188);
      goto LABEL_23;
    }

LABEL_21:
    v40 = &qword_100638C78;
    v41 = &qword_10051E450;
LABEL_43:
    v42 = v55;
    goto LABEL_44;
  }

  v72 = v164;
  sub_1000108DC(v55, v164, &qword_100638AB8, &qword_10051E188);
  if (v71(v55 + v68, 1, v69) == 1)
  {
    (*(v70 + 8))(v72, v69);
    goto LABEL_21;
  }

  v73 = v55 + v68;
  v74 = v160;
  (*(v70 + 32))(v160, v73, v69);
  sub_1001B3D58(&qword_100638CA8, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v75 = sub_1004DD35C();
  v76 = *(v70 + 8);
  v76(v74, v69);
  v76(v72, v69);
  sub_10001074C(v55, &qword_100638AB8, &qword_10051E188);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v77 = v45[8];
  v55 = v162;
  v78 = *(v161 + 48);
  sub_1000108DC(v140 + v77, v162, &qword_100638AC0, &unk_10051E190);
  sub_1000108DC(v176 + v77, v55 + v78, &qword_100638AC0, &unk_10051E190);
  v79 = *(v165 + 48);
  v80 = v163;
  if (v79(v55, 1, v163) == 1)
  {
    if (v79(v55 + v78, 1, v80) == 1)
    {
      sub_10001074C(v55, &qword_100638AC0, &unk_10051E190);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_1000108DC(v55, v54, &qword_100638AC0, &unk_10051E190);
  if (v79(v55 + v78, 1, v80) == 1)
  {
    (*(v165 + 8))(v54, v80);
LABEL_28:
    v40 = &qword_100638C70;
    v41 = &qword_10051E448;
    goto LABEL_43;
  }

  v81 = v54;
  v82 = v165;
  v83 = v55 + v78;
  v84 = v154;
  (*(v165 + 32))(v154, v83, v80);
  sub_1001B3D58(&qword_100638CA0, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
  v85 = sub_1004DD35C();
  v86 = *(v82 + 8);
  v86(v84, v80);
  v86(v81, v80);
  sub_10001074C(v55, &qword_100638AC0, &unk_10051E190);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v87 = v45[9];
  v88 = *(v155 + 48);
  v55 = v157;
  sub_1000108DC(v140 + v87, v157, &qword_100637A00, &qword_100518D00);
  sub_1000108DC(v176 + v87, v55 + v88, &qword_100637A00, &qword_100518D00);
  v89 = v158;
  v90 = *(v159 + 48);
  if (v90(v55, 1, v158) == 1)
  {
    if (v90(v55 + v88, 1, v89) == 1)
    {
      sub_10001074C(v55, &qword_100637A00, &qword_100518D00);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1000108DC(v55, v156, &qword_100637A00, &qword_100518D00);
  if (v90(v55 + v88, 1, v89) == 1)
  {
    (*(v159 + 8))(v156, v89);
LABEL_35:
    v40 = &qword_100638C68;
    v41 = &qword_10051E440;
    goto LABEL_43;
  }

  v91 = v159;
  v92 = v55 + v88;
  v93 = v148;
  (*(v159 + 32))(v148, v92, v89);
  sub_1001B3D58(&qword_1006380B0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v94 = v156;
  v95 = sub_1004DD35C();
  v96 = *(v91 + 8);
  v96(v93, v89);
  v96(v94, v89);
  sub_10001074C(v55, &qword_100637A00, &qword_100518D00);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v97 = v45[10];
  v98 = *(v149 + 48);
  v55 = v151;
  sub_1000108DC(v140 + v97, v151, &qword_1006365C8, &unk_10051E1A0);
  sub_1000108DC(v176 + v97, v55 + v98, &qword_1006365C8, &unk_10051E1A0);
  v99 = *(v153 + 48);
  v100 = v152;
  if (v99(v55, 1, v152) == 1)
  {
    if (v99(v55 + v98, 1, v100) == 1)
    {
      sub_10001074C(v55, &qword_1006365C8, &unk_10051E1A0);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_1000108DC(v55, v150, &qword_1006365C8, &unk_10051E1A0);
  if (v99(v55 + v98, 1, v100) == 1)
  {
    (*(v153 + 8))(v150, v100);
LABEL_42:
    v40 = &qword_100638C60;
    v41 = &qword_10051E438;
    goto LABEL_43;
  }

  v102 = v153;
  v103 = v55 + v98;
  v104 = v143;
  (*(v153 + 32))(v143, v103, v100);
  sub_1001B3D58(&qword_100638C98, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v105 = v150;
  v106 = sub_1004DD35C();
  v107 = *(v102 + 8);
  v107(v104, v100);
  v107(v105, v100);
  sub_10001074C(v55, &qword_1006365C8, &unk_10051E1A0);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v108 = v45[11];
  v109 = *(v144 + 48);
  v110 = v145;
  sub_1000108DC(v140 + v108, v145, &qword_100636598, &qword_100518E88);
  sub_1000108DC(v176 + v108, v110 + v109, &qword_100636598, &qword_100518E88);
  v111 = *(v147 + 48);
  v112 = v146;
  if (v111(v110, 1, v146) == 1)
  {
    if (v111(v110 + v109, 1, v112) == 1)
    {
      sub_10001074C(v110, &qword_100636598, &qword_100518E88);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v113 = v142;
  sub_1000108DC(v110, v142, &qword_100636598, &qword_100518E88);
  if (v111(v110 + v109, 1, v112) == 1)
  {
    (*(v147 + 8))(v113, v112);
LABEL_53:
    v40 = &qword_100638C58;
    v41 = &qword_10051E430;
    v42 = v110;
    goto LABEL_44;
  }

  v114 = v147;
  v115 = v110 + v109;
  v116 = v141;
  (*(v147 + 32))(v141, v115, v112);
  sub_1001B3D58(&qword_100638C90, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v117 = sub_1004DD35C();
  v118 = *(v114 + 8);
  v118(v116, v112);
  v118(v113, v112);
  sub_10001074C(v110, &qword_100636598, &qword_100518E88);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v140 + v45[12]) != *(v176 + v45[12]))
  {
    return 0;
  }

  v119 = v45[13];
  v120 = *(v140 + v119);
  v121 = *(v176 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v121 != 2 && ((v121 ^ v120) & 1) == 0)
  {
LABEL_61:
    v122 = v45[14];
    v123 = *(v140 + v122);
    v124 = *(v176 + v122);
    if (v123 == 3)
    {
      if (v124 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v124 == 3)
      {
        return 0;
      }

      v125 = 0xE900000000000073;
      v126 = 7105633;
      if (v123)
      {
        if (v123 == 1)
        {
          v127 = 0x657469726F766166;
        }

        else
        {
          v127 = 0x64616F6C6E776F64;
        }

        v128 = 0xE900000000000073;
      }

      else
      {
        v128 = 0xE300000000000000;
        v127 = 7105633;
      }

      if (v124)
      {
        if (v124 == 1)
        {
          v126 = 0x657469726F766166;
        }

        else
        {
          v126 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v125 = 0xE300000000000000;
      }

      if (v127 == v126 && v128 == v125)
      {

        v45 = v139;
      }

      else
      {
        v129 = sub_1004DF08C();

        v45 = v139;
        if ((v129 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v130 = v45[15];
    v131 = (v140 + v130);
    v132 = *(v140 + v130 + 8);
    v133 = (v176 + v130);
    v134 = v133[1];
    if (v132)
    {
      if (v134 && (*v131 == *v133 && v132 == v134 || (sub_1004DF08C() & 1) != 0))
      {
LABEL_87:
        if (sub_10010AC78(*(v140 + v139[16]), *(v176 + v139[16])))
        {
          v135 = v139[17];
          v136 = *(v140 + v135);
          v137 = *(v176 + v135);
          if (v136 == 2)
          {
            if (v137 == 2)
            {
              return 1;
            }
          }

          else if (v137 != 2 && ((v137 ^ v136) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v134)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}

unint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2AD8;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for Library.Context(uint64_t a1)
{
  result = qword_100638B88;
  if (!qword_100638B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B2FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B305C()
{
  result = qword_100638B10;
  if (!qword_100638B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638B10);
  }

  return result;
}

uint64_t sub_1001B30B0(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B3154()
{
  result = qword_100638B18;
  if (!qword_100638B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638B18);
  }

  return result;
}

unint64_t sub_1001B31AC()
{
  result = qword_100638B20;
  if (!qword_100638B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638B20);
  }

  return result;
}

uint64_t sub_1001B327C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100004CB8(&qword_100635B98, &qword_100517440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_100004CB8(&qword_100636470, &qword_100518C10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_100004CB8(&qword_100638AB8, &qword_10051E188);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = sub_100004CB8(&qword_100638AC0, &unk_10051E190);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = sub_100004CB8(&qword_100637A00, &qword_100518D00);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = sub_100004CB8(&qword_1006365C8, &unk_10051E1A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = sub_100004CB8(&qword_100636598, &qword_100518E88);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[11]];

  return v19(v20, a2, v18);
}

char *sub_1001B3570(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100004CB8(&qword_100635B98, &qword_100517440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100004CB8(&qword_100636470, &qword_100518C10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_100004CB8(&qword_100638AB8, &qword_10051E188);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = sub_100004CB8(&qword_100638AC0, &unk_10051E190);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = sub_100004CB8(&qword_100637A00, &qword_100518D00);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = sub_100004CB8(&qword_1006365C8, &unk_10051E1A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = sub_100004CB8(&qword_100636598, &qword_100518E88);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[11]];

  return v19(v20, a2, a2, v18);
}

void sub_1001B3850(uint64_t a1)
{
  sub_1004DC7AC();
  if (v1 <= 0x3F)
  {
    sub_1001B3BA4(319, &qword_100638B98, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1001B3BA4(319, &qword_100638BA0, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1001B3BA4(319, &qword_100638BA8, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1001B3BA4(319, &qword_100638BB0, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1001B3BA4(319, &qword_100638BB8, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1001B3BA4(319, &qword_100638BC0, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1001B3BA4(319, &qword_100638BC8, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_10004BEAC(319, &qword_100638BD0, &type metadata for Library.Context.SortOption);
                  if (v9 <= 0x3F)
                  {
                    sub_10004BEAC(319, &qword_100638BD8, &type metadata for Library.ContentFilterOption);
                    if (v10 <= 0x3F)
                    {
                      sub_10004BEAC(319, &qword_10063C230, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        sub_1001B3BA4(319, &unk_100638BE0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v12 <= 0x3F)
                        {
                          sub_10004BEAC(319, &unk_100636CE0, &type metadata for Bool);
                          if (v13 <= 0x3F)
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

void sub_1001B3BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001B3C18(uint64_t *a1)
{
  sub_100008DE4(&qword_100638C40, &qword_10051E3D8);
  sub_1004DA32C();
  sub_1001B3C90();
  return swift_getWitnessTable();
}

unint64_t sub_1001B3C90()
{
  result = qword_100638C48;
  if (!qword_100638C48)
  {
    sub_100008DE4(&qword_100638C40, &qword_10051E3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638C48);
  }

  return result;
}

unint64_t sub_1001B3D04()
{
  result = qword_100638C50;
  if (!qword_100638C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638C50);
  }

  return result;
}

uint64_t sub_1001B3D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001B3DA4(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
      sub_1001B9A44(&v12, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL sub_1001B3E90(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_1004DF08C();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1001B3F54(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "orites";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Playlists";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Artists";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Albums";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Songs";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.MadeForYou";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.MusicVideos";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Genres";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Compilations";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Composers";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Shows";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "orites";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Playlists";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Artists";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Albums";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Songs";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.MadeForYou";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.MusicVideos";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Genres";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Compilations";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Composers";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Shows";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = sub_1004DF08C();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

Swift::Int sub_1001B42B4(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004DF26C();
    sub_1004DF27C(v13);
    result = sub_1004DF2BC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B4424(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v24 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v28 = a2 + 56;
    v25 = v8;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v27 = (v7 - 1) & v7;
LABEL_13:
        v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
        sub_1004DF26C();
        Library.Menu.Identifier.rawValue.getter(v12);
        sub_1004DD55C();

        v13 = sub_1004DF2BC();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "orites";
          switch(*(*(a2 + 48) + v15))
          {
            case 1:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v17 = 0xD000000000000023;
              v18 = "LibraryView.Playlists";
              break;
            case 3:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Artists";
              break;
            case 4:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Albums";
              break;
            case 5:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Songs";
              break;
            case 6:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.MadeForYou";
              break;
            case 7:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.MusicVideos";
              break;
            case 8:
              v17 = 0xD000000000000028;
              v18 = "LibraryView.Genres";
              break;
            case 9:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Compilations";
              break;
            case 0xA:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Composers";
              break;
            case 0xB:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Shows";
              break;
            case 0xC:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000029;
          v21 = "orites";
          switch(v12)
          {
            case 1:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v20 = 0xD000000000000023;
              v21 = "LibraryView.Playlists";
              break;
            case 3:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Artists";
              break;
            case 4:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Albums";
              break;
            case 5:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Songs";
              break;
            case 6:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.MadeForYou";
              break;
            case 7:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.MusicVideos";
              break;
            case 8:
              v20 = 0xD000000000000028;
              v21 = "LibraryView.Genres";
              break;
            case 9:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Compilations";
              break;
            case 10:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Composers";
              break;
            case 11:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Shows";
              break;
            case 12:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            break;
          }

          v22 = sub_1004DF08C();

          if (v22)
          {
            goto LABEL_47;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return 0;
          }
        }

LABEL_47:
        v8 = v25;
        v3 = a1;
        v7 = v27;
      }

      while (v27);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        JUMPOUT(0x1001B4868);
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v24 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t sub_1001B48D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
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
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004DF26C();
    ApplicationCapabilities.Service.rawValue.getter();
    sub_1004DD55C();

    v14 = sub_1004DF2BC();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x80000001004E9570;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x80000001004E95B0;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x80000001004E95D0;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x80000001004E95D0;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x80000001004E95B0;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x80000001004E9570;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = sub_1004DF08C();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_10014B5B0(a2);
  }

  else
  {
    sub_1001BBFA0(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_100151C94(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_1001BC6E4();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = sub_100151C94(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = sub_100151C94(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_1000551B8(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_10005D1BC(a2, a2, result);
  result = sub_1000551B8(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_10005D1BC(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3, v4);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  sub_1004D7ADC();
  swift_allocObject();
  sub_1004D7ACC();
  v11[2] = a3;
  sub_1001BC738();
  v5 = sub_1004D7ABC();
  v7 = v6;

  v11[3] = &type metadata for Data;
  v11[0] = v5;
  v11[1] = v7;
  v10[0] = 0x4D7972617262694CLL;
  v10[1] = 0xEB00000000756E65;
  sub_100010530(v5, v7);
  v8 = sub_100030C58();
  NSUserDefaults.subscript.setter(v11, v10, &type metadata for String, v8);
  return sub_100010598(v5, v7);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

uint64_t static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;
}

id Library.Menu.Request.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = &_swiftEmptySetSingleton;
    *(a1 + 40) = 257;
    *(a1 + 42) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v7 = result;
    BYTE8(v7) = 0;
    v8 = 0uLL;
    *&v9 = &_swiftEmptySetSingleton;
    WORD4(v9) = 257;
    BYTE10(v9) = 0;
    v10 = 0u;
    v11 = 0u;
    result = a1(&v7);
    v5 = v10;
    a2[2] = v9;
    a2[3] = v5;
    a2[4] = v11;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
      v4 = sub_1004DE5FC();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1004DC7AC();
  v4 = sub_1004DC5EC();
  return v4 & 1;
}

uint64_t sub_1001B5620(uint64_t *a1, uint64_t *a2)
{
  if ((a1[1] & 1) == 0)
  {
    if ((a2[1] & 1) == 0)
    {
      sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
      v2 = sub_1004DE5FC();
      return v2 & 1;
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  sub_1004DC7AC();
  v2 = sub_1004DC5EC();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_1001BC78C(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_1001BC798(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.excludedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = v0[6];
  sub_1001BC7A4(v1, v0[7], v0[8], v0[9]);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001BC804(v4[6], v4[7], v4[8], v4[9]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

double Library.Menu.Request.perform(_:_:)@<D0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v62 = a1;
  v7 = sub_1004DBECC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DBEBC();
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = sub_1004DC3AC();
  }

  else
  {
    v15 = v14;
  }

  v52 = v4[2];
  v53 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v60 = v7;
  v61 = a3;
  v58 = v10;
  v59 = v8;
  v57 = v13;
  v54 = v11;
  v55 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v56 = v16;
  *(v16 + 16) = v18;
  v63 = swift_allocObject();
  *(v63 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v51 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
    v33 = v27;
  }

  else
  {
    v32 = v27;
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v33;
  if (*(v4 + 41))
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  *(v35 + 24) = v23;
  *(v35 + 32) = v17;
  *(v35 + 40) = v34;
  v36 = v17;
  v37 = v52;
  v38 = v53;
  *(v35 + 48) = v53;
  *(v35 + 56) = v37;
  *(v35 + 64) = v20;
  *(v35 + 72) = v21;
  v40 = v55;
  v39 = v56;
  *(v35 + 80) = v63;
  *(v35 + 88) = v39;
  *(v35 + 96) = v62;
  *(v35 + 104) = v40;
  aBlock[4] = sub_1001BC93C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E1B40;
  v52 = _Block_copy(aBlock);
  v64 = _swiftEmptyArrayStorage;
  sub_1001BC7A4(v26, v51, v28, v32);
  sub_1001C6298(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v62 = v23;
  v41 = v36;
  v42 = v38;

  sub_100004CB8(&unk_100638950, &qword_10051B260);
  sub_100042B08(&qword_10063ACA0, &unk_100638950, &qword_10051B260, &protocol conformance descriptor for [A]);
  sub_1004DE92C();
  v43 = sub_1004DBF5C();
  swift_allocObject();
  v44 = sub_1004DBF3C();

  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v46 = v58;
  v45 = v59;
  v47 = v60;
  (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.userInteractive(_:), v60);
  v48 = sub_1004DE18C();
  (*(v45 + 8))(v46, v47);
  sub_1004DE16C();

  v49 = v61;
  v61[3] = v43;
  v49[4] = &protocol witness table for DispatchWorkItem;

  *v49 = v44;

  return result;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_1001BA534();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      sub_1004D7AAC();
      swift_allocObject();
      sub_1004D7A9C();
      sub_1001BC998();
      sub_1004D7A8C();
      sub_100010598(0x4D7972617262694CLL, 0xEB00000000756E65);

      return v6;
    }
  }

  else
  {
    sub_10001074C(&v6, &qword_100638E60, &unk_10051A920);
  }

  if (qword_100633D28 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();
  sub_100035430(v0, static Logger.libraryMenu);
  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No edits found — Returning stock menu revision", v3, 2u);
  }

  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  v4 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v4;
}

double sub_1001B617C(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_100633D20 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = *algn_100671D68;
    swift_beginAccess();
    v16 = a1[3];
    v104 = a7;
    if (sub_10010ACC0(a1[2], v15) & 1) != 0 && (sub_1001B4424(v16, v14))
    {
      break;
    }

    sub_1001B8AB4(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];
    v20 = a1[5];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19, v20);
    v101 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v21 = a4[2];
    if (!v21)
    {
      v105 = 0;
      goto LABEL_68;
    }

    v22 = 0;
    v105 = 0;
    v23 = a4 + 4;
LABEL_39:
    v32 = v22;
    while (v32 < v21)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_149;
      }

      v33 = *(v23 + v32);
      if (v33 <= 4)
      {
        if (*(v23 + v32) <= 1u)
        {
          if (*(v23 + v32))
          {
            v34 = v105 | 0xC0;
          }

          else
          {
            v34 = v105 | 0x41;
          }

LABEL_38:
          v105 = v34;
          if (v22 == v21)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v33)
        {
          case 2u:
            v34 = v105 | 2;
            goto LABEL_38;
          case 3u:
            v34 = v105 | 1;
            goto LABEL_38;
          case 4u:
            v34 = v105 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v23 + v32) > 7u)
      {
        switch(v33)
        {
          case 8u:
            v34 = v105 | 4;
            goto LABEL_38;
          case 9u:
            v34 = v105 | 8;
            goto LABEL_38;
          case 0xAu:
            v34 = v105 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v33)
        {
          case 5u:
            v34 = v105 | 0x400;
            goto LABEL_38;
          case 6u:
            v34 = v105 | 0x20;
            goto LABEL_38;
          case 7u:
            v34 = v105 | 0x10;
            goto LABEL_38;
        }
      }

      ++v32;
      if (v22 == v21)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v101 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v94 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v25 = *(v24 + 16);
  a1 = 0x80000001004EEE80;
  v105 = 0;
  v99 = v24 + 40;
LABEL_12:
  v27 = (v99 + 16 * a7);
  a3 = a7;
  while (v25 != a3)
  {
    if (a3 >= v25)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v29 = *(v27 - 1);
    v28 = *v27;
    v30 = v29 == 0xD000000000000014 && 0x80000001004EEEA0 == v28;
    if (v30 || (sub_1004DF08C() & 1) != 0)
    {
      v26 = 1247;
LABEL_11:
      v105 |= v26;
      goto LABEL_12;
    }

    if (v29 == 0xD00000000000001BLL && 0x80000001004EEE80 == v28 || (sub_1004DF08C() & 1) != 0)
    {
      v26 = 32;
      goto LABEL_11;
    }

    if (v29 == 0xD00000000000001ALL && 0x80000001004F02A0 == v28 || (sub_1004DF08C() & 1) != 0)
    {
      v26 = 256;
      goto LABEL_11;
    }

    if (v29 != 0xD000000000000015 || 0x80000001004F02C0 != v28)
    {
      a3 = (a3 + 1);
      v27 += 2;
      if ((sub_1004DF08C() & 1) == 0)
      {
        continue;
      }
    }

    v26 = 512;
    goto LABEL_11;
  }

  a7 = v104;
  if ([v94 selectionMode] == 2)
  {

    a1 = v101;
    a3 = a4;
  }

  else
  {
    v31 = [v94 selectionMode];

    v30 = v31 == 3;
    a1 = v101;
    a3 = a4;
    if (!v30)
    {
      goto LABEL_68;
    }
  }

  v105 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v100 = [a5 filterAvailableContentGroups:v105 withOptions:{a6, v91}];
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  v35 = static ApplicationCapabilities.Controller.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v35;
  sub_1004D9B6C();

  v118[4] = v114;
  v118[5] = v115;
  v118[6] = v116;
  v118[7] = v117;
  v118[0] = v110;
  v118[1] = v111;
  v118[2] = v112;
  v118[3] = v113;
  LODWORD(a4) = BYTE2(v110);
  if (v116 == 2)
  {
    v95 = 1;
  }

  else
  {
    v95 = sub_1004DF08C();
  }

  v36 = a3[2];

  v106 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v36)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v37 = 0;
  a3 += 4;
  LODWORD(v91) = (v100 & 0x300) != 0;
  HIDWORD(v91) = (v100 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v37;
    while (2)
    {
      if (a1 >= v36)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v37 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v38 = *(a1 + a3);
      if (sub_1001209B4(v38, a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v39 = v101[5];

        v40 = sub_1001209B4(v38, v39);

        if (v38 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v40 &= v95 & a4;
LABEL_100:
        v52 = (*(a9 + 16) ^ 1) & v40;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v40)
        {
          if (v38 > 6)
          {
            if (v38 > 9)
            {
              if ((v38 - 11) >= 2)
              {
                v52 = v91;
              }

              else
              {
                v52 = 1;
              }
            }

            else
            {
              if (v38 == 7)
              {
                v55 = -17;
              }

              else if (v38 == 8)
              {
                v55 = -5;
              }

              else
              {
                v55 = -9;
              }

LABEL_122:
              v52 = (v55 | v100) == -1;
            }
          }

          else if (v38 <= 2)
          {
            v52 = (v100 & 0x41) != 0;
            if (v38)
            {
              v52 = (v100 & 0xC0) != 0;
              if (v38 != 1)
              {
                v55 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v38 <= 4)
            {
              if (v38 == 3)
              {
                v55 = -2;
              }

              else
              {
                v55 = -129;
              }

              goto LABEL_122;
            }

            v52 = (v100 & 0x400) != 0;
            if (v38 != 5)
            {
              v55 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v40 = 1;
        if (v38 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v38 == 12)
        {
          v46 = [objc_opt_self() deviceMediaLibrary];
          if (v46)
          {
            v47 = v46;
            sub_100006F10(0, &qword_100638E30, MPMediaLibrary_ptr);
            v48 = v106;
            v49 = sub_1004DE5FC();
          }

          else
          {
            v49 = 0;
          }

          v50 = [objc_opt_self() sharedManager];
          v51 = [v50 hasActiveDownloads];

          if (v40)
          {
            v40 = v49 & v51;
            goto LABEL_100;
          }

          v52 = 0;
        }

        else
        {
          if (v38 != 11)
          {
            goto LABEL_100;
          }

          v41 = [objc_opt_self() deviceMediaLibrary];
          if (v41)
          {
            v42 = v41;
            sub_100006F10(0, &qword_100638E30, MPMediaLibrary_ptr);
            v43 = v106;
            v44 = sub_1004DE5FC();

            v45 = v44 ^ 1;
          }

          else
          {
            v45 = 1;
          }

          v53 = [objc_opt_self() sharedManager];
          v54 = [v53 hasActiveDownloads];

          v52 = 0;
          if ((v40 & 1) != 0 && (a6 & 2) == 0 && (v45 & 1) == 0)
          {
            v40 = (v100 != 0) | v54;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v52 &= v38 != 12;
      }

      a7 = v104;
      if ((v52 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v37 == v36)
        {
          a1 = v101;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_10003ACAC(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v101;
    v57 = *(a5 + 2);
    v56 = *(a5 + 3);
    if (v57 >= v56 >> 1)
    {
      a5 = sub_10003ACAC((v56 > 1), v57 + 1, 1, a5);
    }

    *(a5 + 2) = v57 + 1;
    a5[v57 + 32] = v38;
    if (v37 != v36)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v59 = a1[2];
  v58 = a1[3];
  v60 = a1[4];
  v61 = a1[5];
  *&v110 = a5;
  *(&v110 + 1) = a2;
  *&v111 = v59;
  *(&v111 + 1) = v58;
  *&v112 = v60;
  *(&v112 + 1) = v61;
  LOBYTE(v113) = 0;
  sub_100004CB8(&unk_1006372F0, &unk_10051B160);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100511B10;
  v63 = CFRange.init(_:)(0);
  v65 = v64;
  v67 = v66;
  *(v62 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v62 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v68 = swift_allocObject();
  *(v62 + 32) = v68;
  v68[1] = v63;
  v68[2].location = v65;
  v68[2].length = v67;
  v69 = qword_100633BE0;

  v103 = a2;
  if (v69 != -1)
  {
    swift_once();
  }

  v70 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v71.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v71.length = v92;
  v72 = CFRange.init(_:)(v71);
  *(v62 + 96) = &type metadata for NotificationTrigger;
  *(v62 + 104) = &protocol witness table for NotificationTrigger;
  *(v62 + 72) = v72;
  v73 = qword_100633BC0;
  swift_retain_n();
  v74 = v70;
  if (v73 != -1)
  {
    swift_once();
  }

  v75 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v76.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v76.length = v92;
  v77 = CFRange.init(_:)(v76);
  *(v62 + 136) = &type metadata for NotificationTrigger;
  *(v62 + 144) = &protocol witness table for NotificationTrigger;
  *(v62 + 112) = v77;
  v78.location = MPMediaLibraryDidChangeNotification;
  v78.length = v106;
  v79 = CFRange.init(_:)(v78);
  *(v62 + 176) = &type metadata for NotificationTrigger;
  *(v62 + 184) = &protocol witness table for NotificationTrigger;
  *(v62 + 152) = v79;
  v80 = v106;
  v81 = v75;
  v82 = MPMediaLibraryDidChangeNotification;
  if ((sub_1001209B4(12, v104) & 1) == 0)
  {
    if (qword_100633C58 != -1)
    {
      swift_once();
    }

    v83 = static MusicLibrary.downloadingStateDidChange;
    v84 = CFRange.init(_:)(static MusicLibrary.downloadingStateDidChange);
    v85 = *(v62 + 16);
    v86 = *(v62 + 24);
    v87 = v83;
    if (v85 >= v86 >> 1)
    {
      v62 = sub_10003ACC0((v86 > 1), v85 + 1, 1, v62);
    }

    v108 = &type metadata for NotificationTrigger;
    v109 = &protocol witness table for NotificationTrigger;
    v107 = v84;
    *(v62 + 16) = v85 + 1;
    sub_100035850(&v107.location, v62 + 40 * v85 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v88 = BindingRequestResponseInvalidation.init(triggers:)(v62);
  v89 = sub_1001C6298(&qword_100638E38, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  a11(&v110, v88, v89);

  sub_100073E60(v118);

  return result;
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (qword_100633D28 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_10051EEE8[a1];
  }
}

double sub_1001B71F4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_1001C5FAC, v6, a3);

  return result;
}

BOOL sub_1001B7284(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

unint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)(char a1, char a2)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  return v9;
}

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_1001B792C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(uint64_t a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  sub_100030C58();
  v2 = sub_1004DE82C();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B7B80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1001B7C08()
{
  v1 = *v0;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001B7C6C(uint64_t a1)
{
  Library.Menu.Identifier.rawValue.getter(*v1);
  sub_1004DD55C();
}

Swift::Int sub_1001B7CC0()
{
  v1 = *v0;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1001B7D20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001B7D50@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_100004CB8(&qword_100638CE8, &qword_10051E468);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_100008C70(a1, a1[3]);
  sub_1001C5374();
  sub_1004DF30C();
  v18 = a4;
  v20 = 1;
  sub_100004CB8(&qword_100638CF8, &qword_10051E470);
  sub_1001C5FF8(&qword_100638D00, sub_1001C53C8, &protocol conformance descriptor for <A> [A]);
  sub_1004DEF5C();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    sub_100004CB8(&qword_100638D10, &qword_10051E478);
    sub_1001C541C(&qword_100638D18, sub_1001C53C8, &protocol conformance descriptor for <> Set<A>);
    sub_1004DEF5C();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_1001C5494();
    sub_1004DEF5C();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1001B80D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004DF08C();
  }

  return v11 & 1;
}

Swift::Int sub_1001B81CC()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001B8268(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_1001B82F0()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1001B8388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C553C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1001B83B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001B8410()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

unint64_t sub_1001B8464@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C553C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B8498(uint64_t a1)
{
  v2 = sub_1001C5374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B84D4(uint64_t a1)
{
  v2 = sub_1001C5374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1001B8570()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1001B85B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1004DF08C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004DF08C();

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

uint64_t sub_1001B8694(uint64_t a1)
{
  v2 = sub_1001C54E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B86D0(uint64_t a1)
{
  v2 = sub_1001C54E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_10010ACC0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100004CB8(&qword_100638D28, &qword_10051E480);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_100008C70(a1, a1[3]);
  sub_1001C54E8();
  sub_1004DF30C();
  v14 = a2;
  v13 = 0;
  sub_100004CB8(&qword_100638CF8, &qword_10051E470);
  sub_1001C5FF8(&qword_100638D00, sub_1001C53C8, &protocol conformance descriptor for <A> [A]);
  sub_1004DEF5C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100004CB8(&qword_100638D10, &qword_10051E478);
    sub_1001C541C(&qword_100638D18, sub_1001C53C8, &protocol conformance descriptor for <> Set<A>);
    sub_1004DEF5C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001B899C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001C5588(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1001B89E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10010ACC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(v2, v3);
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1, uint64_t a2)
{

  return a1;
}

uint64_t MPCPlaybackEngine.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_1001B8AB4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_100633D28 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = sub_1004D966C();
    sub_100035430(v7, static Logger.libraryMenu);
    v8 = sub_1004D964C();
    v9 = sub_1004DDF9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = sub_1004D964C();
    v12 = sub_1004DDF9C();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = sub_1004DD4DC();
      v17 = sub_1000343A8(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      sub_100008D24(v14);
    }

    v18 = sub_1004D964C();
    v19 = sub_1004DDF9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = sub_1004DD4DC();
      v24 = sub_1000343A8(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      sub_100008D24(v21);
    }

    v5 = v46[2];

    v26 = sub_10014CF18(v25);

    v28 = sub_10014CF18(v27);

    if (*(v28 + 16) <= *(v26 + 16) >> 3)
    {
      v47 = v26;

      sub_1001C2B2C(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_1001C2C20(v28, v26);
    }

    if (*(v26 + 16) <= *(v28 + 16) >> 3)
    {
      v47 = v28;
      sub_1001C2B2C(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_1001C2C20(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = *(v26 + 16);

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      sub_1001B9418(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  sub_1001B3DA4(v6, &v49);

  sub_1001C429C(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (*(v6 + 2) <= *(v37 + 16) >> 3)
    {

      sub_1001C2B2C(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_1001C2C20(v6, v37);
    }

    v42 = sub_1001C4510(v29, a1, a2);

    v43 = sub_1001BA228(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_1001C61CC();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  sub_1001B90D0(v41, a1, a2);
}

void sub_1001B90D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_100633D28;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, static Logger.libraryMenu);
  v5 = sub_1004D964C();
  v6 = sub_1004DDF9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = sub_1004DD88C();
    v14 = v13;

    v15 = sub_1000343A8(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    sub_100008D24(v11);
  }

  else
  {
  }

  oslog = sub_1004D964C();
  v16 = sub_1004DDF9C();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_10014CF8C();
    v19 = sub_1004DDC4C();
    v21 = v20;

    v22 = sub_1000343A8(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    sub_100008D24(v18);
  }

  else
  {
  }
}

void *sub_1001B9418(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_100151C94(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = sub_1001B96E4(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (qword_100633D28 != -1)
      {
        swift_once();
      }

      v24 = sub_1004D966C();
      sub_100035430(v24, static Logger.libraryMenu);
      v16 = sub_1004D964C();
      v25 = sub_1004DDF9C();
      if (os_log_type_enabled(v16, v25))
      {
        v29 = v25;
        v26 = swift_slowAlloc();
        result = swift_slowAlloc();
        v28[0] = result;
        *v26 = 136315650;
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        if (v21 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v9 = result;
        v10 = Library.Menu.Identifier.description.getter(*(*a2 + v21 + 32));
        log = v16;
        v12 = v5;
        v13 = a2;
        v14 = v3;
        v15 = sub_1000343A8(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        sub_100008D24(v9);
      }

      swift_beginAccess();
      sub_1000551B8(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = sub_100151C94(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t sub_1001B96E4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "orites";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Playlists";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Artists";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Albums";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Songs";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.MadeForYou";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.MusicVideos";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Genres";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Compilations";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Composers";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Shows";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "orites";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Playlists";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Artists";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Albums";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Songs";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.MadeForYou";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.MusicVideos";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Genres";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Compilations";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Composers";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Shows";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = sub_1004DF08C();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_1001B9A44(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "orites";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Playlists";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Artists";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Albums";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Songs";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Genres";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Compilations";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Composers";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Shows";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Playlists";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Artists";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Albums";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Songs";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Genres";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Compilations";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Composers";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Shows";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = sub_1004DF08C();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = sub_10005D2F4(v4);
        }
      }

      v13 = sub_1004DF08C();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  sub_10005E45C(v6, v14);
  return swift_endAccess();
}

uint64_t sub_1001BA110(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  result = swift_beginAccess();
  do
  {
    if (a3 == v10)
    {
      return 13;
    }

    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (v10 < a3)
    {
      goto LABEL_11;
    }

    v13 = *a5;
    v14 = *(a2 + v10);

    v15 = sub_1001B3F54(v14, v13);
  }

  while (!v15);
  __chkstk_darwin();
  v16 = v10;
  result = sub_1001C6220(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001BA228(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1001BBFA0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
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

      return v12;
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

uint64_t static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10010ACC0(a1, a5) & 1) == 0 || (sub_1001B4424(a2, a6) & 1) == 0 || (sub_10010ACC0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(a4, a8);
}

void sub_1001BA3A4(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_1001C4CA4(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }
}

uint64_t sub_1001BA3F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_10010ACC0(*a1, *a2) & 1) == 0 || (sub_1001B4424(v2, v5) & 1) == 0 || (sub_10010ACC0(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B4424(v3, v6);
}

void *sub_1001BA490()
{
  result = sub_10003C76C(&off_1005D2B70);
  static Library.Menu.Revision.Version.current = &off_1005D2B40;
  *algn_100671D68 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_1001BA534()
{
  LOBYTE(v19[0]) = 0;
  v1 = sub_1001C6178();
  v2 = sub_100030C58();
  NSUserDefaults.subscript.getter(&v20);
  if (!*(&v21 + 1))
  {
    goto LABEL_8;
  }

  sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = v19[0];
  LOBYTE(v19[0]) = 1;
  NSUserDefaults.subscript.getter(&v20);
  if (!*(&v21 + 1))
  {
LABEL_7:

LABEL_8:
    sub_10001074C(&v20, &qword_100638E60, &unk_10051A920);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v4 = v19[0];
  v19[0] = 0x4D7972617262694CLL;
  v19[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(&v20);
  if (*(&v21 + 1))
  {

    goto LABEL_7;
  }

  sub_10001074C(&v20, &qword_100638E60, &unk_10051A920);
  if (qword_100633D20 != -1)
  {
    swift_once();
  }

  v5 = sub_1001C479C(v3, v4, static Library.Menu.Revision.Version.current, *algn_100671D68);
  if (v0)
  {

    if (qword_100633D28 != -1)
    {
      swift_once();
    }

    v9 = sub_1004D966C();
    sub_100035430(v9, static Logger.libraryMenu);
    swift_errorRetain();
    v10 = sub_1004D964C();
    v11 = sub_1004DDF7C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *&v20 = v0;
      swift_errorRetain();
      sub_100004CB8(&qword_100638980, &qword_100515B30);
      sub_1004DD4DC();
      v14 = sub_1004DD3FC();

      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to migrate legacy library menu: %@", v12, 0xCu);
      sub_10001074C(v13, &qword_100636460, &qword_100518BE0);
    }

    else
    {
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;

    NSUserDefaults.libraryMenuRevision.setter(v15, v16, v17, v18);
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v19[0]) = 0;
    NSUserDefaults.subscript.setter(&v20, v19, &_s9LegacyKeyON, v1, v2);
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v19[0]) = 1;
    NSUserDefaults.subscript.setter(&v20, v19, &_s9LegacyKeyON, v1, v2);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1001BA9AC;
}

void sub_1001BA9AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v4, v3, v5, v6);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v3, v5, v6);
  }

  free(v2);
}

uint64_t sub_1001BAA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "loading";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "loading";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1001BAB18()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001BAB94(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_1001BABFC()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001BAC74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D2D58;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1001BACD4(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "loading";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1001BAD10()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.libraryMenu);
  sub_100035430(v0, static Logger.libraryMenu);
  return sub_1004D965C();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633D28 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1006341B8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_100634168 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_100634178 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_1006341C0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_1006341A8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_1006341B0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_1006341A0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_100634188 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_100634180 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_1006341C8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_100634190 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_100634198 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_100634160 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1001BB1E4(char *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v2;
  sub_1004DF26C();
  ActionType.rawValue.getter(v4);
  sub_1004DD55C();

  v7 = sub_1004DF2BC();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(v4) && v13 == v14)
      {
        break;
      }

      v16 = sub_1004DF08C();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    v4 = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1001C0D0C(v4, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1001BB36C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1004DF26C();
  ApplicationCapabilities.Service.rawValue.getter();
  sub_1004DD55C();

  v5 = sub_1004DF2BC();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004E9570;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004E95B0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004E95D0;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (v3 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (v3 == 9)
      {
        v16 = 0x80000001004E95D0;
      }

      if (v3 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004E95B0;
      }

      v17 = 0x746963696C707865;
      if (v3 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (v3 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (v3 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (v3 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v3 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (v3 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v3 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004E9570;
      }

      if (v3)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (v3)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (v3 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v3 <= 4u ? v19 : v15;
      v24 = v3 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_1004DF08C();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    v3 = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    sub_1001C0EF4(v3, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1001BB774(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004DC7EC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v33 = a2;
  v11 = sub_1004DD2AC();
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
      sub_1001C6298(&qword_100637C00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = sub_1004DD35C();
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
    sub_1001C1358(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1001BBA54(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v7 = sub_1004DF2BC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1004DD43C();
      v13 = v12;
      if (v11 == sub_1004DD43C() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1004DF08C();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1001C15FC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1001BBC00(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1004DF26C();
  v7 = a2 & 1;
  sub_1004DF27C(a2 & 1);
  v8 = sub_1004DF2BC();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1001C17E4(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1001BBD00(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1004DE9DC();

    if (v8)
    {

      sub_1004D9ABC();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1004DE9BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1001C09F0(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1001BFC7C(v17 + 1);
    }

    sub_1001C0C24(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1004D9ABC();
  sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = sub_1004DD2AC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1001C1938(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1001C6298(&qword_100635040, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((sub_1004DD35C() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1001BBFA0(char *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(v3);
  sub_1004DD55C();

  v5 = sub_1004DF2BC();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "orites";
      switch(v3)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = sub_1004DF08C();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_1001C1B20(v3, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1001BC3BC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  sub_1004DF26C();
  sub_1004DF27C(v3);
  v6 = sub_1004DF2BC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != v3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001C1F8C(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1001BC4B4(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1004DF25C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001C20EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001BC594(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004DF26C();
  sub_1004DD55C();
  v8 = sub_1004DF2BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004DF08C() & 1) != 0)
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

    sub_1001C220C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_1001BC6E4()
{
  result = qword_100638CD0;
  if (!qword_100638CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638CD0);
  }

  return result;
}

unint64_t sub_1001BC738()
{
  result = qword_100638CD8;
  if (!qword_100638CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638CD8);
  }

  return result;
}

void sub_1001BC78C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    v2 = a1;
  }
}

void sub_1001BC798(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_1001BC7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1001BC804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001BC874()
{

  return swift_deallocObject();
}

uint64_t sub_1001BC8C4()
{

  return swift_deallocObject();
}

double sub_1001BC980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1001BC998()
{
  result = qword_100638CE0;
  if (!qword_100638CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638CE0);
  }

  return result;
}

void sub_1001BCA00()
{
  v1 = v0;
  v2 = sub_1004DC7EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638E48, &qword_10051ED78);
  v6 = *v0;
  v7 = sub_1004DEA5C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
}

void sub_1001BCC38()
{
  v1 = v0;
  sub_100004CB8(&qword_100638DC0, &qword_10051ECF0);
  v2 = *v0;
  v3 = sub_1004DEA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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
}

void sub_1001BCD88()
{
  v1 = v0;
  sub_100004CB8(&qword_100638E40, &qword_10051ED70);
  v2 = *v0;
  v3 = sub_1004DEA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1001BCEC8()
{
  v1 = v0;
  sub_100004CB8(&qword_100635030, &qword_1005157B0);
  v2 = *v0;
  v3 = sub_1004DEA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_1001BD02C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100004CB8(a1, a2);
  v4 = *v2;
  v5 = sub_1004DEA5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1001BD15C()
{
  v1 = v0;
  sub_100004CB8(&qword_100638DD8, &unk_10051ED00);
  v2 = *v0;
  v3 = sub_1004DEA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1001BD29C()
{
  v1 = v0;
  sub_100004CB8(&qword_100638DB8, &unk_10051ECE0);
  v2 = *v0;
  v3 = sub_1004DEA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1001BD3F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_1006350B8, &qword_10051ED80);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004DF26C();
      ActionType.rawValue.getter(v16);
      sub_1004DD55C();

      v17 = sub_1004DF2BC();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_1001BD634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DC8, &qword_10051ECF8);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DD55C();

      v12 = sub_1004DF2BC();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_1001BD9E0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1004DC7EC();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100004CB8(&qword_100638E48, &qword_10051ED78);
  v7 = sub_1004DEA6C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = sub_1004DD2AC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_1001BDCFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DC0, &qword_10051ECF0);
  v4 = sub_1004DEA6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004DD43C();
      sub_1004DF26C();
      v18 = v17;
      sub_1004DD55C();
      v19 = sub_1004DF2BC();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
}

void sub_1001BDF50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638E40, &qword_10051ED70);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DF27C(v16);
      v17 = sub_1004DF2BC();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_1001BE170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100635030, &qword_1005157B0);
  v4 = sub_1004DEA6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004D9ABC();
      sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v18 = sub_1004DD2AC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
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
}

void sub_1001BE3E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100635018, &unk_100515790);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DD55C();

      v12 = sub_1004DF2BC();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1001BE790);
      }

      if (v6 >= v10)
      {
        break;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
}

void sub_1001BE7C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100634FF8, &qword_100515770);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DF27C(v16);
      v17 = sub_1004DF2BC();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_1001BE9E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DD8, &unk_10051ED00);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1004DF25C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1001BEBD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DB8, &unk_10051ECE0);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004DF26C();

      sub_1004DD55C();
      v20 = sub_1004DF2BC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1001BEE0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_1006350B8, &qword_10051ED80);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004DF26C();
      ActionType.rawValue.getter(v17);
      sub_1004DD55C();

      v18 = sub_1004DF2BC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001BF078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DC8, &qword_10051ECF8);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DD55C();

      v13 = sub_1004DF2BC();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001BF454(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1004DC7EC();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100004CB8(&qword_100638E48, &qword_10051ED78);
  v6 = sub_1004DEA6C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = sub_1004DD2AC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1001BF7B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DC0, &qword_10051ECF0);
  v4 = sub_1004DEA6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004DD43C();
      sub_1004DF26C();
      sub_1004DD55C();
      v18 = sub_1004DF2BC();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001BFA2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638E40, &qword_10051ED70);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DF27C(v17);
      v18 = sub_1004DF2BC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001BFC7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100635030, &qword_1005157B0);
  v4 = sub_1004DEA6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004D9ABC();
      sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      v18 = sub_1004DD2AC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001BFF10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100635018, &unk_100515790);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DD55C();

      v13 = sub_1004DF2BC();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v23 && (v22 & 1) != 0)
          {
            goto LABEL_31;
          }

          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
        }

        while (v25 == -1);
        v17 = __clz(__rbit64(~v25)) + (v16 << 6);
      }

      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1001C02E8);
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001C031C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100634FF8, &qword_100515770);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DF27C(v17);
      v18 = sub_1004DF2BC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001C056C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DD8, &unk_10051ED00);
  v4 = sub_1004DEA6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1004DF25C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001C0790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100638DB8, &unk_10051ECE0);
  v4 = sub_1004DEA6C();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1004DF26C();
      sub_1004DD55C();
      v21 = sub_1004DF2BC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_1001C09F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100635030, &qword_1005157B0);
    v2 = sub_1004DEA7C();
    v15 = v2;
    sub_1004DE98C();
    if (sub_1004DE9EC())
    {
      sub_1004D9ABC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1001BFC7C(v9 + 1);
        }

        v2 = v15;
        sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = sub_1004DD2AC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1004DE9EC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_1001C0C24(uint64_t a1, uint64_t a2)
{
  sub_1004D9ABC();
  sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  sub_1004DD2AC();
  result = sub_1004DE96C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1001C0D0C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1001BEE0C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001BD02C(&qword_1006350B8, &qword_10051ED80);
      goto LABEL_16;
    }

    sub_1001BD3F8(v7 + 1);
  }

  v9 = *v3;
  sub_1004DF26C();
  ActionType.rawValue.getter(a1);
  sub_1004DD55C();

  v10 = sub_1004DF2BC();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = ActionType.rawValue.getter(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == ActionType.rawValue.getter(a1) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1004DF08C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1004DF15C();
  __break(1u);
}

void sub_1001C0EF4(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_84;
  }

  if (a3)
  {
    sub_1001BF078(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1001BD02C(&qword_100638DC8, &qword_10051ECF8);
      goto LABEL_84;
    }

    sub_1001BD634(v5 + 1);
  }

  v7 = *v3;
  sub_1004DF26C();
  ApplicationCapabilities.Service.rawValue.getter();
  sub_1004DD55C();

  v8 = sub_1004DF2BC();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v9;
    v10 = 0xEB00000000736F65;
    v11 = 0x80000001004E9570;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 <= 4)
      {
        if (v12 == 3)
        {
          v15 = 0x6C6169636F73;
        }

        else
        {
          v15 = 0x6F69646172;
        }

        if (v12 == 3)
        {
          v16 = 0xE600000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 == 2)
        {
          v15 = 0xD000000000000013;
          v16 = v11;
        }

        v17 = *(*(v7 + 48) + a2) ? 0x646956636973756DLL : 0x636973756DLL;
        v18 = *(*(v7 + 48) + a2) ? v10 : 0xE500000000000000;
        v13 = *(*(v7 + 48) + a2) <= 1u ? v17 : v15;
        v14 = *(*(v7 + 48) + a2) <= 1u ? v18 : v16;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v12 == 8)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001004E95B0;
        }

        else if (v12 == 9)
        {
          v13 = 0xD000000000000011;
          v14 = 0x80000001004E95D0;
        }

        else
        {
          v13 = 0x6C62616E45696C6DLL;
          v14 = 0xEA00000000006465;
        }
      }

      else if (v12 == 5)
      {
        v14 = 0xE600000000000000;
        v13 = 0x73656E757469;
      }

      else if (v12 == 6)
      {
        v13 = 0x74634170756F7267;
        v14 = 0xED00007974697669;
      }

      else
      {
        v13 = 0x746963696C707865;
        v14 = 0xEF746E65746E6F43;
      }

      v19 = 0xD000000000000011;
      if (a1 != 9)
      {
        v19 = 0x6C62616E45696C6DLL;
      }

      v20 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v20 = 0x80000001004E95D0;
      }

      if (a1 == 8)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004E95B0;
      }

      v21 = 0x746963696C707865;
      if (a1 == 6)
      {
        v21 = 0x74634170756F7267;
      }

      v22 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v22 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v21 = 0x73656E757469;
        v22 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v19 = v21;
        v20 = v22;
      }

      if (a1 == 3)
      {
        v23 = 0x6C6169636F73;
      }

      else
      {
        v23 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v24 = 0xE600000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v23 = 0xD000000000000013;
      }

      v25 = v11;
      if (a1 == 2)
      {
        v24 = v11;
      }

      if (a1)
      {
        v26 = 0x646956636973756DLL;
      }

      else
      {
        v26 = 0x636973756DLL;
      }

      v27 = v10;
      if (!a1)
      {
        v10 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v23 = v26;
        v24 = v10;
      }

      v28 = a1 <= 4u ? v23 : v19;
      v29 = a1 <= 4u ? v24 : v20;
      if (v13 == v28 && v14 == v29)
      {
        goto LABEL_87;
      }

      v30 = sub_1004DF08C();

      if (v30)
      {
        goto LABEL_88;
      }

      a2 = (a2 + 1) & v36;
      v10 = v27;
      v11 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_84:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = a1;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return;
  }

  __break(1u);
LABEL_87:

LABEL_88:
  sub_1004DF15C();
  __break(1u);
}

uint64_t sub_1001C1358(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1004DC7EC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001BF454(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001BCA00();
      goto LABEL_12;
    }

    sub_1001BD9E0(v11 + 1);
  }

  v13 = *v3;
  sub_1001C6298(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v14 = sub_1004DD2AC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1001C6298(&qword_100637C00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v22 = sub_1004DD35C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

void sub_1001C15FC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1001BF7B0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001BCC38();
      goto LABEL_16;
    }

    sub_1001BDCFC(v7 + 1);
  }

  v9 = *v3;
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v10 = sub_1004DF2BC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    _s3__C4NameVMa_0(0);
    do
    {
      v13 = sub_1004DD43C();
      v15 = v14;
      if (v13 == sub_1004DD43C() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1004DF08C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1004DF15C();
  __break(1u);
}

void sub_1001C17E4(char a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001BFA2C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001BCD88();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001BDF50(v5 + 1);
  }

  v8 = *v3;
  sub_1004DF26C();
  sub_1004DF27C(a1 & 1);
  v9 = sub_1004DF2BC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (a1 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = a1 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_1001C1938(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001BFC7C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001BCEC8();
      goto LABEL_12;
    }

    sub_1001BE170(v6 + 1);
  }

  v8 = *v3;
  sub_1004D9ABC();
  sub_1001C6298(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v9 = sub_1004DD2AC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1001C6298(&qword_100635040, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    while ((sub_1004DD35C() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_1001C1B20(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001BFF10(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1001BD02C(&qword_100635018, &unk_100515790);
        goto LABEL_40;
      }

      sub_1001BE3E8(v6 + 1);
    }

    v8 = *v3;
    sub_1004DF26C();
    Library.Menu.Identifier.rawValue.getter(a1);
    sub_1004DD55C();

    v9 = sub_1004DF2BC();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (1)
      {
        v12 = 0xD000000000000029;
        v13 = "orites";
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xD000000000000025;
            v13 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v12 = 0xD000000000000023;
            v13 = "LibraryView.Playlists";
            break;
          case 3:
            v12 = 0xD000000000000022;
            v13 = "LibraryView.Artists";
            break;
          case 4:
            v12 = 0xD000000000000021;
            v13 = "LibraryView.Albums";
            break;
          case 5:
            v12 = 0xD000000000000026;
            v13 = "LibraryView.Songs";
            break;
          case 6:
            v12 = 0xD000000000000027;
            v13 = "LibraryView.MadeForYou";
            break;
          case 7:
            v12 = 0xD000000000000022;
            v13 = "LibraryView.MusicVideos";
            break;
          case 8:
            v12 = 0xD000000000000028;
            v13 = "LibraryView.Genres";
            break;
          case 9:
            v12 = 0xD000000000000025;
            v13 = "LibraryView.Compilations";
            break;
          case 0xA:
            v12 = 0xD000000000000021;
            v13 = "LibraryView.Composers";
            break;
          case 0xB:
            v12 = 0xD000000000000026;
            v13 = "LibraryView.Shows";
            break;
          case 0xC:
            v12 = 0xD000000000000027;
            v13 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v14 = v13 | 0x8000000000000000;
        v15 = 0xD000000000000029;
        v16 = "orites";
        switch(a1)
        {
          case 1:
            v15 = 0xD000000000000025;
            v16 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v15 = 0xD000000000000023;
            v16 = "LibraryView.Playlists";
            break;
          case 3:
            v15 = 0xD000000000000022;
            v16 = "LibraryView.Artists";
            break;
          case 4:
            v15 = 0xD000000000000021;
            v16 = "LibraryView.Albums";
            break;
          case 5:
            v15 = 0xD000000000000026;
            v16 = "LibraryView.Songs";
            break;
          case 6:
            v15 = 0xD000000000000027;
            v16 = "LibraryView.MadeForYou";
            break;
          case 7:
            v15 = 0xD000000000000022;
            v16 = "LibraryView.MusicVideos";
            break;
          case 8:
            v15 = 0xD000000000000028;
            v16 = "LibraryView.Genres";
            break;
          case 9:
            v15 = 0xD000000000000025;
            v16 = "LibraryView.Compilations";
            break;
          case 10:
            v15 = 0xD000000000000021;
            v16 = "LibraryView.Composers";
            break;
          case 11:
            v15 = 0xD000000000000026;
            v16 = "LibraryView.Shows";
            break;
          case 12:
            v15 = 0xD000000000000027;
            v16 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v12 == v15 && v14 == (v16 | 0x8000000000000000))
        {
          break;
        }

        v17 = sub_1004DF08C();

        if (v17)
        {
          goto LABEL_44;
        }

        a2 = (a2 + 1) & v11;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_43:

LABEL_44:
      sub_1004DF15C();
      __break(1u);
      JUMPOUT(0x1001C1F24);
    }
  }

LABEL_40:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v18 + 16) = v21;
}

void sub_1001C1F8C(unsigned __int8 a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001C031C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001BD02C(&qword_100634FF8, &qword_100515770);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001BE7C4(v5 + 1);
  }

  v8 = *v3;
  sub_1004DF26C();
  sub_1004DF27C(v4);
  v9 = sub_1004DF2BC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}