char *sub_10005CB8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10005CBAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10005CBAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100052CBC(&qword_10010DEB8, &qword_1000D2080);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10005CCBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v124 = a4;
  v129 = a3;
  v125 = a2;
  v128 = sub_1000C9684();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128, v4, v5);
  v126 = &v123[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_1000C96D4();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132, v7, v8);
  v130 = &v123[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_1000C9434();
  v10 = *(v159 - 8);
  __chkstk_darwin(v159, v11, v12);
  v158 = &v123[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_1000C9A24();
  v14 = *(v162 - 8);
  v17 = __chkstk_darwin(v162, v15, v16);
  v19 = &v123[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v20, v21);
  v23 = &v123[-v22];
  v140 = sub_1000C9A54();
  v24 = *(v140 - 8);
  __chkstk_darwin(v140, v25, v26);
  v142 = &v123[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1000C9824();
  v138 = result[2];
  if (v138)
  {
    v151 = v19;
    v29 = 0;
    v136 = result + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v135 = v24 + 16;
    v156 = (v10 + 16);
    v157 = v14 + 16;
    v155 = (v10 + 8);
    v154 = (v14 + 8);
    v137 = v24;
    v133 = (v24 + 8);
    v30 = _swiftEmptyArrayStorage;
    v144 = v14;
    v150 = v23;
    v134 = result;
    while (v29 < result[2])
    {
      v141 = v30;
      v31 = *(v137 + 72);
      v139 = v29;
      (*(v137 + 16))(v142, &v136[v31 * v29], v140);
      v169 = _swiftEmptyArrayStorage;
      v32 = sub_1000C9A44();
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v149 = v32;
        v35 = v32 + v34;
        v152 = *(v14 + 72);
        v153 = *(v14 + 16);
        do
        {
          v36 = v35;
          v153(v23);
          time.value = sub_1000C9A14();
          *&time.timescale = v37;
          v167 = 9404642;
          v168 = 0xA300000000000000;
          v165 = 0;
          v166 = 0xE000000000000000;
          sub_10005E8CC();
          v38 = sub_1000C9D94();
          v40 = v39;

          time.value = v38;
          *&time.timescale = v40;
          v41 = sub_10005F248();
          v43 = v158;
          v42 = v159;
          (*v156)(v158, v41, v159);
          sub_1000C9D84();
          (*v155)(v43, v42);

          time.value = sub_1000C9A04();
          time.timescale = v44;
          time.flags = v45;
          time.epoch = v46;
          Seconds = CMTimeGetSeconds(&time);
          time.value = sub_1000C99F4();
          time.timescale = v48;
          time.flags = v49;
          time.epoch = v50;
          v51 = CMTimeGetSeconds(&time);
          time.value = sub_1000C99A4();
          time.timescale = v52;
          time.flags = v53;
          time.epoch = v54;
          v55 = CMTimeGetSeconds(&time);
          sub_1000C9994();
          v57 = v56;
          LOBYTE(v42) = sub_1000C99B4();
          LODWORD(v161) = sub_1000C99D4();
          sub_1000C99C4();
          sub_1000C99E4();
          (*v154)(v23, v162);
          v160 = objc_allocWithZone(SRDTranscriptionToken);
          v58 = sub_1000C9AF4();

          v59 = sub_1000C9AF4();

          v60 = sub_1000C9AF4();

          v61 = [v160 initWithTokenName:v58 start:v42 & 1 end:v161 & 1 silenceStart:v59 confidence:v60 hasSpaceAfter:Seconds hasSpaceBefore:v51 phoneSequence:v55 ipaPhoneSequence:v57];

          v62 = v61;
          sub_1000C9B54();
          if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000C9B94();
          }

          sub_1000C9BB4();

          v35 = v36 + v152;
          --v33;
          v23 = v150;
        }

        while (v33);
        v63 = v169;

        v14 = v144;
      }

      else
      {

        v63 = _swiftEmptyArrayStorage;
      }

      v64 = sub_10005CA54(0, 1, 1, _swiftEmptyArrayStorage, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
      v66 = v64[2];
      v65 = v64[3];
      v67 = v151;
      if (v66 >= v65 >> 1)
      {
        v64 = sub_10005CA54((v65 > 1), v66 + 1, 1, v64, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
      }

      v64[2] = v66 + 1;
      v64[v66 + 4] = v63;
      result = sub_1000C9A34();
      v146 = result[2];
      if (v146)
      {
        v68 = 0;
        v145 = result + 4;
        v143 = result;
        while (v68 < result[2])
        {
          v69 = v145[v68];
          v163 = _swiftEmptyArrayStorage;
          v70 = *(v69 + 16);
          if (v70)
          {
            v148 = v68;
            v149 = v64;
            v71 = (v69 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
            v152 = *(v14 + 72);
            v153 = *(v14 + 16);
            v147 = v69;

            do
            {
              v161 = v70;
              (v153)(v67, v71, v162);
              time.value = sub_1000C9A14();
              *&time.timescale = v72;
              v167 = 9404642;
              v168 = 0xA300000000000000;
              v165 = 0;
              v166 = 0xE000000000000000;
              sub_10005E8CC();
              v73 = sub_1000C9D94();
              v75 = v74;

              time.value = v73;
              *&time.timescale = v75;
              v76 = sub_10005F248();
              v78 = v158;
              v77 = v159;
              (*v156)(v158, v76, v159);
              sub_1000C9D84();
              (*v155)(v78, v77);

              time.value = sub_1000C9A04();
              time.timescale = v79;
              time.flags = v80;
              time.epoch = v81;
              v82 = CMTimeGetSeconds(&time);
              time.value = sub_1000C99F4();
              time.timescale = v83;
              time.flags = v84;
              time.epoch = v85;
              v86 = CMTimeGetSeconds(&time);
              time.value = sub_1000C99A4();
              time.timescale = v87;
              time.flags = v88;
              time.epoch = v89;
              v90 = CMTimeGetSeconds(&time);
              v160 = v71;
              sub_1000C9994();
              v92 = v91;
              v93 = sub_1000C99B4();
              LOBYTE(v75) = sub_1000C99D4();
              sub_1000C99C4();
              sub_1000C99E4();
              (*v154)(v67, v162);
              v94 = objc_allocWithZone(SRDTranscriptionToken);
              v95 = sub_1000C9AF4();

              v96 = sub_1000C9AF4();

              v97 = sub_1000C9AF4();

              v98 = [v94 initWithTokenName:v95 start:v93 & 1 end:v75 & 1 silenceStart:v96 confidence:v97 hasSpaceAfter:v82 hasSpaceBefore:v86 phoneSequence:v90 ipaPhoneSequence:v92];

              v99 = v98;
              sub_1000C9B54();
              if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1000C9B94();
              }

              sub_1000C9BB4();

              v71 = &v160[v152];
              v70 = v161 - 1;
              v67 = v151;
            }

            while (v161 != 1);
            v100 = v163;

            v14 = v144;
            v23 = v150;
            v64 = v149;
            result = v143;
            v68 = v148;
          }

          else
          {
            v100 = _swiftEmptyArrayStorage;
          }

          v102 = v64[2];
          v101 = v64[3];
          if (v102 >= v101 >> 1)
          {
            v103 = result;
            v64 = sub_10005CA54((v101 > 1), v102 + 1, 1, v64, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
            result = v103;
          }

          ++v68;
          v64[2] = v102 + 1;
          v64[v102 + 4] = v100;
          if (v68 == v146)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        break;
      }

LABEL_26:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v104 = v141;
      }

      else
      {
        v104 = sub_10005CA54(0, v141[2] + 1, 1, v141, &unk_10010DED0, &qword_1000D1D38, &qword_10010DEA0, &qword_1000D1D20);
      }

      v106 = v104[2];
      v105 = v104[3];
      if (v106 >= v105 >> 1)
      {
        v104 = sub_10005CA54((v105 > 1), v106 + 1, 1, v104, &unk_10010DED0, &qword_1000D1D38, &qword_10010DEA0, &qword_1000D1D20);
      }

      v107 = v139 + 1;
      (*v133)(v142, v140);
      v30 = v104;
      v104[2] = v106 + 1;
      v29 = v107;
      v104[v106 + 4] = v64;
      result = v134;
      if (v107 == v138)
      {

        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {

    v104 = _swiftEmptyArrayStorage;
LABEL_34:
    v108 = v130;
    v109 = v127;
    v110 = v126;
    v111 = v128;
    (*(v127 + 104))(v126, enum case for VCLogging.Category.ASR(_:), v128);
    sub_1000C9674();
    (*(v109 + 8))(v110, v111);
    v112 = v129;

    v113 = sub_1000C96A4();
    v114 = sub_1000C9CC4();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      time.value = swift_slowAlloc();
      *v115 = 136315651;
      if (v124)
      {
        v116 = 0x526C616974726170;
      }

      else
      {
        v116 = 0x7365526C616E6966;
      }

      if (v124)
      {
        v117 = 0xED0000746C757365;
      }

      else
      {
        v117 = 0xEB00000000746C75;
      }

      v118 = sub_100050ED0(v116, v117, &time.value);

      *(v115 + 4) = v118;
      *(v115 + 12) = 2080;
      *(v115 + 14) = sub_100050ED0(v125, v112, &time.value);
      *(v115 + 22) = 2085;

      sub_100052CBC(&qword_10010DEA0, &qword_1000D1D20);
      v119 = sub_1000C9B84();
      v121 = v120;

      v122 = sub_100050ED0(v119, v121, &time.value);

      *(v115 + 24) = v122;
      _os_log_impl(&_mh_execute_header, v113, v114, "SpeechAnalyzer: %s %s token sausage %{sensitive}s", v115, 0x20u);
      swift_arrayDestroy();
    }

    (*(v131 + 8))(v108, v132);
    return v104;
  }

  return result;
}

uint64_t sub_10005DCB4()
{
  v60 = sub_1000C9434();
  v0 = *(v60 - 8);
  __chkstk_darwin(v60, v1, v2);
  v59 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000C9A24();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66, v5, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000C9804();
  v10 = result;
  v51 = *(result + 16);
  if (v51)
  {
    v63 = v8;
    v11 = 0;
    v50 = result + 32;
    v58 = v4 + 16;
    v57 = (v0 + 16);
    v56 = (v0 + 8);
    v55 = (v4 + 8);
    v12 = _swiftEmptyArrayStorage;
    v49 = v4;
    v48 = result;
    while (v11 < *(v10 + 16))
    {
      v13 = *(v50 + 8 * v11);
      v72 = _swiftEmptyArrayStorage;
      v14 = *(v13 + 16);
      if (v14)
      {
        v53 = v12;
        v54 = v11;
        v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v16 = *(v4 + 16);
        v61 = *(v4 + 72);
        v62 = v16;
        v52 = v13;

        v17 = v63;
        do
        {
          v65 = v14;
          v62(v17, v15, v66);
          time.value = sub_1000C9A14();
          *&time.timescale = v18;
          v70 = 9404642;
          v71 = 0xA300000000000000;
          v68 = 0;
          v69 = 0xE000000000000000;
          sub_10005E8CC();
          v19 = sub_1000C9D94();
          v21 = v20;

          time.value = v19;
          *&time.timescale = v21;
          v22 = sub_10005F248();
          v24 = v59;
          v23 = v60;
          (*v57)(v59, v22, v60);
          sub_1000C9D84();
          (*v56)(v24, v23);

          time.value = sub_1000C9A04();
          time.timescale = v25;
          time.flags = v26;
          time.epoch = v27;
          Seconds = CMTimeGetSeconds(&time);
          time.value = sub_1000C99F4();
          time.timescale = v29;
          time.flags = v30;
          time.epoch = v31;
          v32 = CMTimeGetSeconds(&time);
          time.value = sub_1000C99A4();
          time.timescale = v33;
          time.flags = v34;
          time.epoch = v35;
          v36 = CMTimeGetSeconds(&time);
          sub_1000C9994();
          v38 = v37;
          v64 = sub_1000C99B4();
          LOBYTE(v23) = sub_1000C99D4();
          sub_1000C99C4();
          sub_1000C99E4();
          (*v55)(v17, v66);
          v39 = objc_allocWithZone(SRDTranscriptionToken);
          v40 = sub_1000C9AF4();

          v41 = sub_1000C9AF4();

          v42 = sub_1000C9AF4();

          v43 = [v39 initWithTokenName:v40 start:v64 & 1 end:v23 & 1 silenceStart:v41 confidence:v42 hasSpaceAfter:Seconds hasSpaceBefore:v32 phoneSequence:v36 ipaPhoneSequence:v38];

          v44 = v43;
          sub_1000C9B54();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000C9B94();
          }

          sub_1000C9BB4();

          v15 += v61;
          v14 = v65 - 1;
          v17 = v63;
        }

        while (v65 != 1);
        v45 = v72;

        v4 = v49;
        v10 = v48;
        v11 = v54;
        v12 = v53;
      }

      else
      {
        v45 = _swiftEmptyArrayStorage;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10005CA54(0, v12[2] + 1, 1, v12, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
        v12 = result;
      }

      v47 = v12[2];
      v46 = v12[3];
      if (v47 >= v46 >> 1)
      {
        result = sub_10005CA54((v46 > 1), v47 + 1, 1, v12, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
        v12 = result;
      }

      ++v11;
      v12[2] = v47 + 1;
      v12[v47 + 4] = v45;
      if (v11 == v51)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10005E2F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = a2;
  v6 = sub_1000C9684();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6, v7, v8);
  v60 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C96D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12, v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000C9454();
  __chkstk_darwin(v70, v16, v17);
  v69 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1000C9464();
  v19 = *(v68 - 8);
  __chkstk_darwin(v68, v20, v21);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000C97F4();
  v25 = *(v24 + 16);
  v63 = v15;
  v64 = v10;
  if (v25)
  {
    v56 = a4;
    v57 = a3;
    v58 = v11;
    v71 = _swiftEmptyArrayStorage;
    v26 = v24;
    sub_10005CB8C(0, v25, 0);
    v27 = v71;
    v29 = *(v19 + 16);
    v28 = v19 + 16;
    v30 = *(v28 + 64);
    v55[1] = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v65 = *(v28 + 56);
    v66 = v29;
    v67 = v28;
    v32 = (v28 - 8);
    do
    {
      v33 = v68;
      v66(v23, v31, v68);
      sub_1000C9444();
      sub_10005E874();
      v34 = sub_1000C9B44();
      v36 = v35;
      (*v32)(v23, v33);
      v71 = v27;
      v38 = v27[2];
      v37 = v27[3];
      if (v38 >= v37 >> 1)
      {
        sub_10005CB8C((v37 > 1), v38 + 1, 1);
        v27 = v71;
      }

      v27[2] = v38 + 1;
      v39 = &v27[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
      v31 += v65;
      --v25;
    }

    while (v25);

    v15 = v63;
    v10 = v64;
    a3 = v57;
    v11 = v58;
    LOBYTE(a4) = v56;
    if (v27[2])
    {
      goto LABEL_7;
    }
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_7:
      v40 = v27[4];
      v41 = v27[5];

      goto LABEL_10;
    }
  }

  v40 = 0;
  v41 = 0xE000000000000000;
LABEL_10:

  v43 = v60;
  v42 = v61;
  v44 = v62;
  (*(v61 + 104))(v60, enum case for VCLogging.Category.ASR(_:), v62);
  sub_1000C9674();
  (*(v42 + 8))(v43, v44);

  v45 = sub_1000C96A4();
  v46 = sub_1000C9CC4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v47 = 136315651;
    v48 = (a4 & 1) == 0;
    if (a4)
    {
      v49 = 0x526C616974726170;
    }

    else
    {
      v49 = 0x7365526C616E6966;
    }

    v50 = a3;
    if (v48)
    {
      v51 = 0xEB00000000746C75;
    }

    else
    {
      v51 = 0xED0000746C757365;
    }

    v52 = v40;
    v53 = sub_100050ED0(v49, v51, &v71);

    *(v47 + 4) = v53;
    v40 = v52;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_100050ED0(v59, v50, &v71);
    *(v47 + 22) = 2085;
    *(v47 + 24) = sub_100050ED0(v52, v41, &v71);
    _os_log_impl(&_mh_execute_header, v45, v46, "SpeechAnalyzer: %s %s firstBestResult %{sensitive}s", v47, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v63, v64);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  return v40;
}

unint64_t sub_10005E874()
{
  result = qword_10010DEB0;
  if (!qword_10010DEB0)
  {
    sub_1000C9454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DEB0);
  }

  return result;
}

unint64_t sub_10005E8CC()
{
  result = qword_10010DEC0;
  if (!qword_10010DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DEC0);
  }

  return result;
}

uint64_t variable initialization expression of RDServiceClientConnection._logger(uint64_t a1, uint64_t a2)
{
  sub_10005F190();

  return sub_1000C96B4();
}

id sub_10005E9D0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = sub_10005EBE0(a1, v4);

  return v5;
}

void sub_10005EA10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id RDServiceClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDServiceClientConnection(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005EBE0(void *a1, uint64_t a2)
{
  v4 = sub_1000C96D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7, v8);
  v9 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection__logger;
  sub_10005F190();

  sub_1000C96B4();
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection] = a1;
  (*(v5 + 16))(v9, &v2[v10], v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v11, v9, v4);
  *(v13 + v12) = a1;
  v26 = sub_10005F020;
  v27 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v24 = sub_10005EA10;
  v25 = &unk_100100AA0;
  v14 = _Block_copy(&aBlock);
  v15 = a1;

  v16 = [v15 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  sub_1000C9DA4();
  swift_unknownObjectRelease();
  sub_100053464(&aBlock, &v22);
  sub_100052CBC(&qword_10010DF08, qword_1000D1D80);
  swift_dynamicCast();
  *&v2[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_proxy] = v21;
  v17 = type metadata accessor for RDServiceClientConnection(0);
  v20.receiver = v2;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t type metadata accessor for RDServiceClientConnection(uint64_t a1)
{
  result = qword_10010E6D8;
  if (!qword_10010E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005EEDC(uint64_t a1, uint64_t a2)
{
  result = sub_1000C96D4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005EF84(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C96D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

void sub_10005F020(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_1000C96D4() - 8);
  v4 = *(v2 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  oslog = sub_1000C96A4();
  v5 = sub_1000C9CE4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to get remoteObjectProxy for connection %@", v6, 0xCu);
    sub_100052E5C(v7);
  }
}

uint64_t sub_10005F178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10005F19C()
{
  result = [objc_allocWithZone(AVAudioFormat) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    qword_10010E6F0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F1F4()
{
  v0 = sub_1000C9434();
  sub_10006F460(v0, qword_10010E860);
  sub_10005F2AC(v0, qword_10010E860);
  return sub_1000C9424();
}

uint64_t sub_10005F248()
{
  if (qword_10010E6F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C9434();

  return sub_10005F2AC(v0, qword_10010E860);
}

uint64_t sub_10005F2AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10005F378(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_10005F3CC(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePostITN] = a1;
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePreITN] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id RDSAPISwiftTranscriberModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSAPISwiftTranscriberModule();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005F5C4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10005F620(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10005F6B8;
}

void sub_10005F6B8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10005F764@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id RDSAPISwiftSpeechAnalyzer.__allocating_init(delegate:locale:highPriority:farField:supportEmojiRecognition:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v11 = objc_allocWithZone(v5);
  v12 = sub_10006CC3C(a1, a2, v8, v7, v6);

  return v12;
}

id RDSAPISwiftSpeechAnalyzer.init(delegate:locale:highPriority:farField:supportEmojiRecognition:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10006CC3C(a1, a2, a3, a4, a5);

  return v7;
}

id RDSAPISwiftSpeechAnalyzer.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v2 - 8, v3, v4);
  v6 = &v21 - v5;
  v7 = sub_1000C96D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, &v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger], v7);
  v13 = sub_1000C96A4();
  v14 = sub_1000C9CE4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SpeechAnalyzer deinit", v15, 2u);
  }

  (*(v8 + 8))(v12, v7);
  if (*&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask])
  {

    sub_1000C9C74();
  }

  v16 = *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer];
  v17 = sub_1000C9C34();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;

  sub_100055D64(0, 0, v6, &unk_1000D1DE0, v18);

  v19 = type metadata accessor for RDSAPISwiftSpeechAnalyzer(0);
  v21.receiver = v1;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, "dealloc");
}

uint64_t sub_10005FBB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100056BBC;

  return SpeechAnalyzer.cancelAndFinishNow()();
}

uint64_t sub_10005FEC8()
{
  v1 = v0[2];
  v0[3] = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer);
  v2 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext);
  v0[4] = v2;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10005FF9C;

  return SpeechAnalyzer.setContext(_:)(v2);
}

uint64_t sub_10005FF9C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000600E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000600E0()
{

  swift_errorRetain();
  v1 = sub_1000C96A4();
  v2 = sub_1000C9CD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not attach analysis context to SpeechAnalyzer = %@", v3, 0xCu);
    sub_100057214(v4, &unk_10010DF10, &unk_1000D1820);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000603D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100060478;

  return RDSAPISwiftSpeechAnalyzer.attachAnalysisContext()();
}

uint64_t sub_100060478()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 16))(v2);
  _Block_release(*(v1 + 24));
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000605BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1000605E0, 0, 0);
}

uint64_t sub_1000605E0()
{
  if (*(v0[3].super_class + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask))
  {

    sub_1000C9C74();
  }

  receiver = v0[3].receiver;
  v0[4].receiver = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  v2 = receiver;
  v3 = sub_1000C96A4();
  v4 = sub_1000C9CE4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3].receiver;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "SpeechAnalyzer previous recognition task cancelled for %@", v6, 0xCu);
    sub_100057214(v7, &unk_10010DF10, &unk_1000D1820);
  }

  v10 = v0[2].receiver;
  super_class = v0[2].super_class;

  v11 = type metadata accessor for RDSAPISwiftTranscriberModule();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePostITN] = v10;
  *&v12[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePreITN] = super_class;
  v0[1].receiver = v12;
  v0[1].super_class = v11;

  v13 = objc_msgSendSuper2(v0 + 1, "init");
  v0[4].super_class = v13;
  v14 = v0[3].super_class;
  v15 = (*((swift_isaMask & *v13) + 0x60))();
  v0[5].receiver = v15;
  v16 = (*((swift_isaMask & *v13) + 0x78))();
  v0[5].super_class = v16;
  v0[6].receiver = *(v14 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer);
  sub_100052CBC(&qword_10010DF80, &qword_1000D1EB0);
  v17 = swift_allocObject();
  v0[6].super_class = v17;
  *(v17 + 16) = xmmword_1000D1DA0;
  v18 = sub_10006F3B0(&qword_10010DF88, &type metadata accessor for Transcriber, &protocol conformance descriptor for Transcriber);
  *(v17 + 32) = v15;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  *(v17 + 56) = v18;

  v19 = swift_task_alloc();
  v0[7].receiver = v19;
  *v19 = v0;
  v19[1] = sub_100060914;

  return SpeechAnalyzer.setModules(_:)(v17);
}

uint64_t sub_100060914()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100060AA4;
  }

  else
  {

    v2 = sub_100060A38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060A38()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100060AA4()
{
  v1 = v0[6];

  v2 = v1;
  swift_errorRetain();
  v3 = sub_1000C96A4();
  v4 = sub_1000C9CD4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2112;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not attach Transcriber to SpeechAnalyzer for %@ due to %@", v8, 0x16u);
    sub_100052CBC(&unk_10010DF10, &unk_1000D1820);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t RDSAPISwiftSpeechAnalyzer.attachTranscriber(task:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_100052CBC(&qword_10010DF50, &qword_1000D1E20);
  v2[13] = swift_task_alloc();
  v3 = sub_1000C9564();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_1000C9A64();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100060E10, 0, 0);
}

uint64_t sub_100060E10()
{
  sub_100053C64(0, &qword_10010DB40, NSString_ptr);
  v1 = sub_1000C9D64();
  v2 = sub_1000C9D54();

  if (v2)
  {
    (*(v0[18] + 104))(v0[19], enum case for TaskHint.dictationCC(_:), v0[17]);
  }

  else
  {
    v3 = v0[18];
    v4 = sub_1000C9D64();
    v5 = sub_1000C9D54();

    if (v5)
    {
      v6 = &enum case for TaskHint.spellCC(_:);
    }

    else
    {
      v6 = &enum case for TaskHint.dictationCC(_:);
    }

    (*(v3 + 104))(v0[19], *v6, v0[17]);
  }

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v31 = v0[13];
  v34 = v0[11];
  (*(v9 + 32))(v7, v0[19], v10);
  (*(v9 + 56))(v7, 0, 1, v10);
  v15 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  swift_beginAccess();
  sub_10006F3F8(v7, v14 + v15, &qword_10010DF30, &qword_1000D1DE8);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale;
  v33 = *(v12 + 16);
  v33(v11, v14 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale, v13);
  sub_100057274(v14 + v15, v8, &qword_10010DF30, &qword_1000D1DE8);
  v16 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v30 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v27 = sub_1000C97C4();
  v17 = *(v27 - 8);
  v29 = *(v17 + 16);
  v29(v31, v14 + v16, v27);
  v28 = *(v17 + 56);
  v28(v31, 0, 1, v27);
  swift_beginAccess();
  sub_1000C9874();
  swift_allocObject();

  v18 = sub_1000C9864();
  v0[22] = v18;
  v33(v11, v14 + v32, v13);
  sub_100057274(v14 + v15, v8, &qword_10010DF30, &qword_1000D1DE8);
  v29(v31, v14 + v30, v27);
  v28(v31, 0, 1, v27);
  swift_beginAccess();
  swift_allocObject();

  v19 = sub_1000C9864();
  v0[23] = v19;
  sub_1000C9E14(23);

  v20 = [v34 description];
  v21 = sub_1000C9B04();
  v23 = v22;

  v36._countAndFlagsBits = v21;
  v36._object = v23;
  sub_1000C9B24(v36);

  v24 = sub_1000C9AF4();
  v0[24] = v24;

  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_100061354;

  return sub_1000605BC(v18, v19, v24);
}

uint64_t sub_100061354(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_100061470, 0, 0);
}

uint64_t sub_100061470()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_1000616AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100061770;

  return RDSAPISwiftSpeechAnalyzer.attachTranscriber(task:)(v6);
}

uint64_t sub_100061770(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (*(v4 + 16))(v4, a1);
  _Block_release(*(v3 + 32));

  v7 = *(v9 + 8);

  return v7();
}

uint64_t RDSAPISwiftSpeechAnalyzer.setRecognitionReplacements(useRecognitionReplacements:)(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 280) = a1;
  sub_100052CBC(&qword_10010DF50, &qword_1000D1E20);
  *(v2 + 168) = swift_task_alloc();
  sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8);
  *(v2 + 176) = swift_task_alloc();
  v3 = sub_1000C9564();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  v4 = sub_1000C9844();
  *(v2 + 208) = v4;
  *(v2 + 216) = *(v4 - 8);
  *(v2 + 224) = swift_task_alloc();
  sub_100052CBC(&qword_10010DF58, &qword_1000D1E38);
  *(v2 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_100061AAC, 0, 0);
}

uint64_t sub_100061AAC()
{
  if (*(v0 + 280) == 1)
  {
    v2 = *(v0 + 208);
    v1 = *(v0 + 216);
    v3 = *(v0 + 160);
    v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
    swift_beginAccess();
    v5 = *(v3 + v4);
    sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
    v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000D1DB0;
    v42 = enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:);
    v40 = *(v1 + 104);
    v40(v7 + v6);

    v8 = sub_10006CADC(v7, v5);
    swift_setDeallocating();
    v9 = *(v1 + 8);
    v9(v7 + v6, v2);
    swift_deallocClassInstance();
    *(v3 + v4) = v8;

    v10 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN;
    swift_beginAccess();
    v11 = *(v3 + v10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000D1DB0;
    v13 = v2;
    (v40)(v12 + v6, v42, v2);

    v14 = sub_10006CADC(v12, v11);
    swift_setDeallocating();
    v9(v12 + v6, v13);
    swift_deallocClassInstance();
    *(v3 + v10) = v14;

    v44._countAndFlagsBits = 1702195828;
    v44._object = 0xE400000000000000;
  }

  else
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:);
    v45 = *(v18 + 104);
    v45(v16, enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:), v17);
    swift_beginAccess();
    sub_100069DF4(v16, v15);
    v20 = *(v18 + 8);
    v20(v16, v17);
    sub_100057214(v15, &qword_10010DF58, &qword_1000D1E38);
    swift_endAccess();
    v45(v16, v19, v17);
    swift_beginAccess();
    sub_100069DF4(v16, v15);
    v20(v16, v17);
    sub_100057214(v15, &qword_10010DF58, &qword_1000D1E38);
    swift_endAccess();
    v44._countAndFlagsBits = 0x65736C6166;
    v44._object = 0xE500000000000000;
  }

  v21 = *(v0 + 200);
  v22 = *(v0 + 176);
  v35 = v22;
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v39 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale;
  v41 = *(v0 + 184);
  v43 = *(*(v0 + 192) + 16);
  v43(v21, v24 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale);
  v25 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  v38 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  swift_beginAccess();
  sub_100057274(v24 + v25, v22, &qword_10010DF30, &qword_1000D1DE8);
  v26 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v37 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v27 = sub_1000C97C4();
  v28 = *(v27 - 8);
  v36 = *(v28 + 16);
  v36(v23, v24 + v26, v27);
  v29 = *(v28 + 56);
  v29(v23, 0, 1, v27);
  swift_beginAccess();
  sub_1000C9874();
  swift_allocObject();

  v34 = sub_1000C9864();
  *(v0 + 240) = v34;
  (v43)(v21, v24 + v39, v41);
  sub_100057274(v24 + v38, v35, &qword_10010DF30, &qword_1000D1DE8);
  v36(v23, v24 + v37, v27);
  v29(v23, 0, 1, v27);
  swift_allocObject();

  v30 = sub_1000C9864();
  *(v0 + 248) = v30;
  sub_1000C9E14(33);

  sub_1000C9B24(v44);

  v31 = sub_1000C9AF4();
  *(v0 + 256) = v31;

  v32 = swift_task_alloc();
  *(v0 + 264) = v32;
  *v32 = v0;
  v32[1] = sub_100062138;

  return sub_1000605BC(v34, v30, v31);
}

uint64_t sub_100062138(uint64_t a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100062254, 0, 0);
}

uint64_t sub_100062254()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 272);

  return v1(v2);
}

uint64_t sub_100062488(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_100062544;

  return RDSAPISwiftSpeechAnalyzer.setRecognitionReplacements(useRecognitionReplacements:)(a1);
}

uint64_t sub_100062544(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (*(v4 + 16))(v4, a1);
  _Block_release(*(v3 + 24));

  v6 = *(v8 + 8);

  return v6();
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.cancelRecognition()()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SpeechAnalyzer cancel audio", v4, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask))
  {

    sub_1000C9C74();
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.setText(leftContextText:)(NSString leftContextText)
{
  v2 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v2 - 8, v3, v4);
  v6 = &v13 - v5;
  v7 = sub_1000C9B04();
  v9 = v8;
  v10 = sub_1000C9C34();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v7;
  v11[6] = v9;
  v12 = v1;
  sub_100055D64(0, 0, v6, &unk_1000D1E50, v11);
}

uint64_t sub_100062908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1000C9904();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000629CC, 0, 0);
}

uint64_t sub_1000629CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v15 = v0[9];
  v16 = v0[6];
  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext;

  sub_1000C98F4();
  sub_100052CBC(&qword_10010DEB8, &qword_1000D2080);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D1DB0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  v7 = sub_1000C98E4();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  *v9 = 0x8000000000000000;
  sub_10006A818(v6, v1, isUniquelyReferenced_nonNull_native);
  (*(v2 + 8))(v1, v15);
  *v9 = v17;
  v7(v0 + 2, 0);

  v0[12] = *(v16 + v5);

  v11 = sub_1000C9924();
  v0[13] = v11;
  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = sub_100052CBC(&qword_10010E210, &qword_1000D2078);
  *v12 = v0;
  v12[1] = sub_100062BA4;

  return AnalysisContext.setWait<A>(userData:)(v11, v13);
}

uint64_t sub_100062BA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100062E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100062E90, 0, 0);
}

uint64_t sub_100062E90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext;

  sub_10006E084(v1, v2);
  sub_1000C98D4();

  v0[5] = *(v3 + v4);

  v5 = sub_1000C9924();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_100052CBC(&qword_10010E210, &qword_1000D2078);
  *v6 = v0;
  v6[1] = sub_100062FAC;

  return AnalysisContext.setWait<A>(userData:)(v5, v7);
}

uint64_t sub_100062FAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100063110(uint64_t (*a1)(uint64_t))
{

  v3 = a1(v2);
  v5 = v4;

  if (v5 >> 60 != 15)
  {
    return v3;
  }

  __break(1u);
  return result;
}

Class sub_100063194(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a1;

  v6 = a3(v5);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v10.super.isa = sub_1000C94E4().super.isa;
    sub_10006EB6C(v6, v8);

    return v10.super.isa;
  }

  return result;
}

uint64_t sub_100063258(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = &v17 - v11;
  v13 = sub_1000C9C34();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v4;
  sub_10006E084(a1, a2);
  sub_100055D64(0, 0, v12, a4, v14);
}

uint64_t sub_100063370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100063394, 0, 0);
}

uint64_t sub_100063394()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext;

  sub_10006E084(v1, v2);
  sub_1000C98C4();

  v0[5] = *(v3 + v4);

  v5 = sub_1000C9924();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_100052CBC(&qword_10010E210, &qword_1000D2078);
  *v6 = v0;
  v6[1] = sub_10006F4FC;

  return AnalysisContext.setWait<A>(userData:)(v5, v7);
}

uint64_t sub_1000634D0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = &v21 - v11;
  v13 = a3;
  v14 = a1;
  v15 = sub_1000C94F4();
  v17 = v16;

  v18 = sub_1000C9C34();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v14;
  v19[5] = v15;
  v19[6] = v17;
  sub_100055D64(0, 0, v12, a5, v19);
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.useRecognitionReplacements()()
{
  v1 = v0;
  v2 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v2 - 8, v3, v4);
  v50 = &v49 - v5;
  v6 = sub_100052CBC(&qword_10010DF50, &qword_1000D1E20);
  __chkstk_darwin(v6 - 8, v7, v8);
  v61 = &v49 - v9;
  v10 = sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8);
  __chkstk_darwin(v10 - 8, v11, v12);
  v60 = &v49 - v13;
  v14 = sub_1000C9564();
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  __chkstk_darwin(v14, v16, v17);
  v64 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  swift_beginAccess();
  v20 = *&v0[v19];
  v57 = sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
  v21 = sub_1000C9844();
  v22 = *(v21 - 8);
  v56 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v55 = xmmword_1000D1DB0;
  *(v24 + 16) = xmmword_1000D1DB0;
  LODWORD(v54) = enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:);
  v53 = *(v22 + 104);
  v53(v24 + v23);

  v25 = sub_10006CADC(v24, v20);
  swift_setDeallocating();
  v26 = *(v22 + 8);
  v26(v24 + v23, v21);
  swift_deallocClassInstance();
  v58 = v19;
  *&v1[v19] = v25;

  v27 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN;
  swift_beginAccess();
  v28 = *&v1[v27];
  v29 = swift_allocObject();
  *(v29 + 16) = v55;
  (v53)(v29 + v23, v54, v21);

  v30 = sub_10006CADC(v29, v28);
  swift_setDeallocating();
  v26(v29 + v23, v21);
  swift_deallocClassInstance();
  v59 = v27;
  *&v1[v27] = v30;

  v31 = *(v63 + 16);
  v63 += 16;
  v56 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale;
  v57 = v31;
  v31(v64, &v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale], v62);
  v32 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  *&v55 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  swift_beginAccess();
  v33 = v60;
  sub_100057274(&v1[v32], v60, &qword_10010DF30, &qword_1000D1DE8);
  v34 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v54 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v35 = sub_1000C97C4();
  v36 = *(v35 - 8);
  v53 = *(v36 + 16);
  v37 = v61;
  (v53)(v61, &v1[v34], v35);
  v52 = *(v36 + 56);
  v52(v37, 0, 1, v35);
  v58 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions;
  sub_1000C9874();
  v51 = swift_allocObject();

  v38 = v64;
  v39 = sub_1000C9864();
  v57(v38, &v1[v56], v62);
  sub_100057274(&v1[v55], v33, &qword_10010DF30, &qword_1000D1DE8);
  (v53)(v37, &v1[v54], v35);
  v52(v37, 0, 1, v35);
  swift_allocObject();

  v40 = sub_1000C9864();
  v41 = type metadata accessor for RDSAPISwiftTranscriberModule();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePostITN] = v39;
  *&v42[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePreITN] = v40;
  v65.receiver = v42;
  v65.super_class = v41;

  v43 = objc_msgSendSuper2(&v65, "init");
  v44 = sub_1000C9C34();
  v45 = v50;
  (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v43;
  v46[5] = v1;
  v47 = v43;
  v48 = v1;
  sub_100055D64(0, 0, v45, &unk_1000D1E80, v46);
}

uint64_t sub_100063D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100063D4C, 0, 0);
}

uint64_t sub_100063D4C()
{
  v1 = *(v0 + 24);
  v2 = (*((swift_isaMask & **(v0 + 16)) + 0x60))();
  *(v0 + 32) = v2;
  *(v0 + 40) = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer);
  sub_100052CBC(&qword_10010DF80, &qword_1000D1EB0);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_1000D1DB0;
  v4 = sub_10006F3B0(&qword_10010DF88, &type metadata accessor for Transcriber, &protocol conformance descriptor for Transcriber);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100063EB8;

  return SpeechAnalyzer.setModules(_:)(v3);
}

uint64_t sub_100063EB8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10006403C;
  }

  else
  {

    v2 = sub_100063FDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100063FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006403C()
{

  swift_errorRetain();
  v1 = sub_1000C96A4();
  v2 = sub_1000C9CD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not set recognition replacements = %@", v3, 0xCu);
    sub_100057214(v4, &unk_10010DF10, &unk_1000D1820);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.addAudioSamples(audio:)(Swift::OpaquePointer audio)
{
  v2 = v1;
  v4 = sub_1000C98A4();
  __chkstk_darwin(v4 - 8, v5, v6);
  v7 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9, v10);
  v12 = &rawValue - v11;
  v13 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15, v16);
  v18 = &rawValue - v17;
  (*(v8 + 16))(v12, v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder, v7);
  v19 = *((swift_isaMask & *v2) + 0x2C0);
  rawValue = audio._rawValue;
  v19(audio._rawValue);
  v20 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent;
  CMTimeMake(&v26, *(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent), 16000);
  sub_1000C9884();
  sub_1000C9C54();
  (*(v8 + 8))(v12, v7);
  (*(v14 + 8))(v18, v13);
  v21 = rawValue[2];
  v22 = *(v2 + v20);
  v23 = __OFADD__(v22, v21);
  v24 = v22 + v21;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v20) = v24;
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.endAudio()()
{
  oslog = sub_1000C96A4();
  v0 = sub_1000C9CC4();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "SpeechAnalyzer finished audio", v1, 2u);
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.addAudioSamplesPCM(audio:)(AVAudioPCMBuffer audio)
{
  isa = audio.super.super.isa;
  v3 = sub_1000C98A4();
  __chkstk_darwin(v3 - 8, v4, v5);
  v6 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = &v19 - v10;
  v12 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14, v15);
  v17 = &v19 - v16;
  (*(v7 + 16))(v11, v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder, v6);
  v18 = isa;
  CMTimeMake(&v20, 0, 1);
  sub_1000C9884();
  sub_1000C9C54();
  (*(v7 + 8))(v11, v6);
  (*(v13 + 8))(v17, v12);
}

uint64_t RDSAPISwiftSpeechAnalyzer.startRecognition(transcriberModuleWrapper:)(void *a1)
{
  v3 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v3 - 8, v4, v5);
  v7 = &v13 - v6;
  v8 = sub_1000C9C34();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;
  v10 = v1;
  v11 = a1;
  *&v10[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask] = sub_100055D64(0, 0, v7, &unk_1000D1E98, v9);
}

uint64_t sub_100064BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100052CBC(&qword_10010E1D8, &qword_1000D2048);
  v5[5] = swift_task_alloc();
  v6 = sub_100052CBC(&qword_10010E1E0, &qword_1000D2050);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_100052CBC(&qword_10010E190, &qword_1000D2020);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100064D4C, 0, 0);
}

uint64_t sub_100064D4C()
{
  v1 = sub_1000C96A4();
  v2 = sub_1000C9CC4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "SpeechAnalyzer new recognition task started", v3, 2u);
  }

  v4 = v0[3];

  (*((swift_isaMask & *v4) + 0x78))();
  sub_1000C9854();

  (*((swift_isaMask & *v4) + 0x60))(v5);
  sub_1000C9854();

  swift_getOpaqueTypeConformance2();
  sub_1000C9694();
  type metadata accessor for RDSAPICombinedTranscriberResult(0);
  sub_10006F1B0(&qword_10010E1E8, &qword_10010E1D8, &qword_1000D2048, &protocol conformance descriptor for AsyncZip2Sequence<A, B>);
  sub_1000C9E44();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100064FC8;
  v7 = v0[8];
  v8 = v0[2];

  return sub_10006AEDC(v7, v8);
}

uint64_t sub_100064FC8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100065120, 0, 0);
}

uint64_t sub_100065120()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  v3(v0[11], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000651EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_100052CBC(&qword_10010E208, &qword_1000D2070);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100065298, 0, 0);
}

uint64_t sub_100065298()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_100057274(v3, v1, &qword_10010E208, &qword_1000D2070);
  v6 = *(v4 + 48);
  sub_100057274(v3, v2, &qword_10010E208, &qword_1000D2070);
  v7 = *(v4 + 48);
  v8 = sub_1000C9834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 32);
  v10(v5, v1, v8);
  v11 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  v10(v5 + *(v11 + 20), v2 + v7, v8);
  v12 = *(v9 + 8);
  v12(v2, v8);
  v12(v1 + v6, v8);

  v13 = v0[1];

  return v13();
}

void sub_100065540(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1000C96A4();
  v5 = sub_1000C9CC4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Called the callback with final results = %@", v6, 0xCu);
    sub_100057214(v7, &unk_10010DF10, &unk_1000D1820);
  }

  v9 = (*((swift_isaMask & *v2) + 0xD0))();
  if (v9)
  {
    v10 = v9;
    [v9 didRecognizeFinalResults:v3];
  }
}

void sub_1000656C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000C96A4();
  v4 = sub_1000C9CE4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SpeechAPI Recognition Error", v5, 2u);
  }

  v6 = (*((swift_isaMask & *v2) + 0xD0))();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000C9474();
    [v7 didFinishRecognitionWithError:?];
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.startRecognitionFromFile()()
{
  v0 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v0 - 8, v1, v2);
  v78 = &v77 - v3;
  v4 = sub_100052CBC(&qword_10010DF38, &qword_1000D1DF0);
  __chkstk_darwin(v4 - 8, v5, v6);
  v83 = &v77 - v7;
  v82 = sub_100052CBC(&qword_10010DF40, &qword_1000D1DF8);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82, v8, v9);
  v81 = &v77 - v10;
  v11 = sub_1000C97A4();
  v86 = *(v11 - 8);
  v87 = v11;
  v14 = __chkstk_darwin(v11, v12, v13);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16, v17);
  v85 = &v77 - v18;
  v19 = sub_100052CBC(&qword_10010DF70, &qword_1000D1EA0);
  v89 = *(v19 - 8);
  v90 = v19;
  __chkstk_darwin(v19, v20, v21);
  v88 = &v77 - v22;
  v23 = sub_1000C94D4();
  v92 = *(v23 - 8);
  v93 = v23;
  __chkstk_darwin(v23, v24, v25);
  v95 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100052CBC(&qword_10010DF50, &qword_1000D1E20);
  __chkstk_darwin(v27 - 8, v28, v29);
  v31 = &v77 - v30;
  v32 = sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8);
  __chkstk_darwin(v32 - 8, v33, v34);
  v36 = &v77 - v35;
  v37 = sub_1000C9564();
  __chkstk_darwin(v37 - 8, v38, v39);
  sub_1000C9544();
  v40 = sub_1000C9A64();
  (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
  v41 = sub_1000C97C4();
  (*(*(v41 - 8) + 56))(v31, 1, 1, v41);
  sub_100052CBC(&qword_10010DF78, &qword_1000D1EA8);
  v42 = sub_1000C97D4();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  v79 = xmmword_1000D1DB0;
  *(v45 + 16) = xmmword_1000D1DB0;
  (*(v43 + 104))(v45 + v44, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v42);
  v94 = sub_10006C49C(v45);
  swift_setDeallocating();
  (*(v43 + 8))(v45 + v44, v42);
  swift_deallocClassInstance();
  sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
  v46 = sub_1000C9844();
  v47 = *(v46 - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1000D1DC0;
  v51 = v50 + v49;
  v52 = *(v47 + 104);
  v52(v51, enum case for Transcriber.TranscriptionOption.contextualizedTranscription(_:), v46);
  v52(v51 + v48, enum case for Transcriber.TranscriptionOption.punctuation(_:), v46);
  v52(v51 + 2 * v48, enum case for Transcriber.TranscriptionOption.emoji(_:), v46);
  sub_10006C7BC(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000C9874();
  swift_allocObject();
  v53 = sub_1000C9864();
  type metadata accessor for AudioStream(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v56 = sub_1000C9AF4();
  v57 = sub_1000C9AF4();
  v58 = [v55 URLForResource:v56 withExtension:v57];

  if (v58)
  {
    sub_1000C94C4();

    v59 = [objc_allocWithZone(AVAudioFormat) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v94 = v53;
    if (v59)
    {
      v60 = swift_allocObject();
      *(v60 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile) = 0;
      *(v60 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter) = 0;
      sub_1000C98A4();
      v62 = v88;
      v61 = v89;
      v63 = v90;
      (*(v89 + 104))(v88, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v90);
      v64 = v59;
      sub_1000C9C44();
      (*(v61 + 8))(v62, v63);
      sub_100067DD4(v95, v64);
      v65 = v85;
      sub_1000C9794();
      v90 = sub_1000C9734();
      (*(v86 + 16))(v84, v65, v87);
      (*(v80 + 16))(v81, v60 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_audioStream, v82);
      sub_100052CBC(&qword_10010DF80, &qword_1000D1EB0);
      v66 = swift_allocObject();
      *(v66 + 16) = v79;
      v67 = sub_10006F3B0(&qword_10010DF88, &type metadata accessor for Transcriber, &protocol conformance descriptor for Transcriber);
      v68 = v94;
      *(v66 + 32) = v94;
      *(v66 + 40) = v67;
      v69 = sub_1000C9984();
      (*(*(v69 - 8) + 56))(v83, 1, 1, v69);
      sub_1000C9944();
      swift_allocObject();
      v70 = v64;

      sub_1000C9934();
      sub_10006F1B0(&qword_10010DF90, &qword_10010DF40, &qword_1000D1DF8, &protocol conformance descriptor for AsyncStream<A>);
      v71 = sub_1000C9724();
      sub_100068164(sub_10006E2D4, v60, sub_10006E2DC);
      v72 = sub_1000C9C34();
      v73 = v78;
      (*(*(v72 - 8) + 56))(v78, 1, 1, v72);
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v74[4] = v71;
      v74[5] = v68;
      v75 = v91;
      v74[6] = v91;

      v76 = v75;
      sub_100066F3C(0, 0, v73, &unk_1000D1EC0, v74);

      (*(v86 + 8))(v85, v87);
      (*(v92 + 8))(v95, v93);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000664B8()
{
  v0 = sub_100052CBC(&qword_10010DF70, &qword_1000D1EA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2, v3);
  v5 = &v8 - v4;
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile) = 0;
  *(v6 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter) = 0;
  sub_1000C98A4();
  (*(v1 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  sub_1000C9C44();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_10006660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = sub_1000C9834();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_100052CBC(&qword_10010E188, &qword_1000D2018);
  v6[8] = swift_task_alloc();
  v6[9] = sub_100052CBC(&qword_10010E190, &qword_1000D2020);
  v6[10] = swift_task_alloc();
  v8 = sub_100052CBC(&qword_10010E198, &unk_1000D2028);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[14] = v9;
  *v9 = v6;
  v9[1] = sub_1000667DC;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_1000667DC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100066940, 0, 0);
  }
}

uint64_t sub_100066940()
{
  sub_1000C9854();
  v0[15] = swift_getOpaqueTypeConformance2();
  sub_1000C9C84();
  v0[16] = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100066A70;
  v3 = v0[11];
  v4 = v0[8];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, AssociatedConformanceWitness);
}

uint64_t sub_100066A70()
{

  if (v0)
  {
    v1 = sub_100066E98;
  }

  else
  {
    v1 = sub_100066B80;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100066B80()
{
  v23 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    v6 = sub_1000C96A4();
    v7 = sub_1000C9CC4();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      sub_10006F3B0(&qword_10010E1A0, &type metadata accessor for Transcriber.MultisegmentResult, &protocol conformance descriptor for Transcriber.MultisegmentResult);
      v14 = sub_1000C9E94();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_100050ED0(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got recognition results from audio file %s", v12, 0xCu);
      sub_100052DB0(v13);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = swift_task_alloc();
    v0[17] = v19;
    *v19 = v0;
    v19[1] = sub_100066A70;
    v20 = v0[11];
    v21 = v0[8];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v21, 0, 0, v0 + 2, v20, AssociatedConformanceWitness);
  }
}

uint64_t sub_100066E98()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100066F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = v24 - v11;
  sub_100057274(a3, v24 - v11, &qword_10010DCC0, &qword_1000D1B20);
  v13 = sub_1000C9C34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100057214(v12, &qword_10010DCC0, &qword_1000D1B20);
  }

  else
  {
    sub_1000C9C24();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000C9BF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000C9B14() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100067230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v5[7] = *(a3 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_1000C9D74();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v5[13] = *(AssociatedTypeWitness - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_getAssociatedTypeWitness();
  sub_1000C9D74();
  v5[17] = swift_task_alloc();
  v5[18] = *(a4 - 8);
  v5[19] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000674F8, 0, 0);
}

uint64_t sub_1000674F8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[5];
  v4 = v0[3];
  v0[2] = sub_1000C9BA4();
  (*(v2 + 16))(v1, v4, v3);
  sub_1000C9C84();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[23] = AssociatedConformanceWitness;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_100067628;
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[15];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, 0, 0, v9, v7, AssociatedConformanceWitness);
}

uint64_t sub_100067628()
{

  if (v0)
  {

    v1 = sub_1000679D4;
  }

  else
  {
    v1 = sub_100067740;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100067740()
{
  if ((*(*(v0[16] - 8) + 48))(v0[17], 1, v0[16]) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    v1 = v0[2];

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v4 = v0[7];
    v5 = swift_dynamicCast();
    v6 = *(v4 + 56);
    v7 = v0[11];
    if (v5)
    {
      v9 = v0[7];
      v8 = v0[8];
      v10 = v0[4];
      v6(v0[11], 0, 1, v10);
      (*(v9 + 32))(v8, v7, v10);
      sub_1000C9BD4();
      sub_1000C9BC4();
    }

    else
    {
      v11 = v0[9];
      v12 = v0[10];
      v6(v0[11], 1, 1, v0[4]);
      (*(v12 + 8))(v7, v11);
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[23] = AssociatedConformanceWitness;
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_100067628;
    v15 = v0[20];
    v16 = v0[17];
    v17 = v0[15];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v16, 0, 0, v17, v15, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000679D4()
{
  v1 = *(v0[13] + 32);
  v1(v0[14], v0[15], v0[12]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_1000C9EA4();
  v3 = v0[14];
  if (v2)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  else
  {
    v4 = v0[12];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v6 = v0[1];

  return v6();
}

void *sub_100067BCC()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100067C18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100067CD0()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100067D1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_100067DD4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1000C94D4();
  __chkstk_darwin(v7, v8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  v12 = objc_allocWithZone(AVAudioFile);
  v13 = sub_1000688A4(v10);
  if (!v3)
  {
    v14 = (*(*v4 + 120))(v13);
    v15 = (*(*v4 + 112))(v14);
    if (v15)
    {
      v16 = v15;
      v17 = [v15 processingFormat];

      v18 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v17 toFormat:a2];
      if (v18)
      {
        (*(*v4 + 144))(v18);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10006800C(void *a1)
{
  v2 = sub_1000C98A4();
  __chkstk_darwin(v2 - 8, v3, v4);
  v5 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v13 - v9;
  v11 = a1;
  sub_1000C9894();
  sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  sub_1000C9C54();
  return (*(v6 + 8))(v10, v5);
}

void sub_100068164(void (*a1)(id, id), uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v51 = *(*v3 + 112);
  v5 = v51();
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = v5;
  v7 = [v5 processingFormat];

  [v7 sampleRate];
  v9 = v8;

  v10 = v9 * 0.5;
  if (COERCE__INT64(fabs(v9 * 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v10 <= -1.0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  if (v10 >= 4294967300.0)
  {
    goto LABEL_28;
  }

  v50 = 0;
  v48 = v10;
  do
  {
    v11 = v51();
    v12 = v11;
    if (!v11)
    {
      goto LABEL_29;
    }

    v13 = [v11 length];

    if (v50 >= v13)
    {
      goto LABEL_22;
    }

    v14 = v51();
    v15 = v14;
    if (!v14)
    {
      goto LABEL_31;
    }

    v16 = [v14 processingFormat];

    [v16 sampleRate];
    v18 = v17;

    v49 = [objc_allocWithZone(AVAudioTime) initWithSampleTime:v50 atRate:v18];
    v19 = v51();
    v20 = v19;
    if (!v19)
    {
      goto LABEL_34;
    }

    v21 = [v19 processingFormat];

    v22 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v21 frameCapacity:v48];
    if (!v22)
    {
      goto LABEL_30;
    }

    v23 = *(*v4 + 136);
    v24 = v23();
    v25 = v24;
    if (!v24)
    {
      goto LABEL_35;
    }

    v26 = [v24 outputFormat];

    v27 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v26 frameCapacity:v48];
    if (!v27)
    {
      goto LABEL_32;
    }

    v28 = v51();
    v29 = v28;
    if (!v28)
    {
      goto LABEL_33;
    }

    aBlock[0] = 0;
    v30 = [v28 readIntoBuffer:v22 error:aBlock];

    if (!v30)
    {
      v45 = aBlock[0];
      sub_1000C9484();

      swift_willThrow();
      v41 = v27;
      v27 = v49;
      v49 = v22;
LABEL_25:

      return;
    }

    v31 = (v51)(aBlock[0]);
    v32 = v31;
    if (!v31)
    {
      goto LABEL_36;
    }

    v33 = [v31 framePosition];

    v34 = v51();
    v35 = v34;
    if (!v34)
    {
      goto LABEL_38;
    }

    v36 = [v34 length];

    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = v23();
    if (!v38)
    {
      goto LABEL_37;
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v33 >= v36;
    *(v39 + 32) = v22;
    aBlock[4] = sub_10006E464;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005BD18;
    aBlock[3] = &unk_100100C40;
    v40 = _Block_copy(aBlock);

    v41 = v22;

    aBlock[0] = 0;
    [v38 convertToBuffer:v27 error:aBlock withInputFromBlock:v40];
    _Block_release(v40);

    v42 = aBlock[0];
    if (aBlock[0])
    {
      swift_willThrow();
      v42;

      [v41 frameLength];
      goto LABEL_25;
    }

    a1(v27, v49);

    v43 = [v41 frameLength];

    v44 = __OFADD__(v50, v43);
    v50 += v43;
  }

  while (!v44);
  __break(1u);
LABEL_22:
  a3();
}

void sub_10006870C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100068714);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100068790()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_audioStream;
  v2 = sub_100052CBC(&qword_10010DF40, &qword_1000D1DF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_audioStreamGenerator;
  v4 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id sub_1000688A4(uint64_t a1)
{
  v2 = v1;
  sub_1000C94B4(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1000C94D4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1000C9484();

    swift_willThrow();
    v12 = sub_1000C94D4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void sub_1000689F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000689FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000572E0;

  return v6();
}

uint64_t sub_100068AE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000572E0;

  return v7();
}

uint64_t sub_100068BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = v25 - v12;
  sub_100057274(a3, v25 - v12, &qword_10010DCC0, &qword_1000D1B20);
  v14 = sub_1000C9C34();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100057214(v13, &qword_10010DCC0, &qword_1000D1B20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000C9C24();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000C9BF4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000C9B14() + 32;
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

    sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);

    return v23;
  }

LABEL_8:
  sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);
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

uint64_t sub_100068EC8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10006F4F8;

  return v6(a1);
}

uint64_t sub_100068FC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000C9844();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
  v35 = a2;
  v13 = sub_1000C9AD4();
  v14 = v12 + 56;
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v2;
    v31 = a1;
    v32 = ~v15;
    v29 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v28[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v11, *(v34 + 48) + v20 * v16, v6);
      sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      v23 = sub_1000C9AE4();
      v24 = *v21;
      (*v21)(v11, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v32;
      v17 = v22;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v30;
        a1 = v31;
        v7 = v29;
        goto LABEL_7;
      }
    }

    v24(v35, v6);
    v22(v31, *(v34 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v35;
    v17(v11, v35, v6);
    v36 = *v3;
    sub_1000695FC(v11, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v36;
    (*(v7 + 32))(a1, v26, v6);
    return 1;
  }
}

uint64_t sub_1000692A0(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1000C9844();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38, v4, v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
  result = sub_1000C9DE4();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v1;
    v33 = v7;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v36 = v3 + 32;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v7 + 48) + *(v3 + 72) * (v18 | (v10 << 6));
      v22 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v22;
      v22(v37, v21, v38);
      sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      result = sub_1000C9AD4();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v35(*(v9 + 48) + v17 * v34, v37, v38);
      ++*(v9 + 16);
      v7 = v33;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero(v11, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v2 = v32;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1000695FC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1000C9844();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000692A0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1000698A0();
      goto LABEL_12;
    }

    sub_100069AD8(v12 + 1);
  }

  v14 = *v3;
  sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
  v15 = sub_1000C9AD4();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      v23 = sub_1000C9AE4();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000C9EC4();
  __break(1u);
  return result;
}

void *sub_1000698A0()
{
  v1 = v0;
  v2 = sub_1000C9844();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
  v8 = *v0;
  v9 = sub_1000C9DD4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_100069AD8(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1000C9844();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35, v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
  v9 = sub_1000C9DE4();
  result = v8;
  if (*(v8 + 16))
  {
    v30 = v1;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v17 = v9 + 56;
    v31 = (v3 + 32);
    v32 = result;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v34 + 72);
      (*(v34 + 16))(v7, *(result + 48) + v22 * (v19 | (v11 << 6)), v35);
      sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      result = sub_1000C9AD4();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v17 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v17 + 8 * v25);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v18 = __clz(__rbit64((-1 << v24) & ~*(v17 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v31)(*(v9 + 48) + v18 * v22, v7, v35);
      ++*(v9 + 16);
      result = v32;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v9;
  }

  return result;
}

uint64_t sub_100069DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C9844();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
  v33 = a1;
  v12 = sub_1000C9AD4();
  v13 = v11 + 56;
  v31 = v11 + 56;
  v32 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v28 = v2;
    v29 = v6;
    v30 = a2;
    v16 = ~v14;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    while (1)
    {
      v17(v10, *(v32 + 48) + v20 * v15, v5);
      sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      v21 = sub_1000C9AE4();
      (*(v18 - 8))(v10, v5);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v31 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v22 = 1;
        v6 = v29;
        a2 = v30;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;
    v34 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000698A0();
      v25 = v34;
    }

    v6 = v29;
    a2 = v30;
    (*(v29 + 32))(v30, *(v25 + 48) + v20 * v15, v5);
    sub_10006A09C(v15);
    v22 = 0;
    *v23 = v34;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_10006A09C(int64_t a1)
{
  v3 = sub_1000C9844();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3, v5, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;

    v15 = sub_1000C9DC4();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v16 = v14;
      v17 = (v15 + 1) & v14;
      v37 = *(v4 + 16);
      v38 = v4 + 16;
      v18 = *(v4 + 72);
      v35 = (v4 + 8);
      v36 = v11;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v13;
        v37(v9, *(v10 + 48) + v19 * v13, v3);
        v22 = v10;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
        v26 = sub_1000C9AD4();
        (*v35)(v9, v3);
        v27 = v26 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v27 >= v23 && a1 >= v27)
          {
LABEL_16:
            v10 = v25;
            v30 = *(v25 + 48);
            v19 = v20;
            v31 = v20 * a1;
            if (v20 * a1 < v21 || v30 + v20 * a1 >= (v30 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v13;
            }

            else
            {
              a1 = v13;
              if (v31 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v13;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v23 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v10 = v25;
        v19 = v20;
LABEL_5:
        v13 = (v13 + 1) & v16;
        v11 = v36;
      }

      while (((*(v36 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v10 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v34;
    ++*(v10 + 36);
  }

  return result;
}

unint64_t sub_10006A3A4(uint64_t a1)
{
  sub_1000C9904();
  sub_10006F3B0(&qword_10010E220, &type metadata accessor for AnalysisContext.ContextualStringsTag, &protocol conformance descriptor for AnalysisContext.ContextualStringsTag);
  v2 = sub_1000C9AD4();

  return sub_10006AA9C(a1, v2);
}

uint64_t sub_10006A43C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000C9904();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_100052CBC(&qword_10010E218, &unk_1000D2088);
  v41 = v4;
  result = sub_1000C9E84();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v11;
    v40 = v6;
    v42 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v5);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v5);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_10006F3B0(&qword_10010E220, &type metadata accessor for AnalysisContext.ContextualStringsTag, &protocol conformance descriptor for AnalysisContext.ContextualStringsTag);
      result = sub_1000C9AD4();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v5);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

void sub_10006A818(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000C9904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_10006A3A4(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10006AC5C();
      goto LABEL_7;
    }

    sub_10006A43C(v19, a3 & 1);
    v23 = sub_10006A3A4(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      sub_10006A9E4(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_1000C9ED4();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_10006A9E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000C9904();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10006AA9C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000C9904();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_10006F3B0(&qword_10010E228, &type metadata accessor for AnalysisContext.ContextualStringsTag, &protocol conformance descriptor for AnalysisContext.ContextualStringsTag);
      v17 = sub_1000C9AE4();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

char *sub_10006AC5C()
{
  v1 = v0;
  v35 = sub_1000C9904();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35, v2, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052CBC(&qword_10010E218, &unk_1000D2088);
  v5 = *v0;
  v6 = sub_1000C9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10006AEDC(uint64_t a1, uint64_t a2)
{
  v2[24] = a2;
  v4 = sub_1000C98B4();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v5 = sub_1000C9834();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  sub_100052CBC(&qword_10010E1F0, &qword_1000D2068);
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v7 = sub_100052CBC(&qword_10010E1E0, &qword_1000D2050);
  v2[5] = v7;
  v2[6] = sub_10006F1B0(&qword_10010E1F8, &qword_10010E1E0, &qword_1000D2050, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  v8 = sub_10006F28C(v2 + 2);
  (*(*(v7 - 8) + 16))(v8, a1, v7);

  return _swift_task_switch(sub_10006B15C, 0, 0);
}

uint64_t sub_10006B15C()
{
  v1 = *(v0 + 40);
  v2 = sub_10006F1F8((v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  sub_10006F28C((v0 + 56));
  sub_1000C9C84();

  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent;
  *(v0 + 320) = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  *(v0 + 328) = v5;
  *(v0 + 616) = enum case for EARResultType.partial(_:);
  *(v0 + 620) = enum case for EARResultType.final(_:);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  *(v0 + 336) = v6;
  *(v0 + 344) = v7;
  sub_10006F23C(v0 + 56, v6);
  *(v0 + 352) = swift_getAssociatedTypeWitness();
  v8 = sub_1000C9D74();
  *(v0 + 360) = v8;
  *(v0 + 368) = *(v8 - 8);
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 384) = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  *(v0 + 392) = v11;
  *(v0 + 400) = *(v11 + 64);
  v12 = swift_task_alloc();
  *(v0 + 408) = v12;
  v13 = swift_task_alloc();
  *(v0 + 416) = v13;
  *v13 = v0;
  v13[1] = sub_10006B458;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v12, v6, v7);
}

uint64_t sub_10006B458()
{

  if (v0)
  {
    v1 = sub_10006C144;
  }

  else
  {

    v1 = sub_10006B570;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10006B570()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));

    sub_100052DB0((v0 + 56));
    sub_100052DB0((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 304);
    *(v0 + 120) = v2;
    v7 = sub_10006F28C((v0 + 96));
    (*(v3 + 32))(v7, v1, v2);

    v8 = swift_dynamicCast();
    v9 = *(v6 + 56);
    if (v8)
    {
      v10 = *(v0 + 312);
      v11 = *(v0 + 288);
      v9(v11, 0, 1, *(v0 + 296));
      sub_10006F2F0(v11, v10);
      v12 = sub_1000C96A4();
      v13 = sub_1000C9CC4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Getting PostITN results", v14, 2u);
      }

      v111 = *(v0 + 616);
      v15 = *(v0 + 312);
      v16 = *(v0 + 296);
      v18 = *(v0 + 272);
      v17 = *(v0 + 280);
      v19 = *(v0 + 224);
      v20 = *(v0 + 232);
      v22 = *(v0 + 208);
      v21 = *(v0 + 216);
      v109 = *(v0 + 200);

      v23 = *(v20 + 16);
      v23(v17, v15, v19);
      v108 = v23;
      v23(v18, v15 + *(v16 + 20), v19);
      sub_1000C97E4();
      v24 = (*(v22 + 88))(v21, v109);
      if (v24 == v111)
      {
        v25 = [objc_opt_self() shared];
        [v25 asrPartialResultReceived];

        v26 = sub_1000C96A4();
        v27 = sub_1000C9CC4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "SpeechAnalyzer partial results", v28, 2u);
        }

        v30 = *(v0 + 272);
        v29 = *(v0 + 280);
        v32 = *(v0 + 256);
        v31 = *(v0 + 264);
        v33 = *(v0 + 224);

        sub_100053C64(0, &qword_10010E200, SRDTranscriptionResult_ptr);
        v108(v31, v30, v33);
        v108(v32, v29, v33);
        v34 = sub_10005C6E4(v31, v32, 1);
        v35 = sub_1000C96A4();
        v36 = sub_1000C9CC4();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = v34;
          *v38 = v34;
          v39 = v34;
          _os_log_impl(&_mh_execute_header, v35, v36, "Called the callback with partial results = %@", v37, 0xCu);
          sub_100057214(v38, &unk_10010DF10, &unk_1000D1820);
        }

        v40 = *(v0 + 192);

        v41 = (*((swift_isaMask & *v40) + 0xD0))();
        if (v41)
        {
          v42 = v41;
          [v41 didRecognizePartialResults:v34];
          v43 = *(v0 + 312);
          v45 = *(v0 + 272);
          v44 = *(v0 + 280);
          v46 = *(v0 + 224);
          v47 = *(v0 + 232);

          v48 = *(v47 + 8);
          v48(v45, v46);
          v48(v44, v46);
          sub_10006F354(v43);
        }

        else
        {
          v88 = *(v0 + 312);
          v90 = *(v0 + 272);
          v89 = *(v0 + 280);
          v91 = *(v0 + 224);
          v92 = *(v0 + 232);

          v93 = *(v92 + 8);
          v93(v90, v91);
          v93(v89, v91);
          sub_10006F354(v88);
        }
      }

      else if (v24 == *(v0 + 620))
      {
        v58 = [objc_opt_self() shared];
        [v58 asrFinalResultReceived];

        v59 = sub_1000C96A4();
        v60 = sub_1000C9CC4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "SpeechAnalyzer finalAndTerminal results", v61, 2u);
        }

        v62 = *(v0 + 272);
        v64 = *(v0 + 240);
        v63 = *(v0 + 248);
        v65 = *(v0 + 224);
        v66 = *(v0 + 192);

        v108(v63, v62, v65);
        v108(v64, v62, v65);
        v67 = v66;
        v68 = sub_1000C96A4();
        v69 = sub_1000C9CC4();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = *(v0 + 328);
          v72 = *(v0 + 240);
          v71 = *(v0 + 248);
          v73 = *(v0 + 224);
          v74 = *(v0 + 232);
          v75 = *(v0 + 192);
          v76 = swift_slowAlloc();
          *v76 = 134218496;
          *(v76 + 4) = *&v75[v70];

          *(v76 + 12) = 2048;
          sub_1000C9814();
          v77 = *(v0 + 568);
          v78 = *(v74 + 8);
          v78(v71, v73);
          *(v76 + 14) = v77;
          *(v76 + 22) = 2048;
          sub_1000C9814();
          v79 = sub_1000C9CB4();
          v112 = v78;
          v78(v72, v73);
          *(v76 + 24) = v79;
          _os_log_impl(&_mh_execute_header, v68, v69, "SpeechDonation ::totalSamplesSent =%lld ::newUtteranceBeginSampleNumber :: start = %lld :: newUtteranceEndSampleNumber = %lld", v76, 0x20u);

          v80 = *(v0 + 192);
        }

        else
        {
          v94 = *(v0 + 248);
          v95 = *(v0 + 224);
          v96 = *(*(v0 + 232) + 8);
          v96(*(v0 + 240), v95);
          v112 = v96;
          v96(v94, v95);

          v80 = *(v0 + 192);
          v68 = v80;
        }

        v97 = *(v0 + 328);

        sub_1000C9814();
        v98 = *(v0 + 472);
        sub_1000C9814();
        v99 = sub_1000C9CB4();
        v100 = *(&v80->isa + v97);
        v101 = (*((swift_isaMask & v80->isa) + 0xD0))();
        [v101 didGetUtteranceBoundary:v98 utteranceEndSampleNumber:v99 totalSamplesSentToASR:v100];
        v110 = *(v0 + 312);
        v103 = *(v0 + 272);
        v102 = *(v0 + 280);
        v105 = *(v0 + 256);
        v104 = *(v0 + 264);
        v106 = *(v0 + 224);

        sub_100053C64(0, &qword_10010E200, SRDTranscriptionResult_ptr);
        v108(v104, v103, v106);
        v108(v105, v102, v106);
        v107 = sub_10005C6E4(v104, v105, 0);
        sub_100065540(v107);

        v112(v103, v106);
        v112(v102, v106);
        sub_10006F354(v110);
      }

      else
      {
        v81 = *(v0 + 312);
        v82 = *(v0 + 280);
        v83 = *(v0 + 224);
        v85 = *(v0 + 208);
        v84 = *(v0 + 216);
        v86 = *(v0 + 200);
        v87 = *(*(v0 + 232) + 8);
        v87(*(v0 + 272), v83);
        v87(v82, v83);
        sub_10006F354(v81);
        (*(v85 + 8))(v84, v86);
      }
    }

    else
    {
      v49 = *(v0 + 288);
      v9(v49, 1, 1, *(v0 + 296));
      sub_100057214(v49, &qword_10010E1F0, &qword_1000D2068);
    }

    v50 = *(v0 + 80);
    v51 = *(v0 + 88);
    *(v0 + 336) = v50;
    *(v0 + 344) = v51;
    sub_10006F23C(v0 + 56, v50);
    *(v0 + 352) = swift_getAssociatedTypeWitness();
    v52 = sub_1000C9D74();
    *(v0 + 360) = v52;
    *(v0 + 368) = *(v52 - 8);
    v53 = swift_task_alloc();
    *(v0 + 376) = v53;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 384) = AssociatedTypeWitness;
    v55 = *(AssociatedTypeWitness - 8);
    *(v0 + 392) = v55;
    *(v0 + 400) = *(v55 + 64);
    v56 = swift_task_alloc();
    *(v0 + 408) = v56;
    v57 = swift_task_alloc();
    *(v0 + 416) = v57;
    *v57 = v0;
    v57[1] = sub_10006B458;

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v53, 0, 0, v56, v50, v51);
  }
}

uint64_t sub_10006C144()
{
  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v4 = swift_task_alloc();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1000C9EA4();
  if (v6)
  {
    v7 = v6;
    (*(v0[49] + 8))(v4, v0[48]);
  }

  else
  {
    v8 = v0[48];
    v7 = swift_allocError();
    v5(v9, v4, v8);
  }

  sub_100052DB0(v0 + 7);
  swift_errorRetain();
  v10 = sub_1000C96A4();
  v11 = sub_1000C9CD4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Speech API Recognition Error = %@", v12, 0xCu);
    sub_100057214(v13, &unk_10010DF10, &unk_1000D1820);
  }

  swift_getErrorValue();
  if (sub_1000C9EF4() == 0x726F727245524145 && v15 == 0xEE006E69616D6F44)
  {

    goto LABEL_10;
  }

  v16 = sub_1000C9EB4();

  if (v16)
  {
LABEL_10:
    swift_getErrorValue();
    if (sub_1000C9EE4())
    {
      goto LABEL_12;
    }
  }

  sub_1000656C8(v7);
LABEL_12:

  sub_100052DB0(v0 + 2);

  v17 = v0[1];

  return v17();
}

void *sub_10006C49C(uint64_t a1)
{
  v2 = sub_1000C97D4();
  v3 = *(v2 - 8);
  v6 = __chkstk_darwin(v2, v4, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9, v10);
  v41 = &v34 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_100052CBC(&qword_10010E1C0, &qword_1000D2040);
    v13 = sub_1000C9DF4();
    v14 = 0;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v39 = v16;
    v40 = v13 + 56;
    v17 = *(v15 + 64);
    v36 = v12;
    v37 = a1 + ((v17 + 32) & ~v17);
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    v35 = (v15 + 16);
    while (1)
    {
      v38 = v14;
      v39(v41, v37 + v18 * v14, v2);
      sub_10006F3B0(&qword_10010E1C8, &type metadata accessor for Transcriber.ReportingOption, &protocol conformance descriptor for Transcriber.ReportingOption);
      v20 = sub_1000C9AD4();
      v21 = ~(-1 << *(v13 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v15;
          v39(v8, *(v13 + 48) + v22 * v18, v2);
          sub_10006F3B0(&qword_10010E1D0, &type metadata accessor for Transcriber.ReportingOption, &protocol conformance descriptor for Transcriber.ReportingOption);
          v27 = sub_1000C9AE4();
          v28 = *v19;
          (*v19)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v15 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v15 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v13 + 48) + v22 * v18, v29, v2);
        v31 = *(v13 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v13 + 16) = v33;
      }

      v14 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v13;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10006C7BC(uint64_t a1)
{
  v2 = sub_1000C9844();
  v3 = *(v2 - 8);
  v6 = __chkstk_darwin(v2, v4, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9, v10);
  v41 = &v34 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
    v13 = sub_1000C9DF4();
    v14 = 0;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v39 = v16;
    v40 = v13 + 56;
    v17 = *(v15 + 64);
    v36 = v12;
    v37 = a1 + ((v17 + 32) & ~v17);
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    v35 = (v15 + 16);
    while (1)
    {
      v38 = v14;
      v39(v41, v37 + v18 * v14, v2);
      sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      v20 = sub_1000C9AD4();
      v21 = ~(-1 << *(v13 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v15;
          v39(v8, *(v13 + 48) + v22 * v18, v2);
          sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
          v27 = sub_1000C9AE4();
          v28 = *v19;
          (*v19)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v15 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v15 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v13 + 48) + v22 * v18, v29, v2);
        v31 = *(v13 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v13 + 16) = v33;
      }

      v14 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v13;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006CADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9844();
  v5 = *(v4 - 8);
  v8 = __chkstk_darwin(v4, v6, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11, v12);
  v14 = &v22 - v13;
  v23 = a2;
  v15 = *(a1 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v10, v19, v4);
      sub_100068FC0(v14, v10);
      (*(v16 - 8))(v14, v4);
      v19 += v20;
      --v15;
    }

    while (v15);
    return v23;
  }

  return a2;
}

id sub_10006CC3C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v139 = a5;
  LODWORD(v150) = a4;
  v142 = a3;
  *&v149 = a2;
  v129 = a1;
  v6 = sub_1000C96D4();
  v147 = *(v6 - 8);
  v148 = v6;
  __chkstk_darwin(v6, v7, v8);
  v146 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100052CBC(&qword_10010E230, &qword_1000D2098);
  __chkstk_darwin(v10 - 8, v11, v12);
  v127 = &v121 - v13;
  v125 = sub_1000C9964();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125, v14, v15);
  v126 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C9C34();
  __chkstk_darwin(v17 - 8, v18, v19);
  v123 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100052CBC(&qword_10010DF38, &qword_1000D1DF0);
  __chkstk_darwin(v21 - 8, v22, v23);
  v145 = &v121 - v24;
  v138 = sub_100052CBC(&qword_10010DF70, &qword_1000D1EA0);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138, v25, v26);
  v134 = &v121 - v27;
  v136 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136, v28, v29);
  v133 = &v121 - v30;
  v152 = sub_100052CBC(&qword_10010DF40, &qword_1000D1DF8);
  v140 = *(v152 - 8);
  __chkstk_darwin(v152, v31, v32);
  v153 = &v121 - v33;
  v144 = sub_1000C97A4();
  v143 = *(v144 - 8);
  v36 = __chkstk_darwin(v144, v34, v35);
  v151 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v38, v39);
  v154 = &v121 - v40;
  v41 = sub_100052CBC(&qword_10010E238, &qword_1000D20A0);
  v44 = __chkstk_darwin(v41 - 8, v42, v43);
  v46 = &v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v47, v48);
  v50 = &v121 - v49;
  v128 = sub_1000C97C4();
  v51 = *(v128 - 8);
  __chkstk_darwin(v128, v52, v53);
  v55 = &v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000C9564();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56, v58, v59);
  v61 = &v121 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  sub_1000C96B4();
  swift_unknownObjectWeakInit();
  v62 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  v63 = sub_1000C9A64();
  (*(*(v63 - 8) + 56))(&v5[v62], 1, 1, v63);
  v64 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisOptions;
  v65 = sub_1000C9984();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v122 = v64;
  v132 = v65;
  v131 = v67;
  v130 = v66 + 56;
  (v67)(&v5[v64], 1, 1);
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent] = 0;
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__newUtteranceBeginSampleNumber] = 0;
  sub_1000C9554();
  v68 = v5;
  (*(v57 + 32))(&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale], v61, v56);
  v69 = sub_1000C94D4();
  v70 = *(*(v69 - 8) + 56);
  v70(v50, 1, 1, v69);
  v70(v46, 1, 1, v69);
  sub_1000C97B4();
  (*(v51 + 32))(&v68[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions], v55, v128);
  sub_100052CBC(&qword_10010DF78, &qword_1000D1EA8);
  v71 = sub_1000C97D4();
  v72 = *(v71 - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1000D1DC0;
  v76 = v75 + v74;
  v77 = *(v72 + 104);
  v77(v76, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v71);
  v77(v76 + v73, enum case for Transcriber.ReportingOption.alternativeTranscriptions(_:), v71);
  v77(v76 + 2 * v73, enum case for Transcriber.ReportingOption.volatileResults(_:), v71);
  v78 = sub_10006C49C(v75);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v155 = v68;
  *&v68[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions] = v78;
  v150 = sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
  v79 = sub_1000C9844();
  v80 = *(v79 - 8);
  v81 = *(v80 + 72);
  v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v83 = swift_allocObject();
  v149 = xmmword_1000D1DB0;
  *(v83 + 16) = xmmword_1000D1DB0;
  v84 = *(v80 + 104);
  v84(v83 + v82, enum case for Transcriber.TranscriptionOption.contextualizedTranscription(_:), v79);
  v85 = sub_10006C7BC(v83);
  swift_setDeallocating();
  v86 = *(v80 + 8);
  v86(v83 + v82, v79);
  swift_deallocClassInstance();
  v128 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  *&v155[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN] = v85;
  v129 = v81;
  v87 = swift_allocObject();
  *(v87 + 16) = v149;
  v121 = v84;
  v84(v87 + v82, enum case for Transcriber.TranscriptionOption.normalizedTranscription(_:), v79);
  v88 = sub_10006C7BC(v87);
  swift_setDeallocating();
  v86(v87 + v82, v79);
  swift_deallocClassInstance();
  *&v155[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN] = v88;
  if (v139)
  {
    v89 = v155;
    v90 = v128;
    swift_beginAccess();
    v91 = *&v89[v90];
    v92 = swift_allocObject();
    *(v92 + 16) = v149;
    v121(v92 + v82, enum case for Transcriber.TranscriptionOption.emoji(_:), v79);

    v93 = sub_10006CADC(v92, v91);
    swift_setDeallocating();
    v86(v92 + v82, v79);
    swift_deallocClassInstance();
    *&v89[v90] = v93;
  }

  v94 = v154;
  sub_1000C9794();
  sub_1000C98A4();
  v95 = v137;
  v96 = v134;
  v97 = v138;
  (*(v137 + 104))(v134, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v138);
  v98 = v153;
  v99 = v133;
  sub_1000C9C44();
  (*(v95 + 8))(v96, v97);
  v100 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStream;
  v101 = v140;
  v102 = v155;
  v103 = v152;
  (*(v140 + 32))(&v155[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStream], v98, v152);
  (*(v135 + 32))(&v102[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder], v99, v136);
  sub_1000C9944();
  swift_allocObject();
  *&v102[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext] = sub_1000C9934();
  if (v142)
  {
    sub_1000C9C14();
    (*(v124 + 104))(v126, enum case for AnalysisOptions.ModelRetention.whileInUse(_:), v125);
    v104 = sub_1000C9954();
    (*(*(v104 - 8) + 56))(v127, 1, 1, v104);
    v105 = v145;
    sub_1000C9974();
    v131(v105, 0, 1, v132);
    v106 = v122;
    swift_beginAccess();
    sub_10006F3F8(v105, &v102[v106], &qword_10010DF38, &qword_1000D1DF0);
    swift_endAccess();
    sub_1000C9734();
    v107 = v143;
    v108 = v144;
    (*(v143 + 16))(v151, v154);
    (*(v101 + 16))(v153, &v102[v100], v103);
    v109 = v146;
    if (qword_10010E6E8 != -1)
    {
      swift_once();
    }

    v110 = qword_10010E6F0;
    sub_100057274(&v102[v106], v105, &qword_10010DF38, &qword_1000D1DF0);
  }

  else
  {
    sub_1000C9734();
    v107 = v143;
    v111 = v94;
    v108 = v144;
    (*(v143 + 16))(v151, v111, v144);
    (*(v101 + 16))(v98, &v102[v100], v103);
    v109 = v146;
    v112 = v145;
    if (qword_10010E6E8 != -1)
    {
      swift_once();
    }

    v110 = qword_10010E6F0;
    v131(v112, 1, 1, v132);
  }

  swift_allocObject();
  v113 = v110;
  sub_1000C9934();
  sub_10006F1B0(&qword_10010DF90, &qword_10010DF40, &qword_1000D1DF8, &protocol conformance descriptor for AsyncStream<A>);
  *&v102[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer] = sub_1000C9724();
  v115 = v147;
  v114 = v148;
  (*(v147 + 16))(v109, &v102[v141], v148);
  v116 = sub_1000C96A4();
  v117 = sub_1000C9CE4();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "SpeechAnalyzer initialized", v118, 2u);
  }

  (*(v115 + 8))(v109, v114);
  (*(v107 + 8))(v154, v108);
  v119 = type metadata accessor for RDSAPISwiftSpeechAnalyzer(0);
  v156.receiver = v102;
  v156.super_class = v119;
  return objc_msgSendSuper2(&v156, "init");
}

uint64_t sub_10006DDE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006DE28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000572E0;

  return sub_10005FBB8();
}

uint64_t sub_10006DEDC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_100062908(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006DF88(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10006DFDC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_100062E6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006E084(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10006E0D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_100063370(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006E184()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000572E0;

  return sub_100063D2C(v4, v5, v6, v2, v3);
}

uint64_t sub_10006E21C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000572E0;

  return sub_100064BD0(v4, v5, v6, v2, v3);
}

uint64_t sub_10006E31C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E36C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100056BBC;

  return sub_10006660C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006E424()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10006E464(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v6 = 0;
    v7 = 1;
    if (v5)
    {
      v7 = 2;
    }
  }

  else
  {
    swift_beginAccess();
    *(v4 + 16) = 1;
    v8 = v6;
    v7 = 0;
  }

  *a2 = v7;
  return v6;
}

uint64_t sub_10006E4FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9834();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006E5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9834();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006E618(uint64_t a1)
{
  result = sub_1000C9834();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10006E68C(uint64_t a1, uint64_t a2)
{
  sub_1000C96D4();
  if (v2 <= 0x3F)
  {
    sub_1000C9564();
    if (v3 <= 0x3F)
    {
      sub_10006E984(319, &qword_10010E068, &type metadata accessor for TaskHint, &type metadata accessor for Optional);
      if (v4 <= 0x3F)
      {
        sub_1000C97C4();
        if (v5 <= 0x3F)
        {
          sub_10006E984(319, &qword_10010E070, &type metadata accessor for AnalysisOptions, &type metadata accessor for Optional);
          if (v6 <= 0x3F)
          {
            sub_10006E984(319, &qword_10010E078, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream);
            if (v7 <= 0x3F)
            {
              sub_10006E984(319, &qword_10010E080, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream.Continuation);
              if (v8 <= 0x3F)
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

void sub_10006E984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10006E9F0(uint64_t a1)
{
  sub_10006E984(319, &qword_10010E078, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10006E984(319, &qword_10010E080, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10006EB24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006EB6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10006DF88(result, a2);
  }

  return result;
}

uint64_t sub_10006EB80()
{
  swift_unknownObjectRelease();

  sub_10006DF88(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006EBCC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006EC14()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006EC54()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100056BBC;

  return sub_100062488(v2, v4, v3);
}

uint64_t sub_10006ED0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_1000689FC(v2, v3, v4);
}

uint64_t sub_10006EDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000572E0;

  return sub_100068AE4(a1, v4, v5, v6);
}

uint64_t sub_10006EE98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EED0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000572E0;

  return sub_100068EC8(a1, v4);
}

uint64_t sub_10006EF88()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006EFD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_1000616AC(v2, v3, v4);
}

uint64_t sub_10006F084()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F0C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000572E0;

  return sub_1000603D0(v2, v3);
}

uint64_t sub_10006F170()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006F1B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100052D68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10006F1F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10006F23C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_10006F28C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10006F2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F354(uint64_t a1)
{
  v2 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F3B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006F3F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100052CBC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t *sub_10006F460(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_10006F508(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1[2] | a2[2])
  {
    operator new();
  }

  v4 = sub_1000C8230(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "cmdp_edit_distance::editfst1 : EMPTY Symbol set", buf, 2u);
  }

  *a3 = 0;
}

void sub_10006F778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100027CE4(&a22);
  _Unwind_Resume(a1);
}

void sub_10006F7E4(void *a1@<X0>, void *a2@<X8>)
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_10006F508(a1, &v2, a2);
  sub_100017598(&v2, v3[0]);
}

void sub_10006F844(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v10 = v3;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = v10;
  }

  v9 = off_100101090;
  v5 = v3[8] - v3[7];
  if ((v5 >> 3) >= 1)
  {
    v6 = 0;
    v7 = (v5 >> 3) & 0x7FFFFFFF;
    do
    {
      if (*(*(v10[7] + 8 * v6) + 32) != *(*(v10[7] + 8 * v6) + 24))
      {
        v8 = *sub_10002B564(a1, a2);
        sub_10002E640(&v9);
        v12 = v8;
        sub_10002E780(v10, v6, &v12);
      }

      ++v6;
    }

    while (v7 != v6);
  }

  operator new();
}

void sub_10006F9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100016EC0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006FA00(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  v5 = sub_1000C8230(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "cmdp_fst_util::prefixAcceptingFst : null FSTs", buf, 2u);
  }

  *a3 = 0;
}

void sub_10006FDE4(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (a1[2])
  {
    operator new();
  }

  v5 = sub_1000C8230(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "cmdp_edit_distance::editfst2 : EMPTY Symbol set", buf, 2u);
  }

  *a4 = 0;
}

void sub_100070100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100027CE4(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_100070170@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100070C00;
  block[3] = &unk_100100EC0;
  block[4] = a1;
  if (qword_10010E7A8 != -1)
  {
    dispatch_once(&qword_10010E7A8, block);
  }

  if (!qword_10010E7A0)
  {
    v43 = sub_1000C8230(0, a2);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315138;
      *&__p[4] = a1;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Unable to read synonyms FST for %s", __p, 0xCu);
    }

    operator new();
  }

  v10 = (*(*qword_10010E7A0 + 72))(qword_10010E7A0, 0);
  *a5 = v10;
  v11 = (*(*v10 + 16))(v10);
  v12 = (*(*v10 + 96))(v10);
  v13 = (*(*v12 + 16))(v12);
  v14 = (*(*v10 + 104))(v10);
  v15 = (*(*v14 + 16))(v14);
  v18 = *a2;
  v16 = a2 + 1;
  v17 = v18;
  if (v18 != v16)
  {
    do
    {
      v19 = (*(*v13 + 32))(v13, v17 + 4);
      v20 = (*(*v15 + 32))(v15, v17 + 4);
      v10 = *a5;
      *__p = v19;
      *&__p[4] = v20;
      *&__p[8] = 0;
      v46 = v11;
      (*(*v10 + 184))(v10, v11, __p);
      v21 = v17[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v17[2];
          v23 = *v22 == v17;
          v17 = v22;
        }

        while (!v23);
      }

      v17 = v22;
    }

    while (v22 != v16);
  }

  v26 = *a3;
  v24 = a3 + 1;
  v25 = v26;
  if (v26 != v24)
  {
    do
    {
      v27 = (*(*v13 + 32))(v13, v25 + 4);
      v28 = (*(*v15 + 32))(v15, v25 + 4);
      v10 = *a5;
      *__p = v27;
      *&__p[4] = v28;
      *&__p[8] = 0;
      v46 = v11;
      (*(*v10 + 184))(v10, v11, __p);
      v29 = v25[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v25[2];
          v23 = *v30 == v25;
          v25 = v30;
        }

        while (!v23);
      }

      v25 = v30;
    }

    while (v30 != v24);
  }

  v33 = *a4;
  v31 = a4 + 1;
  v32 = v33;
  if (v33 != v31)
  {
    do
    {
      v34 = (*(*v13 + 32))(v13, v32 + 4);
      v35 = (*(*v15 + 32))(v15, v32 + 4);
      v10 = *a5;
      *__p = v34;
      *&__p[4] = v35;
      *&__p[8] = 0;
      v46 = v11;
      (*(*v10 + 184))(v10, v11, __p);
      v36 = v32[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v32[2];
          v23 = *v37 == v32;
          v32 = v37;
        }

        while (!v23);
      }

      v32 = v37;
    }

    while (v37 != v31);
  }

  sub_1000113AC(__p, off_10010E248);
  v38 = (*(*v13 + 32))(v13, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  sub_1000113AC(__p, off_10010E248);
  v39 = (*(*v15 + 32))(v15, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  *__p = v38;
  *&__p[4] = v39;
  *&__p[8] = 0;
  v46 = v11;
  (*(*v10 + 184))(v10, v11, __p);
  sub_1000113AC(__p, off_10010E240[0]);
  v40 = (*(*v13 + 32))(v13, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  sub_1000113AC(__p, off_10010E240[0]);
  v41 = (*(*v15 + 32))(v15, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  *__p = v40;
  *&__p[4] = v41;
  *&__p[8] = 0;
  v46 = v11;
  (*(*v10 + 184))(v10, v11, __p);
  (*(*v10 + 256))(v10, v13);
  (*(*v10 + 264))(v10, v15);
  (*(*v13 + 8))(v13);
  return (*(*v15 + 8))(v15);
}

void sub_100070AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_100027CE4(&a16);
  _Unwind_Resume(a1);
}

void sub_100070C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  MainBundle = CFBundleGetMainBundle();
  v3 = CFBundleCopyResourceURL(MainBundle, @"CommandProcessingResources.bundle", 0, 0);
  if (v3)
  {
    v5 = v3;
    v6 = CFBundleCreate(kCFAllocatorDefault, v3);
    CFRelease(v5);
    v7 = CFStringCreateWithCString(0, v1, 0x8000100u);
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v7);
    CFRelease(v7);
    if (CFStringHasPrefix(CanonicalLocaleIdentifierFromString, @"en"))
    {
      v9 = @"en";
    }

    else
    {
      v9 = CanonicalLocaleIdentifierFromString;
    }

    MutableCopy = CFStringCreateMutableCopy(0, 0, v9);
    CFStringAppend(MutableCopy, @"_");
    CFStringAppend(MutableCopy, @"synonym.fst");
    v13 = CFBundleCopyResourceURL(v6, MutableCopy, 0, 0);
    CFRelease(CanonicalLocaleIdentifierFromString);
    CFRelease(MutableCopy);
    CFRelease(v6);
    if (v13)
    {
      v16 = CFURLGetString(v13);
      v17 = CFStringCreateMutableCopy(0, 0, v16);
      CFRelease(v13);
      v25.location = 0;
      v25.length = 7;
      CFStringDelete(v17, v25);
      sub_1000B9AE4(v17, 0, __p);
      CFRelease(v17);
      goto LABEL_13;
    }

    v10 = sub_1000C8230(v14, v15);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "cmdp_edit_distance::synonymDictionary : Unable to access synonym URL";
      goto LABEL_11;
    }
  }

  else
  {
    v10 = sub_1000C8230(0, v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "cmdp_edit_distance::synonymDictionary : Unable to access resource URL";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }
  }

  v18 = sub_1000113AC(__p, "");
LABEL_13:
  v20 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v20 = __p[1];
  }

  if (v20)
  {
    qword_10010E7A0 = sub_100070E90(__p);
  }

  else
  {
    v21 = sub_1000C8230(v18, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Empty synonym Plist FST", buf, 2u);
    }
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100070E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100070E90(uint64_t *a1)
{
  if (sub_100073AE8(a1))
  {
    operator new();
  }

  return 0;
}

void sub_100070F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100016EC0(a10);
  }

  operator delete();
}

unint64_t sub_100070F78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (byte_10010E8AC == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = sub_100071124(a1, a2, a3, 0);
    if (!sub_10002B368(v6, v7))
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v12, __p);
      v9 = sub_10002AE44(&std::cerr, "TestProperties: stored FST properties incorrect", 47);
      sub_10002AE44(v9, " (stored: props1, computed: props2)", 35);
      sub_10002B280(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return sub_100071124(a1, a2, a3, 1);
  }
}

void sub_1000710EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100071124(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v48 = 0;
  v49 = v9;
  v46 = 0;
  v47 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v41 = &v46;
    *&v42 = 0;
    *(&v42 + 1) = &v49;
    v44 = 0u;
    v45 = 0u;
    sub_100071A64(a1, &v41, 0);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v36 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v49 = v13;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  (*(*a1 + 112))(a1, &v36);
  v14 = 0;
LABEL_13:
  if (!v36)
  {
    if (v38 >= v37)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v36 + 16))(v36))
  {
    if (v36)
    {
      v15 = (*(*v36 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      (*(*a1 + 120))(a1, v15, &v41);
      v17 = 1;
      while (v41)
      {
        if ((*(*v41 + 16))(v41))
        {
          if (v41)
          {
            (*(*v41 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v42 + 1))
          {
            --**(&v42 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v29 = (*(*a1 + 24))(&v50, a1, v15);
          v31 = sub_10002B59C(v29, v30);
          LODWORD(v41) = v50;
          HIDWORD(v50) = *v31;
          if (*&v50 == *(&v50 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v50) != 1)
            {
              v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v33 = sub_10002B564(v31, v32);
            LODWORD(v41) = v50;
            HIDWORD(v50) = *v33;
            v34.n128_u32[0] = v50;
            if (*&v50 != *(&v50 + 1))
            {
              v49 = v49 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
            }

            ++v14;
          }

          if (v36)
          {
            (*(*v36 + 32))(v36, v34);
          }

          else
          {
            ++v38;
          }

          goto LABEL_13;
        }

        if (!v41)
        {
          goto LABEL_29;
        }

        v18 = (*(*v41 + 24))();
LABEL_30:
        if (v40 && sub_100072A48(v40, v18))
        {
          v49 = v49 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        v19 = v39;
        if (v39)
        {
          v19 = sub_100072A48(v39, v18 + 1);
          if (v19)
          {
            v49 = v49 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
          }
        }

        v20 = *v18;
        v21 = *v18;
        if (*v18 != v18[1])
        {
          v49 = v49 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v21 = v18[1];
        }

        if (v20 | v21)
        {
          if (v20)
          {
            if (!v21)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v22 = v49;
        }

        else
        {
          v22 = v49 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v49 = v22 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v21)
        {
LABEL_46:
          v49 = v49 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v17)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v17)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v20 < v11)
        {
          v49 = v49 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v21 < SHIDWORD(v11))
        {
          v49 = v49 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v23 = sub_10002B564(v19, v16);
        HIDWORD(v50) = v18[2];
        LODWORD(v50) = *v23;
        v24.n128_u32[0] = HIDWORD(v50);
        if (*(&v50 + 1) != *&v50)
        {
          v25 = sub_10002B59C(v23, v16);
          HIDWORD(v50) = v18[2];
          LODWORD(v50) = *v25;
          v24.n128_u32[0] = HIDWORD(v50);
          if (*(&v50 + 1) != *&v50)
          {
            v26 = v49;
            v27 = v49 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
            v49 = v27;
            if ((v26 & 0x800000000000) != 0 && v46[v15] == v46[v18[3]])
            {
              v49 = v27 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v28 = v18[3];
        if (v28 <= v15)
        {
          v49 = v49 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v28 != v15 + 1)
        {
          v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v18;
        if (v40)
        {
          sub_100072AFC(v40, v18, v18);
        }

        if (v39)
        {
          sub_100072AFC(v39, v18 + 1, v18 + 1);
        }

        if (v41)
        {
          (*(*v41 + 32))(v41, v24);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          ++v43;
        }
      }

      if (v43 >= v42)
      {
        goto LABEL_69;
      }

LABEL_29:
      v18 = (*(&v41 + 1) + 16 * v43);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v38;
    goto LABEL_19;
  }

  if (v36)
  {
    (*(*v36 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v39)
  {
    sub_10001A12C(v39);
    operator delete();
  }

  if (v40)
  {
    sub_10001A12C(v40);
    operator delete();
  }

  v9 = v49;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v9;
}

void sub_100071980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  sub_10002B518(va, 0);
  sub_10002B518(va1, 0);
  v15 = *(v13 - 128);
  if (v15)
  {
    *(v13 - 120) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_10007231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000723D4(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_100072564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1000750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007257C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10002C638(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_100072684(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10002C638(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_100072790(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10002C638(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_100072898(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10002C638(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1000729A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_10002CA6C(&v18, &v16, &v14, &v13);
}

uint64_t *sub_100072A48(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100072AFC(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_100072D28(void *a1, void *a2, uint64_t *a3)
{
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  v6 = -1;
  v32 = 0;
  v33 = 0;
  v31 = -1;
  v31 = (*(*a1 + 16))(a1);
  v32 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v32 = sub_1000723D4(a1);
    goto LABEL_5;
  }

  v25 = a2 + *(*a2 - 24);
  if ((v25[32] & 5) == 0)
  {
    (*(**(v25 + 5) + 32))(__p);
    v6 = v35;
    if (v35 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  sub_1000113AC(__p, "vector");
  sub_10002CD58(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v26, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v26;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v26, __p);
    v19 = sub_10002AE44(&std::cerr, "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    sub_10002AE44(v19, v21, v22);
LABEL_29:
    sub_10002B280(&v26);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v23 = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v32 == v11)
    {
      v23 = 1;
      goto LABEL_32;
    }

    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v26, __p);
    sub_10002AE44(&std::cerr, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v32 = v11;
  sub_1000113AC(__p, "vector");
  v23 = sub_10002CF84(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SHIBYTE(v28[0]) < 0)
  {
    operator delete(v27[0]);
  }

  return v23;
}

uint64_t sub_100073260(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1000732A4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100016CB8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100073348(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001014A0;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &off_100101440;
  sub_1000113AC(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  sub_10002DDA4(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  sub_10002DE44(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = sub_1000723D4(a2);
    sub_10002E1F8((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      sub_10002DEE4(a1);
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

unint64_t sub_1000738DC(unint64_t a1, uint64_t a2, float *a3, _DWORD *a4)
{
  v5 = a2;
  v7 = *a3;
  v6 = *(a3 + 1);
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v7)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  v12 = sub_10002B59C(a1, a2);
  if (a3[2] != *v12 && a3[2] != *sub_10002B564(v12, v13))
  {
    v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
  }

  if (*(a3 + 3) <= v5)
  {
    v14 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v14 = v10;
  }

  if ((v14 & 0x4000000000) != 0)
  {
    return v14 & 0x45D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v14 & 0x45D7FFEB0007;
  }
}

unint64_t sub_100073A04(unint64_t a1, float *a2, float *a3)
{
  v5 = a1;
  v6 = sub_10002B59C(a1, a2);
  if (*a2 != *v6)
  {
    v6 = sub_10002B564(v6, v7);
    if (*a2 != *v6)
    {
      v5 &= ~0x100000000uLL;
    }
  }

  v8 = sub_10002B59C(v6, v7);
  if (*a3 != *v8 && *a3 != *sub_10002B564(v8, v9))
  {
    v5 = v5 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
  }

  return v5 & 0xC3FFFFFF0007;
}

uint64_t sub_100073AE8(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = a1[1];
  }

  if (!v1)
  {
    sub_1000113AC(__p, "standard input");
    sub_1000C89D8(__dst, __p, 0, 0, 0);
    sub_100073FB0(&std::cin, __dst);
  }

  sub_100073DE0(__dst, a1, 12);
  if ((*(&__dst[4] + *(__dst[0] - 3)) & 5) == 0)
  {
    sub_1000C89D8(__p, a1, 0, 0, 0);
    sub_100073FB0(__dst, __p);
  }

  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v10, __p);
  v3 = sub_10002AE44(&std::cerr, "ExpandedFst::Read: Can't open file: ", 36);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  sub_10002AE44(v3, v5, v6);
  sub_10002B280(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return 0;
}

void sub_100073D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100073DE0(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2, int a3))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100073F78(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100074370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100073260(&a23);
  (*(*v23 + 8))(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_100074418(uint64_t a1, void *a2, uint64_t **a3, int a4, uint64_t a5)
{
  v10 = a3[3];
  if (v10)
  {
    *a5 = *v10;
    std::string::operator=((a5 + 8), (v10 + 8));
    std::string::operator=((a5 + 32), (v10 + 32));
    v11 = *(v10 + 88);
    v12 = *(v10 + 72);
    *(a5 + 56) = *(v10 + 56);
    *(a5 + 72) = v12;
    *(a5 + 88) = v11;
  }

  else
  {
    v13 = sub_1000C82AC(a5, a2, a3, 0);
    result = 0;
    if (!v13)
    {
      return result;
    }
  }

  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(__p, "INFO");
    sub_10002B1D4(&v81, __p);
    v15 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: source: ", 29);
    v16 = *(a3 + 23);
    v17 = v16 >= 0 ? a3 : *a3;
    v18 = v16 >= 0 ? *(a3 + 23) : a3[1];
    v19 = sub_10002AE44(v15, v17, v18);
    v20 = sub_10002AE44(v19, ", fst_type: ", 12);
    v21 = *(a5 + 31);
    v22 = v21 >= 0 ? a5 + 8 : *(a5 + 8);
    v23 = v21 >= 0 ? *(a5 + 31) : *(a5 + 16);
    v24 = sub_10002AE44(v20, v22, v23);
    v25 = sub_10002AE44(v24, ", arc_type: ", 12);
    v26 = sub_10002D384();
    v27 = *(v26 + 23);
    v28 = v27 >= 0 ? v26 : *v26;
    v29 = v27 >= 0 ? *(v26 + 23) : *(v26 + 8);
    v30 = sub_10002AE44(v25, v28, v29);
    sub_10002AE44(v30, ", version: ", 11);
    v31 = std::ostream::operator<<();
    sub_10002AE44(v31, ", flags: ", 9);
    std::ostream::operator<<();
    sub_10002B280(&v81);
    if (v80 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v32 = *(a5 + 31);
  if (v32 >= 0)
  {
    v33 = *(a5 + 31);
  }

  else
  {
    v33 = *(a5 + 16);
  }

  v34 = *(a1 + 39);
  v35 = v34;
  if ((v34 & 0x80u) != 0)
  {
    v34 = *(a1 + 24);
  }

  if (v33 != v34 || (v32 >= 0 ? (v36 = (a5 + 8)) : (v36 = *(a5 + 8)), v35 >= 0 ? (v37 = (a1 + 16)) : (v37 = *(a1 + 16)), memcmp(v36, v37, v33)))
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v81, __p);
    v38 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: FST not of type ", 37);
    v39 = *(a1 + 39);
    if (v39 >= 0)
    {
      v40 = a1 + 16;
    }

    else
    {
      v40 = *(a1 + 16);
    }

    if (v39 >= 0)
    {
      v41 = *(a1 + 39);
    }

    else
    {
      v41 = *(a1 + 24);
    }

    v42 = sub_10002AE44(v38, v40, v41);
    v43 = sub_10002AE44(v42, ": ", 2);
    v44 = *(a3 + 23);
    if (v44 >= 0)
    {
      v45 = a3;
    }

    else
    {
      v45 = *a3;
    }

    if (v44 >= 0)
    {
      v46 = *(a3 + 23);
    }

    else
    {
      v46 = a3[1];
    }

LABEL_50:
    sub_10002AE44(v43, v45, v46);
    sub_10002B280(&v81);
    if (v80 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v47 = sub_10002D384();
  v48 = *(a5 + 55);
  if (v48 >= 0)
  {
    v49 = *(a5 + 55);
  }

  else
  {
    v49 = *(a5 + 40);
  }

  v50 = *(v47 + 23);
  v51 = v50;
  if ((v50 & 0x80u) != 0)
  {
    v50 = *(v47 + 8);
  }

  if (v49 != v50 || (v48 >= 0 ? (v52 = (a5 + 32)) : (v52 = *(a5 + 32)), v51 >= 0 ? (v53 = v47) : (v53 = *v47), memcmp(v52, v53, v49)))
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v81, __p);
    v54 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: Arc not of type ", 37);
    v55 = sub_10002D384();
    v56 = *(v55 + 23);
    if (v56 >= 0)
    {
      v57 = v55;
    }

    else
    {
      v57 = *v55;
    }

    if (v56 >= 0)
    {
      v58 = *(v55 + 23);
    }

    else
    {
      v58 = *(v55 + 8);
    }

    v59 = sub_10002AE44(v54, v57, v58);
    v43 = sub_10002AE44(v59, ": ", 2);
    v60 = *(a3 + 23);
    if (v60 >= 0)
    {
      v45 = a3;
    }

    else
    {
      v45 = *a3;
    }

    if (v60 >= 0)
    {
      v46 = *(a3 + 23);
    }

    else
    {
      v46 = a3[1];
    }

    goto LABEL_50;
  }

  if (*(a5 + 56) < a4)
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v81, __p);
    v61 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: Obsolete ", 30);
    v62 = *(a1 + 39);
    if (v62 >= 0)
    {
      v63 = a1 + 16;
    }

    else
    {
      v63 = *(a1 + 16);
    }

    if (v62 >= 0)
    {
      v64 = *(a1 + 39);
    }

    else
    {
      v64 = *(a1 + 24);
    }

    v65 = sub_10002AE44(v61, v63, v64);
    v43 = sub_10002AE44(v65, " FST version: ", 14);
    v66 = *(a3 + 23);
    if (v66 >= 0)
    {
      v45 = a3;
    }

    else
    {
      v45 = *a3;
    }

    if (v66 >= 0)
    {
      v46 = *(a3 + 23);
    }

    else
    {
      v46 = a3[1];
    }

    goto LABEL_50;
  }

  *(a1 + 8) = *(a5 + 64);
  if (*(a5 + 60))
  {
    v67 = sub_100074A54(a2, a3);
    v68 = *(a1 + 40);
    *(a1 + 40) = v67;
    if (v68)
    {
      (*(*v68 + 8))(v68);
    }
  }

  if ((*(a3 + 52) & 1) == 0)
  {
    v69 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v69)
    {
      (*(*v69 + 8))(v69);
    }
  }

  if ((*(a5 + 60) & 2) != 0)
  {
    v70 = sub_100074A54(a2, a3);
    v71 = *(a1 + 48);
    *(a1 + 48) = v70;
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }
  }

  if ((*(a3 + 53) & 1) == 0)
  {
    v72 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v72)
    {
      (*(*v72 + 8))(v72);
    }
  }

  v73 = a3[4];
  if (v73)
  {
    v74 = (*(*v73 + 16))(v73);
    v75 = *(a1 + 40);
    *(a1 + 40) = v74;
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }
  }

  v76 = a3[5];
  if (v76)
  {
    v77 = (*(*v76 + 16))(v76);
    v78 = *(a1 + 48);
    *(a1 + 48) = v77;
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }
  }

  return 1;
}

void sub_100074A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100074A54(void *a1, const std::string *a2)
{
  *__p = 0u;
  v6 = 0u;
  std::string::operator=(&__p[1], a2);
  v3 = sub_100074ADC(a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

void *sub_100074ADC(void *a1)
{
  if (sub_1000C5A14(a1))
  {
    operator new();
  }

  return 0;
}

void sub_100074B74(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100074BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100074C08(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100074C08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100074D10(v2);
    operator delete();
  }

  return a1;
}

void sub_100074C54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100074C8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100074D10(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100074CD0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100074D10(uint64_t a1)
{
  std::mutex::~mutex((a1 + 216));
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10001A178(a1 + 136, *(a1 + 144));
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 48);
  sub_100020578(&v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100074DB0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100074DF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void sub_100074F24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100075130(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100074F40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100074F78(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100074FA8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100074FE8(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100075078(a1, &v5);
  if (v6)
  {
    sub_100016EC0(v6);
  }

  *a1 = off_100101090;
  return a1;
}

void sub_100075060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100016EC0(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100075078(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = off_1001012E0;
  if (v3)
  {
    sub_100016EC0(v3);
  }

  *a1 = off_1001011B8;
  return a1;
}

void sub_100075398(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = v14[4];
  v14[4] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  v17 = v14[3];
  v14[3] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  v18 = v14[2];
  v14[2] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  v19 = v14[1];
  v14[1] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075538(uint64_t a1, int __val)
{
  std::to_string(&v4, __val);
  v3 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v4);
  if (v3 == -1)
  {
    v3 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v4, v3);
  }

  (*(**(a1 + 8) + 152))(*(a1 + 8), v3);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_10007563C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075658(uint64_t a1, int __val, double a3)
{
  std::to_string(&v9, __val);
  v5 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v9);
  if (v5 == -1)
  {
    v5 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v9, v5);
  }

  v6 = *(a1 + 8);
  v7 = a3;
  v8 = v7;
  (*(*v6 + 160))(v6, v5, &v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_100075774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100075790(uint64_t a1)
{
  (*(**(a1 + 8) + 256))(*(a1 + 8), *(a1 + 16));
  v2 = *(**(a1 + 8) + 264);

  return v2();
}

void sub_100075844(uint64_t a1, int __val, int a3, uint64_t a4, uint64_t a5, double a6)
{
  std::to_string(&v20, __val);
  v11 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v20);
  if (v11 == -1)
  {
    v11 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v20, v11);
  }

  std::to_string(&v19, a3);
  v12 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v19);
  LODWORD(v13) = v12;
  if (v12 == -1)
  {
    v13 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v19, v13);
  }

  v14 = (*(**(a1 + 16) + 32))(*(a1 + 16), a4);
  v15 = v14;
  if (*a1 == 1)
  {
    v14 = (*(**(a1 + 24) + 32))(*(a1 + 24), a5);
  }

  v16 = *(a1 + 8);
  v17 = a6;
  v18[0] = v15;
  v18[1] = v14;
  *&v18[2] = v17;
  v18[3] = v13;
  (*(*v16 + 184))(v16, v11, v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_100075AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075AE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  if (a1 && a2)
  {
    v6 = (*(*a1 + 72))(a1, 0);
    v7 = (*(*a2 + 72))(a2, 0);
    v12 = 0;
    v8 = (*(*v6 + 104))(v6);
    v9 = (*(*v7 + 96))(v7);
    sub_1000C3B20(v8, v9, &v12);
  }

  v10 = sub_1000C8230(a1, a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "cmdp_fst_util::composeFst : null FSTs", &__p, 2u);
  }

  *a4 = 0;
}

void sub_100075F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *v19 = 0;
  (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
  (*(*v20 + 8))(v20);
  (*(*v18 + 8))(v18);
  (*(*v17 + 8))(v17);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

void sub_100076100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 96))(a1);
  v7 = (*(*a1 + 104))(a1);

  sub_100078A30(a1, v6, a2, 1, v7, a3, 1);
}

void sub_1000761AC(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  sub_100079D58(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1000761FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100076218(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  sub_10007BAB0(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100076268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100076284(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  v4 = 0;
  memset(v5, 0, sizeof(v5));
  v1[0] = 0;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = &v4;
  v2 = 0u;
  v3 = 0u;
  sub_100071A64(a1, v1, 0);
}

void sub_100076440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_10002CCE8(&a13);
  v16 = *(v14 - 80);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(v13 + 24);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100076488(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  if (*a2 != a2[1])
  {
    v4 = *(*a2 + 24);
    v5 = (*(*v4 + 96))(v4);
    v6 = (*(*v4 + 104))(v4);
    sub_1000C3B20(v5, v6, &v9);
  }

  v7 = (*(*a1 + 96))(a1);
  v8 = (*(*a1 + 104))(a1);
  sub_1000C3B20(v7, v8, &v9);
}

uint64_t sub_100076AB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *sub_10002B59C(result, a2);
    sub_100076B08(v2, 1, &v3, -1, 0.000001);
  }

  return result;
}

void sub_100076BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000AF040(va);
  v11 = *(v9 - 88);
  if (v11)
  {
    *(v9 - 80) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100076BEC(void *a1, uint64_t a2)
{
  v13 = 0;
  *&v11[*(v10 - 3) - 8] = v3;
  v4 = &v11[*(v10 - 3) - 8];
  std::ios_base::init(v4, v11);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  std::ofstream::open();
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = (*(*a1 + 16))(a1);
  sub_100076EF8(a1, v5, &__p, &v10);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v11[*(v10 - 3) - 8], *&v11[*(v10 - 3) + 24] | 4);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100076EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100077480(va);
  _Unwind_Resume(a1);
}

void sub_100076EF8(void *a1, unsigned int a2, const void **a3, uint64_t a4)
{
  v54 = a2;
  if (a2 == -1)
  {
    return;
  }

  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    while (*v7 != a2)
    {
      if (++v7 == v8)
      {
        goto LABEL_7;
      }
    }
  }

  if (v7 != v8)
  {
    return;
  }

LABEL_7:
  sub_10002C79C(a3, &v54);
  v9 = (*(*a1 + 24))(__p, a1, v54);
  v11 = sub_10002B59C(v9, v10);
  LODWORD(v51.__locale_) = __p[0];
  LODWORD(v49[0]) = *v11;
  if (*__p != *v49)
  {
    v40 = std::ostream::operator<<();
    v41 = sub_10002AE44(v40, "\t", 1);
    (*(*a1 + 24))(v49, a1, v54);
    if (*v49 == INFINITY)
    {
      v42 = "Infinity";
      v43 = v41;
      v44 = 8;
    }

    else
    {
      if (*v49 != -INFINITY)
      {
        v45 = std::ostream::operator<<();
        goto LABEL_50;
      }

      v42 = "-Infinity";
      v43 = v41;
      v44 = 9;
    }

    v45 = sub_10002AE44(v43, v42, v44);
LABEL_50:
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = std::locale::use_facet(&v51, &std::ctype<char>::id);
    (v46->__vftable[2].~facet_0)(v46, 10);
    std::locale::~locale(&v51);
    std::ostream::put();
    std::ostream::flush();
    return;
  }

  v12 = (*(*a1 + 104))(a1, *__p);
  v13 = (*(*a1 + 96))(a1);
  v51.__locale_ = 0;
  v52 = 0;
  v53 = 0;
  v14 = *(*(a1[1] + 56) + 8 * v54);
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v14 + 24);
  }

  if (v15 == v16)
  {
    return;
  }

  v18 = v13;
  v19 = (v16 - v15) >> 4;
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = (v17 + 12);
  do
  {
    v22 = std::ostream::operator<<();
    sub_10002AE44(v22, "\t", 1);
    v23 = std::ostream::operator<<();
    v24 = sub_10002AE44(v23, "\t", 1);
    (*(*v18 + 72))(v49, v18, *(v21 - 3));
    if ((v50 & 0x80u) == 0)
    {
      v25 = v49;
    }

    else
    {
      v25 = v49[0];
    }

    if ((v50 & 0x80u) == 0)
    {
      v26 = v50;
    }

    else
    {
      v26 = v49[1];
    }

    v27 = sub_10002AE44(v24, v25, v26);
    v28 = sub_10002AE44(v27, "\t", 1);
    (*(*v12 + 72))(__p, v12, *(v21 - 2));
    if ((v48 & 0x80u) == 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if ((v48 & 0x80u) == 0)
    {
      v30 = v48;
    }

    else
    {
      v30 = __p[1];
    }

    v31 = sub_10002AE44(v28, v29, v30);
    v32 = sub_10002AE44(v31, "\t", 1);
    v33 = *(v21 - 1);
    if (v33 == INFINITY)
    {
      v34 = "Infinity";
      v35 = 8;
LABEL_32:
      v36 = sub_10002AE44(v32, v34, v35);
      goto LABEL_33;
    }

    if (v33 == -INFINITY)
    {
      v34 = "-Infinity";
      v35 = 9;
      goto LABEL_32;
    }

    v36 = std::ostream::operator<<();
LABEL_33:
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(&v55, &std::ctype<char>::id);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v55);
    std::ostream::put();
    std::ostream::flush();
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    sub_10002C79C(&v51.__locale_, v21);
    v21 += 4;
    --v20;
  }

  while (v20);
  locale = v51.__locale_;
  v39 = v52;
  if (v51.__locale_ != v52)
  {
    do
    {
      sub_100076EF8(a1, *locale++, a3, a4);
    }

    while (locale != v39);
    locale = v51.__locale_;
  }

  if (locale)
  {
    v52 = locale;
    operator delete(locale);
  }
}

void *sub_100077480(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_100077778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000777A0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_10010E258, memory_order_acquire) & 1) == 0)
  {
    sub_1000B9710();
  }

  return &dword_10010E250;
}

void sub_1000777D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  if (a2 > 0)
  {
    sub_1000AF154(buf);
  }

  v5 = sub_1000C8230(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "RXFstOp::copyNBestStrings : invalid n = %d, n should be > 0", buf, 8u);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_100077980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, void (**a17)(), uint64_t a18, std::__shared_weak_count *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  a16 = &a13;
  sub_100019DA8(&a16);
  sub_100016FD4(&a13);
  a17 = off_100100EF0;
  if (a19)
  {
    sub_100016EC0(a19);
  }

  _Unwind_Resume(a1);
}

void sub_100077AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000AF040(va);
  v15 = *(v13 - 104);
  if (v15)
  {
    *(v13 - 96) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_100077BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100077BE0(void *a1, const void **a2, int a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v53) = a3;
  if (a3 != -1)
  {
    sub_10002C79C(a2, &v53 + 1);
    v9 = (*(*a1 + 24))(&v53, a1, HIDWORD(v53));
    v11 = sub_10002B59C(v9, v10);
    *buf = v53;
    LODWORD(v49[0]) = *v11;
    v13.n128_u32[0] = v53;
    if (*&v53 != *v49)
    {
      v11 = sub_100078424(a5, a4);
    }

    v14 = *(*(a1[1] + 56) + 8 * SHIDWORD(v53));
    v15 = *(v14 + 24);
    v16 = *(v14 + 32);
    v17 = v15 == v16 ? 0 : v15;
    if (v15 != v16)
    {
      v18 = 0;
      v19 = (v16 - v15) >> 4;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      while (1)
      {
        v21 = (v17 + 16 * v18);
        if (v21[3] != HIDWORD(v53))
        {
          break;
        }

        v22 = sub_1000C8230(v11, v12);
        v11 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "cmdp_fst_util::unionFst : Loop detected while computing paths", buf, 2u);
        }

LABEL_49:
        if (++v18 == v20)
        {
          return;
        }
      }

      v23 = (*(*a1 + 96))(a1, v13);
      v24 = (*(*a1 + 104))(a1);
      (*(*v23 + 72))(buf, v23, *v21);
      v11 = (*(*v24 + 72))(v49, v24, v21[1]);
      if (v52 < 0)
      {
        if (*&buf[8] != 5)
        {
          goto LABEL_23;
        }

        v25 = *buf;
      }

      else
      {
        if (v52 != 5)
        {
          goto LABEL_23;
        }

        v25 = buf;
      }

      v26 = *v25;
      v27 = v25[4];
      if (v26 != 1936745788 || v27 != 62)
      {
        goto LABEL_23;
      }

      if (v50 < 0)
      {
        if (v49[1] != 5)
        {
          goto LABEL_23;
        }

        v38 = v49[0];
      }

      else
      {
        if (v50 != 5)
        {
          goto LABEL_23;
        }

        v38 = v49;
      }

      v40 = *v38;
      v41 = *(v38 + 4);
      if (v40 == 1936745788 && v41 == 62)
      {
LABEL_27:
        v12 = *a2;
        v30 = a2[1];
        v31 = *a2;
        if (*a2 != v30)
        {
          v31 = *a2;
          while (*v31 != v21[3])
          {
            if (++v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          __p = 0;
          v47 = 0;
          v48 = 0;
          sub_1000AF0D8(&__p, v12, v30, (v30 - v12) >> 2);
          sub_100077BE0(a1, &__p, v21[3], a4, a5);
          v11 = __p;
          if (__p)
          {
            v47 = __p;
            operator delete(__p);
          }
        }

        if (v52 < 0)
        {
          if (*&buf[8] != 5)
          {
            goto LABEL_44;
          }

          v32 = *buf;
        }

        else
        {
          if (v52 != 5)
          {
            goto LABEL_44;
          }

          v32 = buf;
        }

        v33 = *v32;
        v34 = v32[4];
        if (v33 != 1936745788 || v34 != 62)
        {
          goto LABEL_44;
        }

        v37 = v50;
        if (v50 < 0)
        {
          if (v49[1] == 5)
          {
            v39 = v49[0];
LABEL_67:
            v43 = *v39;
            v44 = *(v39 + 4);
            if (v43 == 1936745788 && v44 == 62)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v50 == 5)
        {
          v39 = v49;
          goto LABEL_67;
        }

LABEL_44:
        v36 = *(a4 + 8) - 48;
        sub_100019A64(a4, v36);
        *(a4 + 8) = v36;
        v37 = v50;
LABEL_45:
        if (v37 < 0)
        {
          operator delete(v49[0]);
        }

        if (v52 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_49;
      }

LABEL_23:
      v29 = *(a4 + 8);
      if (v29 >= *(a4 + 16))
      {
        v11 = sub_100078600(a4, buf, v49);
      }

      else
      {
        sub_100016E28(*(a4 + 8), buf, v49);
        v11 = v29 + 48;
        *(a4 + 8) = v29 + 48;
      }

      *(a4 + 8) = v11;
      goto LABEL_27;
    }
  }
}

void sub_10007800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 8) = v24;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078064(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v8, 0, sizeof(v8));
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_1000AF0D8(&__p, 0, 0, 0);
  v4 = (*(*a1 + 16))(a1);
  sub_100077BE0(a1, &__p, v4, v8, a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v9 = v8;
  sub_100019DA8(&v9);
}

void sub_10007811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 - 24) = &a13;
  sub_100019DA8((v13 - 24));
  sub_100016FD4(&a13);
  _Unwind_Resume(a1);
}

void sub_10007815C(void *a1, char *a2)
{
  bzero(__s, 0x400uLL);
  v4 = confstr(65537, __s, 0x400uLL);
  if (v4)
  {
    sub_1000113AC(&v22, __s);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v22;
    }

    else
    {
      v5 = v22.__r_.__value_.__r.__words[0];
    }

    if (v5->__r_.__value_.__s.__data_[v4 - 1] != 47)
    {
      sub_1000113AC(__p, "/");
      v6 = v24 >= 0 ? __p : __p[0];
      v7 = v24 >= 0 ? HIBYTE(v24) : __p[1];
      std::string::append(&v22, v6, v7);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1000113AC(&v21, a2);
    v8 = dword_10010E7B0++;
    std::to_string(&v20, v8);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v20;
    }

    else
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v21, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v24 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(&v22, v13, v14);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v22;
    }

    else
    {
      v15 = v22.__r_.__value_.__r.__words[0];
    }

    v16 = sub_100076BEC(a1, v15);
    v18 = sub_1000C8230(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = &v22;
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v22.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FST Grammar log %s\n", __p, 0xCu);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100078398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100078424(uint64_t a1, __int128 **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1000784C4(a1, a2);
  }

  else
  {
    sub_100078464(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_100078464(uint64_t a1, __int128 **a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100019D20(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *sub_1000784C4(char **a1, __int128 **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100017DF0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100019D20((24 * v2), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100019EAC(&v14);
  return v8;
}

void sub_1000785EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100019EAC(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_100078600(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_100019B2C(a1, v7);
  }

  v13 = 0;
  v14 = 48 * v3;
  v15 = 48 * v3;
  v16 = 0;
  sub_100016E28((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_100019E30(&v13);
  return (48 * v3 + 48);
}

void sub_100078714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100019E30(va);
  _Unwind_Resume(a1);
}

char *sub_100078794(char *a1, __int128 *a2)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = off_100101638;
  sub_100078870(a1 + 24, a2);
  return a1;
}

void sub_100078810(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100101638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_100078870(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  sub_1000C44EC(__dst + 5);
  *(__dst + 14) = 0;
  *(__dst + 15) = 0;
  *(__dst + 19) = 0;
  *(__dst + 18) = 0;
  *(__dst + 16) = 0;
  *(__dst + 17) = __dst + 144;
  __dst[160] = 0;
  *(__dst + 168) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 200) = 0u;
  *(__dst + 27) = 850045863;
  *(__dst + 14) = 0u;
  *(__dst + 15) = 0u;
  *(__dst + 16) = 0u;
  *(__dst + 34) = 0;
  return __dst;
}

void sub_10007890C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078928(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_100078A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_1000113AC(v16, "");
  sub_1000113AC(__p, "");
  sub_100078B24(a1, a2, a3, v16, a4, a5, a6, __p, a7);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_100078AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, char a9)
{
  v11 = a1;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  if (a2 && a3)
  {
    v13 = a5;
    v16 = *(a4 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = a4[1];
    }

    if (v16)
    {
      v17 = (*(*a3 + 80))(a3, a4);
      if (v17 == -1)
      {
        if (dword_10010E8A8 >= 1)
        {
          sub_1000113AC(&__p, "INFO");
          sub_10002B1D4(v69, &__p);
          v19 = sub_10002AE44(&std::cerr, "Input symbol '", 14);
          v20 = *(a4 + 23);
          v21 = v20 >= 0 ? a4 : *a4;
          v22 = v20 >= 0 ? *(a4 + 23) : a4[1];
          v23 = sub_10002AE44(v19, v21, v22);
          sub_10002AE44(v23, "' missing from target symbol table", 34);
          sub_10002B280(v69);
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p);
          }
        }

        v17 = -1;
        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = -1;
    }

    v24 = (*(*a2 + 120))(a2);
    v25 = (*(*a2 + 64))(a2, 0);
    v61 = v13;
    v62 = a8;
    if (v24)
    {
      v26 = v25;
      v27 = v17;
      v64 = v17;
      v28 = 1;
      v29 = v24;
      do
      {
        (*(*a2 + 72))(&__p, a2, v26);
        (*(*a2 + 72))(v69, a2, v26);
        v30 = (*(*a3 + 80))(a3, v69);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        v31 = v64;
        if (v30 == -1)
        {
          v32 = v27 == -1;
        }

        else
        {
          v31 = v30;
          v32 = 0;
        }

        if (v32)
        {
          if (dword_10010E8A8 >= 1)
          {
            sub_1000113AC(v69, "INFO");
            sub_10002B1D4(v67, v69);
            sub_10002AE44(&std::cerr, "Input symbol ID ", 16);
            v33 = std::ostream::operator<<();
            v34 = sub_10002AE44(v33, " symbol '", 9);
            v35 = v73 >= 0 ? &__p : __p;
            v36 = v73 >= 0 ? HIBYTE(v73) : v72;
            v37 = sub_10002AE44(v34, v35, v36);
            sub_10002AE44(v37, "' missing from target symbol table", 34);
            sub_10002B280(v67);
            if (v70 < 0)
            {
              operator delete(v69[0]);
            }
          }

          ++v18;
          v31 = -1;
        }

        v69[0] = __PAIR64__(v31, v26);
        sub_100013E6C(&v74, v69);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(__p);
        }

        if (v28 < v24)
        {
          v26 = (*(*a2 + 64))(a2, v28);
        }

        ++v28;
        --v29;
      }

      while (v29);
    }

    a8 = v62;
    v11 = a1;
    if (v18)
    {
      sub_1000113AC(&__p, "WARNING");
      sub_10002B1D4(v69, &__p);
      sub_10002AE44(&std::cerr, "Target symbol table missing: ", 29);
      v38 = std::ostream::operator<<();
      sub_10002AE44(v38, " input symbols", 14);
      sub_10002B280(v69);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
        if (!v61)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    if (v61)
    {
LABEL_46:
      (*(*a1 + 256))(a1, a3);
    }
  }

LABEL_47:
  __p = 0;
  v72 = 0;
  v73 = 0;
  if (a6 && a7)
  {
    v39 = *(a8 + 23);
    if ((v39 & 0x80u) != 0)
    {
      v39 = a8[1];
    }

    if (v39)
    {
      v40 = (*(*a7 + 80))(a7, a8, a3, a4, a5);
      if (v40 == -1)
      {
        if (dword_10010E8A8 >= 1)
        {
          sub_1000113AC(v69, "INFO");
          sub_10002B1D4(v67, v69);
          v42 = sub_10002AE44(&std::cerr, "Output symbol '", 15);
          v43 = *(a8 + 23);
          v44 = v43 >= 0 ? a8 : *a8;
          v45 = v43 >= 0 ? *(a8 + 23) : a8[1];
          v46 = sub_10002AE44(v42, v44, v45);
          sub_10002AE44(v46, "' missing from target symbol table", 34);
          sub_10002B280(v67);
          if (v70 < 0)
          {
            operator delete(v69[0]);
          }
        }

        v40 = -1;
        v41 = 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
      v40 = -1;
    }

    v47 = (*(*a6 + 120))(a6);
    v48 = (*(*a6 + 64))(a6, 0);
    if (v47)
    {
      v49 = v48;
      v50 = 1;
      v51 = v47;
      do
      {
        (*(*a6 + 72))(v69, a6, v49);
        (*(*a6 + 72))(v67, a6, v49);
        v52 = (*(*a7 + 80))(a7, v67);
        if (v68 < 0)
        {
          operator delete(v67[0]);
        }

        if (v52 == -1)
        {
          v53 = v40;
        }

        else
        {
          v53 = v52;
        }

        if (v52 == -1 && v40 == -1)
        {
          if (dword_10010E8A8 >= 1)
          {
            sub_1000113AC(v67, "INFO");
            sub_10002B1D4(&v66, v67);
            sub_10002AE44(&std::cerr, "Output symbol ID ", 17);
            v55 = std::ostream::operator<<();
            v56 = sub_10002AE44(v55, " symbol '", 9);
            v57 = (v70 & 0x80u) == 0 ? v69 : v69[0];
            v58 = (v70 & 0x80u) == 0 ? v70 : v69[1];
            v59 = sub_10002AE44(v56, v57, v58);
            sub_10002AE44(v59, "' missing from target symbol table", 34);
            sub_10002B280(&v66);
            if (v68 < 0)
            {
              operator delete(v67[0]);
            }
          }

          ++v41;
          v53 = -1;
        }

        v67[0] = __PAIR64__(v53, v49);
        sub_100013E6C(&__p, v67);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        if (v50 < v47)
        {
          v49 = (*(*a6 + 64))(a6, v50);
        }

        ++v50;
        --v51;
      }

      while (v51);
    }

    v11 = a1;
    if (v41)
    {
      sub_1000113AC(v69, "WARNING");
      sub_10002B1D4(v67, v69);
      sub_10002AE44(&std::cerr, "Target symbol table missing: ", 29);
      v60 = std::ostream::operator<<();
      sub_10002AE44(v60, " output symbols", 15);
      sub_10002B280(v67);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    if (a9)
    {
      (*(*a1 + 264))(a1, a7);
    }
  }

  sub_1000794C8(v11, &v74, &__p);
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}