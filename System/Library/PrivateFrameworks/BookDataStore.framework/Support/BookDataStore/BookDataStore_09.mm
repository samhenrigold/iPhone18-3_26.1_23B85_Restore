uint64_t sub_1001386A8()
{
  v30 = sub_1001C4B28();
  v0 = *(v30 - 8);
  v1 = __chkstk_darwin(v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v27 - v4;
  v32 = sub_1001C69E8();
  v33 = v6;
  v34._countAndFlagsBits = 45;
  v34._object = 0xE100000000000000;
  sub_1001C6138(v34);
  v7 = type metadata accessor for ReadingHistoryModel(0);
  v31 = v7;
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v35._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v35);

  sub_1001C4A98();

  v32 = sub_1001C69E8();
  v33 = v8;
  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  sub_1001C6138(v36);
  v31 = v7;
  v37._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v37);

  sub_1001C4A98();

  v9 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v10);
  v12 = v11;
  v32 = 0;
  v13 = [v9 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v32];

  if (v13)
  {
    v14 = v32;
    sub_100137E58(v3);
  }

  else
  {
    v15 = v32;
    sub_1001C4A28();

    swift_willThrow();
    LODWORD(v29) = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v28 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001F0660;
    v17 = sub_1001C4AF8();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100084570();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    swift_getErrorValue();
    v21 = sub_1001C6D98();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    sub_1001C5118(v29, &_mh_execute_header, v28, "ReadingHistoryBackupManager Failed to create backup database folder: %{public}@, error: %@", 90, 2, v16);

    swift_willThrow();
  }

  v23 = *(v0 + 8);
  v24 = v3;
  v25 = v30;
  v23(v24, v30);
  return (v23)(v5, v25);
}

void sub_100138A78()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v1 = sub_1001C5FE8();

  v2 = [v0 fileExistsAtPath:v1];

  if (!v2)
  {
    v21 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v22 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001F0670;
    v24 = sub_1001C4AF8();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100084570();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1001C5118(v21, &_mh_execute_header, v22, "ReadingHistoryBackupManager - File not found at %{public}@", 58, 2, v23);

    sub_100137428();
    swift_allocError();
    *v27 = 1;
    goto LABEL_10;
  }

  v36 = v0;
  v35 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v3 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = sub_1001C4AF8();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100084570();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = v3;
  v10 = sub_1001C4AF8();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  sub_1001C5118(v35, &_mh_execute_header, v3, "ReadingHistoryBackupManager - About to copy item\n  - src=%{public}@\n  - dest=%{public}@", 87, 2, v4);

  sub_1001C4A88(v12);
  v14 = v13;
  sub_1001C4A88(v15);
  v17 = v16;
  v37 = 0;
  v0 = v36;
  v18 = [v36 copyItemAtURL:v14 toURL:v16 error:&v37];

  if ((v18 & 1) == 0)
  {
    v28 = v37;
    sub_1001C4A28();

    swift_willThrow();
    v29 = sub_1001C6598();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001F0660;
    v31 = sub_1001C4AF8();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v8;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    swift_getErrorValue();
    v33 = sub_1001C6D98();
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v8;
    *(v30 + 72) = v33;
    *(v30 + 80) = v34;
    sub_1001C5118(v29, &_mh_execute_header, v9, "ReadingHistoryBackupManager - Error copying item to %{public}@, error: %{public}@", 81, 2, v30);

LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v19 = v37;
  v20 = sub_1001C65B8();
  sub_1001C5118(v20, &_mh_execute_header, v9, "ReadingHistoryBackupManager - Copy directory successful", 55, 2, _swiftEmptyArrayStorage);
LABEL_11:
}

uint64_t sub_100138E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v92 = a3;
  v93 = a4;
  v94 = a1;
  v95 = a2;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v91 = &v83 - v10;
  v11 = __chkstk_darwin(v9);
  v88 = &v83 - v12;
  __chkstk_darwin(v11);
  v14 = &v83 - v13;
  v15 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v16 = __chkstk_darwin(v15 - 8);
  v86 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v90 = &v83 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v83 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v83 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v83 - v27;
  __chkstk_darwin(v26);
  v30 = &v83 - v29;
  v31 = [objc_opt_self() bu_booksGroupContainerURL];
  if (v31)
  {
    v32 = v31;
    sub_1001C4AD8();

    v33 = v6[7];
    v34 = v28;
    v35 = 0;
  }

  else
  {
    v33 = v6[7];
    v34 = v28;
    v35 = 1;
  }

  v89 = v33;
  v33(v34, v35, 1, v5);
  sub_10009AE58(v28, v30, &unk_10026EF10, &unk_1001F1FA0);
  sub_10009ADF0(v30, v22, &unk_10026EF10, &unk_1001F1FA0);
  v36 = v6[6];
  if (v36(v22, 1, v5) == 1)
  {
    sub_10008875C(v22, &unk_10026EF10, &unk_1001F1FA0);
    v37 = 1;
  }

  else
  {
    sub_1001C4A98();
    v38 = v25;
    v39 = v6;
    v87 = v30;
    v40 = v38;
    v41 = v6[1];
    v41(v22, v5);
    sub_1001C4AA8();
    v41(v14, v5);
    v42 = v40;
    v30 = v87;
    v6 = v39;
    v25 = v42;
    v37 = 0;
  }

  v43 = v91;
  v89(v25, v37, 1, v5);
  v44 = v90;
  sub_10009ADF0(v25, v90, &unk_10026EF10, &unk_1001F1FA0);
  if (v36(v44, 1, v5) == 1)
  {
    v91 = v25;
    sub_10008875C(v44, &unk_10026EF10, &unk_1001F1FA0);
    LODWORD(v90) = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v45 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1001F0680;
    v47 = v86;
    sub_10009ADF0(v30, v86, &unk_10026EF10, &unk_1001F1FA0);
    if (v36(v47, 1, v5) == 1)
    {
      sub_10008875C(v47, &unk_10026EF10, &unk_1001F1FA0);
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v48 = sub_1001C4AF8();
      v60 = v5;
      v49 = v61;
      (v6[1])(v47, v60);
    }

    *(v46 + 56) = &type metadata for String;
    v62 = sub_100084570();
    v63 = 0x296C696E28;
    if (v49)
    {
      v63 = v48;
    }

    v64 = 0xE500000000000000;
    if (v49)
    {
      v64 = v49;
    }

    *(v46 + 32) = v63;
    *(v46 + 40) = v64;
    *(v46 + 96) = &type metadata for String;
    *(v46 + 104) = v62;
    v65 = v94;
    v66 = v95;
    *(v46 + 64) = v62;
    *(v46 + 72) = v65;
    *(v46 + 80) = v66;
    *(v46 + 136) = &type metadata for String;
    *(v46 + 144) = v62;
    v67 = v93;
    *(v46 + 112) = v92;
    *(v46 + 120) = v67;

    sub_1001C5118(v90, &_mh_execute_header, v45, "ReadingHistoryBackupManager - Failed to construct source path for file. groupContainerURL=%{public}@, subfolder=%{public}@, fileName=%{public}@", 143, 2, v46);

    sub_100137428();
    swift_allocError();
    *v68 = 2;
    swift_willThrow();
    v25 = v91;
  }

  else
  {
    v89 = v6;
    v50 = v6[4];
    v51 = v88;
    v50(v88, v44, v5);
    sub_1001C4AA8();
    v52 = [objc_opt_self() defaultManager];
    sub_1001C4A88(v53);
    v55 = v54;
    v96 = 0;
    v56 = [v52 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:0 error:&v96];

    if (v56)
    {
      v57 = v96;
      v58 = v84;
      sub_1001C4AA8();
      sub_100138A78();
      v59 = *(v89 + 1);
      v59(v58, v5);
      v59(v43, v5);
      v59(v51, v5);
    }

    else
    {
      v95 = v5;
      v87 = v30;
      v91 = v25;
      v69 = v96;
      sub_1001C4A28();

      swift_willThrow();
      v70 = sub_1001C6598();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v71 = qword_1002711E8;
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1001F0660;
      v73 = sub_1001C4AF8();
      v74 = v43;
      v76 = v75;
      *(v72 + 56) = &type metadata for String;
      v77 = sub_100084570();
      *(v72 + 64) = v77;
      *(v72 + 32) = v73;
      *(v72 + 40) = v76;
      swift_getErrorValue();
      v78 = sub_1001C6D98();
      *(v72 + 96) = &type metadata for String;
      *(v72 + 104) = v77;
      *(v72 + 72) = v78;
      *(v72 + 80) = v79;
      sub_1001C5118(v70, &_mh_execute_header, v71, "ReadingHistoryBackupManager Failed to create backup folder: %{public}@, error: %@", 81, 2, v72);

      swift_willThrow();
      v80 = *(v89 + 1);
      v81 = v95;
      v80(v74, v95);
      v80(v88, v81);
      v25 = v91;
      v30 = v87;
    }
  }

  sub_10008875C(v25, &unk_10026EF10, &unk_1001F1FA0);
  return sub_10008875C(v30, &unk_10026EF10, &unk_1001F1FA0);
}

uint64_t sub_100139720(uint64_t a1, uint64_t a2)
{
  v170 = a2;
  v171 = a1;
  v2 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v131 - v3;
  v5 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v6 = __chkstk_darwin(v5 - 8);
  v173 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v131 - v8);
  v175 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  *&v147 = *(v175 - 8);
  __chkstk_darwin(v175);
  v176 = &v131 - v10;
  v11 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v153 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v152 = &v131 - v15;
  v165 = type metadata accessor for ReadingHistoryMonth(0);
  v16 = __chkstk_darwin(v165);
  v151 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v174 = &v131 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v131 - v21;
  v23 = __chkstk_darwin(v20);
  v143 = &v131 - v24;
  v25 = __chkstk_darwin(v23);
  v144 = &v131 - v26;
  v27 = __chkstk_darwin(v25);
  v142 = &v131 - v28;
  v29 = __chkstk_darwin(v27);
  v167 = &v131 - v30;
  __chkstk_darwin(v29);
  v168 = &v131 - v31;
  v32 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v33 = __chkstk_darwin(v32 - 8);
  v156 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v160 = &v131 - v36;
  __chkstk_darwin(v35);
  v38 = &v131 - v37;
  v39 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v166 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v172 = &v131 - v43;
  v44 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v45 = __chkstk_darwin(v44 - 8);
  v162 = &v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v161 = (&v131 - v47);
  v164 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v132 = *(v164 - 8);
  __chkstk_darwin(v164);
  v49 = &v131 - v48;
  v50 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v163 = v49;
  v169 = v50;
  sub_1001C5B48();
  v158 = (v40 + 48);
  v159 = (v40 + 32);
  v146 = (v40 + 16);
  v155 = (v40 + 56);
  v150 = (v12 + 8);
  v51 = v38;
  v157 = (v40 + 8);
  v141 = (v147 + 8);
  *&v52 = 134217984;
  v147 = v52;
  *&v52 = 134218240;
  v140 = v52;
  *&v52 = 134218242;
  v139 = v52;
  v154 = v11;
  v149 = v38;
  v148 = v39;
  v138 = v4;
  while (1)
  {
    v55 = v162;
    sub_1001C5B08();
    v56 = v161;
    sub_10009AE58(v55, v161, &qword_10026F890, &qword_1001F1480);
    v57 = sub_100084528(&qword_10026F888, &qword_1001F1478);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {
      break;
    }

    v58 = v22;
    v59 = *v56;
    v60 = *(v57 + 48);
    v61 = *v159;
    (*v159)(v172, v56 + v60, v39);
    v171 = v59;
    v178[0] = v59;
    sub_1001C5BA8();
    v62 = v160;
    sub_10009ADF0(v51, v160, &qword_10026F880, &qword_1001F1470);
    if ((*v158)(v62, 1, v39) == 1)
    {
      sub_10008875C(v62, &qword_10026F880, &qword_1001F1470);
      v63 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v64 = qword_1002711E8;
      v65 = os_log_type_enabled(qword_1002711E8, v63);
      v66 = v171;
      if (v65)
      {
        v67 = swift_slowAlloc();
        *v67 = v147;
        *(v67 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v64, v63, "ReadingHistoryBackupManager _restoreModel: %ld missing in destination", v67, 0xCu);
      }

      v53 = v172;
      sub_1001C5D88();
      sub_10013ACE4(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      v54 = v156;
      sub_1001C5DC8();
      (*v155)(v54, 0, 1, v39);
      v178[0] = v66;
      sub_1001C5BB8();
      sub_10008875C(v51, &qword_10026F880, &qword_1001F1470);
      (*v157)(v53, v39);
      v22 = v58;
    }

    else
    {
      v68 = v22;
      v61(v166, v62, v39);
      sub_1001C5D88();
      sub_1001C5D88();
      sub_10013ACE4(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      if (sub_1001C5A78())
      {
        v69 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v70 = qword_1002711E8;
        v71 = os_log_type_enabled(qword_1002711E8, v69);
        v72 = v171;
        if (v71)
        {
          v73 = swift_slowAlloc();
          *v73 = v140;
          *(v73 + 4) = v72;
          *(v73 + 12) = 2048;
          *(v73 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v70, v69, "ReadingHistoryBackupManager _restoreModel: backup[%ld] has changes from dest[%ld]", v73, 0x16u);
        }

        v74 = v166;
        sub_1001C5D98();
        v75 = v156;
        (*v146)(v156, v74, v39);
        (*v155)(v75, 0, 1, v39);
        v178[0] = v72;
        sub_1001C5BB8();
      }

      sub_100084528(&qword_100272540, &unk_1001F5610);
      sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610, &protocol conformance descriptor for CRDictionary_v1<A, B>);
      v76 = v152;
      sub_1001C6448();
      v77 = v153;
      sub_1001C6488();
      sub_1000885F4(&unk_100272550, &qword_100272528, &qword_1001F55F8, &protocol conformance descriptor for CRDictionary<A, B>.Index);
      v78 = v154;
      v79 = sub_1001C5FD8();
      v80 = *v150;
      (*v150)(v77, v78);
      v80(v76, v78);
      if (v79 & 1) != 0 && (sub_1001C6458())
      {
        v145 = v80;
        v81 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v82 = qword_1002711E8;
        v83 = os_log_type_enabled(qword_1002711E8, v81);
        v84 = v144;
        if (v83)
        {
          v85 = swift_slowAlloc();
          *v85 = v147;
          *(v85 + 4) = v171;
          _os_log_impl(&_mh_execute_header, v82, v81, "ReadingHistoryBackupManager _restoreModel: dest[%ld] is possibly pruned", v85, 0xCu);
        }

        v86 = sub_1001C65B8();
        v87 = v167;
        v88 = v142;
        sub_10013AD8C(v167, v142);
        sub_10013AD8C(v87, v84);
        if (os_log_type_enabled(v82, v86))
        {
          v89 = swift_slowAlloc();
          v135 = v89;
          v137 = swift_slowAlloc();
          v178[0] = v137;
          *v89 = v139;
          v90 = v152;
          v91 = v88;
          sub_1001C6448();
          v92 = v153;
          sub_1001C6488();
          v133 = sub_1001C6478();
          v93 = v92;
          v94 = v154;
          LODWORD(v136) = v86;
          v95 = v145;
          v145(v93, v154);
          v95(v90, v94);
          v134 = type metadata accessor for ReadingHistoryMonth;
          sub_10013AD2C(v91, type metadata accessor for ReadingHistoryMonth);
          v96 = v135;
          *(v135 + 4) = v133;
          *(v96 + 12) = 2080;
          sub_100084528(&qword_10026F4E0, &unk_1001F1140);
          sub_1000885F4(&unk_100272560, &qword_10026F4E0, &unk_1001F1140, &protocol conformance descriptor for CRRegister<A>);
          v97 = v144;
          v98 = sub_1001C6CC8();
          v100 = v99;
          sub_10013AD2C(v97, v134);
          v101 = sub_1001874E8(v98, v100, v178);

          *(v96 + 14) = v101;
          _os_log_impl(&_mh_execute_header, v82, v136, "    - backup: #days=%ld, lastDayStreak=%s", v96, 0x16u);
          sub_10008E7BC(v137);
        }

        else
        {
          sub_10013AD2C(v88, type metadata accessor for ReadingHistoryMonth);
          sub_10013AD2C(v84, type metadata accessor for ReadingHistoryMonth);
        }

        v22 = v68;
        v104 = sub_1001C65B8();
        v105 = v168;
        v106 = v143;
        sub_10013AD8C(v168, v143);
        sub_10013AD8C(v105, v68);
        if (os_log_type_enabled(v82, v104))
        {
          v107 = swift_slowAlloc();
          v137 = v82;
          v108 = v107;
          v136 = swift_slowAlloc();
          v178[0] = v136;
          *v108 = v139;
          v109 = v152;
          sub_1001C6448();
          v110 = v153;
          sub_1001C6488();
          v135 = sub_1001C6478();
          v111 = v110;
          v112 = v154;
          v113 = v145;
          v145(v111, v154);
          v113(v109, v112);
          sub_10013AD2C(v106, type metadata accessor for ReadingHistoryMonth);
          *(v108 + 4) = v135;
          *(v108 + 12) = 2080;
          sub_100084528(&qword_10026F4E0, &unk_1001F1140);
          sub_1000885F4(&unk_100272560, &qword_10026F4E0, &unk_1001F1140, &protocol conformance descriptor for CRRegister<A>);
          v114 = sub_1001C6CC8();
          v116 = v115;
          sub_10013AD2C(v68, type metadata accessor for ReadingHistoryMonth);
          v117 = sub_1001874E8(v114, v116, v178);
          v22 = v68;

          *(v108 + 14) = v117;
          _os_log_impl(&_mh_execute_header, v137, v104, "    - dest  : #days=%ld, lastDayStreak=%s", v108, 0x16u);
          sub_10008E7BC(v136);
        }

        else
        {
          sub_10013AD2C(v106, type metadata accessor for ReadingHistoryMonth);
          sub_10013AD2C(v68, type metadata accessor for ReadingHistoryMonth);
        }

        v39 = v148;
        sub_1001C5DB8();
        sub_1001C5B48();
        v118 = v138;
        while (1)
        {
          v119 = v173;
          sub_1001C5B08();
          sub_10009AE58(v119, v9, &qword_100272518, &qword_1001F55E8);
          v120 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
          if ((*(*(v120 - 8) + 48))(v9, 1, v120) == 1)
          {
            break;
          }

          v121 = *v9;
          v122 = *(v120 + 48);
          v123 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
          v124 = *(v123 - 8);
          v125 = v9 + v122;
          v22 = v68;
          (*(v124 + 32))(v118, v125, v123);
          (*(v124 + 56))(v118, 0, 1, v123);
          v178[0] = v121;
          sub_1001C5BB8();
        }

        (*v141)(v176, v175);
        sub_100084528(&qword_10026F4E0, &unk_1001F1140);
        v126 = v167;
        sub_1001C56C8();
        v177 = v178[0];
        v127 = v174;
        sub_1001C56D8();
        sub_1001C56C8();
        v177 = v178[0];
        sub_1001C56D8();
        sub_10013AD8C(v127, v151);
        sub_10013ACE4(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
        v128 = v156;
        sub_1001C5DC8();
        (*v155)(v128, 0, 1, v39);
        v178[0] = v171;
        sub_1001C5BB8();
        sub_10013AD2C(v127, type metadata accessor for ReadingHistoryMonth);
        sub_10013AD2C(v126, type metadata accessor for ReadingHistoryMonth);
        sub_10013AD2C(v168, type metadata accessor for ReadingHistoryMonth);
        v129 = *v157;
        (*v157)(v166, v39);
        v51 = v149;
        sub_10008875C(v149, &qword_10026F880, &qword_1001F1470);
        v129(v172, v39);
      }

      else
      {
        sub_10013AD2C(v167, type metadata accessor for ReadingHistoryMonth);
        sub_10013AD2C(v168, type metadata accessor for ReadingHistoryMonth);
        v102 = *v157;
        v39 = v148;
        (*v157)(v166, v148);
        v103 = v149;
        sub_10008875C(v149, &qword_10026F880, &qword_1001F1470);
        v102(v172, v39);
        v22 = v68;
        v51 = v103;
      }
    }
  }

  return (*(v132 + 8))(v163, v164);
}

uint64_t sub_10013ACE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013AD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013AD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryMonth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10013ADF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10013AE04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_10013AE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10013AEC4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_100084528(&qword_100272588, &qword_1001F5700);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10009BB74(a1, a1[3]);
  sub_10013B544();
  sub_1001C6E78();
  v11[15] = 0;
  sub_1001C6C88();
  if (!v4)
  {
    v11[14] = 1;
    sub_1001C6C38();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10013B060()
{
  if (*v0)
  {
    return 0x657474616D726F66;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_10013B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065756C615664)
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

uint64_t sub_10013B184(uint64_t a1)
{
  v2 = sub_10013B544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013B1C0(uint64_t a1)
{
  v2 = sub_10013B544();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10013B1FC@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10013B394(a2);
  if (!v2)
  {
    *a1 = v6;
    a1[1] = result;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_10013B24C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 8) == *(a2 + 8) && v3 == v4;
        if (v5 || (sub_1001C6D08() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10013B2B8(uint64_t a1, void *a2)
{
  sub_1001C63C8();
  v7._countAndFlagsBits = 10272;
  v7._object = 0xE200000000000000;
  sub_1001C6138(v7);
  if (a2)
  {
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_1001C6138(v8);
    v9._countAndFlagsBits = 39;
    v9._object = 0xE100000000000000;
    sub_1001C6138(v9);
    v4._countAndFlagsBits = 39;
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
    v4._countAndFlagsBits = 7104878;
  }

  v4._object = v5;
  sub_1001C6138(v4);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  sub_1001C6138(v10);
  return 0;
}

void *sub_10013B394(void *a1)
{
  v3 = sub_100084528(&qword_100272578, &qword_1001F56F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10009BB74(a1, a1[3]);
  sub_10013B544();
  sub_1001C6E58();
  if (!v1)
  {
    v11 = 0;
    sub_1001C6C08();
    v10 = 1;
    v7 = sub_1001C6BB8();
    (*(v4 + 8))(v6, v3);
  }

  sub_10008E7BC(a1);
  return v7;
}

unint64_t sub_10013B544()
{
  result = qword_100272580;
  if (!qword_100272580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272580);
  }

  return result;
}

unint64_t sub_10013B5AC()
{
  result = qword_100272590;
  if (!qword_100272590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272590);
  }

  return result;
}

unint64_t sub_10013B604()
{
  result = qword_100272598;
  if (!qword_100272598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272598);
  }

  return result;
}

unint64_t sub_10013B65C()
{
  result = qword_1002725A0;
  if (!qword_1002725A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002725A0);
  }

  return result;
}

id sub_10013B6C0()
{
  result = [objc_allocWithZone(type metadata accessor for CloudSecureManagerService()) init];
  qword_1002818F8 = result;
  return result;
}

uint64_t sub_10013B750()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_1002725B0);
  sub_100083274(v0, qword_1002725B0);
  return sub_1001C5138();
}

void sub_10013B7D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v9 = &v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_dataModelName];
  strcpy(&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_dataModelName], "BDSSecureData");
  *(v9 + 7) = -4864;
  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_saltVersionIdentifierManager] = 0;
  v47 = [objc_opt_self() secureSharedInstance];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  v12 = sub_1001C5FE8();

  v13 = sub_1001C5FE8();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1001C4AD8();

  v15 = *(v3 + 32);
  v46 = v2;
  v15(v8, v6, v2);
  v16 = objc_allocWithZone(NSManagedObjectModel);
  sub_1001C4A88(v17);
  v19 = v18;
  v20 = [v16 initWithContentsOfURL:v18];

  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_objectModel] = v20;
  v21 = objc_allocWithZone(BCCloudDataSource);

  v22 = v20;
  v23 = sub_1001C5FE8();

  v24 = [v21 initWithManagedObjectModel:v22 nameOnDisk:v23];

  v25 = OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_secureDataSource;
  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_secureDataSource] = v24;
  type metadata accessor for CloudSecureUserDataMigrator();
  swift_allocObject();
  sub_10013F9DC();
  v26 = *v9;
  v27 = *(v9 + 1);
  v28 = *&v1[v25];

  sub_10013E010(v28, v26, v27);

  v29 = [*&v1[v25] managedObjectContext];
  v30 = objc_allocWithZone(BCCloudChangeTokenController);
  v31 = v47;
  v32 = [v30 initWithMOC:v29 zoneName:@"SecureUserDataZone" cloudKitController:v47];

  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_changeTokenController] = v32;
  v33 = *&v1[v25];
  v34 = objc_allocWithZone(type metadata accessor for CloudSecureEngagementManagerService());
  v35 = v33;
  v36 = v31;
  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_engagementManagerImpl] = sub_1000C718C(v35, v36);
  v37 = [objc_allocWithZone(BCCloudSecureUserDataManager) initWithCloudDataSource:*&v1[v25] cloudKitController:v36];
  if (v37)
  {
    *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_userDataManagerImpl] = v37;
    v38 = type metadata accessor for CloudSecureManagerService();
    v48.receiver = v1;
    v48.super_class = v38;
    v39 = objc_msgSendSuper2(&v48, "init");
    v40 = *&v39[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_changeTokenController];
    v41 = v39;
    v42 = v40;
    v43 = [v36 privateCloudDatabaseController];
    v44 = [objc_allocWithZone(BDSSaltVersionIdentifierManager) initWithZoneDataManager:v41 tokenController:v42 databaseController:v43];

    (*(v3 + 8))(v8, v46);
    v45 = *&v41[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_saltVersionIdentifierManager];
    *&v41[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_saltVersionIdentifierManager] = v44;

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10013BD60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSecureManagerService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013BE58()
{
  v1 = [objc_allocWithZone(NSMutableArray) init];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_userDataManagerImpl)];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_engagementManagerImpl)];
  [v1 copy];
  sub_1001C6888();

  swift_unknownObjectRelease();
  sub_10013C6E8();
  swift_dynamicCast();
  return v3;
}

uint64_t sub_10013BF24()
{
  v1 = [objc_allocWithZone(NSMutableArray) init];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_userDataManagerImpl)];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_engagementManagerImpl)];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_changeTokenController)];
  [v1 copy];
  sub_1001C6888();

  swift_unknownObjectRelease();
  sub_10013C6E8();
  swift_dynamicCast();
  return v3;
}

void sub_10013C008(uint64_t a1, uint64_t a2)
{
  v4 = sub_10013BE58();
  if (qword_10026EC08 != -1)
  {
    swift_once();
  }

  v5 = sub_1001C5148();
  sub_100083274(v5, qword_1002725B0);
  v6 = v4;
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "CloudSecureManagerService hasSaltChangedWithCompletion with managers:%@", v9, 0xCu);
    sub_1001279FC(v10);
  }

  v13[4] = a1;
  v13[5] = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10018CA5C;
  v13[3] = &unk_100249CE8;
  v12 = _Block_copy(v13);

  [v6 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:"hasSaltChangedWithCompletion:" completion:v12];
  _Block_release(v12);
}

void sub_10013C274(void *a1, uint64_t a2)
{
  if (qword_10026EC08 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5148();
  sub_100083274(v4, qword_1002725B0);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureManagerService dissociateCloudDataFromSyncWithCompletion - Service mode", v7, 2u);
  }

  v8 = sub_10013BF24();
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100249C98;
    a1 = _Block_copy(v9);
  }

  [v8 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:"dissociateCloudDataFromSyncWithCompletion:" completion:a1];
  _Block_release(a1);
}

void sub_10013C548(uint64_t a1, uint64_t a2)
{
  if (qword_10026EC08 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5148();
  sub_100083274(v4, qword_1002725B0);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureManagerService deleteCloudDataWithCompletion:", v7, 2u);
  }

  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100249C48;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() deleteCloudDataWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_10013C6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10013C6E8()
{
  result = qword_100272628;
  if (!qword_100272628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100272628);
  }

  return result;
}

uint64_t sub_10013C764()
{
  v1 = v0[32];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_10013C880;
  v2 = swift_continuation_init();
  v0[30] = sub_100084528(&qword_1002726C0, &unk_1001F58E0);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_10013CB0C;
  v0[26] = &unk_100249DC0;
  v0[27] = v2;
  [v1 getPendingNotificationRequestsWithCompletionHandler:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013C880()
{

  return _swift_task_switch(sub_10013C960, 0, 0);
}

char *sub_10013C960()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    v2 = sub_1001C6B38();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_1000D3814(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_1001C69F8();
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_10013DD80(v5, (v0 + 80));

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_1000D3814((v7 > 1), v8 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    v9 = &_swiftEmptyArrayStorage[13 * v8];
    v10 = *(v0 + 80);
    v11 = *(v0 + 112);
    *(v9 + 3) = *(v0 + 96);
    *(v9 + 4) = v11;
    *(v9 + 2) = v10;
    v12 = *(v0 + 128);
    v13 = *(v0 + 144);
    v14 = *(v0 + 160);
    v9[16] = *(v0 + 176);
    *(v9 + 6) = v13;
    *(v9 + 7) = v14;
    *(v9 + 5) = v12;
  }

  while (v2 != v4);
LABEL_13:

  v15 = *(v0 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_10013CB20(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return _swift_task_switch(sub_10013CB40, 0, 0);
}

uint64_t sub_10013CB40()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = objc_opt_self();
  v4 = sub_1001C5FE8();
  sub_100088714(0, &qword_1002726B0, UNMutableNotificationContent_ptr);
  sub_10008EA78(v1, (v0 + 10));
  v5 = sub_10013DBE4(v1);
  v6 = [v3 requestWithIdentifier:v4 content:v5 trigger:0];
  v0[25] = v6;

  v0[2] = v0;
  v0[3] = sub_10013CCF0;
  v7 = swift_continuation_init();
  v0[17] = sub_100084528(&qword_1002726B8, &unk_1001F58C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CED4;
  v0[13] = &unk_100249D98;
  v0[14] = v7;
  [v2 addNotificationRequest:v6 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013CCF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10013CE64;
  }

  else
  {
    v2 = sub_10013CE00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013CE00()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013CE64(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10013CED4(uint64_t a1, void *a2)
{
  v3 = sub_10009BB74((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100084528(&unk_100270F10, &unk_1001F1F70);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10013CFA0()
{
  v1 = v0[32];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_10013D0BC;
  v2 = swift_continuation_init();
  v0[30] = sub_100084528(&qword_1002726A0, &qword_1001F58B8);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_10013D36C;
  v0[26] = &unk_100249D70;
  v0[27] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013D0BC()
{

  return _swift_task_switch(sub_10013D19C, 0, 0);
}

char *sub_10013D19C()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    v2 = sub_1001C6B38();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_1000D3814(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 80);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1001C69F8();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v6 request];
    sub_10013DD80(v8, v5);

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1000D3814((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    v11 = &_swiftEmptyArrayStorage[13 * v10];
    v12 = *v5;
    v13 = *(v0 + 112);
    *(v11 + 3) = *(v0 + 96);
    *(v11 + 4) = v13;
    *(v11 + 2) = v12;
    v14 = *(v0 + 128);
    v15 = *(v0 + 144);
    v16 = *(v0 + 160);
    v11[16] = *(v0 + 176);
    *(v11 + 6) = v15;
    *(v11 + 7) = v16;
    *(v11 + 5) = v14;
  }

  while (v2 != v4);
LABEL_13:

  v17 = *(v0 + 8);

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_10013D380(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = *sub_10009BB74((a1 + 32), *(a1 + 56));
  sub_100088714(0, a3, a4);
  **(*(v6 + 64) + 40) = sub_1001C6298();

  return _swift_continuation_resume(v6);
}

void sub_10013D40C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100089DC8(a4, 0, a2, &type metadata for String, &type metadata for Never, a3, &protocol witness table for Never, a8);
  isa = sub_1001C6288().super.isa;

  [v8 removeDeliveredNotificationsWithIdentifiers:isa];
}

uint64_t sub_10013D4D4()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013D5F0;
  v2 = swift_continuation_init();
  v0[17] = sub_100084528(&qword_100272698, &qword_1001F58A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013D780;
  v0[13] = &unk_100249D48;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013D5F0()
{

  return _swift_task_switch(sub_10013D6D0, 0, 0);
}

uint64_t sub_10013D6D0()
{
  v1 = *(v0 + 144);
  v2 = [v1 authorizationStatus];
  v3 = [v1 alertSetting];
  v4 = [v1 alertStyle];

  v5 = *(v0 + 8);

  return v5(v2, v3, v4);
}

uint64_t sub_10013D780(uint64_t a1, void *a2)
{
  v3 = sub_10009BB74((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10013D7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013E00C;

  return sub_10013C744();
}

uint64_t sub_10013D89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009AAEC;

  return sub_10013CB20(a1);
}

uint64_t sub_10013D930()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9958;

  return sub_10013CF80();
}

uint64_t sub_10013D9BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013DA48;

  return sub_10013D4B4();
}

uint64_t sub_10013DA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

void sub_10013DB5C()
{
  v0 = objc_allocWithZone(UNUserNotificationCenter);
  v1 = sub_1001C5FE8();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100272690 = v2;
}

id sub_10013DBE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_1001C5FE8();
  [v2 setTitle:v3];

  v4 = sub_1001C5FE8();
  [v2 setSubtitle:v4];

  v5 = sub_1001C5FE8();
  [v2 setBody:v5];

  v11 = *(a1 + 64);

  v6 = sub_1001C5FE8();
  sub_10008EAD4(&v11);
  [v2 setCategoryIdentifier:v6];

  v10 = *(a1 + 80);

  v7 = sub_1001C5FE8();
  sub_10008EB28(&v10);
  [v2 setThreadIdentifier:{v7, v10, v11}];

  isa = sub_1001C5EF8().super.isa;
  sub_10008EA24(a1);
  [v2 setUserInfo:isa];

  return v2;
}

void sub_10013DD80(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1001C6018();
  v37 = v6;
  v38 = v5;

  v7 = [a1 content];
  v8 = [v7 title];

  v9 = sub_1001C6018();
  v35 = v10;
  v36 = v9;

  v11 = [a1 content];
  v12 = [v11 subtitle];

  v13 = sub_1001C6018();
  v33 = v14;
  v34 = v13;

  v15 = [a1 content];
  v16 = [v15 body];

  v17 = sub_1001C6018();
  v19 = v18;

  v20 = [a1 content];
  v21 = [v20 categoryIdentifier];

  v22 = sub_1001C6018();
  v24 = v23;

  v25 = [a1 content];
  v26 = [v25 threadIdentifier];

  v27 = sub_1001C6018();
  v29 = v28;

  v30 = [a1 content];
  v31 = [v30 userInfo];

  v32 = sub_1001C5F08();
  *a2 = v38;
  a2[1] = v37;
  a2[2] = v36;
  a2[3] = v35;
  a2[4] = v34;
  a2[5] = v33;
  a2[6] = v17;
  a2[7] = v19;
  a2[8] = v22;
  a2[9] = v24;
  a2[10] = v27;
  a2[11] = v29;
  a2[12] = v32;
}

void sub_10013E010(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v56 = a1;
  v57 = v5;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10026EC18 != -1)
  {
    swift_once();
  }

  v10 = sub_1001C5148();
  sub_100083274(v10, qword_1002726D0);
  v11 = sub_1001C5128();
  v12 = sub_1001C65B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "migrateIfNecessary()", v13, 2u);
  }

  if (sub_10013E864())
  {
    v14 = sub_1001C5128();
    v15 = sub_1001C65B8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "migrateIfNecessary() needsMigration=true", v16, 2u);
    }

    v17 = [objc_opt_self() standardUserDefaults];
    v18 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    v19 = sub_1001C5FE8();
    [v17 setObject:v18 forKey:v19];

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = sub_1001C5FE8();
    v23 = sub_1001C5FE8();
    v24 = [v21 URLForResource:v22 withExtension:v23];

    if (v24)
    {
      v54 = v7;
      v55 = v6;
      sub_1001C4AD8();

      v25 = objc_allocWithZone(NSManagedObjectModel);
      sub_1001C4A88(v26);
      v28 = v27;
      v29 = [v25 initWithContentsOfURL:v27];

      if (!v29)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v30 = objc_allocWithZone(BCCloudDataSource);
      v31 = v29;
      v32 = sub_1001C5FE8();
      v33 = [v30 initWithManagedObjectModel:v31 nameOnDisk:v32];

      v65 = &_swiftEmptyDictionarySingleton;
      v34 = [v33 managedObjectContext];
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = &v65;
      v36 = v57;
      v35[4] = v4;
      v35[5] = v36;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_10013F9AC;
      *(v37 + 24) = v35;
      v63 = sub_10009A564;
      v64 = v37;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_1000906F4;
      v62 = &unk_100249E38;
      v38 = _Block_copy(&aBlock);
      v39 = v34;

      [v39 performBlockAndWait:v38];
      _Block_release(v38);
      LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

      if (v38)
      {
        __break(1u);
      }

      else
      {
        v40 = v65[2];
        v41 = sub_1001C5128();
        v42 = sub_1001C65B8();
        v43 = os_log_type_enabled(v41, v42);
        if (!v40)
        {
          if (v43)
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v41, v42, "migrateIfNecessary() No data to write to new data source", v50, 2u);

            v51 = v31;
            v52 = v39;
          }

          else
          {
            v51 = v41;
            v52 = v33;
            v41 = v39;
            v33 = v31;
          }

          v53 = v55;

          (*(v54 + 8))(v9, v53);
          goto LABEL_20;
        }

        if (v43)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "migrateIfNecessary() migrating data to new data source", v44, 2u);
        }

        v58 = v65;

        v45 = [v56 managedObjectContext];
        v46 = swift_allocObject();
        v46[2] = v45;
        v46[3] = &v58;
        v46[4] = v57;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_10013F9D0;
        *(v47 + 24) = v46;
        v63 = sub_10009B264;
        v64 = v47;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_1000906F4;
        v62 = &unk_100249EB0;
        v48 = _Block_copy(&aBlock);
        v49 = v45;

        [v49 performBlockAndWait:v48];
        _Block_release(v48);

        (*(v54 + 8))(v9, v55);
        LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

        if ((v48 & 1) == 0)
        {

LABEL_20:

          return;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_10013E7E4()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_1002726D0);
  sub_100083274(v0, qword_1002726D0);
  return sub_1001C5138();
}

BOOL sub_10013E864()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1001C5FE8();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_1001C6888();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100088714(0, &qword_1002712A0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3 < 1;
    }
  }

  else
  {
    sub_100140680(v8);
  }

  return 1;
}

void sub_10013E98C(uint64_t a1, uint64_t *a2)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_1001C5FE8();
  v5 = [v3 initWithEntityName:v4];

  sub_100088714(0, &qword_1002727A8, off_10023DD18);
  v6 = sub_1001C66C8();
  v14 = v6;
  if (v6 >> 62)
  {
    v15 = sub_1001C6B38();
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_40:

    return;
  }

  v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_6:
  v16 = 0;
  v55 = v14 & 0xFFFFFFFFFFFFFF8;
  v56 = v14 & 0xC000000000000001;
  v53 = v14;
  v54 = v5;
  v52 = v15;
  while (1)
  {
    if (v56)
    {
      v17 = sub_1001C69F8();
    }

    else
    {
      if (v16 >= *(v55 + 16))
      {
        goto LABEL_36;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v19 = [v17 key];
    if (!v19)
    {
      __break(1u);
LABEL_44:
      sub_1001C6D68();
      __break(1u);
      return;
    }

    v20 = v19;
    v58 = v16 + 1;
    v21 = sub_1001C6018();
    v23 = v22;

    v57 = v18;
    v24 = [v18 value];
    if (!v24)
    {
      v41 = sub_100187B3C(v21, v23);
      v43 = v42;

      if (v43)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *a2;
        v59[0] = *a2;
        *a2 = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10018B798();
          v45 = v59[0];
        }

        sub_100140118(v41, v45);
        *a2 = v45;
      }

      goto LABEL_9;
    }

    v25 = v24;
    v26 = sub_1001C6018();
    v28 = v27;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = *a2;
    v30 = v59[0];
    v31 = a2;
    *a2 = 0x8000000000000000;
    v33 = sub_100187B3C(v21, v23);
    v34 = *(v30 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_37;
    }

    v37 = v32;
    if (*(v30 + 24) >= v36)
    {
      if (v29)
      {
        v40 = v59[0];
        if ((v32 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_10018B798();
        v40 = v59[0];
        if ((v37 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_100189D40(v36, v29);
      v38 = sub_100187B3C(v21, v23);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_44;
      }

      v33 = v38;
      v40 = v59[0];
      if ((v37 & 1) == 0)
      {
LABEL_29:
        v40[(v33 >> 6) + 8] |= 1 << v33;
        v47 = (v40[6] + 16 * v33);
        *v47 = v21;
        v47[1] = v23;
        v48 = (v40[7] + 16 * v33);
        *v48 = v26;
        v48[1] = v28;
        v49 = v40[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_38;
        }

        v40[2] = v51;
        goto LABEL_31;
      }
    }

    v46 = (v40[7] + 16 * v33);
    *v46 = v26;
    v46[1] = v28;

LABEL_31:
    a2 = v31;
    *v31 = v40;

    v14 = v53;
    v5 = v54;
    v15 = v52;
LABEL_9:
    ++v16;
    if (v58 == v15)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  swift_once();
  v7 = sub_1001C5148();
  sub_100083274(v7, qword_1002726D0);

  swift_errorRetain();
  v8 = sub_1001C5128();
  v9 = sub_1001C6598();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1001874E8(*(v16 + 16), *(v16 + 24), v59);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_1001C6D98();
    v13 = sub_1001874E8(v11, v12, v59);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "migrateIfNecessary() error reading %s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10013EF20(void *a1, uint64_t *a2)
{
  v4 = sub_1001C4CA8();
  v94 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_1001C5FE8();
  v9 = [v7 initWithEntityName:v8];

  v10 = sub_100088714(0, &qword_1002727A8, off_10023DD18);
  v19 = sub_1001C66C8();
  v98 = v10;
  v96 = a1;
  v92 = v9;
  v93 = v4;
  sub_1001C4C98();
  v97 = v6;
  if (v19 >> 62)
  {
    v20 = sub_1001C6B38();
    v21 = v98;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v98;
    if (v20)
    {
LABEL_7:
      v22 = 0;
      v99 = v19 & 0xFFFFFFFFFFFFFF8;
      v100 = v19 & 0xC000000000000001;
      while (1)
      {
        if (v100)
        {
          v23 = sub_1001C69F8();
        }

        else
        {
          if (v22 >= *(v99 + 16))
          {
            goto LABEL_28;
          }

          v23 = *(v19 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v26 = [v23 key];
        if (!v26)
        {
          goto LABEL_55;
        }

        v27 = v26;
        v28 = sub_1001C6018();
        v30 = v29;

        if (!*(*a2 + 16))
        {
          break;
        }

        sub_100187B3C(v28, v30);
        v32 = v31;

        if (v32)
        {

          v33 = sub_1001C5FE8();
          [v24 setValue:v33];

          v24 = v24;
          v34 = [v24 editGeneration];
          if (__OFADD__(v34, 1))
          {
            goto LABEL_29;
          }

          [v24 setEditGeneration:v34 + 1];
          isa = sub_1001C4C38().super.isa;
          [v24 setModificationDate:isa];

          v36 = [v24 key];
          if (!v36)
          {
            goto LABEL_56;
          }

          v37 = v36;

          v38 = sub_1001C6018();
          v40 = v39;

          v41 = sub_100187B3C(v38, v40);
          LOBYTE(v37) = v42;

          v21 = v98;
          if (v37)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v44 = *a2;
            v101 = *a2;
            *a2 = 0x8000000000000000;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10018B798();
              v44 = v101;
            }

            sub_100140118(v41, v44);
            *a2 = v44;

            goto LABEL_9;
          }

          goto LABEL_24;
        }

        v21 = v98;
LABEL_9:
        ++v22;
        if (v25 == v20)
        {
          goto LABEL_32;
        }
      }

LABEL_24:

      goto LABEL_9;
    }
  }

LABEL_32:

  v101 = v21;
  sub_100084528(&unk_1002727B0, &unk_1001F5950);
  v95 = sub_1001C6078();
  v46 = *a2;
  v49 = *(*a2 + 64);
  v48 = *a2 + 64;
  v47 = v49;
  v50 = 1 << *(v46 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v47;
  v53 = (v50 + 63) >> 6;
  v98 = v46;
  v99 = v45;

  v54 = 0;
  *&v55 = 136315394;
  v91 = v55;
LABEL_35:
  v56 = v97;
  if (!v52)
  {
    goto LABEL_37;
  }

  do
  {
    v57 = v54;
LABEL_40:
    v58 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v59 = (v57 << 10) | (16 * v58);
    v60 = (v98[6] + v59);
    v62 = *v60;
    v61 = v60[1];
    v63 = (v98[7] + v59);
    v64 = v63[1];
    v100 = *v63;
    v65 = objc_opt_self();

    v66 = sub_1001C5FE8();
    v67 = [v65 insertNewObjectForEntityForName:v66 inManagedObjectContext:v96];

    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (!v68)
    {
      v74 = v62;

      if (qword_10026EC18 != -1)
      {
        swift_once();
      }

      v75 = sub_1001C5148();
      sub_100083274(v75, qword_1002726D0);

      v76 = sub_1001C5128();
      v77 = sub_1001C6598();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v101 = v90;
        *v78 = v91;

        v79 = sub_1001874E8(v74, v61, &v101);

        *(v78 + 4) = v79;
        *(v78 + 12) = 2080;

        v80 = sub_1001874E8(v100, v64, &v101);

        *(v78 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v76, v77, "migrateIfNecessary() unable to insert key/value pair %s=%s", v78, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v54 = v57;
      goto LABEL_35;
    }

    v69 = v68;

    v70 = sub_1001C5FE8();

    [v69 setKey:v70];

    v71 = sub_1001C5FE8();

    [v69 setValue:v71];

    v72 = v67;
    [v69 setEditGeneration:1];
    v56 = v97;
    v73 = sub_1001C4C38().super.isa;
    [v69 setModificationDate:v73];

    v54 = v57;
  }

  while (v52);
  while (1)
  {
LABEL_37:
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    if (v57 >= v53)
    {
      break;
    }

    v52 = *(v48 + 8 * v57);
    ++v54;
    if (v52)
    {
      goto LABEL_40;
    }
  }

  v81 = v96;
  if (([v96 hasChanges] & 1) == 0)
  {
    (*(v94 + 8))(v56, v93);

    return;
  }

  v101 = 0;
  v82 = [v81 save:&v101];
  v83 = v93;
  v84 = v94;
  v85 = v92;
  if (v82)
  {
    v86 = *(v94 + 8);
    v87 = v101;
    v86(v56, v83);

    return;
  }

  v88 = v101;
  sub_1001C4A28();

  swift_willThrow();
  (*(v84 + 8))(v56, v83);
  if (qword_10026EC18 != -1)
  {
LABEL_30:
    swift_once();
  }

  v11 = sub_1001C5148();
  sub_100083274(v11, qword_1002726D0);
  swift_errorRetain();
  v12 = sub_1001C5128();
  v13 = sub_1001C6598();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_1001C6D98();
    v18 = sub_1001874E8(v16, v17, &v101);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "migrateIfNecessary() error %s", v14, 0xCu);
    sub_10008E7BC(v15);
  }

  else
  {
  }
}

void *CloudSecureUserDataMigrator.deinit()
{

  return v0;
}

uint64_t CloudSecureUserDataMigrator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10013F9B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013F9DC()
{
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001001FDFA0;
  *(v0 + 32) = 0xD000000000000020;
  *(v0 + 40) = 0x80000001001FDFC0;
  *(v0 + 48) = xmmword_1001F58F0;
  *(v0 + 64) = 0x80000001001FDFF0;
  sub_100084528(&qword_10026ECE0, &unk_1001F5960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0680;
  *(inited + 32) = sub_1001C6018();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1001C6018();
  *(inited + 64) = v3;
  *(inited + 72) = 1;
  *(inited + 80) = sub_1001C6018();
  *(inited + 88) = v4;
  *(inited + 96) = 1;
  v5 = sub_100119680(inited);
  swift_setDeallocating();
  sub_100084528(&qword_10026ECE8, &unk_1001F06B0);
  swift_arrayDestroy();
  *(v0 + 72) = v5;
  return v0;
}

uint64_t sub_10013FB1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1001C6DE8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10013FC8C(int64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1001C68D8();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_1001406E8();
      v21 = sub_1001C5F88();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(type metadata accessor for ReadingHistoryDay(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10013FF8C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1001C6798(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100140118(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      sub_1001C6DF8();

      sub_1001C60E8();
      v9 = sub_1001C6E28();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001402C8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_1001C6798(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_100140460(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    while (1)
    {
      v9 = 24 * v6;
      v10 = *(*(a2 + 48) + 24 * v6 + 16);
      sub_1001C6DF8();

      sub_1001C60E8();
      sub_1001C6E18(v10);
      v11 = sub_1001C6E28();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = v13 + 24 * v3;
      v15 = (v13 + v9);
      if (24 * v3 < v9 || v14 >= v15 + 24 || v3 != v6)
      {
        v16 = *v15;
        *(v14 + 16) = *(v15 + 2);
        *v14 = v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(_s14PricingServiceV12FetchedPriceVMa(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100140680(uint64_t a1)
{
  v2 = sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001406E8()
{
  result = qword_100273170;
  if (!qword_100273170)
  {
    sub_1001C4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273170);
  }

  return result;
}

unint64_t sub_10014074C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = sub_1001C6108();

  sub_1001C6858();
  v11 = v10;

  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  sub_1001C6858();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v14 = (a4 >> 59) & 1;
  v15 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  if ((a5 & 0x1000000000000000) != 0)
  {
    v16 = sub_1001C6188();
  }

  else
  {
    v16 = 0;
    LOBYTE(v14) = 1;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v17 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 << 16;
  if (v14)
  {
    v19 = v18 | 7;
    if ((a5 & 0x1000000000000000) == 0)
    {
      LOBYTE(v20) = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v18 | 0xB;
  }

  v20 = (a4 & 0x800000000000000) >> 59;
LABEL_16:
  v21 = 4 << v15;
  result = v9;
  if ((v9 & 0xC) == 4 << v20)
  {
    v26 = v19;
    result = sub_1000D8E7C(v9, a4, a5);
    v19 = v26;
  }

  if ((v19 & 0xC) == v21)
  {
    v27 = result;
    v19 = sub_1000D8E7C(v19, a4, a5);
    result = v27;
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (v19 >> 16) - (result >> 16);
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_20;
  }

  if (v17 < result >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 >= v19 >> 16)
  {
    result = sub_1001C6188();
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      if ((a3 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(a3) & 0xF;
        v25 = __OFADD__(v16, v24);
        v23 = v16 + v24;
        if (!v25)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v16 + (a2 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v16, a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_26;
        }
      }

      goto LABEL_36;
    }

LABEL_34:
    v28 = result;
    v29 = sub_1001C6158();
    result = v28;
    v25 = __OFADD__(v16, v29);
    v23 = v16 + v29;
    if (!v25)
    {
LABEL_26:
      v25 = __OFADD__(v23, result);
      result += v23;
      if (!v25)
      {
        sub_1001C60C8(result);
LABEL_28:
        sub_1001C6208();
        sub_1000D943C();
        sub_1001C6128();

        sub_1001C6128();
        sub_100144990(v9, a4, a5);
        sub_1001C6128();

        return 0;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_100140A2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100084528(&qword_1002728A8, qword_1001F5AA8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = OBJC_IVAR____TtC14bookdatastored19CRDTModelSyncEntity____lazy_storage___logger;
  swift_beginAccess();
  sub_10014513C(v2 + v10, v9);
  v11 = sub_1001C5148();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10008875C(v9, &qword_1002728A8, qword_1001F5AA8);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v18, "CRDTModelSync.");
  HIBYTE(v18[1]) = -18;
  v13 = [v2 type];
  v14 = sub_1001C6018();
  v16 = v15;

  v19._countAndFlagsBits = v14;
  v19._object = v16;
  sub_1001C6138(v19);

  sub_1001C5138();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1001451AC(v7, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_100140CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v8 = [v3 protoData];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1001C4BA8();
    v12 = v11;

    v13 = a3(v10, v12, a1, a2);
    if (v14 >> 60 != 15)
    {
      v15 = v13;
      v16 = v14;
      if (v12 >> 60 != 15)
      {
        sub_10009AD88(v13, v14);
        sub_10009AD88(v10, v12);
        v17 = sub_100144DE4(v15, v16, v10, v12);
        sub_1000887BC(v10, v12);
        sub_1000887BC(v15, v16);
        if (v17)
        {
          sub_1001450E8();
          swift_allocError();
          *v18 = 1;
          swift_willThrow();
LABEL_11:
          sub_1000887BC(v15, v16);
          return sub_1000887BC(v10, v12);
        }

LABEL_10:
        isa = sub_1001C4B98().super.isa;
        [v4 setProtoData:isa];

        goto LABEL_11;
      }

LABEL_9:
      sub_10009AD88(v15, v16);
      sub_10009AD88(v10, v12);
      sub_1000887BC(v15, v16);
      sub_1000887BC(v10, v12);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xF000000000000000;
    v19 = a3(0, 0xF000000000000000, a1, a2);
    v10 = 0;
    if (v20 >> 60 != 15)
    {
      v15 = v19;
      v16 = v20;
      goto LABEL_9;
    }
  }

  sub_1001450E8();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return sub_1000887BC(v10, v12);
}

Swift::Void __swiftcall CRDTModelSyncEntity.configure(from:withMergers:)(BCCloudData from, Swift::OpaquePointer_optional withMergers)
{
  v3 = v2;
  privacyDelegate = from._privacyDelegate;
  isa = from.super.super.isa;
  v6 = sub_1001C5148();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v13 = &v134 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v134 - v15;
  __chkstk_darwin(v14);
  v18 = __chkstk_darwin(&v134 - v17);
  v19 = __chkstk_darwin(v18);
  v25 = &v134 - v24;
  if (!privacyDelegate)
  {
    return;
  }

  v146 = v20;
  v144 = v19;
  v141 = v23;
  v142 = v22;
  v143 = v21;
  v147 = isa;
  v26 = [(objc_class *)isa recordType];
  v27 = sub_1001C6018();
  v29 = v28;

  v145 = v27;
  v149 = v27;
  v150 = v29;

  sub_1001C6968();
  if (!*(privacyDelegate + 2) || (v30 = sub_100187A1C(v151), (v31 & 1) == 0))
  {
    sub_10008EB7C(v151);

    return;
  }

  v138 = v16;
  v140 = *(*(privacyDelegate + 7) + 8 * v30);
  _Block_copy(v140);
  sub_10008EB7C(v151);
  v32 = v147;
  swift_getObjectType();
  v33 = swift_conformsToProtocol2();
  if (!v33 || !v32)
  {

    sub_100140A2C(v13);
    v50 = sub_1001C5128();
    v51 = sub_1001C6598();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "CRDTModelSyncEntity configure(from:) wrong class passed in", v52, 2u);
    }

    _Block_release(v140);

    (*(v7 + 8))(v13, v6);
    return;
  }

  v34 = v33;
  v139 = v7;
  v136 = v6;
  swift_unknownObjectRetain();
  v35 = [v3 type];
  v36 = sub_1001C6018();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v137 = v34;
  if (v39)
  {
    v40 = [v3 type];
    v41 = sub_1001C6018();
    v43 = v42;

    ObjectType = swift_getObjectType();
    v45 = *(v34 + 8);
    v134 = ObjectType;
    v46 = v45;
    v135 = (v34 + 8);
    v47 = v45(ObjectType, v34);
    v49 = v146;
    if (v41 == v47 && v43 == v48)
    {
    }

    else
    {
      v54 = sub_1001C6D08();

      if ((v54 & 1) == 0)
      {

        sub_100140A2C(v25);
        swift_unknownObjectRetain();
        v77 = v3;
        v78 = sub_1001C5128();
        v79 = sub_1001C6598();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v151[0] = swift_slowAlloc();
          *v80 = 136315394;
          v81 = (v46)(v134, v137);
          v83 = sub_1001874E8(v81, v82, v151);

          *(v80 + 4) = v83;
          *(v80 + 12) = 2080;
          v84 = [v77 type];
          v85 = sub_1001C6018();
          v87 = v86;

          v88 = sub_1001874E8(v85, v87, v151);

          *(v80 + 14) = v88;
          _os_log_impl(&_mh_execute_header, v78, v79, "CRDTModelSyncEntity incompatible type %s passed in. Expecting %s", v80, 0x16u);
          swift_arrayDestroy();

          _Block_release(v140);
          swift_unknownObjectRelease();
        }

        else
        {
          _Block_release(v140);

          swift_unknownObjectRelease();
        }

        (*(v139 + 8))(v25, v136);
        return;
      }
    }

    v53 = v137;
  }

  else
  {
    v46 = *(v34 + 8);
    v53 = v34;
    v49 = v146;
  }

  v55 = v147;
  v146 = swift_getObjectType();
  (v46)(v146, v53);
  v56 = sub_1001C5FE8();

  [v3 setType:v56];

  swift_unknownObjectRetain();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  v57 = sub_1001C5EF8().super.isa;
  v58 = type metadata accessor for CRDTModelSyncEntity(0);
  v148.receiver = v3;
  v148.super_class = v58;
  objc_msgSendSuper2(&v148, "configureFromCloudData:withMergers:", v55, v57);
  swift_unknownObjectRelease();

  sub_100140A2C(v49);
  v59 = v3;
  swift_unknownObjectRetain();
  v60 = v59;
  v61 = sub_1001C5128();
  v62 = sub_1001C65B8();
  if (!os_log_type_enabled(v61, v62))
  {

    swift_unknownObjectRelease();
    v61 = v60;
    v65 = v136;
    v76 = v55;
    goto LABEL_41;
  }

  v63 = swift_slowAlloc();
  *v63 = 134218240;
  v64 = [v60 protoData];
  v65 = v136;
  if (!v64)
  {

    v75 = -1;
    goto LABEL_38;
  }

  v66 = v60;
  v67 = v64;
  v68 = sub_1001C4BA8();
  v70 = v69;

  v71 = v70;
  v72 = v70 >> 62;
  if ((v70 >> 62) > 1)
  {
    if (v72 != 2)
    {
      sub_1000887D0(v68, v70);
      v60 = v66;

      v75 = 0;
      goto LABEL_37;
    }

    v90 = *(v68 + 16);
    v89 = *(v68 + 24);
    sub_1000887D0(v68, v71);

    v75 = v89 - v90;
    if (!__OFSUB__(v89, v90))
    {
      v60 = v66;
      goto LABEL_37;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v72)
  {
    sub_1000887D0(v68, v70);
    v60 = v66;

    LODWORD(v75) = HIDWORD(v68) - v68;
    if (!__OFSUB__(HIDWORD(v68), v68))
    {
      v75 = v75;
      goto LABEL_37;
    }

    goto LABEL_70;
  }

  v73 = v68;
  v74 = BYTE6(v70);
  sub_1000887D0(v73, v70);
  v60 = v66;

  v75 = v74;
LABEL_37:
  v65 = v136;
LABEL_38:
  *(v63 + 4) = v75;

  *(v63 + 12) = 2048;
  v91 = (*(v137 + 16))(v146);
  if (v92 >> 60 != 15)
  {
    v121 = v92 >> 62;
    if ((v92 >> 62) > 1)
    {
      goto LABEL_57;
    }

    if (!v121)
    {
      v122 = BYTE6(v92);
      sub_1000887BC(v91, v92);
      v93 = v122;
      goto LABEL_40;
    }

    v132 = HIDWORD(v91);
    v133 = v91;
    sub_1000887BC(v91, v92);
    LODWORD(v93) = v132 - v133;
    if (!__OFSUB__(v132, v133))
    {
      v93 = v93;
      goto LABEL_40;
    }

LABEL_72:
    __break(1u);
    return;
  }

  v93 = -1;
  while (1)
  {
LABEL_40:
    v76 = v147;
    *(v63 + 14) = v93;
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v61, v62, "CRDTModelSyncEntity Merging: existing data (%ld bytes) with incoming data (%ld bytes)", v63, 0x16u);

LABEL_41:

    v94 = *(v139 + 8);
    v139 += 8;
    v135 = v94;
    v94(v49, v65);
    v95 = v76;
    v96 = (*(v137 + 16))(v146);
    v98 = v97;
    v99 = __chkstk_darwin(v96);
    v100 = v145;
    *(&v134 - 4) = v140;
    *(&v134 - 3) = v100;
    *(&v134 - 2) = v29;
    sub_100140CB4(v99, v101, sub_10014521C);

    sub_1000887BC(v96, v98);
    v102 = v144;
    sub_100140A2C(v144);
    swift_unknownObjectRetain();
    v103 = v60;
    v104 = sub_1001C5128();
    v105 = sub_1001C65B8();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v151[0] = swift_slowAlloc();
      *v106 = 136315394;
      v107 = [(objc_class *)v95 recordType];
      v108 = sub_1001C6018();
      v109 = v65;
      v110 = v60;
      v112 = v111;

      v113 = sub_1001874E8(v108, v112, v151);
      v60 = v110;
      v65 = v109;

      *(v106 + 4) = v113;
      *(v106 + 12) = 2080;
      v114 = [v103 debugDescription];
      v115 = sub_1001C6018();
      v117 = v116;

      v118 = sub_1001874E8(v115, v117, v151);

      *(v106 + 14) = v118;
      _os_log_impl(&_mh_execute_header, v104, v105, "CRDTModelSyncEntity Merging: Adopted properties from cloudData: %s %s", v106, 0x16u);
      swift_arrayDestroy();

      v119 = v144;
      v120 = v109;
    }

    else
    {

      v119 = v102;
      v120 = v65;
    }

    v62 = v135;
    v135(v119, v120);
    v123 = v138;
    sub_100140A2C(v138);
    v49 = v60;
    v124 = sub_1001C5128();
    LOBYTE(v125) = sub_1001C65B8();
    if (!os_log_type_enabled(v124, v125))
    {
      swift_unknownObjectRelease();
      _Block_release(v140);

      v124 = v49;
      goto LABEL_65;
    }

    v46 = -1;
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    v126 = [v49 protoData];
    if (!v126)
    {
      break;
    }

    v127 = v126;
    v46 = sub_1001C4BA8();
    v129 = v128;

    v130 = v129;
    v131 = v129 >> 62;
    if ((v129 >> 62) <= 1)
    {
      if (!v131)
      {
        sub_1000887D0(v46, v129);
        v46 = BYTE6(v129);
        break;
      }

      goto LABEL_61;
    }

    if (v131 != 2)
    {
      sub_1000887D0(v46, v129);
      v46 = 0;
      break;
    }

    v29 = *(v46 + 16);
    v61 = *(v46 + 24);
    v91 = sub_1000887D0(v46, v130);
    v46 = v61 - v29;
    if (!__OFSUB__(v61, v29))
    {
      break;
    }

    __break(1u);
LABEL_57:
    if (v121 == 2)
    {
      v125 = *(v91 + 16);
      v124 = *(v91 + 24);
      sub_1000887BC(v91, v92);
      v93 = v124 - v125;
      if (__OFSUB__(v124, v125))
      {
        __break(1u);
LABEL_61:
        sub_1000887D0(v46, v130);
        if (__OFSUB__(HIDWORD(v46), v46))
        {
          goto LABEL_71;
        }

        v46 = HIDWORD(v46) - v46;
        break;
      }
    }

    else
    {
      sub_1000887BC(v91, v92);
      v93 = 0;
    }
  }

  *(v63 + 4) = v46;

  _os_log_impl(&_mh_execute_header, v124, v125, "CRDTModelSyncEntity Merging: merged data (%ld bytes)", v63, 0xCu);

  _Block_release(v140);
  swift_unknownObjectRelease();
  v123 = v138;
LABEL_65:

  v62(v123, v65);
}

Swift::Bool __swiftcall CRDTModelSyncEntity.isEqualExceptForDate(_:ignoringEmptySalt:)(BCCloudData _, Swift::Bool ignoringEmptySalt)
{
  v3 = v2;
  privacyDelegate = _._privacyDelegate;
  isa = _.super.super.isa;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  v7 = 0;
  if (v6 && isa)
  {
    v8 = v6;
    v25.receiver = v3;
    v25.super_class = type metadata accessor for CRDTModelSyncEntity(0);
    swift_unknownObjectRetain();
    if (objc_msgSendSuper2(&v25, "isEqualExceptForDate:ignoringEmptySalt:", isa, privacyDelegate & 1))
    {
      v9 = [v3 type];
      v10 = sub_1001C6018();
      v12 = v11;

      ObjectType = swift_getObjectType();
      if (v10 == (*(v8 + 8))(ObjectType, v8) && v12 == v14)
      {

        goto LABEL_8;
      }

      v15 = sub_1001C6D08();

      if (v15)
      {
LABEL_8:
        v16 = [v3 protoData];
        if (v16)
        {
          v17 = v16;
          v18 = sub_1001C4BA8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xF000000000000000;
        }

        v22 = (*(v8 + 16))(ObjectType, v8);
        v23 = v21;
        if (v20 >> 60 == 15)
        {
          swift_unknownObjectRelease();
          if (v23 >> 60 == 15)
          {
            sub_1000887BC(v18, v20);
            return 1;
          }
        }

        else
        {
          if (v21 >> 60 != 15)
          {
            sub_10009AD88(v18, v20);
            sub_10009AD88(v22, v23);
            v7 = sub_100144DE4(v18, v20, v22, v23);
            sub_1000887BC(v22, v23);
            sub_1000887BC(v22, v23);
            sub_1000887BC(v18, v20);
            swift_unknownObjectRelease();
            sub_1000887BC(v18, v20);
            return v7;
          }

          swift_unknownObjectRelease();
        }

        sub_1000887BC(v18, v20);
        sub_1000887BC(v22, v23);
        return 0;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v7;
}

Swift::Void __swiftcall CRDTModelSyncEntity.resolveConflicts(from:withResolvers:)(CKRecord from, Swift::OpaquePointer_optional withResolvers)
{
  rawValue = withResolvers.value._rawValue;
  v4 = sub_1001C5148();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v85 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v85 - v13;
  __chkstk_darwin(v12);
  v95 = &v85 - v15;
  v16 = sub_1001C4B28();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v85 - v22;
  if (!rawValue)
  {
    return;
  }

  v91 = v14;
  v92 = v11;
  v93 = v8;
  v94 = v21;
  isa = from.super.isa;
  v25 = sub_1001C6758();
  v27 = v26;
  v98 = v25;
  v99 = v26;

  sub_1001C6968();
  if (!rawValue[2] || (v28 = sub_100187A1C(v100), (v29 & 1) == 0))
  {
    sub_10008EB7C(v100);
LABEL_15:

    return;
  }

  v89 = v23;
  v86 = v4;
  v87 = v5;
  v88 = v17;
  v90 = *(rawValue[7] + 8 * v28);
  _Block_copy(v90);
  sub_10008EB7C(v100);
  v30 = sub_1001C6758();
  v32 = v31;
  v33 = [v96 recordType];
  v34 = sub_1001C6018();
  v36 = v35;

  if (v30 == v34 && v32 == v36)
  {
  }

  else
  {
    v37 = sub_1001C6D08();

    if ((v37 & 1) == 0)
    {
LABEL_14:
      _Block_release(v90);
      goto LABEL_15;
    }
  }

  v38 = isa;
  if (!sub_1001C6768())
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v40 = [v39 fileURL];
  if (v40)
  {
    v41 = v40;
    sub_1001C4AD8();

    v42 = v88;
    (*(v88 + 32))(v89, v20, v94);
    sub_100084528(&qword_10026FC80, &qword_1001F5970);
    v43 = sub_1001C5EF8().super.isa;
    v44 = type metadata accessor for CRDTModelSyncEntity(0);
    v45 = v96;
    v97.receiver = v96;
    v97.super_class = v44;
    objc_msgSendSuper2(&v97, "resolveConflictsFromRecord:withResolvers:", isa, v43);

    v46 = sub_1001C4B48();
    v62 = v61;
    v63 = __chkstk_darwin(v46);
    *(&v85 - 4) = v90;
    *(&v85 - 3) = v25;
    *(&v85 - 2) = v27;
    v64 = v63;
    sub_10009AD9C(v63, v65);
    v85 = v64;
    sub_100140CB4(v64, v62, sub_100144F4C);

    sub_1000887D0(v85, v62);
    v66 = v95;
    sub_100140A2C(v95);
    v67 = isa;
    v68 = v45;
    v69 = sub_1001C5128();
    v70 = sub_1001C65B8();

    if (os_log_type_enabled(v69, v70))
    {
      v72 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v72 = 136315394;
      v73 = [(objc_class *)v67 recordID];
      v74 = [v73 recordName];
      v96 = v62;
      v75 = v74;

      v76 = sub_1001C6018();
      v78 = v77;

      v79 = sub_1001874E8(v76, v78, v100);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = [v68 debugDescription];
      v81 = sub_1001C6018();
      v83 = v82;

      v84 = sub_1001874E8(v81, v83, v100);

      *(v72 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v69, v70, "CRDTModelSyncEntity Resolving: Adopted properties from record: %s %s", v72, 0x16u);
      swift_arrayDestroy();

      _Block_release(v90);

      swift_unknownObjectRelease();
      sub_1000887D0(v85, v96);
      (*(v87 + 8))(v95, v86);
    }

    else
    {
      _Block_release(v90);

      swift_unknownObjectRelease();
      sub_1000887D0(v85, v62);
      (*(v87 + 8))(v66, v86);
    }

    (*(v42 + 8))(v89, v94);
  }

  else
  {

    v47 = sub_1001C6598();
    v48 = v96;
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v49 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1001F0660;
    v51 = [v48 type];
    v52 = sub_1001C6018();
    v54 = v53;

    *(v50 + 56) = &type metadata for String;
    v55 = sub_100084570();
    *(v50 + 64) = v55;
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v56 = [(objc_class *)v38 recordID];
    v57 = [v56 recordName];

    v58 = sub_1001C6018();
    v60 = v59;

    *(v50 + 96) = &type metadata for String;
    *(v50 + 104) = v55;
    *(v50 + 72) = v58;
    *(v50 + 80) = v60;
    sub_1001C5118(v47, &_mh_execute_header, v49, "CRDTModelSyncEntity %@ Resolving: Asset file URL was nil for record %@", 70, 2, v50);
    swift_unknownObjectRelease();

    _Block_release(v90);
  }
}

uint64_t sub_100143484(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1001C5FE8();
  v11 = a2;
  v12 = v10;
  if (v11 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001C4B98().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1001C4B98().super.isa;
  }

  v15 = (*(a5 + 16))(a5, v12, isa, v14);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1001C6888();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10008875C(v20, &qword_10026FCB0, &unk_1001F14E0);
    return 0;
  }
}

id CRDTModelSyncEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CRDTModelSyncEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity(0);
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CRDTModelSyncEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRDTModelSyncEntity(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001438C8()
{
  v1 = [v0 type];
  v2 = sub_1001C6018();

  return v2;
}

uint64_t sub_100143920()
{
  v1 = [v0 protoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1001C4BA8();

  return v3;
}

id CRDTModelSyncEntity.mutableCopy()@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for CRDTModelSync();
  result = [objc_allocWithZone(v5) initWithCloudData:v3];
  if (result)
  {
    a2[3] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRDTModelSyncEntity.debugDescription.getter()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity(0);
  v1 = objc_msgSendSuper2(&v7, "debugDescription");
  v2 = sub_1001C6018();

  v3 = sub_1001449DC(v0);
  v5 = v4;

  v8._countAndFlagsBits = v3;
  v8._object = v5;
  sub_1001C6138(v8);

  return v2;
}

Swift::String __swiftcall CRDTModelSyncEntity.recordType()()
{
  v1 = [v0 type];
  v2 = sub_1001C6018();
  v4 = v3;

  sub_1001C61E8();
  v5 = sub_1001C6088();
  v7 = v6;

  v8 = sub_10014074C(15, v5, v7, v2, v4);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String_optional __swiftcall CRDTModelSyncEntity.identifier()()
{
  v1 = sub_100144C20(v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

NSString CRDTModelSyncEntity.zoneName()()
{
  v1 = [v0 type];
  sub_1001C6018();

  v2 = sub_1001C5FE8();

  return v2;
}

char *sub_100143EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData] = xmmword_1001F1120;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = &v11[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = v11;

  v14 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v15 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v16 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  *v14 = a3;
  *(v14 + 1) = a4;
  sub_1000887BC(v15, v16);

  return v13;
}

id sub_100143FC0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v2[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  *&v2[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData] = xmmword_1001F1120;
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7 && a1)
  {
    v8 = v7;
    v9 = swift_getObjectType();
    v24.receiver = v2;
    v24.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v24, "initWithCloudData:", a1);
    if (v10)
    {
      v11 = *(v8 + 8);
      v12 = v10;
      v13 = v10;
      v14 = v11(v9, v8);
      v15 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
      *v15 = v14;
      v15[1] = v16;

      v17 = (*(v8 + 16))(v9, v8);
      v19 = v18;
      swift_unknownObjectRelease();
      v20 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v21 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v22 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
      *v20 = v17;
      v20[1] = v19;
      sub_1000887BC(v21, v22);

      return v12;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1000887BC(*v6, *(v6 + 1));
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t sub_10014429C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);

  return v1;
}

uint64_t sub_1001442D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData);
  sub_10009AD88(v1, *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8));
  return v1;
}

uint64_t sub_100144584@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1001C48B8();
    if (v10)
    {
      v11 = sub_1001C48E8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1001C48D8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1001C48B8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1001C48E8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1001C48D8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001447B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100144D2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000887D0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100144584(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000887D0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t type metadata accessor for CRDTModelSyncEntity(uint64_t a1)
{
  result = qword_100272850;
  if (!qword_100272850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100144990(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1001C6208();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001449DC(void *a1)
{
  sub_1001C69C8(23);

  v2 = [a1 type];
  v3 = sub_1001C6018();
  v5 = v4;

  v14._countAndFlagsBits = v3;
  v14._object = v5;
  sub_1001C6138(v14);

  v15._countAndFlagsBits = 0x446F746F7270202CLL;
  v15._object = 0xED0000203A617461;
  sub_1001C6138(v15);
  v6 = [a1 protoData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1001C4BA8();
    v10 = v9;

    sub_1000887D0(v8, v10);
    v11 = 0xE300000000000000;
    v12._countAndFlagsBits = 7562617;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12._countAndFlagsBits = 1701736302;
  }

  v12._object = v11;
  sub_1001C6138(v12);

  return 0x203A65707974;
}

uint64_t sub_100144B18(uint64_t a1)
{
  sub_1001C69C8(23);

  v2 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v3 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8);

  v7._countAndFlagsBits = v2;
  v7._object = v3;
  sub_1001C6138(v7);

  v8._countAndFlagsBits = 0x446F746F7270202CLL;
  v8._object = 0xED0000203A617461;
  sub_1001C6138(v8);
  if (*(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v4._countAndFlagsBits = 1701736302;
  }

  else
  {
    v4._countAndFlagsBits = 7562617;
  }

  if (*(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v4._object = v5;
  sub_1001C6138(v4);

  return 0x203A65707974;
}

uint64_t sub_100144C20(void *a1)
{
  v2 = [a1 type];
  v3 = sub_1001C6018();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 type];
  v8 = sub_1001C6018();

  return v8;
}

uint64_t sub_100144CD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v2 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_100144D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1001C48B8();
  v11 = result;
  if (result)
  {
    result = sub_1001C48E8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1001C48D8();
  sub_100144584(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100144DE4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10009AD9C(a3, a4);
          return sub_1001447B4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100144F98(uint64_t a1)
{
  sub_100145028(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100145028(uint64_t a1)
{
  if (!qword_100272860)
  {
    sub_1001C5148();
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_100272860);
    }
  }
}

unint64_t sub_100145094()
{
  result = qword_1002728A0;
  if (!qword_1002728A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002728A0);
  }

  return result;
}

unint64_t sub_1001450E8()
{
  result = qword_1002728C0;
  if (!qword_1002728C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002728C0);
  }

  return result;
}

uint64_t sub_10014513C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002728A8, qword_1001F5AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001451AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002728A8, qword_1001F5AA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100145220@<X0>(uint64_t a5@<X8>)
{
  sub_1001C6E38();

  sub_1001C6A18();
  v6 = enum case for DecodingError.dataCorrupted(_:);
  v7 = sub_1001C6A28();
  v8 = *(*(v7 - 8) + 104);

  return v8(a5, v6, v7);
}

uint64_t PBPropertyValue.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PBPropertyValue.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v6 + 28), v5, &qword_1002705B8, &unk_1001F2BE0);
  v7 = sub_1001C4EE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1001C4ED8();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_10008875C(v5, &qword_1002705B8, &unk_1001F2BE0);
  }

  return result;
}

uint64_t PBPropertyBundle.configuration.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PBPropertyBundle(0);
  sub_10009ADF0(v1 + *(v6 + 28), v5, &qword_1002705A8, &unk_1001F5200);
  v7 = type metadata accessor for PBPropertyConfiguration(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100146E08(v5, a1, type metadata accessor for PBPropertyConfiguration);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_10008875C(v5, &qword_1002705A8, &unk_1001F5200);
  }

  return result;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_10009ADF0(v1 + *(v6 + 24), v5, &qword_1002705B8, &unk_1001F2BE0);
  v7 = sub_1001C4EE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1001C4ED8();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_10008875C(v5, &qword_1002705B8, &unk_1001F2BE0);
  }

  return result;
}

uint64_t PBPropertyTimeSlice.init()@<X0>(char *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for PBPropertyTimeSlice(0);
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v3 = *(v2 + 24);
  v4 = sub_1001C4EE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

BOOL PBPropertyTimeSlice.hasStartOfTimeSlice.getter()
{
  v1 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_10009ADF0(v0 + *(v4 + 24), v3, &qword_1002705B8, &unk_1001F2BE0);
  v5 = sub_1001C4EE8();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_10008875C(v3, &qword_1002705B8, &unk_1001F2BE0);
  return v6;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_10008875C(v1 + v3, &qword_1002705B8, &unk_1001F2BE0);
  v4 = sub_1001C4EE8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PBPropertyBundle.init()@<X0>(char *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 1) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for PBPropertyBundle(0);
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t PBPropertyBundle.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  sub_10008875C(v1 + v3, &qword_1002705A8, &unk_1001F5200);
  sub_100146E08(a1, v1 + v3, type metadata accessor for PBPropertyConfiguration);
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t sub_100145B78@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_100145B90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int sub_100145BAC(uint64_t a1, uint64_t a2)
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100145C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F5C();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100145C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

double static MarkedAsFinishedMechanism.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static MarkedAsFinishedMechanism.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static MarkedAsFinishedMechanism.allCases = a1;
}

double sub_100145DC8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static MarkedAsFinishedMechanism.allCases;

  return result;
}

uint64_t PBPropertyConfiguration.eventName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PBPropertyConfiguration.eventName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PBPropertyConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v4 = sub_1001C4F18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PBPropertyConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v4 = sub_1001C4F18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PBPropertyConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  type metadata accessor for PBPropertyConfiguration(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyNoParams.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001C4F18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PBPropertyNoParams.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1001C4F18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PBPropertySingleFloatParam.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for PBPropertySingleFloatParam(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyBookReadParams.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  type metadata accessor for PBPropertyBookReadParams(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100146378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100146434(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PBPropertyBookImpressionParam.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for PBPropertyBookImpressionParam(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyMarkedAsFinishedParam.value.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyValue.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_10008875C(v1 + v3, &qword_1002705B8, &unk_1001F2BE0);
  v4 = sub_1001C4EE8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*PBPropertyValue.createdAt.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B8, &unk_1001F2BE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001C4EE8();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for PBPropertyValue(0) + 28);
  *(v4 + 12) = v14;
  sub_10009ADF0(v1 + v14, v7, &qword_1002705B8, &unk_1001F2BE0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001C4ED8();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10008875C(v7, &qword_1002705B8, &unk_1001F2BE0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_10014690C;
}

uint64_t PBPropertyValue.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PBPropertyValue(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*PBPropertyValue.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for PBPropertyValue(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100146A80;
}

void sub_100146A80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall PBPropertyValue.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t PBPropertyValue.params.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PBPropertyValue(0) + 20);

  return sub_100146BCC(a1, v3);
}

uint64_t sub_100146BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PBPropertyValue.noParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v6 + 20), v5, &qword_1002705B0, &qword_1001F2BD8);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_10008875C(v5, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_100146E08(v5, a1, type metadata accessor for PBPropertyNoParams);
    }

    sub_100147104(v5, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100146E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*PBPropertyValue.noParams.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for PBPropertyNoParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v11;
  sub_10009ADF0(v1 + v11, v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100146E08(v7, v10, type metadata accessor for PBPropertyNoParams);
      return sub_1001470C0;
    }

    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  return sub_1001470C0;
}

uint64_t sub_100147104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PBPropertyValue.floatParam.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v6 + 20), v5, &qword_1002705B0, &qword_1001F2BD8);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_10008875C(v5, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_100146E08(v5, a1, type metadata accessor for PBPropertySingleFloatParam);
    }

    sub_100147104(v5, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  type metadata accessor for PBPropertySingleFloatParam(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.floatParam.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for PBPropertySingleFloatParam(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v11;
  sub_10009ADF0(v1 + v11, v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v10 = 0;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_100147528;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v10, type metadata accessor for PBPropertySingleFloatParam);
  return sub_100147528;
}

uint64_t sub_10014756C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PBPropertyValue.bookReadParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v6 + 20), v5, &qword_1002705B0, &qword_1001F2BD8);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_10008875C(v5, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_100146E08(v5, a1, type metadata accessor for PBPropertyBookReadParams);
    }

    sub_100147104(v5, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  type metadata accessor for PBPropertyBookReadParams(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.bookReadParams.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for PBPropertyBookReadParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v11;
  sub_10009ADF0(v1 + v11, v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v10 = 0;
    *(v10 + 4) = 0;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_1001479A0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v10, type metadata accessor for PBPropertyBookReadParams);
  return sub_1001479A0;
}

uint64_t PBPropertyValue.markedAsFinishedParam.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v6 + 20), v5, &qword_1002705B0, &qword_1001F2BD8);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_10008875C(v5, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_100146E08(v5, a1, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    }

    sub_100147104(v5, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.markedAsFinishedParam.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v11;
  sub_10009ADF0(v1 + v11, v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v10 = 0;
    *(v10 + 8) = 1;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_100147DB8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v10, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  return sub_100147DB8;
}

uint64_t PBPropertyValue.bookImpressionParam.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v6 + 20), v5, &qword_1002705B0, &qword_1001F2BD8);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_10008875C(v5, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_100146E08(v5, a1, type metadata accessor for PBPropertyBookImpressionParam);
    }

    sub_100147104(v5, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  type metadata accessor for PBPropertyBookImpressionParam(0);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100147F90(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for PBPropertyValue(0) + 20);
  sub_10008875C(v3 + v6, &qword_1002705B0, &qword_1001F2BD8);
  sub_100146E08(a1, v3 + v6, a2);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*PBPropertyValue.bookImpressionParam.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for PBPropertyBookImpressionParam(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v11;
  sub_10009ADF0(v1 + v11, v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v10 = 0;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_10014828C;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v10, type metadata accessor for PBPropertyBookImpressionParam);
  return sub_10014828C;
}

void sub_1001482D0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_10014756C(v12, v11, a5);
    sub_10008875C(v13 + v10, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_100147104(v12, a6);
  }

  else
  {
    sub_10008875C(v13 + v10, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t sub_100148450@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001484EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static PBPropertyNoParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t static PBPropertySingleFloatParam.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for PBPropertySingleFloatParam(0);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t static PBPropertyBookReadParams.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for PBPropertyBookReadParams(0);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t static PBPropertyBookImpressionParam.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for PBPropertyBookImpressionParam(0);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t PBPropertyValue.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = v2[5];
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v5 = v2[7];
  v6 = sub_1001C4EE8();
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v2[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  return result;
}

void (*PBPropertyBundle.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705A8, &unk_1001F5200) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PBPropertyConfiguration(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  *(v4 + 12) = v14;
  sub_10009ADF0(v1 + v14, v7, &qword_1002705A8, &unk_1001F5200);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10008875C(v7, &qword_1002705A8, &unk_1001F5200);
    }
  }

  else
  {
    sub_100146E08(v7, v13, type metadata accessor for PBPropertyConfiguration);
  }

  return sub_100148B4C;
}

void sub_100148B4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_10014756C((*a1)[5], v4, type metadata accessor for PBPropertyConfiguration);
    sub_10008875C(v9 + v3, &qword_1002705A8, &unk_1001F5200);
    sub_100146E08(v4, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_100147104(v5, type metadata accessor for PBPropertyConfiguration);
  }

  else
  {
    sub_10008875C(v9 + v3, &qword_1002705A8, &unk_1001F5200);
    sub_100146E08(v5, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100148CF0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100084528(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10009ADF0(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_10008875C(v11, a1, a2);
  return v14;
}

uint64_t sub_100148E28(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_10008875C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t PBPropertyBundle.propertyValues.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PBPropertyBundle.deletedPropertyValueTimestamps.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*PBPropertyTimeSlice.startOfTimeSlice.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B8, &unk_1001F2BE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001C4EE8();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  *(v4 + 12) = v14;
  sub_10009ADF0(v1 + v14, v7, &qword_1002705B8, &unk_1001F2BE0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001C4ED8();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10008875C(v7, &qword_1002705B8, &unk_1001F2BE0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001534EC;
}

void sub_1001491C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_10008875C(v9 + v3, &qword_1002705B8, &unk_1001F2BE0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_10008875C(v9 + v3, &qword_1002705B8, &unk_1001F2BE0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall PBPropertyTimeSlice.clearStartOfTimeSlice()()
{
  v1 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_10008875C(v0 + v1, &qword_1002705B8, &unk_1001F2BE0);
  v2 = sub_1001C4EE8();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10014942C()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static MarkedAsFinishedMechanism._protobuf_nameMap);
  sub_100083274(v0, static MarkedAsFinishedMechanism._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0680;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Manually";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Automatically";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t sub_1001496D0()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyConfiguration._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyConfiguration._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ageToExpire";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countLimit";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recordType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1001C4FE8();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1001C4FC8();
    }
  }
}

uint64_t PBPropertyConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001C5098(), !v4))
  {
    if (!v3[1] || (result = sub_1001C5098(), !v4))
    {
      v6 = v3[3];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_1001C50A8(), !v4))
      {
        if (!v3[4] || (result = sub_1001C5098(), !v4))
        {
          type metadata accessor for PBPropertyConfiguration(0);
          return sub_1001C4EF8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100149B54@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100149B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100149BF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100149CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730F0, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100149D60(uint64_t a1)
{
  v2 = sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100149DCC(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);

  return sub_1001C5058();
}

uint64_t sub_100149E74()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyNoParams._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyNoParams._protobuf_nameMap);
  return sub_1001C50F8();
}

uint64_t PBPropertyNoParams.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1001C4F78();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_100149FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730E8, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014A07C(uint64_t a1)
{
  v2 = sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A0E8(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);

  return sub_1001C5058();
}

uint64_t PBPropertySingleFloatParam.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001C4FB8();
    }
  }

  return result;
}

uint64_t PBPropertySingleFloatParam.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1001C5088(), !v4))
  {
    type metadata accessor for PBPropertySingleFloatParam(0);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014A3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730E0, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014A454(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A4C0(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);

  return sub_1001C5058();
}

uint64_t sub_10014A53C(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t sub_10014A608()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyBookReadParams._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyBookReadParams._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isSample";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progress";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyBookReadParams.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001C4F98();
    }

    else if (result == 2)
    {
      sub_1001C4FB8();
    }
  }

  return result;
}

uint64_t PBPropertyBookReadParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1001C5068(), !v4))
  {
    if (*(v3 + 4) == 0.0 || (result = sub_1001C5088(), !v4))
    {
      type metadata accessor for PBPropertyBookReadParams(0);
      return sub_1001C4EF8();
    }
  }

  return result;
}

uint64_t sub_10014A9A0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_10014AA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730D8, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014AABC(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014AB28(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);

  return sub_1001C5058();
}

uint64_t sub_10014ABA4(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t PBPropertyBookImpressionParam.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001C4F78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001C4F98();
    }
  }

  return result;
}

uint64_t PBPropertyBookImpressionParam.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1001C5068(), !v4))
  {
    type metadata accessor for PBPropertyBookImpressionParam(0);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014AE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730D0, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014AF20(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014AF8C(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);

  return sub_1001C5058();
}

uint64_t sub_10014B008(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t sub_10014B0EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001C5108();
  sub_100088824(v7, a2);
  sub_100083274(v7, a2);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v8 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F0670;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = sub_1001C50D8();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1001C50E8();
}

uint64_t PBPropertyMarkedAsFinishedParam.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C4F78();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_100151F5C();
        sub_1001C4FA8();
      }

      result = sub_1001C4F78();
    }
  }

  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_100151F5C(), result = sub_1001C5078(), !v4))
  {
    type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014B43C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_10014B498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730C8, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014B538(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B5A4(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);

  return sub_1001C5058();
}

uint64_t sub_10014B650()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyValue._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyValue._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F5AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "createdAt";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "assetID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "noParams";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "floatParam";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bookReadParams";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "markedAsFinishedParam";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "bookImpressionParam";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001C4F78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_10014CD8C(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_10014D354(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_10014C1FC(v5, a1, a2, a3);
      }

      else
      {
        sub_10014C7C4(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1001C4FC8();
      }

      else
      {
        sub_10014BC34(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_10014BB80(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for PBPropertyValue(0);
      sub_1001C4FD8();
    }
  }

  return result;
}

uint64_t sub_10014BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPropertyValue(0);
  sub_1001C4EE8();
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1001C5008();
}

uint64_t sub_10014BC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for PBPropertyNoParams(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v40 - v9;
  v10 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_100084528(&qword_100273120, &qword_1001F6AA0);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_10009ADF0(a1 + v28, v12, &qword_1002705B0, &qword_1001F2BD8);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_10008875C(v12, &qword_1002705B0, &qword_1001F2BD8);
    v30 = v13;
    v31 = v49;
  }

  else
  {
    sub_100146E08(v12, v19, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v19, v17, type metadata accessor for PBPropertyValue.OneOf_Params);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100147104(v17, type metadata accessor for PBPropertyValue.OneOf_Params);
      v31 = v49;
    }

    else
    {
      sub_10008875C(v24, &qword_100273120, &qword_1001F6AA0);
      v32 = v17;
      v33 = v44;
      sub_100146E08(v32, v44, type metadata accessor for PBPropertyNoParams);
      sub_100146E08(v33, v24, type metadata accessor for PBPropertyNoParams);
      v31 = v49;
      v27(v24, 0, 1, v49);
    }
  }

  v34 = v47;
  sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);
  v35 = v48;
  sub_1001C5008();
  if (v35)
  {
    return sub_10008875C(v24, &qword_100273120, &qword_1001F6AA0);
  }

  sub_10009ADF0(v24, v34, &qword_100273120, &qword_1001F6AA0);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    sub_10008875C(v24, &qword_100273120, &qword_1001F6AA0);
    return sub_10008875C(v34, &qword_100273120, &qword_1001F6AA0);
  }

  else
  {
    v37 = v45;
    sub_100146E08(v34, v45, type metadata accessor for PBPropertyNoParams);
    if (v29 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v24, &qword_100273120, &qword_1001F6AA0);
    v38 = v43;
    v39 = v41;
    sub_10008875C(v43 + v41, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v37, v38 + v39, type metadata accessor for PBPropertyNoParams);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_10014C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for PBPropertySingleFloatParam(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_100084528(&qword_100273128, &qword_1001F6AA8);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_10009ADF0(a1 + v28, v12, &qword_1002705B0, &qword_1001F2BD8);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_10008875C(v12, &qword_1002705B0, &qword_1001F2BD8);
    v30 = v13;
  }

  else
  {
    sub_100146E08(v12, v19, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v19, v17, type metadata accessor for PBPropertyValue.OneOf_Params);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10008875C(v24, &qword_100273128, &qword_1001F6AA8);
      v31 = v17;
      v32 = v45;
      sub_100146E08(v31, v45, type metadata accessor for PBPropertySingleFloatParam);
      sub_100146E08(v32, v24, type metadata accessor for PBPropertySingleFloatParam);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_100147104(v17, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);
  v35 = v48;
  sub_1001C5008();
  if (v35)
  {
    return sub_10008875C(v24, &qword_100273128, &qword_1001F6AA8);
  }

  sub_10009ADF0(v24, v34, &qword_100273128, &qword_1001F6AA8);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_10008875C(v24, &qword_100273128, &qword_1001F6AA8);
    return sub_10008875C(v34, &qword_100273128, &qword_1001F6AA8);
  }

  else
  {
    v37 = v44;
    sub_100146E08(v34, v44, type metadata accessor for PBPropertySingleFloatParam);
    if (v29 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v24, &qword_100273128, &qword_1001F6AA8);
    v38 = v43;
    v39 = v41;
    sub_10008875C(v43 + v41, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v37, v38 + v39, type metadata accessor for PBPropertySingleFloatParam);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_10014C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v6 = *(Params - 8);
  v7 = __chkstk_darwin(Params);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_100084528(&qword_100273130, &qword_1001F6AB0);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = Params;
  v26 = Params;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_10009ADF0(a1 + v28, v12, &qword_1002705B0, &qword_1001F2BD8);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_10008875C(v12, &qword_1002705B0, &qword_1001F2BD8);
    v30 = v13;
  }

  else
  {
    sub_100146E08(v12, v19, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v19, v17, type metadata accessor for PBPropertyValue.OneOf_Params);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10008875C(v24, &qword_100273130, &qword_1001F6AB0);
      v31 = v17;
      v32 = v45;
      sub_100146E08(v31, v45, type metadata accessor for PBPropertyBookReadParams);
      sub_100146E08(v32, v24, type metadata accessor for PBPropertyBookReadParams);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_100147104(v17, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);
  v35 = v48;
  sub_1001C5008();
  if (v35)
  {
    return sub_10008875C(v24, &qword_100273130, &qword_1001F6AB0);
  }

  sub_10009ADF0(v24, v34, &qword_100273130, &qword_1001F6AB0);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_10008875C(v24, &qword_100273130, &qword_1001F6AB0);
    return sub_10008875C(v34, &qword_100273130, &qword_1001F6AB0);
  }

  else
  {
    v37 = v44;
    sub_100146E08(v34, v44, type metadata accessor for PBPropertyBookReadParams);
    if (v29 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v24, &qword_100273130, &qword_1001F6AB0);
    v38 = v43;
    v39 = v41;
    sub_10008875C(v43 + v41, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v37, v38 + v39, type metadata accessor for PBPropertyBookReadParams);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_10014CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_100084528(&qword_100273138, &qword_1001F6AB8);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_10009ADF0(a1 + v28, v12, &qword_1002705B0, &qword_1001F2BD8);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_10008875C(v12, &qword_1002705B0, &qword_1001F2BD8);
    v30 = v13;
  }

  else
  {
    sub_100146E08(v12, v19, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v19, v17, type metadata accessor for PBPropertyValue.OneOf_Params);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_10008875C(v24, &qword_100273138, &qword_1001F6AB8);
      v31 = v17;
      v32 = v45;
      sub_100146E08(v31, v45, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      sub_100146E08(v32, v24, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_100147104(v17, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);
  v35 = v48;
  sub_1001C5008();
  if (v35)
  {
    return sub_10008875C(v24, &qword_100273138, &qword_1001F6AB8);
  }

  sub_10009ADF0(v24, v34, &qword_100273138, &qword_1001F6AB8);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_10008875C(v24, &qword_100273138, &qword_1001F6AB8);
    return sub_10008875C(v34, &qword_100273138, &qword_1001F6AB8);
  }

  else
  {
    v37 = v44;
    sub_100146E08(v34, v44, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    if (v29 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v24, &qword_100273138, &qword_1001F6AB8);
    v38 = v43;
    v39 = v41;
    sub_10008875C(v43 + v41, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v37, v38 + v39, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_10014D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_100084528(&qword_100273140, &qword_1001F6AC0);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_10009ADF0(a1 + v28, v12, &qword_1002705B0, &qword_1001F2BD8);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_10008875C(v12, &qword_1002705B0, &qword_1001F2BD8);
    v30 = v13;
  }

  else
  {
    sub_100146E08(v12, v19, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_100146E08(v19, v17, type metadata accessor for PBPropertyValue.OneOf_Params);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_10008875C(v24, &qword_100273140, &qword_1001F6AC0);
      v31 = v17;
      v32 = v45;
      sub_100146E08(v31, v45, type metadata accessor for PBPropertyBookImpressionParam);
      sub_100146E08(v32, v24, type metadata accessor for PBPropertyBookImpressionParam);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_100147104(v17, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);
  v35 = v48;
  sub_1001C5008();
  if (v35)
  {
    return sub_10008875C(v24, &qword_100273140, &qword_1001F6AC0);
  }

  sub_10009ADF0(v24, v34, &qword_100273140, &qword_1001F6AC0);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_10008875C(v24, &qword_100273140, &qword_1001F6AC0);
    return sub_10008875C(v34, &qword_100273140, &qword_1001F6AC0);
  }

  else
  {
    v37 = v44;
    sub_100146E08(v34, v44, type metadata accessor for PBPropertyBookImpressionParam);
    if (v29 != 1)
    {
      sub_1001C4F88();
    }

    sub_10008875C(v24, &qword_100273140, &qword_1001F6AC0);
    v38 = v43;
    v39 = v41;
    sub_10008875C(v43 + v41, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v37, v38 + v39, type metadata accessor for PBPropertyBookImpressionParam);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t PBPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  result = sub_10014DB6C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10014DD88(v3, a1, a2, a3);
    if (*v3)
    {
      sub_1001C5098();
    }

    v13 = type metadata accessor for PBPropertyValue(0);
    sub_10009ADF0(v5 + *(v13 + 20), v11, &qword_1002705B0, &qword_1001F2BD8);
    v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_10014E040(v5, a1, a2, a3);
        }

        else
        {
          sub_10014DE00(v5, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_10014E284(v5, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_10014E4C8(v5, a1, a2, a3);
      }

      else
      {
        sub_10014E70C(v5, a1, a2, a3);
      }

      sub_100147104(v11, type metadata accessor for PBPropertyValue.OneOf_Params);
    }

    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1001C4EE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v12 + 28), v7, &qword_1002705B8, &unk_1001F2BE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10008875C(v7, &qword_1002705B8, &unk_1001F2BE0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_1001C50C8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10014DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBPropertyValue(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1001C50A8();
  }

  return result;
}

uint64_t sub_10014DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPropertyNoParams(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v11 + 20), v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_100146E08(v7, v10, type metadata accessor for PBPropertyNoParams);
    sub_100151F14(&qword_1002729F0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);
    sub_1001C50C8();
    return sub_100147104(v10, type metadata accessor for PBPropertyNoParams);
  }

  result = sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPropertySingleFloatParam(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v11 + 20), v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100146E08(v7, v10, type metadata accessor for PBPropertySingleFloatParam);
    sub_100151F14(&qword_100272A08, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);
    sub_1001C50C8();
    return sub_100147104(v10, type metadata accessor for PBPropertySingleFloatParam);
  }

  result = sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  __chkstk_darwin(Params);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v11 + 20), v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100146E08(v7, v10, type metadata accessor for PBPropertyBookReadParams);
    sub_100151F14(&qword_100272A20, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);
    sub_1001C50C8();
    return sub_100147104(v10, type metadata accessor for PBPropertyBookReadParams);
  }

  result = sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v11 + 20), v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_100146E08(v7, v10, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    sub_100151F14(&qword_100272A50, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);
    sub_1001C50C8();
    return sub_100147104(v10, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  }

  result = sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPropertyBookImpressionParam(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(a1 + *(v11 + 20), v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_100146E08(v7, v10, type metadata accessor for PBPropertyBookImpressionParam);
    sub_100151F14(&qword_100272A38, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);
    sub_1001C50C8();
    return sub_100147104(v10, type metadata accessor for PBPropertyBookImpressionParam);
  }

  result = sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_10014E99C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = a1[5];
  v5 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v6 = a1[7];
  v7 = sub_1001C4EE8();
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = &a2[a1[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  return result;
}

uint64_t sub_10014EA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730C0, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014EB3C(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014EBA8(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);

  return sub_1001C5058();
}

uint64_t sub_10014EC4C()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyBundle._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyBundle._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0680;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "configuration";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyValues";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "deletedPropertyValueTimestamps";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t PBPropertyBundle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001C4F78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for PBPropertyValue(0);
        sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);
LABEL_12:
        sub_1001C4FF8();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_10014F00C(a1, v5, a2, a3);
      }

LABEL_4:
      result = sub_1001C4F78();
    }

    sub_1001C4EE8();
    sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10014F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPropertyBundle(0);
  type metadata accessor for PBPropertyConfiguration(0);
  sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);
  return sub_1001C5008();
}

uint64_t PBPropertyBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014F238(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for PBPropertyValue(0);
      sub_100151F14(&qword_100272980, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);
      sub_1001C50B8();
    }

    if (*(v3[1] + 16))
    {
      sub_1001C4EE8();
      sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      sub_1001C50B8();
    }

    type metadata accessor for PBPropertyBundle(0);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014F238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPropertyConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPropertyBundle(0);
  sub_10009ADF0(a1 + *(v12 + 28), v7, &qword_1002705A8, &unk_1001F5200);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10008875C(v7, &qword_1002705A8, &unk_1001F5200);
  }

  sub_100146E08(v7, v11, type metadata accessor for PBPropertyConfiguration);
  sub_100151F14(&qword_1002729D8, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);
  sub_1001C50C8();
  return sub_100147104(v11, type metadata accessor for PBPropertyConfiguration);
}

uint64_t sub_10014F4A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 1) = _swiftEmptyArrayStorage;
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for PBPropertyConfiguration(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_10014F52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10014F5A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10014F644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730B8, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014F6E4(uint64_t a1)
{
  v2 = sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014F750(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);

  return sub_1001C5058();
}

uint64_t sub_10014F7F4()
{
  v0 = sub_1001C5108();
  sub_100088824(v0, static PBPropertyTimeSlice._protobuf_nameMap);
  sub_100083274(v0, static PBPropertyTimeSlice._protobuf_nameMap);
  sub_100084528(&qword_100273100, &qword_1001F6A80);
  v1 = (sub_100084528(&qword_100273108, &qword_1001F6A88) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startOfTimeSlice";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001C50D8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyBundles";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1001C50E8();
}

uint64_t sub_10014F9E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5108();

  return sub_100083274(v4, a2);
}

uint64_t sub_10014FA58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1001C5108();
  v7 = sub_100083274(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t PBPropertyTimeSlice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001C4F78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_10014FBF0(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for PBPropertyBundle(0);
        sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);
        sub_1001C4FF8();
      }

      result = sub_1001C4F78();
    }
  }

  return result;
}

uint64_t sub_10014FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPropertyTimeSlice(0);
  sub_1001C4EE8();
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1001C5008();
}

uint64_t PBPropertyTimeSlice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014FDA0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for PBPropertyBundle(0);
      sub_100151F14(&qword_100272998, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);
      sub_1001C50B8();
    }

    type metadata accessor for PBPropertyTimeSlice(0);
    return sub_1001C4EF8();
  }

  return result;
}

uint64_t sub_10014FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1001C4EE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_10009ADF0(a1 + *(v12 + 24), v7, &qword_1002705B8, &unk_1001F2BE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10008875C(v7, &qword_1002705B8, &unk_1001F2BE0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_100151F14(&qword_100272988, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_1001C50C8();
  return (*(v9 + 8))(v11, v8);
}

Swift::Int sub_100150008(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1001C6DF8();
  a1(0);
  sub_100151F14(a2, a3, a4);
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100150090@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v4 = *(a1 + 24);
  v5 = sub_1001C4EE8();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_10015011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100150190(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100150234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F14(&qword_1002730B0, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001502D4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1001C5108();
  v7 = sub_100083274(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100150370(uint64_t a1)
{
  v2 = sub_100151F14(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001503DC(uint64_t a1, uint64_t a2)
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100150434(uint64_t a1, uint64_t a2)
{
  sub_100151F14(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);

  return sub_1001C5058();
}

Swift::Int sub_1001504B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t _s14bookdatastored31PBPropertyMarkedAsFinishedParamV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
      sub_1001C4F18();
      sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return sub_1001C5FD8() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s14bookdatastored19PBPropertyTimeSliceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001C4EE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100084528(&qword_1002730F8, &unk_1001F8320);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v22 = type metadata accessor for PBPropertyTimeSlice(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_10009ADF0(a1 + v14, v13, &qword_1002705B8, &unk_1001F2BE0);
  v25 = a2;
  sub_10009ADF0(a2 + v14, &v13[v15], &qword_1002705B8, &unk_1001F2BE0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10008875C(v13, &qword_1002705B8, &unk_1001F2BE0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10009ADF0(v13, v9, &qword_1002705B8, &unk_1001F2BE0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_10008875C(v13, &qword_1002730F8, &unk_1001F8320);
LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_100151F14(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  v18 = sub_1001C5FD8();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_10008875C(v13, &qword_1002705B8, &unk_1001F2BE0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_100192D9C(*v24, *v25) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_1001C5FD8();
  return v20 & 1;
}

uint64_t _s14bookdatastored23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1001C6D08();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for PBPropertyConfiguration(0);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t _s14bookdatastored16PBPropertyBundleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v7 - 8);
  v9 = (&v22 - v8);
  v10 = sub_100084528(&qword_100273110, &unk_1001F6A90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for PBPropertyBundle(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_10009ADF0(a1 + v14, v13, &qword_1002705A8, &unk_1001F5200);
  sub_10009ADF0(a2 + v14, &v13[v15], &qword_1002705A8, &unk_1001F5200);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10009ADF0(v13, v9, &qword_1002705A8, &unk_1001F5200);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_100146E08(&v13[v15], v24, type metadata accessor for PBPropertyConfiguration);
      v18 = _s14bookdatastored23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(v9, v17);
      sub_100147104(v17, type metadata accessor for PBPropertyConfiguration);
      sub_100147104(v9, type metadata accessor for PBPropertyConfiguration);
      sub_10008875C(v13, &qword_1002705A8, &unk_1001F5200);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      v20 = 0;
      return v20 & 1;
    }

    sub_100147104(v9, type metadata accessor for PBPropertyConfiguration);
LABEL_6:
    sub_10008875C(v13, &qword_100273110, &unk_1001F6A90);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10008875C(v13, &qword_1002705A8, &unk_1001F5200);
LABEL_8:
  v19 = v25;
  if ((sub_100193E6C(*v25, *a2) & 1) == 0 || (sub_100194024(v19[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_1001C5FD8();
  return v20 & 1;
}

uint64_t _s14bookdatastored15PBPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v6 - 8);
  v49 = &v47 - v7;
  v50 = sub_100084528(&qword_100273118, &unk_1001F8310);
  __chkstk_darwin(v50);
  v53 = &v47 - v8;
  v9 = sub_1001C4EE8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_100084528(&qword_1002730F8, &unk_1001F8320);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v55 = type metadata accessor for PBPropertyValue(0);
  v56 = a1;
  v19 = *(v55 + 28);
  v20 = *(v16 + 56);
  sub_10009ADF0(a1 + v19, v18, &qword_1002705B8, &unk_1001F2BE0);
  sub_10009ADF0(a2 + v19, &v18[v20], &qword_1002705B8, &unk_1001F2BE0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_10008875C(v18, &qword_1002705B8, &unk_1001F2BE0);
      goto LABEL_11;
    }

LABEL_6:
    v22 = &qword_1002730F8;
    v23 = &unk_1001F8320;
LABEL_7:
    sub_10008875C(v18, v22, v23);
    goto LABEL_8;
  }

  sub_10009ADF0(v18, v14, &qword_1002705B8, &unk_1001F2BE0);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    (*(v10 + 8))(v14, v9);
    goto LABEL_6;
  }

  v26 = &v18[v20];
  v27 = v54;
  (*(v10 + 32))(v54, v26, v9);
  sub_100151F14(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  v28 = sub_1001C5FD8();
  v29 = *(v10 + 8);
  v29(v27, v9);
  v29(v14, v9);
  sub_10008875C(v18, &qword_1002705B8, &unk_1001F2BE0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = v55;
  v30 = v56;
  v32 = *(v55 + 32);
  v33 = (v56 + v32);
  v34 = *(v56 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1001C6D08() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v36)
  {
    goto LABEL_8;
  }

  if (*v30 != *a2)
  {
    goto LABEL_8;
  }

  v37 = *(v31 + 20);
  v38 = *(v50 + 48);
  v39 = v53;
  sub_10009ADF0(v30 + v37, v53, &qword_1002705B0, &qword_1001F2BD8);
  v40 = a2 + v37;
  v18 = v39;
  sub_10009ADF0(v40, v39 + v38, &qword_1002705B0, &qword_1001F2BD8);
  v41 = v52;
  v42 = *(v51 + 48);
  if (v42(v39, 1, v52) == 1)
  {
    if (v42(v39 + v38, 1, v41) == 1)
    {
      sub_10008875C(v39, &qword_1002705B0, &qword_1001F2BD8);
LABEL_26:
      sub_1001C4F18();
      sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = sub_1001C5FD8();
      return v24 & 1;
    }

    goto LABEL_24;
  }

  v43 = v49;
  sub_10009ADF0(v18, v49, &qword_1002705B0, &qword_1001F2BD8);
  if (v42(&v18[v38], 1, v41) == 1)
  {
    sub_100147104(v43, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_24:
    v22 = &qword_100273118;
    v23 = &unk_1001F8310;
    goto LABEL_7;
  }

  v44 = &v18[v38];
  v45 = v48;
  sub_100146E08(v44, v48, type metadata accessor for PBPropertyValue.OneOf_Params);
  v46 = _s14bookdatastored15PBPropertyValueV12OneOf_ParamsO21__derived_enum_equalsySbAE_AEtFZ_0(v43, v45);
  sub_100147104(v45, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_100147104(v43, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_10008875C(v18, &qword_1002705B0, &qword_1001F2BD8);
  if (v46)
  {
    goto LABEL_26;
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s14bookdatastored15PBPropertyValueV12OneOf_ParamsO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v52 = type metadata accessor for PBPropertyBookImpressionParam(0);
  __chkstk_darwin(v52);
  v54 = &Params - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  __chkstk_darwin(v51);
  v55 = &Params - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  __chkstk_darwin(Params);
  v53 = (&Params - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PBPropertySingleFloatParam(0);
  __chkstk_darwin(v5);
  v7 = (&Params - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PBPropertyNoParams(0);
  __chkstk_darwin(v8 - 8);
  v10 = &Params - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v12 = __chkstk_darwin(v11);
  v56 = (&Params - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v57 = (&Params - v15);
  v16 = __chkstk_darwin(v14);
  v18 = (&Params - v17);
  v19 = __chkstk_darwin(v16);
  v21 = (&Params - v20);
  __chkstk_darwin(v19);
  v23 = &Params - v22;
  v24 = sub_100084528(&qword_100273148, &qword_1001F6AC8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &Params - v26;
  v28 = *(v25 + 56);
  sub_10014756C(v58, &Params - v26, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_10014756C(v59, &v27[v28], type metadata accessor for PBPropertyValue.OneOf_Params);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10014756C(v27, v18, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v35 = v53;
        sub_100146E08(&v27[v28], v53, type metadata accessor for PBPropertyBookReadParams);
        if (*v18 == *v35 && v18[1] == v35[1])
        {
          sub_1001C4F18();
          sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          v36 = sub_1001C5FD8();
          sub_100147104(v35, type metadata accessor for PBPropertyBookReadParams);
          if (v36)
          {
            v37 = type metadata accessor for PBPropertyBookReadParams;
            goto LABEL_39;
          }
        }

        else
        {
          sub_100147104(v35, type metadata accessor for PBPropertyBookReadParams);
        }

        v44 = type metadata accessor for PBPropertyBookReadParams;
LABEL_47:
        v47 = v44;
        v48 = v18;
        goto LABEL_48;
      }

      v42 = type metadata accessor for PBPropertyBookReadParams;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v18 = v57;
        sub_10014756C(v27, v57, type metadata accessor for PBPropertyValue.OneOf_Params);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v30 = v55;
          sub_100146E08(&v27[v28], v55, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          v31 = *v18;
          v32 = *v30;
          if (*(v30 + 8) == 1)
          {
            if (v32)
            {
              if (v32 == 1)
              {
                if (v31 != 1)
                {
                  goto LABEL_45;
                }
              }

              else if (v31 != 2)
              {
                goto LABEL_45;
              }

              goto LABEL_35;
            }

            if (v31)
            {
LABEL_45:
              sub_100147104(v30, type metadata accessor for PBPropertyMarkedAsFinishedParam);
              goto LABEL_46;
            }
          }

          else if (v31 != v32)
          {
            goto LABEL_45;
          }

LABEL_35:
          sub_1001C4F18();
          sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          v45 = sub_1001C5FD8();
          sub_100147104(v30, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          if ((v45 & 1) == 0)
          {
LABEL_46:
            v44 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
            goto LABEL_47;
          }

          v37 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
          goto LABEL_39;
        }

        v42 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
        goto LABEL_28;
      }

      v18 = v56;
      sub_10014756C(v27, v56, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v38 = v54;
        sub_100146E08(&v27[v28], v54, type metadata accessor for PBPropertyBookImpressionParam);
        if (*v18 != *v38)
        {
          sub_100147104(v38, type metadata accessor for PBPropertyBookImpressionParam);
LABEL_41:
          v44 = type metadata accessor for PBPropertyBookImpressionParam;
          goto LABEL_47;
        }

        sub_1001C4F18();
        sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v46 = sub_1001C5FD8();
        sub_100147104(v38, type metadata accessor for PBPropertyBookImpressionParam);
        if ((v46 & 1) == 0)
        {
          goto LABEL_41;
        }

        v37 = type metadata accessor for PBPropertyBookImpressionParam;
LABEL_39:
        v40 = v37;
        v41 = v18;
        goto LABEL_40;
      }

      v42 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_28:
    v33 = v42;
    v34 = v18;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10014756C(v27, v21, type metadata accessor for PBPropertyValue.OneOf_Params);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100146E08(&v27[v28], v7, type metadata accessor for PBPropertySingleFloatParam);
      if (*v21 == *v7)
      {
        sub_1001C4F18();
        sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v39 = sub_1001C5FD8();
        sub_100147104(v7, type metadata accessor for PBPropertySingleFloatParam);
        if (v39)
        {
          v40 = type metadata accessor for PBPropertySingleFloatParam;
          v41 = v21;
LABEL_40:
          sub_100147104(v41, v40);
          sub_100147104(v27, type metadata accessor for PBPropertyValue.OneOf_Params);
          v43 = 1;
          return v43 & 1;
        }
      }

      else
      {
        sub_100147104(v7, type metadata accessor for PBPropertySingleFloatParam);
      }

      v47 = type metadata accessor for PBPropertySingleFloatParam;
      v48 = v21;
LABEL_48:
      sub_100147104(v48, v47);
      sub_100147104(v27, type metadata accessor for PBPropertyValue.OneOf_Params);
      goto LABEL_49;
    }

    v33 = type metadata accessor for PBPropertySingleFloatParam;
    v34 = v21;
LABEL_30:
    sub_100147104(v34, v33);
    sub_10008875C(v27, &qword_100273148, &qword_1001F6AC8);
LABEL_49:
    v43 = 0;
    return v43 & 1;
  }

  sub_10014756C(v27, v23, type metadata accessor for PBPropertyValue.OneOf_Params);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = type metadata accessor for PBPropertyNoParams;
    v34 = v23;
    goto LABEL_30;
  }

  sub_100146E08(&v27[v28], v10, type metadata accessor for PBPropertyNoParams);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v43 = sub_1001C5FD8();
  sub_100147104(v10, type metadata accessor for PBPropertyNoParams);
  sub_100147104(v23, type metadata accessor for PBPropertyNoParams);
  sub_100147104(v27, type metadata accessor for PBPropertyValue.OneOf_Params);
  return v43 & 1;
}

uint64_t sub_100151F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100151F5C()
{
  result = qword_100272968;
  if (!qword_100272968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272968);
  }

  return result;
}

unint64_t sub_100151FB4()
{
  result = qword_1002729A8;
  if (!qword_1002729A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729A8);
  }

  return result;
}

unint64_t sub_10015200C()
{
  result = qword_1002729B0;
  if (!qword_1002729B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729B0);
  }

  return result;
}

unint64_t sub_100152064()
{
  result = qword_1002729B8;
  if (!qword_1002729B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729B8);
  }

  return result;
}

unint64_t sub_1001520BC()
{
  result = qword_1002729C0;
  if (!qword_1002729C0)
  {
    sub_1000885AC(&qword_1002729C8, &qword_1001F5CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002729C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100152B90(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100152BAC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100152C04(uint64_t a1)
{
  result = sub_1001C4F18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100152CB4(uint64_t a1)
{
  result = sub_1001C4F18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100152D7C(uint64_t a1)
{
  result = sub_1001C4F18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100152E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1001C4F18();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100152ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1001C4F18();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100152F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001C4F18();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100152FF8(uint64_t a1)
{
  sub_10015311C(319, &qword_100272E70, type metadata accessor for PBPropertyValue.OneOf_Params, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001C4F18();
    if (v2 <= 0x3F)
    {
      sub_10015311C(319, &unk_100272E78, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000B6A38();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10015311C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100153180(uint64_t a1)
{
  result = type metadata accessor for PBPropertyNoParams(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBPropertySingleFloatParam(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PBPropertyBookReadParams(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PBPropertyMarkedAsFinishedParam(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for PBPropertyBookImpressionParam(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_100153258(uint64_t a1)
{
  sub_10015311C(319, &qword_100272FC8, type metadata accessor for PBPropertyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10015311C(319, &qword_100272FD0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1001C4F18();
      if (v3 <= 0x3F)
      {
        sub_10015311C(319, &unk_100272FD8, type metadata accessor for PBPropertyConfiguration, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001533C4(uint64_t a1)
{
  sub_10015311C(319, &unk_100273078, type metadata accessor for PBPropertyBundle, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001C4F18();
    if (v2 <= 0x3F)
    {
      sub_10015311C(319, &unk_100272E78, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001534F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100084528(&unk_100273270, &qword_1001F6C08);
    v2 = sub_1001C6B78();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);

        v17 = v16;
        v18 = sub_100187B3C(v15, v14);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v15;
          v8[1] = v14;
          v9 = v18;

          *(v2[7] + 8 * v9) = v17;
          swift_unknownObjectRelease();
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v15;
          v20[1] = v14;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1001536D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100084528(&qword_100273260, &qword_1001F4560);
    v2 = sub_1001C6B78();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        sub_100157880(*(a1 + 56) + 40 * v13, &v29);
        v27 = v16;
        v28 = v15;

        swift_dynamicCast();
        sub_10011A388(&v23, v25);
        sub_10011A388(v25, v26);
        sub_10011A388(v26, &v24);
        v17 = sub_100187B3C(v16, v15);
        if (v18)
        {
          v8 = (v2[6] + 16 * v17);
          *v8 = v16;
          v8[1] = v15;
          v9 = v17;

          v10 = (v2[7] + 32 * v9);
          sub_10008E7BC(v10);
          sub_10011A388(&v24, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          v19 = (v2[6] + 16 * v17);
          *v19 = v16;
          v19[1] = v15;
          sub_10011A388(&v24, (v2[7] + 32 * v17));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100153948(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100084528(&qword_100273250, &unk_1001F8060);
    v2 = sub_1001C6B78();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];

        swift_unknownObjectRetain();
        sub_100084528(&qword_10026FF08, &qword_1001F1D78);
        sub_100084528(&qword_100271010, &unk_1001F1D60);
        swift_dynamicCast();
        v15 = sub_100187B3C(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          swift_unknownObjectRelease();
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t ReadingGoalsDataStore.__allocating_init(localStore:syncStore:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ReadingGoalsDataStore.init(localStore:syncStore:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall ReadingGoalsDataStore.migrate(bookFinishedGoalDict:streakDayGoalDict:)(Swift::OpaquePointer_optional bookFinishedGoalDict, Swift::OpaquePointer_optional streakDayGoalDict)
{
  v3 = v2;
  v4 = *&bookFinishedGoalDict.is_nil;
  rawValue = bookFinishedGoalDict.value._rawValue;
  v6 = v2[5];
  v7 = v2[6];
  sub_10009BB74(v2 + 2, v6);
  if ((*(v7 + 8))(0xD00000000000001ALL, 0x80000001002035C0, v6, v7))
  {

LABEL_3:
    v8 = 0;
    goto LABEL_8;
  }

  if (!rawValue)
  {
    goto LABEL_3;
  }

  v9 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v10 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001F0660;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100084570();
  *(v11 + 32) = 0xD00000000000001ALL;
  *(v11 + 40) = 0x80000001002035C0;
  *(v11 + 96) = sub_100084528(&qword_100273150, &unk_1001F6AF8);
  *(v11 + 104) = sub_10015753C();
  *(v11 + 72) = rawValue;

  sub_1001C5118(v9, &_mh_execute_header, v10, "ReadingGoalsDataStore migrate: { %@: %@ }", 41, 2, v11);

  v12 = v3[5];
  v13 = v3[6];
  sub_10009BB74(v3 + 2, v12);
  (*(v13 + 16))(rawValue, 0xD00000000000001ALL, 0x80000001002035C0, v12, v13);
  v8 = 1;
LABEL_8:
  v14 = v3[5];
  v15 = v3[6];
  sub_10009BB74(v3 + 2, v14);
  if ((*(v15 + 8))(0xD000000000000016, 0x80000001002035E0, v14, v15))
  {

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  v16 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v17 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001F0660;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100084570();
  *(v18 + 32) = 0xD000000000000016;
  *(v18 + 40) = 0x80000001002035E0;
  *(v18 + 96) = sub_100084528(&qword_100273150, &unk_1001F6AF8);
  *(v18 + 104) = sub_10015753C();
  *(v18 + 72) = v4;

  sub_1001C5118(v16, &_mh_execute_header, v17, "ReadingGoalsDataStore migrate: { %@: %@ }", 41, 2, v18);

  v19 = v3[5];
  v20 = v3[6];
  sub_10009BB74(v3 + 2, v19);
  (*(v20 + 16))(v4, 0xD000000000000016, 0x80000001002035E0, v19, v20);
LABEL_16:
  v21 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v25 = v21;
    swift_once();
    v21 = v25;
  }

  sub_1001C5118(v21, &_mh_execute_header, qword_1002711E8, "Fake a remote change", 20, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  v22 = v3[12];
  if (v22)
  {
    v23 = v3[13];

    v22(v24);
    sub_1000044D8(v22, v23);
  }
}

uint64_t sub_100153FD8(uint64_t a1)
{
  result = sub_1001C6408();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100178A6C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}