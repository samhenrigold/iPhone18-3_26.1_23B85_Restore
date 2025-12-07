uint64_t sub_2EB8()
{
  sub_3058(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_306C((v0 + 80));
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_audioFlowProvider));

  return swift_deallocClassInstance();
}

void sub_2F8C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 > 2u)
  {
    if (a8 != 3)
    {
      if (a8 != 4)
      {
        return;
      }
    }

    goto LABEL_8;
  }

  if (a8)
  {
    if (a8 != 1)
    {
      return;
    }

LABEL_8:

    return;
  }
}

void sub_3058(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 != 0xFF)
  {
    sub_2F8C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_306C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_30B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20410(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3128(uint64_t a1)
{
  v2 = sub_2C8EC0();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE000();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34C6B0, &qword_2D0700);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  sub_2CCD50();
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_2CCD00();
  sub_30B8(&v34, &qword_34C6B8, &qword_2D0708);
  v11 = sub_2CB260();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2CCD30();

  sub_30B8(v10, &qword_34C6B0, &qword_2D0700);
  sub_F3F4(a1, &v34, &qword_34C6C0, &qword_2D0710);
  v12 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v13 = v36;
    sub_35E0(&v34, *(&v35 + 1));
    v14 = (*(v13 + 88))(v12, v13);
    v16 = v15;
    sub_306C(&v34);
    if (v16)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v17 = sub_3ED0(v5, static Logger.default);
      swift_beginAccess();
      v18 = v31;
      (*(v31 + 16))(v7, v17, v5);

      v19 = sub_2CDFE0();
      v20 = sub_2CE690();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v30 = v14;
        v22 = v18;
        v23 = v21;
        v24 = swift_slowAlloc();
        v29 = v2;
        v25 = v24;
        v33 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_3F08(v30, v16, &v33);
        _os_log_impl(&dword_0, v19, v20, "CatService#execute Found locale override: %s. Using for CAT execution", v23, 0xCu);
        sub_306C(v25);
        v2 = v29;

        (*(v22 + 8))(v7, v5);
      }

      else
      {

        (*(v18 + 8))(v7, v5);
      }

      sub_2C8E90();
      sub_2CCD10();

      (*(v32 + 8))(v4, v2);
      sub_2CCD20();
    }
  }

  else
  {
    sub_30B8(&v34, &qword_34C6C0, &qword_2D0710);
  }

  v26 = sub_2CCD40();

  return v26;
}

void *sub_35E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CatService.executeDialog(for:parameters:bundle:globals:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v73 = a6;
  v81 = a4;
  v79 = a2;
  v77 = a1;
  v9 = sub_2CDFD0();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = __chkstk_darwin(v9);
  v72 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v11;
  __chkstk_darwin(v10);
  v83 = &v66 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v21 = v14[2];
  v71 = v20;
  v69 = v14 + 2;
  v68 = v21;
  v21(v19, v20, v13);

  v22 = a5;
  v23 = sub_2CDFE0();
  v24 = sub_2CE660();

  v25 = os_log_type_enabled(v23, v24);
  v82 = v14;
  v78 = a3;
  v75 = v22;
  v76 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v66 = v13;
    v27 = v22;
    v28 = v26;
    v29 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v28 = 136446722;
    v30 = sub_2CCCB0();
    v32 = sub_3F08(v30, v31, aBlock);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = sub_2CE210();
    v35 = sub_3F08(v33, v34, aBlock);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2112;
    *(v28 + 24) = v27;
    *v29 = v27;
    v36 = v27;
    v13 = v66;
    _os_log_impl(&dword_0, v23, v24, "CatService#executeDialog %{public}s using params: %{public}s globals: %@", v28, 0x20u);
    sub_30B8(v29, &unk_34FC00, &unk_2D0150);

    swift_arrayDestroy();

    v67 = v82[1];
  }

  else
  {

    v67 = v14[1];
  }

  v67(v19, v13);
  v37 = v85;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v38 = qword_35F760;
  v39 = v83;
  sub_2CDFB0();
  v40 = v84;
  v41 = v72;
  (*(v84 + 16))(v72, v39, v37);
  v42 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v43 = (v70 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v37;
  v46 = v44;
  *(v44 + 16) = "catServiceInnerExecute";
  *(v44 + 24) = 22;
  *(v44 + 32) = 2;
  (*(v40 + 32))(v44 + v42, v41, v45);
  v47 = (v46 + v43);
  v48 = v74;
  *v47 = v73;
  v47[1] = v48;

  v49 = sub_2CE9E0();
  sub_2CDF90(v49, &dword_0, v38, "catServiceInnerExecute", 22, 2, v39, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_13BD4;
  *(v50 + 24) = v46;
  v51 = v76;
  v68(v76, v71, v13);

  v52 = sub_2CDFE0();
  v53 = sub_2CE660();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "CatService#executeDialog CAT.execute ...", v54, 2u);
  }

  v67(v51, v13);
  v82 = objc_opt_self();
  v55 = v77;
  v56 = v79;
  v57 = sub_2CE260();
  v58 = v78;
  sub_E014(v78);
  isa = sub_2CE1F0().super.isa;

  sub_2CCCF0();
  v60 = sub_2CE1F0().super.isa;

  v61 = v80;
  v62 = *(v80 + 296);
  v63 = swift_allocObject();
  v63[2] = v61;
  v63[3] = v55;
  v63[4] = v56;
  v63[5] = v58;
  v63[6] = sub_13BD8;
  v63[7] = v50;
  aBlock[4] = sub_12EFC;
  aBlock[5] = v63;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_122F0;
  aBlock[3] = &unk_331208;
  v64 = _Block_copy(aBlock);

  [v82 execute:v81 catId:v57 parameters:isa globals:v60 callback:0 options:v62 completion:v64];
  _Block_release(v64);

  return (*(v84 + 8))(v83, v85);
}

uint64_t sub_3E48()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_3E80()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_3ED0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_3F08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3FD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_E2FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_306C(v11);
  return v7;
}

unint64_t sub_3FD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10160(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2CECF0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_40E0()
{

  sub_306C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_4120()
{
  sub_4154();

  return swift_deallocClassInstance();
}

void *sub_4154()
{

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);

  sub_306C(v0 + 16);
  sub_306C(v0 + 21);
  sub_306C(v0 + 26);
  sub_306C(v0 + 31);
  return v0;
}

uint64_t sub_41B4()
{

  return swift_deallocClassInstance();
}

uint64_t CatService.__deallocating_deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);
  sub_306C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_4268(char *a1)
{
  v1021 = a1;
  v1 = sub_2CB3E0();
  v921 = *(v1 - 8);
  v922 = v1;
  __chkstk_darwin(v1);
  v920 = &v877[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v923 = sub_2CA340();
  v943 = *(v923 - 8);
  v3 = __chkstk_darwin(v923);
  v901 = &v877[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v911 = &v877[-v6];
  v7 = __chkstk_darwin(v5);
  v910 = &v877[-v8];
  __chkstk_darwin(v7);
  v939 = &v877[-v9];
  v975 = sub_2CA810();
  v982 = *(v975 - 8);
  v10 = __chkstk_darwin(v975);
  v891 = &v877[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v890 = &v877[-v13];
  v14 = __chkstk_darwin(v12);
  v896 = &v877[-v15];
  v16 = __chkstk_darwin(v14);
  v906 = &v877[-v17];
  v18 = __chkstk_darwin(v16);
  v900 = &v877[-v19];
  v20 = __chkstk_darwin(v18);
  v915 = &v877[-v21];
  v22 = __chkstk_darwin(v20);
  v917 = &v877[-v23];
  v24 = __chkstk_darwin(v22);
  v932 = &v877[-v25];
  v26 = __chkstk_darwin(v24);
  v931 = &v877[-v27];
  v28 = __chkstk_darwin(v26);
  v940 = &v877[-v29];
  __chkstk_darwin(v28);
  v965 = &v877[-v30];
  v953 = sub_2CD9F0();
  v952 = *(v953 - 8);
  __chkstk_darwin(v953);
  v951 = &v877[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_20410(&qword_34CC90, qword_2D40E0);
  v33 = __chkstk_darwin(v32 - 8);
  v954 = &v877[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v934 = &v877[-v35];
  v966 = sub_2CAA00();
  v959 = *(v966 - 8);
  v36 = __chkstk_darwin(v966);
  v935 = &v877[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v919 = &v877[-v38];
  v961 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v961);
  v976 = &v877[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_20410(&qword_34E480, &qword_2D2280);
  v41 = __chkstk_darwin(v40 - 8);
  v930 = &v877[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __chkstk_darwin(v41);
  v946 = &v877[-v44];
  __chkstk_darwin(v43);
  v988 = &v877[-v45];
  v1004 = sub_2CD4C0();
  v995 = *(v1004 - 8);
  __chkstk_darwin(v1004);
  v967 = &v877[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v996 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v47 = __chkstk_darwin(v996);
  v903 = &v877[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __chkstk_darwin(v47);
  v948 = &v877[-v50];
  v51 = __chkstk_darwin(v49);
  v974 = &v877[-v52];
  v53 = __chkstk_darwin(v51);
  v981 = &v877[-v54];
  __chkstk_darwin(v53);
  v980 = &v877[-v55];
  v56 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v57 = __chkstk_darwin(v56 - 8);
  v897 = &v877[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = __chkstk_darwin(v57);
  v907 = &v877[-v60];
  v61 = __chkstk_darwin(v59);
  v970 = &v877[-v62];
  v63 = __chkstk_darwin(v61);
  v933 = &v877[-v64];
  v65 = __chkstk_darwin(v63);
  v962 = &v877[-v66];
  v67 = __chkstk_darwin(v65);
  v955 = &v877[-v68];
  v69 = __chkstk_darwin(v67);
  v942 = &v877[-v70];
  v71 = __chkstk_darwin(v69);
  v968 = &v877[-v72];
  v73 = __chkstk_darwin(v71);
  v969 = &v877[-v74];
  v75 = __chkstk_darwin(v73);
  v963 = &v877[-v76];
  v77 = __chkstk_darwin(v75);
  v978 = &v877[-v78];
  v79 = __chkstk_darwin(v77);
  v984 = &v877[-v80];
  v81 = __chkstk_darwin(v79);
  v964 = &v877[-v82];
  v83 = __chkstk_darwin(v81);
  v992 = &v877[-v84];
  __chkstk_darwin(v83);
  v986 = &v877[-v85];
  v86 = sub_20410(&qword_34D360, &qword_2D11E0);
  v87 = __chkstk_darwin(v86 - 8);
  v960 = &v877[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v87);
  v993 = &v877[-v89];
  v998 = type metadata accessor for AudioNLv3Intent(0);
  v997 = *(v998 - 8);
  v90 = __chkstk_darwin(v998);
  v956 = &v877[-((v91 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v90);
  v999 = &v877[-v92];
  v991 = sub_2C8E80();
  v990 = *(v991 - 8);
  __chkstk_darwin(v991);
  v989 = &v877[-((v93 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1013 = sub_2CDFD0();
  v1006 = *(v1013 - 1);
  __chkstk_darwin(v1013);
  v1001 = &v877[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_2CA870();
  v96 = *(v95 - 8);
  v97 = __chkstk_darwin(v95);
  v918 = &v877[-((v98 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = __chkstk_darwin(v97);
  v985 = &v877[-v100];
  v101 = __chkstk_darwin(v99);
  v950 = &v877[-v102];
  v103 = __chkstk_darwin(v101);
  v994 = &v877[-v104];
  v105 = __chkstk_darwin(v103);
  v1015 = &v877[-v106];
  v107 = __chkstk_darwin(v105);
  v1003 = &v877[-v108];
  v109 = __chkstk_darwin(v107);
  v1002 = &v877[-v110];
  v111 = __chkstk_darwin(v109);
  v1005 = &v877[-v112];
  v113 = __chkstk_darwin(v111);
  v115 = &v877[-v114];
  __chkstk_darwin(v113);
  v117 = &v877[-v116];
  v118 = sub_2CE000();
  v119 = *(v118 - 8);
  v120 = __chkstk_darwin(v118);
  v928 = &v877[-((v121 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = __chkstk_darwin(v120);
  v925 = &v877[-v123];
  v124 = __chkstk_darwin(v122);
  v894 = &v877[-v125];
  v126 = __chkstk_darwin(v124);
  v905 = &v877[-v127];
  v128 = __chkstk_darwin(v126);
  v937 = &v877[-v129];
  v130 = __chkstk_darwin(v128);
  v938 = &v877[-v131];
  v132 = __chkstk_darwin(v130);
  v926 = &v877[-v133];
  v134 = __chkstk_darwin(v132);
  v912 = &v877[-v135];
  v136 = __chkstk_darwin(v134);
  v927 = &v877[-v137];
  v138 = __chkstk_darwin(v136);
  v958 = &v877[-v139];
  v140 = __chkstk_darwin(v138);
  v909 = &v877[-v141];
  v142 = __chkstk_darwin(v140);
  v883 = &v877[-v143];
  v144 = __chkstk_darwin(v142);
  v880 = &v877[-v145];
  v146 = __chkstk_darwin(v144);
  v882 = &v877[-v147];
  v148 = __chkstk_darwin(v146);
  v881 = &v877[-v149];
  v150 = __chkstk_darwin(v148);
  v887 = &v877[-v151];
  v152 = __chkstk_darwin(v150);
  v886 = &v877[-v153];
  v154 = __chkstk_darwin(v152);
  v885 = &v877[-v155];
  v156 = __chkstk_darwin(v154);
  v884 = &v877[-v157];
  v158 = __chkstk_darwin(v156);
  v893 = &v877[-v159];
  v160 = __chkstk_darwin(v158);
  v889 = &v877[-v161];
  v162 = __chkstk_darwin(v160);
  v895 = &v877[-v163];
  v164 = __chkstk_darwin(v162);
  v904 = &v877[-v165];
  v166 = __chkstk_darwin(v164);
  v902 = &v877[-v167];
  v168 = __chkstk_darwin(v166);
  v949 = &v877[-v169];
  v170 = __chkstk_darwin(v168);
  v899 = &v877[-v171];
  v172 = __chkstk_darwin(v170);
  v924 = &v877[-v173];
  v174 = __chkstk_darwin(v172);
  v929 = &v877[-v175];
  v176 = __chkstk_darwin(v174);
  v944 = &v877[-v177];
  v178 = __chkstk_darwin(v176);
  v941 = &v877[-v179];
  v180 = __chkstk_darwin(v178);
  v892 = &v877[-v181];
  v182 = __chkstk_darwin(v180);
  v888 = &v877[-v183];
  v184 = __chkstk_darwin(v182);
  v913 = &v877[-v185];
  v186 = __chkstk_darwin(v184);
  v977 = &v877[-v187];
  v188 = __chkstk_darwin(v186);
  v979 = &v877[-v189];
  v190 = __chkstk_darwin(v188);
  v914 = &v877[-v191];
  v192 = __chkstk_darwin(v190);
  v908 = &v877[-v193];
  v194 = __chkstk_darwin(v192);
  v936 = &v877[-v195];
  v196 = __chkstk_darwin(v194);
  v916 = &v877[-v197];
  v198 = __chkstk_darwin(v196);
  v898 = &v877[-v199];
  v200 = __chkstk_darwin(v198);
  v947 = &v877[-v201];
  v202 = __chkstk_darwin(v200);
  v945 = &v877[-v203];
  v204 = __chkstk_darwin(v202);
  v957 = &v877[-v205];
  v206 = __chkstk_darwin(v204);
  v983 = &v877[-v207];
  v208 = __chkstk_darwin(v206);
  v973 = &v877[-v209];
  v210 = __chkstk_darwin(v208);
  v972 = &v877[-v211];
  v212 = __chkstk_darwin(v210);
  v971 = &v877[-v213];
  __chkstk_darwin(v212);
  v215 = &v877[-v214];
  sub_2CB680();
  sub_2CB6A0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v216 = sub_3ED0(v118, static Logger.default);
  swift_beginAccess();
  v217 = *(v119 + 16);
  v1008 = v216;
  v1010 = v119 + 16;
  v1009 = v217;
  v217(v215, v216, v118);
  v218 = *(v96 + 16);
  v218(v117, v1021, v95);
  v218(v115, v117, v95);
  v1012 = v96;
  v1000 = v115;
  v219 = *(v96 + 8);
  v219(v117, v95);
  v1011 = v215;
  v220 = sub_2CDFE0();
  v221 = sub_2CE690();
  v222 = os_log_type_enabled(v220, v221);
  v1007 = v95;
  v1018 = v96 + 8;
  v1014 = v219;
  v1020 = v118;
  v1019 = v119;
  v1017 = (v96 + 16);
  v1016 = v218;
  if (v222)
  {
    v223 = swift_slowAlloc();
    v879 = swift_slowAlloc();
    v1043[0] = v879;
    *v223 = 136446722;
    v224 = sub_2CCCC0();
    v878 = v221;
    v226 = sub_3F08(v224, v225, v1043);

    *(v223 + 4) = v226;
    *(v223 + 12) = 2082;
    sub_2CBC60();
    sub_35E0(&v1044, v1045);
    v95 = v1007;
    *&v1022 = sub_2CBE60();
    *(&v1022 + 1) = v227;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v228 = sub_2CE2A0();
    v230 = v229;
    sub_306C(&v1044);
    v231 = sub_3F08(v228, v230, v1043);

    *(v223 + 14) = v231;
    *(v223 + 22) = 2080;
    v232 = v1000;
    v218(v1005, v1000, v95);
    v233 = sub_2CE2A0();
    v235 = sub_3F08(v233, v234, v1043);

    *(v223 + 24) = v235;
    v219(v232, v95);
    _os_log_impl(&dword_0, v220, v878, "AudioFlowProvider#makeFlow %{public}s for request id: %{public}s. Received parse: %s", v223, 0x20u);
    swift_arrayDestroy();

    v236 = v1011;
    v1011 = *(v1019 + 1);
    v1011(v236, v1020);
  }

  else
  {
    v219(v1000, v95);

    v237 = v1011;
    v1011 = *(v119 + 8);
    v1011(v237, v118);
  }

  sub_2CBC60();
  sub_35E0(&v1044, v1045);
  v238 = sub_2CBE60();
  if (v239)
  {
    v240 = v238;
  }

  else
  {
    v240 = 4144959;
  }

  if (v239)
  {
    v241 = v239;
  }

  else
  {
    v241 = 0xE300000000000000;
  }

  sub_306C(&v1044);
  v242 = sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v243 = qword_35F760;
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_2D0090;
  *(v244 + 56) = &type metadata for String;
  *(v244 + 64) = sub_1087C();
  *(v244 + 32) = v240;
  *(v244 + 40) = v241;

  v245 = v1001;
  sub_2CDFC0();
  sub_2CDF90(v242, &dword_0, v243, "audioFlowDelegatePluginMakeFlowFrameEvent", 41, 2, v245, "refId=%{signpost.telemetry:string1,public}@", 43, 2, v244);

  (*(v1006 + 1))(v245, v1013);

  v1001 = sub_2CCC10();
  sub_2CCC00();
  sub_2CCBF0();

  sub_1945E4();
  sub_2CB360();
  v246 = v1002;
  v247 = v1021;
  v248 = v1016;
  v1016(v1002, v1021, v95);
  v249 = v1012;
  v1013 = v1012[11];
  v250 = (v1013)(v246, v95);
  LODWORD(v1006) = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v250 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (v249[12])(v246, v95);
    v251 = *&v246[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v252 = sub_2CAFE0();
    (*(*(v252 - 8) + 8))(v246, v252);
    v253 = sub_2CA830();
    sub_2CEAE0();
    v255 = v254;

    v256 = v1020;
    if (v255)
    {
      v257 = v1020;
    }

    else
    {
      v1000 = v251;
      v258 = v989;
      sub_2C8E70();
      v259 = sub_2C8E50();
      v261 = v260;
      (*(v990 + 8))(v258, v991);
      v262 = v971;
      v1009(v971, v1008, v256);
      swift_bridgeObjectRetain_n();
      v263 = sub_2CDFE0();
      v264 = sub_2CE690();
      v265 = os_log_type_enabled(v263, v264);
      v1002 = v261;
      if (v265)
      {
        v266 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        *&v1044 = v267;
        *v266 = 136315138;

        v268 = sub_3F08(v259, v261, &v1044);

        *(v266 + 4) = v268;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_0, v263, v264, "AudioFlowProvider#makeFlow found nil intentId, updating to: %s", v266, 0xCu);
        sub_306C(v267);
        v256 = v1020;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v269 = v262;
      v257 = v256;
      v1011(v269, v256);
      v270 = v972;
      v271 = sub_2CA830();
      v272 = [v271 _metadata];

      if (v272)
      {
        v273 = sub_2CE260();
        [v272 setIntentId:v273];
      }

      v1009(v270, v1008, v256);
      swift_retain_n();
      v274 = sub_2CDFE0();
      v275 = sub_2CE690();
      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        v1000 = swift_slowAlloc();
        *&v1022 = v1000;
        *v276 = 136446210;
        v277 = sub_2CA830();
        v278 = sub_2CEAE0();
        v280 = v279;

        *&v1044 = v278;
        *(&v1044 + 1) = v280;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v281 = sub_2CE2A0();
        v283 = sub_3F08(v281, v282, &v1022);

        *(v276 + 4) = v283;

        _os_log_impl(&dword_0, v274, v275, "AudioFlowProvider#makeFlow Updated intentId: %{public}s", v276, 0xCu);
        sub_306C(v1000);
        v284 = v1020;

        v285 = v270;
        v257 = v284;
        v286 = v284;
      }

      else
      {

        v285 = v270;
        v286 = v257;
      }

      v1011(v285, v286);
      v95 = v1007;
      v247 = v1021;
    }

    v248 = v1016;
  }

  else
  {
    v1014(v246, v95);
    v257 = v1020;
  }

  v287 = v1003;
  v248(v1003, v247, v95);
  v288 = (v1013)(v287, v95);
  if (v288 == v1006)
  {
    (v1012[12])(v287, v95);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v289 = sub_2CAFE0();
    (*(*(v289 - 8) + 8))(v287, v289);
    v290 = sub_2CA830();
    v291 = [v290 identifier];

    if (v291)
    {

      v247 = v1021;
      v248 = v1016;
      v292 = v257;
      v293 = v1015;
      v1016(v1015, v1021, v95);
    }

    else
    {
      v337 = v989;
      sub_2C8E70();
      v338 = sub_2C8E50();
      v340 = v339;
      (*(v990 + 8))(v337, v991);
      v341 = v973;
      v292 = v257;
      v1009(v973, v1008, v257);
      swift_bridgeObjectRetain_n();
      v342 = sub_2CDFE0();
      v343 = sub_2CE690();
      if (os_log_type_enabled(v342, v343))
      {
        v344 = swift_slowAlloc();
        v345 = swift_slowAlloc();
        *&v1044 = v345;
        *v344 = 136315138;

        v346 = sub_3F08(v338, v340, &v1044);
        v1003 = v338;
        v347 = v346;

        *(v344 + 4) = v347;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_0, v342, v343, "AudioFlowProvider#makeFlow found nil identifier, updating to: %s", v344, 0xCu);
        sub_306C(v345);

        v292 = v1020;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v1011(v341, v292);
      v374 = sub_2CA830();
      v375 = sub_2CE260();
      [v374 setIdentifier:v375];

      v376 = v983;
      v1009(v983, v1008, v292);
      swift_retain_n();
      v377 = sub_2CDFE0();
      v378 = sub_2CE690();
      if (os_log_type_enabled(v377, v378))
      {
        v379 = swift_slowAlloc();
        v1003 = swift_slowAlloc();
        *&v1022 = v1003;
        *v379 = 136446210;
        v380 = sub_2CA830();
        v381 = [v380 identifier];

        if (v381)
        {
          v382 = sub_2CE270();
          v384 = v383;
        }

        else
        {
          v382 = 0;
          v384 = 0;
        }

        *&v1044 = v382;
        *(&v1044 + 1) = v384;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v472 = sub_2CE2A0();
        v474 = sub_3F08(v472, v473, &v1022);

        *(v379 + 4) = v474;

        _os_log_impl(&dword_0, v377, v378, "AudioFlowProvider#makeFlow Updated identifier: %{public}s", v379, 0xCu);
        sub_306C(v1003);

        v292 = v1020;
        v1011(v983, v1020);
        v95 = v1007;
        v293 = v1015;
        v247 = v1021;
        v248 = v1016;
        v1016(v1015, v1021, v1007);
      }

      else
      {

        v1011(v376, v292);
        v95 = v1007;
        v247 = v1021;
        v248 = v1016;
        v293 = v1015;
        v1016(v1015, v1021, v1007);
      }
    }
  }

  else
  {
    v1014(v287, v95);
    v293 = v1015;
    v292 = v257;
    v248(v1015, v247, v95);
  }

  v294 = (v1013)(v293, v95);
  if (v294 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v295 = v248;
    v296 = v1005;
    v295(v1005, v247, v95);
    v297 = v993;
    sub_2B6170(v296, v993);
    if ((*(v997 + 48))(v297, 1, v998) == 1)
    {
      sub_30B8(v297, &qword_34D360, &qword_2D11E0);
      v298 = v979;
      v1009(v979, v1008, v292);
      v299 = sub_2CDFE0();
      v300 = sub_2CE680();
      if (os_log_type_enabled(v299, v300))
      {
        v301 = swift_slowAlloc();
        *v301 = 0;
        _os_log_impl(&dword_0, v299, v300, "AudioFlowProvider#makeFlow Fatal: Cannot get AudioNLv3Intent from NLv3IntentOnly parse", v301, 2u);
      }

      v1011(v298, v292);
LABEL_37:
      v302 = 0;
      goto LABEL_295;
    }

    sub_195164(v297, v999, type metadata accessor for AudioNLv3Intent);
    sub_2CCC00();
    sub_2CCBE0();

    v317 = v986;
    sub_2B7A00(v986);
    v318 = v995;
    v319 = *(v995 + 104);
    v320 = v992;
    v321 = v1004;
    v1012 = (v995 + 104);
    v1016 = v319;
    v319(v992, enum case for CommonAudio.Verb.directedAcousticId(_:), v1004);
    v322 = *(v318 + 56);
    v1017 = (v318 + 56);
    v1013 = v322;
    (v322)(v320, 0, 1, v321);
    v323 = *(v996 + 48);
    v324 = v980;
    sub_F3F4(v317, v980, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v320, &v324[v323], &qword_34D6B8, &qword_2D15B0);
    v325 = *(v318 + 48);
    if (v325(v324, 1, v321) == 1)
    {
      sub_30B8(v320, &qword_34D6B8, &qword_2D15B0);
      v326 = v1004;
      sub_30B8(v317, &qword_34D6B8, &qword_2D15B0);
      v327 = v325(&v324[v323], 1, v326);
      v328 = v981;
      v329 = v984;
      v330 = v325;
      if (v327 == 1)
      {
        sub_30B8(v324, &qword_34D6B8, &qword_2D15B0);
LABEL_79:
        v404 = v957;
        v405 = v1020;
        v1009(v957, v1008, v1020);
        v406 = sub_2CDFE0();
        v407 = sub_2CE690();
        if (os_log_type_enabled(v406, v407))
        {
          v408 = swift_slowAlloc();
          v409 = swift_slowAlloc();
          *&v1044 = v409;
          *v408 = 136446210;
          v410 = sub_2CCC80();
          v412 = sub_3F08(v410, v411, &v1044);

          *(v408 + 4) = v412;
          _os_log_impl(&dword_0, v406, v407, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning acousticID flow", v408, 0xCu);
          sub_306C(v409);
        }

        v1011(v404, v405);
        v413 = sub_2CA7B0();
        v414 = *(*(v413 - 8) + 56);
        v415 = v988;
        v414(v988, 1, 1, v413);
        swift_storeEnumTagMultiPayload();
        sub_1338FC(&v1044);
        v416 = sub_2CC610();
        v417 = sub_2CC600();
        v1024 = &protocol witness table for ShazamSessionManager;
        v1023 = v416;
        *&v1022 = v417;
        sub_2C99F0();
        v1020 = sub_1396D0();
        sub_2CA430();
        v418 = sub_2CB4A0();
        v419 = sub_2CB490();
        v1041 = &protocol witness table for SiriKitTaskLoggingProvider;
        v1040 = v418;
        *&v1039 = v419;
        v1037 = sub_2CC650();
        v1038 = &protocol witness table for SubscriptionProvider;
        sub_F390(&v1036);
        sub_2CC630();
        v1034 = sub_2CC2B0();
        v1035 = &protocol witness table for FeatureFlagProvider;
        sub_F390(&v1033);
        sub_2CC2A0();
        sub_133A2C(v1031);
        v420 = sub_F9A0(v1031, v1032);
        v1021 = v877;
        __chkstk_darwin(v420);
        v422 = &v877[-((v421 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v423 + 16))(v422);
        v424 = *v422;
        v425 = type metadata accessor for SiriAudioOutputProvider();
        v1030 = &off_337EB0;
        v1029 = v425;
        v1028[0] = v424;
        type metadata accessor for AcousticIDFlow(0);
        v426 = swift_allocObject();
        v427 = sub_F9A0(v1028, v425);
        v1019 = v877;
        __chkstk_darwin(v427);
        v429 = &v877[-((v428 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v430 + 16))(v429);
        v431 = *v429;
        v1027 = &off_337EB0;
        v1026 = v425;
        *&v1025 = v431;
        v432 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
        v414((v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input), 1, 1, v413);
        *(v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
        *(v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
        swift_beginAccess();
        sub_1952BC(v415, v426 + v432, &qword_34E480, &qword_2D2280);
        swift_endAccess();
        sub_EEAC(&v1044, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
        sub_EEAC(&v1022, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
        type metadata accessor for AcousticIdCatDialogService();
        v433 = swift_allocObject();
        v433[2] = 0xD000000000000011;
        v433[3] = 0x80000000002DA8D0;
        v433[5] = 0xD000000000000010;
        v433[6] = 0x80000000002DDBD0;
        v433[4] = v1020;
        *(v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v433;
        sub_EEAC(v1043, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
        sub_2C9C10();
        swift_allocObject();
        v434 = sub_2C9BF0();
        sub_306C(v1043);
        sub_306C(&v1022);
        sub_306C(&v1044);
        sub_30B8(v415, &qword_34E480, &qword_2D2280);
        *(v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v434;
        sub_195164(v976, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
        sub_F338(v1042, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
        sub_F338(&v1039, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
        sub_F338(&v1036, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
        sub_F338(&v1033, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
        sub_F338(&v1025, v426 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
        sub_306C(v1028);
        sub_306C(v1031);
        *&v1044 = v426;
        sub_E960(&qword_3524C8, 255, type metadata accessor for AcousticIDFlow, &unk_2D5280);
        v302 = sub_2C97B0();

        v435 = v999;
LABEL_184:
        sub_FED50(v435);
        goto LABEL_185;
      }
    }

    else
    {
      v348 = v964;
      sub_F3F4(v324, v964, &qword_34D6B8, &qword_2D15B0);
      v1006 = v325;
      v349 = v325(&v324[v323], 1, v321);
      v328 = v981;
      if (v349 != 1)
      {
        v399 = v995;
        v400 = &v324[v323];
        v401 = v967;
        (*(v995 + 32))(v967, v400, v321);
        sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        v402 = sub_2CE250();
        v403 = *(v399 + 8);
        v403(v401, v321);
        sub_30B8(v992, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v986, &qword_34D6B8, &qword_2D15B0);
        v403(v348, v1004);
        v326 = v1004;
        sub_30B8(v324, &qword_34D6B8, &qword_2D15B0);
        v329 = v984;
        v330 = v1006;
        if (v402)
        {
          goto LABEL_79;
        }

LABEL_55:
        sub_2B7A00(v329);
        v350 = v978;
        v1016(v978, enum case for CommonAudio.Verb.determine(_:), v326);
        (v1013)(v350, 0, 1, v326);
        v351 = *(v996 + 48);
        sub_F3F4(v329, v328, &qword_34D6B8, &qword_2D15B0);
        v352 = v1004;
        sub_F3F4(v350, v328 + v351, &qword_34D6B8, &qword_2D15B0);
        if (v330(v328, 1, v352) == 1)
        {
          sub_30B8(v350, &qword_34D6B8, &qword_2D15B0);
          v353 = v1004;
          sub_30B8(v329, &qword_34D6B8, &qword_2D15B0);
          if (v330(v328 + v351, 1, v353) == 1)
          {
            sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
LABEL_95:
            v456 = v945;
            v457 = v1020;
            v1009(v945, v1008, v1020);
            v458 = sub_2CDFE0();
            v459 = sub_2CE690();
            if (os_log_type_enabled(v458, v459))
            {
              v460 = swift_slowAlloc();
              v461 = swift_slowAlloc();
              *&v1044 = v461;
              *v460 = 136446210;
              v462 = sub_2CCC80();
              v464 = sub_3F08(v462, v463, &v1044);

              *(v460 + 4) = v464;
              _os_log_impl(&dword_0, v458, v459, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning Ambiguous Determine flow", v460, 0xCu);
              sub_306C(v461);
            }

            v1011(v456, v457);
            v95 = v1007;
            v465 = v999;
            v302 = sub_1386E8();
            sub_FED50(v465);
            goto LABEL_295;
          }
        }

        else
        {
          v387 = v963;
          sub_F3F4(v328, v963, &qword_34D6B8, &qword_2D15B0);
          if (v330(v328 + v351, 1, v352) != 1)
          {
            v451 = v995;
            v452 = v328 + v351;
            v453 = v967;
            (*(v995 + 32))(v967, v452, v352);
            sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v454 = sub_2CE250();
            v455 = *(v451 + 8);
            v455(v453, v352);
            sub_30B8(v978, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v984, &qword_34D6B8, &qword_2D15B0);
            v455(v963, v1004);
            v353 = v1004;
            sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
            if (v454)
            {
              goto LABEL_95;
            }

LABEL_73:
            v388 = v969;
            sub_2B7A00(v969);
            v389 = v968;
            v1016(v968, enum case for CommonAudio.Verb.like(_:), v353);
            (v1013)(v389, 0, 1, v353);
            v390 = *(v996 + 48);
            v391 = v974;
            sub_F3F4(v388, v974, &qword_34D6B8, &qword_2D15B0);
            v392 = v1004;
            sub_F3F4(v389, &v391[v390], &qword_34D6B8, &qword_2D15B0);
            if (v330(v391, 1, v392) == 1)
            {
              sub_30B8(v389, &qword_34D6B8, &qword_2D15B0);
              v393 = v974;
              v394 = v1004;
              sub_30B8(v388, &qword_34D6B8, &qword_2D15B0);
              if (v330(&v393[v390], 1, v394) == 1)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v443 = v942;
              sub_F3F4(v391, v942, &qword_34D6B8, &qword_2D15B0);
              if (v330(&v391[v390], 1, v392) != 1)
              {
                v545 = v995;
                v546 = &v391[v390];
                v547 = v967;
                (*(v995 + 32))(v967, v546, v392);
                sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
                LODWORD(v1006) = sub_2CE250();
                v548 = v443;
                v549 = *(v545 + 8);
                v549(v547, v392);
                sub_30B8(v968, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v969, &qword_34D6B8, &qword_2D15B0);
                v549(v548, v1004);
                v444 = v962;
                v394 = v1004;
                sub_30B8(v974, &qword_34D6B8, &qword_2D15B0);
                if (v1006)
                {
                  goto LABEL_181;
                }

LABEL_90:
                v445 = v955;
                sub_2B7A00(v955);
                v1016(v444, enum case for CommonAudio.Verb.unlike(_:), v394);
                v446 = v445;
                (v1013)(v444, 0, 1, v394);
                v447 = *(v996 + 48);
                v448 = v330;
                v449 = v948;
                sub_F3F4(v446, v948, &qword_34D6B8, &qword_2D15B0);
                v450 = v1004;
                sub_F3F4(v444, &v449[v447], &qword_34D6B8, &qword_2D15B0);
                if (v448(v449, 1, v450) == 1)
                {
                  sub_30B8(v444, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v446, &qword_34D6B8, &qword_2D15B0);
                  if (v448(&v449[v447], 1, v450) == 1)
                  {
                    v393 = v449;
LABEL_93:
                    sub_30B8(v393, &qword_34D6B8, &qword_2D15B0);
LABEL_181:
                    v606 = v947;
                    v607 = v1020;
                    v1009(v947, v1008, v1020);
                    v608 = sub_2CDFE0();
                    v609 = sub_2CE690();
                    if (os_log_type_enabled(v608, v609))
                    {
                      v610 = swift_slowAlloc();
                      v611 = swift_slowAlloc();
                      *&v1044 = v611;
                      *v610 = 136446210;
                      v612 = sub_2CCC80();
                      v614 = sub_3F08(v612, v613, &v1044);

                      *(v610 + 4) = v614;
                      _os_log_impl(&dword_0, v608, v609, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning UpdateMediaAffinity flow", v610, 0xCu);
                      sub_306C(v611);
                    }

                    v1011(v606, v607);
                    v615 = v999;
                    v302 = sub_192EB0(v1021);
                    v435 = v615;
                    goto LABEL_184;
                  }
                }

                else
                {
                  v505 = v933;
                  sub_F3F4(v449, v933, &qword_34D6B8, &qword_2D15B0);
                  if (v448(&v449[v447], 1, v450) != 1)
                  {
                    v601 = v995;
                    v602 = &v449[v447];
                    v603 = v967;
                    (*(v995 + 32))(v967, v602, v450);
                    sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
                    v604 = sub_2CE250();
                    v605 = *(v601 + 8);
                    v605(v603, v450);
                    sub_30B8(v962, &qword_34D6B8, &qword_2D15B0);
                    sub_30B8(v955, &qword_34D6B8, &qword_2D15B0);
                    v605(v505, v450);
                    sub_30B8(v449, &qword_34D6B8, &qword_2D15B0);
                    if (v604)
                    {
                      goto LABEL_181;
                    }

LABEL_130:
                    v506 = v999;
                    v507 = sub_2B7010();
                    v95 = v1007;
                    v508 = v1020;
                    if (v507)
                    {
                      v509 = v987;
                      sub_35E0(v987 + 12, v987[15]);
                      if (sub_2CC420())
                      {
                        sub_35E0(v509 + 12, v509[15]);
                        if (sub_2CC3F0())
                        {
                          v510 = v898;
                          v1009(v898, v1008, v508);
                          v511 = sub_2CDFE0();
                          v512 = sub_2CE690();
                          if (os_log_type_enabled(v511, v512))
                          {
                            v513 = swift_slowAlloc();
                            v514 = swift_slowAlloc();
                            *&v1044 = v514;
                            *v513 = 136446210;
                            v515 = sub_2CCC80();
                            v517 = sub_3F08(v515, v516, &v1044);

                            *(v513 + 4) = v517;
                            v95 = v1007;
                            _os_log_impl(&dword_0, v511, v512, "AudioFlowDelegatePlugin#makeFlow %{public}s Intent is ambiguous shuffle, pushing AmbiguousShuffleFlow", v513, 0xCu);
                            sub_306C(v514);
                          }

                          v1011(v510, v508);
                          v783 = v999;
                          v784 = sub_13913C();
                          v302 = sub_137D70(v784);

                          sub_FED50(v783);
                          goto LABEL_295;
                        }
                      }

                      v616 = v916;
                      v1009(v916, v1008, v508);
                      v617 = sub_2CDFE0();
                      v618 = sub_2CE690();
                      if (os_log_type_enabled(v617, v618))
                      {
                        v619 = swift_slowAlloc();
                        *v619 = 0;
                        _os_log_impl(&dword_0, v617, v618, "AudioFlowDelegatePlugin#makeFlow Intent is ambiguous shuffle, but Siri X flag(s) are disabled. Continuing...", v619, 2u);
                      }

                      v1011(v616, v508);
                      v506 = v999;
                    }

                    sub_E960(&qword_34F600, 255, type metadata accessor for AudioNLv3Intent, &unk_2D9460);
                    if (sub_2CD980())
                    {
                      v1009(v936, v1008, v508);
                      v620 = sub_2CDFE0();
                      v621 = sub_2CE690();
                      if (os_log_type_enabled(v620, v621))
                      {
                        v622 = swift_slowAlloc();
                        *v622 = 0;
                        _os_log_impl(&dword_0, v620, v621, "AudioFlowDelegatePlugin#makeFlow#NLv3IntentOnly This is an AirPlay request without an app name, returning first audio play flow", v622, 2u);
                      }

                      v1011(v936, v508);
                      v623 = sub_2CA7B0();
                      v624 = v988;
                      (*(*(v623 - 8) + 56))(v988, 1, 1, v623);
                      v302 = sub_1362C8(v624);
                      sub_30B8(v624, &qword_34E480, &qword_2D2280);
                    }

                    else
                    {
                      sub_18F290(&v1044);
                      sub_35E0(&v1044, v1045);
                      v302 = sub_2CDC70();
                      sub_306C(&v1044);
                      if (!v302)
                      {
                        v692 = v1020;
                        v1009(v914, v1008, v1020);
                        v693 = sub_2CDFE0();
                        v694 = sub_2CE680();
                        if (os_log_type_enabled(v693, v694))
                        {
                          v695 = swift_slowAlloc();
                          *v695 = 0;
                          _os_log_impl(&dword_0, v693, v694, "AudioFlowDelegatePlugin#makeFlow Unable to get controls flow for parse", v695, 2u);
                        }

                        v1011(v914, v692);
                        sub_2CC230();
                        sub_2CC1E0();
                        sub_FED50(v506);
                        goto LABEL_37;
                      }

                      v625 = v908;
                      v626 = v1020;
                      v1009(v908, v1008, v1020);
                      v627 = sub_2CDFE0();
                      v628 = sub_2CE690();
                      if (os_log_type_enabled(v627, v628))
                      {
                        v629 = swift_slowAlloc();
                        v630 = swift_slowAlloc();
                        *&v1044 = v630;
                        *v629 = 136446210;
                        v631 = sub_2CCC80();
                        v633 = v506;
                        v634 = sub_3F08(v631, v632, &v1044);
                        v95 = v1007;

                        *(v629 + 4) = v634;
                        _os_log_impl(&dword_0, v627, v628, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning controls frame from audio plugin", v629, 0xCu);
                        sub_306C(v630);

                        v1011(v625, v1020);
                        sub_FED50(v633);
                        goto LABEL_295;
                      }

                      v1011(v625, v626);
                    }

                    sub_FED50(v506);
                    goto LABEL_295;
                  }

                  sub_30B8(v962, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v446, &qword_34D6B8, &qword_2D15B0);
                  (*(v995 + 8))(v505, v450);
                }

                sub_30B8(v449, &qword_34D6B0, &unk_2D4FC0);
                goto LABEL_130;
              }

              sub_30B8(v968, &qword_34D6B8, &qword_2D15B0);
              v393 = v974;
              v394 = v1004;
              sub_30B8(v969, &qword_34D6B8, &qword_2D15B0);
              (*(v995 + 8))(v443, v394);
            }

            sub_30B8(v393, &qword_34D6B0, &unk_2D4FC0);
            v444 = v962;
            goto LABEL_90;
          }

          sub_30B8(v978, &qword_34D6B8, &qword_2D15B0);
          v353 = v1004;
          sub_30B8(v329, &qword_34D6B8, &qword_2D15B0);
          (*(v995 + 8))(v387, v353);
        }

        sub_30B8(v328, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_73;
      }

      sub_30B8(v992, &qword_34D6B8, &qword_2D15B0);
      v326 = v1004;
      sub_30B8(v317, &qword_34D6B8, &qword_2D15B0);
      (*(v995 + 8))(v348, v326);
      v329 = v984;
      v330 = v1006;
    }

    sub_30B8(v324, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_55;
  }

  v303 = v1019;
  if (v294 == v1006)
  {
    v304 = v248;
    v305 = v994;
    v304(v994, v293, v95);
    (v1012[12])(v305, v95);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v306 = sub_2CA830();
    objc_opt_self();
    v307 = swift_dynamicCastObjCClass();
    v1013 = v306;
    if (v307)
    {
      v308 = v977;
      v1009(v977, v1008, v292);
      swift_retain_n();
      v309 = sub_2CDFE0();
      v310 = sub_2CE690();
      if (os_log_type_enabled(v309, v310))
      {
        v311 = swift_slowAlloc();
        v312 = swift_slowAlloc();
        *&v1022 = v312;
        *v311 = 136446210;
        v313 = sub_2CA830();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v314 = sub_2CE770();
          v316 = v315;
        }

        else
        {

          v314 = 0;
          v316 = 0;
        }

        *&v1044 = v314;
        *(&v1044 + 1) = v316;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v518 = sub_2CE2A0();
        v520 = sub_3F08(v518, v519, &v1022);

        *(v311 + 4) = v520;

        _os_log_impl(&dword_0, v309, v310, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INPlayMediaIntent: %{public}s", v311, 0xCu);
        sub_306C(v312);

        v385 = v977;
        v386 = v1020;
      }

      else
      {

        v385 = v308;
        v386 = v292;
      }

      v1011(v385, v386);
      v521 = v970;
      v522 = sub_2CA830();
      objc_opt_self();
      v523 = swift_dynamicCastObjCClass();
      if (!v523)
      {

        v531 = sub_2CA7B0();
        v532 = v988;
        (*(*(v531 - 8) + 56))(v988, 1, 1, v531);
        v302 = sub_1362C8(v532);
        sub_30B8(v532, &qword_34E480, &qword_2D2280);

        v533 = sub_2CAFE0();
        (*(*(v533 - 8) + 8))(v994, v533);
LABEL_185:
        v95 = v1007;
        goto LABEL_295;
      }

      *&v1044 = v523;
      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      sub_2CC190();
      sub_2CCC00();
      sub_2CCBE0();

      v524 = v1005;
      v1016(v1005, v1021, v1007);
      v525 = v960;
      sub_2B6170(v524, v960);
      if ((*(v997 + 48))(v525, 1, v998) == 1)
      {
        sub_30B8(v525, &qword_34D360, &qword_2D11E0);
        v526 = v941;
        v527 = v1020;
        v1009(v941, v1008, v1020);
        v528 = sub_2CDFE0();
        v529 = sub_2CE680();
        if (os_log_type_enabled(v528, v529))
        {
          v530 = swift_slowAlloc();
          *v530 = 0;
          _os_log_impl(&dword_0, v528, v529, "AudioFlowProvider#makeFlow Fatal: Cannot get AudioNLv3Intent from NLv3IntentPlusServerConversion parse", v530, 2u);
          v527 = v1020;
        }

        else
        {
        }

        v1011(v526, v527);
        v550 = sub_2CAFE0();
        (*(*(v550 - 8) + 8))(v994, v550);
        v302 = 0;
        goto LABEL_294;
      }

      v534 = v525;
      v535 = v956;
      sub_195164(v534, v956, type metadata accessor for AudioNLv3Intent);
      sub_1D04A0();
      v536 = v1020;
      if (v537)
      {
        v538 = v1007;
        v1016(v1005, v1021, v1007);
        v539 = v988;
        sub_2CA7A0();
        v540 = sub_2CA7B0();
        (*(*(v540 - 8) + 56))(v539, 0, 1, v540);
        v302 = sub_138BA8(v539);
        v95 = v538;

        sub_30B8(v539, &qword_34E480, &qword_2D2280);
        sub_FED50(v535);
        v541 = sub_2CAFE0();
        (*(*(v541 - 8) + 8))(v994, v541);
        goto LABEL_295;
      }

      sub_E960(&qword_34F600, 255, type metadata accessor for AudioNLv3Intent, &unk_2D9460);
      if (sub_2CD980())
      {
        v551 = v913;
        v1009(v913, v1008, v536);
        v552 = sub_2CDFE0();
        v553 = sub_2CE690();
        if (os_log_type_enabled(v552, v553))
        {
          v554 = swift_slowAlloc();
          *v554 = 0;
          _os_log_impl(&dword_0, v552, v553, "AudioFlowDelegatePlugin#makeFlow#NLv3IntentPlusServerConversion This is an AirPlay request without an app name, returning first audio play flow", v554, 2u);
          v536 = v1020;
        }

LABEL_154:

        v1011(v551, v536);
LABEL_291:
        v754 = sub_2CA7B0();
        v755 = v988;
        (*(*(v754 - 8) + 56))(v988, 1, 1, v754);
        v302 = sub_1362C8(v755);
        sub_30B8(v755, &qword_34E480, &qword_2D2280);

        v756 = v956;
LABEL_292:
        sub_FED50(v756);
LABEL_293:
        v757 = sub_2CAFE0();
        (*(*(v757 - 8) + 8))(v994, v757);
        goto LABEL_294;
      }

      if ((sub_2CE7C0() & 1) == 0)
      {
        goto LABEL_291;
      }

      sub_2B7A00(v521);
      v641 = v995;
      v642 = v907;
      v643 = v1004;
      (*(v995 + 104))(v907, enum case for CommonAudio.Verb.shuffle(_:), v1004);
      (*(v641 + 56))(v642, 0, 1, v643);
      v644 = *(v996 + 48);
      v645 = v903;
      sub_F3F4(v521, v903, &qword_34D6B8, &qword_2D15B0);
      v1021 = v644;
      sub_F3F4(v642, &v644[v645], &qword_34D6B8, &qword_2D15B0);
      v646 = *(v641 + 48);
      v647 = v643;
      if (v646(v645, 1, v643) == 1)
      {
        sub_30B8(v642, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v521, &qword_34D6B8, &qword_2D15B0);
        if (v646(&v1021[v645], 1, v643) == 1)
        {
          sub_30B8(v645, &qword_34D6B8, &qword_2D15B0);
LABEL_307:
          v797 = v987;
          sub_35E0(v987 + 12, v987[15]);
          if (sub_2CC420())
          {
            sub_35E0(v797 + 12, v797[15]);
            if (sub_2CC3F0())
            {
              v798 = v888;
              v799 = v1020;
              v1009(v888, v1008, v1020);
              v800 = sub_2CDFE0();
              v801 = sub_2CE690();
              if (os_log_type_enabled(v800, v801))
              {
                v802 = swift_slowAlloc();
                v1021 = swift_slowAlloc();
                *&v1044 = v1021;
                *v802 = 136446210;
                v803 = sub_2CCC80();
                v805 = v522;
                v806 = sub_3F08(v803, v804, &v1044);

                *(v802 + 4) = v806;
                v522 = v805;
                _os_log_impl(&dword_0, v800, v801, "AudioFlowDelegatePlugin#makeFlow %{public}s Intent is ambiguous shuffle, pushing AmbiguousShuffleFlow", v802, 0xCu);
                sub_306C(v1021);

                v807 = v798;
                v808 = v1020;
              }

              else
              {

                v807 = v798;
                v808 = v799;
              }

              v1011(v807, v808);
              v833 = v956;
              v834 = sub_13913C();
              v302 = sub_137D70(v834);

              v756 = v833;
              goto LABEL_292;
            }
          }

          v551 = v892;
          v536 = v1020;
          v1009(v892, v1008, v1020);
          v552 = sub_2CDFE0();
          v809 = sub_2CE690();
          if (os_log_type_enabled(v552, v809))
          {
            v810 = swift_slowAlloc();
            *v810 = 0;
            _os_log_impl(&dword_0, v552, v809, "AudioFlowDelegatePlugin#makeFlow Intent is ambiguous shuffle, but Siri X flag(s) are disabled. Handling as play...", v810, 2u);
            v536 = v1020;
          }

          goto LABEL_154;
        }
      }

      else
      {
        v753 = v897;
        sub_F3F4(v645, v897, &qword_34D6B8, &qword_2D15B0);
        if (v646(&v1021[v645], 1, v647) != 1)
        {
          v794 = v995;
          v795 = v967;
          (*(v995 + 32))(v967, &v1021[v645], v647);
          sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
          LODWORD(v1021) = sub_2CE250();
          v796 = *(v794 + 8);
          v796(v795, v647);
          sub_30B8(v907, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v521, &qword_34D6B8, &qword_2D15B0);
          v796(v897, v647);
          sub_30B8(v645, &qword_34D6B8, &qword_2D15B0);
          if ((v1021 & 1) == 0)
          {
            goto LABEL_291;
          }

          goto LABEL_307;
        }

        sub_30B8(v907, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v521, &qword_34D6B8, &qword_2D15B0);
        (*(v995 + 8))(v753, v647);
      }

      sub_30B8(v645, &qword_34D6B0, &unk_2D4FC0);
      goto LABEL_291;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v368 = v944;
      v1009(v944, v1008, v292);

      v369 = sub_2CDFE0();
      v370 = sub_2CE690();
      if (os_log_type_enabled(v369, v370))
      {
        v371 = swift_slowAlloc();
        v372 = swift_slowAlloc();
        *v371 = 138543362;
        v373 = sub_2CA830();
        *(v371 + 4) = v373;
        *v372 = v373;

        _os_log_impl(&dword_0, v369, v370, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INAddMediaIntent: %{public}@", v371, 0xCu);
        sub_30B8(v372, &unk_34FC00, &unk_2D0150);

        v292 = v1020;
      }

      else
      {
      }

      v1011(v368, v292);
      v542 = sub_2CA830();
      objc_opt_self();
      v543 = swift_dynamicCastObjCClass();
      v544 = v543;
      if (v543)
      {
        *&v1044 = v543;
        sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
        sub_2CC190();
      }

      else
      {
      }

      sub_2CCC00();
      sub_2CCBE0();

      v555 = v1021;
      v556 = v1007;
      v1016(v1005, v1021, v1007);
      v557 = v946;
      sub_2CA7A0();
      v558 = sub_2CA7B0();
      (*(*(v558 - 8) + 56))(v557, 0, 1, v558);
      v559 = v544;
      v560 = sub_1927D0(v555);
LABEL_222:
      v669 = v560;
      sub_2CA430();
      v302 = sub_193714(v557, &v1044, v544, v669);
      v95 = v556;

      sub_306C(&v1044);
      sub_30B8(v557, &qword_34E480, &qword_2D2280);
      v670 = sub_2CAFE0();
      (*(*(v670 - 8) + 8))(v994, v670);
      goto LABEL_295;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v466 = v929;
      v1009(v929, v1008, v292);

      v467 = sub_2CDFE0();
      v468 = sub_2CE690();
      if (os_log_type_enabled(v467, v468))
      {
        v469 = swift_slowAlloc();
        v470 = swift_slowAlloc();
        *v469 = 138543362;
        v471 = sub_2CA830();
        *(v469 + 4) = v471;
        *v470 = v471;

        _os_log_impl(&dword_0, v467, v468, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INUpdateMediaAffinityIntent: %{public}@", v469, 0xCu);
        sub_30B8(v470, &unk_34FC00, &unk_2D0150);

        v292 = v1020;
      }

      else
      {
      }

      v1011(v466, v292);
      v662 = sub_2CA830();
      objc_opt_self();
      v663 = swift_dynamicCastObjCClass();
      v544 = v663;
      if (v663)
      {
        *&v1044 = v663;
        sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        sub_2CC190();
      }

      else
      {
      }

      sub_2CCC00();
      sub_2CCBE0();

      v667 = v1021;
      v556 = v1007;
      v1016(v1005, v1021, v1007);
      v557 = v930;
      sub_2CA7A0();
      v668 = sub_2CA7B0();
      (*(*(v668 - 8) + 56))(v557, 0, 1, v668);
      v559 = v544;
      v560 = sub_192B40(v667);
      goto LABEL_222;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v635 = v306;
      v1009(v924, v1008, v292);

      v636 = sub_2CDFE0();
      v637 = sub_2CE690();
      if (os_log_type_enabled(v636, v637))
      {
        v638 = swift_slowAlloc();
        v639 = swift_slowAlloc();
        *v638 = 138543362;
        v640 = sub_2CA830();
        *(v638 + 4) = v640;
        *v639 = v640;

        _os_log_impl(&dword_0, v636, v637, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INSearchForMediaIntent: %{public}@", v638, 0xCu);
        sub_30B8(v639, &unk_34FC00, &unk_2D0150);

        v292 = v1020;
      }

      else
      {
      }

      v1011(v924, v292);
      v720 = sub_2CA830();
      objc_opt_self();
      v721 = swift_dynamicCastObjCClass();
      if (v721)
      {
        *&v1044 = v721;
        sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
        sub_2CC190();
        sub_2CCC00();
        sub_2CCBE0();
      }

      sub_20410(&qword_352470, &qword_2D4D68);
      if (qword_34BFE8 != -1)
      {
        swift_once();
      }

      *&v1044 = qword_35F7D0;
      v722 = qword_34BFF0;

      if (v722 != -1)
      {
        swift_once();
      }

      *&v1044 = sub_2CA8B0();
      sub_72068(&qword_352478, &qword_352470, &qword_2D4D68, &protocol conformance descriptor for RCHFlow<A>);
      v302 = sub_2C97B0();

      goto LABEL_293;
    }

    v715 = v899;
    v1009(v899, v1008, v292);
    v716 = sub_2CDFE0();
    v717 = sub_2CE680();
    if (os_log_type_enabled(v716, v717))
    {
      v718 = swift_slowAlloc();
      *v718 = 0;
      _os_log_impl(&dword_0, v716, v717, "AudioFlowDelegatePlugin#makeFlow Unexpected intent", v718, 2u);
    }

    v1011(v715, v292);
    sub_2CC230();
    sub_2CC1E0();

    v719 = sub_2CAFE0();
    (*(*(v719 - 8) + 8))(v994, v719);
LABEL_257:
    v302 = 0;
    goto LABEL_185;
  }

  if (v294 == enum case for Parse.directInvocation(_:))
  {
    v331 = v248;
    v332 = v985;
    v331(v985, v293, v95);
    (v1012[12])(v332, v95);
    v333 = *(v982 + 16);
    v334 = v965;
    v335 = v975;
    v333(v965, v332, v975);
    if (sub_2CA7F0() == 0xD000000000000033 && 0x80000000002DE4F0 == v336)
    {

LABEL_77:
      v396 = sub_2CA7B0();
      v397 = v988;
      (*(*(v396 - 8) + 56))(v988, 1, 1, v396);
      v302 = sub_1362C8(v397);
      sub_30B8(v397, &qword_34E480, &qword_2D2280);
      v398 = *(v982 + 8);
      v398(v334, v335);
      v398(v985, v335);
LABEL_294:
      v95 = v1007;
      goto LABEL_295;
    }

    v395 = sub_2CEEA0();

    if (v395)
    {
      goto LABEL_77;
    }

    v475 = *(v982 + 8);
    v1013 = (v982 + 8);
    (v475)(v334, v335);
    v476 = v940;
    v333(v940, v985, v335);
    if (sub_2CA7F0() == 0xD00000000000002CLL && 0x80000000002DA380 == v477)
    {

LABEL_171:
      v576 = v937;
      v1009(v937, v1008, v1020);
      v577 = v931;
      v578 = v975;
      v333(v931, v476, v975);
      v579 = v932;
      v333(v932, v577, v578);
      (v475)(v577, v578);
      v580 = sub_2CDFE0();
      v581 = sub_2CE690();
      if (os_log_type_enabled(v580, v581))
      {
        v582 = swift_slowAlloc();
        v1012 = v475;
        v583 = v582;
        v584 = swift_slowAlloc();
        *&v1044 = v584;
        *v583 = 136446210;
        v333(v917, v579, v578);
        v476 = v940;
        v585 = sub_2CE2A0();
        v587 = sub_3F08(v585, v586, &v1044);

        *(v583 + 4) = v587;
        v588 = v578;
        v589 = v1012;
        (v1012)(v579, v588);
        _os_log_impl(&dword_0, v580, v581, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlow for invocation: %{public}s", v583, 0xCu);
        sub_306C(v584);

        v1011(v937, v1020);
        v95 = v1007;
        v475 = v589;
      }

      else
      {
        (v475)(v579, v578);

        v1011(v576, v1020);
        v95 = v1007;
      }

      sub_238E4C(v476, &v1044);
      sub_2CA430();
      v648 = type metadata accessor for AudioFlowProvider();
      v649 = swift_allocObject();
      v1043[3] = v648;
      v1043[4] = &off_3367A0;
      v1043[0] = v649;
      if (qword_34C030 != -1)
      {
        swift_once();
      }

      v650 = static PlayMedia.flowStrategy;

      v651 = sub_F4B0();
      v652 = sub_F9A0(v1043, v648);
      __chkstk_darwin(v652);
      v654 = &v877[-((v653 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v655 + 16))(v654);
      v656 = sub_FB74(&v1044, &v1022, *v654, v650, v651);
      sub_306C(v1043);
      *&v1022 = v656;
      type metadata accessor for DirectActionAudioSearchFlow(0);
      sub_E960(&qword_3538B0, 255, type metadata accessor for DirectActionAudioSearchFlow, &unk_2D63E0);
      v302 = sub_2C97B0();

      v657 = v975;
      (v475)(v476, v975);
      (v475)(v985, v657);
      goto LABEL_295;
    }

    v575 = sub_2CEEA0();

    if (v575)
    {
      goto LABEL_171;
    }

    v671 = v975;
    (v475)(v476, v975);
    v672 = v915;
    v333(v915, v985, v671);
    if (sub_2CA7F0() == 0xD000000000000030 && 0x80000000002DE530 == v673)
    {

LABEL_267:
      v724 = v905;
      v1009(v905, v1008, v1020);
      v725 = v900;
      v726 = v975;
      v333(v900, v672, v975);
      v727 = v906;
      v333(v906, v725, v726);
      v728 = v726;
      v729 = v475;
      (v475)(v725, v726);
      v730 = sub_2CDFE0();
      v731 = sub_2CE690();
      v732 = os_log_type_enabled(v730, v731);
      v1012 = v475;
      if (v732)
      {
        v733 = v727;
        v734 = swift_slowAlloc();
        v1021 = swift_slowAlloc();
        *&v1044 = v1021;
        *v734 = 136446210;
        v333(v917, v733, v728);
        v735 = sub_2CE2A0();
        v737 = sub_3F08(v735, v736, &v1044);

        *(v734 + 4) = v737;
        v729(v906, v728);
        _os_log_impl(&dword_0, v730, v731, "AudioFlowDelegatePlugin#makeFlow Got Acoustic ID reformation from appLaunch: %{public}s", v734, 0xCu);
        sub_306C(v1021);

        v738 = v905;
      }

      else
      {
        (v475)(v727, v728);

        v738 = v724;
      }

      v1011(v738, v1020);
      v759 = sub_2CA7B0();
      v760 = *(*(v759 - 8) + 56);
      v761 = v988;
      v760(v988, 1, 1, v759);
      swift_storeEnumTagMultiPayload();
      sub_1338FC(&v1044);
      v762 = sub_2CC610();
      v763 = sub_2CC600();
      v1024 = &protocol witness table for ShazamSessionManager;
      v1023 = v762;
      *&v1022 = v763;
      sub_2C99F0();
      v1020 = sub_1396D0();
      sub_2CA430();
      v764 = sub_2CB4A0();
      v765 = sub_2CB490();
      v1041 = &protocol witness table for SiriKitTaskLoggingProvider;
      v1040 = v764;
      *&v1039 = v765;
      v1037 = sub_2CC650();
      v1038 = &protocol witness table for SubscriptionProvider;
      sub_F390(&v1036);
      sub_2CC630();
      v1034 = sub_2CC2B0();
      v1035 = &protocol witness table for FeatureFlagProvider;
      sub_F390(&v1033);
      sub_2CC2A0();
      sub_133A2C(v1031);
      v766 = sub_F9A0(v1031, v1032);
      v1021 = v877;
      __chkstk_darwin(v766);
      v768 = &v877[-((v767 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v769 + 16))(v768);
      v770 = *v768;
      v771 = type metadata accessor for SiriAudioOutputProvider();
      v1030 = &off_337EB0;
      v1029 = v771;
      v1028[0] = v770;
      type metadata accessor for AcousticIDFlow(0);
      v772 = swift_allocObject();
      v773 = sub_F9A0(v1028, v771);
      v1019 = v877;
      __chkstk_darwin(v773);
      v775 = &v877[-((v774 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v776 + 16))(v775);
      v777 = *v775;
      v1027 = &off_337EB0;
      v1026 = v771;
      *&v1025 = v777;
      v778 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
      v760((v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input), 1, 1, v759);
      *(v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
      *(v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
      swift_beginAccess();
      sub_1952BC(v761, v772 + v778, &qword_34E480, &qword_2D2280);
      swift_endAccess();
      sub_EEAC(&v1044, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
      sub_EEAC(&v1022, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
      type metadata accessor for AcousticIdCatDialogService();
      v779 = swift_allocObject();
      v779[2] = 0xD000000000000011;
      v779[3] = 0x80000000002DA8D0;
      v779[5] = 0xD000000000000010;
      v779[6] = 0x80000000002DDBD0;
      v779[4] = v1020;
      *(v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v779;
      sub_EEAC(v1043, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
      sub_2C9C10();
      swift_allocObject();
      v780 = sub_2C9BF0();
      sub_306C(v1043);
      sub_306C(&v1022);
      sub_306C(&v1044);
      sub_30B8(v761, &qword_34E480, &qword_2D2280);
      *(v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v780;
      sub_195164(v976, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
      sub_F338(v1042, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
      sub_F338(&v1039, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
      sub_F338(&v1036, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
      sub_F338(&v1033, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
      sub_F338(&v1025, v772 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
      sub_306C(v1028);
      sub_306C(v1031);
      *&v1044 = v772;
      sub_E960(&qword_3524C8, 255, type metadata accessor for AcousticIDFlow, &unk_2D5280);
      v302 = sub_2C97B0();

      v781 = v975;
      v782 = v1012;
      (v1012)(v915, v975);
      v782(v985, v781);
      goto LABEL_185;
    }

    v723 = sub_2CEEA0();

    if (v723)
    {
      goto LABEL_267;
    }

    v790 = v975;
    (v475)(v672, v975);
    v791 = v896;
    (*(v982 + 32))(v896, v985, v790);
    if (sub_2CA7F0() == 0xD000000000000029 && 0x80000000002DE570 == v792)
    {

      v793 = v894;
LABEL_315:
      v1009(v793, v1008, v1020);
      v812 = v890;
      v813 = v791;
      v814 = v975;
      v333(v890, v813, v975);
      v815 = v891;
      v333(v891, v812, v814);
      (v475)(v812, v814);
      v816 = sub_2CDFE0();
      v817 = sub_2CE690();
      if (os_log_type_enabled(v816, v817))
      {
        v818 = swift_slowAlloc();
        v1012 = v475;
        v819 = v818;
        v820 = swift_slowAlloc();
        *&v1044 = v820;
        *v819 = 136446210;
        v333(v917, v815, v814);
        v821 = sub_2CE2A0();
        v823 = sub_3F08(v821, v822, &v1044);

        *(v819 + 4) = v823;
        v824 = v815;
        v825 = v1012;
        (v1012)(v824, v814);
        _os_log_impl(&dword_0, v816, v817, "AudioFlowDelegatePlugin#makeFlow Got PlayMediaShim invocation: %{public}s", v819, 0xCu);
        sub_306C(v820);

        v1011(v894, v1020);
        v475 = v825;
      }

      else
      {
        (v475)(v815, v814);

        v1011(v793, v1020);
      }

      v95 = v1007;
      v1016(v1005, v1021, v1007);
      v826 = v988;
      sub_2CA7A0();
      v827 = sub_2CA7B0();
      (*(*(v827 - 8) + 56))(v826, 0, 1, v827);
      v828 = sub_1362C8(v826);
      sub_30B8(v826, &qword_34E480, &qword_2D2280);
      *&v1044 = v828;
      sub_2C95D0();
      v302 = sub_2C97B0();

      (v475)(v896, v814);
      goto LABEL_295;
    }

    v811 = sub_2CEEA0();

    v793 = v894;
    if (v811)
    {
      goto LABEL_315;
    }

    (v475)(v791, v975);
    v95 = v1007;
    v292 = v1020;
    goto LABEL_270;
  }

  if (v294 == enum case for Parse.pommesResponse(_:))
  {
    v354 = v950;
    v248(v950, v293, v95);
    (v1012[12])(v354, v95);
    v355 = *v354;
    v356 = v958;
    v1009(v958, v1008, v292);
    v357 = v292;
    v358 = v355;
    v359 = sub_2CDFE0();
    v360 = sub_2CE690();
    if (os_log_type_enabled(v359, v360))
    {
      v361 = swift_slowAlloc();
      v362 = swift_slowAlloc();
      *&v1044 = v362;
      *v361 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v363 = sub_2CE420();
      v365 = v364;

      v366 = sub_3F08(v363, v365, &v1044);

      *(v361 + 4) = v366;

      _os_log_impl(&dword_0, v359, v360, "AudioFlowDelegatePlugin#makeFlow Received .pommesResponse parse: %s", v361, 0xCu);
      sub_306C(v362);
      v95 = v1007;

      v367 = v958;
    }

    else
    {

      v367 = v356;
    }

    v1011(v367, v357);
    v478 = v966;
    sub_35E0(v987 + 17, v987[20]);
    sub_2CB4F0();
    v479 = sub_2CDAF0();
    v480 = v952;
    v481 = v951;
    v482 = v953;
    (*(v952 + 104))(v951, enum case for WarmupComponent.audioPluginWarmup(_:), v953);
    v483 = sub_195470(v481, v479);

    (*(v480 + 8))(v481, v482);
    if (!v483)
    {
      sub_2CBC60();
      sub_35E0(&v1044, v1045);
      v484 = sub_2CBE60();
      if (v485)
      {
        v486 = v484;
      }

      else
      {
        v486 = 0;
      }

      if (v485)
      {
        v487 = v485;
      }

      else
      {
        v487 = 0xE000000000000000;
      }

      sub_306C(&v1044);
      sub_18F568(v486, v487);
    }

    sub_2CCC00();
    sub_2CCBE0();

    v488 = v954;
    v489 = v1021;
    sub_2CA7E0();
    v490 = v959;
    if ((*(v959 + 48))(v488, 1, v478) == 1)
    {
      sub_30B8(v488, &qword_34CC90, qword_2D40E0);
    }

    else
    {
      v497 = v935;
      (*(v490 + 32))(v935, v488, v478);
      sub_2CCC00();
      sub_2CCBC0();

      (*(v490 + 8))(v497, v478);
    }

    v498 = v1020;
    sub_D2F98(v489, &v1022);
    if (v1023)
    {
      sub_420A4(&v1022, &v1044);
      sub_35E0(&v1044, v1045);
      if (sub_2CD980())
      {
        v499 = v927;
        v1009(v927, v1008, v498);
        v500 = sub_2CDFE0();
        v501 = sub_2CE690();
        if (os_log_type_enabled(v500, v501))
        {
          v502 = swift_slowAlloc();
          *v502 = 0;
          _os_log_impl(&dword_0, v500, v501, "AudioFlowDelegatePlugin#makeFlow#pommesResponse This is an AirPlay request without an app name, returning first audio play flow", v502, 2u);
        }

        v1011(v499, v498);
        v503 = sub_2CA7B0();
        v504 = v988;
        (*(*(v503 - 8) + 56))(v988, 1, 1, v503);
        v302 = sub_1362C8(v504);
        sub_30B8(v504, &qword_34E480, &qword_2D2280);
LABEL_218:

LABEL_219:
        sub_306C(&v1044);
        goto LABEL_295;
      }

      sub_306C(&v1044);
    }

    else
    {
      sub_30B8(&v1022, &qword_34CF98, &unk_2D1A40);
    }

    v561 = sub_2CA7C0();
    v562 = v938;
    if (v561)
    {
      if (sub_435A0() || (sub_43C3C() & 1) != 0 || (sub_43638() & 1) != 0)
      {
        sub_35E0(v987 + 12, v987[15]);
        if (sub_2CC420())
        {
          sub_35E0(v987 + 12, v987[15]);
          if (sub_2CC3F0())
          {
            v563 = v1020;
            v1009(v912, v1008, v1020);
            v564 = sub_2CDFE0();
            v565 = sub_2CE690();
            if (os_log_type_enabled(v564, v565))
            {
              v566 = swift_slowAlloc();
              *v566 = 0;
              _os_log_impl(&dword_0, v564, v565, "AudioFlowDelegatePlugin#makeFlow Returning AmbiguousShuffleFlow", v566, 2u);
              v563 = v1020;
            }

            v1011(v912, v563);
            sub_35E0(v987 + 2, v987[5]);
            sub_133EE4(&v1044);
            sub_35E0(&v1044, v1045);
            v567 = sub_2C97B0();
            v302 = sub_137D70(v567);

            sub_306C(&v1044);
            goto LABEL_295;
          }
        }

        v568 = v926;
        v498 = v1020;
        v1009(v926, v1008, v1020);
        v569 = sub_2CDFE0();
        v570 = sub_2CE690();
        if (os_log_type_enabled(v569, v570))
        {
          v571 = swift_slowAlloc();
          *v571 = 0;
          _os_log_impl(&dword_0, v569, v570, "AudioFlowDelegatePlugin#makeFlow Task is shuffle::MediaItem parse, but Siri X flag(s) are disabled. Falling through to PommesResponseFlow...", v571, 2u);
          v572 = v1020;

          v573 = v568;
          v498 = v572;
          v574 = v572;
        }

        else
        {

          v573 = v568;
          v574 = v498;
        }

        v1011(v573, v574);
      }

      else
      {
      }
    }

    v1009(v562, v1008, v498);
    v664 = sub_2CDFE0();
    v665 = sub_2CE690();
    if (os_log_type_enabled(v664, v665))
    {
      v666 = swift_slowAlloc();
      *v666 = 0;
      _os_log_impl(&dword_0, v664, v665, "AudioFlowDelegatePlugin#makeFlow Returning PommesResponseFlow", v666, 2u);
    }

    v1011(v562, v498);
    sub_35E0(v987 + 2, v987[5]);
    sub_133EE4(&v1044);
    sub_35E0(&v1044, v1045);
    v302 = sub_2C97B0();
    goto LABEL_218;
  }

  v436 = v966;
  if (v294 != enum case for Parse.uso(_:))
  {
    if (v294 == enum case for Parse.ifClientAction(_:))
    {
      v491 = v918;
      v248(v918, v293, v95);
      (v1012[12])(v491, v95);
      v492 = v923;
      (*(v943 + 32))(v939, v491, v923);
      v493 = v920;
      sub_2CA330();
      v494 = sub_2CB3D0();
      v496 = v495;
      (*(v921 + 8))(v493, v922);
      if (v494 == 0x64656D5F79616C70 && v496 == 0xEA00000000006169)
      {
      }

      else
      {
        v674 = sub_2CEEA0();

        if ((v674 & 1) == 0)
        {
          (*(v943 + 8))(v939, v492);
          goto LABEL_270;
        }
      }

      v675 = v925;
      v1009(v925, v1008, v292);
      v676 = v943;
      v677 = *(v943 + 16);
      v678 = v910;
      v677(v910, v939, v492);
      v679 = v911;
      v677(v911, v678, v492);
      v682 = *(v676 + 8);
      v680 = v676 + 8;
      v681 = v682;
      (v682)(v678, v492);
      v683 = sub_2CDFE0();
      v684 = sub_2CE690();
      if (os_log_type_enabled(v683, v684))
      {
        v685 = swift_slowAlloc();
        v943 = v680;
        v686 = v685;
        *&v1044 = swift_slowAlloc();
        v1013 = v681;
        v687 = v1044;
        *v686 = 136446210;
        v677(v901, v679, v492);
        v688 = sub_2CE2A0();
        v690 = sub_3F08(v688, v689, &v1044);

        *(v686 + 4) = v690;
        (v1013)(v679, v492);
        _os_log_impl(&dword_0, v683, v684, "AudioFlowDelegatePlugin#makeFlow Got ifClientAction play_media invocation: %{public}s", v686, 0xCu);
        sub_306C(v687);
        v681 = v1013;

        v691 = v925;
      }

      else
      {
        (v681)(v679, v492);

        v691 = v675;
      }

      v1011(v691, v1020);
      v95 = v1007;
      v1016(v1005, v1021, v1007);
      v712 = v988;
      sub_2CA7A0();
      v713 = sub_2CA7B0();
      (*(*(v713 - 8) + 56))(v712, 0, 1, v713);
      v714 = sub_1362C8(v712);
      sub_30B8(v712, &qword_34E480, &qword_2D2280);
      *&v1044 = v714;
      sub_2C95D0();
      v302 = sub_2C97B0();

      (v681)(v939, v492);
      goto LABEL_295;
    }

LABEL_270:
    v739 = v928;
    v1009(v928, v1008, v292);
    v740 = sub_2CDFE0();
    v741 = sub_2CE680();
    if (os_log_type_enabled(v740, v741))
    {
      v742 = swift_slowAlloc();
      *v742 = 0;
      _os_log_impl(&dword_0, v740, v741, "AudioFlowDelegatePlugin#makeFlow unexpected parse type. Rejecting...", v742, 2u);
    }

    v1011(v739, v292);
    sub_2CC230();
    sub_2CC1E0();
    goto LABEL_37;
  }

  v1009(v949, v1008, v292);
  v437 = sub_2CDFE0();
  v438 = sub_2CE690();
  if (os_log_type_enabled(v437, v438))
  {
    v439 = swift_slowAlloc();
    *v439 = 0;
    _os_log_impl(&dword_0, v437, v438, "AudioFlowDelegatePlugin#makeFlow received .uso parse", v439, 2u);
    v247 = v1021;
  }

  v440 = v303 + 8;
  v1011(v949, v292);
  v441 = v934;
  sub_2CA7E0();
  v442 = v959;
  if ((*(v959 + 48))(v441, 1, v436) == 1)
  {
    sub_30B8(v441, &qword_34CC90, qword_2D40E0);
  }

  else
  {
    v590 = *(v442 + 32);
    v1021 = v440;
    v591 = v919;
    v590(v919, v441, v436);
    sub_2CCC00();
    sub_2CCBC0();

    v592 = v591;
    v440 = v1021;
    (*(v442 + 8))(v592, v436);
  }

  v593 = sub_2CA7C0();
  if (!v593)
  {
    v658 = v909;
    v1009(v909, v1008, v292);
    v659 = sub_2CDFE0();
    v660 = sub_2CE680();
    if (os_log_type_enabled(v659, v660))
    {
      v661 = swift_slowAlloc();
      *v661 = 0;
      _os_log_impl(&dword_0, v659, v660, "AudioFlowDelegatePlugin#makeFlow failed to get uso task from parse", v661, 2u);
    }

    v1011(v658, v292);
    goto LABEL_37;
  }

  v594 = v593;
  sub_2CCC00();
  sub_2CCBE0();

  sub_D2F98(v247, &v1022);
  if (v1023)
  {
    sub_420A4(&v1022, &v1044);
    sub_35E0(&v1044, v1045);
    if (sub_2CD980())
    {
      v595 = v902;
      v1009(v902, v1008, v292);
      v596 = sub_2CDFE0();
      v597 = sub_2CE690();
      if (os_log_type_enabled(v596, v597))
      {
        v598 = swift_slowAlloc();
        *v598 = 0;
        _os_log_impl(&dword_0, v596, v597, "AudioFlowDelegatePlugin#makeFlow#uso This is an AirPlay request without an app name, returning first audio play flow", v598, 2u);
      }

      v1011(v595, v292);
      v599 = sub_2CA7B0();
      v600 = v988;
      (*(*(v599 - 8) + 56))(v988, 1, 1, v599);
      v302 = sub_1362C8(v600);
      sub_30B8(v600, &qword_34E480, &qword_2D2280);

      goto LABEL_219;
    }

    sub_306C(&v1044);
  }

  else
  {
    sub_30B8(&v1022, &qword_34CF98, &unk_2D1A40);
  }

  if (sub_42190())
  {
    sub_2CBC60();
    sub_35E0(&v1044, v1045);
    v696 = sub_2CBE60();
    if (v697)
    {
      v698 = v696;
    }

    else
    {
      v698 = 0;
    }

    if (v697)
    {
      v699 = v697;
    }

    else
    {
      v699 = 0xE000000000000000;
    }

    sub_306C(&v1044);
    sub_18F568(v698, v699);

    v700 = v904;
    v1009(v904, v1008, v292);
    v701 = sub_2CDFE0();
    v702 = sub_2CE690();
    if (os_log_type_enabled(v701, v702))
    {
      v703 = swift_slowAlloc();
      *v703 = 0;
      _os_log_impl(&dword_0, v701, v702, "AudioFlowDelegatePlugin#makeFlow This is play request, returning first audio play flow", v703, 2u);
    }

    v1011(v700, v292);
    v704 = sub_2CA7B0();
    v705 = v988;
    (*(*(v704 - 8) + 56))(v988, 1, 1, v704);
    v302 = sub_1362C8(v705);
    sub_30B8(v705, &qword_34E480, &qword_2D2280);
LABEL_244:

    goto LABEL_295;
  }

  if ((sub_44BB4() & 1) == 0)
  {
    if (sub_435A0() || (sub_43C3C() & 1) != 0 || (sub_43638() & 1) != 0)
    {
      v743 = v987;
      sub_35E0(v987 + 12, v987[15]);
      if (sub_2CC420())
      {
        sub_35E0(v743 + 12, v743[15]);
        if (sub_2CC3F0())
        {
          sub_2CBC60();
          sub_35E0(&v1044, v1045);
          v744 = sub_2CBE60();
          if (v745)
          {
            v746 = v744;
          }

          else
          {
            v746 = 0;
          }

          if (v745)
          {
            v747 = v745;
          }

          else
          {
            v747 = 0xE000000000000000;
          }

          sub_306C(&v1044);
          sub_18F568(v746, v747);

          v748 = v889;
          v1009(v889, v1008, v292);
          v749 = sub_2CDFE0();
          v750 = sub_2CE690();
          if (os_log_type_enabled(v749, v750))
          {
            v751 = swift_slowAlloc();
            *v751 = 0;
            _os_log_impl(&dword_0, v749, v750, "AudioFlowDelegatePlugin#makeFlow uso parse returning AmbiguousShuffleFlow", v751, 2u);
          }

          v1011(v748, v292);
          v752 = sub_13913C();
          v302 = sub_137D70(v752);

          goto LABEL_244;
        }
      }

      v785 = v893;
      v1009(v893, v1008, v292);
      v786 = sub_2CDFE0();
      v787 = sub_2CE690();
      if (os_log_type_enabled(v786, v787))
      {
        v788 = swift_slowAlloc();
        *v788 = 0;
        v789 = "AudioFlowDelegatePlugin#makeFlow Task is shuffle::MediaItem parse, but Siri X flag(s) are disabled. Rejecting...";
LABEL_301:
        _os_log_impl(&dword_0, v786, v787, v789, v788, 2u);

        goto LABEL_302;
      }

      goto LABEL_302;
    }

    if (sub_4259C())
    {
      sub_35E0(v987 + 12, v987[15]);
      if (sub_2CC420())
      {
        v1021 = v440;
        v829 = v884;
        v1009(v884, v1008, v292);
        v830 = sub_2CDFE0();
        v831 = sub_2CE690();
        if (os_log_type_enabled(v830, v831))
        {
          v832 = swift_slowAlloc();
          *v832 = 0;
          _os_log_impl(&dword_0, v830, v831, "AudioFlowDelegatePlugin#makeFlow uso parse returning UpdateMediaAffinity flow", v832, 2u);
        }

        v1011(v829, v292);
        v302 = sub_192EB0(v247);
        goto LABEL_244;
      }

      v785 = v885;
      v1009(v885, v1008, v292);
      v786 = sub_2CDFE0();
      v787 = sub_2CE670();
      if (os_log_type_enabled(v786, v787))
      {
        v788 = swift_slowAlloc();
        *v788 = 0;
        v789 = "AudioFlowDelegatePlugin#makeFlow parse is uso affinity task, but music on on Siri X is disabled. Rejecting...";
        goto LABEL_301;
      }

LABEL_302:

      v1011(v785, v292);
      v302 = 0;
      goto LABEL_295;
    }

    if (sub_42E44())
    {
      v1021 = v594;
      sub_35E0(v987 + 12, v987[15]);
      if (sub_2CC420())
      {
        v1009(v886, v1008, v292);
        v835 = sub_2CDFE0();
        v836 = sub_2CE690();
        if (os_log_type_enabled(v835, v836))
        {
          v837 = swift_slowAlloc();
          *v837 = 0;
          _os_log_impl(&dword_0, v835, v836, "AudioFlowDelegatePlugin#makeFlow uso parse returning AcousticID flow", v837, 2u);
        }

        v1011(v886, v1020);
        v838 = sub_2CA7B0();
        v839 = *(*(v838 - 8) + 56);
        v840 = v988;
        v839(v988, 1, 1, v838);
        swift_storeEnumTagMultiPayload();
        sub_1338FC(&v1044);
        v841 = sub_2CC610();
        v842 = sub_2CC600();
        v1024 = &protocol witness table for ShazamSessionManager;
        v1023 = v841;
        *&v1022 = v842;
        sub_2C99F0();
        v1019 = sub_1396D0();
        sub_2CA430();
        v843 = sub_2CB4A0();
        v844 = sub_2CB490();
        v1041 = &protocol witness table for SiriKitTaskLoggingProvider;
        v1040 = v843;
        *&v1039 = v844;
        v1037 = sub_2CC650();
        v1038 = &protocol witness table for SubscriptionProvider;
        sub_F390(&v1036);
        sub_2CC630();
        v1034 = sub_2CC2B0();
        v1035 = &protocol witness table for FeatureFlagProvider;
        sub_F390(&v1033);
        sub_2CC2A0();
        sub_133A2C(v1031);
        v845 = sub_F9A0(v1031, v1032);
        v1020 = v877;
        __chkstk_darwin(v845);
        v847 = &v877[-((v846 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v848 + 16))(v847);
        v849 = *v847;
        v850 = type metadata accessor for SiriAudioOutputProvider();
        v1030 = &off_337EB0;
        v1029 = v850;
        v1028[0] = v849;
        type metadata accessor for AcousticIDFlow(0);
        v851 = swift_allocObject();
        v852 = sub_F9A0(v1028, v850);
        v1017 = v877;
        __chkstk_darwin(v852);
        v854 = &v877[-((v853 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v855 + 16))(v854);
        v856 = *v854;
        v1027 = &off_337EB0;
        v1026 = v850;
        *&v1025 = v856;
        v857 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
        v839((v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input), 1, 1, v838);
        *(v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
        *(v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
        swift_beginAccess();
        sub_1952BC(v840, v851 + v857, &qword_34E480, &qword_2D2280);
        swift_endAccess();
        sub_EEAC(&v1044, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
        sub_EEAC(&v1022, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
        type metadata accessor for AcousticIdCatDialogService();
        v858 = swift_allocObject();
        v858[2] = 0xD000000000000011;
        v858[3] = 0x80000000002DA8D0;
        v858[5] = 0xD000000000000010;
        v858[6] = 0x80000000002DDBD0;
        v858[4] = v1019;
        *(v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v858;
        sub_EEAC(v1043, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
        sub_2C9C10();
        swift_allocObject();
        v859 = sub_2C9BF0();
        sub_306C(v1043);
        sub_306C(&v1022);
        sub_306C(&v1044);
        sub_30B8(v840, &qword_34E480, &qword_2D2280);
        *(v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v859;
        sub_195164(v976, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
        sub_F338(v1042, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
        sub_F338(&v1039, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
        sub_F338(&v1036, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
        sub_F338(&v1033, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
        sub_F338(&v1025, v851 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
        sub_306C(v1028);
        sub_306C(v1031);
        *&v1044 = v851;
        sub_E960(&qword_3524C8, 255, type metadata accessor for AcousticIDFlow, &unk_2D5280);
        v302 = sub_2C97B0();

        goto LABEL_185;
      }

      v1009(v887, v1008, v292);
      v863 = sub_2CDFE0();
      v864 = sub_2CE670();
      if (os_log_type_enabled(v863, v864))
      {
        v865 = swift_slowAlloc();
        *v865 = 0;
        _os_log_impl(&dword_0, v863, v864, "AudioFlowDelegatePlugin#makeFlow parse is uso AcousticID task, but music on on Siri X is disabled. Rejecting...", v865, 2u);
      }

      v866 = v887;
      goto LABEL_355;
    }

    if (sub_42784())
    {
      sub_35E0(v987 + 12, v987[15]);
      if (sub_2CC420())
      {
        v1009(v881, v1008, v1020);
        v860 = sub_2CDFE0();
        v861 = sub_2CE690();
        if (os_log_type_enabled(v860, v861))
        {
          v862 = swift_slowAlloc();
          *v862 = 0;
          _os_log_impl(&dword_0, v860, v861, "AudioFlowDelegatePlugin#makeFlow uso parse returning Ambiguous Determine flow", v862, 2u);
        }

        v1011(v881, v1020);
        v302 = sub_1386E8();
LABEL_347:

        goto LABEL_185;
      }

      v1009(v882, v1008, v1020);
      v871 = sub_2CDFE0();
      v872 = sub_2CE670();
      if (os_log_type_enabled(v871, v872))
      {
        v873 = swift_slowAlloc();
        *v873 = 0;
        _os_log_impl(&dword_0, v871, v872, "AudioFlowDelegatePlugin#makeFlow parse is uso Determine task, but music on on Siri X is disabled. Rejecting...", v873, 2u);
      }

      v866 = v882;
    }

    else
    {
      sub_35E0(v987 + 2, v987[5]);
      sub_133EE4(&v1044);
      sub_20410(&qword_3538B8, &qword_2D5F78);
      type metadata accessor for PommesResponseFlow(0);
      if (swift_dynamicCast())
      {
        v867 = v1022;
        if (sub_2A9A20())
        {
          v1009(v880, v1008, v1020);
          v868 = sub_2CDFE0();
          v869 = sub_2CE690();
          if (os_log_type_enabled(v868, v869))
          {
            v870 = swift_slowAlloc();
            *v870 = 0;
            _os_log_impl(&dword_0, v868, v869, "AudioFlowDelegatePlugin#makeFlow uso parse returning PommesResponseFlow", v870, 2u);
          }

          v1011(v880, v1020);
          *&v1044 = v867;
          sub_E960(&qword_3524E8, 255, type metadata accessor for PommesResponseFlow, &unk_2D8F88);
          v302 = sub_2C97B0();

          goto LABEL_347;
        }
      }

      v1009(v883, v1008, v1020);
      v874 = sub_2CDFE0();
      v875 = sub_2CE680();
      if (os_log_type_enabled(v874, v875))
      {
        v876 = swift_slowAlloc();
        *v876 = 0;
        _os_log_impl(&dword_0, v874, v875, "AudioFlowDelegatePlugin#makeFlow unexpected uso parse", v876, 2u);
      }

      v866 = v883;
    }

LABEL_355:
    v1011(v866, v1020);
    goto LABEL_257;
  }

  v706 = v895;
  v1009(v895, v1008, v292);
  v707 = sub_2CDFE0();
  v708 = sub_2CE690();
  if (os_log_type_enabled(v707, v708))
  {
    v709 = swift_slowAlloc();
    *v709 = 0;
    _os_log_impl(&dword_0, v707, v708, "AudioFlowDelegatePlugin#makeFlow resume+app request. Returning flow", v709, 2u);
  }

  v1011(v706, v292);
  v710 = sub_2CA7B0();
  v711 = v988;
  (*(*(v710 - 8) + 56))(v988, 1, 1, v710);
  v302 = sub_1362C8(v711);
  sub_30B8(v711, &qword_34E480, &qword_2D2280);

LABEL_295:
  v1014(v1015, v95);
  sub_2CB680();
  return v302;
}

id sub_CCDC()
{
  v0 = [objc_allocWithZone(INPlayMediaIntent) init];
  v1 = objc_allocWithZone(INSpeakerIDInfo);
  v2 = sub_2CE260();
  v3 = [v1 initWithSharedUserID:v2 speakerIDConfidence:3];

  v4 = [objc_allocWithZone(INPrivateMediaIntentData) initWithSpeakerIDInfo:v3 proxiedThirdPartyAppInfo:0 isAppAttributionRequired:0 useDialogMemoryForAttribution:0 isAppCorrection:0 fallbackUsername:0 wholeHouseAudioMetadata:0 nlConfidenceScore:0 nlConfidenceLevel:0 asrConfidenceScore:0 asrConfidenceLevel:0 resolvedSharedUserID:0];
  v5 = objc_allocWithZone(INPrivatePlayMediaIntentData);
  v6 = v4;
  isa = sub_2CE400().super.isa;
  v8 = [v5 initWithAppSelectionEnabled:0 appInferred:0 audioSearchResults:0 privateMediaIntentData:v6 appSelectionSignalsEnabled:0 appSelectionSignalsFrequencyDenominator:0 shouldSuppressCommonWholeHouseAudioRoutes:0 immediatelyStartPlayback:0 isAmbiguousPlay:0 isPersonalizedRequest:0 internalSignals:isa entityConfidenceSignalsEnabled:0 entityConfidenceSignalsFrequencyDenominatorInternal:0 entityConfidenceSignalsFrequencyDenominatorProd:0 entityConfidenceSignalsMaxItemsToDisambiguate:0];

  [v0 setPrivatePlayMediaIntentData:v8];
  return v0;
}

id sub_CE40(void (*a1)(char *), void *a2)
{
  v3 = v2;
  v143 = a2;
  v5 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v5 - 8);
  v129 = (&v124 - v6);
  v7 = sub_2C9EC0();
  v140 = *(v7 - 1);
  v141 = v7;
  __chkstk_darwin(v7);
  v139 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v132 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v133 = v11;
  v134 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v124 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v127 = &v124 - v19;
  v20 = __chkstk_darwin(v18);
  v130 = &v124 - v21;
  v22 = __chkstk_darwin(v20);
  v131 = &v124 - v23;
  v24 = __chkstk_darwin(v22);
  v137 = &v124 - v25;
  __chkstk_darwin(v24);
  v27 = &v124 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v29 = *(v14 + 16);
  v142 = v28;
  v144 = v29;
  v145 = (v14 + 16);
  v29(v27, v28, v13);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "DirectActionAudioSearchFlowFrame#execute", v32, 2u);
  }

  v33 = *(v14 + 8);
  v33(v27, v13);
  v34 = sub_CCDC();
  v35 = v34;
  *(v151 + 9) = *(v3 + 57);
  v36 = v3[2];
  v149 = v3[1];
  v150 = v36;
  v151[0] = v3[3];
  if (BYTE8(v151[1]) != 1)
  {
    v144(v17, v142, v13);
    v46 = sub_2CDFE0();
    v47 = sub_2CE680();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "DirectActionAudioSearchFlowFrame#execute not an audioSearch direct invocation", v48, 2u);
    }

    v33(v17, v13);
    v49 = v139;
    sub_2C9EB0();
    a1(v49);

    return (*(v140 + 8))(v49, v141);
  }

  v128 = v34;
  v135 = v33;
  v136 = v13;
  v125 = a1;
  v126 = v14 + 8;
  v37 = v149;
  sub_2CCFB0();
  v38 = v150;
  v39 = v151[0];
  v40 = *&v151[1];
  sub_F3F4(&v149, &v146, &qword_34CCB0, &qword_2D5710);
  sub_100B8(v37._countAndFlagsBits, v37._object, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, 1u);
  v41 = sub_2CCF80();
  v42 = v41;
  if ((*(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_state) & 1) == 0)
  {
    v124 = v41;
    sub_30B8(&v149, &qword_34CCB0, &qword_2D5710);
    v52 = v136;
    v51 = v137;
    v53 = v142;
    v144(v137, v142, v136);
    v54 = v128;
    v55 = sub_2CDFE0();
    v56 = sub_2CE670();

    v57 = os_log_type_enabled(v55, v56);
    v141 = v54;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v146.value._countAndFlagsBits = v59;
      *v58 = 136315138;
      v60 = sub_2CE770();
      v62 = sub_3F08(v60, v61, &v146.value._countAndFlagsBits);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_0, v55, v56, "DirectActionAudioSearchFlowFrame#execute direct invocation. Sending PlayMedia.NeedsValue prompt with intent %s", v58, 0xCu);
      sub_306C(v59);

      v63 = v137;
    }

    else
    {

      v63 = v51;
    }

    v135(v63, v52);
    v140 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_needsValueStrategy);
    v64 = [objc_opt_self() needsValue];
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = swift_allocObject();
    v67 = v125;
    v66[2] = v65;
    v66[3] = v67;
    v68 = v144;
    v66[4] = v143;
    v69 = v131;
    v68(v131, v53, v52);
    v145 = v65;

    v70 = sub_2CDFE0();
    v71 = sub_2CE690();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v146.value._countAndFlagsBits = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_3F08(0x657449616964656DLL, 0xEA0000000000736DLL, &v146.value._countAndFlagsBits);
      _os_log_impl(&dword_0, v70, v71, "PlayMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v72, 0xCu);
      sub_306C(v73);
    }

    v135(v69, v52);
    v74 = v138;
    v75 = v141;
    sub_1C9250(v141, 0x657449616964656DLL, 0xEA0000000000736DLL, v138);
    v76 = v140;
    v144 = *(v140 + 16);
    v77 = v134;
    sub_F3F4(v74, v134, &unk_353020, &unk_2D0970);
    v78 = (*(v132 + 80) + 80) & ~*(v132 + 80);
    v79 = swift_allocObject();
    v79[2] = 0x657449616964656DLL;
    v79[3] = 0xEA0000000000736DLL;
    v79[4] = v64;
    v79[5] = v76;
    v79[6] = v124;
    v79[7] = v75;
    v79[8] = sub_1C06E8;
    v79[9] = v66;
    sub_1C06F4(v77, v79 + v78);
    v146.value._countAndFlagsBits = v75;
    v80 = sub_D8B98();
    v81 = v75;
    v143 = v64;
    v82 = v80;

    if (sub_2CBFA0())
    {
      result = INMediaItemTypeGetName();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v83 = result;
      v84 = sub_2CE270();
      v86 = v85;
    }

    else
    {
      v84 = 0;
      v86 = 0xE000000000000000;
    }

    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0x6574656D61726170;
    *(inited + 40) = 0xE900000000000072;
    *(inited + 48) = 0x657449616964656DLL;
    *(inited + 56) = 0xEA0000000000736DLL;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x707954616964656DLL;
    *(inited + 120) = &type metadata for String;
    *(inited + 88) = 0xE900000000000065;
    *(inited + 96) = v84;
    *(inited + 104) = v86;
    v94 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v147 = v82;
    v148 = &off_3381B8;
    v146.value._countAndFlagsBits = v81;
    v95 = v81;
    sub_101AC(v94, v124, &v146, sub_13DB8, v79);

    sub_30B8(v138, &unk_353020, &unk_2D0970);
    sub_30B8(&v146, &qword_34C6C0, &qword_2D0710);
  }

  v43 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent);
  v44 = v136;
  v45 = v128;
  if (!v43)
  {
    sub_30B8(&v149, &qword_34CCB0, &qword_2D5710);
    v87 = v127;
    v144(v127, v142, v44);
    v88 = sub_2CDFE0();
    v89 = sub_2CE670();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v135;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v88, v89, "DirectActionAudioSearchFlowFrame#execute received nil playMediaIntent post prompt", v92, 2u);
      v44 = v136;
    }

    v91(v87, v44);
    v49 = v139;
    sub_2C9EB0();
    v125(v49);

    return (*(v140 + 8))(v49, v141);
  }

  if (v37._object)
  {
    v43;
    if (sub_2CBDC0() & 1) != 0 || (sub_2CBD80())
    {
      v146.value._countAndFlagsBits = 0;
      v146.value._object = 0xE000000000000000;
      sub_2CECB0(21);

      v146.value._countAndFlagsBits = 0xD000000000000013;
      v146.value._object = 0x80000000002DEC70;
      sub_2CE350(v37);
      sub_30B8(&v149, &qword_34CCB0, &qword_2D5710);
      v152._countAndFlagsBits = 0xD00000000000002ELL;
      v152._object = 0x80000000002DEC90;
      sub_2CEAA0(v146, v152);
    }

    else
    {
      sub_30B8(&v149, &qword_34CCB0, &qword_2D5710);
    }

    v44 = v136;
  }

  else
  {
    v96 = v43;
  }

  v97 = [v43 backingStore];
  objc_opt_self();
  v98 = swift_dynamicCastObjCClass();
  v99 = v130;
  if (v98)
  {
    v100 = [v98 privatePlayMediaIntentData];

    [v100 setAppInferred:0];
    v97 = v100;
    v44 = v136;
  }

  v144(v99, v142, v44);
  v101 = v43;
  v102 = sub_2CDFE0();
  v103 = sub_2CE670();

  if (os_log_type_enabled(v102, v103))
  {
    v124 = v42;
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v146.value._countAndFlagsBits = v145;
    *v104 = 136315394;
    v106 = v101;
    v107 = [v106 description];
    v108 = sub_2CE270();
    v110 = v109;

    v111 = sub_3F08(v108, v110, &v146.value._countAndFlagsBits);

    *(v104 + 4) = v111;
    *(v104 + 12) = 2112;
    v112 = [v106 launchId];
    if (v112)
    {
      v113 = v112;
      v114 = sub_2CE270();
      v116 = v115;

      sub_10C40();
      swift_allocError();
      *v117 = v114;
      v117[1] = v116;
      v112 = _swift_stdlib_bridgeErrorToNSError();
      v118 = v112;
    }

    else
    {
      v118 = 0;
    }

    *(v104 + 14) = v112;
    *v105 = v118;
    _os_log_impl(&dword_0, v102, v103, "DirectActionAudioSearchFlowFrame#execute handling intent post prompt and setting intent intent:%s launchId: %@", v104, 0x16u);
    sub_30B8(v105, &unk_34FC00, &unk_2D0150);

    sub_306C(v145);

    v119 = v130;
    v120 = v136;
  }

  else
  {

    v119 = v99;
    v120 = v44;
  }

  v135(v119, v120);
  v121 = v129;
  INPlayMediaIntent.toServerConversionParse()(v129);
  v122 = sub_2CA7B0();
  (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
  sub_1362C8(v121);
  sub_30B8(v121, &qword_34E480, &qword_2D2280);
  v123 = v139;
  sub_2C9EA0();

  v125(v123);

  return (*(v140 + 8))(v123, v141);
}

uint64_t sub_DE90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_DECC()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_E014(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20410(&qword_34E1B0, &qword_2D1F10);
    v2 = sub_2CEDE0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_E2FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_E2DC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_E2DC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_E2DC(v31, v32);
    result = sub_2CEC40(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_E2DC(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_E2DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_E2EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E2FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E358(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v19[1] = a3;
  v5 = sub_2C9EC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v19[0] = v6;
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "DirectActionAudioSearchFlowFrame#execute Dialog successfully generated, returning ongoing waiting for response", v16, 2u);
    v6 = v19[0];
  }

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_state) = 1;
  }

  sub_2C9E70();
  a4(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_E61C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E664()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_E758()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_E7F8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_E838()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_E878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

void *sub_E8CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_20410(&qword_34D3D8, &qword_2D26C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

__n128 sub_E940(uint64_t a1, uint64_t a2)
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

uint64_t sub_E960(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E9A8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v55 = &v48 - v10;
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v53 = *(v5 + 16);
  v54 = v13;
  v53(v12, v13, v4);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v52 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v51 = a2;
    v19 = v18;
    v56 = v18;
    *v17 = 136446210;
    v20 = sub_2CCCC0();
    v49 = a1;
    v50 = v8;
    v22 = sub_3F08(v20, v21, &v56);
    v8 = v50;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "AudioFlowProvider#findFlowForX %{public}s reaching logic", v17, 0xCu);
    sub_306C(v19);

    v4 = v52;

    v23 = v5;
    a1 = v49;
  }

  else
  {

    v23 = v5;
  }

  v24 = *(v23 + 8);
  v24(v12, v4);
  sub_2CC230();
  sub_2CC1D0();
  if (sub_4268(a1))
  {
    v53(v55, v54, v4);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v4;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v5;
      v30 = v29;
      v56 = v29;
      *v28 = 136446210;
      v31 = sub_2CCCC0();
      v33 = sub_3F08(v31, v32, &v56);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_0, v25, v26, "AudioFlowProvider#findFlowForX %{public}s returned flow", v28, 0xCu);
      sub_306C(v30);

      v34 = v55;
      v35 = v27;
    }

    else
    {

      v34 = v55;
      v35 = v4;
    }

    v24(v34, v35);
    sub_2C9820();
  }

  else
  {
    v53(v8, v54, v4);
    v36 = sub_2CDFE0();
    v37 = sub_2CE690();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v8;
      v52 = v4;
      v40 = v38;
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136446210;
      v42 = sub_2CCCC0();
      v44 = sub_3F08(v42, v43, &v56);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v36, v37, "AudioFlowProvider#findFlowForX %{public}s returned no flow", v40, 0xCu);
      sub_306C(v41);

      v45 = v39;
      v46 = v52;
    }

    else
    {

      v45 = v8;
      v46 = v4;
    }

    v24(v45, v46);
    return sub_2C9810();
  }
}

uint64_t sub_EEAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_EF10()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_F3F4(v21, &v14, qword_34C708, &qword_2D1620);
  if (v15)
  {

    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_30B8(&v14, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

uint64_t sub_F338(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_F350()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t *sub_F390(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F3F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_F45C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F4B0()
{
  v26 = sub_EF10();
  v0 = sub_2CB4A0();
  v40 = v0;
  v41 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v39 = sub_2CB490();
  sub_2C9A00();
  v37[3] = sub_2CC2B0();
  v37[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v37);
  sub_2CC2A0();
  v36[3] = sub_2CC360();
  v36[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v36);
  sub_2CC350();
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v1 = qword_35F900;
  v2 = type metadata accessor for DialogHistoryProvider();
  v35[3] = v2;
  v35[4] = &off_33CAE0;
  v35[0] = v1;
  _s18NeedsValueStrategyCMa_0();
  v24 = swift_allocObject();
  v3 = sub_F9A0(v35, v2);
  v25 = &v21;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = *(v4 + 16);
  v22(&v21 - v6);
  v7 = *(&v21 - v6);
  v34[3] = v2;
  v34[4] = &off_33CAE0;
  v34[0] = v7;
  type metadata accessor for PlayMediaCatDialogService();
  v8 = swift_allocObject();
  v8[6] = 0xEF746E65746E4961;
  v23 = 0x80000000002DA8D0;
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v8[4] = v26;
  v8[5] = 0x6964654D79616C50;
  sub_EEAC(v37, v33);
  sub_EEAC(v36, v32);
  sub_EEAC(v34, v31);
  sub_FA14(_swiftEmptyArrayStorage);

  v9 = sub_2CB490();
  v30[3] = v0;
  v30[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v30[0] = v9;
  sub_2CBC60();
  v10 = sub_F9A0(v31, v31[3]);
  v21 = &v21;
  __chkstk_darwin(v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v28[3] = v2;
  v28[4] = &off_33CAE0;
  v28[0] = v14;
  type metadata accessor for PlayMediaDialogProvider(0);
  v15 = swift_allocObject();
  v16 = sub_F9A0(v28, v2);
  __chkstk_darwin(v16);
  v22(&v21 - v6);
  v17 = *(&v21 - v6);
  v27[3] = v2;
  v27[4] = &off_33CAE0;
  v27[0] = v17;
  v15[15] = v8;
  sub_EEAC(v33, (v15 + 16));
  sub_EEAC(v30, (v15 + 31));
  sub_EEAC(v27, (v15 + 21));
  sub_EEAC(v29, (v15 + 26));
  sub_EEAC(v32, (v15 + 3));
  v18 = sub_2CB490();
  v15[11] = v0;
  v15[12] = &protocol witness table for SiriKitTaskLoggingProvider;
  v15[8] = v18;
  sub_306C(v29);
  sub_306C(v32);
  sub_306C(v33);
  sub_306C(v38);
  sub_306C(v36);
  sub_306C(v37);
  sub_306C(v34);
  sub_306C(v30);
  sub_306C(v27);
  v15[13] = 0xD000000000000011;
  v15[14] = v23;
  v15[2] = v26;
  sub_306C(v28);
  sub_306C(v31);
  v19 = v24;
  *(v24 + 16) = v15;
  sub_F338(&v39, v19 + 24);
  sub_306C(v35);
  return v19;
}

uint64_t sub_F9A0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_FA14(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_20410(&qword_34E170, &qword_2D1EB8);
  v3 = sub_2CEDE0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_4F5F4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_4F5F4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PlayMediaDialogProvider(uint64_t a1)
{
  result = qword_3538F0;
  if (!qword_3538F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FB74(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v38 = a4;
  v37 = a2;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFlowProvider();
  v47[3] = v11;
  v47[4] = &off_3367A0;
  v47[0] = a3;
  type metadata accessor for DirectActionAudioSearchFlow(0);
  v12 = swift_allocObject();
  v13 = sub_F9A0(v47, v11);
  __chkstk_darwin(v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v45 = v11;
  v46 = &off_3367A0;
  *&v44 = v17;
  *(v12 + 16) = 0u;
  v18 = (v12 + 16);
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  *(v12 + 72) = -1;
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_input;
  v20 = sub_2CA7B0();
  (*(*(v20 - 8) + 56))(v12 + v19, 1, 1, v20);
  *(v12 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent) = 0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v21, v7);
  sub_F3F4(a1, &v41, &qword_34CCB0, &qword_2D5710);
  v22 = v7;
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  sub_30B8(a1, &qword_34CCB0, &qword_2D5710);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136315138;
    v27 = a1[1];
    v41 = *a1;
    v42 = v27;
    v43[0] = a1[2];
    *(v43 + 9) = *(a1 + 41);
    v34 = v10;
    v35 = v22;
    sub_F3F4(a1, v39, &qword_34CCB0, &qword_2D5710);
    sub_20410(&qword_34CCB0, &qword_2D5710);
    v28 = sub_2CE2A0();
    v30 = sub_3F08(v28, v29, &v40);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "DirectActionAudioSearchFlowFrame#init with useCase: %s", v25, 0xCu);
    sub_306C(v26);

    (*(v8 + 8))(v34, v35);
  }

  else
  {

    (*(v8 + 8))(v10, v22);
  }

  v31 = *(v12 + 32);
  v41 = *v18;
  v42 = v31;
  v43[0] = *(v12 + 48);
  *(v43 + 9) = *(v12 + 57);
  v32 = a1[1];
  *v18 = *a1;
  *(v12 + 32) = v32;
  *(v12 + 48) = a1[2];
  *(v12 + 57) = *(a1 + 41);
  sub_30B8(&v41, &qword_34CCB0, &qword_2D5710);
  sub_F338(v37, v12 + 80);
  *(v12 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_state) = 0;
  sub_F338(&v44, v12 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_audioFlowProvider);
  *(v12 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playFlowStrategy) = v38;
  *(v12 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_needsValueStrategy) = v36;
  sub_306C(v47);
  return v12;
}

uint64_t type metadata accessor for DirectActionAudioSearchFlow(uint64_t a1)
{
  result = qword_3541D8;
  if (!qword_3541D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100B8(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 > 2u)
  {
    if (a8 != 3)
    {
      if (a8 != 4)
      {
        return result;
      }

      v8 = result;

      v9 = v8;
    }
  }

  else if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }

  else
  {
    v10 = a3;
  }
}

char *sub_10160(uint64_t a1, unint64_t a2)
{
  v3 = sub_108D0(a1, a2);
  sub_10A04(&off_32F088);
  return v3;
}

uint64_t sub_101AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_10838()
{

  return _swift_deallocObject(v0, 32);
}

unint64_t sub_1087C()
{
  result = qword_34FF40;
  if (!qword_34FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FF40);
  }

  return result;
}

char *sub_108D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_E8CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2CECF0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2CE360();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_E8CC(v10, 0);
        result = sub_2CECA0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10A04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_4F360(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10AF0()
{
  sub_10B60(v2);
  sub_35E0(v2, v2[3]);
  v0 = sub_2CA160();
  sub_306C(v2);
  return v0;
}

uint64_t sub_10B60@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_F3F4(v1 + 32, &v4, &qword_3528A0, &qword_2D5080);
  if (v5)
  {
    return sub_F338(&v4, a1);
  }

  sub_30B8(&v4, &qword_3528A0, &qword_2D5080);
  sub_14CD40(v1);
  sub_EEAC(a1, &v4);
  swift_beginAccess();
  sub_FECE8(&v4, v1 + 32, &qword_3528A0, &qword_2D5080);
  return swift_endAccess();
}

unint64_t sub_10C40()
{
  result = qword_3518F0;
  if (!qword_3518F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3518F0);
  }

  return result;
}

uint64_t DialogService.buildParams(with:app:intentDialogContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v34 = a5;
  v30 = a4;
  v32 = a2;
  v7 = sub_20410(&qword_355900, &qword_2D7B58);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD3D0();

    v14 = sub_2CD430();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v15 = sub_2CD430();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  v31 = v9;
  if (qword_34C010 != -1)
  {
    swift_once();
  }

  v29 = qword_3557D0;
  sub_20410(&qword_34F2A8, &qword_2D4990);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2D10E0;
  sub_F3F4(a3, &v39, &qword_34C6C0, &qword_2D0710);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v5;
  v18 = v40;
  *(v17 + 32) = v39;
  *(v17 + 48) = v18;
  v19 = v32;
  *(v17 + 64) = v41;
  *(v17 + 72) = v19;
  *(v17 + 80) = v12;
  *(v16 + 32) = sub_11524;
  *(v16 + 40) = v17;
  sub_F3F4(a3, v37, &qword_34C6C0, &qword_2D0710);
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v19;
  v21 = v37[1];
  *(v20 + 32) = v37[0];
  *(v20 + 48) = v21;
  *(v20 + 64) = v38;
  *(v20 + 72) = v10;
  *(v16 + 48) = sub_11E74;
  *(v16 + 56) = v20;
  sub_F3F4(a3, v35, &qword_34C6C0, &qword_2D0710);
  v22 = swift_allocObject();
  v23 = v35[1];
  *(v22 + 16) = v35[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v36;
  *(v22 + 56) = v5;
  *(v22 + 64) = v13;
  *(v16 + 64) = sub_228308;
  *(v16 + 72) = v22;
  sub_F3F4(a3, &v39, &qword_34C6C0, &qword_2D0710);
  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  *(v24 + 24) = v12;
  *(v24 + 32) = v5;
  *(v24 + 40) = v13;
  v25 = v40;
  *(v24 + 48) = v39;
  *(v24 + 64) = v25;
  *(v24 + 80) = v41;
  *(v24 + 88) = v11;
  v26 = v34;
  v27 = v30;
  *(v24 + 96) = v33;
  *(v24 + 104) = v27;
  *(v24 + 112) = v26;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_2CCC70();

  sub_30B8(v31, &qword_355900, &qword_2D7B58);
}

uint64_t sub_11108()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_11140()
{

  if (*(v0 + 56))
  {
    sub_306C((v0 + 32));
  }

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_111A0()
{

  if (*(v0 + 56))
  {
    sub_306C((v0 + 32));
  }

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_111F8()
{
  if (*(v0 + 40))
  {
    sub_306C((v0 + 16));
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_11248()
{

  if (*(v0 + 72))
  {
    sub_306C((v0 + 48));
  }

  return _swift_deallocObject(v0, 120);
}

unint64_t sub_112C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E1C0, &unk_2D7FD0);
    v3 = sub_2CEDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_F3F4(v4, &v13, &qword_34CBA0, &unk_2D0FE0);
      v5 = v13;
      v6 = v14;
      result = sub_4F538(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_E2DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_113F0(uint64_t (**a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = DialogService.buildIntentParams(for:with:)(a4, a5);
  swift_beginAccess();
  *(a2 + 16) = v10;

  sub_F3F4(a4, v17, &qword_34C6C0, &qword_2D0710);
  v11 = v18;
  if (v18)
  {
    v12 = v19;
    sub_35E0(v17, v18);
    v13 = (*(v12 + 48))(v11, v12);
    sub_306C(v17);
  }

  else
  {
    sub_30B8(v17, &qword_34C6C0, &qword_2D0710);
    v13 = 0;
  }

  v14 = sub_228754(v13);

  swift_beginAccess();
  *(a6 + 16) = v14;

  return v9(v15);
}

unint64_t DialogService.buildIntentParams(for:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CD430();
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CCF00();
  v33[0] = sub_1BE550();
  sub_227960();
  v32 = sub_2CCF10();

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0050;
  *(inited + 32) = 0x646E756F72477369;
  v31[1] = inited + 32;
  *(inited + 40) = 0xEB00000000676E69;
  sub_F3F4(a1, v33, &qword_34C6C0, &qword_2D0710);
  v8 = v34;
  if (v34)
  {
    v9 = v35;
    sub_35E0(v33, v34);
    v10 = (*(v9 + 8))(v8, v9) & 1;
    sub_306C(v33);
  }

  else
  {
    sub_30B8(v33, &qword_34C6C0, &qword_2D0710);
    v10 = 0;
  }

  *(inited + 48) = v10;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000000002DFDA0;
  sub_F3F4(a1, v33, &qword_34C6C0, &qword_2D0710);
  v11 = v34;
  if (v34)
  {
    v12 = v35;
    sub_35E0(v33, v34);
    if (a2)
    {
      v13 = sub_2CCF90();
      a2 = v14;
    }

    else
    {
      v13 = 0;
    }

    v16 = (*(v12 + 24))(v13, a2, v11, v12);

    v15 = v16 & 1;
    sub_306C(v33);
  }

  else
  {
    sub_30B8(v33, &qword_34C6C0, &qword_2D0710);
    v15 = 0;
  }

  *(inited + 96) = v15;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000020;
  *(inited + 136) = 0x80000000002DFDC0;
  sub_F3F4(a1, v33, &qword_34C6C0, &qword_2D0710);
  v17 = v34;
  if (v34)
  {
    v18 = v35;
    sub_35E0(v33, v34);
    v19 = (*(v18 + 40))(v17, v18) & 1;
    sub_306C(v33);
  }

  else
  {
    sub_30B8(v33, &qword_34C6C0, &qword_2D0710);
    v19 = 0;
  }

  *(inited + 144) = v19;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000000002DFDF0;
  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD3D0();

    v20 = sub_2CD420();
    sub_2282AC(v6);
    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  *(inited + 192) = v21 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000000002DFE10;
  sub_F3F4(a1, v33, &qword_34C6C0, &qword_2D0710);
  v22 = v34;
  if (v34)
  {
    v23 = v35;
    sub_35E0(v33, v34);
    v24 = (*(v23 + 16))(v22, v23) & 1;
    sub_306C(v33);
  }

  else
  {
    sub_30B8(v33, &qword_34C6C0, &qword_2D0710);
    v24 = 0;
  }

  *(inited + 240) = v24;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x80000000002DFE30;
  v25 = DialogService.fallbackUsername(for:)(a1);
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v26)
  {
    v28 = v26;
  }

  *(inited + 288) = v27;
  *(inited + 296) = v28;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x656369766564;
  *(inited + 328) = 0xE600000000000000;
  *(inited + 360) = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *(inited + 336) = v32;
  v29 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  return v29;
}

uint64_t sub_11A2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v34 = a4;
  v8 = sub_2CDFD0();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;

  if (a3)
  {
    v30 = sub_2CCF90();
    v32 = v17;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = sub_CEEA8;
  v18[3] = v16;
  v18[4] = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_228358;
  *(v19 + 24) = v18;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  v22 = v31;
  (*(v31 + 16))(v11, v13, v8);
  v23 = (*(v22 + 80) + 33) & ~*(v22 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceBuildAppParams";
  *(v25 + 24) = 24;
  *(v25 + 32) = 2;
  (*(v22 + 32))(v25 + v23, v11, v8);
  v26 = (v25 + v24);
  *v26 = sub_228378;
  v26[1] = v19;

  v27 = sub_2CE9E0();
  sub_2CDF90(v27, &dword_0, v21, "catServiceBuildAppParams", 24, 2, v13, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

  sub_11E84(v30, v32, v33, v34, sub_2283A4, v25);

  (*(v22 + 8))(v13, v8);
}

uint64_t sub_11D8C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_11DC8()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_11E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v27 = a1;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_229CD0;
  *(v16 + 24) = v15;
  if (a2)
  {
    sub_EEAC(a3 + 16, v34);
    sub_35E0(v34, v34[3]);
    sub_F3F4(a4, &v28, &qword_34C6C0, &qword_2D0710);
    v17 = *(&v29 + 1);

    if (v17)
    {
      sub_20410(&unk_3530B0, &qword_2D2270);
      sub_20410(&qword_355910, &qword_2D7B68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
      }
    }

    else
    {
      sub_30B8(&v28, &qword_34C6C0, &qword_2D0710);
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
    }

    sub_F3F4(a4, &v28, &qword_34C6C0, &qword_2D0710);
    v24 = swift_allocObject();
    v25 = v29;
    *(v24 + 16) = v28;
    *(v24 + 32) = v25;
    *(v24 + 48) = v30;
    *(v24 + 56) = sub_229D0C;
    v26 = v27;
    *(v24 + 64) = v16;
    *(v24 + 72) = v26;
    *(v24 + 80) = a2;

    sub_2CBC50();

    sub_30B8(&v31, &qword_34E970, &qword_2D2910);
    sub_306C(v34);
  }

  else
  {
    v18 = a5;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v14, v19, v11);
    v20 = sub_2CDFE0();
    v21 = sub_2CE690();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "No app present, passing empty app parameter values for CAT", v22, 2u);
    }

    (*(v12 + 8))(v14, v11);
    *&v31 = sub_112C0(_swiftEmptyArrayStorage);
    v18(&v31);
  }
}

uint64_t sub_12298()
{
  if (*(v0 + 40))
  {
    sub_306C((v0 + 16));
  }

  return _swift_deallocObject(v0, 88);
}

void sub_122F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1237C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v109 = a8;
  v110 = a7;
  v13 = sub_2CA130();
  v105 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v107);
  v108 = (&v96 - v16);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v111 = v17;
  *&v112 = v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = (&v96 - v22);
  v23 = [a1 meta];
  v24 = sub_2CE200();

  sub_12F0C(a4, a5, v24, a6);

  if (a2)
  {
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = v111;
    v26 = sub_3ED0(v111, static Logger.default);
    swift_beginAccess();
    v27 = v112;
    v28 = v106;
    (*(v112 + 16))(v106, v26, v25);
    swift_errorRetain();
    v29 = sub_2CDFE0();
    v30 = sub_2CE680();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v31 = 136446466;
      v32 = sub_2CCCB0();
      v34 = sub_3F08(v32, v33, &v113);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      swift_getErrorValue();
      v35 = sub_2CEEF0();
      v37 = sub_3F08(v35, v36, &v113);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_0, v29, v30, "CatService#executeDialog %{public}s Error evaluating CAT: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    (*(v27 + 8))(v28, v25);
    v38 = v108;
    *v108 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v110(v38);

    return sub_30B8(v38, &unk_3519A0, &qword_2D0980);
  }

  v102 = v21;
  v104 = a5;
  v101 = v15;
  v100 = v13;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = v111;
  v41 = sub_3ED0(v111, static Logger.default);
  swift_beginAccess();
  v42 = v112;
  v43 = v102;
  (*(v112 + 16))(v102, v41, v40);
  v44 = a1;
  v45 = sub_2CDFE0();
  v46 = sub_2CE690();

  v47 = os_log_type_enabled(v45, v46);
  v48 = &off_349000;
  v103 = a4;
  v106 = v44;
  if (!v47)
  {
    v44 = &off_349000;

    (*(v42 + 8))(v43, v40);
    v49 = v101;
    goto LABEL_28;
  }

  v98 = v46;
  v99 = v45;
  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  v113 = v97;
  *v49 = 136446722;
  v51 = sub_2CCCB0();
  v53 = sub_3F08(v51, v52, &v113);

  *(v49 + 4) = v53;
  *(v49 + 12) = 2114;
  v54 = [(SEL *)v44 dialog];
  sub_13AE0();
  v55 = sub_2CE410();

  if (v55 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_12;
    }

LABEL_18:

    v63 = 0;
    goto LABEL_19;
  }

  result = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v55 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if (!*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
LABEL_52:
    __break(1u);
    return result;
  }

  for (i = *(v55 + 32); ; i = sub_2CECD0())
  {
    v57 = i;

    v58 = [v57 fullPrint];

    v59 = sub_2CE270();
    v61 = v60;

    sub_10C40();
    swift_allocError();
    *v62 = v59;
    v62[1] = v61;
    v63 = _swift_stdlib_bridgeErrorToNSError();
LABEL_19:
    *(v49 + 14) = v63;
    *v50 = v63;
    *(v49 + 22) = 2114;
    v64 = [v44 v48[473]];
    v65 = sub_2CE410();

    if (v65 >> 62)
    {
      result = sub_2CEDA0();
      if (!result)
      {
LABEL_26:

        v73 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      result = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        goto LABEL_26;
      }
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v66 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_52;
      }

      v66 = *(v65 + 32);
    }

    v67 = v66;

    v68 = [v67 fullSpeak];

    v69 = sub_2CE270();
    v71 = v70;

    sub_10C40();
    swift_allocError();
    *v72 = v69;
    v72[1] = v71;
    v73 = _swift_stdlib_bridgeErrorToNSError();
LABEL_27:
    v44 = v48;
    *(v49 + 24) = v73;
    *(v50 + 8) = v73;
    v74 = v99;
    _os_log_impl(&dword_0, v99, v98, "CatService#executeDialog %{public}s Successfully evaluated dialog to Print: %{public}@ speak:%{public}@", v49, 0x20u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();

    sub_306C(v97);

    (*(v42 + 8))(v102, v40);
    v49 = v101;
LABEL_28:
    v50 = sub_20410(&unk_356F40, &unk_2D0740);
    v40 = swift_allocObject();
    v112 = xmmword_2D0090;
    *(v40 + 16) = xmmword_2D0090;
    v75 = [v106 v44[473]];
    sub_13AE0();
    v76 = sub_2CE410();

    v42 = v100;
    if (v76 >> 62)
    {
      v83 = sub_2CEDA0();
      v48 = v105;
      if (!v83)
      {
LABEL_35:

        v80 = 0;
        v82 = 0xE000000000000000;
        goto LABEL_36;
      }
    }

    else
    {
      v48 = v105;
      if (!*(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_35;
      }
    }

    if ((v76 & 0xC000000000000001) != 0)
    {
      v77 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_48;
      }

      v77 = *(v76 + 32);
    }

    v78 = v77;

    v79 = [v78 fullSpeak];

    v80 = sub_2CE270();
    v82 = v81;

LABEL_36:
    *(v40 + 32) = v80;
    *(v40 + 40) = v82;
    v50 = swift_allocObject();
    *(v50 + 16) = v112;
    v84 = v44[473];
    v44 = v106;
    v85 = [v106 v84];
    v86 = sub_2CE410();

    if (!(v86 >> 62))
    {
      if (!*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_38;
    }

    if (!sub_2CEDA0())
    {
      break;
    }

LABEL_38:
    if ((v86 & 0xC000000000000001) != 0)
    {
      v87 = sub_2CECD0();
      goto LABEL_41;
    }

    if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
    {
      v87 = *(v86 + 32);
LABEL_41:
      v88 = v87;

      v89 = [v88 fullPrint];

      v90 = sub_2CE270();
      v92 = v91;

      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v90 = 0;
  v92 = 0xE000000000000000;
LABEL_44:
  *(v50 + 32) = v90;
  *(v50 + 40) = v92;

  sub_2CA0C0();
  v93 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
  v94 = v108;
  (v48[2])(v108, v49, v42);
  *(v94 + v93) = v44;
  swift_storeEnumTagMultiPayload();
  v95 = v44;
  v110(v94);
  sub_30B8(v94, &unk_3519A0, &qword_2D0980);
  return (v48[1])(v49, v42);
}

uint64_t sub_12F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v91 = a2;
  v6 = sub_20410(&qword_34C6F0, &qword_2D0750);
  __chkstk_darwin(v6 - 8);
  v8 = &v81 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v81 - v15;
  __chkstk_darwin(v14);
  v18 = &v81 - v17;
  result = sub_13874(a3);
  if (v20)
  {
    v21 = result;
    v22 = v20;
    v87 = v16;
    v94[0] = result;
    v94[1] = v20;
    __chkstk_darwin(result);
    v80 = v94;
    if ((sub_13964(sub_13A68, &v78, &off_32F0B0) & 1) == 0)
    {
    }

    v88 = v13;
    v89 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    v24 = *(v10 + 16);
    v84 = v10 + 16;
    v85 = v23;
    v83 = v24;
    v24(v18, v23, v9);
    v25 = v10;
    v26 = v91;

    v27 = sub_2CDFE0();
    v28 = sub_2CE660();

    v29 = os_log_type_enabled(v27, v28);
    v86 = v8;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_3F08(v89, v26, v94);
      *(v30 + 12) = 2080;
      v31 = sub_3F08(v21, v22, v94);

      *(v30 + 14) = v31;
      _os_log_impl(&dword_0, v27, v28, "CatService#catchAllForRadarFilingConsideration, catId: %s and category: %s, possible TTR candidate", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v32 = *(v25 + 8);
    v32(v18, v9);
    sub_2CC230();
    v33 = sub_2CC1F0();
    v35 = v90;
    v36 = v9;
    if (*(v90 + 16))
    {
      v37 = sub_4F538(v33, v34);
      v39 = v38;

      if (v39)
      {
        sub_E2FC(*(v35 + 56) + 32 * v37, v94);
        v40 = swift_dynamicCast();
        v41 = v92;
        if (!v40)
        {
          v41 = 0;
        }

        v82 = v41;
        if (v40)
        {
          v42 = v93;
        }

        else
        {
          v42 = 0;
        }

LABEL_18:
        v43 = sub_2CC210();
        if (*(v35 + 16))
        {
          v45 = sub_4F538(v43, v44);
          v47 = v46;

          if ((v47 & 1) == 0)
          {
            goto LABEL_29;
          }

          sub_E2FC(*(v35 + 56) + 32 * v45, v94);
          if (!swift_dynamicCast() || (v92 & 1) == 0)
          {
            goto LABEL_29;
          }

          v48 = sub_2CC200();
          if (*(v35 + 16))
          {
            v50 = sub_4F538(v48, v49);
            v52 = v51;

            if (v52)
            {
              sub_E2FC(*(v35 + 56) + 32 * v50, v94);
              sub_2CC8E0();
              if (swift_dynamicCast())
              {
                v90 = v42;
                v83(v87, v85, v36);
                v53 = sub_2CDFE0();
                v54 = sub_2CE670();
                if (os_log_type_enabled(v53, v54))
                {
                  v55 = swift_slowAlloc();
                  *v55 = 0;
                  _os_log_impl(&dword_0, v53, v54, "CatService#catchAllForRadarFilingConsideration SFA TTR attempt", v55, 2u);
                }

                v32(v87, v36);
                sub_2CC880();
                sub_2CC870();
                v56 = sub_2CD470();
                v57 = v86;
                (*(*(v56 - 8) + 56))(v86, 1, 1, v56);
                v80 = v91;
                v79 = v89;
                v78 = v90;
                sub_2CC220();

                v58 = v57;
                return sub_30B8(v58, &qword_34C6F0, &qword_2D0750);
              }
            }

LABEL_29:
            v59 = sub_2CC200();
            if (*(v35 + 16))
            {
              v61 = sub_4F538(v59, v60);
              v63 = v62;

              v64 = v89;
              if (v63)
              {
                sub_E2FC(*(v35 + 56) + 32 * v61, v94);
                if (swift_dynamicCast())
                {
                  v65 = v93;
LABEL_40:
                  v83(v88, v85, v36);
                  v72 = sub_2CDFE0();
                  v73 = sub_2CE670();
                  if (os_log_type_enabled(v72, v73))
                  {
                    v74 = swift_slowAlloc();
                    *v74 = 0;
                    _os_log_impl(&dword_0, v72, v73, "CatService#catchAllForRadarFilingConsideration TTR attempt", v74, 2u);
                    v64 = v89;
                  }

                  v32(v88, v36);
                  v75 = v91;
                  if (!v65)
                  {
                  }

                  v76 = sub_2CD470();
                  v77 = v86;
                  (*(*(v76 - 8) + 56))(v86, 1, 1, v76);
                  v79 = v64;
                  v80 = v75;
                  v78 = v42;
                  sub_2CC220();

                  v58 = v77;
                  return sub_30B8(v58, &qword_34C6F0, &qword_2D0750);
                }
              }
            }

            else
            {

              v64 = v89;
            }

            v66 = sub_2CC200();
            if (*(v35 + 16))
            {
              v68 = sub_4F538(v66, v67);
              v70 = v69;

              if (v70)
              {
                sub_E2FC(*(v35 + 56) + 32 * v68, v94);
                if (swift_dynamicCast())
                {
                  v94[0] = v92;
                  sub_2CEE70();
                  v65 = v71;
                  goto LABEL_40;
                }
              }
            }

            else
            {
            }

            v65 = 0;
            goto LABEL_40;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v82 = 0;
    v42 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1388C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t))
{
  v4 = sub_2CEC20();
  if (v4 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v6 = a2(v4, *(a1 + 36), 0, a1);

  return v6;
}

uint64_t sub_13910(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_13964(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_13A10(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2CEEA0() & 1;
  }
}

uint64_t sub_13A88(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2CEEA0() & 1;
  }
}

unint64_t sub_13AE0()
{
  result = qword_34C6D8;
  if (!qword_34C6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34C6D8);
  }

  return result;
}

uint64_t sub_13B2C(uint64_t a1)
{
  sub_2CDFD0();

  return sub_13C10();
}

uint64_t sub_13C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(a1);
}

uint64_t sub_13CD4(uint64_t a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_13C14(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_13E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9, uint64_t a10)
{
  v87 = a8;
  v84 = a6;
  v85 = a7;
  v78 = a4;
  v79 = a5;
  v77 = a3;
  v76 = a2;
  v75 = a1;
  v86 = a9;
  v69 = sub_2CCB20();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2CA910();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v70);
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v66 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v15 - 8);
  v83 = &v66 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v17 - 8);
  v82 = &v66 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v19 - 8);
  v81 = &v66 - v20;
  v21 = sub_2CCB30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCAC0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v66 - v30);
  sub_F3F4(v75, &v66 - v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.pmnvs(_:), v25);
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v21);
    swift_getErrorValue();
    sub_2CEEF0();
    v80 = sub_2CCAF0();

    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v25);
    v79 = sub_35E0(v79 + 3, v79[6]);
    v33 = enum case for ActivityType.failed(_:);
    v34 = sub_2C9C20();
    v35 = *(v34 - 8);
    v36 = v81;
    (*(v35 + 104))(v81, v33, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    v37 = sub_2CA130();
    v38 = v82;
    (*(*(v37 - 8) + 56))(v82, 1, 1, v37);
    v39 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v40 = sub_2C98F0();
    v41 = *(v40 - 8);
    v42 = v83;
    (*(v41 + 104))(v83, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v42, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v38, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v36, &qword_34CB88, &unk_2D0D90);
    *&v88 = v32;
    v91 = 1;
    swift_errorRetain();
    v87(&v88);
  }

  else
  {
    v43 = v72;
    sub_14A58(v31, v72, &qword_34C6E8, &unk_2D0FF0);
    sub_2CB5B0();
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_2C9DE0();
    sub_30B8(&v88, &qword_34CC80, &qword_2D1520);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.pmnvs(_:), v25);
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v21);
    v44 = v68;
    v45 = v67;
    v46 = v69;
    (*(v68 + 104))(v67, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v69);
    v78 = sub_2CCB00();
    v77 = v47;
    (*(v44 + 8))(v45, v46);
    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v25);
    sub_35E0(v79 + 3, v79[6]);
    v48 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v49 = sub_2C9C20();
    v50 = *(v49 - 8);
    v51 = v81;
    (*(v50 + 104))(v81, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = v43;
    v53 = v71;
    sub_F3F4(v43, v71, &qword_34C6E8, &unk_2D0FF0);

    v54 = sub_2CA130();
    v55 = *(v54 - 8);
    v56 = v82;
    (*(v55 + 32))(v82, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = enum case for SiriKitReliabilityCodes.success(_:);
    v58 = sub_2C98F0();
    v59 = *(v58 - 8);
    v60 = v83;
    (*(v59 + 104))(v83, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v60, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v56, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
    v61 = v74;
    *(&v89 + 1) = v74;
    v90 = &protocol witness table for AceOutput;
    v62 = sub_F390(&v88);
    v63 = v73;
    v64 = v80;
    (*(v73 + 16))(v62, v80, v61);
    v91 = 0;
    v87(&v88);
    (*(v63 + 8))(v64, v61);
    sub_30B8(v52, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v88, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_14A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_14AD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_14AF0()
{
  v1 = sub_20410(&qword_34C6C8, &qword_2D0718);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_14B84()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_14BD4()
{

  if (*(v0 + 56))
  {
    sub_306C((v0 + 32));
  }

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_14C60()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_14CA0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_14CD8()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_14D30()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_14D70()
{
  v1 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_14E58()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_1506C()
{
  v1 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_15164()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);

  v7 = v0 + v2;
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v7, v8);

  v9 = sub_2CA000();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5, 1, v9))
  {
    (*(v10 + 8))(v0 + v5, v9);
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_15368()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_153A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1550C()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_15654()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1579C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_157D4()
{
  v1 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_158CC()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);

  v7 = v0 + v2;
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v7, v8);

  v9 = sub_2CA000();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5, 1, v9))
  {
    (*(v10 + 8))(v0 + v5, v9);
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_15AD0()
{
  v1 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_15BB8()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_15DCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_15E08()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_15E50()
{
  v1 = sub_2C8D90();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_15F08()
{

  sub_306C((v0 + 40));
  sub_306C((v0 + 80));
  sub_306C((v0 + 120));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_15F60()
{

  sub_306C((v0 + 32));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_15FB0()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_16028()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_16174()
{

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_161D4()
{

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_16234()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_16284()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_162C4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_162FC()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_2CA130();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_16438()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_16494()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_164EC()
{
  v1 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4 = *(*(v3 - 8) + 80);
  v15 = *(*(v3 - 8) + 64);
  v5 = sub_2CA630();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v16 = *(v6 + 64);
  v8 = sub_2CD230();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v10 = (v2 + v17 + v4) & ~v4;
  v11 = (v10 + v15 + v7) & ~v7;
  v12 = v0 + v10;
  v13 = sub_2CA130();
  (*(*(v13 - 8) + 8))(v12, v13);

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v16);
}

uint64_t sub_16764()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_167C4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_16864()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1689C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_16900()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_169FC()
{

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_16A5C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_16AFC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16B34()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_16B74()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16BB4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_16C0C()
{
  v1 = sub_2CDDB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_16D10()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_16D60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_16DA0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_16DD8()
{

  return _swift_deallocObject(v0, 81);
}

uint64_t sub_16E30()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16E68()
{
  v1 = sub_20410(&qword_34E738, &qword_2D26C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_16F74()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16FAC()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_16FFC()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1709C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_170D8()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_17118()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_17158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_17230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20410(&unk_3530C0, &unk_2D0A40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_172FC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_173E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_17418()
{
  v1 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_2CA130();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1757C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_175C4()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_176C8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17700()
{
  v1 = sub_2CA000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_177E4()
{
  v1 = sub_2CA000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2CD300();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v9);
}

uint64_t sub_17960()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_179B0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_179F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_34C820, &unk_2D0A30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_17AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20410(&qword_34C820, &unk_2D0A30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_17BA4()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_17BEC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_17C38()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17C78()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17CB8()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_17D10()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17D58()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17DB8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17DF0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17E30()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_17E88()
{
  v9 = sub_2CCA10();
  v1 = *(v9 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_2C8E30();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + v3 + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v2, v9);

  (*(v5 + 8))(v0 + v6, v4);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1802C()
{
  v1 = sub_2CCA10();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_180F0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18128()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_18178()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_181C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_181F8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_18238()
{
  v1 = sub_2CC100();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2C8E80();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_183A0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_183E8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18430()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_184D0()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1859C()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_18670()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_186A8()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1879C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18804()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_306C((v0 + v4));

  return _swift_deallocObject(v0, v4 + 48);
}

uint64_t sub_18904()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_306C((v0 + 16));

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_18A10()
{

  return _swift_deallocObject(v0, 81);
}

uint64_t sub_18A68()
{
  v1 = sub_2CC100();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_18B68()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18BB4()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_18BF8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18C3C()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_18C7C()
{

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_18CD4()
{

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));
  sub_306C((v0 + 112));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_18D2C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18D74()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18DAC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18DF4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18E2C()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_18E7C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18EB8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18F04()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18F3C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18F74()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_18FD4()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1902C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_19084()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_190C4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1910C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_19250()
{
  v1 = sub_2C8E80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_19304()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_193DC()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1943C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1948C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1952C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_19564()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_195A8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_19608()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_19648()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_19690()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);

  v10 = v0 + v2;
  v11 = sub_2CA130();
  (*(*(v11 - 8) + 8))(v10, v11);

  v12 = sub_2CA000();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v5, 1, v12))
  {
    (*(v13 + 8))(v0 + v5, v12);
  }

  v14 = sub_2CD230();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v8, 1, v14))
  {
    (*(v15 + 8))(v0 + v8, v14);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1997C()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2CA630();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  (*(v5 + 8))(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_19AFC()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_19D10()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_19D7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_19DB4()
{
  v1 = *(sub_20410(&qword_352D78, &unk_2D5320) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CC950();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_19EF4()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_19FD8()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_2CA130();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1A0EC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1A12C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1A164()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1A1C0()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v16 = *(v1 + 64);
  v3 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4 = *(*(v3 - 8) + 80);
  v15 = *(*(v3 - 8) + 64);
  v5 = sub_2CD330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);

  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v10 = (v2 + v16 + v4) & ~v4;
  v11 = (((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v12 = v0 + v10;
  v13 = sub_2CA130();
  (*(*(v13 - 8) + 8))(v12, v13);

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v17);
}

uint64_t sub_1A454()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1A48C()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v16 = *(v1 + 64);
  v3 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4 = *(*(v3 - 8) + 80);
  v15 = *(*(v3 - 8) + 64);
  v5 = sub_2CD330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v10 = (((v16 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v11 = (v10 + v15 + v7) & ~v7;

  v12 = v0 + v10;
  v13 = sub_2CA130();
  (*(*(v13 - 8) + 8))(v12, v13);

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v17);
}

uint64_t sub_1A724()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1A7E0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1A820()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1A8F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1AA78()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_2CA000();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return _swift_deallocObject(v0, v9 + v6);
}

uint64_t sub_1AC68()
{
  sub_306C((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1ACA8()
{
  v1 = *(v0 + 16);
  v2 = sub_2CD040();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v2);

  (*(v5 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1AE4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (((*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1AFEC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1B034()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_20410(&qword_3530D0, &qword_2D5728);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1B19C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1B2AC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B2E4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1B334@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1B3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_20410(&unk_3519B0, &qword_2D1230);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B46C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_20410(&unk_3519B0, &qword_2D1230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B51C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B55C()
{

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);

  if (v0[19])
  {
    sub_306C(v0 + 16);
  }

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_1B5D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B608()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_A41AC(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1B650()
{
  v1 = sub_2C8E30();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1B6E4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1B784()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B7BC()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1B804()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1B83C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1B884()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B8D4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1B974()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B9AC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1B9EC()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1BA3C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1BA84()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1BAE0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_A41AC(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1BB2C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BB90()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1BCD8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BD10()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1BD48()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1BD88()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BDC8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BE04()
{
  v1 = sub_2CC5F0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1BEF4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1BF44()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1BF8C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1BFD4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1C014()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1C05C()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1C0F0()
{
  sub_306C((v0 + 24));
  sub_306C((v0 + 64));

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_1C150()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C190()
{

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  sub_306C((v0 + 120));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_1C220()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C2F4()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1C334()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1C404()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1C440()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C47C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1C52C()
{
  v1 = sub_2C8D90();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1C61C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1C664()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C6CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1C720()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C764()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1C7AC()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1C7FC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C834()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1C900()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1C944()
{

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  sub_306C((v0 + 120));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_1C9CC()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1CA0C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1CA48()
{

  sub_306C((v0 + 40));
  sub_306C((v0 + 80));

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_1CA98()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1CAE0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1CB18()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1CB68()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1CC10()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1CC50()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1CFA0()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1D0E8()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 72) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);

  v8 = v4 + v6;

  v9 = v5[9];
  v10 = sub_2CD230();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = v8 + v5[11];
  v13 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_2CA130();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  v15 = v5[12];
  v16 = sub_2CA000();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v8 + v15, 1, v16))
  {
    (*(v17 + 8))(v8 + v15, v16);
  }

  return _swift_deallocObject(v4, v6 + v7);
}

uint64_t sub_1D3C4()
{
  v1 = sub_2CA630();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1D44C()
{
  v1 = sub_2CA630();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1D510()
{
  v1 = sub_2CD230();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2CA630();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1D66C()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CA000();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1D7BC()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1D814()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1D874()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1D8D4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1D914()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1D954()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1D990(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_20410(&unk_3530C0, &unk_2D0A40);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[9];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_1DB2C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_20410(&unk_3530C0, &unk_2D0A40);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DCC4()
{

  return _swift_deallocObject(v0, 81);
}

uint64_t sub_1DD1C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1DD54()
{
  v1 = sub_20410(&qword_3524B0, &unk_2D8440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1DE40()
{
  v1 = sub_20410(&qword_3524B0, &unk_2D8440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2C8BB0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1DF94()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1DFD0()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_20410(&qword_3524B0, &unk_2D8440);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1E0FC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1E134()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1E190()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1E268()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1E2F0()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1E3F4()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1E444()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1E494()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1E4D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ResponseFactoryOutputContext(0);
  v29 = *(*(v6 - 1) + 80);
  v28 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = (v29 + v5 + 8) & ~v29;

  v8 = v0 + v7;

  v9 = v0 + v7 + v6[5];
  v10 = type metadata accessor for SnippetModelResponse(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v27 = (v29 + v5 + 8) & ~v29;
    v11 = sub_2CD230();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(v9, 1, v11))
    {
      (*(v12 + 8))(v9, v11);
    }

    v14 = *(v10 + 20);
    if (!v13(v9 + v14, 1, v11))
    {
      (*(v12 + 8))(v9 + v14, v11);
    }

    v7 = v27;
  }

  v15 = v8 + v6[7];
  v16 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = sub_2CA130();
    (*(*(v17 - 8) + 8))(v15, v17);
  }

  v18 = v6[8];
  v19 = sub_2CA000();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v8 + v18, 1, v19))
  {
    (*(v20 + 8))(v8 + v18, v19);
  }

  v21 = (v8 + v6[11]);
  v22 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (*(v21 + 3))
    {
      sub_306C(v21);
    }

    v23 = *(v22 + 20);
    v24 = sub_2CD140();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(&v21[v23], 1, v24))
    {
      (*(v25 + 8))(&v21[v23], v24);
    }
  }

  return _swift_deallocObject(v0, v7 + v28);
}

uint64_t sub_1E9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_20410(&qword_356420, &unk_2D88A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1EA78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_20410(&qword_356420, &unk_2D88A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1EB28(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_20410(&qword_356410, &qword_2D8888);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_20410(&unk_353020, &unk_2D0970);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_20410(&qword_3564D0, qword_2D88D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[11]];

  return v17(v18, a2, v16);
}

char *sub_1ED18(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_20410(&qword_356410, &qword_2D8888);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_20410(&unk_353020, &unk_2D0970);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_20410(&qword_3564D0, qword_2D88D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1EEFC()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1EF50()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1EFB0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F0D8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F120()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1F16C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F1AC()
{
  v1 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1F27C()
{
  v1 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1F314()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1F364()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F3A4()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1F45C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F498()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_306C((v0 + v4));

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1F544()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1F584()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_306C((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1F68C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F6C4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1F768()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F7A0()
{

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1F820(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2CAFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_20410(&qword_34D718, &unk_2D15F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[18];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_20410(&qword_34D6A0, &unk_2D3490);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[28];
    goto LABEL_13;
  }

  v17 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[31];
    goto LABEL_13;
  }

  v18 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[32];

  return v19(v20, a2, v18);
}

uint64_t sub_1FA54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2CAFE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_20410(&qword_34D718, &unk_2D15F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[18];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_20410(&qword_34D6A0, &unk_2D3490);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[28];
    goto LABEL_11;
  }

  v17 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[31];
    goto LABEL_11;
  }

  v18 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[32];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1FC8C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1FCD0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1FD10()
{
  v1 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = v0 + v2;
  v5 = sub_2CD270();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = *(v1 + 24);
  v8 = sub_2CC380();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1FEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_352960, &qword_2D5110);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_20410(&qword_357570, &qword_2D9798);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20410(&qword_352960, &qword_2D5110);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_20410(&qword_357570, &qword_2D9798);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_201B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DetermineIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DetermineIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t variable initialization expression of ExecuteMusicOnRemoteFlow.inputToExecute@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2CA7B0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of ExecuteMusicOnRemoteFlow.companionNotInRangeErrorCodes()
{
  sub_20410(&qword_34C150, &qword_2D00B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2D0050;
  *(v0 + 32) = xmmword_2D0060;
  *&result = 1011;
  *(v0 + 48) = xmmword_2D0070;
  *(v0 + 64) = xmmword_2D0080;
  *(v0 + 80) = 1017;
  return result;
}

uint64_t sub_20410(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_20468(uint64_t a1)
{
  sub_20410(&qword_34C150, &qword_2D00B0);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_2D0090;
  *(v2 + 32) = a1;
  return result;
}

uint64_t variable initialization expression of InternalSignalsManager.lock()
{
  sub_2CB4A0();
  sub_2CB490();
  sub_2CB810();
  swift_allocObject();
  return sub_2CB7F0();
}

Swift::Int sub_20570()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CEF60(v1);
  return sub_2CEF80();
}

Swift::Int sub_205B8(uint64_t a1)
{
  v2 = *v1;
  sub_2CEF50();
  sub_2CEF60(v2);
  return sub_2CEF80();
}

_DWORD *sub_205FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_20634(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_206AC(uint64_t a1)
{
  v84 = sub_2CD040();
  v82 = *(v84 - 8);
  v2 = __chkstk_darwin(v84);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v83 = &v80 - v5;
  v6 = sub_2CE000();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v80 - v17;
  __chkstk_darwin(v16);
  v20 = &v80 - v19;
  v21 = sub_2CD050();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v24, a1, v21);
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for AppResolutionResult.needsConfirmation(_:))
  {
    (*(v22 + 96))(v24, v21);
    v26 = *v24;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = v86;
    v28 = sub_3ED0(v86, static Logger.default);
    swift_beginAccess();
    v29 = v85;
    (*(v85 + 16))(v18, v28, v27);

    v30 = sub_2CDFE0();
    v31 = sub_2CE690();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v87 = v26;
      v88 = v33;
      *v32 = 136315138;
      sub_2CCFB0();
      sub_21334(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
      v34 = sub_2CEE70();
      v36 = sub_3F08(v34, v35, &v88);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "AppResolutionAction#from confirm %s", v32, 0xCu);
      sub_306C(v33);
    }

    (*(v29 + 8))(v18, v27);
    sub_2CA300();
    v37 = sub_2CA2F0();
LABEL_7:
    v38 = v37;

    return v38;
  }

  if (v25 == enum case for AppResolutionResult.needsDisambiguation(_:))
  {
    (*(v22 + 96))(v24, v21);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = v86;
    v40 = sub_3ED0(v86, static Logger.default);
    swift_beginAccess();
    v41 = v85;
    (*(v85 + 16))(v15, v40, v39);

    v42 = sub_2CDFE0();
    v43 = sub_2CE690();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v88 = v45;
      *v44 = 136315138;
      sub_2CCFB0();
      v46 = sub_2CE420();
      v48 = sub_3F08(v46, v47, &v88);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "AppResolutionAction#from disambiguate %s", v44, 0xCu);
      sub_306C(v45);
    }

    (*(v41 + 8))(v15, v39);
    sub_2CA300();
    v38 = sub_2CA2D0();
  }

  else
  {
    if (v25 == enum case for AppResolutionResult.selected(_:))
    {
      (*(v22 + 96))(v24, v21);
      v50 = *v24;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v51 = v86;
      v52 = sub_3ED0(v86, static Logger.default);
      swift_beginAccess();
      v53 = v85;
      (*(v85 + 16))(v20, v52, v51);

      v54 = sub_2CDFE0();
      v55 = sub_2CE690();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v87 = v50;
        v88 = v57;
        *v56 = 136315138;
        sub_2CCFB0();
        sub_21334(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
        v58 = sub_2CEE70();
        v60 = sub_3F08(v58, v59, &v88);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_0, v54, v55, "AppResolutionAction#from selected %s", v56, 0xCu);
        sub_306C(v57);
      }

      (*(v53 + 8))(v20, v51);
      sub_2CA300();
      v37 = sub_2CA2E0();
      goto LABEL_7;
    }

    if (v25 == enum case for AppResolutionResult.unsuccessful(_:))
    {
      (*(v22 + 96))(v24, v21);
      v62 = v82;
      v61 = v83;
      v63 = v84;
      (*(v82 + 32))(v83, v24, v84);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v64 = v86;
      v65 = sub_3ED0(v86, static Logger.default);
      swift_beginAccess();
      v66 = v85;
      (*(v85 + 16))(v12, v65, v64);
      v67 = *(v62 + 16);
      v67(v4, v61, v63);
      v68 = sub_2CDFE0();
      v69 = sub_2CE680();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v70 = 138412290;
        sub_21334(&unk_34C160, &type metadata accessor for AppResolutionResult.AppResolutionResultError, &protocol conformance descriptor for AppResolutionResult.AppResolutionResultError);
        swift_allocError();
        v67(v71, v4, v84);
        v72 = _swift_stdlib_bridgeErrorToNSError();
        v73 = *(v62 + 8);
        v73(v4, v84);
        *(v70 + 4) = v72;
        v74 = v81;
        *v81 = v72;
        v63 = v84;
        _os_log_impl(&dword_0, v68, v69, "AppResolutionAction#from unsuccessful. Error %@", v70, 0xCu);
        sub_212CC(v74);

        v61 = v83;
      }

      else
      {

        v73 = *(v62 + 8);
        v73(v4, v63);
      }

      (*(v66 + 8))(v12, v86);
      sub_2CA300();
      v38 = sub_2CA2C0();
      v73(v61, v63);
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v75 = v86;
      v76 = sub_3ED0(v86, static Logger.default);
      swift_beginAccess();
      (*(v85 + 16))(v9, v76, v75);
      v77 = sub_2CDFE0();
      v78 = sub_2CE680();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_0, v77, v78, "AppResolutionAction#from unkown state, return .noAppFound", v79, 2u);
      }

      (*(v85 + 8))(v9, v86);
      sub_2CA300();
      v38 = sub_2CA2C0();
      (*(v22 + 8))(v24, v21);
    }
  }

  return v38;
}