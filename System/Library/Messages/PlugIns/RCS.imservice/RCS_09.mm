uint64_t RCSMessageReceiver.process(rcsMessage:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *v2;
  v3[29] = *(*v2 + 88);
  v3[30] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[31] = AssociatedTypeWitness;
  v6 = sub_F0DEC();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v3[35] = swift_task_alloc();
  v3[36] = *(AssociatedTypeWitness - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_212D4, 0, 0);
}

uint64_t RCSMessageReceiver.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_CFF44(uint64_t a1)
{
  sub_22B10(319, &qword_128490, " reason ");
  if (v1 <= 0x3F)
  {
    type metadata accessor for RCSMessage(319);
    if (v2 <= 0x3F)
    {
      sub_22B10(319, &qword_12A1C8, " info ");
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_D0004(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_22BE4, 0, 0);
}

uint64_t sub_D002C(uint64_t a1, uint64_t a2)
{
  v3 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_F068C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  if (a2)
  {

    sub_F063C();
    sub_F061C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_372B0(v5, &qword_128300, &unk_F68D0);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      sub_F064C();
      v14 = sub_F067C();
      v15 = *(v7 + 8);
      v15(v9, v6);
      if (v14)
      {
        v15(v12, v6);
        return 3;
      }

      sub_F065C();
      v16 = sub_F067C();
      v15(v9, v6);
      if (v16)
      {
        v15(v12, v6);
        return 7;
      }

      sub_F066C();
      v17 = sub_F067C();
      v15(v9, v6);
      if (v17)
      {
        v15(v12, v6);
        return 4;
      }

      sub_F060C();
      v18 = sub_F067C();
      v15(v9, v6);
      v15(v12, v6);
      if (v18)
      {
        return 5;
      }
    }
  }

  return 0;
}

void sub_D0300(uint64_t a1)
{
  sub_37310(319, &qword_12A258, IMMessageItem_ptr);
  if (v1 <= 0x3F)
  {
    sub_37310(319, &qword_12A260, IMToSuperParserContext_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RCSMessage(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          type metadata accessor for FZMessageFlags(319);
          if (v5 <= 0x3F)
          {
            sub_D0430(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_D0430(uint64_t a1)
{
  if (!qword_12A268)
  {
    type metadata accessor for IMAssociatedMessageContentType(255);
    v1 = sub_F0DEC();
    if (!v2)
    {
      atomic_store(v1, &qword_12A268);
    }
  }
}

uint64_t sub_D0488()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_12A270);
  sub_3C96C(v3, qword_12A270);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_D05B0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_12A288);
  sub_3C96C(v3, qword_12A288);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_D06D8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_12A2A0);
  sub_3C96C(v3, qword_12A2A0);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F047C();
}

uint64_t sub_D07FC()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_12A2B8);
  sub_3C96C(v3, qword_12A2B8);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F047C();
}

uint64_t sub_D0920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_237DC, 0, 0);
}

Swift::Int RCSHandle.BotStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_F12FC();
  sub_F130C(a1);
  return sub_F132C();
}

unint64_t sub_D09CC()
{
  result = qword_12A2D0;
  if (!qword_12A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A2D0);
  }

  return result;
}

uint64_t sub_D0A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_388C8(&qword_1299D0, &qword_F6890);
  v7[9] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[10] = v12;
  *v12 = v7;
  v12[1] = sub_23EC0;

  return sub_D11B0(a2, a3, a4, a6);
}

uint64_t sub_D0B48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 24) = a3;
  *(v8 + 32) = a6;
  *(v8 + 16) = a2;
  *(v8 + 72) = a1;
  v15 = swift_task_alloc();
  *(v8 + 56) = v15;
  *v15 = v8;
  v15[1] = sub_24764;

  return sub_D0C30(a1 & 1, a2, a3, a4, a5, a7);
}

uint64_t sub_D0C30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 256) = a6;
  *(v7 + 264) = v6;
  *(v7 + 240) = a4;
  *(v7 + 248) = a5;
  *(v7 + 224) = a2;
  *(v7 + 232) = a3;
  *(v7 + 616) = a1;
  *(v7 + 272) = type metadata accessor for RCSFile(0);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  sub_388C8(&qword_1299D0, &qword_F6890);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v8 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  *(v7 + 312) = v8;
  *(v7 + 320) = *(v8 - 8);
  *(v7 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_249F4, 0, 0);
}

void sub_D0D7C(void *a1, uint64_t a2)
{
  v3 = sub_F068C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  type metadata accessor for RCSFile(0);
  v8 = sub_F07BC();
  [a1 setTransferredFilename:v8];

  v9 = sub_F07BC();
  [a1 setMimeType:v9];

  sub_F063C();
  sub_F05EC();
  if ((*(v4 + 48))(v7, 1, v3) == 1)
  {
    sub_372B0(v7, &qword_128300, &unk_F68D0);
    v10 = 0;
  }

  else
  {
    sub_F05FC();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    v10 = sub_F07BC();
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  [a1 setType:v10];
}

uint64_t sub_D0FB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 guid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_F07EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  v9 = [a1 localPath];
  if (v9)
  {
    v10 = v9;
    v11 = sub_F07EC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  a2[2] = v11;
  a2[3] = v13;
  v14 = [a1 localURL];
  v15 = sub_388C8(&qword_128320, &qword_F34B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v22 - v16;
  if (v14)
  {
    sub_F01AC();

    v18 = sub_F01EC();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = sub_F01EC();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  v20 = sub_388C8(&qword_12A2D8, &unk_F68C0);
  return sub_81EC4(v17, a2 + *(v20 + 64));
}

uint64_t sub_D1180@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_D11B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for RCSFile(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_268D4, 0, 0);
}

uint64_t sub_D1258(uint64_t a1, uint64_t a2)
{
  v2 = sub_F07BC();
  v3 = [v2 pathExtension];
  v4 = sub_F07EC();
  v6 = v5;

  v7 = [v2 stringByDeletingPathExtension];
  v8 = sub_F07EC();

  sub_F0F9C(19);
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  v24._countAndFlagsBits = 0x616E626D7568742DLL;
  v24._object = 0xEB000000002E6C69;
  sub_F08CC(v24);
  v25._countAndFlagsBits = v4;
  v25._object = v6;
  sub_F08CC(v25);
  v6, v16, v17, v18, v19, v20, v21, v22;
  v26._countAndFlagsBits = 1735420462;
  v26._object = 0xE400000000000000;
  sub_F08CC(v26);

  return v8;
}

uint64_t sub_D1360(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = v5;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 472) = a1;
  return _swift_task_switch(sub_27A6C, 0, 0);
}

uint64_t sub_D1388(uint64_t a1)
{
  v2 = type metadata accessor for RCSFile(0);
  __chkstk_darwin(v2);
  v129 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  __chkstk_darwin(v4 - 8);
  v6 = v116 - v5;
  v131 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v7 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v130 = v116 - v10;
  v11 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v11 - 8);
  v13 = v116 - v12;
  v14 = sub_F068C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v116 - v19;
  v127 = v2;

  sub_F063C();
  sub_F05EC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_372B0(v13, &qword_128300, &unk_F68D0);
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v21 = sub_F06CC();
    sub_3C96C(v21, static Logger.rcs);
    v22 = sub_F06AC();
    v23 = sub_F0CCC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "No mimetype in file description, not using any thumbnail", v24, 2u);
    }

    return 0;
  }

  (*(v15 + 32))(v20, v13, v14);
  sub_F065C();
  v25 = sub_F067C();
  v27 = v15 + 8;
  v26 = *(v15 + 8);
  v26(v17, v14);
  if ((v25 & 1) == 0)
  {
    sub_F064C();
    v28 = sub_F067C();
    v26(v17, v14);
    if ((v28 & 1) == 0)
    {
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v63 = sub_F06CC();
      sub_3C96C(v63, static Logger.rcs);
      v64 = v129;
      sub_297F8(a1, v129, type metadata accessor for RCSFile);
      v65 = sub_F06AC();
      v66 = sub_F0CCC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v125 = v27;
        v68 = v67;
        v69 = v20;
        v70 = swift_slowAlloc();
        v132 = v70;
        *v68 = 136315138;
        v71 = &v64[*(v127 + 20)];
        v72 = *(v71 + 3);
        v73 = *(v71 + 4);

        sub_29750(v64, type metadata accessor for RCSFile);
        v74 = sub_3E850(v72, v73, &v132);
        v75 = v26;
        v76 = v74;
        v73, v77, v78, v79, v80, v81, v82, v83;
        *(v68 + 4) = v76;
        _os_log_impl(&dword_0, v65, v66, "Non A/V or image mimetype %s, not using any thumbnail", v68, 0xCu);
        sub_1EDC(v70);

        v75(v69, v14);
        return 0;
      }

      sub_29750(v64, type metadata accessor for RCSFile);
      goto LABEL_34;
    }
  }

  sub_37380(a1, v6, &qword_1299D0, &qword_F6890);
  if ((*(v7 + 48))(v6, 1, v131) == 1)
  {
    sub_372B0(v6, &qword_1299D0, &qword_F6890);
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v29 = sub_F06CC();
    sub_3C96C(v29, static Logger.rcs);
    v30 = sub_F06AC();
    v31 = sub_F0CCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "No thumbnail info found", v32, 2u);

      v33 = v20;
LABEL_35:
      v26(v33, v14);
      return 0;
    }

LABEL_34:
    v33 = v20;
    goto LABEL_35;
  }

  v129 = v26;
  v34 = v6;
  v35 = v130;
  sub_C2AB8(v34, v130);
  v36 = sub_F030C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_F02DC();
  sub_297B0(&qword_128BC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((sub_F07AC() & 1) == 0)
  {
    (*(v37 + 8))(v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
    sub_29750(v35, type metadata accessor for RCSFile.ThumbnailInformation);
    (v129)(v20, v14);
    return 1;
  }

  v123 = v116;
  v124 = v20;
  v126 = v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v36;
  v39 = v37;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v40 = sub_F06CC();
  sub_3C96C(v40, static Logger.rcs);
  v41 = v128;
  v42 = sub_297F8(v35, v128, type metadata accessor for RCSFile.ThumbnailInformation);
  v122 = v116;
  v43 = __chkstk_darwin(v42);
  v44 = v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v37 + 16);
  v46 = v126;
  v47 = v127;
  v45(v44, v126, v127, v43);
  v48 = sub_F06AC();
  v49 = sub_F0CCC();
  if (!os_log_type_enabled(v48, v49))
  {

    v84 = *(v39 + 8);
    v84(v44, v47);
    sub_29750(v41, type metadata accessor for RCSFile.ThumbnailInformation);
    v84(v46, v47);
    sub_29750(v35, type metadata accessor for RCSFile.ThumbnailInformation);
    (v129)(v124, v14);
    return 0;
  }

  v120 = v39;
  v121 = v44;
  v117 = v49;
  v118 = v48;
  v119 = v14;
  v125 = v27;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v132 = v51;
  v52 = v50;
  *v50 = 136315394;
  if (qword_128F70 != -1)
  {
    swift_once();
  }

  v53 = qword_12FCB8;
  v54 = qword_12FCB8 >> 62;
  if (qword_12FCB8 >> 62)
  {
    result = sub_F10DC();
  }

  else
  {
    result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
  }

  v116[1] = v51;
  if (result)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v56 = sub_F0FCC();
    }

    else
    {
      if (!*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_53;
      }

      v56 = *(v53 + 32);
    }

    v57 = v56;
    v58 = sub_F028C();
    v59 = [v57 stringFromDate:v58];

    v60 = sub_F07EC();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0xE000000000000000;
  }

  sub_29750(v41, type metadata accessor for RCSFile.ThumbnailInformation);
  v85 = sub_3E850(v60, v62, &v132);
  v62, v86, v87, v88, v89, v90, v91, v92;
  *(v52 + 1) = v85;
  *(v52 + 6) = 2080;
  v93 = v120;
  if (v54)
  {
    result = sub_F10DC();
  }

  else
  {
    result = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
  }

  v94 = v130;
  v95 = v121;
  v96 = v127;
  if (!result)
  {
    v101 = 0;
    v103 = 0xE000000000000000;
    v104 = v119;
    goto LABEL_47;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v97 = sub_F0FCC();
    goto LABEL_45;
  }

  if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
  {
    v97 = *(v53 + 32);
LABEL_45:
    v98 = v97;
    v99 = sub_F028C();
    v100 = [v98 stringFromDate:v99];

    v101 = sub_F07EC();
    v103 = v102;

    v95 = v121;
    v104 = v119;
    v96 = v127;
LABEL_47:
    v105 = *(v93 + 8);
    v106 = v96;
    v105(v95, v96);
    v107 = sub_3E850(v101, v103, &v132);
    v103, v108, v109, v110, v111, v112, v113, v114;
    *(v52 + 14) = v107;
    v115 = v118;
    _os_log_impl(&dword_0, v118, v117, "RCS Thumbnail has passed expiration (%s, not auto downloading (now %s", v52, 0x16u);
    swift_arrayDestroy();

    v105(v126, v106);
    sub_29750(v94, type metadata accessor for RCSFile.ThumbnailInformation);
    (v129)(v124, v104);
    return 0;
  }

LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_D2074()
{
  result = qword_12A2E0;
  if (!qword_12A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A2E0);
  }

  return result;
}

unint64_t sub_D20C8()
{
  result = qword_128050;
  if (!qword_128050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128050);
  }

  return result;
}

void CTGroupDestinationProviding.groupUri.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 destination];
    v6 = sub_F07EC();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v13, v9, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);

    if (!v10)
    {
      id = v13.id;
      *a2 = v13.scheme;
      *(a2 + 16) = id;
      *(a2 + 32) = *&v13.attributes._rawValue;
      *(a2 + 41) = *(&v13.alternateHandle + 1);
    }
  }

  else
  {
    sub_C2B84();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0x8000000000000000;
    swift_willThrow();
  }
}

id sub_D2218(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = [v2 remoteUri];

  return v3;
}

id CTLazuliMessageIncomingGroupChat.rawGroupUri.getter()
{
  v1 = [v0 chat];
  v2 = [v1 remoteUri];

  return v2;
}

id sub_D22E8()
{
  v1 = [*v0 chat];
  v2 = [v1 remoteUri];

  return v2;
}

uint64_t sub_D2344(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = a1;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v86 - v11;
  __chkstk_darwin(v13);
  v15 = &v86 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v86 - v18;
  if (((*(v20 + 32))(v21, v20, v17) & 1) == 0)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v40 = sub_F06CC();
    sub_3C96C(v40, static Logger.rcs);
    (*(v7 + 16))(v19, v3, a2);
    v23 = sub_F06AC();
    v41 = sub_F0CDC();
    if (os_log_type_enabled(v23, v41))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v87 = v26;
      *v25 = 136315138;
      v42 = a3[1](a2, a3);
      v44 = v43;
      (*(v7 + 8))(v19, a2);
      v45 = sub_3E850(v42, v44, &v87);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v25 + 4) = v45;
      v38 = "%s unreachable beacuse doesn't support chat";
      v39 = v41;
      goto LABEL_12;
    }

    (*(v7 + 8))(v19, a2);
    return 0;
  }

  if (v6 & 1) == 0 && (a3[8](a2, a3))
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v22 = sub_F06CC();
    sub_3C96C(v22, static Logger.rcs);
    (*(v7 + 16))(v15, v3, a2);
    v23 = sub_F06AC();
    v24 = sub_F0CDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v87 = v26;
      *v25 = 136315138;
      v27 = a3[1](a2, a3);
      v29 = v28;
      (*(v7 + 8))(v15, a2);
      v30 = sub_3E850(v27, v29, &v87);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v25 + 4) = v30;
      v38 = "%s unreachable because destination is offline and this is not a group";
      v39 = v24;
LABEL_12:
      _os_log_impl(&dword_0, v23, v39, v38, v25, 0xCu);
      sub_1EDC(v26);

      return 0;
    }

    (*(v7 + 8))(v15, a2);
    return 0;
  }

  if (a3[7](a2, a3))
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v54 = sub_F06CC();
    sub_3C96C(v54, static Logger.rcs);
    (*(v7 + 16))(v12, v3, a2);
    v55 = sub_F06AC();
    v56 = sub_F0CDC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v87 = v58;
      *v57 = 136315138;
      v59 = a3[1](a2, a3);
      v61 = v60;
      (*(v7 + 8))(v12, a2);
      v62 = sub_3E850(v59, v61, &v87);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v57 + 4) = v62;
      _os_log_impl(&dword_0, v55, v56, "%s reachable because is bot and supports chat", v57, 0xCu);
      sub_1EDC(v58);
    }

    else
    {

      (*(v7 + 8))(v12, a2);
    }
  }

  else
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v70 = sub_F06CC();
    sub_3C96C(v70, static Logger.rcs);
    (*(v7 + 16))(v9, v3, a2);
    v71 = sub_F06AC();
    v72 = sub_F0CDC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v73 = 136315138;
      v75 = a3[1](a2, a3);
      v77 = v76;
      (*(v7 + 8))(v9, a2);
      v78 = sub_3E850(v75, v77, &v87);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v73 + 4) = v78;
      _os_log_impl(&dword_0, v71, v72, "%s reachable because supports text and transfer", v73, 0xCu);
      sub_1EDC(v74);
    }

    else
    {

      (*(v7 + 8))(v9, a2);
    }
  }

  return 1;
}

id sub_D2AA4(void *a1, int a2, uint64_t a3, RCSServiceSession *a4)
{
  v37 = a2;
  v6 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_373E8(a1, v10);
  v12 = (*(v11 + 80))(v10, v11);
  v13 = [objc_opt_self() sharedFeatureFlags];
  v14 = [v13 isRCSEncryptionEnabled];

  if (qword_128F88 != -1)
  {
    swift_once();
  }

  v15 = sub_3C96C(v6, qword_129D98);
  (*(v7 + 16))(v9, v15, v6);
  sub_F044C();
  (*(v7 + 8))(v9, v6);
  v16 = v38;
  if (!a4)
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_373E8(a1, v17);
    (*(v18 + 8))(v17, v18);
    a4 = v19;
  }

  v20 = v16 | v14 & v12;
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_F07BC();
  a4, v23, v24, v25, v26, v27, v28, v29;
  v30 = IMServiceNameRCS;
  v31 = a1[3];
  v32 = a1[4];
  sub_373E8(a1, v31);
  v33 = v30;
  v34 = [v21 initWithHandleID:v22 service:v33 isReachable:sub_D2344(v37 & 1 supportsEncryption:{v31, v32) & 1, v20 & 1}];

  sub_1EDC(a1);
  return v34;
}

uint64_t RCSPersistentMenu.properties.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_128F48;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_F06CC();
    sub_3C96C(v4, static Logger.chatbot);
    v5 = sub_F06AC();
    v6 = sub_F0CCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Fetched persistent menu", v7, 2u);
    }

    v8 = [v3 dictionaryRepresentation];
    v9 = sub_F076C();
  }

  else
  {
    if (qword_128F48 != -1)
    {
      swift_once();
    }

    v10 = sub_F06CC();
    sub_3C96C(v10, static Logger.chatbot);
    v11 = sub_F06AC();
    v12 = sub_F0CEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Empty stamped persistent menu", v13, 2u);
    }

    v8 = [objc_opt_self() emptyStampProperty];
    v9 = sub_F076C();
  }

  return v9;
}

uint64_t RCSPersistentMenu.__allocating_init(menu:)(void *a1)
{
  v2 = swift_allocObject();
  sub_D36C4(a1);
  v4 = v3;

  *(v2 + 16) = v4;
  return v2;
}

uint64_t RCSPersistentMenu.init(menu:)(void *a1)
{
  sub_D36C4(a1);
  v4 = v3;

  *(v1 + 16) = v4;
  return v1;
}

id sub_D301C(void *a1)
{
  v1 = a1;
  v2 = [a1 list];
  sub_37310(0, &qword_12A3C0, CTLazuliChatBotMenuL2Content_ptr);
  v3 = sub_F09FC();

  if (!(v3 >> 62))
  {
    v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:
    v3, v4, v5, v6, v7, v8, v9, v10;
    v20 = [v1 displayText];
    sub_F07EC();
    v22 = v21;

    v23 = objc_allocWithZone(IMPersistentMenu);
    v24 = sub_F07BC();
    v22, v25, v26, v27, v28, v29, v30, v31;
    sub_F0D7C();
    v32 = sub_F09EC();
    _swiftEmptyArrayStorage, v33, v34, v35, v36, v37, v38, v39;
    v40 = [v23 initWithLevel:2 displayText:v24 items:v32];

    return v40;
  }

  v11 = sub_F10DC();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = objc_opt_self();
  if (v11 >= 1)
  {
    v13 = result;
    v41 = v1;
    for (i = 0; i != v11; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v15 = sub_F0FCC();
      }

      else
      {
        v15 = *(v3 + 8 * i + 32);
      }

      v16 = v15;
      v17 = [v15 chip];
      v18 = sub_F07BC();
      v19 = [v13 IMChipFromCTChip:v17 originalID:v18];

      [objc_allocWithZone(IMPersistentMenuItem) initWithType:0 content:v19];
      sub_F09DC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_F0A1C();
      }

      sub_F0A3C();
    }

    v1 = v41;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_D32C4(void *a1)
{
  v1 = a1;
  v63 = _swiftEmptyArrayStorage;
  v2 = [a1 list];
  sub_37310(0, &qword_12A3B0, CTLazuliChatBotMenuL1Content_ptr);
  v3 = sub_F09FC();

  if (v3 >> 62)
  {
    v11 = sub_F10DC();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_21:
    v3, v4, v5, v6, v7, v8, v9, v10;
    v14 = _swiftEmptyArrayStorage;
LABEL_22:
    v39 = [v1 displayText];
    sub_F07EC();
    v41 = v40;

    v42 = objc_allocWithZone(IMPersistentMenu);
    v43 = sub_F07BC();
    v41, v44, v45, v46, v47, v48, v49, v50;
    sub_F0D7C();
    v51 = sub_F09EC();
    v14, v52, v53, v54, v55, v56, v57, v58;
    [v42 initWithLevel:1 displayText:v43 items:v51];

    return;
  }

  v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v59 = v1;
    v12 = 0;
    v13 = v3 & 0xC000000000000001;
    v14 = _swiftEmptyArrayStorage;
    v15 = &unk_12A3B8;
    while (1)
    {
      v23 = v13 ? sub_F0FCC() : *(v3 + 8 * v12 + 32);
      v24 = v23;
      v25 = [v23 item];
      sub_F0E6C();
      swift_unknownObjectRelease();
      sub_37310(0, v15, CTLazuliChatBotMenuL2_ptr);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_37310(0, &qword_12A3A8, CTLazuliChatBotSuggestedChip_ptr);
      if (swift_dynamicCast())
      {
        v26 = v61;
        v60 = [v24 type];
        v30 = objc_opt_self();
        v31 = v3;
        v32 = v11;
        v33 = v13;
        v34 = v14;
        v35 = v15;
        v36 = sub_F07BC();
        v28 = [v30 IMChipFromCTChip:v61 originalID:v36];

        v15 = v35;
        v14 = v34;
        v13 = v33;
        v11 = v32;
        v3 = v31;
        v29 = [objc_allocWithZone(IMPersistentMenuItem) initWithType:v60 content:v28];
LABEL_14:
        v37 = v29;

        sub_1EDC(v62);
        if (v37)
        {
          v38 = v37;
          sub_F09DC();
          if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_F0A1C();
          }

          sub_F0A3C();

          v14 = v63;
        }

        else
        {
        }

        goto LABEL_6;
      }

      sub_1EDC(v62);
LABEL_6:
      if (v11 == ++v12)
      {
        v3, v16, v17, v18, v19, v20, v21, v22;
        v1 = v59;
        goto LABEL_22;
      }
    }

    v26 = v61;
    v27 = [v24 type];
    v28 = sub_D301C(v61);
    v29 = [objc_allocWithZone(IMPersistentMenuItem) initWithType:v27 content:v28];
    goto LABEL_14;
  }

  __break(1u);
}

void sub_D36C4(void *a1)
{
  v1 = [a1 persistentMenu];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v48 = _swiftEmptyArrayStorage;
  v3 = [v1 list];
  sub_37310(0, &qword_12A398, CTLazuliChatBotMenuL0Content_ptr);
  v4 = sub_F09FC();

  if (v4 >> 62)
  {
    v12 = sub_F10DC();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_23:
    v4, v5, v6, v7, v8, v9, v10, v11;
    v34 = _swiftEmptyArrayStorage;
LABEL_24:
    v35 = objc_allocWithZone(IMPersistentMenu);
    sub_F0D7C();
    v36 = sub_F09EC();
    v34, v37, v38, v39, v40, v41, v42, v43;
    [v35 initWithLevel:0 displayText:0 items:v36];

    return;
  }

  v12 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_4:
  if (v12 >= 1)
  {
    v44 = v2;
    v13 = 0;
    v45 = _swiftEmptyArrayStorage;
    v14 = &unk_12A3A0;
    while (1)
    {
      v22 = (v4 & 0xC000000000000001) != 0 ? sub_F0FCC() : *(v4 + 8 * v13 + 32);
      v23 = v22;
      v24 = [v22 item];
      sub_F0E6C();
      swift_unknownObjectRelease();
      sub_37310(0, v14, CTLazuliChatBotMenuL1_ptr);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_37310(0, &qword_12A3A8, CTLazuliChatBotSuggestedChip_ptr);
      if (swift_dynamicCast())
      {
        v25 = v46;
        v26 = [v23 type];
        v29 = objc_opt_self();
        v30 = v14;
        v31 = sub_F07BC();
        v28 = [v29 IMChipFromCTChip:v46 originalID:v31];

        v14 = v30;
LABEL_15:
        v32 = [objc_allocWithZone(IMPersistentMenuItem) initWithType:v26 content:v28];

        sub_1EDC(v47);
        if (v32)
        {
          v33 = v32;
          sub_F09DC();
          if (*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v48 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_F0A1C();
          }

          sub_F0A3C();

          v45 = v48;
        }

        else
        {
        }

        goto LABEL_7;
      }

      sub_1EDC(v47);
LABEL_7:
      if (v12 == ++v13)
      {
        v4, v15, v16, v17, v18, v19, v20, v21;
        v2 = v44;
        v34 = v45;
        goto LABEL_24;
      }
    }

    v25 = v46;
    v26 = [v23 type];
    sub_D32C4(v46);
    v28 = v27;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_D3A9C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE800000000000000;
    if (a2 != 2)
    {
      v7 = 0xE500000000000000;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    if (a2 <= 1u)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v2 = 0xEE00796C70655264;
    v3 = 0xEF6E6F6974634164;
    if (a2 != 7)
    {
      v3 = 0xEC0000006E6F6974;
    }

    if (a2 != 6)
    {
      v2 = v3;
    }

    v4 = 0xE600000000000000;
    if (a2 != 4)
    {
      v4 = 0xE900000000000073;
    }

    if (a2 <= 5u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }
  }

  sub_F089C();

  v5, v8, v9, v10, v11, v12, v13, v14;
}

id RCSMessage.fromChatBot.getter()
{
  sub_5BD2C(v0, v73);
  if (v74[58])
  {
    v1 = v73[1];
    v2 = v73[3];
    v3 = v73[4];
    v4 = v73[6];
    if (*(v0 + *(type metadata accessor for RCSMessage(0) + 44)) == 1)
    {
      v3, v5, v6, v7, v8, v9, v10, v11;
      v2, v12, v13, v14, v15, v16, v17, v18;
      v1, v19, v20, v21, v22, v23, v24, v25;
      v4, v26, v27, v28, v29, v30, v31, v32;
      v33 = &dword_0 + 1;
    }

    else
    {
      v34 = v73[2];
      v72 = v73[0];

      v75._countAndFlagsBits = 58;
      v75._object = 0xE100000000000000;
      sub_F08CC(v75);
      v76._countAndFlagsBits = v34;
      v76._object = v2;
      sub_F08CC(v76);
      v3, v35, v36, v37, v38, v39, v40, v41;
      v2, v42, v43, v44, v45, v46, v47, v48;
      v1, v49, v50, v51, v52, v53, v54, v55;
      v4, v56, v57, v58, v59, v60, v61, v62;
      v63 = sub_F07BC();
      v1, v64, v65, v66, v67, v68, v69, v70;
      v33 = [v63 __im_isChatBot];
    }

    sub_5BD88(v74);
  }

  else
  {
    sub_5EFF4(v73);
    return 0;
  }

  return v33;
}

unint64_t RCSMessage.SenderInfo.description.getter()
{
  sub_5BD2C(v0, &v46);
  if (v50)
  {
    v51[0] = v46;
    v51[1] = v47;
    v52[0] = v48[0];
    *(v52 + 9) = *(v48 + 9);
    v43 = v48[2];
    v44 = v48[3];
    v45[0] = *v49;
    *(v45 + 10) = *&v49[10];
    sub_F0F9C(42);
    0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
    v8 = RCSHandle.rawValue.getter();
    v10 = v9;
    sub_3CAB8(v51);
    v53._countAndFlagsBits = v8;
    v53._object = v10;
    sub_F08CC(v53);
    v10, v11, v12, v13, v14, v15, v16, v17;
    v54._countAndFlagsBits = 0x6E6974736564202CLL;
    v54._object = 0xEE003D6E6F697461;
    sub_F08CC(v54);
    v55._countAndFlagsBits = RCSDestination.description.getter();
    object = v55._object;
    sub_F08CC(v55);
    object, v19, v20, v21, v22, v23, v24, v25;
    v56._countAndFlagsBits = 41;
    v56._object = 0xE100000000000000;
    sub_F08CC(v56);
    v26 = 0xD000000000000017;
  }

  else
  {
    v43 = v46;
    v44 = v47;
    v45[0] = v48[0];
    *(v45 + 10) = *(v48 + 10);
    *&v51[0] = 0;
    *(&v51[0] + 1) = 0xE000000000000000;
    sub_F0F9C(17);
    *(&v51[0] + 1), v27, v28, v29, v30, v31, v32, v33;
    strcpy(v51, "SenderInfo.to(");
    HIBYTE(v51[0]) = -18;
    v57._countAndFlagsBits = RCSDestination.description.getter();
    v34 = v57._object;
    sub_F08CC(v57);
    v34, v35, v36, v37, v38, v39, v40, v41;
    v58._countAndFlagsBits = 41;
    v58._object = 0xE100000000000000;
    sub_F08CC(v58);
    v26 = *&v51[0];
  }

  sub_5BD88(&v43);
  return v26;
}

uint64_t RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, RCSServiceSession *a14, char a15)
{
  v18 = type metadata accessor for RCSMessage(0);
  v19 = v18[8];
  v20 = type metadata accessor for RCSMessage.Content(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[v18[9]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  a9[v18[13]] = 0;
  *&a9[v18[14]] = 0;
  sub_5BD2C(a1, a9);
  *(a9 + 16) = a2;
  *(a9 + 17) = a3;
  *(a9 + 18) = a4;
  *(a9 + 19) = a5;
  v22 = &a9[v18[15]];
  *v22 = a6;
  *(v22 + 1) = a7;
  *(v22 + 2) = a8;
  *(v22 + 3) = a10;
  sub_1CDE8(a11, &a9[v19], &unk_127FA0, &qword_F34C0);
  sub_1CDE8(a12, v21, &qword_127B08, &qword_F29A0);
  *(a9 + 20) = a13;
  *&a9[v18[10]] = a14;
  a9[v18[11]] = a15;
  if (*a14[1].IMDTelephonyServiceSession_opaque)
  {

    v23 = sub_E92AC();
    if (v24)
    {
      v31 = (*a14[3].state + 16 * v23);
      v33 = *v31;
      v32 = v31[1];
    }

    else
    {
      v32 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
    }

    a14, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v32 = 0xE700000000000000;
    v33 = 0x6E776F6E6B6E75;
  }

  sub_372B0(a12, &qword_127B08, &qword_F29A0);
  sub_372B0(a11, &unk_127FA0, &qword_F34C0);
  result = sub_5EFF4(a1);
  v35 = &a9[v18[12]];
  *v35 = v33;
  *(v35 + 1) = v32;
  return result;
}

uint64_t RCSMessage.sender.getter@<X0>(uint64_t a1@<X8>)
{
  sub_5BD2C(v1, v12);
  if (v17[58])
  {
    v10 = v12[0];
    v11 = v12[1];
    v3 = v13;
    v4 = v14;
    v5 = v15;
    v6 = v16;
    result = sub_5BD88(v17);
    v8 = v10;
    v9 = v11;
  }

  else
  {
    result = sub_5EFF4(v12);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  return result;
}

BOOL RCSMessage.looksLikeFromChatBot.getter()
{
  sub_5BD2C(v0, v35);
  if (v37[58])
  {
    v1 = v35[1];
    v2 = v35[3];
    v3 = v35[4];
    v4 = v35[6];
    v5 = v36;
    sub_5BD88(v37);
    v3, v6, v7, v8, v9, v10, v11, v12;
    v2, v13, v14, v15, v16, v17, v18, v19;
    v1, v20, v21, v22, v23, v24, v25, v26;
    v4, v27, v28, v29, v30, v31, v32, v33;
    return (v5 - 1) < 2;
  }

  else
  {
    sub_5EFF4(v35);
    return 0;
  }
}

uint64_t RCSMessage.fromMe.getter()
{
  sub_5BD2C(v0, v34);
  v8 = v36;
  if (v36)
  {
    v9 = v34[1];
    v10 = v34[3];
    v11 = v34[6];
    v34[4], v1, v2, v3, v4, v5, v6, v7;
    v10, v12, v13, v14, v15, v16, v17, v18;
    v9, v19, v20, v21, v22, v23, v24, v25;
    v11, v26, v27, v28, v29, v30, v31, v32;
    sub_5BD88(&v35);
  }

  else
  {
    sub_5EFF4(v34);
  }

  return v8 ^ 1u;
}

__n128 RCSMessage.destination.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v37;
  sub_5BD2C(v1, v37);
  if (v38[58] == 1)
  {
    v11 = v37[1];
    v12 = v37[3];
    v13 = v37[6];
    v37[4], v4, v5, v6, v7, v8, v9, v10;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v11, v21, v22, v23, v24, v25, v26, v27;
    v13, v28, v29, v30, v31, v32, v33, v34;
    v3 = v38;
  }

  v35 = *(v3 + 1);
  *a1 = *v3;
  *(a1 + 16) = v35;
  *(a1 + 32) = *(v3 + 2);
  result = *(v3 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t RCSMessage.originalID.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

void RCSMessage.originalID.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 128) = a1;
  *(v8 + 136) = a2;
}

uint64_t RCSMessage.messageID.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void RCSMessage.messageID.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 152), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
}

void *RCSMessage.encryption.getter()
{
  v1 = *(v0 + 160);
  sub_3896C(v1);
  return v1;
}

uint64_t RCSMessage.metadata.getter()
{
  type metadata accessor for RCSMessage(0);
}

void RCSMessage.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSMessage(0) + 40);
  *(v1 + v3), v4, v5, v6, v7, v8, v9, v10;
  *(v1 + v3) = a1;
}

uint64_t RCSMessage.isChatBot.setter(char a1)
{
  result = type metadata accessor for RCSMessage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t RCSMessage.advisedAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSMessage(0) + 48));

  return v1;
}

void RCSMessage.advisedAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RCSMessage(0) + 48);
  *(v5 + 8), v6, v7, v8, v9, v10, v11, v12;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t RCSMessage.alreadyReceivedReplicatedVersion.setter(char a1)
{
  result = type metadata accessor for RCSMessage(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_D4AC4()
{
  if (*v0)
  {
    return 0x44496D6973;
  }

  else
  {
    return 0x4449656C646E6168;
  }
}

void sub_D4AFC(uint64_t a1@<X0>, RCSServiceSession *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x4449656C646E6168 && a2 == 0xE800000000000000;
  if (v12 || (sub_F122C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x44496D6973 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_F122C();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_D4BE0(uint64_t a1)
{
  v2 = sub_D5F48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D4C1C(uint64_t a1)
{
  v2 = sub_D5F48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSMessage.SubscriptionInfo.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_388C8(&qword_12A3C8, &unk_F6AC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_373E8(a1, a1[3]);
  sub_D5F48();
  sub_F136C();
  v14 = 0;
  sub_F118C();
  if (!v5)
  {
    v13 = 1;
    sub_F118C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t RCSMessage.SubscriptionInfo.init(from:)(void *a1)
{
  result = sub_D5F9C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_D4E18@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_D5F9C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t RCSMessage.subscriptionInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSMessage(0) + 60));

  return v1;
}

void RCSMessage.subscriptionInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for RCSMessage(0) + 60);
  *(v9 + 8), v10, v11, v12, v13, v14, v15, v16;
  *(v9 + 24), v17, v18, v19, v20, v21, v22, v23;
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

unint64_t sub_D4F84@<X0>(Swift::String *a1@<X0>, CoreRCS::RCSMessage::ContentType_optional *a2@<X8>)
{
  result = _s7CoreRCS10RCSMessageV11ContentTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_D4FB4@<X0>(uint64_t *a1@<X8>)
{
  result = RCSMessage.ContentType.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_D5090()
{
  v1 = *v0;
  sub_F12FC();
  sub_D3A9C(v3, v1);
  return sub_F132C();
}

Swift::Int sub_D50E0(uint64_t a1)
{
  v2 = *v1;
  sub_F12FC();
  sub_D3A9C(v4, v2);
  return sub_F132C();
}

uint64_t RCSMessage.Content.type.getter()
{
  v1 = type metadata accessor for RCSMessage.Content(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D61B4(v0, v3);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        sub_29A0C(v3, type metadata accessor for RCSMessage.Content);
        return 2;
      }

      else
      {
        sub_29A0C(v3, type metadata accessor for RCSMessage.Content);
        return 3;
      }
    }

    else if (result)
    {
      sub_388C8(&qword_128028, &qword_F3670);

      sub_29A0C(v3, type metadata accessor for RCSFile);
      return 1;
    }

    else
    {
      sub_29A0C(v3, type metadata accessor for RCSMessage.Content);
      return 0;
    }
  }

  else if (result <= 5)
  {
    if (result != 4)
    {
      sub_29A0C(v3, type metadata accessor for RCSMessage.Content);
      return 5;
    }
  }

  else if (result == 6)
  {
    sub_29A0C(v3, type metadata accessor for RCSMessage.Content);
    return 6;
  }

  else if (result == 7)
  {
    sub_29A0C(v3, type metadata accessor for RCSMessage.Content);
    return 7;
  }

  else
  {
    return 8;
  }

  return result;
}

BOOL static RCSMessage.Encryption.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_D6218();
  return sub_F0DDC() & 1;
}

BOOL sub_D5390(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_D6218();
  return sub_F0DDC() & 1;
}

void RCSHandle.id.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t sub_D54A8()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_D5510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, RCSServiceSession *a3@<X1>, void *a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_D62B8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_D5538(uint64_t a1)
{
  v2 = sub_D6264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D5574(uint64_t a1)
{
  v2 = sub_D6264();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSMessage.Coordinates.encode(to:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = sub_388C8(&qword_12A3E0, &qword_F6AD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_373E8(a1, a1[3]);
  sub_D6264();
  sub_F136C();
  v15 = 0;
  sub_F11BC();
  if (!v5)
  {
    v14 = 1;
    sub_F11BC();
    v13 = 2;
    sub_F118C();
  }

  return (*(v8 + 8))(v10, v7);
}

void *RCSMessage.Coordinates.init(from:)(void *a1)
{
  result = sub_D63DC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_D5798@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_D63DC(a2);
  if (!v2)
  {
    *a1 = v6;
    a1[1] = v7;
    a1[2] = result;
    a1[3] = v5;
  }

  return result;
}

void sub_D5828(void *a1@<X0>, RCSServiceSession *a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, void *a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x676E697079547369 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_F122C();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_D58BC(uint64_t a1)
{
  v2 = sub_D65BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D58F8(uint64_t a1)
{
  v2 = sub_D65BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSMessage.Typing.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_388C8(&qword_12A3F0, &qword_F6AD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F136C();
  sub_F11AC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSMessage.Typing.init(from:)(void *a1)
{
  v3 = sub_388C8(&qword_12A400, &qword_F6AE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F135C();
  if (!v1)
  {
    v7 = sub_F115C();
    (*(v4 + 8))(v6, v3);
  }

  sub_1EDC(a1);
  return v7 & 1;
}

uint64_t sub_D5BB8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_388C8(&qword_12A400, &qword_F6AE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F135C();
  if (v2)
  {
    return sub_1EDC(a1);
  }

  v9 = sub_F115C();
  (*(v6 + 8))(v8, v5);
  result = sub_1EDC(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_D5D1C(void *a1)
{
  v2 = sub_388C8(&qword_12A3F0, &qword_F6AD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F136C();
  sub_F11AC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static RCSMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136))
  {
    return 1;
  }

  else
  {
    return sub_F122C();
  }
}

Swift::Int RCSMessage.hashValue.getter()
{
  sub_F12FC();
  sub_F089C();
  return sub_F132C();
}

Swift::Int sub_D5ED0(uint64_t a1)
{
  sub_F12FC();
  sub_F089C();
  return sub_F132C();
}

unint64_t sub_D5F48()
{
  result = qword_12A3D0;
  if (!qword_12A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3D0);
  }

  return result;
}

uint64_t sub_D5F9C(void *a1)
{
  v3 = sub_388C8(&qword_12A608, &qword_F7360);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D5F48();
  sub_F135C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_F113C();
    v10 = 1;
    sub_F113C();
    (*(v4 + 8))(v6, v3);
  }

  sub_1EDC(a1);
  return v7;
}

unint64_t _s7CoreRCS10RCSMessageV11ContentTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, RCSServiceSession *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_11F788;
  v13._object = a2;
  v4 = sub_F112C(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_D61B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D6218()
{
  result = qword_12A3D8;
  if (!qword_12A3D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12A3D8);
  }

  return result;
}

unint64_t sub_D6264()
{
  result = qword_12A3E8;
  if (!qword_12A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3E8);
  }

  return result;
}

uint64_t sub_D62B8(uint64_t a1, RCSServiceSession *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v10 || (sub_F122C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_F122C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {
    0xEB000000006E6F69, 0xEB000000006E6F69, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_F122C();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_D63DC(void *a1)
{
  v3 = sub_388C8(&qword_12A600, &qword_F7358);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_373E8(a1, a1[3]);
  sub_D6264();
  sub_F135C();
  if (!v1)
  {
    v9[15] = 0;
    sub_F116C();
    v9[14] = 1;
    sub_F116C();
    v9[13] = 2;
    v7 = sub_F113C();
    (*(v4 + 8))(v6, v3);
  }

  sub_1EDC(a1);
  return v7;
}

unint64_t sub_D65BC()
{
  result = qword_12A3F8;
  if (!qword_12A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3F8);
  }

  return result;
}

unint64_t sub_D6614()
{
  result = qword_12A408;
  if (!qword_12A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A408);
  }

  return result;
}

unint64_t sub_D666C()
{
  result = qword_12A410;
  if (!qword_12A410)
  {
    type metadata accessor for RCSMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A410);
  }

  return result;
}

void sub_D66EC(uint64_t a1)
{
  sub_BDDEC();
  if (v1 <= 0x3F)
  {
    sub_D6814(319);
    if (v2 <= 0x3F)
    {
      sub_29BD8(319, &qword_12A488, &qword_128C48, qword_F4230);
      if (v3 <= 0x3F)
      {
        sub_29BD8(319, &unk_12A490, &qword_128558, &unk_F4430);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_D6814(uint64_t a1)
{
  if (!qword_12A480)
  {
    type metadata accessor for RCSMessage.Content(255);
    v1 = sub_F0DEC();
    if (!v2)
    {
      atomic_store(v1, &qword_12A480);
    }
  }
}

__n128 sub_D6878(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_D68A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 123))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 122);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D68E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 107) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 123) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 123) = 0;
    }

    if (a2)
    {
      *(result + 122) = -a2;
    }
  }

  return result;
}

uint64_t sub_D6938(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 106) = 0u;
    v2 = a2 - 2;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 122) = a2;
  return result;
}

uint64_t sub_D697C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_D69D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSMessage.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_D6B8C(uint64_t a1)
{
  sub_29C2C(319, &qword_12A568, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_D6C84(319);
    if (v2 <= 0x3F)
    {
      sub_29C2C(319, &unk_12A580, &type metadata for RCSMessage.Coordinates);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RCSRichCards();
        if (v4 <= 0x3F)
        {
          type metadata accessor for RCSSuggestedReply();
          if (v5 <= 0x3F)
          {
            type metadata accessor for RCSSuggestedAction();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_D6C84(uint64_t a1)
{
  if (!qword_12A578)
  {
    type metadata accessor for RCSFile(255);
    sub_3CB70(&qword_12A570, &qword_F6F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_12A578);
    }
  }
}

uint64_t sub_D6D00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D6D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_D6DB0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_D6DE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_D6E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.Typing(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_D6F84()
{
  result = qword_12A5B0;
  if (!qword_12A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5B0);
  }

  return result;
}

unint64_t sub_D6FDC()
{
  result = qword_12A5B8;
  if (!qword_12A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5B8);
  }

  return result;
}

unint64_t sub_D7034()
{
  result = qword_12A5C0;
  if (!qword_12A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5C0);
  }

  return result;
}

unint64_t sub_D708C()
{
  result = qword_12A5C8;
  if (!qword_12A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5C8);
  }

  return result;
}

unint64_t sub_D70E4()
{
  result = qword_12A5D0;
  if (!qword_12A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5D0);
  }

  return result;
}

unint64_t sub_D713C()
{
  result = qword_12A5D8;
  if (!qword_12A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5D8);
  }

  return result;
}

unint64_t sub_D7194()
{
  result = qword_12A5E0;
  if (!qword_12A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5E0);
  }

  return result;
}

unint64_t sub_D71EC()
{
  result = qword_12A5E8;
  if (!qword_12A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5E8);
  }

  return result;
}

unint64_t sub_D7244()
{
  result = qword_12A5F0;
  if (!qword_12A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5F0);
  }

  return result;
}

unint64_t sub_D7298()
{
  result = qword_12A5F8;
  if (!qword_12A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5F8);
  }

  return result;
}

id CTLazuliOriginalMessageID.init(uuid:secureGroupVersion:)(uint64_t a1, RCSServiceSession *a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_F07BC();
  a2, v7, v8, v9, v10, v11, v12, v13;
  [v5 setUuid:v6];

  [v5 setSecureGroupVersion:a3];
  return v5;
}

id CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(uint64_t a1, RCSServiceSession *a2, void *a3, uint64_t a4, RCSServiceSession *a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = sub_F07BC();
  a2, v10, v11, v12, v13, v14, v15, v16;
  [v8 setUuid:v9];

  v17 = objc_allocWithZone(CTLazuliOriginalMessageID);
  v18 = a3;
  v19 = [v17 init];
  v20 = sub_F07BC();
  a5, v21, v22, v23, v24, v25, v26, v27;
  [v19 setUuid:v20];

  [v19 setSecureGroupVersion:v18];
  [v8 setOriginalId:v19];

  return v8;
}

id CTLazuliSecureGroupVersion.init(era:epoch:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_F0C5C();
  [v2 setEra:v3];

  v4 = sub_F0C5C();
  [v2 setEpoch:v4];

  return v2;
}

id CTLazuliGroupChatSubject.init(displayString:)(uint64_t a1, RCSServiceSession *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = sub_F07BC();
  a2, v5, v6, v7, v8, v9, v10, v11;
  [v3 setDisplayString:v4];

  return v3;
}

id CTLazuliMessageRevokeData.init(messageGUID:destination:)(uint64_t a1, RCSServiceSession *a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = objc_allocWithZone(CTLazuliMessageID);
  v7 = v5;
  v8 = [v6 init];
  v9 = sub_F07BC();
  a2, v10, v11, v12, v13, v14, v15, v16;
  [v8 setUuid:v9];

  [v7 setMessageID:v8];
  [v7 setDestination:a3];

  return v7;
}

RCSServiceSession *RCSRichCards.files()()
{
  v214 = type metadata accessor for RCSFile.DispositionInformation(0);
  __chkstk_darwin(v214);
  v207 = (&v207 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v208 = &v207 - v3;
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  __chkstk_darwin(v4 - 8);
  v211 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v222 = &v207 - v7;
  v213 = type metadata accessor for RCSFile(0);
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v210 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v209 = &v207 - v10;
  __chkstk_darwin(v11);
  v221 = &v207 - v12;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v220 = &v207 - v15;
  v16 = [*(v0 + 16) cards];
  sub_F0CAC();
  v17 = sub_F09FC();

  v228 = v17;
  if (v17 >> 62)
  {
LABEL_62:
    v25 = sub_F10DC();
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_63:
    v231 = _swiftEmptyArrayStorage;
LABEL_64:
    v228, v18, v19, v20, v21, v22, v23, v24;
    return v231;
  }

  v25 = *(&dword_10 + (v228 & 0xFFFFFFFFFFFFFF8));
  if (!v25)
  {
    goto LABEL_63;
  }

LABEL_3:
  v26 = 0;
  v226 = v228 & 0xFFFFFFFFFFFFFF8;
  v227 = v228 & 0xC000000000000001;
  v231 = _swiftEmptyArrayStorage;
  v27 = &selRef__setLocalPath_;
  v223 = v25;
  while (1)
  {
    if (v227)
    {
      v28 = sub_F0FCC();
    }

    else
    {
      if (v26 >= *(v226 + 16))
      {
        goto LABEL_61;
      }

      v28 = *(v228 + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v31 = [v28 v27[43]];
    if (v31)
    {
      break;
    }

LABEL_33:
    v124 = [v29 v27[43]];
    if (v124 && (v125 = v124, v126 = [v124 thumbnailUrl], v125, v126))
    {
      v229 = v30;
      sub_F07EC();
      v128 = v127;

      v129 = sub_F01EC();
      v130 = *(v129 - 8);
      __chkstk_darwin(v129);
      v132 = &v207 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
      v133 = sub_388C8(&qword_128320, &qword_F34B0);
      __chkstk_darwin(v133 - 8);
      v135 = &v207 - v134;
      sub_F01DC();
      if ((*(v130 + 48))(v135, 1, v129) == 1)
      {
        v128, v136, v137, v138, v139, v140, v141, v142;

        sub_DA158(v135);
        v27 = &selRef__setLocalPath_;
        v30 = v229;
        v25 = v223;
      }

      else
      {
        v225 = &v207;
        (*(v130 + 32))(v132, v135, v129);
        *&v233 = 0x69616E626D756874;
        *(&v233 + 1) = 0xEA00000000005F6CLL;
        v236 = v26;
        v238._countAndFlagsBits = sub_F11EC();
        object = v238._object;
        sub_F08CC(v238);
        object, v144, v145, v146, v147, v148, v149, v150;
        v151 = *(&v233 + 1);
        v152 = v233;
        result = [objc_opt_self() defaultHFSFileManager];
        if (!result)
        {
          goto LABEL_66;
        }

        v160 = result;
        v128, v153, v154, v155, v156, v157, v158, v159;
        v161 = [v29 media];
        if (!v161 || (v162 = v161, v163 = [v161 thumbnailContentType], v162, !v163))
        {
          v163 = 0;
        }

        v164 = [(RCSServiceSession *)v160 pathExtensionForMIMEType:v163];

        if (v164)
        {
          v165 = sub_F07BC();
          v166 = [v165 stringByAppendingPathExtension:v164];

          if (v166)
          {
            v152 = sub_F07EC();
            v168 = v167;
            v151, v167, v169, v170, v171, v172, v173, v174;

            v151 = v168;
          }
        }

        v175 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        v176 = *(v175 - 8);
        v219 = *(v176 + 56);
        v218 = (v176 + 56);
        (v219)(v211, 1, 1, v175);
        v177 = [v29 media];
        if (v177 && (v178 = v177, v179 = [v177 thumbnailFileSize], v178, v179))
        {
          v217 = [v179 integerValue];
        }

        else
        {
          v217 = 0;
        }

        v230 = v129;
        v180 = [v29 media];
        v232 = v29;
        v181 = v152;
        if (v180)
        {
          v182 = v132;
          v183 = v180;
          v184 = [v180 thumbnailContentType];

          if (v184)
          {
            v185 = sub_F07EC();
            v187 = v186;
          }

          else
          {
            v185 = 0;
            v187 = 0xE000000000000000;
          }

          v132 = v182;
        }

        else
        {
          v185 = 0;
          v187 = 0xE000000000000000;
        }

        v188 = v214;
        v189 = *(v130 + 16);
        v190 = v207;
        v191 = v207 + *(v214 + 28);
        v224 = v132;
        v189(v191, v132, v230);
        sub_F027C();
        v235 = 0;
        v233 = 0u;
        v234 = 0u;
        v192 = v190 + v188[10];
        v193 = v190 + v188[11];
        *(v193 + 32) = 0;
        *v193 = 0u;
        *(v193 + 16) = 0u;
        *v190 = v217;
        v190[1] = v181;
        v190[2] = v151;
        v190[3] = v185;
        v190[4] = v187;
        *(v190 + v188[9]) = 1;
        *v192 = 0;
        v192[8] = 1;

        sub_14A04(&v233, v193, &qword_1299C8, &qword_F5700);
        v194 = v209;
        (v219)(v209, 1, 1, v175);
        sub_14A04(v211, v194, &qword_1299D0, &qword_F6890);
        sub_29F7C(v190, v194 + *(v213 + 20), type metadata accessor for RCSFile.DispositionInformation);
        sub_C2B1C(v194, v210);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v231 = sub_29DA0(0, *v231[1].IMDTelephonyServiceSession_opaque + 1, 1, v231, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
        }

        v25 = v223;
        v202 = v232;
        v204 = *v231[1].IMDTelephonyServiceSession_opaque;
        v203 = *v231[1].state;
        v205 = v230;
        if (v204 >= v203 >> 1)
        {
          v231 = sub_29DA0((v203 > 1), v204 + 1, 1, v231, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
        }

        v151, v195, v196, v197, v198, v199, v200, v201;

        (*(v130 + 8))(v224, v205);
        v206 = v231;
        *v231[1].IMDTelephonyServiceSession_opaque = v204 + 1;
        sub_29F7C(v210, &v206->IMDTelephonyServiceSession_opaque[((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v204], type metadata accessor for RCSFile);
        sub_DA1C0(v209);
        v27 = &selRef__setLocalPath_;
        v30 = v229;
      }
    }

    else
    {
    }

    ++v26;
    if (v30 == v25)
    {
      goto LABEL_64;
    }
  }

  v230 = v26;
  v232 = v29;
  v32 = v31;
  v33 = [v31 mediaUrl];

  sub_F07EC();
  v35 = v34;

  v36 = sub_F01EC();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_388C8(&qword_128320, &qword_F34B0);
  __chkstk_darwin(v40 - 8);
  v42 = &v207 - v41;
  sub_F01DC();
  if ((*(v37 + 48))(v42, 1, v36) == 1)
  {
    v35, v43, v44, v45, v46, v47, v48, v49;
    sub_DA158(v42);
    v27 = &selRef__setLocalPath_;
    v26 = v230;
LABEL_32:
    v29 = v232;
    goto LABEL_33;
  }

  v219 = v37;
  v50 = *(v37 + 32);
  v225 = v36;
  v50(v39, v42, v36);
  *&v233 = 0x5F616964656DLL;
  *(&v233 + 1) = 0xE600000000000000;
  v236 = v230;
  v237._countAndFlagsBits = sub_F11EC();
  v51 = v237._object;
  sub_F08CC(v237);
  v51, v52, v53, v54, v55, v56, v57, v58;
  v59 = *(&v233 + 1);
  v60 = v233;
  result = [objc_opt_self() defaultHFSFileManager];
  if (result)
  {
    v69 = result;
    v35, v62, v63, v64, v65, v66, v67, v68;
    v70 = [v232 media];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 mediaContentType];

      if (!v72)
      {
        sub_F07EC();
        v74 = v73;
        v72 = sub_F07BC();
        v74, v75, v76, v77, v78, v79, v80, v81;
      }
    }

    else
    {
      v72 = 0;
    }

    v82 = [(RCSServiceSession *)v69 pathExtensionForMIMEType:v72];

    if (v82)
    {
      v83 = sub_F07BC();
      v84 = [v83 stringByAppendingPathExtension:v82];

      if (v84)
      {
        v60 = sub_F07EC();
        v86 = v85;
        v59, v85, v87, v88, v89, v90, v91, v92;

        v59 = v86;
      }
    }

    v93 = type metadata accessor for RCSFile.ThumbnailInformation(0);
    v94 = *(v93 - 8);
    v216 = *(v94 + 56);
    v215 = v94 + 56;
    v216(v222, 1, 1, v93);
    v95 = [v232 media];
    v217 = v59;
    if (v95)
    {
      v96 = v95;
      v97 = [v95 mediaFileSize];

      v98 = [v97 integerValue];
    }

    else
    {
      v98 = 0;
    }

    v99 = v60;
    v224 = v39;
    v218 = &v207;
    v100 = [v232 media];
    v229 = v30;
    if (v100)
    {
      v101 = v100;
      v102 = [v100 mediaContentType];

      v103 = sub_F07EC();
      v105 = v104;
    }

    else
    {
      v103 = 0;
      v105 = 0xE000000000000000;
    }

    v106 = v219;
    v26 = v230;
    v107 = v214;
    v108 = v208;
    (*(v219 + 16))(&v208[*(v214 + 28)], v224, v225);
    sub_F027C();
    v235 = 0;
    v233 = 0u;
    v234 = 0u;
    v109 = v108 + v107[10];
    v110 = v108 + v107[11];
    *(v110 + 32) = 0;
    *v110 = 0u;
    *(v110 + 16) = 0u;
    *v108 = v98;
    v108[1] = v99;
    v111 = v217;
    v108[2] = v217;
    v108[3] = v103;
    v108[4] = v105;
    *(v108 + v107[9]) = 1;
    *v109 = 0;
    v109[8] = 1;

    sub_14A04(&v233, v110, &qword_1299C8, &qword_F5700);
    v112 = v220;
    v216(v220, 1, 1, v93);
    sub_14A04(v222, v112, &qword_1299D0, &qword_F6890);
    sub_29F7C(v108, v112 + *(v213 + 20), type metadata accessor for RCSFile.DispositionInformation);
    sub_C2B1C(v112, v221);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v231 = sub_29DA0(0, *v231[1].IMDTelephonyServiceSession_opaque + 1, 1, v231, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
    }

    v25 = v223;
    v120 = v224;
    v30 = v229;
    v122 = *v231[1].IMDTelephonyServiceSession_opaque;
    v121 = *v231[1].state;
    v27 = &selRef__setLocalPath_;
    if (v122 >= v121 >> 1)
    {
      v231 = sub_29DA0((v121 > 1), v122 + 1, 1, v231, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
    }

    v111, v113, v114, v115, v116, v117, v118, v119;
    (*(v106 + 8))(v120, v225);
    v123 = v231;
    *v231[1].IMDTelephonyServiceSession_opaque = v122 + 1;
    sub_29F7C(v221, &v123->IMDTelephonyServiceSession_opaque[((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v122], type metadata accessor for RCSFile);
    sub_DA1C0(v220);
    goto LABEL_32;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t RCSRichCards.attributes.getter()
{
  v1 = v0;
  if (qword_128F48 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.chatbot);

  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = [*(v1 + 16) cards];
    sub_F0CAC();
    v7 = sub_F09FC();

    if (v7 >> 62)
    {
      v15 = sub_F10DC();
    }

    else
    {
      v15 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    v7, v8, v9, v10, v11, v12, v13, v14;
    *(v5 + 4) = v15;

    _os_log_impl(&dword_0, v3, v4, "Apply %ld rich cards attributes", v5, 0xCu);
  }

  else
  {
  }

  v16 = [*(v1 + 16) dictionaryRepresentation];
  v17 = sub_F076C();

  return v17;
}

uint64_t RCSRichCards.init(card:originalID:)(void *a1, uint64_t a2, RCSServiceSession *a3)
{
  v6 = sub_D9518(a1, a2, a3);

  a3, v7, v8, v9, v10, v11, v12, v13;
  *(v3 + 16) = v6;
  return v3;
}

uint64_t RCSRichCards.init(cardCarousel:originalID:)(void *a1, uint64_t a2, RCSServiceSession *a3)
{
  v6 = sub_D9CDC(a1, a2, a3);

  a3, v7, v8, v9, v10, v11, v12, v13;
  *(v3 + 16) = v6;
  return v3;
}

RCSServiceSession *sub_D8A20(RCSServiceSession *result, const char *a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_12A6C8, &qword_F7398);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[2] >= &a4[v12 + 2])
    {
      memmove(&v14[2], &a4[2], 16 * v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    sub_388C8(qword_129F10, qword_F62A0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

RCSServiceSession *sub_D8B54(RCSServiceSession *result, int64_t a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_12A6E0, &qword_F73A8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 2;
  v18 = a4 + 2;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[2 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

RCSServiceSession *sub_D8C60(RCSServiceSession *result, int64_t a2, char a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_129390, &unk_F52C0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 2;
  v18 = a4 + 2;
  if (v9)
  {
    v19 = (v12 << 6);
    if (v14 != a4 || v17 >= &v18[4 * v12])
    {
      memmove(v17, v18, v19);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

id sub_D8D94(void *a1)
{
  v2 = [a1 cardOrientation];
  v3 = [a1 imageAlignment];
  v4 = [a1 titleStyle];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 style];

    if (v6)
    {
      v7 = v6;
      v6 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v7 italics:"bold") underline:{objc_msgSend(v7, "italics"), objc_msgSend(v7, "underline")}];
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [a1 descriptionStyle];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 style];

    if (v10)
    {
      v11 = v10;
      v10 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v11 italics:"bold") underline:{objc_msgSend(v11, "italics"), objc_msgSend(v11, "underline")}];
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [a1 cardStyle];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 uri];

    v15 = sub_F01EC();
    v16 = *(v15 - 8);
    __chkstk_darwin(v15);
    v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F01AC();

    sub_F017C();
    v20 = v19;
    (*(v16 + 8))(v18, v15);
    v21 = sub_F07BC();
    v20, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v21 = 0;
  }

  v29 = [objc_allocWithZone(IMRichCardLayout) initWithOrientation:v2 imageAlignment:v3 width:-1 titleStyle:v6 descriptionStyle:v10 cardStyleUrl:v21];

  return v29;
}

id sub_D90BC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 mediaUrl];
    v3 = sub_F01EC();
    v81 = v77;
    v4 = *(v3 - 8);
    __chkstk_darwin(v3);
    v6 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F01AC();

    v77[1] = sub_F017C();
    v78 = v7;
    v8 = *(v4 + 8);
    v8(v6, v3);
    v9 = [v1 mediaContentType];
    if (!v9)
    {
      sub_F07EC();
      v11 = v10;
      v12 = sub_F07BC();
      v11, v13, v14, v15, v16, v17, v18, v19;
      v9 = v12;
    }

    v80 = v9;
    v79 = [v1 mediaFileSize];
    v20 = sub_388C8(&qword_128320, &qword_F34B0);
    v21 = v77 - ((*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = [v1 thumbnailUrl];
    __chkstk_darwin(v22);
    if (v23)
    {
      v24 = v23;
      sub_F01AC();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v4 + 56))(v21, v25, 1, v3);
    sub_81EC4(v21, v21);
    if ((*(v4 + 48))(v21, 1, v3) == 1)
    {
      sub_DA158(v21);
      v77[0] = 0;
      v27 = 0;
    }

    else
    {
      v77[0] = sub_F017C();
      v28 = v8;
      v27 = v29;
      v28(v21, v3);
    }

    v30 = [v1 thumbnailContentType];
    if (v30)
    {
      v31 = v30;
      sub_F07EC();
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = [v1 thumbnailFileSize];
    v35 = [v1 height];
    v36 = [v1 contentDescription];
    if (v36)
    {
      v37 = v36;
      sub_F07EC();
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v78;
    v41 = sub_F07BC();
    v40, v42, v43, v44, v45, v46, v47, v48;
    if (v27)
    {
      v49 = sub_F07BC();
      v27, v50, v51, v52, v53, v54, v55, v56;
      if (v33)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v49 = 0;
      if (v33)
      {
LABEL_19:
        v57 = sub_F07BC();
        v33, v58, v59, v60, v61, v62, v63, v64;
        if (v39)
        {
LABEL_20:
          v65 = sub_F07BC();
          v39, v66, v67, v68, v69, v70, v71, v72;
LABEL_24:
          v73 = objc_allocWithZone(IMRichCardMedia);
          v75 = v79;
          v74 = v80;
          v26 = [v73 initWithMediaUrl:v41 mediaContentType:v80 mediaFileSize:v79 thumbnailUrl:v49 thumbnailContentType:v57 thumbnailFileSize:v34 height:v35 contentDescription:v65];

          return v26;
        }

LABEL_23:
        v65 = 0;
        goto LABEL_24;
      }
    }

    v57 = 0;
    if (v39)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  return 0;
}

id sub_D9518(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [a1 card];
  v6 = [v5 content];

  v7 = [v6 chipList];
  v8 = sub_F07BC();
  v61 = [v4 IMChipListFromCTChipList:v7 originalID:v8];

  v9 = [a1 chipList];
  v10 = sub_F07BC();
  v59 = [v4 IMChipListFromCTChipList:v9 originalID:v10];

  sub_388C8(&qword_128BB8, &unk_F41E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_F3F80;
  v12 = [a1 card];
  v13 = [v12 layout];

  v14 = sub_D8D94(v13);
  v15 = [a1 card];
  v16 = [v15 content];

  v17 = [v16 media];
  v18 = sub_D90BC(v17);

  v19 = [a1 card];
  v20 = [v19 content];

  v21 = [v20 title];
  if (v21)
  {
    v22 = [(RCSServiceSession *)v21 text];

    sub_F07EC();
    v21 = v23;
  }

  v24 = [a1 card];
  v25 = [v24 content];

  v26 = [v25 cardDescription];
  if (v26)
  {
    v27 = [v26 text];

    sub_F07EC();
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() merge:v61 with:v60];
  if (!v21)
  {
    v31 = 0;
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_10:
    v39 = 0;
    goto LABEL_11;
  }

  v31 = sub_F07BC();
  v21, v32, v33, v34, v35, v36, v37, v38;
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_8:
  v39 = sub_F07BC();
  v29, v40, v41, v42, v43, v44, v45, v46;
LABEL_11:
  v47 = [objc_allocWithZone(IMRichCard) initWithLayout:v14 media:v18 title:v31 cardDescription:v39 chipList:v30];

  *(v11 + 32) = v47;
  v48 = objc_allocWithZone(IMRichCards);
  sub_F0CAC();
  v49 = sub_F09EC();
  v11, v50, v51, v52, v53, v54, v55, v56;
  v57 = [v48 initWithCards:v49];

  return v57;
}

id sub_D9974(void *a1)
{
  v2 = [a1 orientation];
  v3 = [a1 imageAlignment];
  v4 = [a1 width];
  v5 = [a1 titleStyle];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 style];

    if (v7)
    {
      v8 = v7;
      v7 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v8 italics:"bold") underline:{objc_msgSend(v8, "italics"), objc_msgSend(v8, "underline")}];
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [a1 descriptionStyle];
  if (v9 && (v10 = v9, v11 = [v9 style], v10, v11))
  {
    v12 = v11;
    v13 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v12 italics:"bold") underline:{objc_msgSend(v12, "italics"), objc_msgSend(v12, "underline")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 cardStyle];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 uri];

    v17 = sub_F01EC();
    v37[1] = v37;
    v18 = v7;
    v19 = v4;
    v20 = v3;
    v21 = v2;
    v22 = *(v17 - 8);
    __chkstk_darwin(v17);
    v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F01AC();

    sub_F017C();
    v26 = v25;
    (*(v22 + 8))(v24, v17);
    v2 = v21;
    v3 = v20;
    v4 = v19;
    v7 = v18;
    v27 = sub_F07BC();
    v26, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v27 = 0;
  }

  v35 = [objc_allocWithZone(IMRichCardLayout) initWithOrientation:v2 imageAlignment:v3 width:v4 titleStyle:v7 descriptionStyle:v13 cardStyleUrl:v27];

  return v35;
}

id sub_D9CDC(void *a1, uint64_t a2, uint64_t a3)
{
  v72 = [a1 layout];
  v4 = objc_opt_self();
  v5 = [a1 chipList];
  v6 = sub_F07BC();
  v70 = v4;
  v71 = [v4 IMChipListFromCTChipList:v5 originalID:v6];

  v7 = [a1 content];
  sub_DA240();
  v8 = sub_F09FC();

  v15 = v8;
  if (v8 >> 62)
  {
    v55 = sub_F10DC();
    v15 = v8;
    v16 = v55;
    if (v55)
    {
      goto LABEL_3;
    }

LABEL_24:
    v15, v15, v9, v10, v11, v12, v13, v14;
    v56 = objc_allocWithZone(IMRichCards);
    sub_F0CAC();
    v57 = sub_F09EC();
    _swiftEmptyArrayStorage, v58, v59, v60, v61, v62, v63, v64;
    v65 = [v56 initWithCards:v57];

    return v65;
  }

  v16 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_3:
  v17 = v15;
  result = objc_opt_self();
  v69 = result;
  if (v16 >= 1)
  {
    v19 = 0;
    v15 = v17;
    v66 = v17 & 0xC000000000000001;
    v67 = v16;
    v68 = v17;
    while (1)
    {
      if (v66)
      {
        v20 = sub_F0FCC();
      }

      else
      {
        v20 = *&v15[2].IMDTelephonyServiceSession_opaque[8 * v19];
      }

      v21 = v20;
      v22 = [v20 chipList];
      v23 = sub_F07BC();
      v24 = [v70 IMChipListFromCTChipList:v22 originalID:v23];

      v25 = sub_D9974(v72);
      v26 = [v21 media];
      v27 = sub_D90BC(v26);

      v28 = [v21 title];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 text];

        sub_F07EC();
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = [v21 cardDescription];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 text];

        sub_F07EC();
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = [v69 merge:v24 with:v71];
      if (v32)
      {
        v39 = sub_F07BC();
        v32, v40, v41, v42, v43, v44, v45, v46;
        if (!v37)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v39 = 0;
        if (!v37)
        {
LABEL_18:
          v47 = 0;
          goto LABEL_19;
        }
      }

      v47 = sub_F07BC();
      v37, v48, v49, v50, v51, v52, v53, v54;
LABEL_19:
      [objc_allocWithZone(IMRichCard) initWithLayout:v25 media:v27 title:v39 cardDescription:v47 chipList:v38];

      sub_F09DC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_F0A1C();
      }

      ++v19;
      sub_F0A3C();

      v15 = v68;
      if (v67 == v19)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DA158(uint64_t a1)
{
  v2 = sub_388C8(&qword_128320, &qword_F34B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DA1C0(uint64_t a1)
{
  v2 = type metadata accessor for RCSFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DA240()
{
  result = qword_12A6D8;
  if (!qword_12A6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12A6D8);
  }

  return result;
}

CoreRCS::RCSFile::Disposition_optional __swiftcall RCSFile.Disposition.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) < 3)
  {
    return (rawValue + 1);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_DA2FC()
{
  v1 = v0;
  v2 = type metadata accessor for RCSFile.DispositionInformation(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_F068C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;

  sub_F063C();
  sub_F05EC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_372B0(v10, &qword_128300, &unk_F68D0);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v16 = sub_F062C();
    v18 = v17;
    (*(v12 + 8))(v15, v11);
    if (v18)
    {
      return v16;
    }
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v20 = sub_F06CC();
  sub_3C96C(v20, static Logger.rcs);
  sub_DC994(v1, v7);
  sub_DC994(v1, v4);
  v21 = sub_F06AC();
  v22 = sub_F0CEC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = *(v7 + 3);
    v25 = *(v7 + 4);

    sub_2AA3C(v7, type metadata accessor for RCSFile.DispositionInformation);
    v26 = sub_3E850(v24, v25, &v45);
    v25, v27, v28, v29, v30, v31, v32, v33;
    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v34 = *(v4 + 1);
    v35 = *(v4 + 2);

    sub_2AA3C(v4, type metadata accessor for RCSFile.DispositionInformation);
    v36 = sub_3E850(v34, v35, &v45);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v23 + 14) = v36;
    _os_log_impl(&dword_0, v21, v22, "Failed to find file's UTType or path extension for mimetype %s, filename %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_2AA3C(v4, type metadata accessor for RCSFile.DispositionInformation);
    sub_2AA3C(v7, type metadata accessor for RCSFile.DispositionInformation);
  }

  return 0;
}

uint64_t RCSFile.DispositionInformation.init(fileSizeInBytes:originalFileName:mimeType:dataUrl:validUntil:disposition:timeLength:cryptoMaterial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v19 = type metadata accessor for RCSFile.DispositionInformation(0);
  v20 = &a9[v19[10]];
  v21 = &a9[v19[11]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v22 = v19[7];
  v23 = sub_F01EC();
  (*(*(v23 - 8) + 32))(&a9[v22], a6, v23);
  v24 = v19[8];
  v25 = sub_F030C();
  (*(*(v25 - 8) + 32))(&a9[v24], a7, v25);
  a9[v19[9]] = a8;
  *v20 = a10;
  v20[8] = a11 & 1;
  return sub_14A04(a12, v21, &qword_1299C8, &qword_F5700);
}

uint64_t RCSFile.init(thumbnail:disposition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_14A04(a1, a3, &qword_1299D0, &qword_F6890);
  v7 = type metadata accessor for RCSFile(0);
  return sub_2A340(a2, a3 + *(v7 + 20), type metadata accessor for RCSFile.DispositionInformation);
}

uint64_t RCSFile.ThumbnailInformation.contentType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void RCSFile.ThumbnailInformation.contentType.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 8) = a1;
  *(v8 + 16) = a2;
}

uint64_t RCSFile.ThumbnailInformation.dataUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFile.ThumbnailInformation(0) + 24);
  v4 = sub_F01EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFile.ThumbnailInformation.dataUrl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSFile.ThumbnailInformation(0) + 24);
  v4 = sub_F01EC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSFile.ThumbnailInformation.init(fileSizeInBytes:contentType:dataUrl:validUntil:cryptoMaterial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v15 = &a7[v14[8]];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v16 = v14[6];
  v17 = sub_F01EC();
  (*(*(v17 - 8) + 32))(&a7[v16], a4, v17);
  v18 = v14[7];
  v19 = sub_F030C();
  (*(*(v19 - 8) + 32))(&a7[v18], a5, v19);
  return sub_14A04(a6, v15, &qword_1299C8, &qword_F5700);
}

uint64_t sub_DADF0@<X0>(RCSServiceSession *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_388C8(&qword_1299C0, &unk_F74D0);
  __chkstk_darwin(v4 - 8);
  v6 = v221 - v5;
  v7 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    goto LABEL_12;
  }

  v15 = v8;
  v16 = sub_51FEC(v7, v8);
  v18 = v17;
  v15, v17, v19, v20, v21, v22, v23, v24;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_3FE38(*a1[3].state + 32 * v16, &v237);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v32 = v233;
  v33 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
LABEL_12:
    v8, v8, v9, v10, v11, v12, v13, v14;
LABEL_13:
    v99 = a1;
LABEL_14:
    v99, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_15;
  }

  v34 = v8;
  v35 = sub_51FEC(v33, v8);
  v37 = v36;
  v34, v36, v38, v39, v40, v41, v42, v43;
  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_3FE38(*a1[3].state + 32 * v35, &v237);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v44 = v233;
  v45 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v46, v46, v47, v48, v49, v50, v51, v52;
LABEL_18:
    a1, v63, v64, v65, v66, v67, v68, v69;
    v99 = *(&v44 + 1);
    goto LABEL_14;
  }

  v53 = v46;
  v54 = sub_51FEC(v45, v46);
  v56 = v55;
  v53, v55, v57, v58, v59, v60, v61, v62;
  if ((v56 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_3FE38(*a1[3].state + 32 * v54, &v237);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v232 = *(&v44 + 1);
  v70 = *(&v233 + 1);
  v228 = v44;
  v229 = v233;
  v71 = sub_F01EC();
  v231 = v221;
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v227 = v73;
  v74 = v221 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_388C8(&qword_128320, &qword_F34B0);
  v230 = v221;
  __chkstk_darwin(v75 - 8);
  v77 = v221 - v76;
  sub_F01DC();
  v70, v78, v79, v80, v81, v82, v83, v84;
  if ((*(v72 + 48))(v77, 1, v71) != 1)
  {
    v223 = v72;
    v104 = *(v72 + 32);
    v102 = v72 + 32;
    v103 = v104;
    v225 = v74;
    v229 = v71;
    v104(v74, v77, v71);
    v105 = sub_F030C();
    v226 = v221;
    v230 = v105;
    v106 = *(v105 - 8);
    __chkstk_darwin(v105);
    v221[2] = v107;
    v222 = v221 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
    v108 = sub_388C8(&qword_127B20, &unk_F74E0);
    v224 = v221;
    __chkstk_darwin(v108 - 8);
    v110 = v221 - v109;
    v111 = sub_F07EC();
    v119 = v112;
    if (*a1[1].IMDTelephonyServiceSession_opaque)
    {
      v221[0] = v103;
      v221[1] = v102;
      v120 = sub_51FEC(v111, v112);
      v122 = v121;
      v119, v121, v123, v124, v125, v126, v127, v128;
      v136 = v232;
      if (v122)
      {
        sub_3FE38(*a1[3].state + 32 * v120, &v237);
        v137 = v230;
        v138 = swift_dynamicCast();
        (*(v106 + 56))(v110, v138 ^ 1u, 1, v137);
        if ((*(v106 + 48))(v110, 1, v137) == 1)
        {
          v223[1](v225, v229);
          a1, v139, v140, v141, v142, v143, v144, v145;
          v232, v146, v147, v148, v149, v150, v151, v152;
LABEL_25:
          sub_372B0(v110, &qword_127B20, &unk_F74E0);
          goto LABEL_15;
        }

        v160 = *(v106 + 32);
        v161 = v222;
        v223 = v160;
        (v160)(v222, v110, v137);
        v239 = 0;
        v237 = 0u;
        v238 = 0u;
        v162 = sub_F07EC();
        v170 = v163;
        if (*a1[1].IMDTelephonyServiceSession_opaque)
        {
          v171 = sub_51FEC(v162, v163);
          v173 = v172;
          v170, v172, v174, v175, v176, v177, v178, v179;
          if (v173)
          {
            sub_3FE38(*a1[3].state + 32 * v171, &v233);
            a1, v187, v188, v189, v190, v191, v192, v193;
            sub_388C8(&qword_128568, &qword_F3950);
            v194 = swift_dynamicCast();
            if (v194)
            {
              FileCryptoMaterial.init(dictionaryRepresentation:)(v236, v195, v196, v197, v198, v199, v200, v201, v6);
              v202 = sub_F050C();
              v203 = *(v202 - 8);
              if ((*(v203 + 48))(v6, 1, v202) == 1)
              {
                sub_372B0(&v237, &qword_1299C8, &qword_F5700);
                v194 = sub_372B0(v6, &qword_1299C0, &unk_F74D0);
                v233 = 0u;
                v234 = 0u;
                v235 = 0;
              }

              else
              {
                *(&v234 + 1) = v202;
                v235 = &protocol witness table for FileCryptoMaterial;
                v220 = sub_37474(&v233);
                (*(v203 + 32))(v220, v6, v202);
                v194 = sub_372B0(&v237, &qword_1299C8, &qword_F5700);
              }

              v237 = v233;
              v238 = v234;
              v239 = v235;
              v205 = v221[0];
              v161 = v222;
              goto LABEL_35;
            }

LABEL_34:
            v205 = v221[0];
LABEL_35:
            v225 = v221;
            v206 = __chkstk_darwin(v194);
            v208 = v221 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
            v209 = v205(v208, v206);
            v227 = v221;
            v210 = __chkstk_darwin(v209);
            v212 = v221 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
            v213 = v230;
            v214 = v223;
            (v223)(v212, v161, v230, v210);
            v215 = type metadata accessor for RCSFile.ThumbnailInformation(0);
            v216 = v205;
            v217 = &a2[v215[8]];
            *(v217 + 4) = 0;
            *v217 = 0u;
            *(v217 + 1) = 0u;
            v219 = v228;
            v218 = v229;
            *a2 = v32;
            *(a2 + 1) = v219;
            *(a2 + 2) = v232;
            v216(&a2[v215[6]], v208, v218);
            v214(&a2[v215[7]], v212, v213);
            sub_14A04(&v237, v217, &qword_1299C8, &qword_F5700);
            return (*(*(v215 - 1) + 56))(a2, 0, 1, v215);
          }

          v204 = a1;
        }

        else
        {
          a1, v163, v164, v165, v166, v167, v168, v169;
          v204 = v170;
        }

        v204, v180, v181, v182, v183, v184, v185, v186;
        goto LABEL_34;
      }
    }

    else
    {
      v112, v112, v113, v114, v115, v116, v117, v118;
      v136 = v232;
    }

    a1, v129, v130, v131, v132, v133, v134, v135;
    v136, v153, v154, v155, v156, v157, v158, v159;
    v223[1](v225, v229);
    (*(v106 + 56))(v110, 1, 1, v230);
    goto LABEL_25;
  }

  a1, v85, v86, v87, v88, v89, v90, v91;
  v232, v92, v93, v94, v95, v96, v97, v98;
  sub_372B0(v77, &qword_128320, &qword_F34B0);
LABEL_15:
  v100 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  return (*(*(v100 - 8) + 56))(a2, 1, 1, v100);
}

Swift::Int sub_DB7A4()
{
  v1 = *v0;
  sub_F12FC();
  sub_F130C(v1 - 1);
  return sub_F132C();
}

Swift::Int sub_DB81C(uint64_t a1)
{
  v2 = *v1;
  sub_F12FC();
  sub_F130C(v2 - 1);
  return sub_F132C();
}

void *sub_DB860@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t RCSFile.DispositionInformation.mimeType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void RCSFile.DispositionInformation.mimeType.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
}

uint64_t RCSFile.DispositionInformation.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFile.DispositionInformation(0) + 32);
  v4 = sub_F030C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFile.DispositionInformation.validUntil.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSFile.DispositionInformation(0) + 32);
  v4 = sub_F030C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSFile.DispositionInformation.disposition.setter(char a1)
{
  result = type metadata accessor for RCSFile.DispositionInformation(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t RCSFile.DispositionInformation.timeLength.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for RCSFile.DispositionInformation(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_DBD4C@<X0>(RCSServiceSession *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = sub_388C8(&qword_1299C0, &unk_F74D0);
  __chkstk_darwin(v6 - 8);
  v8 = v297 - v7;
  v9 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    goto LABEL_15;
  }

  v17 = v10;
  v18 = sub_51FEC(v9, v10);
  v20 = v19;
  v17, v19, v21, v22, v23, v24, v25, v26;
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_3FE38(*a1[3].state + 32 * v18, &v320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v34 = v316;
  v35 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
LABEL_15:
    v10, v10, v11, v12, v13, v14, v15, v16;
LABEL_16:
    v137 = a1;
LABEL_17:
    v137, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_18;
  }

  v36 = v10;
  v37 = sub_51FEC(v35, v10);
  v39 = v38;
  v36, v38, v40, v41, v42, v43, v44, v45;
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_3FE38(*a1[3].state + 32 * v37, &v320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = v316;
  v47 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v48, v48, v49, v50, v51, v52, v53, v54;
LABEL_21:
    v140 = a1;
LABEL_22:
    v140, v65, v66, v67, v68, v69, v70, v71;
    v137 = *(&v46 + 1);
    goto LABEL_17;
  }

  v315 = v46;
  v55 = v48;
  v56 = sub_51FEC(v47, v48);
  v58 = v57;
  v55, v57, v59, v60, v61, v62, v63, v64;
  if ((v58 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_3FE38(*a1[3].state + 32 * v56, &v320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v73 = *(&v316 + 1);
  v72 = v316;
  v74 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v75, v75, v76, v77, v78, v79, v80, v81;
LABEL_24:
    a1, v93, v94, v95, v96, v97, v98, v99;
    v140 = v73;
    goto LABEL_22;
  }

  v313 = v72;
  v314 = v73;
  v82 = v75;
  v83 = sub_51FEC(v74, v75);
  v85 = v84;
  v86 = v82;
  v73 = v314;
  v86, v84, v87, v88, v89, v90, v91, v92;
  if ((v85 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_3FE38(*a1[3].state + 32 * v83, &v320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v100 = *(&v316 + 1);
  v308 = v316;
  v101 = sub_F01EC();
  v311 = v297;
  v312 = v101;
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v306 = v103;
  v310 = v297 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_388C8(&qword_128320, &qword_F34B0);
  v309 = v297;
  __chkstk_darwin(v104 - 8);
  v106 = v297 - v105;
  sub_F01DC();
  v107 = v100;
  v108 = v312;
  v107, v109, v110, v111, v112, v113, v114, v115;
  v308 = v102;
  if ((*(v102 + 48))(v106, 1, v108) == 1)
  {
    a1, v116, v117, v118, v119, v120, v121, v122;
    v314, v123, v124, v125, v126, v127, v128, v129;
    *(&v46 + 1), v130, v131, v132, v133, v134, v135, v136;
    sub_372B0(v106, &qword_128320, &qword_F34B0);
LABEL_18:
    v138 = type metadata accessor for RCSFile.DispositionInformation(0);
    return (*(*(v138 - 8) + 56))(a3, 1, 1, v138);
  }

  v141 = *(v308 + 32);
  v303 = v308 + 32;
  v302 = v141;
  (v141)(v310, v106, v108);
  v307 = sub_F030C();
  v142 = *(v307 - 8);
  __chkstk_darwin(v307);
  v300 = v143;
  v301 = v297 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_388C8(&qword_127B20, &unk_F74E0);
  v305 = v297;
  __chkstk_darwin(v144 - 8);
  v309 = v297 - v145;
  v146 = sub_F07EC();
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v147, v147, v148, v149, v150, v151, v152, v153;
    goto LABEL_30;
  }

  v304 = v297;
  v154 = v147;
  v299 = sub_51FEC(v146, v147);
  v156 = v155;
  v154, v155, v157, v158, v159, v160, v161, v162;
  if ((v156 & 1) == 0)
  {
LABEL_30:
    a1, v163, v164, v165, v166, v167, v168, v169;
    v314, v195, v196, v197, v198, v199, v200, v201;
    *(&v46 + 1), v202, v203, v204, v205, v206, v207, v208;
    (*(v308 + 8))(v310, v312);
    v194 = v309;
    (*(v46 + 56))(v309, 1, 1, v307);
    goto LABEL_31;
  }

  sub_3FE38(*a1[3].state + 32 * v299, &v320);
  v170 = v309;
  v171 = v307;
  v172 = swift_dynamicCast();
  (*(v142 + 56))(v170, v172 ^ 1u, 1, v171);
  if ((*(v142 + 48))(v170, 1, v171) == 1)
  {
    (*(v308 + 8))(v310, v312);
    a1, v173, v174, v175, v176, v177, v178, v179;
    v314, v180, v181, v182, v183, v184, v185, v186;
    *(&v46 + 1), v187, v188, v189, v190, v191, v192, v193;
    v194 = v309;
LABEL_31:
    sub_372B0(v194, &qword_127B20, &unk_F74E0);
    goto LABEL_18;
  }

  v209 = v309;
  v308 = *(v142 + 32);
  v309 = (v142 + 32);
  (v308)(v301, v209, v171);
  if (a2)
  {
    v210 = sub_F07EC();
    v218 = v211;
    if (*a1[1].IMDTelephonyServiceSession_opaque)
    {
      v219 = sub_51FEC(v210, v211);
      v221 = v220;
      v218, v220, v222, v223, v224, v225, v226, v227;
      if (v221)
      {
        sub_3FE38(*a1[3].state + 32 * v219, &v320);
        v228 = swift_dynamicCast();
        v229 = v316;
        if (!v228)
        {
          v229 = 0;
        }

        v305 = v229;
        LODWORD(v299) = v228 ^ 1;
        v230 = 2;
        v231 = &v323 + 4;
        goto LABEL_41;
      }
    }

    else
    {
      v211, v211, v212, v213, v214, v215, v216, v217;
    }

    v305 = 0;
    v298 = 2;
    v230 = 1;
    v231 = &v324;
  }

  else
  {
    v305 = 0;
    v230 = 1;
    LODWORD(v299) = 1;
    v231 = &v323 + 4;
  }

LABEL_41:
  *(v231 - 64) = v230;
  v322 = 0;
  v320 = 0u;
  v321 = 0u;
  v232 = sub_F07EC();
  v240 = v233;
  if (*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v241 = sub_51FEC(v232, v233);
    v243 = v242;
    v240, v242, v244, v245, v246, v247, v248, v249;
    if (v243)
    {
      sub_3FE38(*a1[3].state + 32 * v241, &v316);
      a1, v257, v258, v259, v260, v261, v262, v263;
      sub_388C8(&qword_128568, &qword_F3950);
      v264 = swift_dynamicCast();
      if (v264)
      {
        FileCryptoMaterial.init(dictionaryRepresentation:)(v319, v265, v266, v267, v268, v269, v270, v271, v8);
        v272 = sub_F050C();
        v273 = *(v272 - 8);
        if ((*(v273 + 48))(v8, 1, v272) == 1)
        {
          sub_372B0(&v320, &qword_1299C8, &qword_F5700);
          v264 = sub_372B0(v8, &qword_1299C0, &unk_F74D0);
          v316 = 0u;
          v317 = 0u;
          v318 = 0;
        }

        else
        {
          *(&v317 + 1) = v272;
          v318 = &protocol witness table for FileCryptoMaterial;
          v281 = sub_37474(&v316);
          (*(v273 + 32))(v281, v8, v272);
          v264 = sub_372B0(&v320, &qword_1299C8, &qword_F5700);
        }

        v320 = v316;
        v321 = v317;
        v322 = v318;
      }
    }

    else
    {
      a1, v250, v251, v252, v253, v254, v255, v256;
    }
  }

  else
  {
    a1, v233, v234, v235, v236, v237, v238, v239;
    v240, v274, v275, v276, v277, v278, v279, v280;
  }

  v297[1] = v297;
  v282 = __chkstk_darwin(v264);
  v284 = v297 - ((v283 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = v302(v284, v310, v312, v282);
  v310 = v297;
  v286 = __chkstk_darwin(v285);
  v288 = v297 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = v307;
  v289 = v308;
  (v308)(v288, v301, v307, v286);
  v291 = type metadata accessor for RCSFile.DispositionInformation(0);
  v292 = &a3[v291[10]];
  v293 = &a3[v291[11]];
  *(v293 + 4) = 0;
  *v293 = 0u;
  *(v293 + 1) = 0u;
  v294 = v315;
  *a3 = v34;
  *(a3 + 1) = v294;
  v296 = v313;
  v295 = v314;
  *(a3 + 2) = *(&v46 + 1);
  *(a3 + 3) = v296;
  *(a3 + 4) = v295;
  (v302)(&a3[v291[7]], v284, v312);
  v289(&a3[v291[8]], v288, v290);
  a3[v291[9]] = v298;
  *v292 = v305;
  v292[8] = v299;
  sub_14A04(&v320, v293, &qword_1299C8, &qword_F5700);
  return (*(*(v291 - 1) + 56))(a3, 0, 1, v291);
}

uint64_t RCSFile.disposition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSFile(0) + 20);

  return sub_DC994(v3, a1);
}

uint64_t sub_DC994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile.DispositionInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSFile.disposition.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSFile(0) + 20);

  return sub_DCA3C(a1, v3);
}

uint64_t sub_DCA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile.DispositionInformation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_DCAE8@<X0>(RCSServiceSession *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v106) = a2;
  v107 = a3;
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  __chkstk_darwin(v4 - 8);
  v6 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v102 - v8;
  __chkstk_darwin(v10);
  v12 = v102 - v11;
  v13 = sub_388C8(&qword_12A8E8, &qword_F74C8);
  __chkstk_darwin(v13 - 8);
  v15 = v102 - v14;
  v16 = type metadata accessor for RCSFile.DispositionInformation(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v102 - v21;
  v23 = sub_F07EC();
  v31 = v24;
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v24, v24, v25, v26, v27, v28, v29, v30;
LABEL_7:
    a1, v41, v42, v43, v44, v45, v46, v47;
    goto LABEL_8;
  }

  v104 = v6;
  v105 = v12;
  v32 = sub_51FEC(v23, v24);
  v34 = v33;
  v31, v33, v35, v36, v37, v38, v39, v40;
  if ((v34 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_3FE38(*a1[3].state + 32 * v32, v109);
  v48 = sub_388C8(&qword_128568, &qword_F3950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_DBD4C(v108, v106 & 1, v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_2A340(v15, v22, type metadata accessor for RCSFile.DispositionInformation);
    v58 = type metadata accessor for RCSFile.ThumbnailInformation(0);
    v59 = *(v58 - 8);
    v60 = *(v59 + 56);
    v106 = v58;
    v103 = v60;
    (v60)(v105, 1, 1);
    v61 = sub_F07EC();
    v69 = v62;
    if (*a1[1].IMDTelephonyServiceSession_opaque)
    {
      v102[1] = v48;
      v70 = sub_51FEC(v61, v62);
      v72 = v71;
      v69, v71, v73, v74, v75, v76, v77, v78;
      if (v72)
      {
        sub_3FE38(*a1[3].state + 32 * v70, v109);
        a1, v86, v87, v88, v89, v90, v91, v92;
        if (swift_dynamicCast())
        {
          sub_DADF0(v108, v9);
          v93 = v106;
          v94 = (*(v59 + 48))(v9, 1, v106);
          v96 = v104;
          v95 = v105;
          if (v94 != 1)
          {
            sub_372B0(v105, &qword_1299D0, &qword_F6890);
            sub_2A340(v9, v95, type metadata accessor for RCSFile.ThumbnailInformation);
            v99 = v103;
            v103(v95, 0, 1, v93);
            v97 = v95;
            goto LABEL_20;
          }

          sub_372B0(v9, &qword_1299D0, &qword_F6890);
          v97 = v95;
LABEL_19:
          v99 = v103;
LABEL_20:
          sub_DDCB8(v97, v96);
          sub_2A340(v22, v19, type metadata accessor for RCSFile.DispositionInformation);
          v100 = v107;
          v99(v107, 1, 1, v93);
          sub_14A04(v96, v100, &qword_1299D0, &qword_F6890);
          v101 = type metadata accessor for RCSFile(0);
          sub_2A340(v19, v100 + *(v101 + 20), type metadata accessor for RCSFile.DispositionInformation);
          return (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
        }

LABEL_18:
        v96 = v104;
        v97 = v105;
        v93 = v106;
        goto LABEL_19;
      }

      v98 = a1;
    }

    else
    {
      a1, v62, v63, v64, v65, v66, v67, v68;
      v98 = v69;
    }

    v98, v79, v80, v81, v82, v83, v84, v85;
    goto LABEL_18;
  }

  a1, v49, v50, v51, v52, v53, v54, v55;
  sub_372B0(v15, &qword_12A8E8, &qword_F74C8);
LABEL_8:
  v56 = type metadata accessor for RCSFile(0);
  return (*(*(v56 - 8) + 56))(v107, 1, 1, v56);
}

unint64_t RCSFile.userInfoRepresentation(simID:)(void *a1, uint64_t a2)
{
  v132 = a1;
  v133 = a2;
  v3 = sub_388C8(&qword_1299D0, &qword_F6890);
  __chkstk_darwin(v3 - 8);
  v5 = v125 - v4;
  v136 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = (v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = sub_388C8(&qword_1285A0, &unk_F74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F3720;
  v130 = IMFileTransferUserInfoRCSURLKey;
  *(inited + 32) = sub_F07EC();
  *(inited + 40) = v8;
  v9 = *(type metadata accessor for RCSFile(0) + 20);
  v135 = v2;
  v10 = (v2 + v9);
  v11 = type metadata accessor for RCSFile.DispositionInformation(0);
  v12 = sub_F017C();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v129 = IMFileTransferUserInfoRCSMIMETypeKey;
  *(inited + 80) = sub_F07EC();
  *(inited + 88) = v14;
  v15 = v10[3];
  v16 = v10[4];
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v15;
  *(inited + 104) = v16;
  *(inited + 128) = sub_F07EC();
  *(inited + 136) = v17;
  v18 = v10[1];
  v19 = v10[2];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  v128 = IMFileTransferUserInfoRCSFileSizeKey;
  *(inited + 176) = sub_F07EC();
  *(inited + 184) = v20;
  v21 = *v10;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v21;
  v127 = IMFileTransferUserInfoRCSValidUntilKey;
  *(inited + 224) = sub_F07EC();
  *(inited + 232) = v22;
  v23 = v11[8];
  v24 = sub_F030C();
  *(inited + 264) = v24;
  v25 = sub_37474((inited + 240));
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v125[1] = v26 + 16;
  v126 = v27;
  v27(v25, v10 + v23, v24);

  v28 = sub_81270(inited);
  swift_setDeallocating();
  v137 = sub_388C8(&qword_1285C0, &qword_F3780);
  swift_arrayDestroy();
  sub_37380(v10 + v11[11], &v141, &qword_1299C8, &qword_F5700);
  v29 = v142;
  if (v142)
  {
    v30 = v143;
    sub_373E8(&v141, v142);
    v31 = (*(v30 + 56))(v29, v30);
    sub_1EDC(&v141);
    v32 = sub_F07EC();
    v34 = v33;
    v142 = sub_388C8(&qword_128568, &qword_F3950);
    *&v141 = v31;
    sub_54F88(&v141, v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = v28;
    sub_52328(v140, v32, v34, isUniquelyReferenced_nonNull_native);
    v34, v36, v37, v38, v39, v40, v41, v42;
    v28 = v139;
  }

  else
  {
    sub_372B0(&v141, &qword_1299C8, &qword_F5700);
  }

  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_F73B0;
  *(v43 + 32) = sub_F07EC();
  *(v43 + 40) = v44;
  v45 = sub_F07EC();
  *(v43 + 72) = &type metadata for String;
  *(v43 + 48) = v45;
  *(v43 + 56) = v46;
  *(v43 + 80) = sub_F07EC();
  *(v43 + 88) = v47;
  *(v43 + 120) = &type metadata for String;
  v48 = v133;
  *(v43 + 96) = v132;
  *(v43 + 104) = v48;
  *(v43 + 128) = sub_F07EC();
  *(v43 + 136) = v49;
  v132 = sub_388C8(&qword_128568, &qword_F3950);
  *(v43 + 168) = v132;
  *(v43 + 144) = v28;

  v50 = sub_81270(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  v51 = v10 + v11[10];
  if ((v51[8] & 1) == 0)
  {
    v52 = *v51;
    v53 = sub_F07EC();
    if (*(v50 + 16))
    {
      v61 = v54;
      v62 = sub_51FEC(v53, v54);
      v64 = v63;
      v61, v63, v65, v66, v67, v68, v69, v70;
      if (v64)
      {
        sub_3FE38(*(v50 + 56) + 32 * v62, &v141);
        if (swift_dynamicCast())
        {
          v71 = *&v140[0];
          v72 = sub_F07EC();
          v74 = v73;
          v142 = &type metadata for Double;
          *&v141 = v52;
          sub_54F88(&v141, v140);
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v139 = v71;
          sub_52328(v140, v72, v74, v75);
          v74, v76, v77, v78, v79, v80, v81, v82;
        }
      }
    }

    else
    {
      v54, v54, v55, v56, v57, v58, v59, v60;
    }
  }

  sub_37380(v135, v5, &qword_1299D0, &qword_F6890);
  v83 = v136;
  if ((*(v134 + 48))(v5, 1, v136) == 1)
  {
    sub_372B0(v5, &qword_1299D0, &qword_F6890);
  }

  else
  {
    v84 = v131;
    sub_2A340(v5, v131, type metadata accessor for RCSFile.ThumbnailInformation);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_F4320;
    *(v85 + 32) = sub_F07EC();
    *(v85 + 40) = v86;
    v87 = sub_F017C();
    *(v85 + 72) = &type metadata for String;
    *(v85 + 48) = v87;
    *(v85 + 56) = v88;
    *(v85 + 80) = sub_F07EC();
    *(v85 + 88) = v89;
    v90 = v84[1];
    v91 = v84[2];
    *(v85 + 120) = &type metadata for String;
    *(v85 + 96) = v90;
    *(v85 + 104) = v91;
    *(v85 + 128) = sub_F07EC();
    *(v85 + 136) = v92;
    v93 = *v84;
    *(v85 + 168) = &type metadata for Int;
    *(v85 + 144) = v93;
    *(v85 + 176) = sub_F07EC();
    *(v85 + 184) = v94;
    v95 = *(v83 + 28);
    *(v85 + 216) = v24;
    v96 = sub_37474((v85 + 192));
    v126(v96, v84 + v95, v24);

    v97 = sub_81270(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_37380(v84 + *(v83 + 32), &v141, &qword_1299C8, &qword_F5700);
    v98 = v142;
    if (v142)
    {
      v99 = v143;
      sub_373E8(&v141, v142);
      v100 = (*(v99 + 56))(v98, v99);
      sub_1EDC(&v141);
      v101 = sub_F07EC();
      v103 = v102;
      v104 = v132;
      v142 = v132;
      *&v141 = v100;
      sub_54F88(&v141, v140);
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v139 = v97;
      sub_52328(v140, v101, v103, v105);
      v103, v106, v107, v108, v109, v110, v111, v112;
      v97 = v139;
    }

    else
    {
      sub_372B0(&v141, &qword_1299C8, &qword_F5700);
      v104 = v132;
    }

    v113 = sub_F07EC();
    v115 = v114;
    v142 = v104;
    *&v141 = v97;
    sub_54F88(&v141, v140);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v50;
    sub_52328(v140, v113, v115, v116);
    v115, v117, v118, v119, v120, v121, v122, v123;
    sub_2AA3C(v84, type metadata accessor for RCSFile.ThumbnailInformation);
    return v139;
  }

  return v50;
}

unint64_t sub_DD8BC()
{
  result = qword_12A6E8;
  if (!qword_12A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A6E8);
  }

  return result;
}

void sub_DD938(uint64_t a1)
{
  sub_DD9BC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RCSFile.DispositionInformation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DD9BC(uint64_t a1)
{
  if (!qword_12A758)
  {
    type metadata accessor for RCSFile.ThumbnailInformation(255);
    v1 = sub_F0DEC();
    if (!v2)
    {
      atomic_store(v1, &qword_12A758);
    }
  }
}

void sub_DDA3C(uint64_t a1)
{
  sub_F01EC();
  if (v1 <= 0x3F)
  {
    sub_F030C();
    if (v2 <= 0x3F)
    {
      sub_DDAF0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_DDAF0(uint64_t a1)
{
  if (!qword_12A7F0)
  {
    sub_3CB70(&unk_12A7F8, &qword_F7498);
    v1 = sub_F0DEC();
    if (!v2)
    {
      atomic_store(v1, &qword_12A7F0);
    }
  }
}

void sub_DDB8C(uint64_t a1)
{
  sub_F01EC();
  if (v1 <= 0x3F)
  {
    sub_F030C();
    if (v2 <= 0x3F)
    {
      sub_DDC68();
      if (v3 <= 0x3F)
      {
        sub_DDAF0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_DDC68()
{
  if (!qword_12A8A0)
  {
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12A8A0);
    }
  }
}

uint64_t sub_DDCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FileCryptoMaterial.init(dictionaryRepresentation:)@<X0>(RCSServiceSession *a1@<X0>, const char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  if (*a1[1].IMDTelephonyServiceSession_opaque)
  {
    v11 = sub_51FEC(7955819, 0xE300000000000000);
    if (a2)
    {
      sub_3FE38(*a1[3].state + 32 * v11, v49);
      if (swift_dynamicCast())
      {
        if (*a1[1].IMDTelephonyServiceSession_opaque && (v12 = sub_51FEC(0x67615468747561, 0xE700000000000000), (v13 & 1) != 0) && (sub_3FE38(*a1[3].state + 32 * v12, v49), (swift_dynamicCast() & 1) != 0))
        {
          if (*a1[1].IMDTelephonyServiceSession_opaque && (v14 = sub_51FEC(0x65636E6F6ELL, 0xE500000000000000), (v15 & 1) != 0) && (sub_3FE38(*a1[3].state + 32 * v14, v49), (swift_dynamicCast() & 1) != 0))
          {
            if (*a1[1].IMDTelephonyServiceSession_opaque && (v16 = sub_51FEC(6578529, 0xE300000000000000), (v17 & 1) != 0))
            {
              sub_3FE38(*a1[3].state + 32 * v16, v49);
              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_5F048(v47, v48);
                sub_5F048(v47, v48);
                a1, v35, v36, v37, v38, v39, v40, v41;
LABEL_29:
                sub_5F048(v47, v48);
                goto LABEL_23;
              }

              if (*a1[1].IMDTelephonyServiceSession_opaque)
              {
                v18 = sub_51FEC(0xD000000000000017, 0x8000000000100BD0);
                if (v19)
                {
                  sub_3FE38(*a1[3].state + 32 * v18, v49);
                  a1, v20, v21, v22, v23, v24, v25, v26;
                  if (swift_dynamicCast())
                  {
                    v27 = v48 >> 62;
                    if ((v48 >> 62) > 1)
                    {
                      if (v27 != 2)
                      {
                        goto LABEL_38;
                      }

                      v42 = *(v47 + 16);
                      v43 = *(v47 + 24);
                    }

                    else
                    {
                      if (!v27)
                      {
                        if ((v48 & 0xFF000000000000) == 0)
                        {
                          goto LABEL_38;
                        }

LABEL_37:
                        sub_660D0(v47, v48);
                        goto LABEL_38;
                      }

                      v42 = v47;
                      v43 = v47 >> 32;
                    }

                    if (v42 != v43)
                    {
                      goto LABEL_37;
                    }

LABEL_38:
                    v44 = v48 >> 62;
                    if ((v48 >> 62) > 1)
                    {
                      if (v44 != 2)
                      {
                        goto LABEL_48;
                      }

                      v45 = *(v47 + 16);
                      v46 = *(v47 + 24);
                    }

                    else
                    {
                      if (!v44)
                      {
                        if ((v48 & 0xFF000000000000) == 0)
                        {
                          goto LABEL_48;
                        }

                        goto LABEL_47;
                      }

                      v45 = v47;
                      v46 = v47 >> 32;
                    }

                    if (v45 == v46)
                    {
                      goto LABEL_48;
                    }

LABEL_47:
                    sub_660D0(v47, v48);
LABEL_48:
                    sub_F04DC();
                    sub_5F048(v47, v48);
                    sub_5F048(v47, v48);
                    v30 = 0;
                    goto LABEL_24;
                  }

                  sub_5F048(v47, v48);
                  sub_5F048(v47, v48);
                  sub_5F048(v47, v48);
                  goto LABEL_29;
                }
              }

              sub_5F048(v47, v48);
              sub_5F048(v47, v48);
              v33 = v47;
              v34 = v48;
            }

            else
            {
              sub_5F048(v47, v48);
              v33 = v47;
              v34 = v48;
            }

            sub_5F048(v33, v34);
            v28 = v47;
            v29 = v48;
          }

          else
          {
            sub_5F048(v47, v48);
            v28 = v47;
            v29 = v48;
          }
        }

        else
        {
          v28 = v47;
          v29 = v48;
        }

        sub_5F048(v28, v29);
      }
    }
  }

  a1, a2, a3, a4, a5, a6, a7, a8;
LABEL_23:
  v30 = 1;
LABEL_24:
  v31 = sub_F050C();
  return (*(*(v31 - 8) + 56))(a9, v30, 1, v31);
}

unint64_t FileCryptoMaterial.dictionaryRepresentation()()
{
  sub_388C8(&qword_1285A0, &unk_F74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F3720;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_F04CC();
  *(inited + 56) = v1;
  *(inited + 72) = &type metadata for Data;
  *(inited + 80) = 0x65636E6F6ELL;
  *(inited + 88) = 0xE500000000000000;
  v2 = sub_F04EC();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 120) = &type metadata for Data;
  *(inited + 128) = 6578529;
  *(inited + 136) = 0xE300000000000000;
  v6 = sub_F04BC();
  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v7;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = &type metadata for Data;
  *(inited + 176) = 0x67615468747561;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = sub_F04FC();
  *(inited + 200) = v10;
  *(inited + 216) = &type metadata for Data;
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x8000000000100BD0;
  v11 = sub_F04AC();
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = v11;
  v12 = sub_81270(inited);
  swift_setDeallocating();
  sub_388C8(&qword_1285C0, &qword_F3780);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_DE2FC(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 281) = a3;
  *(v6 + 280) = a2;
  *(v6 + 48) = a1;
  *(v6 + 56) = a4;
  *(v6 + 80) = *v5;
  v7 = sub_F06CC();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  v8 = type metadata accessor for RCSFile(0);
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  sub_388C8(&qword_12A8F0, &qword_F7558);
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_388C8(&qword_12A8F8, &qword_F7560);
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_2AA9C, 0, 0);
}

uint64_t sub_DE504(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 361) = a5;
  *(v8 + 360) = a4;
  *(v8 + 120) = a3;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  *(v8 + 152) = *v7;
  sub_388C8(&qword_12A900, &unk_F7570);
  *(v8 + 160) = swift_task_alloc();
  v9 = sub_F06CC();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_2B3AC, 0, 0);
}

uint64_t sub_DE658()
{
  v1 = sub_F06CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v176 - v6;
  __chkstk_darwin(v8);
  v10 = &v176 - v9;
  __chkstk_darwin(v11);
  v13 = &v176 - v12;
  if ((sub_F016C() & 1) == 0)
  {
    return 0;
  }

  v177 = v7;
  v178 = v0;
  v176 = v4;
  v179 = v2;
  v180 = v1;
  v14 = sub_F01BC();
  v16 = v15;
  v17 = sub_F07BC();
  v18 = [v17 pathExtension];

  v19 = sub_F07EC();
  v21 = v20;

  v22 = sub_F084C();
  v24 = v23;
  v182[0] = v22;
  v182[1] = v23;
  __chkstk_darwin(v22);
  *(&v176 - 2) = v182;
  v25 = sub_400F0(sub_2C990, (&v176 - 4), &off_11F748);
  swift_arrayDestroy();
  v24, v26, v27, v28, v29, v30, v31, v32;
  if ((v25 & 1) == 0)
  {
    v16, v33, v34, v35, v36, v37, v38, v39;
    sub_CCD3C(v13);

    v91 = sub_F06AC();
    v92 = sub_F0CEC();
    v21, v93, v94, v95, v96, v97, v98, v99;
    if (os_log_type_enabled(v91, v92))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v182[0] = v101;
      *v100 = 136315138;
      v102 = sub_3E850(v19, v21, v182);
      v21, v103, v104, v105, v106, v107, v108, v109;
      *(v100 + 4) = v102;
      _os_log_impl(&dword_0, v91, v92, "Wrong type for thumbnail %s", v100, 0xCu);
      sub_1EDC(v101);
    }

    else
    {

      v21, v110, v111, v112, v113, v114, v115, v116;
    }

    v117 = *(v179 + 8);
    v118 = v13;
    goto LABEL_26;
  }

  v21, v33, v34, v35, v36, v37, v38, v39;
  v40 = [objc_opt_self() defaultManager];
  v41 = sub_F07BC();
  v42 = [v40 fileExistsAtPath:v41];

  v50 = v16;
  if (!v42)
  {
    v16, v43, v44, v45, v46, v47, v48, v49;

    return 0;
  }

  v51 = sub_F07BC();
  v182[0] = 0;
  v52 = [v40 attributesOfItemAtPath:v51 error:v182];

  v53 = v182[0];
  if (!v52)
  {
    v119 = v182[0];
    sub_F015C();

    swift_willThrow();
    v120 = v176;
    sub_CCD3C(v176);

    swift_errorRetain();
    v121 = sub_F06AC();
    v122 = sub_F0CEC();
    v16, v123, v124, v125, v126, v127, v128, v129;

    if (os_log_type_enabled(v121, v122))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v182[0] = v132;
      *v130 = 136315394;
      v133 = sub_3E850(v14, v16, v182);
      v16, v134, v135, v136, v137, v138, v139, v140;
      *(v130 + 4) = v133;
      *(v130 + 12) = 2112;
      swift_errorRetain();
      v141 = _swift_stdlib_bridgeErrorToNSError();
      *(v130 + 14) = v141;
      *v131 = v141;
      _os_log_impl(&dword_0, v121, v122, "Failed to get attributes of %s: %@", v130, 0x16u);
      sub_372B0(v131, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v132);

      v117 = *(v179 + 8);
      v118 = v176;
    }

    else
    {

      v16, v168, v169, v170, v171, v172, v173, v174;

      v117 = *(v179 + 8);
      v118 = v120;
    }

LABEL_26:
    v117(v118, v180);
    return 0;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_DEEF8();
  v54 = sub_F076C();
  v55 = v53;

  if (!*v54[1].IMDTelephonyServiceSession_opaque)
  {
    v54, v56, v57, v58, v59, v60, v61, v62;
    v71 = v177;
    goto LABEL_21;
  }

  v63 = sub_E9B18();
  v71 = v177;
  if ((v64 & 1) == 0)
  {
    v54, v64, v65, v66, v67, v68, v69, v70;
    goto LABEL_21;
  }

  sub_3FE38(*v54[3].state + 32 * v63, v182);
  v54, v72, v73, v74, v75, v76, v77, v78;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    sub_CCD3C(v71);

    v142 = sub_F06AC();
    v143 = sub_F0CEC();
    v50, v144, v145, v146, v147, v148, v149, v150;
    if (os_log_type_enabled(v142, v143))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v182[0] = v152;
      *v151 = 136315138;
      v153 = sub_3E850(v14, v50, v182);
      v50, v154, v155, v156, v157, v158, v159, v160;
      *(v151 + 4) = v153;
      _os_log_impl(&dword_0, v142, v143, "Couldn't find file size for %s", v151, 0xCu);
      sub_1EDC(v152);
    }

    else
    {

      v50, v161, v162, v163, v164, v165, v166, v167;
    }

    v117 = *(v179 + 8);
    v118 = v71;
    goto LABEL_26;
  }

  v50, v79, v80, v81, v82, v83, v84, v85;
  v87 = v180;
  v86 = v181;
  if (v181 <= 0x2800)
  {

    return 1;
  }

  sub_CCD3C(v10);
  v88 = sub_F06AC();
  v89 = sub_F0CEC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134218240;
    *(v90 + 4) = v86;
    *(v90 + 12) = 2048;
    *(v90 + 14) = 10240;
    _os_log_impl(&dword_0, v88, v89, "Too large for thumbnail %llu > %ld", v90, 0x16u);
  }

  (*(v179 + 8))(v10, v87);
  return 0;
}

uint64_t sub_DEE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_DEEF8()
{
  result = qword_129538;
  if (!qword_129538)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129538);
  }

  return result;
}

uint64_t sub_DEF50(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 56) = a1;
  v7 = sub_F109C();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_F10AC();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_2C9E8, 0, 0);
}

uint64_t sub_DF07C()
{

  sub_F0BBC();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_DF114(uint64_t a1)
{
  v2 = 0;
  v19[2] = sub_F0C3C();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_82EDC(v19, v10, v11);
    v19[1], v12, v13, v14, v15, v16, v17, v18;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void RCSGroupController.convergeParticipants(with:group:)(void *a1, RCSServiceSession *a2)
{
  v91 = a2;
  v89 = a1;
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = type metadata accessor for RCSParticipantChange(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v77 - v9;
  v10 = sub_F0DEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v77 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15);
  v85 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v84 = (&v77 - v18);
  __chkstk_darwin(v19);
  v90 = &v77 - v20;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v14 + 56))(v13, 1, 1, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v21 = *(v3 + 104);
  v81 = v4;
  v21(v91, v4, v3);
  swift_unknownObjectRelease();
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
LABEL_6:
    (*(v11 + 8))(v13, v10);
    return;
  }

  v22 = v90;
  (*(v14 + 32))(v90, v13, AssociatedTypeWitness);
  v25 = *(type metadata accessor for RCSConvergenceContext(0, AssociatedTypeWitness, v23, v24) + 32);
  v26 = AssociatedConformanceWitness;
  v93[3] = AssociatedTypeWitness;
  v93[4] = AssociatedConformanceWitness;
  v27 = sub_37474(v93);
  v28 = v89;
  v29 = v89 + v25;
  v30 = *(v14 + 16);
  v30(v27, v29, AssociatedTypeWitness);
  sub_54C4C(v91, v92);
  v31 = v94;
  v32 = sub_DFE90(v93, v92);
  v94 = v31;
  if (v31)
  {
    (*(v14 + 8))(v22, AssociatedTypeWitness);
  }

  else
  {
    v91 = v32;
    v34 = *v32[1].IMDTelephonyServiceSession_opaque;
    v80 = v33;
    if (v34)
    {
      v30(v84, v90, AssociatedTypeWitness);
      v35 = v28[1];
      v79 = v30;
      if (v35)
      {
        v36 = v28[3];
        v78 = v28[2];
      }

      else
      {
        v78 = 0;
        v36 = 0;
      }

      v37 = v28[8];
      v38 = v28[9];

      v39 = v91;

      v76 = v26;
      v40 = v82;
      RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)(v84, 1, v39, v78, v36, v37, v38, 0, v82, AssociatedTypeWitness, v76);
      if (swift_unknownObjectWeakLoadStrong())
      {
        (*(v3 + 112))(v40, v81, v3);
        swift_unknownObjectRelease();
      }

      (*(v86 + 8))(v40, v87);
      v28 = v89;
      v33 = v80;
      v30 = v79;
    }

    if (*v33[1].IMDTelephonyServiceSession_opaque)
    {
      v30(v85, v90, AssociatedTypeWitness);
      if (v28[1])
      {
        v42 = v28[2];
        v41 = v28[3];
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }

      v58 = v28[8];
      v59 = v28[9];

      v60 = v80;

      v61 = v83;
      RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)(v85, 0, v60, v42, v41, v58, v59, 0, v83, AssociatedTypeWitness, AssociatedConformanceWitness);
      v60, v62, v63, v64, v65, v66, v67, v68;
      v91, v69, v70, v71, v72, v73, v74, v75;
      if (swift_unknownObjectWeakLoadStrong())
      {
        (*(v3 + 112))(v61, v81, v3);
        swift_unknownObjectRelease();
      }

      (*(v86 + 8))(v61, v87);
      (*(v14 + 8))(v90, AssociatedTypeWitness);
    }

    else
    {
      v43 = v33;
      (*(v14 + 8))(v90, AssociatedTypeWitness);
      v43, v44, v45, v46, v47, v48, v49, v50;
      v91, v51, v52, v53, v54, v55, v56, v57;
    }
  }
}

uint64_t sub_DF914(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_F12FC();
  sub_F089C();
  v6 = sub_F132C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_F122C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_9DF94();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_DFA50(v8);
  *v2 = v16;
  return v12;
}

void sub_DFA50(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_F0EAC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_F12FC();

        sub_F089C();
        v11 = sub_F132C();
        v10, v12, v13, v14, v15, v16, v17, v18;
        v19 = v11 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = (v20 + 16 * v2);
          v22 = (v20 + 16 * v6);
          if (v2 != v6 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }
}

void sub_DFC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1;
    sub_6EB68(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v48 = v4 + 56;
    v6 = sub_F0E9C();
    v7 = 0;
    v43 = v4 + 64;
    v44 = v2;
    v45 = a2;
    v46 = v4;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v48 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v47 = *(v4 + 36);
      v11 = (*(v4 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(a2 + 16);

      if (v14)
      {
        v20 = sub_51FEC(v13, v12);
        if (v21)
        {
          v22 = (*(a2 + 56) + 16 * v20);
          v13 = *v22;
          v23 = v22[1];

          v12, v24, v25, v26, v27, v28, v29, v30;
          v12 = v23;
        }
      }

      v31 = v47;
      v33 = v5[2];
      v32 = v5[3];
      if (v33 >= v32 >> 1)
      {
        sub_6EB68((v32 > 1), v33 + 1, 1);
        v31 = v47;
      }

      v5[2] = v33 + 1;
      v34 = &v5[2 * v33];
      v34[4] = v13;
      v34[5] = v12;
      v4 = v46;
      v8 = 1 << *(v46 + 32);
      if (v6 >= v8)
      {
        goto LABEL_26;
      }

      v35 = *(v48 + 8 * v10);
      if ((v35 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (v31 != *(v46 + 36))
      {
        goto LABEL_28;
      }

      v36 = v35 & (-2 << (v6 & 0x3F));
      if (v36)
      {
        v8 = __clz(__rbit64(v36)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v44;
      }

      else
      {
        v37 = v5;
        v38 = v10 << 6;
        v39 = v10 + 1;
        v9 = v44;
        v40 = (v43 + 8 * v10);
        while (v39 < (v8 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_E03E4(v6, v31, 0, v15, v16, v17, v18, v19);
            v8 = __clz(__rbit64(v41)) + v38;
            goto LABEL_22;
          }
        }

        sub_E03E4(v6, v31, 0, v15, v16, v17, v18, v19);
LABEL_22:
        v5 = v37;
      }

      ++v7;
      v6 = v8;
      a2 = v45;
      if (v7 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

RCSServiceSession *sub_DFE90(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_373E8(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v172 = a2;
  if (v5)
  {
    v13 = v5;
    v174 = *(v5 + 16);
    if (v174)
    {
      v14 = 0;
      v15 = (v5 + 40);
      v16 = &_swiftEmptyDictionarySingleton;
      v173 = v5;
      while (1)
      {
        if (v14 >= *v13[1].IMDTelephonyServiceSession_opaque)
        {
          goto LABEL_50;
        }

        v33 = *(v15 - 1);
        v34 = *v15;
        swift_bridgeObjectRetain_n();
        v35._countAndFlagsBits = v33;
        v35._object = v34;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v179, v35, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        if (v43)
        {
          v16, v36, v37, v38, v39, v40, v41, v42;
          v34, v157, v158, v159, v160, v161, v162, v163;
          v13, v164, v165, v166, v167, v168, v169, v170;
          sub_53D58(v172);
          sub_1EDC(a1);
          return v16;
        }

        v175 = v33;
        countAndFlagsBits = v179.id._countAndFlagsBits;
        object = v179.id._object;

        sub_3CAB8(&v179);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v177 = v16;
        v54 = sub_51FEC(countAndFlagsBits, object);
        v55 = *v16[1].IMDTelephonyServiceSession_opaque;
        v56 = (v47 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_51;
        }

        v58 = v47;
        if (*v16[1].state >= v57)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v47)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_BC80C();
            if (v58)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_BA3A8(v57, isUniquelyReferenced_nonNull_native);
          v59 = sub_51FEC(countAndFlagsBits, object);
          if ((v58 & 1) != (v47 & 1))
          {
            goto LABEL_53;
          }

          v54 = v59;
          if (v58)
          {
LABEL_4:
            object, v47, v48, v49, v50, v51, v52, v53;
            v16 = v177;
            v17 = (*v177[3].state + 16 * v54);
            v18 = v17[1];
            *v17 = v175;
            v17[1] = v34;
            v34, v19, v20, v21, v22, v23, v24, v25;
            v18, v26, v27, v28, v29, v30, v31, v32;
            goto LABEL_5;
          }
        }

        v16 = v177;
        *&v177[4].IMDTelephonyServiceSession_opaque[8 * (v54 >> 6)] |= 1 << v54;
        v60 = (*v16[3].IMDTelephonyServiceSession_opaque + 16 * v54);
        *v60 = countAndFlagsBits;
        v60[1] = object;
        v61 = (*v16[3].state + 16 * v54);
        *v61 = v175;
        v61[1] = v34;
        v34, v47, v48, v49, v50, v51, v52, v53;
        v62 = *v16[1].IMDTelephonyServiceSession_opaque;
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_52;
        }

        *v16[1].IMDTelephonyServiceSession_opaque = v64;
LABEL_5:
        ++v14;
        v15 += 2;
        v13 = v173;
        if (v174 == v14)
        {
          goto LABEL_21;
        }
      }
    }

    v16 = &_swiftEmptyDictionarySingleton;
LABEL_21:
    v13, v6, v7, v8, v9, v10, v11, v12;
    a2 = v172;
  }

  else
  {
    v16 = sub_E7CB4(_swiftEmptyArrayStorage);
  }

  v65 = *(a2 + 40);
  v66 = *(v65 + 16);
  v67 = _swiftEmptyArrayStorage;
  v176 = v16;
  if (v66)
  {
    v177 = _swiftEmptyArrayStorage;
    sub_6EB68(0, v66, 0);
    v67 = _swiftEmptyArrayStorage;
    v68 = (v65 + 56);
    do
    {
      v70 = *(v68 - 1);
      v69 = *v68;
      v177 = v67;
      v72 = *v67[1].IMDTelephonyServiceSession_opaque;
      v71 = *v67[1].state;

      if (v72 >= v71 >> 1)
      {
        sub_6EB68((v71 > 1), v72 + 1, 1);
        v67 = v177;
      }

      *v67[1].IMDTelephonyServiceSession_opaque = v72 + 1;
      v73 = &v67[v72];
      *v73[2].IMDTelephonyServiceSession_opaque = v70;
      *v73[2].state = v69;
      v68 += 8;
      --v66;
    }

    while (v66);
    a2 = v172;
  }

  sub_DF114(v74);
  v180 = v75;

  v77 = sub_70080(v76);
  v67, v78, v79, v80, v81, v82, v83, v84;
  v178 = v77;
  v92 = *v67[1].IMDTelephonyServiceSession_opaque;
  if (v92)
  {
    state = v67[2].state;
    do
    {
      v95 = *(state - 1);
      v94 = *state;

      sub_DF914(v95, v94);
      v97 = v96;
      v94, v96, v98, v99, v100, v101, v102, v103;
      v97, v104, v105, v106, v107, v108, v109, v110;
      state += 2;
      --v92;
    }

    while (v92);
  }

  v67, v85, v86, v87, v88, v89, v90, v91;
  v111 = 1 << *(v176 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & *(v176 + 64);
  v114 = (v111 + 63) >> 6;

  v115 = 0;
  while (v113)
  {
    v116 = v115;
    v117 = v176;
LABEL_40:
    v118 = __clz(__rbit64(v113));
    v113 &= v113 - 1;
    v119 = (*(v117 + 48) + ((v116 << 10) | (16 * v118)));
    v121 = *v119;
    v120 = v119[1];

    sub_DF914(v121, v120);
    v123 = v122;
    v120, v122, v124, v125, v126, v127, v128, v129;
    v123, v130, v131, v132, v133, v134, v135, v136;
  }

  v117 = v176;
  while (1)
  {
    v116 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      break;
    }

    if (v116 >= v114)
    {

      v137 = v180;

      sub_DFC14(v137, v176);
      v16 = v138;
      v137, v139, v140, v141, v142, v143, v144, v145;
      swift_bridgeObjectRelease_n();
      v153 = v178;
      v154 = *(v178 + 16);
      if (!v154)
      {
        goto LABEL_45;
      }

      v155 = sub_9D6B8(*(v178 + 16), 0);
      v153 = sub_BD61C(&v177, v155 + 4, v154, v178);
      sub_66138(v177);
      if (v153 != v154)
      {
        __break(1u);
LABEL_45:
        v153, v146, v147, v148, v149, v150, v151, v152;
      }

      sub_53D58(a2);
      sub_1EDC(a1);
      return v16;
    }

    v113 = *(v176 + 64 + 8 * v116);
    ++v115;
    if (v113)
    {
      v115 = v116;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_F126C();
  __break(1u);
  return result;
}

void sub_E03E4(RCSServiceSession *self, SEL x1_0, id x2_0, id x3_0, uint64_t w4_0, id x5_0, id x6_0, id x7_0)
{
  if (x2_0)
  {
    self, x1_0, x2_0, x3_0, w4_0, x5_0, x6_0, x7_0;
  }
}

void sub_E03F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_B689C(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_F0E9C();
    v5 = 0;
    v25 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 36);
      v8 = (*(a1 + 56) + 16 * v4);
      v9 = v8[1];
      v27 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_B689C((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v17 = &_swiftEmptyArrayStorage[4 * v10];
      v17[4] = 0xD000000000000012;
      v17[5] = 0x80000000000FFF10;
      v17[6] = v27;
      v17[7] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v7);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7 << 6;
        v21 = v7 + 1;
        v22 = (a1 + 72 + 8 * v7);
        while (v21 < (v6 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_E03E4(v4, v26, 0, v12, v13, v14, v15, v16);
            v6 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_E03E4(v4, v26, 0, v12, v13, v14, v15, v16);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

unint64_t RCSMessageMetadata.init(item:)(void *a1)
{
  v2 = sub_E9318(_swiftEmptyArrayStorage);

  return v2;
}

Swift::Void __swiftcall RCSMessageMetadata.merge(with:)(CoreRCS::RCSMessageMetadata with)
{
  v2 = v1;
  v3 = with.entries._rawValue + 64;
  v4 = 1 << *(with.entries._rawValue + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(with.entries._rawValue + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v11 = v8;
LABEL_11:
    v12 = (*(with.entries._rawValue + 7) + ((v11 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v12;
    v14 = v12[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    v35 = *v2;
    v17 = sub_E92AC();
    v25 = *(v16 + 16);
    v26 = (v18 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_F126C();
      __break(1u);
      return;
    }

    v29 = v18;
    if (*(v16 + 24) >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v17;
        sub_BCE08();
        v17 = v33;
      }
    }

    else
    {
      sub_BB1C8(v28, isUniquelyReferenced_nonNull_native);
      v17 = sub_E92AC();
      if ((v29 & 1) != (v18 & 1))
      {
        goto LABEL_26;
      }
    }

    v6 &= v6 - 1;
    if (v29)
    {
      v9 = (*(v35 + 56) + 16 * v17);
      v10 = v9[1];
      *v9 = v13;
      v9[1] = v14;
      v10, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      *(v35 + 8 * (v17 >> 6) + 64) |= 1 << v17;
      v30 = (*(v35 + 56) + 16 * v17);
      *v30 = v13;
      v30[1] = v14;
      v31 = *(v35 + 16);
      v27 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v27)
      {
        goto LABEL_25;
      }

      *(v35 + 16) = v32;
    }

    *v2 = v35;
    v8 = v11;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v11];
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }
}

uint64_t RCSMessageMetadata.Entry.init(key:value:)(uint64_t a1, RCSServiceSession *a2, uint64_t a3, RCSServiceSession *a4)
{
  v24._countAndFlagsBits = a1;
  v7._rawValue = &off_11F880;
  v24._object = a2;
  v8 = sub_F112C(v7, v24);
  a2, v9, v10, v11, v12, v13, v14, v15;
  if (v8)
  {
    a4, v16, v17, v18, v19, v20, v21, v22;
    return 0;
  }

  return a3;
}

BOOL RCSMessageMetadata.Entry.HeaderKeys.init(rawValue:)(uint64_t a1, RCSServiceSession *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_11F8B8;
  v13._object = a2;
  v4 = sub_F112C(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  return v4 != 0;
}

Swift::tuple_key_String_value_String __swiftcall RCSMessageMetadata.Entry.toPair()()
{
  v2 = v1;
  v3 = v0;

  v4 = 0x80000000000FFF10;
  v5 = 0xD000000000000012;
  v6 = v3;
  v7 = v2;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  result.key._object = v4;
  result.key._countAndFlagsBits = v5;
  return result;
}

Swift::Int sub_E0988()
{
  sub_F12FC();
  sub_F089C();
  return sub_F132C();
}

Swift::Int sub_E09FC(uint64_t a1)
{
  sub_F12FC();
  sub_F089C();
  return sub_F132C();
}

void sub_E0A50(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v13._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_11F8F0;
  v13._object = v3;
  v5 = sub_F112C(v4, v13);
  v3, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

CoreRCS::RCSMessageMetadata __swiftcall RCSMessageMetadata.init(pairs:)(Swift::OpaquePointer pairs)
{
  v9 = sub_E9318(_swiftEmptyArrayStorage);
  v10 = *(pairs._rawValue + 2);
  if (!v10)
  {
LABEL_18:
    pairs._rawValue, v2, v3, v4, v5, v6, v7, v8;
    return v9;
  }

  v11 = 0;
  v12 = (pairs._rawValue + 56);
  while (v11 < *(pairs._rawValue + 2))
  {
    v15 = *(v12 - 1);
    v14 = *v12;
    v17 = *(v12 - 3);
    v16 = *(v12 - 2);

    v18._rawValue = &off_11F928;
    v40._countAndFlagsBits = v17;
    v40._object = v16;
    v19 = sub_F112C(v18, v40);
    v16, v20, v21, v22, v23, v24, v25, v26;
    if (v19)
    {
      v13 = v14;
LABEL_4:
      v13, v2, v3, v4, v5, v6, v7, v8;
      goto LABEL_5;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_E92AC();
    v29 = v9[2];
    v30 = (v2 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_20;
    }

    v33 = v2;
    if (v9[3] < v32)
    {
      sub_BB1C8(v32, isUniquelyReferenced_nonNull_native);
      v28 = sub_E92AC();
      if ((v33 & 1) != (v2 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v33)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v35 = v28;
    sub_BCE08();
    v28 = v35;
    if (v33)
    {
LABEL_14:
      v34 = (v9[7] + 16 * v28);
      v13 = v34[1];
      *v34 = v15;
      v34[1] = v14;
      goto LABEL_4;
    }

LABEL_16:
    v9[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v9[7] + 16 * v28);
    *v36 = v15;
    v36[1] = v14;
    v37 = v9[2];
    v31 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v31)
    {
      goto LABEL_21;
    }

    v9[2] = v38;
LABEL_5:
    ++v11;
    v12 += 4;
    if (v10 == v11)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result.entries._rawValue = sub_F126C();
  __break(1u);
  return result;
}

unint64_t sub_E0D2C()
{
  result = qword_12A9C0[0];
  if (!qword_12A9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_12A9C0);
  }

  return result;
}

uint64_t sub_E0D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_E0DD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_E0E34(uint64_t a1, uint64_t a2, RCSServiceSession *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_BC440(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_51FEC(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_BCF64();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_EE478();
      *v4 = v33;
    }
  }
}

uint64_t sub_E0F2C(uint64_t a1, _OWORD *a2)
{
  v5 = sub_388C8(&qword_12AAD0, &qword_F7850);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TypingIndicator(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_372B0(a1, &qword_12AAD0, &qword_F7850);
    sub_C79BC(a2, v7);
    sub_3CAB8(a2);
    return sub_372B0(v7, &qword_12AAD0, &qword_F7850);
  }

  else
  {
    sub_BDEA0(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_BC5B8(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_3CAB8(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_E10D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 49) = a4;
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  return _swift_task_switch(sub_2D234, v4, 0);
}

uint64_t sub_E1100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return _swift_task_switch(sub_2D7C8, v3, 0);
}

uint64_t sub_E1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return _swift_task_switch(sub_2DD9C, v3, 0);
}

uint64_t RCSReachabilityController.__allocating_init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RCSReachabilityController.init(delegate:operationConfiguration:)(a1, a2);
  return v4;
}

uint64_t RCSReachabilityController.init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  type metadata accessor for RCSOperationController();
  swift_allocObject();
  *(v3 + 24) = RCSOperationController.init(configuration:)(a2);
  return v3;
}

uint64_t RCSReachabilityController.receivedCapabilities(_:operationID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_2E378, 0, 0);
}

unint64_t sub_E1210(uint64_t a1, void *a2)
{
  result = sub_E9400(_swiftEmptyArrayStorage);
  v17 = result;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    do
    {
      v8 = *v7;
      v16[0] = *(v7 - 1);
      v16[1] = v8;

      sub_E12C8(&v17, v16, v2, a2);
      v8, v9, v10, v11, v12, v13, v14, v15;
      v7 += 2;
      --v6;
    }

    while (v6);
    return v17;
  }

  return result;
}

void sub_E12C8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v69 = a1;
  v7 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = a2[1];
  v68 = *a2;
  v11 = *(a3 + 16);

  v12 = [v11 internalServiceName];
  if (!v12)
  {
    sub_F07EC();
    v14 = v13;
    v12 = sub_F07BC();
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  v22 = [a4 serviceOfLastMessage];
  if (v22)
  {
    v23 = v22;
    v24 = sub_F07EC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v11 internalServiceName];
  v28 = sub_F07EC();
  v30 = v29;

  if (v26)
  {
    if (v24 == v28 && v26 == v30)
    {
      v26, v31, v32, v33, v34, v35, v36, v37;
      v30, v38, v39, v40, v41, v42, v43, v44;
      v45 = 1;
      goto LABEL_16;
    }

    v46 = sub_F122C();
    v26, v47, v48, v49, v50, v51, v52, v53;
    v30, v54, v55, v56, v57, v58, v59, v60;
    if (v46)
    {
      v45 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v30, v31, v32, v33, v34, v35, v36, v37;
  }

  if (qword_128F98 != -1)
  {
    swift_once();
  }

  v61 = sub_3C96C(v7, qword_12A288);
  v62 = v67;
  (*(v67 + 16))(v9, v61, v7);
  sub_F044C();
  (*(v62 + 8))(v9, v7);
  v45 = v70;
LABEL_16:
  v63 = objc_allocWithZone(IMServiceReachabilityHandleResult);
  v64 = v68;
  v65 = sub_F07BC();
  v66 = [v63 initWithHandleID:v65 service:v12 isReachable:v45 supportsEncryption:0];

  sub_E0E34(v66, v64, v10);
}

uint64_t sub_E15B0(void *a1)
{
  v3 = *v1;
  v4 = [a1 handleIDs];
  v5 = sub_F09FC();

  v6 = *v5[1].IMDTelephonyServiceSession_opaque;
  v5, v7, v8, v9, v10, v11, v12, v13;
  if (!v6)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v47 = sub_F06CC();
    sub_3C96C(v47, static Logger.reachability);
    v48 = sub_F06AC();
    v49 = sub_F0CCC();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_15;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "RCS is unavailable for sending: no handles requested";
    goto LABEL_13;
  }

  v14 = v1[2];
  v17 = v3 + 80;
  v16 = *(v3 + 80);
  v15 = *(v17 + 8);
  if (((*(v15 + 120))(v16, v15) & 1) == 0)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v53 = sub_F06CC();
    sub_3C96C(v53, static Logger.reachability);
    v54 = sub_F06AC();
    v55 = sub_F0CCC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "RCS is unavailable for sending: Messages is not the default text app", v56, 2u);
    }

    return 8;
  }

  v18 = [a1 context];
  v19 = (*(v15 + 128))();

  if ((v19 & 1) == 0)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v57 = sub_F06CC();
    sub_3C96C(v57, static Logger.reachability);
    v58 = sub_F06AC();
    v59 = sub_F0CCC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "RCS is unavailable for sending: RCS disabled", v60, 2u);
    }

    return 3;
  }

  v20 = [a1 handleIDs];
  v21 = sub_F09FC();

  v22 = *v21[1].IMDTelephonyServiceSession_opaque;
  v21, v23, v24, v25, v26, v27, v28, v29;
  v30 = [a1 context];
  v31 = [v14 maxChatParticipantsForContext:v30];

  if (v31 < v22)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v32 = sub_F06CC();
    sub_3C96C(v32, static Logger.reachability);
    v33 = a1;
    v34 = sub_F06AC();
    v35 = sub_F0CCC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      v37 = [v33 handleIDs];
      v38 = sub_F09FC();

      v39 = *v38[1].IMDTelephonyServiceSession_opaque;
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v36 + 4) = v39;

      _os_log_impl(&dword_0, v34, v35, "Too many participants (%ld) greater than service max participants", v36, 0xCu);
    }

    else
    {
    }

    return 1;
  }

  v61 = [a1 context];
  v62 = [v61 conversationWasDowngraded];

  if ((v62 & 1) == 0)
  {
    if ([v14 networkDataAvailable])
    {
      v67 = [a1 context];
      v68 = (*(v15 + 64))();

      if (v68)
      {
        if (qword_128F40 != -1)
        {
          swift_once();
        }

        v69 = sub_F06CC();
        sub_3C96C(v69, static Logger.reachability);
        v70 = sub_F06AC();
        v71 = sub_F0CCC();
        if (!os_log_type_enabled(v70, v71))
        {
          goto LABEL_49;
        }

        v72 = swift_slowAlloc();
        *v72 = 0;
        v73 = "RCS is available for sending: carrier supports interworking";
LABEL_48:
        _os_log_impl(&dword_0, v70, v71, v73, v72, 2u);

LABEL_49:

        return 1;
      }

      v75 = [a1 handleIDs];
      v76 = sub_F09FC();

      LOBYTE(v75) = sub_E41D4(v76);
      v76, v77, v78, v79, v80, v81, v82, v83;
      if (v75)
      {
        if (qword_128F40 != -1)
        {
          swift_once();
        }

        v84 = sub_F06CC();
        sub_3C96C(v84, static Logger.reachability);
        v70 = sub_F06AC();
        v71 = sub_F0CCC();
        if (!os_log_type_enabled(v70, v71))
        {
          goto LABEL_49;
        }

        v72 = swift_slowAlloc();
        *v72 = 0;
        v73 = "RCS is available for sending: assume RCS is avaibable for chat bot";
        goto LABEL_48;
      }

      v85 = [a1 handleIDs];
      v86 = sub_F09FC();

      if (*v86[1].IMDTelephonyServiceSession_opaque)
      {
        v95 = *v86[2].IMDTelephonyServiceSession_opaque;
        v94 = *v86[2].state;

        v86, v96, v97, v98, v99, v100, v101, v102;
        v103 = [a1 handleIDs];
        v104 = sub_F09FC();

        v105 = *v104[1].IMDTelephonyServiceSession_opaque;
        v104, v106, v107, v108, v109, v110, v111, v112;
        if (v105 == 1)
        {
          v113 = sub_F07BC();
          v114 = [v14 hasValidDowngradeRequestForHandleID:v113];

          if (v114)
          {
            if (qword_128F40 != -1)
            {
              swift_once();
            }

            v115 = sub_F06CC();
            sub_3C96C(v115, static Logger.reachability);

            v48 = sub_F06AC();
            v116 = sub_F0CCC();
            v94, v117, v118, v119, v120, v121, v122, v123;
            if (!os_log_type_enabled(v48, v116))
            {
              v94, v124, v125, v126, v127, v128, v129, v130;
              goto LABEL_15;
            }

            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v166 = v132;
            *v131 = 136315138;
            v133 = sub_3E850(v95, v94, &v166);
            v94, v134, v135, v136, v137, v138, v139, v140;
            *(v131 + 4) = v133;
            _os_log_impl(&dword_0, v48, v116, "RCS is unavailable for sending: %s requested downgrade", v131, 0xCu);
            sub_1EDC(v132);

LABEL_14:

LABEL_15:

            return 0;
          }
        }

        v141 = v94;
      }

      else
      {
        v141 = v86;
      }

      v141, v87, v88, v89, v90, v91, v92, v93;
      v142 = [a1 handleIDs];
      v143 = sub_F09FC();

      state = v143[2].state;
      v152 = -*v143[1].IMDTelephonyServiceSession_opaque;
      v153 = -1;
      while (v152 + v153 != -1)
      {
        if (++v153 >= *v143[1].IMDTelephonyServiceSession_opaque)
        {
          __break(1u);
          goto LABEL_72;
        }

        v154 = state + 2;
        v155 = *state;

        v156 = sub_F07BC();
        IsStewie = IMStringIsStewie();
        v155, v158, v159, v160, v161, v162, v163, v164;

        state = v154;
        if (IsStewie)
        {
          v143, v144, v145, v146, v147, v148, v149, v150;
          return 9;
        }
      }

      v143, v144, v145, v146, v147, v148, v149, v150;
      if (((*(v15 + 32))(v16, v15) & 1) == 0)
      {
        return 0;
      }

      if (qword_128F40 != -1)
      {
        swift_once();
      }

      v165 = sub_F06CC();
      sub_3C96C(v165, static Logger.reachability);
      v70 = sub_F06AC();
      v71 = sub_F0CCC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        v73 = "isRetryingMessages, so skip RCS downgrade";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v74 = sub_F06CC();
    sub_3C96C(v74, static Logger.reachability);
    v48 = sub_F06AC();
    v49 = sub_F0CCC();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_15;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "RCS is unavailable for sending: network unavailable";
LABEL_13:
    _os_log_impl(&dword_0, v48, v49, v51, v50, 2u);
    goto LABEL_14;
  }

  if (qword_128F40 != -1)
  {
LABEL_72:
    swift_once();
  }

  v63 = sub_F06CC();
  sub_3C96C(v63, static Logger.reachability);
  v64 = sub_F06AC();
  v65 = sub_F0CCC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_0, v64, v65, "RCS service downgraded", v66, 2u);
  }

  return 7;
}

id sub_E2148(uint64_t a1, RCSServiceSession *a2, void *a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v13 = *v7;
  sub_37380(a4, &v114, &qword_127EB8, &qword_F2C80);
  v113 = a3;
  if (v115)
  {
    sub_55248(&v114, v116);
    sub_E4188();
    sub_1F28(v116, &v114);
    v14 = [a3 context];
    v15 = [v14 chatStyle];

    v16 = sub_D2AA4(&v114, v15 == 43, a1, a2);
    sub_1EDC(v116);
  }

  else
  {
    sub_372B0(&v114, &qword_127EB8, &qword_F2C80);
    v17 = IMServiceNameRCS;
    v18 = objc_allocWithZone(IMServiceReachabilityHandleResult);
    v19 = v17;
    v20 = sub_F07BC();
    v16 = [v18 initWithHandleID:v20 service:v19 isReachable:a5 & 1 supportsEncryption:a6 & 1];
  }

  v21 = [objc_opt_self() sharedFeatureFlags];
  v22 = [v21 isRelayChatBotEnabled];

  if (v22)
  {
    v23 = [v113 context];
    v26 = v13 + 80;
    v25 = *(v13 + 80);
    v24 = *(v26 + 8);
    v27 = (*(v24 + 16))();

    if (v27)
    {
      v28 = [v113 context];
      v29 = [v28 chatIdentifier];

      if (v29)
      {
        v30 = sub_F07EC();
        v32 = v31;

        if ((v30 != a1 || v32 != a2) && (sub_F122C() & 1) == 0)
        {
          goto LABEL_20;
        }

        v40 = v113;
        v41 = [v113 context];
        v42 = [v41 requestPersistentMenu];

        if (v42)
        {
          v43 = (*(v24 + 80))(v30, v32, v25, v24);
          if (v43)
          {
            v44 = v43;
            v45 = [v43 relayDictionaryRepresentation];
            v46 = sub_F076C();

            v47 = sub_51844(v46);
            v46, v48, v49, v50, v51, v52, v53, v54;
            v55 = sub_F075C();
            v47, v56, v57, v58, v59, v60, v61, v62;
            [v16 setPersistentMenuDictionary:v55];
          }

          else
          {
            v63 = [objc_opt_self() relayEmptyStampProperty];
            v64 = sub_F076C();

            v65 = sub_51844(v64);
            v64, v66, v67, v68, v69, v70, v71, v72;
            v55 = sub_F075C();
            v65, v73, v74, v75, v76, v77, v78, v79;
            [v16 setPersistentMenuDictionary:v55];
          }

          v40 = v113;
        }

        v80 = [v40 context];
        v81 = [v80 requestBrandInfo];

        if (v81)
        {
          v82 = (*(v24 + 96))(v30, v32, v25, v24);
          if (v82)
          {
            v83 = v82;
            v84 = [v82 relayDictionaryRepresentation];
            v85 = sub_F076C();

            v86 = sub_51844(v85);
            v85, v87, v88, v89, v90, v91, v92, v93;
            v94 = sub_F075C();
            v86, v95, v96, v97, v98, v99, v100, v101;
            [v16 setBrandInfoDictionary:v94];
          }

          v102 = (*(v24 + 104))(v30, v32, v25, v24);
          v104 = v103;
          v32, v103, v105, v106, v107, v108, v109, v110;
          if (v104 >> 60 != 15)
          {
            v111 = sub_F024C();
            [v16 setBrandLogoData:v111];

            sub_66124(v102, v104);
          }
        }

        else
        {
LABEL_20:
          v32, v33, v34, v35, v36, v37, v38, v39;
        }
      }
    }
  }

  return v16;
}

uint64_t sub_E271C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = a6;
  *(a9 + 20) = a7;
  *(a9 + 21) = a8;
  *(a9 + 22) = a10;
  v15 = type metadata accessor for RCSReachabilityController.MockRCSHandleCapabilities(0, a13, a14, a4);
  result = sub_E40F0(a11, a9 + *(v15 + 64));
  *(a9 + *(v15 + 68)) = a12;
  return result;
}

uint64_t RCSReachabilityController.calculateReachability(with:responseHandler:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *v2;
  v3[16] = *(*v2 + 88);
  v3[17] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[18] = AssociatedTypeWitness;
  v3[19] = *(AssociatedTypeWitness - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_F0DEC();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_2E520, 0, 0);
}

uint64_t sub_E29F0(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return _swift_task_switch(sub_303B8, 0, 0);
}

void sub_E2A14(uint64_t a1, char a2, char a3, id a4, uint64_t a5, void *a6, void *a7)
{
  LOBYTE(v10) = a2;
  v12 = [*(a5 + 16) internalServiceName];
  if (!v12)
  {
    sub_F07EC();
    v14 = v13;
    v12 = sub_F07BC();
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  v22 = *(a1 + 16);
  v90 = a6;
  if (!v22)
  {
    v42 = 0;
    v43 = 0;
    goto LABEL_37;
  }

  v91 = a3;
  v23 = v10;
  v24 = &selRef__setLocalPath_;
  v25 = [a6 handleIDs];
  v26 = sub_F09FC();

  v27 = *v26[1].IMDTelephonyServiceSession_opaque;
  v26, v28, v29, v30, v31, v32, v33, v34;
  if (v22 == v27)
  {
    v35 = a4;
    a4 = a6;
    v36 = 1 << *(a1 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(a1 + 64);
    v39 = (v36 + 63) >> 6;

    v10 = 0;
    do
    {
      if (!v38)
      {
        while (1)
        {
          v40 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v40 >= v39)
          {
            v42 = 1;
            goto LABEL_32;
          }

          v38 = *(a1 + 64 + 8 * v40);
          ++v10;
          if (v38)
          {
            v10 = v40;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

      v40 = v10;
LABEL_14:
      v41 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
    }

    while (([*(*(a1 + 56) + ((v40 << 9) | (8 * v41))) isReachable] & 1) != 0);
    v42 = 0;
LABEL_32:

    a6 = a4;
    LOBYTE(v10) = v23;
    a4 = v35;
    v24 = &selRef__setLocalPath_;
    v44 = *(a1 + 16);
    if (v44)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

  v42 = 0;
  LOBYTE(v10) = v23;
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_33:
    v43 = 0;
LABEL_36:
    a3 = v91;
LABEL_37:
    v61 = objc_allocWithZone(IMServiceReachabilityResult);
    sub_E4188();
    v62 = sub_F075C();
    LOBYTE(v88) = a3 & 1;
    a4 = [v61 initWithService:v12 error:a4 handleResults:v62 isFinal:v10 & 1 allAreReachable:v42 allSupportEncryption:v43 didCheckServer:v88];

    if (qword_128F40 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_18:
  v45 = [a6 v24[65]];
  v46 = sub_F09FC();

  v47 = *v46[1].IMDTelephonyServiceSession_opaque;
  v46, v48, v49, v50, v51, v52, v53, v54;
  if (v44 != v47)
  {
LABEL_30:
    v43 = 0;
LABEL_35:
    LOBYTE(v10) = v23;
    goto LABEL_36;
  }

  v55 = 1 << *(a1 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v10 = v56 & *(a1 + 64);
  v57 = (v55 + 63) >> 6;

  v58 = 0;
  while (v10)
  {
    v59 = v58;
LABEL_28:
    v60 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    if (([*(*(a1 + 56) + ((v59 << 9) | (8 * v60))) supportsEncryption] & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  while (1)
  {
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v59 >= v57)
    {

      v43 = 1;
      goto LABEL_35;
    }

    v10 = *(a1 + 64 + 8 * v59);
    ++v58;
    if (v10)
    {
      v58 = v59;
      goto LABEL_28;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_38:
  v63 = sub_F06CC();
  sub_3C96C(v63, static Logger.reachability);
  v92 = a4;
  v64 = sub_F06AC();
  v65 = sub_F0CCC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v93 = v67;
    *v66 = 67109634;
    *(v66 + 4) = [v92 allAreReachable];

    *(v66 + 8) = 1024;
    *(v66 + 10) = v10 & 1;
    *(v66 + 14) = 2080;
    v68 = [v92 handleResults];
    v69 = sub_F076C();

    sub_E3CDC(v69);
    v69, v70, v71, v72, v73, v74, v75, v76;
    v77 = sub_F077C();
    v79 = v78;

    v80 = sub_3E850(v77, v79, &v93);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v66 + 16) = v80;
    _os_log_impl(&dword_0, v64, v65, "All handles reachable over RCS %{BOOL}d isFinal %{BOOL}d per-handle reachability %s", v66, 0x18u);
    sub_1EDC(v67);
  }

  else
  {
  }

  [a7 reachabilityRequest:v90 updatedWithResult:v92];
}

void sub_E2F78(void *a1, uint64_t *a2, id a3)
{
  v6 = *a2;
  v7 = [a1 context];
  v64 = [v7 isForPendingConversation];

  v8 = objc_opt_self();
  v9 = [v8 sharedFeatureFlags];
  v10 = [v9 isRelayChatBotEnabled];

  if (v10)
  {
    v11 = [a1 context];
    v12 = [v11 requestPersistentMenu];

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = [a1 context];
      v13 = [v14 requestBrandInfo];
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v6 + 88);
  v63 = *(v6 + 80);
  v16 = (*(v15 + 144))();
  v17 = [a1 handleIDs];
  v18 = sub_F09FC();

  v19 = [a1 context];
  v20 = sub_E1210(v18, v19);
  v18, v21, v22, v23, v24, v25, v26, v27;

  if (v16 & 1) != 0 && ((v64 | v13))
  {
    sub_E2A14(v20, 0, 0, 0, a2, a1, a3);
    v20, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v8 sharedFeatureFlags];
    v36 = [v35 isRelayChatBotEnabled];

    if (v36 && ((v37 = [a1 context], v38 = objc_msgSend(v37, "requestPersistentMenu"), v37, (v38 & 1) != 0) || (v39 = objc_msgSend(a1, "context"), v40 = objc_msgSend(v39, "requestBrandInfo"), v39, v40)))
    {
      v41 = objc_allocWithZone(IMServiceReachabilityResponseBlockHandler);
      aBlock[4] = sub_333E4;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_E3C58;
      aBlock[3] = &unk_1229C8;
      v42 = _Block_copy(aBlock);

      v43 = [v41 initWithBlock:v42];
      _Block_release(v42);

      sub_388C8(&qword_128BB8, &unk_F41E0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_F56F0;
      *(v44 + 32) = a3;
      *(v44 + 40) = v43;
      v45 = objc_allocWithZone(IMMultiplexingServiceReachabilityResponseHandler);
      swift_unknownObjectRetain();
      v46 = v43;
      sub_388C8(qword_12AB00, &unk_F78D8);
      v47 = sub_F09EC();
      v44, v48, v49, v50, v51, v52, v53, v54;
      a3 = [v45 initWithResponseHandlers:v47];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v62 = *(v15 + 152);
    swift_unknownObjectRetain();
    v62(a1, a3, v63, v15);
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_E2A14(v20, 1, 0, 0, a2, a1, a3);

    v20, v55, v56, v57, v58, v59, v60, v61;
  }
}

void sub_E3404(int a1, id a2, uint64_t *a3)
{
  v57 = *a3;
  v3 = [a2 handleResults];
  sub_E4188();
  v4 = sub_F076C();

  v5 = 0;
  v6 = *(v4 + 64);
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      while (1)
      {
LABEL_10:
        v12 = __clz(__rbit64(v9)) | (v5 << 6);
        v13 = (*(v4 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(*(v4 + 56) + 8 * v12);

        v17 = v16;
        v18 = [v17 persistentMenuDictionary];
        if (v18)
        {
          v19 = v18;
          v20 = sub_F076C();

          (*(*(v57 + 88) + 88))(v20, v14, v15, *(v57 + 80));
          v20, v21, v22, v23, v24, v25, v26, v27;
        }

        v58 = v14;
        v9 &= v9 - 1;
        v28 = [v17 brandInfoDictionary];
        if (v28)
        {
          break;
        }

        v15, v29, v30, v31, v32, v33, v34, v35;

        if (!v9)
        {
          goto LABEL_6;
        }
      }

      v36 = v28;
      v56 = sub_F076C();

      v37 = [v17 brandLogoData];
      if (v37)
      {
        v38 = v37;
        v39 = sub_F025C();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xF000000000000000;
      }

      (*(*(v57 + 88) + 112))(v56, v39, v41, v58, v15, *(v57 + 80));
      v15, v42, v43, v44, v45, v46, v47, v48;

      sub_66124(v39, v41);
      v56, v49, v50, v51, v52, v53, v54, v55;
    }

    while (v9);
  }

  while (1)
  {
LABEL_6:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v4 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }
}

uint64_t sub_E36EC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 64) = a2;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_30858, 0, 0);
}

uint64_t RCSReachabilityController.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RCSReachabilityController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_E377C()
{
  sub_F0F9C(25);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  sub_F08CC(*v0);
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_F08CC(v9);
  return 0xD000000000000016;
}

uint64_t sub_E3800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RCSOperationController.OperationID.description.getter(a1, WitnessTable);
}

uint64_t sub_E3854(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 400) = a5;
  *(v6 + 408) = v5;
  *(v6 + 73) = a4;
  *(v6 + 384) = a2;
  *(v6 + 392) = a3;
  *(v6 + 376) = a1;
  v7 = *v5;
  *(v6 + 416) = *(*v5 + 88);
  *(v6 + 424) = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 432) = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  *(v6 + 440) = v9;
  *(v6 + 448) = *(v9 + 64);
  *(v6 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_30ABC, 0, 0);
}

uint64_t sub_E396C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = *a3;
  return _swift_task_switch(sub_31DC0, 0, 0);
}

uint64_t sub_E39C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = a6;
  *(v6 + 232) = a5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = *a4;
  *(v6 + 128) = *(*a4 + 88);
  *(v6 + 136) = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 144) = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 + 64);
  *(v6 + 168) = swift_task_alloc();
  sub_388C8(&qword_127EB0, &unk_F2B30);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v10 = sub_388C8(&qword_12AAE8, &qword_F7880);
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 - 8);
  *(v6 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_31FE8, 0, 0);
}

uint64_t sub_E3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_32858;

  return sub_E3854(a5, a6, a7, a8, v16);
}

void sub_E3C58(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void *sub_E3CDC(uint64_t a1)
{
  sub_388C8(&qword_12AAF8, qword_F78C0);
  result = sub_F10EC();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v25 + 56) + 8 * v15);

      result = [v19 isReachable];
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + v15) = result;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_E3E60(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_32978;

  return v5(v2 + 16);
}

void sub_E3FDC(uint64_t a1)
{
  sub_E4098(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_E4098(uint64_t a1)
{
  if (!qword_12AAC8)
  {
    sub_F030C();
    v1 = sub_F0DEC();
    if (!v2)
    {
      atomic_store(v1, &qword_12AAC8);
    }
  }
}

uint64_t sub_E40F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127B20, &unk_F74E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_E4160(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

unint64_t sub_E4188()
{
  result = qword_12AAF0;
  if (!qword_12AAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12AAF0);
  }

  return result;
}

BOOL sub_E41D4(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 2;
    v4 = *v1;

    v5 = sub_F07BC();
    v4, v6, v7, v8, v9, v10, v11, v12;
    LODWORD(v4) = [v5 __im_isChatBot];

    v1 = v3;
  }

  while (!v4);
  return v2 != 0;
}

uint64_t sub_E4264(uint64_t a1)
{
  result = sub_F035C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_E4308(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_E4344(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v8 = 0xED0000747865746ELL;
  v9 = 0x6F632D656E6F6870;
  v10 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = 1919251317;
    }

    else
    {
      v11 = 0x6F632D656E6F6870;
    }

    if (v10)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xED0000747865746ELL;
    }
  }

  else if (a1 == 2)
  {
    v11 = 0x6E657265666E6F63;
    v12 = 0xEA00000000006563;
  }

  else
  {
    if (a1 == 3)
    {
      v11 = 25199;
    }

    else
    {
      v11 = 0x726F70736E617274;
    }

    if (v10 == 3)
    {
      v12 = 0xE200000000000000;
    }

    else
    {
      v12 = 0xE900000000000074;
    }
  }

  v13 = 0x6E657265666E6F63;
  v14 = 0xEA00000000006563;
  v15 = 0xE200000000000000;
  v16 = 25199;
  if (a2 != 3)
  {
    v16 = 0x726F70736E617274;
    v15 = 0xE900000000000074;
  }

  if (a2 != 2)
  {
    v13 = v16;
    v14 = v15;
  }

  if (a2)
  {
    v9 = 1919251317;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v17 = v9;
  }

  else
  {
    v17 = v13;
  }

  if (a2 <= 1u)
  {
    v18 = v8;
  }

  else
  {
    v18 = v14;
  }

  if (v11 == v17 && v12 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_F122C();
  }

  v12, a2, v17, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_E44B8(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v8 = 1954047348;
  v9 = a1;
  if (a1 <= 3u)
  {
    v18 = 0xE400000000000000;
    v19 = 0xE800000000000000;
    v20 = 0x6E6F697461636F6CLL;
    if (a1 != 2)
    {
      v20 = 0x70756F7267;
      v19 = 0xE500000000000000;
    }

    v21 = 0x726566736E617274;
    if (a1)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v21 = 1954047348;
    }

    if (a1 <= 1u)
    {
      v16 = v21;
    }

    else
    {
      v16 = v20;
    }

    if (v9 <= 1)
    {
      v17 = v18;
    }

    else
    {
      v17 = v19;
    }
  }

  else
  {
    v10 = 0x6574736567677573;
    v11 = 0xEE00796C70655264;
    v12 = 0x6574736567677573;
    v13 = 0xEF6E6F6974634164;
    if (a1 != 7)
    {
      v12 = 0x6341656369766564;
      v13 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v10 = v12;
      v11 = v13;
    }

    v14 = 0xE600000000000000;
    v15 = 0x676E69707974;
    if (a1 != 4)
    {
      v15 = 0x6472614368636972;
      v14 = 0xE900000000000073;
    }

    if (a1 <= 5u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v10;
    }

    if (v9 <= 5)
    {
      v17 = v14;
    }

    else
    {
      v17 = v11;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v22 = 0xE800000000000000;
        v8 = 0x6E6F697461636F6CLL;
        if (v16 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
        v8 = 0x70756F7267;
        if (v16 != 0x70756F7267)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v22 = 0xE800000000000000;
      v8 = 0x726566736E617274;
      if (v16 != 0x726566736E617274)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v22 = 0xE400000000000000;
      if (v16 != 1954047348)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v22 = 0xE600000000000000;
      v8 = 0x676E69707974;
      if (v16 != 0x676E69707974)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v8 = 0x6472614368636972;
      v22 = 0xE900000000000073;
      if (v16 != 0x6472614368636972)
      {
LABEL_52:
        v23 = sub_F122C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v8 = 0x6574736567677573;
    v22 = 0xEE00796C70655264;
    if (v16 != 0x6574736567677573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v8 = 0x6574736567677573;
    v22 = 0xEF6E6F6974634164;
    if (v16 != 0x6574736567677573)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v8 = 0x6341656369766564;
    v22 = 0xEC0000006E6F6974;
    if (v16 != 0x6341656369766564)
    {
      goto LABEL_52;
    }
  }

  if (v17 != v22)
  {
    goto LABEL_52;
  }

  v23 = 1;
LABEL_53:
  v17, a2, v8, a4, a5, a6, a7, a8;
  v22, v24, v25, v26, v27, v28, v29, v30;
  return v23 & 1;
}

void __swiftcall RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(CoreRCS::RCSHandle *__return_ptr retstr, Swift::String scheme, Swift::String id, Swift::OpaquePointer attributes, CoreRCS::RCSHandle::BotStatus botStatus, Swift::String_optional alternateHandle)
{
  object = alternateHandle.value._object;
  countAndFlagsBits = alternateHandle.value._countAndFlagsBits;
  v9 = id._object;
  v10 = id._countAndFlagsBits;
  v11 = scheme._object;
  v12 = scheme._countAndFlagsBits;
  v14 = sub_E7DC8(_swiftEmptyArrayStorage);
  v15 = sub_E5BB4(attributes._rawValue);
  v14, v16, v17, v18, v19, v20, v21, v22;
  attributes._rawValue, v23, v24, v25, v26, v27, v28, v29;
  v33._countAndFlagsBits = v12;
  v33._object = v11;
  v34._countAndFlagsBits = v10;
  v34._object = v9;
  *v35 = v15;
  *&v35[8] = countAndFlagsBits;
  *&v35[16] = object;
  v35[24] = botStatus;
  v36[0] = v12;
  v36[1] = v11;
  v36[2] = v10;
  v36[3] = v9;
  v36[4] = v15;
  v36[5] = countAndFlagsBits;
  v36[6] = object;
  v37 = botStatus;
  sub_38910(&v33, v32);
  sub_3CAB8(v36);
  v30 = v34;
  retstr->scheme = v33;
  retstr->id = v30;
  *&retstr->attributes._rawValue = *v35;
  *(&retstr->alternateHandle + 1) = *&v35[9];
}

uint64_t RCSHandle.canonicalizedHandle(for:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *v2 == 7103860 && v7 == 0xE300000000000000;
  if (!v8 && (sub_F122C() & 1) == 0)
  {
    v83 = v6 == 0x6F746C69616DLL && v7 == 0xE600000000000000;
    if (v83 || (sub_F122C() & 1) != 0)
    {
      v125 = *(v2 + 16);
      sub_E7EC0(&v125, &v118);
      v84 = sub_53E04(_swiftEmptyArrayStorage);
      v85 = sub_E7DC8(_swiftEmptyArrayStorage);
      v110 = v125;
      v86 = sub_E5BB4(v84);
      v85, v87, v88, v89, v90, v91, v92, v93;
      v84, v94, v95, v96, v97, v98, v99, v100;
      v111 = 7367027;
      v112 = 0xE300000000000000;
      v113 = v110;
      v115 = 0;
      v116 = 0;
      v114 = v86;
      v117 = 0;
      v118 = 7367027;
      v119 = 0xE300000000000000;
      v120 = v110;
      v123 = 0;
      v121 = v86;
      goto LABEL_21;
    }

    v102 = *(v2 + 56);
    v104 = *(v3 + 40);
    v103 = *(v3 + 48);
    v13 = *(v3 + 24);
    v105 = *(v3 + 32);
    v12 = *(v3 + 16);
LABEL_24:
    result = sub_38910(v3, &v118);
    goto LABEL_25;
  }

  v9 = a1();
  v11 = v10;
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = sub_F07BC();
  v107 = v9;
  if (v11)
  {

    v15 = sub_F07BC();
    v11, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v15 = 0;
  }

  v23 = IMPhoneNumberRefCopyForPhoneNumber();

  v24 = v23;
  v25 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (!v25)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v54 = sub_F06CC();
    sub_3C96C(v54, static Logger.rcs);

    sub_38910(v3, &v118);
    v55 = sub_F06AC();
    v56 = sub_F0CEC();
    sub_3CAB8(v3);
    v11, v57, v58, v59, v60, v61, v62, v63;
    if (os_log_type_enabled(v55, v56))
    {
      log = v55;
      v71 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_3E850(v12, v13, &v111);
      *(v71 + 12) = 2080;
      v118 = v107;
      v119 = v11;
      sub_388C8(&qword_12AB88, &qword_F7970);
      v72 = sub_F083C();
      v74 = v73;
      v108 = v24;
      v75 = sub_3E850(v72, v73, &v111);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v71 + 14) = v75;
      _os_log_impl(&dword_0, log, v56, "Could not normalize phone number %s country code %s", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v11, v64, v65, v66, v67, v68, v69, v70;
    }

    v102 = *(v3 + 56);
    v104 = *(v3 + 40);
    v103 = *(v3 + 48);
    v105 = *(v3 + 32);
    goto LABEL_24;
  }

  v33 = v25;
  v11, v26, v27, v28, v29, v30, v31, v32;
  v34 = sub_F07EC();
  v36 = v35;

  v37 = sub_53E04(_swiftEmptyArrayStorage);
  v38 = sub_E7DC8(_swiftEmptyArrayStorage);
  v39 = sub_E5BB4(v37);
  v38, v40, v41, v42, v43, v44, v45, v46;
  v37, v47, v48, v49, v50, v51, v52, v53;

  v111 = 7103860;
  v112 = 0xE300000000000000;
  *&v113 = v34;
  *(&v113 + 1) = v36;
  v115 = 0;
  v116 = 0;
  v114 = v39;
  v117 = 0;
  v118 = 7103860;
  v119 = 0xE300000000000000;
  *&v120 = v34;
  *(&v120 + 1) = v36;
  v123 = 0;
  v121 = v39;
LABEL_21:
  v122 = 0;
  v124 = 0;
  sub_38910(&v111, v109);
  result = sub_3CAB8(&v118);
  v102 = v117;
  v104 = v115;
  v103 = v116;
  v13 = *(&v113 + 1);
  v105 = v114;
  v7 = v112;
  v12 = v113;
  v6 = v111;
LABEL_25:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v105;
  *(a2 + 40) = v104;
  *(a2 + 48) = v103;
  *(a2 + 56) = v102;
  return result;
}