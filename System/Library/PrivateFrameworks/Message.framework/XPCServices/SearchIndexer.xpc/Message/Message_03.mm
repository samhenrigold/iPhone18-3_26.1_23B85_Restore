uint64_t sub_1000357A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035808()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100035840()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035878()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000358C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100035A44()
{
  result = qword_1005CDA88;
  if (!qword_1005CDA88)
  {
    result = swift_getWitnessTable(byte_1004CF894, &type metadata for DetermineMessageBatches.CommandID.Kind, v0, v1);
    atomic_store(result, &qword_1005CDA88);
  }

  return result;
}

uint64_t sub_100035AC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100035B98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DetermineNewestMessages(uint64_t a1)
{
  result = qword_1005CDB08;
  if (!qword_1005CDB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035C94(uint64_t a1)
{
  sub_10002AABC(319);
  if (v1 <= 0x3F)
  {
    sub_100035D34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100035D34(uint64_t a1)
{
  if (!qword_1005CDB18)
  {
    sub_10000DEFC(&unk_1005D91B0, &unk_1004CF400);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CDB18);
    }
  }
}

void sub_100035DAC(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v18 - v6;
  sub_1000118A4(a1, v18 - v6);
  sub_1000118A4(a1, v4);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v8 = sub_1004A4A54();
  v9 = sub_1004A6034();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v11 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v11;
    *(v10 + 11) = 2082;
    v12 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_10015BA6C(*(v12 + 1), *(v12 + 2), &v20);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v13 = *(v11 + 12);
    sub_100011908(v4);
    *(v10 + 29) = v13;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v14 = *(v12 + 4);
    LODWORD(v12) = *(v12 + 10);

    sub_100011908(v7);
    v18[1] = v14;
    v19 = v12;
    v15 = sub_1004A5824();
    v17 = sub_10015BA6C(v15, v16, &v20);

    *(v10 + 43) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v10, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v4);

    sub_100011908(v7);
  }
}

uint64_t sub_10003602C(uint64_t a1, uint64_t a2)
{
  v128 = a1;
  v129 = a2;
  v2 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v2 - 8);
  v116 = &v116 - v3;
  v127 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v127);
  v123 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = &v116 - v6;
  __chkstk_darwin(v7);
  v126 = &v116 - v8;
  __chkstk_darwin(v9);
  v118 = &v116 - v10;
  __chkstk_darwin(v11);
  v117 = &v116 - v12;
  __chkstk_darwin(v13);
  v119 = &v116 - v14;
  v15 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v116 - v16;
  v122 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v18 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v116 - v21;
  __chkstk_darwin(v23);
  v121 = &v116 - v24;
  v25 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v25 - 8);
  v27 = &v116 - v26;
  v28 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v125 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v116 - v32;
  __chkstk_darwin(v34);
  v36 = &v116 - v35;
  __chkstk_darwin(v37);
  v130 = &v116 - v38;
  v39 = type metadata accessor for DetermineNewestMessages(0);
  sub_10000E268(v131 + *(v39 + 32), v27, &qword_1005CD510, &unk_1004CF2E0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100025F40(v27, &qword_1005CD510, &unk_1004CF2E0);
    v40 = v129;
    v41 = v124;
    sub_1000118A4(v129, v124);
    v42 = v123;
    sub_1000118A4(v40, v123);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v43 = sub_1004A4A54();
    v44 = sub_1004A6014();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v134[0] = swift_slowAlloc();
      *v45 = 68159235;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v127;
      v47 = v42 + *(v127 + 20);
      *(v45 + 10) = *v47;
      *(v45 + 11) = 2082;
      v48 = v41 + *(v46 + 20);
      *(v45 + 13) = sub_10015BA6C(*(v48 + 8), *(v48 + 16), v134);
      *(v45 + 21) = 1040;
      *(v45 + 23) = 2;
      *(v45 + 27) = 512;
      v49 = *(v47 + 24);
      sub_100011908(v42);
      *(v45 + 29) = v49;
      *(v45 + 31) = 2160;
      *(v45 + 33) = 0x786F626C69616DLL;
      *(v45 + 41) = 2085;
      v50 = *(v48 + 32);
      v51 = *(v48 + 40);

      sub_100011908(v41);
      v132 = v50;
      v133 = v51;
      v52 = sub_1004A5824();
      v54 = sub_10015BA6C(v52, v53, v134);

      *(v45 + 43) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not get any UIDs", v45, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v42);

      sub_100011908(v41);
    }

    v58 = v128;
    v59 = v130;
    sub_100016D2C();
    v60 = sub_1004A7114();
    goto LABEL_21;
  }

  v55 = v129;
  sub_100025FDC(v27, v36, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v36, v33, &unk_1005D91B0, &unk_1004CF400);
  v124 = v28;
  v56 = v36;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
    v57 = 1;
  }

  else
  {
    sub_100025FDC(v33, v22, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v22, v17, &qword_1005CD1D0, &unk_1004CF2C0);
    v57 = 0;
  }

  v59 = v130;
  v61 = v55;
  v62 = v122;
  (*(v18 + 56))(v17, v57, 1, v122);
  v63 = (*(v18 + 48))(v17, 1, v62);
  v65 = v125;
  v64 = v126;
  if (v63 == 1)
  {
    sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
    v66 = v118;
    sub_1000118A4(v61, v118);
    sub_1000118A4(v61, v64);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v67 = sub_1004A4A54();
    v68 = sub_1004A6034();
    v69 = os_log_type_enabled(v67, v68);
    v58 = v128;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v130 = v56;
      v134[0] = v129;
      *v70 = 68159235;
      *(v70 + 4) = 2;
      *(v70 + 8) = 256;
      v71 = v127;
      v72 = v64 + *(v127 + 20);
      *(v70 + 10) = *v72;
      *(v70 + 11) = 2082;
      v73 = v64;
      v74 = v66 + *(v71 + 20);
      *(v70 + 13) = sub_10015BA6C(*(v74 + 8), *(v74 + 16), v134);
      *(v70 + 21) = 1040;
      *(v70 + 23) = 2;
      *(v70 + 27) = 512;
      v75 = *(v72 + 24);
      sub_100011908(v73);
      *(v70 + 29) = v75;
      *(v70 + 31) = 2160;
      *(v70 + 33) = 0x786F626C69616DLL;
      *(v70 + 41) = 2085;
      v76 = *(v74 + 32);
      LODWORD(v72) = *(v74 + 40);

      sub_100011908(v66);
      v132 = v76;
      v133 = v72;
      v77 = sub_1004A5824();
      v79 = sub_10015BA6C(v77, v78, v134);

      *(v70 + 43) = v79;
      _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned empty list as newest UIDs.", v70, 0x33u);
      swift_arrayDestroy();
      v56 = v130;
    }

    else
    {
      sub_100011908(v64);

      sub_100011908(v66);
    }

    goto LABEL_20;
  }

  v80 = v17;
  v81 = v121;
  sub_100025FDC(v80, v121, &qword_1005CD1D0, &unk_1004CF2C0);
  v82 = v119;
  sub_1000118A4(v61, v119);
  v83 = v117;
  sub_1000118A4(v61, v117);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v130 = v56;
  sub_10000E268(v56, v65, &unk_1005D91B0, &unk_1004CF400);
  v84 = v120;
  sub_10000E268(v81, v120, &qword_1005CD1D0, &unk_1004CF2C0);
  v85 = sub_1004A4A54();
  v86 = sub_1004A6034();
  if (!os_log_type_enabled(v85, v86))
  {
    sub_100025F40(v65, &unk_1005D91B0, &unk_1004CF400);
    sub_100011908(v83);

    sub_100025F40(v84, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v82);
    v109 = v81;
    goto LABEL_19;
  }

  LODWORD(v129) = v86;
  v87 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v134[0] = v126;
  *v87 = 68159747;
  *(v87 + 4) = 2;
  *(v87 + 8) = 256;
  v88 = v127;
  v89 = v83 + *(v127 + 20);
  *(v87 + 10) = *v89;
  *(v87 + 11) = 2082;
  v90 = v65;
  v91 = v82;
  v92 = v82 + *(v88 + 20);
  *(v87 + 13) = sub_10015BA6C(*(v92 + 8), *(v92 + 16), v134);
  *(v87 + 21) = 1040;
  *(v87 + 23) = 2;
  *(v87 + 27) = 512;
  v93 = *(v89 + 24);
  sub_100011908(v83);
  *(v87 + 29) = v93;
  *(v87 + 31) = 2160;
  *(v87 + 33) = 0x786F626C69616DLL;
  *(v87 + 41) = 2085;
  v94 = *(v92 + 32);
  LODWORD(v89) = *(v92 + 40);

  sub_100011908(v91);
  v132 = v94;
  v133 = v89;
  v95 = sub_1004A5824();
  v97 = sub_10015BA6C(v95, v96, v134);

  *(v87 + 43) = v97;
  *(v87 + 51) = 2048;
  v98 = MessageIdentifierSet.count.getter();
  sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
  *(v87 + 53) = v98;
  *(v87 + 61) = 2082;
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_25;
  }

  v100 = result;
  v101 = v116;
  MessageIdentifierSet.ranges.getter(v116);
  v102 = sub_1000E4C0C();
  v104 = v103;
  result = sub_100025F40(v101, &qword_1005CD7A0, &unk_1004CF590);
  if (v104)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (HIDWORD(v102) < v100)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v132 = __PAIR64__(HIDWORD(v102), v100);
  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  v105 = MessageIdentifierRange.debugDescription.getter();
  v107 = v106;
  sub_100025F40(v120, &qword_1005CD1D0, &unk_1004CF2C0);
  v108 = sub_10015BA6C(v105, v107, v134);

  *(v87 + 63) = v108;
  _os_log_impl(&_mh_execute_header, v85, v129, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld UIDs in range %{public}s as newest UIDs.", v87, 0x47u);
  swift_arrayDestroy();

  v109 = v121;
LABEL_19:
  sub_100025F40(v109, &qword_1005CD1D0, &unk_1004CF2C0);
  v58 = v128;
  v56 = v130;
LABEL_20:
  v60 = sub_100025FDC(v56, v59, &unk_1005D91B0, &unk_1004CF400);
LABEL_21:
  v110 = *(v131 + 88);
  v111 = *(v131 + 96);
  __chkstk_darwin(v60);
  *(&v116 - 2) = v59;
  if (*(v58 + 192) == 1)
  {
    v113 = *(v58 + 176);
    v112 = *(v58 + 184);
    v132 = *(v58 + 168);
    v114 = v132;

    sub_1000BE940(&v132, v110, v111, 0, sub_1000371A8);
    sub_100020D58(v114, v113, v112, 1);
    v115 = v132;
    *(v58 + 176) = 0;
    *(v58 + 184) = 0;
    *(v58 + 168) = v115;
    *(v58 + 192) = 1;
  }

  return sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_100036E24(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for MailboxSyncState(0) + 64);
  sub_100025F40(v3, &qword_1005CDC18, &qword_1004CF9E0);
  sub_10000E268(a2, v3, &unk_1005D91B0, &unk_1004CF400);
  v4 = type metadata accessor for NewestMessages(0);
  v5 = *(v4 + 24);
  *(v3 + *(v4 + 20)) = 0;
  *(v3 + v5) = 0;
  v6 = *(*(v4 - 8) + 56);

  return v6(v3, 0, 1, v4);
}

double sub_100036EE4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return result;
}

double sub_100036F38()
{
  if (qword_1005CCE20 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100036FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(qword_1005CDC28, &qword_1004CF9F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_100037024(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (sub_10001F6D8(a1, a2))
  {
    v5 = 0xF000000000000007;
  }

  else
  {
    v6 = swift_allocObject();
    v7 = *(v3 + 72);
    *(v6 + 16) = *(v3 + 64);
    *(v6 + 24) = v7;
    *(v6 + 32) = 521;
    v5 = v6 | 0x4000000000000006;
  }

  *a3 = v5;
}

unint64_t sub_1000370C8()
{
  result = qword_1005CDB58;
  if (!qword_1005CDB58)
  {
    result = swift_getWitnessTable(byte_1004CF9B4, &type metadata for DetermineNewestMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005CDB58);
  }

  return result;
}

unint64_t sub_100037128(uint64_t a1)
{
  result = sub_100037150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100037150()
{
  result = qword_1005CDC10;
  if (!qword_1005CDC10)
  {
    v3 = type metadata accessor for DetermineNewestMessages(255);
    result = swift_getWitnessTable("9t\v", v3, v0, v1);
    atomic_store(result, &qword_1005CDC10);
  }

  return result;
}

uint64_t sub_1000371B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
  __chkstk_darwin(v9);
  v11 = (&v23 - v10);
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  result = sub_10006FDFC(a2, a3, a4);
  if ((result & 1) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xB)
  {
    v17 = swift_projectBox();
    sub_10000E268(v17, v11, &qword_1005CDC20, &qword_1004CF9E8);
    v18 = *(v9 + 48);
    if (*(v4 + 72) == v11[1])
    {
      v19 = *(v11 + *(v9 + 64));
      v20 = sub_1000FFC98(*(v4 + 64), *v11);

      if (v20)
      {
        sub_100025FDC(v11 + v18, v15, &unk_1005D91B0, &unk_1004CF400);
        if (v19 == 521)
        {
          v21 = *(type metadata accessor for DetermineNewestMessages(0) + 32);
          sub_100025F40(v4 + v21, &qword_1005CD510, &unk_1004CF2E0);
          sub_100025FDC(v15, v4 + v21, &unk_1005D91B0, &unk_1004CF400);
          return (*(v13 + 56))(v4 + v21, 0, 1, v12);
        }

        v22 = v15;
        return sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
      }
    }

    else
    {
    }

    v22 = v11 + v18;
    return sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
  }

  return result;
}

uint64_t sub_100037418()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003746C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100037500(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DirectedAcyclicGraph.Node(0, v3, *(v7 + 24), v8);
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_100037634(v6);
  swift_getWitnessTable(byte_1004CFB20, v9, v10);
  sub_1004A5DC4();
  sub_1004A5DA4();
}

uint64_t sub_100037634(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_1000376C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  v13 = *(*v12 + 96);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, a1 + v13, v5);
  v15 = *(*a2 + 96);
  swift_beginAccess();
  v14(v8, a2 + v15, v5);
  v16 = sub_1004A5724();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  return v16 & 1;
}

uint64_t sub_10003787C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_1004A5564();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000379C0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

Swift::Int sub_100037A84()
{
  sub_1004A6E94();
  sub_10003787C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100037B0C(uint64_t a1)
{
  sub_1004A6E94();
  sub_10003787C(v2);
  return sub_1004A6F14();
}

void *sub_100037B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DirectedAcyclicGraph.Node(0, a1, a2, a4);
  v5 = sub_1004A5C54();
  if (sub_1004A5CC4())
  {
    WitnessTable = swift_getWitnessTable(byte_1004CFB20, v4);
    v7 = sub_100038070(v5, v4, WitnessTable);
  }

  else
  {
    v7 = _swiftEmptySetSingleton;
  }

  v8 = swift_getWitnessTable(byte_1004CFB20, v4);
  v9 = sub_1004A5DC4();
  swift_getTupleTypeMetadata2();
  v10 = sub_1004A5C54();
  sub_1000219E0(v10, v4, v9, v8);

  v11 = sub_1004A5C54();
  sub_1000219E0(v11, v4, v9, v8);

  return v7;
}

uint64_t sub_100037CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = type metadata accessor for DirectedAcyclicGraph.Node(0, a7, a8, a4);
  swift_getWitnessTable(byte_1004CFB20, v8);
  if ((sub_1004A5D74() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1004A5DC4();
  swift_getWitnessTable(&protocol conformance descriptor for Set<A>, v9);
  if ((sub_1004A5544() & 1) == 0)
  {
    return 0;
  }

  return sub_1004A5544();
}

uint64_t sub_100037DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for DirectedAcyclicGraph.Node(0, a5, a6, a4);
  swift_getWitnessTable(byte_1004CFB20, v6);
  sub_1004A5D84();
  v7 = sub_1004A5DC4();
  swift_getWitnessTable(&protocol conformance descriptor for Set<A>, v7);
  sub_1004A5534();

  return sub_1004A5534();
}

Swift::Int sub_100037EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004A6E94();
  sub_100037DE4(v11, a1, a2, a3, a4, a5);
  return sub_1004A6F14();
}

Swift::Int sub_100037F88(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_100037DE4(v5, *v2, v2[1], v2[2], *(a2 + 16), *(a2 + 24));
  return sub_1004A6F14();
}

uint64_t sub_100037FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_10003842C(a1, *(a2 + 16), *(a2 + 24));
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
  return result;
}

void *sub_100038070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v38 - v10;
  v39 = v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  if (sub_1004A5C94())
  {
    sub_1004A66C4();
    v15 = sub_1004A66B4();
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
  }

  v43 = sub_1004A5CC4();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 7;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1004A5C74();
    sub_1004A5C34();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1004A6784();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1004A5554();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = v49[v24 >> 6];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1004A5724();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = v49[v24 >> 6];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    v49[v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_10003842C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100037B58(v9, v10, v10, v11);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  if (sub_1004A5CB4())
  {
    v22 = v7;
    for (i = 0; ; ++i)
    {
      v16 = sub_1004A5C74();
      sub_1004A5C34();
      if (v16)
      {
        (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, a2);
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1004A6784();
        if (v22 != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*(v6 + 16))(v8, &v23, a2);
        swift_unknownObjectRelease();
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v24;
        }
      }

      v19 = type metadata accessor for DirectedAcyclicGraph(0, a2, a3, v17);
      sub_100037500(v8, v19);
      (*(v6 + 8))(v8, a2);
      if (v18 == sub_1004A5CB4())
      {
        return v24;
      }
    }
  }

  return v12;
}

uint64_t sub_100038664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1000386BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = sub_10003A194(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v8 && v2 == v5)
  {
    return v4 == v7 && (sub_1000FFC98(v3, v6) & 1) != 0;
  }

  return result;
}

uint64_t sub_100038744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = sub_10003A194(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v10 && v2 == v6 && v4 == v8)
  {
    return sub_1000FFC98(v3, v7) & (v5 == v9);
  }

  return result;
}

BOOL sub_1000387D8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_100100010(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_10003882C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = *(a5 + 16);
  if (!v97)
  {
    return 0;
  }

  v5 = a4;
  v7 = a2;
  v8 = 0;
  v98 = a5 + 32;
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = a2 >> 62;
  v11 = !v9;
  v96 = v11;
  v88 = HIDWORD(a1);
  v12 = __OFSUB__(HIDWORD(a1), a1);
  v92 = v12;
  v91 = HIDWORD(a1) - a1;
  __n = BYTE6(a2);
  v89 = a1;
  v86 = (a1 >> 32) - a1;
  v87 = a1 >> 32;
  while (1)
  {
    v13 = (v98 + 48 * v8);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[3];
    v16 = v13[4];
    v18 = v14 >> 62;
    if (v14 >> 62 == 3)
    {
      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = v14 == 0xC000000000000000;
      }

      v21 = !v19 || v10 < 3;
      if (((v21 | v96) & 1) == 0)
      {
        v22 = 0;
        v23 = 0xC000000000000000;
        goto LABEL_53;
      }

LABEL_37:
      v24 = 0;
      if (v10 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (v18 <= 1)
    {
      break;
    }

    if (v18 != 2)
    {
      goto LABEL_37;
    }

    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_165;
    }

    if (v10 > 1)
    {
      goto LABEL_38;
    }

LABEL_34:
    v28 = __n;
    if (v10)
    {
      v28 = v91;
      if (v92)
      {
        goto LABEL_164;
      }
    }

LABEL_40:
    if (v24 != v28)
    {
      goto LABEL_14;
    }

    if (v24 < 1)
    {
      goto LABEL_52;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v39 = *(v15 + 16);
        sub_100014CEC(v15, v14);

        v40 = sub_1004A40D4();
        if (v40)
        {
          v41 = v40;
          v42 = sub_1004A4104();
          if (__OFSUB__(v39, v42))
          {
            goto LABEL_168;
          }

          __s1 = (v39 - v42 + v41);
        }

        else
        {
          __s1 = 0;
        }

        v7 = a2;
        sub_1004A40F4();
        if (v10 == 2)
        {
          v76 = *(a1 + 24);
          v80 = *(a1 + 16);
          v51 = sub_1004A40D4();
          if (v51)
          {
            v65 = sub_1004A4104();
            v66 = v80;
            if (__OFSUB__(v80, v65))
            {
              goto LABEL_182;
            }

            v51 += v80 - v65;
          }

          else
          {
            v66 = v80;
          }

          v72 = v76 - v66;
          if (__OFSUB__(v76, v66))
          {
            goto LABEL_177;
          }

          v73 = sub_1004A40F4();
          if (v73 >= v72)
          {
            v54 = v72;
          }

          else
          {
            v54 = v73;
          }

          result = __s1;
          if (!__s1)
          {
            goto LABEL_193;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_192;
          }

LABEL_158:
          v7 = a2;
          if (result == v51)
          {
            goto LABEL_54;
          }

          goto LABEL_12;
        }

        if (v10 == 1)
        {
          if (v87 < v89)
          {
            goto LABEL_174;
          }

          v51 = sub_1004A40D4();
          if (v51)
          {
            v52 = sub_1004A4104();
            if (__OFSUB__(v89, v52))
            {
              goto LABEL_183;
            }

            v51 += v89 - v52;
          }

          v53 = sub_1004A40F4();
          v54 = v86;
          if (v53 < v86)
          {
            v54 = v53;
          }

          result = __s1;
          if (!__s1)
          {
            goto LABEL_191;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_190;
          }

LABEL_105:
          if (result == v51)
          {
            goto LABEL_54;
          }

LABEL_12:
          if (!memcmp(result, v51, v54))
          {
            goto LABEL_54;
          }

          goto LABEL_13;
        }

        v5 = a4;
        v49 = __s1;
        LODWORD(__s2[0]) = a1;
        BYTE4(__s2[0]) = v88;
        *(__s2 + 5) = *(&a1 + 5);
        HIBYTE(__s2[0]) = HIBYTE(a1);
        LODWORD(__s2[1]) = a2;
        WORD2(__s2[1]) = WORD2(a2);
        if (!__s1)
        {
          goto LABEL_189;
        }

        goto LABEL_127;
      }

      memset(__s2, 0, 14);
      if (!v10)
      {
LABEL_81:
        v99 = a1;
        v100 = v88;
        v101 = *(&a1 + 5);
        v102 = HIBYTE(a1);
        v103 = v7;
        v104 = BYTE2(v7);
        v105 = BYTE3(v7);
        v106 = BYTE4(v7);
        v107 = BYTE5(v7);
        sub_100014CEC(v15, v14);

        v49 = __s2;
        v50 = &v99;
        goto LABEL_128;
      }

      if (v10 != 2)
      {
        if (v87 < v89)
        {
          goto LABEL_170;
        }

        sub_100014CEC(v15, v14);

        v60 = sub_1004A40D4();
        if (!v60)
        {
          sub_1004A40F4();
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          result = sub_1004A40F4();
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          return result;
        }

        v61 = v60;
        v62 = sub_1004A4104();
        if (__OFSUB__(v89, v62))
        {
          goto LABEL_176;
        }

        v34 = (v89 - v62 + v61);
        v35 = sub_1004A40F4();
        if (!v34)
        {
          goto LABEL_187;
        }

        goto LABEL_114;
      }

      v78 = *(a1 + 24);
      __s1b = *(a1 + 16);
      sub_100014CEC(v15, v14);

      v46 = sub_1004A40D4();
      if (v46)
      {
        v47 = sub_1004A4104();
        v48 = __s1b;
        if (__OFSUB__(__s1b, v47))
        {
          goto LABEL_180;
        }

        v46 = &__s1b[v46 - v47];
      }

      else
      {
        v48 = __s1b;
      }

      v69 = v78 - v48;
      if (__OFSUB__(v78, v48))
      {
        goto LABEL_172;
      }

      v70 = sub_1004A40F4();
      if (!v46)
      {
        goto LABEL_188;
      }
    }

    else
    {
      if (v18)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_167;
        }

        sub_100014CEC(v15, v14);

        v43 = sub_1004A40D4();
        if (v43)
        {
          v44 = v43;
          v45 = sub_1004A4104();
          if (__OFSUB__(v15, v45))
          {
            goto LABEL_169;
          }

          __s1a = (v15 - v45 + v44);
        }

        else
        {
          __s1a = 0;
        }

        v7 = a2;
        sub_1004A40F4();
        if (v10 == 2)
        {
          v77 = *(a1 + 24);
          v81 = *(a1 + 16);
          v51 = sub_1004A40D4();
          if (v51)
          {
            v67 = sub_1004A4104();
            v68 = v81;
            if (__OFSUB__(v81, v67))
            {
              goto LABEL_184;
            }

            v51 += v81 - v67;
          }

          else
          {
            v68 = v81;
          }

          v74 = v77 - v68;
          if (__OFSUB__(v77, v68))
          {
            goto LABEL_179;
          }

          v75 = sub_1004A40F4();
          if (v75 >= v74)
          {
            v54 = v74;
          }

          else
          {
            v54 = v75;
          }

          result = __s1a;
          if (!__s1a)
          {
            goto LABEL_201;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_200;
          }

          goto LABEL_158;
        }

        if (v10 == 1)
        {
          if (v87 < v89)
          {
            goto LABEL_178;
          }

          v51 = sub_1004A40D4();
          if (v51)
          {
            v56 = sub_1004A4104();
            if (__OFSUB__(v89, v56))
            {
              goto LABEL_185;
            }

            v51 += v89 - v56;
          }

          v57 = sub_1004A40F4();
          v54 = v86;
          if (v57 < v86)
          {
            v54 = v57;
          }

          result = __s1a;
          if (!__s1a)
          {
            goto LABEL_199;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_198;
          }

          goto LABEL_105;
        }

        v5 = a4;
        v49 = __s1a;
        LODWORD(__s2[0]) = a1;
        BYTE4(__s2[0]) = v88;
        *(__s2 + 5) = *(&a1 + 5);
        HIBYTE(__s2[0]) = HIBYTE(a1);
        LODWORD(__s2[1]) = a2;
        WORD2(__s2[1]) = WORD2(a2);
        if (!__s1a)
        {
          goto LABEL_194;
        }

LABEL_127:
        v50 = __s2;
LABEL_128:
        if (!memcmp(v49, v50, __n))
        {
          goto LABEL_54;
        }

        goto LABEL_13;
      }

      __s2[0] = v15;
      LOWORD(__s2[1]) = v14;
      BYTE2(__s2[1]) = BYTE2(v14);
      BYTE3(__s2[1]) = BYTE3(v14);
      BYTE4(__s2[1]) = BYTE4(v14);
      BYTE5(__s2[1]) = BYTE5(v14);
      if (!v10)
      {
        goto LABEL_81;
      }

      if (v10 == 1)
      {
        if (v87 < v89)
        {
          goto LABEL_171;
        }

        sub_100014CEC(v15, v14);

        v31 = sub_1004A40D4();
        if (!v31)
        {
          goto LABEL_197;
        }

        v32 = v31;
        v33 = sub_1004A4104();
        if (__OFSUB__(v89, v33))
        {
          goto LABEL_175;
        }

        v34 = (v89 - v33 + v32);
        v35 = sub_1004A40F4();
        if (!v34)
        {
          goto LABEL_196;
        }

LABEL_114:
        if (v35 >= v86)
        {
          v63 = v86;
        }

        else
        {
          v63 = v35;
        }

        v64 = memcmp(__s2, v34, v63);
        goto LABEL_141;
      }

      v79 = *(a1 + 24);
      __s1c = *(a1 + 16);
      sub_100014CEC(v15, v14);

      v46 = sub_1004A40D4();
      if (v46)
      {
        v58 = sub_1004A4104();
        v59 = __s1c;
        if (__OFSUB__(__s1c, v58))
        {
          goto LABEL_181;
        }

        v46 = &__s1c[v46 - v58];
      }

      else
      {
        v59 = __s1c;
      }

      v69 = v79 - v59;
      if (__OFSUB__(v79, v59))
      {
        goto LABEL_173;
      }

      v70 = sub_1004A40F4();
      if (!v46)
      {
        goto LABEL_195;
      }
    }

    if (v70 >= v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = v70;
    }

    v64 = memcmp(__s2, v46, v71);
    v7 = a2;
LABEL_141:
    v5 = a4;
    if (!v64)
    {
      goto LABEL_54;
    }

LABEL_13:
    sub_100014D40(v15, v14);

LABEL_14:
    if (++v8 == v97)
    {
      return 0;
    }
  }

  if (!v18)
  {
    v24 = BYTE6(v14);
    if (v10 > 1)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  LODWORD(v24) = HIDWORD(v15) - v15;
  if (__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_166;
  }

  v24 = v24;
  if (v10 <= 1)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v10 == 2)
  {
    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_163;
    }

    goto LABEL_40;
  }

  if (v24)
  {
    goto LABEL_14;
  }

LABEL_52:
  v22 = v15;
  v23 = v14;
LABEL_53:
  sub_100014CEC(v22, v23);

LABEL_54:
  if (v16 != v5)
  {
    goto LABEL_13;
  }

  v36 = *(v17 + 16);
  if (v36 != *(a3 + 16))
  {
    goto LABEL_13;
  }

  if (v36)
  {
    v37 = v17 == a3;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = 32;
    while (v36)
    {
      if (*(v17 + v38) != *(a3 + v38))
      {
        goto LABEL_13;
      }

      ++v38;
      if (!--v36)
      {
        goto LABEL_161;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
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
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
  }

LABEL_161:
  sub_100014D40(v15, v14);

  return 1;
}

uint64_t *sub_1000391F0(int64_t a1)
{
  v5 = *v2;
  v6 = *(v5 + 16);
  v110 = a1;
  if (v6)
  {
    v7 = 0;
    a1 = *(a1 + 40);
    v8 = 72;
    while (1)
    {
      v9 = *(v5 + v8);
      v10 = a1 - v9;
      if (a1 >= v9)
      {
        if (__OFSUB__(a1, v9))
        {
          goto LABEL_210;
        }
      }

      else
      {
        if (__OFSUB__(v9, a1))
        {
          goto LABEL_211;
        }

        v10 = a1 - v9;
        if (__OFSUB__(0, v9 - a1))
        {
          goto LABEL_212;
        }
      }

      if (v10 / 1000000000.0 > 2100.0)
      {
        break;
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        v3 = *(v5 + 16);
        a1 = v110;
        goto LABEL_17;
      }
    }

    v3 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v3 != v6)
    {
      v83 = v8 + 48;
      while (v3 < v6)
      {
        v87 = *(v5 + v83);
        v88 = a1 - v87;
        if (a1 >= v87)
        {
          if (__OFSUB__(a1, v87))
          {
            goto LABEL_215;
          }
        }

        else
        {
          if (__OFSUB__(v87, a1))
          {
            goto LABEL_214;
          }

          v88 = a1 - v87;
          if (__OFSUB__(0, v87 - a1))
          {
            goto LABEL_216;
          }
        }

        if (v88 / 1000000000.0 <= 2100.0)
        {
          if (v3 != v7)
          {
            if (v7 >= v6)
            {
              goto LABEL_219;
            }

            v89 = v5 + 32 + 48 * v7;
            v121 = *(v89 + 16);
            v1 = *(v89 + 24);
            v115 = *(v89 + 40);
            v117 = *(v89 + 32);
            v90 = *(v5 + v83 - 40);
            v91 = *(v5 + v83 - 32);
            v129 = *(v5 + v83 - 24);
            v92 = *(v5 + v83 - 16);
            v126 = *v89;
            v128 = *(v5 + v83 - 8);
            v124 = *(v89 + 8);
            sub_100014CEC(*v89, v124);
            v119 = v1;

            sub_100014CEC(v90, v91);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_100139868(v5);
            }

            if (v7 >= *(v5 + 16))
            {
              goto LABEL_220;
            }

            v93 = v5 + 48 * v7;
            v94 = *(v93 + 32);
            v95 = *(v93 + 40);
            v1 = *(v93 + 56);
            *(v93 + 32) = v90;
            *(v93 + 40) = v91;
            *(v93 + 48) = v129;
            *(v93 + 56) = v92;
            *(v93 + 64) = v128;
            *(v93 + 72) = v87;
            sub_100014D40(v94, v95);

            if (v3 >= *(v5 + 16))
            {
              goto LABEL_221;
            }

            v84 = (v5 + v83);
            v85 = *(v5 + v83 - 40);
            v86 = *(v5 + v83 - 32);
            v1 = *(v5 + v83 - 16);
            *(v84 - 5) = v126;
            *(v84 - 4) = v124;
            *(v84 - 6) = v121;
            *(v84 - 2) = v119;
            *(v84 - 1) = v117;
            *v84 = v115;
            sub_100014D40(v85, v86);

            *v122 = v5;
          }

          ++v7;
        }

        ++v3;
        v6 = *(v5 + 16);
        v83 += 48;
        if (v3 == v6)
        {
          goto LABEL_16;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v3 = *(v5 + 16);
LABEL_16:
    v6 = v7;
    a1 = v110;
    if (v3 < v7)
    {
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  sub_1001647BC(v6, v3);
  v3 = *v122;
  v5 = *(*v122 + 2);
  if (!v5)
  {
    v1 = 0;
    goto LABEL_180;
  }

  v1 = 0;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = a1;
  a1 = *(a1 + 16);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0xC000000000000000;
  }

  v15 = v11 >> 62;
  v116 = *(v13 + 24);
  v118 = v11;
  v114 = *(v13 + 32);
  v16 = !v14;
  v125 = v16;
  v17 = __OFSUB__(HIDWORD(v12), v12);
  v112 = v17;
  v113 = a1;
  v111 = HIDWORD(v12) - v12;
  v123 = BYTE6(v11);
  v120 = v12;
  v107 = v12 >> 32;
  v108 = v12;
  v106 = (v12 >> 32) - v12;
  v109 = *(*v122 + 2);
  while (1)
  {
    if (v1 >= *(v3 + 2))
    {
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v18 = &v3[48 * v1 + 32];
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v23 = *(v18 + 24);
    v22 = *(v18 + 32);
    v24 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 == 0xC000000000000000;
      }

      v27 = !v25 || v15 < 3;
      if (((v27 | v125) & 1) == 0)
      {
        v127 = v22;
        v28 = 0;
        v29 = 0xC000000000000000;
        goto LABEL_69;
      }

LABEL_53:
      v30 = 0;
      if (v15 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_53;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_223;
      }

      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

    else if (v24)
    {
      LODWORD(v30) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_222;
      }

      v30 = v30;
      if (v15 <= 1)
      {
LABEL_50:
        v34 = v123;
        if (v15)
        {
          v34 = v111;
          if (v112)
          {
            goto LABEL_217;
          }
        }

        goto LABEL_56;
      }
    }

    else
    {
      v30 = BYTE6(v19);
      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

LABEL_54:
    if (v15 != 2)
    {
      if (v30)
      {
        goto LABEL_29;
      }

LABEL_68:
      v127 = v22;
      v28 = v20;
      v29 = v19;
LABEL_69:
      sub_100014CEC(v28, v29);

LABEL_70:
      if (v21 == a1 && v127 == v114)
      {
        v42 = *(v23 + 16);
        if (v42 == *(v116 + 16))
        {
          if (v42)
          {
            v43 = v23 == v116;
          }

          else
          {
            v43 = 1;
          }

          if (!v43)
          {
            v44 = 32;
            while (v42)
            {
              if (*(v23 + v44) != *(v116 + v44))
              {
                goto LABEL_28;
              }

              ++v44;
              if (!--v42)
              {
                goto LABEL_176;
              }
            }

            goto LABEL_209;
          }

LABEL_176:
          sub_100014D40(v20, v19);

          v5 = v110;
          sub_10003A30C(v110, __s1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_177;
          }

          goto LABEL_227;
        }
      }

      goto LABEL_28;
    }

    v36 = *(v120 + 16);
    v35 = *(v120 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_218;
    }

LABEL_56:
    if (v30 != v34)
    {
      goto LABEL_29;
    }

    if (v30 < 1)
    {
      goto LABEL_68;
    }

    v127 = v22;
    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (v15)
      {
        if (v15 == 2)
        {
          v98 = *(v120 + 24);
          v104 = *(v120 + 16);
          sub_100014CEC(v20, v19);

          v40 = sub_1004A40D4();
          if (v40)
          {
            v51 = sub_1004A4104();
            v52 = v104;
            if (__OFSUB__(v104, v51))
            {
              goto LABEL_246;
            }

            v40 = &v104[v40 - v51];
          }

          else
          {
            v52 = v104;
          }

          v71 = v98 - v52;
          if (__OFSUB__(v98, v52))
          {
            goto LABEL_239;
          }

          result = sub_1004A40F4();
          if (!v40)
          {
            goto LABEL_254;
          }

          goto LABEL_151;
        }

        if (v107 < v108)
        {
          goto LABEL_235;
        }

        sub_100014CEC(v20, v19);

        v62 = sub_1004A40D4();
        if (!v62)
        {
          goto LABEL_252;
        }

        v63 = v62;
        v64 = sub_1004A4104();
        if (__OFSUB__(v108, v64))
        {
          goto LABEL_241;
        }

        v40 = (v108 - v64 + v63);
        result = sub_1004A40F4();
        if (!v40)
        {
          goto LABEL_253;
        }

LABEL_130:
        if (result >= v106)
        {
          v65 = v106;
        }

        else
        {
          v65 = result;
        }

LABEL_154:
        v5 = v109;
        a1 = v113;
        if (!memcmp(__s1, v40, v65))
        {
          goto LABEL_70;
        }

        goto LABEL_28;
      }

      goto LABEL_98;
    }

    a1 = *(v20 + 16);
    sub_100014CEC(v20, v19);

    v45 = sub_1004A40D4();
    if (v45)
    {
      v46 = v45;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = sub_1004A4104();
      if (__OFSUB__(a1, v47))
      {
        goto LABEL_230;
      }

      v102 = (a1 - v47 + v46);
    }

    else
    {
      v102 = 0;
    }

    sub_1004A40F4();
    a1 = v113;
    if (v15 == 2)
    {
      v96 = *(v120 + 24);
      v100 = *(v120 + 16);
      v54 = sub_1004A40D4();
      if (v54)
      {
        v66 = sub_1004A4104();
        v67 = v100;
        if (__OFSUB__(v100, v66))
        {
          goto LABEL_247;
        }

        v54 = (v54 + v100 - v66);
      }

      else
      {
        v67 = v100;
      }

      v72 = v96 - v67;
      if (__OFSUB__(v96, v67))
      {
        goto LABEL_242;
      }

      v73 = sub_1004A40F4();
      if (v73 >= v72)
      {
        v57 = v72;
      }

      else
      {
        v57 = v73;
      }

      result = v102;
      if (!v102)
      {
        goto LABEL_262;
      }

      v5 = v109;
      a1 = v113;
      if (!v54)
      {
        goto LABEL_261;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v109;
        result = v102;
        *__s1 = v120;
        *&__s1[8] = v118;
        *&__s1[12] = WORD2(v118);
        if (!v102)
        {
          goto LABEL_255;
        }

        goto LABEL_142;
      }

      if (v107 < v108)
      {
        goto LABEL_237;
      }

      v54 = sub_1004A40D4();
      if (v54)
      {
        v55 = sub_1004A4104();
        if (__OFSUB__(v108, v55))
        {
          goto LABEL_249;
        }

        v54 = (v54 + v108 - v55);
      }

      a1 = v113;
      v56 = sub_1004A40F4();
      v57 = v106;
      if (v56 < v106)
      {
        v57 = v56;
      }

      result = v102;
      if (!v102)
      {
        goto LABEL_260;
      }

      v5 = v109;
      if (!v54)
      {
        goto LABEL_259;
      }
    }

LABEL_171:
    if (result == v54)
    {
      goto LABEL_70;
    }

    v70 = v57;
    v53 = v54;
LABEL_173:
    if (!memcmp(result, v53, v70))
    {
      goto LABEL_70;
    }

LABEL_28:
    sub_100014D40(v20, v19);

LABEL_29:
    if (++v1 == v5)
    {
      v1 = *(v3 + 2);
      a1 = v110;
      if (v1 > 0x10)
      {
        v5 = sub_100039EE0(0x11uLL);
        sub_10003A30C(v110, __s1);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

LABEL_205:
          if (v5 < *(v3 + 2))
          {
            v76 = &v3[48 * v5 + 32];
            v77 = a1;
            goto LABEL_207;
          }

LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
        }

LABEL_232:
        v3 = sub_100139868(v3);
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_233;
        }

        goto LABEL_205;
      }

LABEL_180:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_181:
        v79 = *(v3 + 2);
        v78 = *(v3 + 3);
        if (v79 >= v78 >> 1)
        {
          v3 = sub_100085CEC((v78 > 1), v79 + 1, 1, v3);
        }

        *(v3 + 2) = v79 + 1;
        v80 = &v3[48 * v79];
        v81 = *a1;
        v82 = *(a1 + 32);
        *(v80 + 3) = *(a1 + 16);
        *(v80 + 4) = v82;
        *(v80 + 2) = v81;
        *v122 = v3;
        return sub_10003A30C(a1, __s1);
      }

LABEL_225:
      v3 = sub_100085CEC(0, v1 + 1, 1, v3);
      goto LABEL_181;
    }
  }

  if (v24)
  {
    a1 = v20;
    if (v20 > v20 >> 32)
    {
      __break(1u);
LABEL_227:
      v3 = sub_100139868(v3);
LABEL_177:
      if (v1 < *(v3 + 2))
      {
        v76 = &v3[48 * v1 + 32];
        v77 = v5;
LABEL_207:
        result = sub_10003A344(v77, v76);
        *v122 = v3;
        return result;
      }

      __break(1u);
      goto LABEL_229;
    }

    sub_100014CEC(v20, v19);

    v48 = sub_1004A40D4();
    if (v48)
    {
      v49 = v48;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = sub_1004A4104();
      if (__OFSUB__(v20, v50))
      {
        goto LABEL_231;
      }

      v103 = (v20 - v50 + v49);
    }

    else
    {
      v103 = 0;
    }

    sub_1004A40F4();
    a1 = v113;
    if (v15 == 2)
    {
      v97 = *(v120 + 24);
      v101 = *(v120 + 16);
      v54 = sub_1004A40D4();
      if (v54)
      {
        v68 = sub_1004A4104();
        v69 = v101;
        if (__OFSUB__(v101, v68))
        {
          goto LABEL_248;
        }

        v54 = (v54 + v101 - v68);
      }

      else
      {
        v69 = v101;
      }

      v74 = v97 - v69;
      if (__OFSUB__(v97, v69))
      {
        goto LABEL_244;
      }

      v75 = sub_1004A40F4();
      if (v75 >= v74)
      {
        v57 = v74;
      }

      else
      {
        v57 = v75;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_266;
      }

      v5 = v109;
      a1 = v113;
      if (!v54)
      {
        goto LABEL_265;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v109;
        result = v103;
        *__s1 = v120;
        *&__s1[8] = v118;
        *&__s1[12] = WORD2(v118);
        if (!v103)
        {
          goto LABEL_256;
        }

LABEL_142:
        v53 = __s1;
LABEL_143:
        v70 = v123;
        goto LABEL_173;
      }

      if (v107 < v108)
      {
        goto LABEL_243;
      }

      v54 = sub_1004A40D4();
      if (v54)
      {
        v58 = sub_1004A4104();
        if (__OFSUB__(v108, v58))
        {
          goto LABEL_250;
        }

        v54 = (v54 + v108 - v58);
      }

      a1 = v113;
      v59 = sub_1004A40F4();
      v57 = v106;
      if (v59 < v106)
      {
        v57 = v59;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_264;
      }

      v5 = v109;
      if (!v54)
      {
        goto LABEL_263;
      }
    }

    goto LABEL_171;
  }

  *__s1 = v20;
  *&__s1[8] = v19;
  __s1[10] = BYTE2(v19);
  __s1[11] = BYTE3(v19);
  __s1[12] = BYTE4(v19);
  __s1[13] = BYTE5(v19);
  if (!v15)
  {
LABEL_98:
    v130 = v120;
    v131 = v118;
    v132 = WORD2(v118);
    sub_100014CEC(v20, v19);

    result = __s1;
    v53 = &v130;
    goto LABEL_143;
  }

  if (v15 != 1)
  {
    v99 = *(v120 + 24);
    v105 = *(v120 + 16);
    sub_100014CEC(v20, v19);

    v40 = sub_1004A40D4();
    if (v40)
    {
      v60 = sub_1004A4104();
      v61 = v105;
      if (__OFSUB__(v105, v60))
      {
        goto LABEL_245;
      }

      v40 = &v105[v40 - v60];
    }

    else
    {
      v61 = v105;
    }

    v71 = v99 - v61;
    if (__OFSUB__(v99, v61))
    {
      goto LABEL_238;
    }

    result = sub_1004A40F4();
    if (!v40)
    {
      goto LABEL_257;
    }

LABEL_151:
    if (result >= v71)
    {
      v65 = v71;
    }

    else
    {
      v65 = result;
    }

    goto LABEL_154;
  }

  if (v107 < v108)
  {
    goto LABEL_236;
  }

  sub_100014CEC(v20, v19);

  v37 = sub_1004A40D4();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1004A4104();
    if (__OFSUB__(v108, v39))
    {
      goto LABEL_240;
    }

    v40 = (v108 - v39 + v38);
    result = sub_1004A40F4();
    if (!v40)
    {
      goto LABEL_258;
    }

    goto LABEL_130;
  }

  sub_1004A40F4();
  __break(1u);
LABEL_252:
  result = sub_1004A40F4();
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
  return result;
}

Swift::UInt64 sub_100039EE0(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = PCG32Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = PCG32Random.next()();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100039F4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_10003A0DC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100014D40(a3, a4);
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
  sub_100066884(v13, a3, a4, &v12);
  v10 = v4;
  sub_100014D40(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10003A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1004A40D4();
  v11 = result;
  if (result)
  {
    result = sub_1004A4104();
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

  sub_1004A40F4();
  sub_100066884(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10003A194(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_100014CEC(a3, a4);
          return sub_100039F4C(v13, a2, a3, a4) & 1;
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

uint64_t sub_10003A37C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10003A398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10003A3AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003A3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003A460()
{
  result = qword_1005CDD30;
  if (!qword_1005CDD30)
  {
    result = swift_getWitnessTable("uo\v", &type metadata for DownloadTask.CommandID.Kind, v0, v1);
    atomic_store(result, &qword_1005CDD30);
  }

  return result;
}

Swift::Int sub_10003A4D4()
{
  result = sub_100093190(&off_100598BD0);
  qword_1005DDEF0 = result;
  return result;
}

uint64_t sub_10003A4FC()
{
  v5[8] = 0;
  *v5 = *(v0 + 9);
  sub_1004A6934();
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_1004A5994(v6);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2._countAndFlagsBits = v1;
  }

  else
  {
    v2._countAndFlagsBits = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1004A5994(v2);

  return *&v5[1];
}

void sub_10003A5C0(uint64_t a1)
{
  v2 = v1;
  v176 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v176);
  *&v180 = &v171 - v4;
  v5 = type metadata accessor for DownloadTask(0);
  __chkstk_darwin(v5);
  v174 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v171 - v8;
  __chkstk_darwin(v10);
  v183 = &v171 - v11;
  __chkstk_darwin(v12);
  v179 = &v171 - v13;
  __chkstk_darwin(v14);
  v191 = &v171 - v15;
  __chkstk_darwin(v16);
  v18 = &v171 - v17;
  __chkstk_darwin(v19);
  v21 = &v171 - v20;
  __chkstk_darwin(v22);
  v189 = &v171 - v23;
  v184 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v184);
  v172 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v173 = &v171 - v26;
  __chkstk_darwin(v27);
  v188 = &v171 - v28;
  __chkstk_darwin(v29);
  v187 = &v171 - v30;
  __chkstk_darwin(v31);
  v186 = &v171 - v32;
  __chkstk_darwin(v33);
  v190 = &v171 - v34;
  __chkstk_darwin(v35);
  v37 = &v171 - v36;
  __chkstk_darwin(v38);
  v40 = &v171 - v39;
  __chkstk_darwin(v41);
  v43 = &v171 - v42;
  __chkstk_darwin(v44);
  v46 = &v171 - v45;
  v181 = v5;
  v175 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v47 = sub_1004A70C4();
  v185 = a1;
  v182 = v2;
  if ((v47 & 1) == 0)
  {
    sub_10003EB54(a1, v40, type metadata accessor for MailboxTaskLogger);
    sub_10003EB54(a1, v37, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10003EB54(v2, v191, type metadata accessor for DownloadTask);
    v69 = v179;
    sub_10003EB54(v2, v179, type metadata accessor for DownloadTask);
    v70 = v183;
    sub_10003EB54(v2, v183, type metadata accessor for DownloadTask);
    sub_10003EB54(v2, v9, type metadata accessor for DownloadTask);
    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();
    if (!os_log_type_enabled(v71, v72))
    {
      v92 = a1;
      sub_10003EBBC(v37, type metadata accessor for MailboxTaskLogger);

      sub_10003EBBC(v9, type metadata accessor for DownloadTask);
      sub_10003EBBC(v70, type metadata accessor for DownloadTask);
      sub_10003EBBC(v69, type metadata accessor for DownloadTask);
      sub_10003EBBC(v40, type metadata accessor for MailboxTaskLogger);
      sub_10003EBBC(v191, type metadata accessor for DownloadTask);
LABEL_25:
      v2 = v182;
      goto LABEL_26;
    }

    v189 = v9;
    v73 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v194[0] = v178;
    *v73 = 68160259;
    *(v73 + 4) = 2;
    *(v73 + 8) = 256;
    v74 = v184;
    v75 = &v37[*(v184 + 20)];
    *(v73 + 10) = *v75;
    *(v73 + 11) = 2082;
    v76 = v69;
    v77 = &v40[*(v74 + 20)];
    *(v73 + 13) = sub_10015BA6C(*(v77 + 1), *(v77 + 2), v194);
    *(v73 + 21) = 1040;
    *(v73 + 23) = 2;
    *(v73 + 27) = 512;
    LOWORD(v75) = *(v75 + 12);
    sub_10003EBBC(v37, type metadata accessor for MailboxTaskLogger);
    *(v73 + 29) = v75;
    *(v73 + 31) = 2160;
    *(v73 + 33) = 0x786F626C69616DLL;
    *(v73 + 41) = 2085;
    v78 = *(v77 + 4);
    LODWORD(v75) = *(v77 + 10);
    v79 = v76;

    sub_10003EBBC(v40, type metadata accessor for MailboxTaskLogger);
    v192 = v78;
    v193 = v75;
    v80 = sub_1004A5824();
    v82 = sub_10015BA6C(v80, v81, v194);

    *(v73 + 43) = v82;
    *(v73 + 51) = 2082;
    v83 = v191;

    v84 = v180;
    sub_1000B492C(v85);
    v86 = MessageIdentifierSet.debugDescription.getter();
    v88 = v87;
    sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
    sub_10003EBBC(v83, type metadata accessor for DownloadTask);
    v89 = sub_10015BA6C(v86, v88, v194);

    *(v73 + 53) = v89;
    *(v73 + 61) = 2080;
    if (*(v79 + 112))
    {
      v90 = 0xE100000000000000;
      if (*(v79 + 112) == 1)
      {
        v91 = 65;
      }

      else
      {
        v91 = 66;
      }
    }

    else
    {
      v91 = 1919251285;
      v90 = 0xE400000000000000;
    }

    sub_10003EBBC(v79, type metadata accessor for DownloadTask);
    v96 = sub_10015BA6C(v91, v90, v194);

    *(v73 + 63) = v96;
    *(v73 + 71) = 2082;
    if (*(v183 + 9))
    {
      v97 = 6581810;
    }

    else
    {
      v97 = 7631665;
    }

    sub_10003EBBC(v183, type metadata accessor for DownloadTask);
    v98 = sub_10015BA6C(v97, 0xE300000000000000, v194);

    *(v73 + 73) = v98;
    *(v73 + 81) = 2082;
    v99 = v189;
    v100 = MessageIdentifierSet.debugDescription.getter();
    v102 = v101;
    sub_10003EBBC(v99, type metadata accessor for DownloadTask);
    v103 = sub_10015BA6C(v100, v102, v194);

    *(v73 + 83) = v103;
    _os_log_impl(&_mh_execute_header, v71, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s' -- full message download for %{public}s", v73, 0x5Bu);
    swift_arrayDestroy();

LABEL_24:
    v92 = v185;
    goto LABEL_25;
  }

  sub_10003EB54(a1, v46, type metadata accessor for MailboxTaskLogger);
  sub_10003EB54(a1, v43, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10003EB54(v2, v189, type metadata accessor for DownloadTask);
  sub_10003EB54(v2, v21, type metadata accessor for DownloadTask);
  sub_10003EB54(v2, v18, type metadata accessor for DownloadTask);
  v48 = sub_1004A4A54();
  v49 = sub_1004A6034();
  if (os_log_type_enabled(v48, v49))
  {
    LODWORD(v191) = v49;
    v50 = v18;
    v51 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v194[0] = v183;
    *v51 = 68160003;
    *(v51 + 4) = 2;
    *(v51 + 8) = 256;
    v52 = v184;
    v53 = &v43[*(v184 + 20)];
    *(v51 + 10) = *v53;
    *(v51 + 11) = 2082;
    v54 = v21;
    v55 = &v46[*(v52 + 20)];
    *(v51 + 13) = sub_10015BA6C(*(v55 + 1), *(v55 + 2), v194);
    *(v51 + 21) = 1040;
    *(v51 + 23) = 2;
    *(v51 + 27) = 512;
    LOWORD(v53) = *(v53 + 12);
    sub_10003EBBC(v43, type metadata accessor for MailboxTaskLogger);
    *(v51 + 29) = v53;
    *(v51 + 31) = 2160;
    *(v51 + 33) = 0x786F626C69616DLL;
    *(v51 + 41) = 2085;
    v56 = *(v55 + 4);
    LODWORD(v53) = *(v55 + 10);

    sub_10003EBBC(v46, type metadata accessor for MailboxTaskLogger);
    v192 = v56;
    v193 = v53;
    v57 = sub_1004A5824();
    v59 = sub_10015BA6C(v57, v58, v194);

    *(v51 + 43) = v59;
    *(v51 + 51) = 2082;
    v60 = v189;

    v61 = v180;
    sub_1000B492C(v62);
    v63 = MessageIdentifierSet.debugDescription.getter();
    v65 = v64;
    sub_100025F40(v61, &unk_1005D91B0, &unk_1004CF400);
    sub_10003EBBC(v60, type metadata accessor for DownloadTask);
    v66 = sub_10015BA6C(v63, v65, v194);

    *(v51 + 53) = v66;
    *(v51 + 61) = 2080;
    if (*(v54 + 112))
    {
      v67 = 0xE100000000000000;
      if (*(v54 + 112) == 1)
      {
        v68 = 65;
      }

      else
      {
        v68 = 66;
      }
    }

    else
    {
      v68 = 1919251285;
      v67 = 0xE400000000000000;
    }

    sub_10003EBBC(v54, type metadata accessor for DownloadTask);
    v93 = sub_10015BA6C(v68, v67, v194);

    *(v51 + 63) = v93;
    *(v51 + 71) = 2082;
    if (*(v50 + 9))
    {
      v94 = 6581810;
    }

    else
    {
      v94 = 7631665;
    }

    sub_10003EBBC(v50, type metadata accessor for DownloadTask);
    v95 = sub_10015BA6C(v94, 0xE300000000000000, v194);

    *(v51 + 73) = v95;
    _os_log_impl(&_mh_execute_header, v48, v191, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s'", v51, 0x51u);
    swift_arrayDestroy();

    goto LABEL_24;
  }

  sub_10003EBBC(v43, type metadata accessor for MailboxTaskLogger);

  sub_10003EBBC(v18, type metadata accessor for DownloadTask);
  sub_10003EBBC(v21, type metadata accessor for DownloadTask);
  sub_10003EBBC(v46, type metadata accessor for MailboxTaskLogger);
  sub_10003EBBC(v189, type metadata accessor for DownloadTask);
  v92 = v185;
LABEL_26:
  v104 = *(v2 + 104);
  v107 = *(v104 + 64);
  v106 = v104 + 64;
  v105 = v107;
  v108 = 1 << *(*(v2 + 104) + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & v105;
  v111 = (v108 + 63) >> 6;
  v189 = *(v2 + 104);

  v112 = 0;
  *&v113 = 68159491;
  v180 = v113;
  *&v113 = 68159747;
  v177 = v113;
  v114 = v187;
  v115 = v186;
  if (v110)
  {
    goto LABEL_31;
  }

LABEL_32:
  v117 = v190;
  while (1)
  {
    v116 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      __break(1u);
      return;
    }

    if (v116 >= v111)
    {
      break;
    }

    v110 = *(v106 + 8 * v116);
    ++v112;
    if (v110)
    {
      while (1)
      {
        v118 = __clz(__rbit64(v110));
        v110 &= v110 - 1;
        v119 = v118 | (v116 << 6);
        v120 = *(v189 + 7);
        LODWORD(v191) = *(*(v189 + 6) + 4 * v119);
        v121 = v120 + 16 * v119;
        if (*(v121 + 8))
        {
          v122 = v117;
          sub_10003EB54(v92, v117, type metadata accessor for MailboxTaskLogger);
          sub_10003EB54(v92, v115, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v123 = sub_1004A4A54();
          v124 = sub_1004A6004();
          if (!os_log_type_enabled(v123, v124))
          {
            sub_10003EBBC(v115, type metadata accessor for MailboxTaskLogger);

            sub_10003EBBC(v122, type metadata accessor for MailboxTaskLogger);
            v112 = v116;
            if (!v110)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v138 = swift_slowAlloc();
          LODWORD(v179) = v124;
          v139 = v138;
          v183 = swift_slowAlloc();
          v194[0] = v183;
          *v139 = v180;
          *(v139 + 4) = 2;
          *(v139 + 8) = 256;
          v140 = v184;
          v141 = v115 + *(v184 + 20);
          *(v139 + 10) = *v141;
          *(v139 + 11) = 2082;
          v142 = *(v140 + 20);
          v178 = v123;
          v143 = v122;
          v144 = v122 + v142;
          *(v139 + 13) = sub_10015BA6C(*(v122 + v142 + 8), *(v122 + v142 + 16), v194);
          *(v139 + 21) = 1040;
          *(v139 + 23) = 2;
          *(v139 + 27) = 512;
          v145 = *(v141 + 24);
          sub_10003EBBC(v115, type metadata accessor for MailboxTaskLogger);
          *(v139 + 29) = v145;
          *(v139 + 31) = 2160;
          *(v139 + 33) = 0x786F626C69616DLL;
          *(v139 + 41) = 2085;
          v146 = *(v144 + 32);
          LODWORD(v144) = *(v144 + 40);

          sub_10003EBBC(v143, type metadata accessor for MailboxTaskLogger);
          v192 = v146;
          v193 = v144;
          v92 = v185;
          v147 = sub_1004A5824();
          v149 = sub_10015BA6C(v147, v148, v194);

          *(v139 + 43) = v149;
          v114 = v187;
          *(v139 + 51) = 1024;
          *(v139 + 53) = v191;
          v126 = v178;
          _os_log_impl(&_mh_execute_header, v178, v179, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, unknown size", v139, 0x39u);
        }

        else
        {
          v183 = *v121;
          sub_10003EB54(v92, v114, type metadata accessor for MailboxTaskLogger);
          v125 = v188;
          sub_10003EB54(v92, v188, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v126 = sub_1004A4A54();
          v127 = sub_1004A6004();
          if (!os_log_type_enabled(v126, v127))
          {
            sub_10003EBBC(v125, type metadata accessor for MailboxTaskLogger);

            sub_10003EBBC(v114, type metadata accessor for MailboxTaskLogger);
            v112 = v116;
            v115 = v186;
            if (!v110)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v128 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v194[0] = v179;
          *v128 = v177;
          v129 = v114;
          *(v128 + 4) = 2;
          *(v128 + 8) = 256;
          v130 = v184;
          v131 = v188 + *(v184 + 20);
          *(v128 + 10) = *v131;
          *(v128 + 11) = 2082;
          v132 = v129 + *(v130 + 20);
          *(v128 + 13) = sub_10015BA6C(*(v132 + 8), *(v132 + 16), v194);
          *(v128 + 21) = 1040;
          *(v128 + 23) = 2;
          *(v128 + 27) = 512;
          v133 = *(v131 + 24);
          sub_10003EBBC(v188, type metadata accessor for MailboxTaskLogger);
          *(v128 + 29) = v133;
          *(v128 + 31) = 2160;
          *(v128 + 33) = 0x786F626C69616DLL;
          *(v128 + 41) = 2085;
          v134 = *(v132 + 32);
          LODWORD(v132) = *(v132 + 40);

          sub_10003EBBC(v187, type metadata accessor for MailboxTaskLogger);
          v192 = v134;
          v193 = v132;
          v92 = v185;
          v135 = sub_1004A5824();
          v137 = sub_10015BA6C(v135, v136, v194);

          *(v128 + 43) = v137;
          v114 = v187;
          *(v128 + 51) = 1024;
          *(v128 + 53) = v191;
          *(v128 + 57) = 2048;
          *(v128 + 59) = v183;
          _os_log_impl(&_mh_execute_header, v126, v127, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, size %{iec-bytes}ld", v128, 0x43u);
        }

        swift_arrayDestroy();

        v112 = v116;
        v115 = v186;
        if (!v110)
        {
          goto LABEL_32;
        }

LABEL_31:
        v116 = v112;
        v117 = v190;
      }
    }
  }

  v150 = v182;
  _s18InProgressMessagesVMa(0);
  if ((sub_1004A70C4() & 1) == 0)
  {
    v151 = v173;
    sub_10003EB54(v92, v173, type metadata accessor for MailboxTaskLogger);
    v152 = v172;
    sub_10003EB54(v92, v172, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v153 = v174;
    sub_10003EB54(v150, v174, type metadata accessor for DownloadTask);
    v154 = sub_1004A4A54();
    v155 = sub_1004A6004();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v156 = v180;
      *(v156 + 4) = 2;
      *(v156 + 8) = 256;
      v157 = v184;
      v158 = v152 + *(v184 + 20);
      *(v156 + 10) = *v158;
      *(v156 + 11) = 2082;
      v159 = v152;
      v160 = v151;
      v161 = v151 + *(v157 + 20);
      *(v156 + 13) = sub_10015BA6C(*(v161 + 8), *(v161 + 16), v194);
      *(v156 + 21) = 1040;
      *(v156 + 23) = 2;
      *(v156 + 27) = 512;
      LOWORD(v158) = *(v158 + 24);
      sub_10003EBBC(v159, type metadata accessor for MailboxTaskLogger);
      *(v156 + 29) = v158;
      *(v156 + 31) = 2160;
      *(v156 + 33) = 0x786F626C69616DLL;
      *(v156 + 41) = 2085;
      v162 = *(v161 + 32);
      LODWORD(v161) = *(v161 + 40);

      sub_10003EBBC(v160, type metadata accessor for MailboxTaskLogger);
      v192 = v162;
      v193 = v161;
      v163 = sub_1004A5824();
      v165 = sub_10015BA6C(v163, v164, v194);

      *(v156 + 43) = v165;
      *(v156 + 51) = 2082;
      v166 = v174;
      v167 = MessageIdentifierSet.debugDescription.getter();
      v169 = v168;
      sub_10003EBBC(v166, type metadata accessor for DownloadTask);
      v170 = sub_10015BA6C(v167, v169, v194);

      *(v156 + 53) = v170;
      _os_log_impl(&_mh_execute_header, v154, v155, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Using cached body structure for message(s) %{public}s", v156, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_10003EBBC(v152, type metadata accessor for MailboxTaskLogger);

      sub_10003EBBC(v153, type metadata accessor for DownloadTask);
      sub_10003EBBC(v151, type metadata accessor for MailboxTaskLogger);
    }
  }
}

uint64_t sub_10003BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v74 = a5;
  v75 = a4;
  v76 = a6;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_10000C9C0(&qword_1005CDF88, &qword_1004CFFB8);
  __chkstk_darwin(v19 - 8);
  v73 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  __chkstk_darwin(v24);
  v79 = &v68 - v25;
  v26 = *(v6 + 80);
  v81 = *(v6 + 64);
  v82 = v26;
  v83 = *(v6 + 96);
  v84 = *(v6 + 112);
  v27 = type metadata accessor for DownloadTask(0);
  v28 = v6 + *(v27 + 40);
  v72 = v6 + *(v27 + 36);
  v29 = *(v72 + 16);

  v77 = a2;
  v78 = a3;
  v30 = sub_10003235C(0, a2, a3);
  v71 = v28;
  if (v30)
  {
    v31 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
    v32 = a1;
  }

  else
  {
    v70 = a1;
    v80 = v29;
    v33 = *(&v83 + 1);
    sub_100016D2C();
    v34 = sub_1004A7114();
    __chkstk_darwin(v34);
    *(&v68 - 2) = v28;
    *(&v68 - 1) = &v80;
    sub_1000DCDF4(v15, sub_10003EC68, v33, v18);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v35 = sub_1004A70C4();
    v36 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v37 = v36;
    v38 = 1;
    if ((v35 & 1) == 0)
    {
      v39 = &v23[*(v36 + 48)];
      sub_10002A54C(v18, v23);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v40 = *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      v69 = v23;
      v41 = v39 + v40;
      sub_10002A54C(v18, v39);
      *v41 = &off_100598BF8;
      *(v41 + 8) = 0;
      *(v41 + 16) = 1;
      v23 = v69;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      v38 = 0;
    }

    (*(*(v37 - 8) + 56))(v23, v38, 1, v37);
    sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
    v42 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v23, 1, v42);
    v32 = v70;
    if (v44 != 1)
    {

      v57 = v79;
      sub_100025FDC(v23, v79, &qword_1005CDF90, &qword_1004CFFC0);
      v58 = v42;
      v46 = v57;
      (*(v43 + 56))(v57, 0, 1, v58);
      goto LABEL_14;
    }
  }

  if (sub_10003235C(1, v77, v78))
  {

    v45 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v46 = v79;
    (*(*(v45 - 8) + 56))(v79, 1, 1, v45);
  }

  else
  {
    sub_10003D680(v71, v29, v12);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v47 = sub_1004A70C4();
    v48 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v49 = v48;
    if ((v47 & 1) == 0)
    {
      v50 = *(v48 + 48);
      v71 = v29;
      v51 = v12;
      v52 = v79 + v50;
      sub_10002A54C(v12, v79);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v53 = v32;
      v54 = v52 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_10002A54C(v51, v52);
      *v54 = &off_100598C90;
      *(v54 + 8) = 0;
      *(v54 + 16) = 1;
      v32 = v53;
      v12 = v51;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
    }

    v55 = *(*(v49 - 8) + 56);
    v46 = v79;
    v55();

    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  }

  v56 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
  if ((*(*(v56 - 8) + 48))(v23, 1, v56) != 1)
  {
    sub_100025F40(v23, &qword_1005CDF88, &qword_1004CFFB8);
  }

LABEL_14:
  v59 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  if (v61(v46, 1, v59) == 1)
  {
    v62 = v73;
    sub_10003FE00(v77, v78, v74, v73);
    if (v61(v62, 1, v59) == 1)
    {
      sub_100040B64(v32, v77, v78, v75, v76);
      if (v61(v62, 1, v59) != 1)
      {
        sub_100025F40(v62, &qword_1005CDF88, &qword_1004CFFB8);
      }
    }

    else
    {
      v66 = v76;
      sub_100025FDC(v62, v76, &qword_1005CDF90, &qword_1004CFFC0);
      (*(v60 + 56))(v66, 0, 1, v59);
    }

    v67 = v79;
    result = v61(v79, 1, v59);
    if (result != 1)
    {
      return sub_100025F40(v67, &qword_1005CDF88, &qword_1004CFFB8);
    }
  }

  else
  {
    v63 = v46;
    v64 = v76;
    sub_100025FDC(v63, v76, &qword_1005CDF90, &qword_1004CFFC0);
    return (*(v60 + 56))(v64, 0, 1, v59);
  }

  return result;
}

uint64_t sub_10003C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v63 = type metadata accessor for MessageHeader(0);
  v58 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v14 - 8);
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v62 = _s25MessageSectionsToDownloadVMa(0);
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v20 = (&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v6 + *(type metadata accessor for DownloadTask(0) + 36);
  v22 = *(v7 + 88);
  v23 = *(v7 + 9);
  v59 = *(v7 + 96);
  v57 = v23;
  v60 = a2;
  v61 = a4;
  v24 = sub_10004F60C(v22, v59, v23, a2, a4, a6);
  if ((~v24 & 0xFF00000000) != 0)
  {
    return v24;
  }

  v53 = a6;
  v54 = v22;
  v50 = a1;
  v51 = a3;
  result = _s18InProgressMessagesVMa(0);
  v26 = *(result + 32);
  v52 = v21;
  v27 = *(v21 + v26);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v27 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v31 = (v58 + 48);
    while (v29 < *(v27 + 16))
    {
      v32 = (v30 + *(v64 + 72) * v29);
      sub_10003EB54(v32, v20, _s25MessageSectionsToDownloadVMa);
      sub_10003EB54(v20 + *(v62 + 20), v18, _s19MessageHeaderStatusOMa);
      v33 = *v31;
      if ((*v31)(v18, 3, v63))
      {
        sub_10003EBBC(v20, _s25MessageSectionsToDownloadVMa);
        result = sub_10003EBBC(v18, _s19MessageHeaderStatusOMa);
      }

      else
      {
        sub_10003EBBC(v18, _s19MessageHeaderStatusOMa);
        v34 = sub_10001EE3C(*v20 | &_mh_execute_header, v60, v61);
        result = sub_10003EBBC(v20, _s25MessageSectionsToDownloadVMa);
        if ((v34 & 1) == 0)
        {
          if (v29 < *(v27 + 16))
          {
            v35 = *v32;
            v36 = v32 + *(v62 + 20);
            v37 = v56;
            sub_10003EB54(v36, v56, _s19MessageHeaderStatusOMa);
            if (v33(v37, 3, v63))
            {
              sub_10003EBBC(v37, _s19MessageHeaderStatusOMa);
              goto LABEL_12;
            }

            v45 = v55;
            sub_10003EC80(v37, v55, type metadata accessor for MessageHeader);
            v46 = sub_10000C9C0(&qword_1005CDF80, &qword_1004CFFB0);
            swift_allocBox();
            v47 = *(v46 + 64);
            *v48 = v54;
            *(v48 + 8) = v59;
            *(v48 + 12) = v35;
            sub_10003EC80(v45, v48 + v47, type metadata accessor for MessageHeader);
            v41 = v35 | &_mh_execute_header;

            return v41;
          }

LABEL_20:
          __break(1u);
          return result;
        }
      }

      if (v28 == ++v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_12:
  v38 = v53;
  v39 = v54;
  v40 = v59;
  v41 = sub_100043BDC(v54, v59, v53);
  if ((~v41 & 0xFF00000000) == 0)
  {

    v42 = sub_10004A0B8(v50, v60, v51, v61, v38);
    if ((v42 & 0x100000000) != 0)
    {
    }

    else
    {
      v43 = v42;
      v44 = swift_allocObject();
      *(v44 + 16) = v39;
      *(v44 + 24) = v40;
      *(v44 + 28) = v57;
      *(v44 + 32) = v43;
      return v43 | 0x200000000;
    }
  }

  return v41;
}

uint64_t sub_10003C820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v28 = a1;
  v29 = &v24 - v6;
  v33 = 0;
  v7 = *(v2 + 88);
  v8 = *(v3 + 96);
  v9 = (a1 + 176);
  v10 = *(a1 + 176);
  v30 = v3;
  v31 = &v33;
  v11 = *(a1 + 168);
  v12 = *(a1 + 184);
  LODWORD(v13) = *(a1 + 192);
  v27 = v8;
  if (v13)
  {
    v32 = v11;
    sub_100020D10(v11, v10, v12, 1);
    sub_1000BDFC4(&v32, v7, v8, 0, sub_10003E6C4);
    sub_100020D58(v11, v10, v12, 1);
    v10 = 0;
    v12 = 0;
    v11 = v32;
    *(a1 + 168) = v32;
    *v9 = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 1;
    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100020D10(v11, v10, v12, 0);

    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  v14 = *(type metadata accessor for DownloadTask(0) + 36);
  v25 = v13;
  v13 = v3 + v14;
  v15 = *(_s18InProgressMessagesVMa(0) + 40);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v24 = v13;
  LOBYTE(v13) = v25;
  if ((sub_1004A70C4() & 1) == 0)
  {
    sub_1000B55B8(*(v3 + 64), *(v3 + 72), v24 + v15, v26);
  }

LABEL_7:

  v16 = v29;
  sub_1000B492C(v17);
  if ((v13 & 1) == 0)
  {
    return sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  }

  v32 = v11;

  v18 = v27;
  sub_1000BBECC(&v32, v7, v27, v16);
  v19 = sub_100020D58(v11, v10, v12, 1);
  v20 = v7;
  v21 = v32;
  v22 = v28;
  *(v28 + 168) = v32;
  *v9 = 0;
  v9[1] = 0;
  *(v22 + 192) = 1;
  __chkstk_darwin(v19);
  *(&v24 - 2) = &v33;
  *(&v24 - 1) = v3;
  v32 = v21;

  sub_1000BE940(&v32, v20, v18, 0, sub_10003E6CC);
  sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  result = sub_100020D58(v21, 0, 0, 1);
  *(v22 + 168) = v32;
  *v9 = 0;
  v9[1] = 0;
  *(v22 + 192) = 1;
  return result;
}

uint64_t sub_10003CB44(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v57 = a3;
  v55 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v46[-v5];
  v49 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v49);
  v7 = &v46[-v6];
  v8 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v8);
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v46[-v11];
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v13);
  v15 = &v46[-v14];
  v16 = *(a2 + 9);
  v54 = a2;

  sub_1000B492C(v17);
  v50 = type metadata accessor for PendingPersistenceUpdates(0);
  v18 = *(v50 + 28);
  v56 = a1;
  v19 = a1 + v18;
  v20 = v19;
  v47 = v16;
  if (v16 == 1)
  {
    v20 = v19 + *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
  }

  v48 = v19;
  sub_10003EB54(v20, v12, type metadata accessor for MessagesPendingDownload);
  sub_10002A54C(v15, v7);
  v21 = MessageIdentifierSet.startIndex.getter(v13);
  v23 = v22;
  if (v21 != MessageIdentifierSet.endIndex.getter(v13) || v23 != v24)
  {
    do
    {
      MessageIdentifierSet.subscript.getter(v23, v13, &v59);
      v26 = v59;
      MessageIdentifierSet.index(_:offsetBy:)(v21, v23, 1);
      v21 = v27;
      v23 = v28;
      v29 = sub_100067004();
      if (v30)
      {
        v31 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *v12;
        v59 = *v12;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10013ADF0();
          v33 = v59;
        }

        sub_10013D534(v31, v33);
        *v12 = v33;
        v58 = v26;
        MessageIdentifierSet.insert(_:)(&v59, &v58, v13);
      }
    }

    while (v21 != MessageIdentifierSet.endIndex.getter(v13) || v23 != v34);
  }

  v35 = &v7[*(v49 + 36)];
  *v35 = v21;
  v35[1] = v23;
  sub_100025F40(v7, &qword_1005CDA38, &unk_1004D14C0);
  sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
  if (v47)
  {
    v36 = type metadata accessor for MessagesPendingDownloadPerPass(0);
    v37 = v48;
    sub_10003E784(v12, v48 + *(v36 + 20));
    v38 = v37 + *(v36 + 20);
  }

  else
  {
    v38 = v48;
    sub_10003E784(v12, v48);
  }

  v39 = v38;
  v40 = v51;
  sub_10003EB54(v39, v51, type metadata accessor for MessagesPendingDownload);
  v41 = *v40;

  sub_10003EBBC(v40, type metadata accessor for MessagesPendingDownload);
  v42 = *(v41 + 16);

  v43 = v54 + *(type metadata accessor for DownloadTask(0) + 36);
  v44 = _s18InProgressMessagesVMa(0);
  (*(v53 + 16))(v52, v43 + *(v44 + 36), v55);
  result = sub_1004A7104();
  *v57 = v42 < 0x20;
  return result;
}

void sub_10003CFE0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (*(a3 + 9))
    {
      v4 = 10;
    }

    else
    {
      v4 = 9;
    }

    sub_10013FC9C(v4);
    sub_100088568(&v38, v4);
  }

  v5 = a3 + *(type metadata accessor for DownloadTask(0) + 36);
  v6 = *(v5 + *(_s18InProgressMessagesVMa(0) + 44));
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v33 = v6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_14:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(*(v33 + 48) + 4 * v15);
    v17 = *(v33 + 56) + 184 * v15;
    v19 = *(v17 + 32);
    v18 = *(v17 + 48);
    v20 = *v17;
    v35[1] = *(v17 + 16);
    v35[2] = v19;
    v35[0] = v20;
    v21 = *(v17 + 112);
    v23 = *(v17 + 64);
    v22 = *(v17 + 80);
    v35[6] = *(v17 + 96);
    v35[7] = v21;
    v35[4] = v23;
    v35[5] = v22;
    v25 = *(v17 + 144);
    v24 = *(v17 + 160);
    v26 = *(v17 + 128);
    v36 = *(v17 + 176);
    v35[9] = v25;
    v35[10] = v24;
    v35[8] = v26;
    v35[3] = v18;
    type metadata accessor for MailboxSyncState(0);
    v27 = *(v17 + 96);
    *&v37[116] = *(v17 + 112);
    *&v37[100] = v27;
    v28 = *(v17 + 64);
    *&v37[84] = *(v17 + 80);
    *&v37[68] = v28;
    v37[180] = *(v17 + 176);
    v29 = *(v17 + 144);
    *&v37[164] = *(v17 + 160);
    v30 = *(v17 + 128);
    *&v37[148] = v29;
    *&v37[132] = v30;
    v31 = *(v17 + 16);
    *&v37[4] = *v17;
    *&v37[20] = v31;
    v32 = *(v17 + 48);
    *&v37[36] = *(v17 + 32);
    *&v37[52] = v32;
    v38 = v16;
    v47 = *&v37[128];
    v48 = *&v37[144];
    v49[0] = *&v37[160];
    *(v49 + 13) = *&v37[173];
    v43 = *&v37[64];
    v44 = *&v37[80];
    v45 = *&v37[96];
    v46 = *&v37[112];
    v39 = *v37;
    v40 = *&v37[16];
    v41 = *&v37[32];
    v42 = *&v37[48];
    sub_10003E6D4(v35, v34);
    sub_10000FE90(&v38);
    sub_10003E730(v35);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10003D274()
{
  v5[8] = 0;
  sub_1004A6724(41);
  v6._object = 0x80000001004AA100;
  v6._countAndFlagsBits = 0xD000000000000023;
  sub_1004A5994(v6);
  *v5 = *(v0 + 9);
  sub_1004A6934();
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  sub_1004A5994(v7);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2._countAndFlagsBits = v1;
  }

  else
  {
    v2._countAndFlagsBits = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1004A5994(v2);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_1004A5994(v8);
  return *&v5[1];
}

double sub_10003D37C()
{
  if (qword_1005CCE28 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10003D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_10003C310(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

unsigned int *sub_10003D458(unsigned int *result)
{
  if (*(result + 4) == 2)
  {
    return sub_100047070(*result);
  }

  return result;
}

Swift::Int sub_10003D4A4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 13);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_10003D534(uint64_t a1)
{
  v2 = *(v1 + 13);
  sub_1004A6EB4(*(v1 + 8) | (*(v1 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EB4(v2);
}

Swift::Int sub_10003D5A8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 13);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

BOOL sub_10003D634(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    v2 = &_mh_execute_header;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 12))
  {
    v3 = &_mh_execute_header;
  }

  else
  {
    v3 = 0;
  }

  return sub_10003DE70(*a1, v2 | *(a1 + 8) | (*(a1 + 13) << 40), *a2, v3 | *(a2 + 8) | (*(a2 + 13) << 40));
}

uint64_t sub_10003D680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  v15 = *(v3 + 40);
  sub_100016D2C();
  sub_1004A7114();
  v21 = a1;
  sub_1000DCDF4(v11, sub_10003ECE8, v15, v14);
  v22 = a2;
  sub_1004A7114();
  v19 = a1;
  v20 = &v22;
  sub_1000DCDF4(v8, sub_10003EEA8, v15, v11);
  MessageIdentifierSet.subtracting(_:)(v11, v18);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
}

BOOL sub_10003D844(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) == 2)
    {
      if (BYTE4(a2) == 2)
      {
        return a2 == a1;
      }
    }

    else if (a1)
    {
      if (BYTE4(a2) == 3 && a2 == 1)
      {
        return 1;
      }
    }

    else if (BYTE4(a2) == 3 && !a2)
    {
      return 1;
    }
  }

  else
  {
    if (!BYTE4(a1))
    {
      if (!BYTE4(a2))
      {
        return a2 == a1;
      }

      return 0;
    }

    if (BYTE4(a2) == 1)
    {
      return a2 == a1;
    }
  }

  return 0;
}

uint64_t sub_10003D8C0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v32 = _s18SectionDataRequestVMa(0);
  __chkstk_darwin(v32);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for DownloadTask.CommandID(0);
  __chkstk_darwin(v10);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v32 - v13);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  v21 = sub_10000C9C0(&qword_1005CDF98, &qword_1004CFFC8);
  __chkstk_darwin(v21 - 8);
  v23 = &v32 - v22;
  v25 = *(v24 + 56);
  sub_10003EB54(a1, &v32 - v22, type metadata accessor for DownloadTask.CommandID);
  sub_10003EB54(v35, &v23[v25], type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10003EB54(v23, v17, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_17;
      }

      sub_100025FDC(&v23[v25], v6, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v27 = sub_1004A7034();
      sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
      v28 = v17;
    }

    else
    {
      sub_10003EB54(v23, v20, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
LABEL_17:
        sub_100025F40(v23, &qword_1005CDF98, &qword_1004CFFC8);
LABEL_18:
        v27 = 0;
        return v27 & 1;
      }

      sub_100025FDC(&v23[v25], v9, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v27 = sub_1004A7034();
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      v28 = v20;
    }

    sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
LABEL_22:
    sub_10003EBBC(v23, type metadata accessor for DownloadTask.CommandID);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10003EB54(v23, v14, type metadata accessor for DownloadTask.CommandID);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    v27 = *&v23[v25] == *v14;
    goto LABEL_22;
  }

  v29 = v34;
  sub_10003EB54(v23, v34, type metadata accessor for DownloadTask.CommandID);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10003EBBC(v29, _s18SectionDataRequestVMa);
    goto LABEL_17;
  }

  v30 = v33;
  sub_10003EC80(&v23[v25], v33, _s18SectionDataRequestVMa);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v29 + *(v32 + 20)), *(v30 + *(v32 + 20))) & 1) == 0 || (sub_100102AF4(*(v29 + *(v32 + 24)), *(v30 + *(v32 + 24))) & 1) == 0)
  {
    sub_10003EBBC(v30, _s18SectionDataRequestVMa);
    sub_10003EBBC(v29, _s18SectionDataRequestVMa);
    sub_10003EBBC(v23, type metadata accessor for DownloadTask.CommandID);
    goto LABEL_18;
  }

  sub_10003EBBC(v30, _s18SectionDataRequestVMa);
  sub_10003EBBC(v29, _s18SectionDataRequestVMa);
  sub_10003EBBC(v23, type metadata accessor for DownloadTask.CommandID);
  v27 = 1;
  return v27 & 1;
}

BOOL sub_10003DE70(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 ^ a4;
  if (a2 != a4)
  {
    return 0;
  }

  v5 = *(result + 16);
  if (v5 != *(a3 + 16))
  {
    return 0;
  }

  if (v5)
  {
    v6 = result == a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if ((a2 & &_mh_execute_header) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if ((a4 & &_mh_execute_header) != 0)
    {
      v10 = 6581810;
    }

    else
    {
      v10 = 7631665;
    }

    if (v9 == v10)
    {
      swift_bridgeObjectRelease_n();
      return (v4 & 0xFF0000000000) == 0;
    }

    v11 = sub_1004A6D34();
    swift_bridgeObjectRelease_n();
    if (v11)
    {
      return (v4 & 0xFF0000000000) == 0;
    }

    return 0;
  }

  v7 = (result + 32);
  v8 = (a3 + 32);
  while (v5)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003DF4C(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t sub_10003DF60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
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

uint64_t sub_10003DFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003E010(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10003E154(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10003E2A4(uint64_t a1)
{
  sub_10003E3DC(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v1 <= 0x3F)
  {
    _s18InProgressMessagesVMa(319);
    if (v2 <= 0x3F)
    {
      sub_10003E3DC(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003E3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_10003E464(uint64_t a1)
{
  sub_10003E3DC(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    _s18SectionDataRequestVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_10003E530()
{
  result = qword_1005CDEB0;
  if (!qword_1005CDEB0)
  {
    result = swift_getWitnessTable("In\v", &type metadata for DownloadTask.ActionID, v0, v1);
    atomic_store(result, &qword_1005CDEB0);
  }

  return result;
}

uint64_t sub_10003E5CC(uint64_t a1)
{
  result = sub_10003E624(&qword_1005CDF70, type metadata accessor for DownloadTask, byte_1004CFEDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003E624(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003E670()
{
  result = qword_1005CDF78;
  if (!qword_1005CDF78)
  {
    result = swift_getWitnessTable("!n\v", &_s11TaskIDValueVN, v0, v1);
    atomic_store(result, &qword_1005CDF78);
  }

  return result;
}

uint64_t sub_10003E784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v10 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 104);
  type metadata accessor for DownloadTask(0);
  sub_10003EB54(a1, v12, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    return sub_10003EBBC(v12, type metadata accessor for UntaggedResponse);
  }

  memcpy(v33, v12, sizeof(v33));
  if ((v33[12] & 1) == 0)
  {
    if (*(v13 + 16))
    {
      v14 = *&v33[8];
      v15 = sub_100067004();
      if (v16)
      {
        v17 = *(*(v13 + 56) + 16 * v15 + 9);
        v18 = *&v33[540];
        v19 = v33[544];
        v29 = *&v33[336];
        v30 = *&v33[352];
        v31 = *&v33[368];
        v32 = v33[384];
        v25 = *&v33[272];
        v26 = *&v33[288];
        v27 = *&v33[304];
        v28 = *&v33[320];
        v21 = *&v33[208];
        v22 = *&v33[224];
        v23 = *&v33[240];
        v24 = *&v33[256];
        if (sub_10003EC1C(&v21) == 1)
        {
          if ((v19 & 1) == 0)
          {
            sub_10004E67C(v14, v18, v17, a2, a3, a5);
            return sub_100025D5C(v33);
          }
        }

        else
        {
          v34[8] = v29;
          v34[9] = v30;
          v34[10] = v31;
          v35 = v32;
          v34[4] = v25;
          v34[5] = v26;
          v34[6] = v27;
          v34[7] = v28;
          v34[0] = v21;
          v34[1] = v22;
          v34[2] = v23;
          v34[3] = v24;
          if ((v19 & 1) == 0)
          {
            sub_10004DDC8(v14, v34, v18, a2, a3, a5);
            return sub_100025D5C(v33);
          }
        }

        sub_100045D7C(v14, *&v33[200], a5);
      }
    }
  }

  return sub_100025D5C(v33);
}

void sub_10003EA2C(unint64_t result, NSObject *a2)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0xD && (*(v2 + 96) | (*(v2 + 96) << 32)) == (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
    v5 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v6 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v7 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (sub_1000FFC98(*(v2 + 88), *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      if (*(v2 + 9))
      {
        v8 = 6581810;
      }

      else
      {
        v8 = 7631665;
      }

      if (v4)
      {
        v9 = 6581810;
      }

      else
      {
        v9 = 7631665;
      }

      if (v8 == v9)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v10 = sub_1004A6D34();
        swift_bridgeObjectRelease_n();
        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      if (*(*(v2 + 104) + 16))
      {
        sub_100067004();
        if (v11)
        {
          type metadata accessor for DownloadTask(0);
          sub_100043D14(v5, v6, v7, a2);
        }
      }
    }
  }
}

uint64_t sub_10003EB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003EBBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003EC1C(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t sub_10003EC30()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_10003EC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003ED30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    v12 = a2;
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    result = MessageIdentifierSet.contains(_:)(&v12, v7);
    if ((result & 1) == 0)
    {
      if (!*(a5 + 16) || (result = sub_100067004(), (v9 & 1) == 0))
      {
        v10 = v6;
        return MessageIdentifierSet.insert(_:)(v11, &v10, v7);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTask.ActionID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadTask.ActionID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003EE68(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10003EE80(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

Swift::Int sub_10003EEC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_10003EF48()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v2 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_10003EFAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_1004A6E94();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

uint64_t sub_10003F02C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10003F310(*a1, v2 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

Swift::Int sub_10003F070()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6ED4(v5);
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_10009296C(v7, v3);
  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void sub_10003F108(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  sub_1004A6EB4(*(v1 + 8));
  sub_1004A6ED4(v6);
  sub_1004A6EB4(v3 | (v3 << 32));
  sub_10009296C(a1, v4);
  sub_1004A6EB4(v5);
}

Swift::Int sub_10003F178(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6ED4(v6);
  sub_1004A6EB4(v3 | (v3 << 32));
  sub_10009296C(v8, v4);
  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

unint64_t sub_10003F20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10003F350(v5, v7) & 1;
}

uint64_t sub_10003F278(uint64_t a1, int *a2)
{
  if (*(a2 + 16) == 1)
  {
    v2 = *a2;
    v7 = *a2;
    v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    result = MessageIdentifierSet.contains(_:)(&v7, v3);
    if ((result & 1) == 0)
    {
      v5 = v2;
      return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
    }
  }

  return result;
}

uint64_t sub_10003F310(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  result = 0;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if ((a4 & 1) == 0 && v6 == a1)
  {
    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  return result;
}

uint64_t *sub_10003F350(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
    {
      v8 = result;
      if (sub_1000FFC98(result[3], a2[3]) & 1) != 0 && (sub_100115D34(v8[5], a2[5]))
      {
        return (*(v8 + 48) == *(a2 + 48));
      }
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F440(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v35 = *(result + 49);
  LOBYTE(v9) = *(result + 48);
  v10 = *a3;
  result = sub_100067004();
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1000C41D8(v15, i & 1);
    result = sub_100067004();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 4 * result) = v7;
    v21 = v18[7] + 16 * result;
    *v21 = v8;
    *(v21 + 8) = v9;
    *(v21 + 9) = v35;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_10013AC88();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = v18[7] + 16 * result;
  *v19 = v8;
  *(v19 + 8) = v9;
  *(v19 + 9) = v35;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 73); ; i += 24)
    {
      v6 = *(i - 17);
      v9 = *(i - 9);
      v8 = *i;
      v3 = *(i - 1);
      v25 = *a3;
      result = sub_100067004();
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        break;
      }

      v7 = v26;
      if (v25[3] < v29)
      {
        sub_1000C41D8(v29, 1);
        result = sub_100067004();
        if ((v7 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v7)
      {
        v24 = v31[7] + 16 * result;
        *v24 = v9;
        *(v24 + 8) = v3;
        *(v24 + 9) = v8;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + 4 * result) = v6;
        v32 = v31[7] + 16 * result;
        *v32 = v9;
        *(v32 + 8) = v3;
        *(v32 + 9) = v8;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10003F6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 8);
  v9 = a1[3];
  v33 = *(a1 + 8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v26 = a1[3];
    v27 = *(a1 + 8);
    v28 = a1[1];
    v29 = *a1;
    v34 = _swiftEmptyArrayStorage;
    sub_100091D68(0, v10, 0);
    v11 = a2;
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 3 * v14;
    do
    {
      v16 = *(v11 + v12 + 32);
      v17 = *(v11 + v12 + 40);
      v18 = *(v11 + v12 + 48);
      v19 = *(v11 + v12 + 49);
      v34 = v13;
      v20 = v13[3];
      v21 = v14 + 1;
      if (v14 >= v20 >> 1)
      {
        sub_100091D68((v20 > 1), v14 + 1, 1);
        v11 = a2;
        v13 = v34;
      }

      v13[2] = v21;
      v22 = &v13[v15 + v12 / 8];
      *(v22 + 8) = v16;
      v22[5] = v17;
      *(v22 + 48) = v18;
      *(v22 + 49) = v19;
      v12 += 24;
      v14 = v21;
      --v10;
    }

    while (v10);

    v4 = a3;
    v6 = v29;
    v5 = a4;
    v7 = v28;
    v8 = v27;
    v9 = v26;
    if (v13[2])
    {
      goto LABEL_7;
    }

LABEL_9:
    v23 = _swiftEmptyDictionarySingleton;
    goto LABEL_10;
  }

  v13 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_10000C9C0(&qword_1005CDFA0, &qword_1004CFFE0);
  v23 = sub_1004A6A74();
LABEL_10:
  v34 = v23;
  sub_10003F440(v13, 1, &v34);

  v25 = v34;
  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v33;
  *(v5 + 40) = v25;
  *(v5 + 48) = v4;
  return result;
}

__n128 sub_10003F898(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003F8B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10003F8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5BatchV7MessageVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s5BatchV7MessageVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s5BatchV7MessageVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10003FA0C()
{
  result = qword_1005CDFA8;
  if (!qword_1005CDFA8)
  {
    result = swift_getWitnessTable(")m\v", &_s5BatchV7MessageVN, v0, v1);
    atomic_store(result, &qword_1005CDFA8);
  }

  return result;
}

unint64_t sub_10003FA64()
{
  result = qword_1005CDFB0;
  if (!qword_1005CDFB0)
  {
    result = swift_getWitnessTable(byte_1004D00A8, &_s5BatchVN, v0, v1);
    atomic_store(result, &qword_1005CDFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowOfInterestSizes.MailboxType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WindowOfInterestSizes.MailboxType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003FC0C()
{
  result = qword_1005CDFB8;
  if (!qword_1005CDFB8)
  {
    v3 = sub_10000DEFC(&qword_1005CDFC0, qword_1004D0118);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005CDFB8);
  }

  return result;
}

unint64_t sub_10003FC74()
{
  result = qword_1005CDFC8;
  if (!qword_1005CDFC8)
  {
    result = swift_getWitnessTable(byte_1004D0198, &_s5BatchV2IDON, v0, v1);
    atomic_store(result, &qword_1005CDFC8);
  }

  return result;
}

void *sub_10003FCC8(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v24 = _swiftEmptyArrayStorage;
  sub_100091E08(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    a1(&v20, &v19);
    if (v3)
    {
      break;
    }

    v9 = v20;
    v10 = v21;
    v11 = v23;
    v12 = v22;
    v24 = v5;
    v14 = v5[2];
    v13 = v5[3];
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      sub_100091E08((v13 > 1), v14 + 1, 1);
      v10 = v17;
      v9 = v18;
      v5 = v24;
    }

    v5[2] = v14 + 1;
    v15 = &v5[5 * v14];
    *(v15 + 2) = v9;
    *(v15 + 3) = v10;
    *(v15 + 68) = (v12 | (v11 << 32)) >> 32;
    *(v15 + 16) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_10003FE00(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, _DWORD *a4@<X8>)
{
  v89 = a3;
  v97 = a1;
  v98 = a2;
  v95 = a4;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v91 = &v84 - v6;
  v86 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v86);
  v93 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v84 - v9;
  v99 = type metadata accessor for DownloadTask.CommandID(0);
  __chkstk_darwin(v99);
  v96 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for MessageHeader(0);
  v11 = *(v107 - 8);
  __chkstk_darwin(v107);
  v94 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  __chkstk_darwin(v104);
  v14 = &v84 - v13;
  v15 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v15 - 8);
  v92 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v100 = (&v84 - v18);
  __chkstk_darwin(v19);
  v106 = &v84 - v20;
  v21 = _s25MessageSectionsToDownloadVMa(0);
  v111 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = (&v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = *(_s18InProgressMessagesVMa(0) + 32);
  v88 = v4;
  v24 = *(v4 + v87);
  v110 = *(v24 + 16);
  if (!v110)
  {
LABEL_29:
    v58 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    (*(*(v58 - 8) + 56))(v95, 1, 1, v58);
    return;
  }

  v25 = 0;
  v113 = v24;
  v114 = 0;
  v26 = &v116;
  v85 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v109 = v24 + v85;
  v102 = v14;
  v103 = v11 + 7;
  v105 = (v11 + 3);
  v112 = v23;
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v108 = (*(v111 + 72) * v25);
    v27 = sub_100050EB8(&v108[v109], v23, _s25MessageSectionsToDownloadVMa);
    v14 = v21;
    v4 = *(v23 + *(v21 + 24));
    v28 = v4[2];
    if (v28)
    {
      break;
    }

LABEL_12:
    v4 = &v84;
    v21 = v14;
    v23 = v112;
    *&v116 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v27);
    *(&v84 - 2) = &v116;
    v14 = v114;
    v43 = sub_1000CC5CC(sub_1000517B4, (&v84 - 4), v42);
    v114 = v14;
    v24 = v113;
    if (v43)
    {
LABEL_4:
      sub_100050F20(v23, _s25MessageSectionsToDownloadVMa);
    }

    else
    {
      v44 = *(v21 + 20);
      v45 = v23;
      v46 = v106;
      v11 = v107;
      v101 = *v103;
      v101(v106, 2, 3, v107);
      v47 = *(v104 + 48);
      v48 = v45 + v44;
      v14 = v102;
      sub_100050EB8(v48, v102, _s19MessageHeaderStatusOMa);
      sub_100050EB8(v46, &v14[v47], _s19MessageHeaderStatusOMa);
      v4 = *v105;
      v49 = (*v105)(v14, 3, v11);
      if (v49 > 1)
      {
        if (v49 == 2)
        {
          sub_100050F20(v106, _s19MessageHeaderStatusOMa);
          v51 = (v4)(&v14[v47], 3, v107);
          v23 = v112;
          if (v51 != 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100050F20(v106, _s19MessageHeaderStatusOMa);
          v53 = (v4)(&v14[v47], 3, v107);
          v23 = v112;
          if (v53 != 3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v11 = v100;
        if (v49)
        {
          sub_100050F20(v106, _s19MessageHeaderStatusOMa);
          v52 = (v4)(&v14[v47], 3, v107);
          v23 = v112;
          if (v52 != 1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100050EB8(v14, v100, _s19MessageHeaderStatusOMa);
          v50 = (v4)(&v14[v47], 3, v107);
          v23 = v112;
          if (v50)
          {
            sub_100050F20(v106, _s19MessageHeaderStatusOMa);
            sub_100050F20(v11, type metadata accessor for MessageHeader);
LABEL_23:
            sub_100025F40(v14, &qword_1005CE1F8, &qword_1004D0918);
            v54 = _s25MessageSectionsToDownloadVMa;
            v55 = v23;
LABEL_24:
            sub_100050F20(v55, v54);
            v24 = v113;
            goto LABEL_5;
          }

          v4 = v94;
          sub_100050F80(&v14[v47], v94, type metadata accessor for MessageHeader);
          v56 = static MessageHeader.== infix(_:_:)(v11, v4);
          sub_100050F20(v4, type metadata accessor for MessageHeader);
          sub_100050F20(v106, _s19MessageHeaderStatusOMa);
          sub_100050F20(v11, type metadata accessor for MessageHeader);
          if ((v56 & 1) == 0)
          {
            sub_100050F20(v23, _s25MessageSectionsToDownloadVMa);
            v54 = _s19MessageHeaderStatusOMa;
            v55 = v14;
            goto LABEL_24;
          }
        }
      }

      sub_100050F20(v14, _s19MessageHeaderStatusOMa);
      v4 = v96;
      *v96 = *v23;
      swift_storeEnumTagMultiPayload();
      v57 = sub_100111C04(v4, v97, v98);
      sub_100050F20(v4, type metadata accessor for DownloadTask.CommandID);
      sub_100050F20(v23, _s25MessageSectionsToDownloadVMa);
      v24 = v113;
      if ((v57 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_5:
    if (++v25 == v110)
    {
      goto LABEL_29;
    }
  }

  v21 = 0;
  v11 = v4 + 4;
  while (v21 < v4[2])
  {
    v29 = *v11;
    v30 = v11[2];
    v117 = v11[1];
    v118 = v30;
    v116 = v29;
    v31 = v11[3];
    v32 = v11[4];
    v33 = v11[6];
    v121 = v11[5];
    v122 = v33;
    v119 = v31;
    v120 = v32;
    v34 = v11[7];
    v35 = v11[8];
    v36 = v11[10];
    v125 = v11[9];
    v126 = v36;
    v123 = v34;
    v124 = v35;
    v37 = v11[11];
    v38 = v11[12];
    v39 = v11[13];
    *(v129 + 9) = *(v11 + 217);
    v128 = v38;
    v129[0] = v39;
    v127 = v37;
    v24 = *(&v117 + 1);
    sub_100050408(&v116, v115);

    v41 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v40, _swiftEmptyArrayStorage);

    v27 = sub_100050440(&v116);
    if (v41)
    {
      v21 = v14;
      v23 = v112;
      v24 = v113;
      goto LABEL_4;
    }

    ++v21;
    v11 += 15;
    if (v28 == v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  if (v25 >= *(v24 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = v108;
  LODWORD(v26) = *&v108[v109];
  v4 = v92;
  v101(v92, 3, 3, v107);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v93;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_33;
  }

LABEL_40:
  v24 = sub_10013987C(v24);
LABEL_33:
  if (v25 >= *(v24 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1000511B8(v4, &v14[v24 + v85 + *(v21 + 20)]);
    *(v88 + v87) = v24;
    v60 = v89;
    v61 = v90;
    sub_100050EB8(v89, v90, type metadata accessor for MailboxTaskLogger);
    sub_100050EB8(v60, v11, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v62 = sub_1004A4A54();
    v63 = sub_1004A6004();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v64 = 68159491;
      LODWORD(v114) = v26;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v65 = v86;
      v66 = v11;
      v67 = v11 + *(v86 + 20);
      *(v64 + 10) = *v67;
      *(v64 + 11) = 2082;
      v68 = v61 + *(v65 + 20);
      *(v64 + 13) = sub_10015BA6C(*(v68 + 8), *(v68 + 16), v115);
      *(v64 + 21) = 1040;
      *(v64 + 23) = 2;
      *(v64 + 27) = 512;
      LOWORD(v67) = *(v67 + 12);
      sub_100050F20(v66, type metadata accessor for MailboxTaskLogger);
      *(v64 + 29) = v67;
      *(v64 + 31) = 2160;
      *(v64 + 33) = 0x786F626C69616DLL;
      *(v64 + 41) = 2085;
      v69 = *(v68 + 32);
      LODWORD(v68) = *(v68 + 40);

      sub_100050F20(v61, type metadata accessor for MailboxTaskLogger);
      *&v116 = v69;
      DWORD2(v116) = v68;
      v70 = sub_1004A5824();
      v72 = sub_10015BA6C(v70, v71, v115);
      LODWORD(v26) = v114;

      *(v64 + 43) = v72;
      *(v64 + 51) = 1024;
      *(v64 + 53) = v26;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Fetching headers for message %u", v64, 0x39u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v11, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v61, type metadata accessor for MailboxTaskLogger);
    }

    v73 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v74 = v95;
    v75 = v95 + *(v73 + 48);
    *v95 = v26;
    swift_storeEnumTagMultiPayload();
    LODWORD(v116) = v26;
    v76 = sub_100016948();
    v77 = v91;
    MessageIdentifierSet.init(_:)(&v116, &type metadata for UID, v76);
    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1004D01D0;
    *(v78 + 32) = 7;
    *(v78 + 40) = 0;
    *(v78 + 48) = 0;
    *(v78 + 56) = 0;
    *(v78 + 68) = -64;
    *(v78 + 64) = 0;
    v79 = SectionSpecifier.header.unsafeMutableAddressor();
    v81 = *v79;
    v80 = v79[1];
    v82 = *(v79 + 16);
    *(v78 + 72) = 1;
    *(v78 + 80) = v81;
    *(v78 + 88) = v80;
    *(v78 + 96) = v82;
    *(v78 + 108) = 33;
    *(v78 + 104) = 0;
    v83 = v75 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
    sub_100025FDC(v77, v75, &unk_1005D91B0, &unk_1004CF400);
    *v83 = v78;
    *(v83 + 8) = 0;
    *(v83 + 16) = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v74, 0, 1, v73);

    sub_100051190(v80, v82);
  }
}

uint64_t sub_100040B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v199 = a5;
  v223 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v226 = *(v223 - 8);
  __chkstk_darwin(v223);
  v196 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v198 = &v188 - v12;
  __chkstk_darwin(v13);
  v217 = &v188 - v14;
  v222 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v222);
  v200 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v219 = &v188 - v17;
  v18 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v18 - 8);
  v201 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v218 = &v188 - v21;
  v210 = _s25MessageSectionsToDownloadVMa(0);
  v197 = *(v210 - 8);
  __chkstk_darwin(v210);
  v204 = (&v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v195 = (&v188 - v24);
  __chkstk_darwin(v25);
  v227 = (&v188 - v26);
  __chkstk_darwin(v27);
  v215 = (&v188 - v28);
  v29 = sub_10000C9C0(&qword_1005CE238, &unk_1004D0960);
  __chkstk_darwin(v29 - 8);
  v193 = &v188 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v190 = &v188 - v32;
  __chkstk_darwin(v33);
  v191 = &v188 - v34;
  __chkstk_darwin(v35);
  v203 = &v188 - v36;
  __chkstk_darwin(v37);
  v192 = &v188 - v38;
  __chkstk_darwin(v39);
  v202 = &v188 - v40;
  __chkstk_darwin(v41);
  v208 = &v188 - v42;
  __chkstk_darwin(v43);
  v45 = &v188 - v44;
  __chkstk_darwin(v46);
  v207 = &v188 - v47;
  __chkstk_darwin(v48);
  v50 = &v188 - v49;
  __chkstk_darwin(v51);
  v53 = &v188 - v52;
  v54 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));
  v216 = a1;
  v230 = a3;
  sub_100051E04(a3, v54, v50);
  v55 = _s18SectionDataRequestVMa(0);
  v56 = *(v55 - 8);
  v228 = *(v56 + 48);
  v229 = v56 + 48;
  if (v228(v50, 1, v55) != 1)
  {
    sub_100050F80(v50, v53, _s18SectionDataRequestVMa);
    (*(v56 + 56))(v53, 0, 1, v55);
LABEL_54:
    if (v228(v53, 1, v55) == 1)
    {
      sub_100025F40(v53, &qword_1005CE238, &unk_1004D0960);
      v178 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
      return (*(*(v178 - 8) + 56))(v199, 1, 1, v178);
    }

    else
    {
      v180 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
      v181 = v199;
      v182 = v199 + *(v180 + 48);
      *&v259 = &off_100598D28;
      __chkstk_darwin(v180);
      *(&v188 - 2) = v53;
      v184 = sub_10003FCC8(sub_100051794, (&v188 - 4), v183);
      sub_1000818E8(v184);
      sub_100050EB8(v53, v181, _s18SectionDataRequestVMa);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v185 = v196;
      sub_10000E268(v53, v196, &qword_1005CD1D0, &unk_1004CF2C0);
      v186 = v259;
      v187 = v182 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_10000E268(v185, v182, &unk_1005D91B0, &unk_1004CF400);
      *v187 = v186;
      *(v187 + 8) = 0;
      *(v187 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      sub_100025F40(v185, &unk_1005D91B0, &unk_1004CF400);
      sub_100050F20(v53, _s18SectionDataRequestVMa);
      return (*(*(v180 - 8) + 56))(v181, 0, 1, v180);
    }
  }

  v188 = v50;
  v194 = v53;
  v57 = *(v54 + 16);
  v220 = (v226 + 6);
  v221 = v226 + 7;
  v226 = (v56 + 56);
  swift_bridgeObjectRetain_n();
  v211 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v224 = v55;
  v209 = v57;
  v212 = a4;
  v189 = v54;
  if (!v57)
  {
LABEL_28:
    v116 = *(v54 + 16);
    if (v209 == v116)
    {

      (*v226)(v194, 1, 1, v55);
    }

    else
    {
      if (v209 >= v116)
      {
        goto LABEL_59;
      }

      v117 = v54 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v209;
      v118 = *(v117 + *(v210 + 24));
      sub_100050EB8(v117, v195, _s25MessageSectionsToDownloadVMa);
      sub_100050EB8(v117, v204, _s25MessageSectionsToDownloadVMa);
      v119 = *(v118 + 2);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v227 = v118;
      v120 = 0;
      if (v119)
      {
        v121 = v118 + 10;
        while (1)
        {
          v122 = *(v121 - 8);
          v123 = *(v121 + 24);
          v260 = *(v121 + 8);
          v261 = v123;
          v259 = v122;
          v124 = *(v121 + 40);
          v125 = *(v121 + 56);
          v126 = *(v121 + 88);
          v264 = *(v121 + 72);
          v265 = v126;
          v262 = v124;
          v263 = v125;
          v127 = *(v121 + 104);
          v128 = *(v121 + 120);
          v129 = *(v121 + 152);
          v268 = *(v121 + 136);
          v269 = v129;
          v266 = v127;
          v267 = v128;
          v130 = *(v121 + 168);
          v131 = *(v121 + 184);
          v132 = *(v121 + 200);
          *(v272 + 9) = *(v121 + 209);
          v271 = v131;
          v272[0] = v132;
          v270 = v130;
          v133 = *v204;
          v134 = v121[1];
          v272[2] = *v121;
          v273[0] = v134;
          *(v273 + 15) = *(v121 + 31);
          v135 = *(&v260 + 1);
          sub_100050408(&v259, &v245);

          v136 = sub_100053688(v133, v135, v230);

          v137 = sub_100052E1C(1, v136);

          if (*(v137 + 16))
          {
            LODWORD(v245) = v133;
            v138 = sub_100016948();

            v139 = v200;
            MessageIdentifierSet.init(_:)(&v245, &type metadata for UID, v138);
            if (MessageIdentifierSet.count.getter() <= 0)
            {
              sub_100025F40(v139, &unk_1005D91B0, &unk_1004CF400);
              v142 = 1;
              v141 = v201;
            }

            else
            {
              v140 = v198;
              sub_100025FDC(v139, v198, &unk_1005D91B0, &unk_1004CF400);
              v141 = v201;
              sub_100025FDC(v140, v201, &qword_1005CD1D0, &unk_1004CF2C0);
              v142 = 0;
            }

            v145 = v223;
            (*v221)(v141, v142, 1, v223);
            if ((*v220)(v141, 1, v145) == 1)
            {
              goto LABEL_63;
            }

            v146 = v141;
            v143 = v203;
            sub_100025FDC(v146, v203, &qword_1005CD1D0, &unk_1004CF2C0);
            v144 = v224;
            *(v143 + *(v224 + 20)) = v135;
            *(v143 + *(v144 + 24)) = v137;
            (*v226)(v143, 0, 1, v144);
          }

          else
          {
            v143 = v203;
            v144 = v224;
            (*v226)(v203, 1, 1, v224);
          }

          sub_100050440(&v259);
          v147 = v228(v143, 1, v144);
          sub_100025F40(v143, &qword_1005CE238, &unk_1004D0960);
          if (v147 != 1)
          {
            break;
          }

          ++v120;
          v121 += 15;
          if (v119 == v120)
          {
            v120 = v119;
            break;
          }
        }

        v55 = v224;
        v118 = v227;
      }

      else
      {
        v55 = v224;
      }

      v148 = *(v118 + 2);
      if (v120 == v148)
      {

        sub_100050F20(v195, _s25MessageSectionsToDownloadVMa);
        v149 = *v226;
        v150 = v192;
        (*v226)(v192, 1, 1, v55);

        v151 = v193;
      }

      else
      {
        if (v120 >= v148)
        {
          goto LABEL_60;
        }

        v152 = &v118[60 * v120];
        v153 = *(v152 + 2);
        v154 = *(v152 + 4);
        v246 = *(v152 + 3);
        v247 = v154;
        v245 = v153;
        v155 = *(v152 + 5);
        v156 = *(v152 + 6);
        v157 = *(v152 + 8);
        v250 = *(v152 + 7);
        v251 = v157;
        v248 = v155;
        v249 = v156;
        v158 = *(v152 + 9);
        v159 = *(v152 + 10);
        v160 = *(v152 + 12);
        v254 = *(v152 + 11);
        v255 = v160;
        v252 = v158;
        v253 = v159;
        v161 = *(v152 + 13);
        v162 = *(v152 + 14);
        v163 = *(v152 + 15);
        *(v258 + 9) = *(v152 + 249);
        v257 = v162;
        v258[0] = v163;
        v256 = v161;
        v164 = *(v152 + 15);
        v243 = *(v152 + 14);
        v244[0] = v164;
        *(v244 + 9) = *(v152 + 249);
        v165 = *(v152 + 11);
        v239 = *(v152 + 10);
        v240 = v165;
        v166 = *(v152 + 13);
        v241 = *(v152 + 12);
        v242 = v166;
        v167 = *(v152 + 7);
        v235 = *(v152 + 6);
        v236 = v167;
        v168 = *(v152 + 9);
        v237 = *(v152 + 8);
        v238 = v168;
        v169 = *(v152 + 3);
        v231 = *(v152 + 2);
        v232 = v169;
        v170 = *(v152 + 5);
        v233 = *(v152 + 4);
        v234 = v170;
        sub_100050408(&v245, &v259);
        v171 = v191;
        v172 = v195;
        sub_100052950(&v231, v230, v195, v191);

        sub_100050F20(v172, _s25MessageSectionsToDownloadVMa);
        v271 = v243;
        v272[0] = v244[0];
        *(v272 + 9) = *(v244 + 9);
        v267 = v239;
        v268 = v240;
        v269 = v241;
        v270 = v242;
        v263 = v235;
        v264 = v236;
        v265 = v237;
        v266 = v238;
        v259 = v231;
        v260 = v232;
        v261 = v233;
        v262 = v234;
        sub_100050440(&v259);
        v173 = v190;
        sub_10000E268(v171, v190, &qword_1005CE238, &unk_1004D0960);
        if (v228(v173, 1, v55) == 1)
        {
          goto LABEL_65;
        }

        v150 = v192;
        sub_100050F80(v173, v192, _s18SectionDataRequestVMa);
        sub_100025F40(v171, &qword_1005CE238, &unk_1004D0960);
        v149 = *v226;
        (*v226)(v150, 0, 1, v55);

        v151 = v193;
      }

      sub_100050F20(v204, _s25MessageSectionsToDownloadVMa);

      sub_10000E268(v150, v151, &qword_1005CE238, &unk_1004D0960);
      if (v228(v151, 1, v55) == 1)
      {
        goto LABEL_64;
      }

      v174 = v151;
      v175 = v194;
      sub_100050F80(v174, v194, _s18SectionDataRequestVMa);
      sub_100025F40(v150, &qword_1005CE238, &unk_1004D0960);
      v149(v175, 0, 1, v55);
    }

    v176 = v188;
    v177 = v228(v188, 1, v55);
    v53 = v194;
    if (v177 != 1)
    {
      sub_100025F40(v176, &qword_1005CE238, &unk_1004D0960);
    }

    goto LABEL_54;
  }

  v58 = 0;
  v206 = v54 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
  v205 = *(v197 + 72);
  while (1)
  {
    v213 = v58;
    v59 = v206 + v205 * v58;
    v60 = *(v59 + *(v210 + 24));
    sub_100050EB8(v59, v215, _s25MessageSectionsToDownloadVMa);
    sub_100050EB8(v59, v227, _s25MessageSectionsToDownloadVMa);
    v61 = *(v60 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v225 = v61;
    v214 = v60;
    v62 = 0;
    if (v61)
    {
      v63 = (v60 + 40);
      while (1)
      {
        v64 = *(v63 - 8);
        v65 = *(v63 + 24);
        v260 = *(v63 + 8);
        v261 = v65;
        v259 = v64;
        v66 = *(v63 + 40);
        v67 = *(v63 + 56);
        v68 = *(v63 + 88);
        v264 = *(v63 + 72);
        v265 = v68;
        v262 = v66;
        v263 = v67;
        v69 = *(v63 + 104);
        v70 = *(v63 + 120);
        v71 = *(v63 + 152);
        v268 = *(v63 + 136);
        v269 = v71;
        v266 = v69;
        v267 = v70;
        v72 = *(v63 + 168);
        v73 = *(v63 + 184);
        v74 = *(v63 + 200);
        *(v272 + 9) = *(v63 + 209);
        v271 = v73;
        v272[0] = v74;
        v270 = v72;
        v75 = *v227;
        v76 = v63[1];
        v273[2] = *v63;
        v274[0] = v76;
        *(v274 + 15) = *(v63 + 31);
        v77 = *(&v260 + 1);
        sub_100050408(&v259, &v245);

        v78 = sub_100053688(v75, v77, v230);

        v79 = sub_100052E1C(1, v78);

        if (*(v79 + 16))
        {
          LODWORD(v245) = v75;
          v80 = sub_100016948();

          v81 = v219;
          MessageIdentifierSet.init(_:)(&v245, &type metadata for UID, v80);
          if (MessageIdentifierSet.count.getter() <= 0)
          {
            sub_100025F40(v81, &unk_1005D91B0, &unk_1004CF400);
            v84 = 1;
            v83 = v218;
          }

          else
          {
            v82 = v217;
            sub_100025FDC(v81, v217, &unk_1005D91B0, &unk_1004CF400);
            v83 = v218;
            sub_100025FDC(v82, v218, &qword_1005CD1D0, &unk_1004CF2C0);
            v84 = 0;
          }

          v85 = v223;
          (*v221)(v83, v84, 1, v223);
          v86 = (*v220)(v83, 1, v85) == 1;
          v87 = v83;
          v55 = v224;
          if (v86)
          {
            goto LABEL_61;
          }

          sub_100025FDC(v87, v45, &qword_1005CD1D0, &unk_1004CF2C0);
          *&v45[*(v55 + 20)] = v77;
          *&v45[*(v55 + 24)] = v79;
          (*v226)(v45, 0, 1, v55);
        }

        else
        {
          v55 = v224;
          (*v226)(v45, 1, 1, v224);
        }

        sub_100050440(&v259);
        v88 = v228(v45, 1, v55);
        sub_100025F40(v45, &qword_1005CE238, &unk_1004D0960);
        if (v88 != 1)
        {
          break;
        }

        ++v62;
        v63 += 15;
        if (v225 == v62)
        {
          v62 = v225;
          break;
        }
      }

      v60 = v214;
    }

    v89 = *(v60 + 16);
    if (v62 == v89)
    {

      sub_100050F20(v215, _s25MessageSectionsToDownloadVMa);
      v90 = v207;
      (*v226)(v207, 1, 1, v55);

      goto LABEL_22;
    }

    v91 = v208;
    if (v62 >= v89)
    {
      break;
    }

    v92 = (v60 + 240 * v62);
    v93 = v92[2];
    v94 = v92[4];
    v246 = v92[3];
    v247 = v94;
    v245 = v93;
    v95 = v92[5];
    v96 = v92[6];
    v97 = v92[8];
    v250 = v92[7];
    v251 = v97;
    v248 = v95;
    v249 = v96;
    v98 = v92[9];
    v99 = v92[10];
    v100 = v92[12];
    v254 = v92[11];
    v255 = v100;
    v252 = v98;
    v253 = v99;
    v101 = v92[13];
    v102 = v92[14];
    v103 = v92[15];
    *(v258 + 9) = *(v92 + 249);
    v257 = v102;
    v258[0] = v103;
    v256 = v101;
    v104 = v92[15];
    v243 = v92[14];
    v244[0] = v104;
    *(v244 + 9) = *(v92 + 249);
    v105 = v92[11];
    v239 = v92[10];
    v240 = v105;
    v106 = v92[13];
    v241 = v92[12];
    v242 = v106;
    v107 = v92[7];
    v235 = v92[6];
    v236 = v107;
    v108 = v92[9];
    v237 = v92[8];
    v238 = v108;
    v109 = v92[3];
    v231 = v92[2];
    v232 = v109;
    v110 = v92[5];
    v233 = v92[4];
    v234 = v110;
    sub_100050408(&v245, &v259);
    v111 = v91;
    v112 = v215;
    sub_100052950(&v231, v230, v215, v111);
    v113 = v208;

    sub_100050F20(v112, _s25MessageSectionsToDownloadVMa);
    v271 = v243;
    v272[0] = v244[0];
    *(v272 + 9) = *(v244 + 9);
    v267 = v239;
    v268 = v240;
    v269 = v241;
    v270 = v242;
    v263 = v235;
    v264 = v236;
    v265 = v237;
    v266 = v238;
    v259 = v231;
    v260 = v232;
    v261 = v233;
    v262 = v234;
    sub_100050440(&v259);
    v114 = v202;
    sub_10000E268(v113, v202, &qword_1005CE238, &unk_1004D0960);
    if (v228(v114, 1, v55) == 1)
    {
      goto LABEL_62;
    }

    v90 = v207;
    sub_100050F80(v114, v207, _s18SectionDataRequestVMa);
    sub_100025F40(v113, &qword_1005CE238, &unk_1004D0960);
    (*v226)(v90, 0, 1, v55);

LABEL_22:

    sub_100050F20(v227, _s25MessageSectionsToDownloadVMa);
    v115 = v228(v90, 1, v55);
    sub_100025F40(v90, &qword_1005CE238, &unk_1004D0960);
    if (v115 != 1)
    {
      v209 = v213;
LABEL_27:
      v54 = v189;
      goto LABEL_28;
    }

    v58 = v213 + 1;
    if (v213 + 1 == v209)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  sub_100050F20(v227, _s25MessageSectionsToDownloadVMa);
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:

  __break(1u);
LABEL_65:

  result = sub_100050F20(v204, _s25MessageSectionsToDownloadVMa);
  __break(1u);
  return result;
}

void sub_100042334(char *a1, uint64_t a2)
{
  v194 = a2;
  v203 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v2 - 8);
  v195 = &v177 - v3;
  v202 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v202);
  v201 = &v177 - v4;
  v186 = _s18SectionDataRequestVMa(0);
  __chkstk_darwin(v186);
  v183 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v185 = &v177 - v7;
  __chkstk_darwin(v8);
  v198 = &v177 - v9;
  v10 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v10 - 8);
  v191 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v190 = &v177 - v13;
  v196 = _s25MessageSectionsToDownloadVMa(0);
  v14 = *(v196 - 8);
  __chkstk_darwin(v196);
  v16 = (&v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v192);
  v184 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v187 = &v177 - v19;
  __chkstk_darwin(v20);
  v188 = &v177 - v21;
  __chkstk_darwin(v22);
  *&v189 = &v177 - v23;
  __chkstk_darwin(v24);
  v26 = &v177 - v25;
  __chkstk_darwin(v27);
  v200 = (&v177 - v28);
  __chkstk_darwin(v29);
  v31 = &v177 - v30;
  __chkstk_darwin(v32);
  v34 = &v177 - v33;
  v199 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v199);
  v197 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v177 - v37;
  __chkstk_darwin(v39);
  v41 = &v177 - v40;
  __chkstk_darwin(v42);
  v44 = &v177 - v43;
  v45 = type metadata accessor for DownloadTask.CommandID(0);
  __chkstk_darwin(v45);
  v47 = &v177 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050EB8(v203, v47, type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v70 = v38;
      sub_100025FDC(v47, v38, &unk_1005D91B0, &unk_1004CF400);
      v71 = v194;
      v72 = v200;
      sub_100050EB8(v194, v200, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(v71, v26, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v73 = v197;
      sub_10000E268(v70, v197, &unk_1005D91B0, &unk_1004CF400);
      v74 = sub_1004A4A54();
      v75 = sub_1004A6034();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v206[0] = v203;
        *v76 = 68159491;
        *(v76 + 4) = 2;
        *(v76 + 8) = 256;
        v77 = v192;
        v78 = &v26[*(v192 + 20)];
        *(v76 + 10) = *v78;
        *(v76 + 11) = 2082;
        v79 = v72;
        v80 = &v72[*(v77 + 20)];
        *(v76 + 13) = sub_10015BA6C(*(v80 + 1), *(v80 + 2), v206);
        *(v76 + 21) = 1040;
        *(v76 + 23) = 2;
        *(v76 + 27) = 512;
        LOWORD(v78) = *(v78 + 12);
        sub_100050F20(v26, type metadata accessor for MailboxTaskLogger);
        *(v76 + 29) = v78;
        *(v76 + 31) = 2160;
        *(v76 + 33) = 0x786F626C69616DLL;
        *(v76 + 41) = 2085;
        v81 = *(v80 + 4);
        LODWORD(v78) = *(v80 + 10);

        sub_100050F20(v79, type metadata accessor for MailboxTaskLogger);
        v204 = v81;
        v205 = v78;
        v82 = sub_1004A5824();
        v84 = sub_10015BA6C(v82, v83, v206);

        *(v76 + 43) = v84;
        *(v76 + 51) = 2082;
        v85 = MessageIdentifierSet.debugDescription.getter();
        v87 = v86;
        sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
        v88 = sub_10015BA6C(v85, v87, v206);

        *(v76 + 53) = v88;
        _os_log_impl(&_mh_execute_header, v74, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching message size for messages %{public}s", v76, 0x3Du);
        swift_arrayDestroy();

        sub_100025F40(v70, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      sub_100050F20(v26, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v70, &unk_1005D91B0, &unk_1004CF400);
      v96 = v72;
    }

    else
    {
      sub_100025FDC(v47, v44, &unk_1005D91B0, &unk_1004CF400);
      v49 = v194;
      sub_100050EB8(v194, v34, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(v49, v31, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v44, v41, &unk_1005D91B0, &unk_1004CF400);
      v50 = sub_1004A4A54();
      v51 = sub_1004A6034();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v203 = v44;
        v206[0] = v53;
        *v52 = 68159491;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v54 = v192;
        v55 = &v31[*(v192 + 20)];
        *(v52 + 10) = *v55;
        *(v52 + 11) = 2082;
        v56 = &v34[*(v54 + 20)];
        *(v52 + 13) = sub_10015BA6C(*(v56 + 1), *(v56 + 2), v206);
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;
        LOWORD(v55) = *(v55 + 12);
        sub_100050F20(v31, type metadata accessor for MailboxTaskLogger);
        *(v52 + 29) = v55;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        v57 = *(v56 + 4);
        LODWORD(v56) = *(v56 + 10);

        sub_100050F20(v34, type metadata accessor for MailboxTaskLogger);
        v204 = v57;
        v205 = v56;
        v58 = sub_1004A5824();
        v60 = sub_10015BA6C(v58, v59, v206);

        *(v52 + 43) = v60;
        *(v52 + 51) = 2082;
        v61 = MessageIdentifierSet.debugDescription.getter();
        v63 = v62;
        sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
        v64 = sub_10015BA6C(v61, v63, v206);

        *(v52 + 53) = v64;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching body structure for messages %{public}s", v52, 0x3Du);
        swift_arrayDestroy();

        sub_100025F40(v203, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      sub_100050F20(v31, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
      v96 = v34;
    }

    v95 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v65 = *v47;
    v203 = _s18InProgressMessagesVMa(0);
    v66 = *(v203 + 8);
    v67 = *(v193 + v66);
    v68 = *(v67 + 16);
    if (!v68)
    {
      return;
    }

    v69 = 0;
    while (1)
    {
      if (v69 >= *(v67 + 16))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v26 = (v67 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v69);
      sub_100050EB8(v26, v16, _s25MessageSectionsToDownloadVMa);
      v47 = *v16;
      sub_100050F20(v16, _s25MessageSectionsToDownloadVMa);
      if (v65 == v47)
      {
        break;
      }

      if (v68 == ++v69)
      {
        return;
      }
    }

    v202 = v66;
    if (v69 >= *(v67 + 16))
    {
      __break(1u);
    }

    else
    {
      v201 = *(v196 + 20);
      v154 = v190;
      sub_100050EB8(&v26[v201], v190, _s19MessageHeaderStatusOMa);
      v155 = type metadata accessor for MessageHeader(0);
      v156 = *(v155 - 8);
      v157 = v191;
      v200 = *(v156 + 56);
      v198 = v156 + 56;
      (v200)(v191, 2, 3, v155);
      v158 = sub_10004CF1C(v154, v157);
      sub_100050F20(v157, _s19MessageHeaderStatusOMa);
      sub_100050F20(v154, _s19MessageHeaderStatusOMa);
      if (v158)
      {
LABEL_57:
        v162 = v194;
        v163 = v189;
        sub_100050EB8(v194, v189, type metadata accessor for MailboxTaskLogger);
        v164 = v188;
        sub_100050EB8(v162, v188, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v165 = sub_1004A4A54();
        v166 = sub_1004A6014();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          LODWORD(v200) = v166;
          v168 = v167;
          v201 = swift_slowAlloc();
          v206[0] = v201;
          *v168 = 68159491;
          *(v168 + 4) = 2;
          *(v168 + 8) = 256;
          v169 = v192;
          v170 = v164 + *(v192 + 20);
          *(v168 + 10) = *v170;
          *(v168 + 11) = 2082;
          v171 = v163;
          v172 = v163 + *(v169 + 20);
          *(v168 + 13) = sub_10015BA6C(*(v172 + 8), *(v172 + 16), v206);
          *(v168 + 21) = 1040;
          *(v168 + 23) = 2;
          *(v168 + 27) = 512;
          LOWORD(v170) = *(v170 + 24);
          sub_100050F20(v164, type metadata accessor for MailboxTaskLogger);
          *(v168 + 29) = v170;
          *(v168 + 31) = 2160;
          *(v168 + 33) = 0x786F626C69616DLL;
          *(v168 + 41) = 2085;
          v173 = *(v172 + 32);
          LODWORD(v172) = *(v172 + 40);

          sub_100050F20(v171, type metadata accessor for MailboxTaskLogger);
          v204 = v173;
          v205 = v172;
          v174 = sub_1004A5824();
          v176 = sub_10015BA6C(v174, v175, v206);

          *(v168 + 43) = v176;
          *(v168 + 51) = 1024;
          *(v168 + 53) = v65;
          _os_log_impl(&_mh_execute_header, v165, v200, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return header data for message %u.", v168, 0x39u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100050F20(v164, type metadata accessor for MailboxTaskLogger);

          sub_100050F20(v163, type metadata accessor for MailboxTaskLogger);
        }

        LODWORD(v206[0]) = v65;
        MessageIdentifierSet.insert(_:)(&v204, v206, v199);
        sub_100168F68(v69, v16);
        v95 = _s25MessageSectionsToDownloadVMa;
        v96 = v16;
        goto LABEL_51;
      }

      if (v69 < *(v67 + 16))
      {
        v159 = v190;
        sub_100050EB8(&v26[v201], v190, _s19MessageHeaderStatusOMa);
        v160 = v191;
        (v200)(v191, 3, 3, v155);
        v161 = sub_10004CF1C(v159, v160);
        sub_100050F20(v160, _s19MessageHeaderStatusOMa);
        sub_100050F20(v159, _s19MessageHeaderStatusOMa);
        if ((v161 & 1) == 0)
        {
          return;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v89 = v198;
  sub_100050F80(v47, v198, _s18SectionDataRequestVMa);
  v90 = v195;
  sub_10000E268(v89, v195, &qword_1005CD1D0, &unk_1004CF2C0);
  v65 = v201;
  sub_10000E268(v90, v201, &unk_1005D91B0, &unk_1004CF400);
  v91 = (v65 + *(v202 + 36));
  v69 = MessageIdentifierSet.startIndex.getter(v199);
  v26 = v92;
  sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
  *v91 = v69;
  v91[1] = v26;
  v200 = v91;
  v68 = *(_s18InProgressMessagesVMa(0) + 32);
  v47 = v193;
  v45 = *(v193 + v68);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_64:
    v45 = sub_10013987C(v45);
  }

  v190 = v68;
  *(v47 + v68) = v45;
  v47 = v199;
  if (v69 != MessageIdentifierSet.endIndex.getter(v199) || v26 != v93)
  {
    v197 = 0;
    *&v94 = 68160003;
    v189 = v94;
    while (1)
    {
      v68 = v65;
      MessageIdentifierSet.subscript.getter(v26, v47, &v204);
      v97 = v204;
      MessageIdentifierSet.index(_:offsetBy:)(v69, v26, 1);
      v98 = v200;
      v202 = v100;
      v203 = v99;
      *v200 = v99;
      v98[1] = v100;
      v26 = v45[2];
      if (v26)
      {
        v101 = 0;
        while (1)
        {
          if (v101 >= v45[2])
          {
            __break(1u);
            goto LABEL_62;
          }

          v69 = v45 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v101;
          sub_100050EB8(v69, v16, _s25MessageSectionsToDownloadVMa);
          v68 = *v16;
          v102 = sub_100050F20(v16, _s25MessageSectionsToDownloadVMa);
          if (v97 == v68)
          {
            break;
          }

          if (v26 == ++v101)
          {
            goto LABEL_27;
          }
        }

        if (v101 >= v45[2])
        {
          goto LABEL_63;
        }

        v195 = &v177;
        v191 = *(v196 + 24);
        v103 = *(v69 + v191);
        __chkstk_darwin(v102);
        *(&v177 - 2) = v198;

        v104 = v197;
        v105 = sub_100154AC8(sub_100050FE8, (&v177 - 4), v103);
        v107 = v106;
        v197 = v104;
        v47 = v199;

        if ((v107 & 1) == 0)
        {
          v195 = v105;
          if (v101 >= v45[2])
          {
            goto LABEL_67;
          }

          if ((v195 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v110 = *(v69 + v191);
          if (v195 >= *(v110 + 16))
          {
            goto LABEL_69;
          }

          v191 = 240 * v195;
          v111 = v110 + 240 * v195;
          v112 = *(v111 + 72);
          v113 = *(v198 + *(v186 + 24));
          v114 = v188 & 0xFFFFFF0000000000 | *(v111 + 80) | (*(v111 + 84) << 32);

          v188 = v114;
          LOBYTE(v113) = sub_100127DAC(v113, v112, v114);

          if ((v113 & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_27:
      v65 = v201;
      v108 = MessageIdentifierSet.endIndex.getter(v47);
      v26 = v202;
      v69 = v203;
      if (v203 == v108 && v202 == v109)
      {
        goto LABEL_17;
      }
    }

    v115 = v194;
    sub_100050EB8(v194, v187, type metadata accessor for MailboxTaskLogger);
    sub_100050EB8(v115, v184, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v116 = v198;
    sub_100050EB8(v198, v185, _s18SectionDataRequestVMa);
    v117 = v116;
    v118 = v183;
    sub_100050EB8(v117, v183, _s18SectionDataRequestVMa);
    v119 = sub_1004A4A54();
    v120 = sub_1004A6014();
    if (os_log_type_enabled(v119, v120))
    {
      v180 = v120;
      v182 = v119;
      v121 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v206[0] = v179;
      *v121 = v189;
      *(v121 + 4) = 2;
      *(v121 + 8) = 256;
      v122 = v192;
      v123 = v184;
      v124 = v184 + *(v192 + 20);
      *(v121 + 10) = *v124;
      *(v121 + 11) = 2082;
      v125 = v187 + *(v122 + 20);
      *(v121 + 13) = sub_10015BA6C(*(v125 + 8), *(v125 + 16), v206);
      *(v121 + 21) = 1040;
      *(v121 + 23) = 2;
      *(v121 + 27) = 512;
      LODWORD(v181) = *(v124 + 24);
      sub_100050F20(v123, type metadata accessor for MailboxTaskLogger);
      *(v121 + 29) = v181;
      *(v121 + 31) = 2160;
      *(v121 + 33) = 0x786F626C69616DLL;
      *(v121 + 41) = 2085;
      v126 = *(v125 + 32);
      LODWORD(v125) = *(v125 + 40);

      sub_100050F20(v187, type metadata accessor for MailboxTaskLogger);
      v204 = v126;
      v205 = v125;
      v127 = sub_1004A5824();
      v129 = sub_10015BA6C(v127, v128, v206);

      *(v121 + 43) = v129;
      *(v121 + 51) = 1024;
      *(v121 + 53) = v97;
      *(v121 + 57) = 2082;
      v130 = v186;
      v131 = v185;
      v132 = SectionSpecifier.Part.debugDescription.getter(*(v185 + *(v186 + 20)));
      v134 = v133;
      sub_100050F20(v131, _s18SectionDataRequestVMa);
      v135 = sub_10015BA6C(v132, v134, v206);

      *(v121 + 59) = v135;
      v181 = v121;
      *(v121 + 67) = 2080;
      v136 = v183;
      v137 = *(v183 + *(v130 + 24));
      v138 = *(v137 + 16);
      if (v138)
      {
        v204 = _swiftEmptyArrayStorage;
        sub_100091E28(0, v138, 0);
        v139 = v204;
        v140 = (v137 + 32);
        v141 = v204[2];
        do
        {
          v142 = *v140;
          v204 = v139;
          v143 = v139[3];
          if (v141 >= v143 >> 1)
          {
            v178 = v142;
            sub_100091E28((v143 > 1), v141 + 1, 1);
            v142 = v178;
            v139 = v204;
          }

          v139[2] = v141 + 1;
          v139[v141 + 4] = v142;
          ++v140;
          ++v141;
          --v138;
        }

        while (v138);
        v136 = v183;
      }

      sub_10000C9C0(&qword_1005CE200, &qword_1004D0920);
      v144 = sub_1004A5C24();
      v146 = v145;

      sub_100050F20(v136, _s18SectionDataRequestVMa);
      v147 = sub_10015BA6C(v144, v146, v206);

      v148 = v181;
      *(v181 + 69) = v147;
      v149 = v182;
      _os_log_impl(&_mh_execute_header, v182, v180, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return any data for message %u, part '[%{public}s]', ranges %s", v148, 0x4Du);
      swift_arrayDestroy();

      v47 = v199;
    }

    else
    {
      sub_100050F20(v184, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v118, _s18SectionDataRequestVMa);
      sub_100050F20(v187, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v185, _s18SectionDataRequestVMa);
    }

    if (v101 < v45[2])
    {
      v150 = *(v196 + 24);
      v151 = *(v69 + v150);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v69 + v150) = v151;
      v153 = v193;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v151 = sub_100139890(v151);
        *(v69 + v150) = v151;
      }

      if (v195 < *(v151 + 2))
      {
        v151[v191 + 86] = 1;
        *(v69 + v150) = v151;
        *(v153 + v190) = v45;
        goto LABEL_27;
      }

      goto LABEL_71;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

LABEL_17:
  sub_100025F40(v65, &qword_1005CDA38, &unk_1004D14C0);
  v95 = _s18SectionDataRequestVMa;
  v96 = v198;
LABEL_51:
  sub_100050F20(v96, v95);
}

uint64_t sub_100043BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  sub_10004FE6C();
  v7 = 0;
  v8 = *(_s18InProgressMessagesVMa(0) + 32);
  v9 = *(v3 + v8);
  v10 = v9[2];
  while (1)
  {
    if (v10 == v7)
    {
      return 0xFF00000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10013987C(v9);
      v9 = result;
    }

    if (v7 >= v9[2])
    {
      break;
    }

    _s25MessageSectionsToDownloadVMa(0);
    v12 = sub_10004934C(a1, v5, a3);
    *(v3 + v8) = v9;
    ++v7;
    if ((~v12 & 0xF000000000000007) != 0)
    {
      return 0x300000001;
    }
  }

  __break(1u);
  return result;
}

void sub_100043D14(uint64_t a1, uint64_t a2, int a3, NSObject *isa_low)
{
  v133 = a3;
  v7 = a1;
  v8 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v8 - 8);
  v135 = (v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v136);
  v11 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v120 - v13;
  __chkstk_darwin(v15);
  v125 = v120 - v16;
  __chkstk_darwin(v17);
  v126 = v120 - v18;
  __chkstk_darwin(v19);
  v130 = v120 - v20;
  __chkstk_darwin(v21);
  v131 = v120 - v22;
  __chkstk_darwin(v23);
  v127 = (v120 - v24);
  __chkstk_darwin(v25);
  v128 = v120 - v26;
  v129 = _s25MessageSectionsToDownloadVMa(0);
  v27 = *(v129 - 8);
  __chkstk_darwin(v129);
  v132 = (v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v134 = v120 - v30;
  __chkstk_darwin(v31);
  v33 = (v120 - v32);
  sub_100047730(v7, v140);
  v150 = v140[8];
  v151 = v140[9];
  v152[0] = v141[0];
  *(v152 + 9) = *(v141 + 9);
  v146 = v140[4];
  v147 = v140[5];
  v148 = v140[6];
  v149 = v140[7];
  v142 = v140[0];
  v143 = v140[1];
  v144 = v140[2];
  v145 = v140[3];
  if (sub_100051008(&v142) != 1)
  {
    v124 = isa_low;
    v122 = a2;
    v153[8] = v150;
    v153[9] = v151;
    v154[0] = v152[0];
    *(v154 + 9) = *(v152 + 9);
    v153[4] = v146;
    v153[5] = v147;
    v153[6] = v148;
    v153[7] = v149;
    v153[0] = v142;
    v153[1] = v143;
    v153[2] = v144;
    v153[3] = v145;
    v47 = _s18InProgressMessagesVMa(0);
    v48 = 0;
    v49 = *(v47 + 32);
    v123 = v4;
    v120[1] = v47;
    v121 = v49;
    v50 = *(&v4->isa + v49);
    v51 = *(v50 + 16);
    while (v51 != v48)
    {
      if (v48 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_100050EB8(v50 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v48++, v33, _s25MessageSectionsToDownloadVMa);
      isa_low = LODWORD(v33->isa);
      sub_100050F20(v33, _s25MessageSectionsToDownloadVMa);
      if (isa_low == v7)
      {
        v52 = v124;
        v53 = v126;
        sub_100050EB8(v124, v126, type metadata accessor for MailboxTaskLogger);
        v54 = v125;
        sub_100050EB8(v52, v125, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v55 = v122;
        swift_bridgeObjectRetain_n();
        v56 = sub_1004A4A54();
        v57 = sub_1004A6014();
        v135 = v56;
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v139 = v134;
          *v58 = 68159747;
          *(v58 + 4) = 2;
          *(v58 + 8) = 256;
          v59 = v136;
          v60 = v54;
          v61 = v54 + *(v136 + 20);
          *(v58 + 10) = *v61;
          *(v58 + 11) = 2082;
          v62 = v53 + *(v59 + 20);
          *(v58 + 13) = sub_10015BA6C(*(v62 + 8), *(v62 + 16), &v139);
          *(v58 + 21) = 1040;
          *(v58 + 23) = 2;
          *(v58 + 27) = 512;
          LOWORD(v61) = *(v61 + 24);
          sub_100050F20(v60, type metadata accessor for MailboxTaskLogger);
          *(v58 + 29) = v61;
          *(v58 + 31) = 2160;
          *(v58 + 33) = 0x786F626C69616DLL;
          *(v58 + 41) = 2085;
          v63 = *(v62 + 32);
          LODWORD(v62) = *(v62 + 40);

          sub_100050F20(v53, type metadata accessor for MailboxTaskLogger);
          v137 = v63;
          v138 = v62;
          v64 = sub_1004A5824();
          v66 = sub_10015BA6C(v64, v65, &v139);

          *(v58 + 43) = v66;
          *(v58 + 51) = 2048;
          v67 = *(v55 + 16);

          *(v58 + 53) = v67;

          *(v58 + 61) = 1024;
          *(v58 + 63) = v7;
          v68 = v135;
          _os_log_impl(&_mh_execute_header, v135, v57, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u -- but sections for this message have already been added.", v58, 0x43u);
          swift_arrayDestroy();

          sub_100025F40(v140, &qword_1005CE208, &qword_1004D0928);

          return;
        }

        sub_100050F20(v54, type metadata accessor for MailboxTaskLogger);
        sub_100025F40(v140, &qword_1005CE208, &qword_1004D0928);

        v91 = v53;
LABEL_27:
        sub_100050F20(v91, type metadata accessor for MailboxTaskLogger);
        return;
      }
    }

    v69 = v124;
    v70 = v128;
    sub_100050EB8(v124, v128, type metadata accessor for MailboxTaskLogger);
    v71 = v127;
    sub_100050EB8(v69, v127, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v72 = v122;
    swift_bridgeObjectRetain_n();
    v73 = sub_1004A4A54();
    v74 = sub_1004A6034();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      LODWORD(v125) = v74;
      v76 = v75;
      v126 = swift_slowAlloc();
      v139 = v126;
      *v76 = 68159747;
      *(v76 + 4) = 2;
      *(v76 + 8) = 256;
      v77 = v136;
      v78 = v71 + *(v136 + 20);
      *(v76 + 10) = *v78;
      *(v76 + 11) = 2082;
      v79 = *(v77 + 20);
      v120[0] = v73;
      v80 = v70;
      v81 = v70 + v79;
      *(v76 + 13) = sub_10015BA6C(*(v81 + 8), *(v81 + 16), &v139);
      *(v76 + 21) = 1040;
      *(v76 + 23) = 2;
      *(v76 + 27) = 512;
      v82 = *(v78 + 12);
      sub_100050F20(v71, type metadata accessor for MailboxTaskLogger);
      *(v76 + 29) = v82;
      *(v76 + 31) = 2160;
      *(v76 + 33) = 0x786F626C69616DLL;
      *(v76 + 41) = 2085;
      v83 = *(v81 + 32);
      v84 = *(v81 + 40);

      sub_100050F20(v80, type metadata accessor for MailboxTaskLogger);
      v137 = v83;
      v138 = v84;
      v69 = v124;
      v85 = sub_1004A5824();
      v87 = sub_10015BA6C(v85, v86, &v139);

      *(v76 + 43) = v87;
      *(v76 + 51) = 2048;
      v88 = *(v72 + 16);

      *(v76 + 53) = v88;

      *(v76 + 61) = 1024;
      *(v76 + 63) = v7;
      v89 = v120[0];
      _os_log_impl(&_mh_execute_header, v120[0], v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u.", v76, 0x43u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100050F20(v71, type metadata accessor for MailboxTaskLogger);

      v90 = sub_100050F20(v70, type metadata accessor for MailboxTaskLogger);
    }

    v92 = v123;
    v93 = v135;
    v94 = v133;
    if (!*(v72 + 16))
    {
      LODWORD(v139) = v7;
      v95 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v90 = MessageIdentifierSet.insert(_:)(&v137, &v139, v95);
    }

    __chkstk_darwin(v90);
    v120[-4] = v153;
    v120[-3] = v92;
    v120[-2] = v69;
    v96 = sub_1000D7348(sub_10005102C, &v120[-6], v72);
    v97 = type metadata accessor for MessageHeader(0);
    if (v94)
    {
      v98 = 2;
    }

    else
    {
      v98 = 1;
    }

    (*(*(v97 - 8) + 56))(v93, v98, 3, v97);
    v99 = v129;
    v48 = v134;
    sub_100050EB8(v93, &v134[*(v129 + 20)], _s19MessageHeaderStatusOMa);
    *v48 = v7;
    *(v48 + *(v99 + 24)) = v96;
    *(v48 + *(v99 + 28)) = _swiftEmptyArrayStorage;
    v100 = v131;
    sub_100050EB8(v69, v131, type metadata accessor for MailboxTaskLogger);
    v101 = v130;
    sub_100050EB8(v69, v130, type metadata accessor for MailboxTaskLogger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v102 = sub_1004A4A54();
    v103 = sub_1004A6034();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      LODWORD(v128) = v103;
      v105 = v104;
      v129 = swift_slowAlloc();
      v139 = v129;
      *v105 = 68160003;
      *(v105 + 4) = 2;
      *(v105 + 8) = 256;
      v106 = v136;
      v107 = *(v136 + 20);
      v127 = v102;
      v108 = v101 + v107;
      *(v105 + 10) = *(v101 + v107);
      *(v105 + 11) = 2082;
      v109 = v100;
      v110 = v100 + *(v106 + 20);
      *(v105 + 13) = sub_10015BA6C(*(v110 + 8), *(v110 + 16), &v139);
      *(v105 + 21) = 1040;
      *(v105 + 23) = 2;
      *(v105 + 27) = 512;
      LOWORD(v108) = *(v108 + 24);
      sub_100050F20(v101, type metadata accessor for MailboxTaskLogger);
      *(v105 + 29) = v108;
      *(v105 + 31) = 2160;
      *(v105 + 33) = 0x786F626C69616DLL;
      *(v105 + 41) = 2085;
      v111 = *(v110 + 32);
      LODWORD(v110) = *(v110 + 40);

      sub_100050F20(v109, type metadata accessor for MailboxTaskLogger);
      v137 = v111;
      v138 = v110;
      v112 = sub_1004A5824();
      v114 = sub_10015BA6C(v112, v113, &v139);

      *(v105 + 43) = v114;
      v48 = v134;
      *(v105 + 51) = 2048;
      v115 = *(v96 + 2);

      *(v105 + 53) = v115;
      v33 = v123;

      *(v105 + 61) = 1024;
      *(v105 + 63) = v7;
      *(v105 + 67) = 1024;
      *(v105 + 69) = v133 & 1;
      v116 = v127;
      _os_log_impl(&_mh_execute_header, v127, v128, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld sections for message %u. Downloading message headers: %{BOOL}d", v105, 0x49u);
      swift_arrayDestroy();

      isa_low = v132;
    }

    else
    {

      sub_100050F20(v101, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v100, type metadata accessor for MailboxTaskLogger);
      isa_low = v132;
      v33 = v123;
    }

    sub_100050EB8(v48, isa_low, _s25MessageSectionsToDownloadVMa);
    v50 = v121;
    v4 = *(&v33->isa + v121);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_29:
      v4 = sub_100085E0C(0, v4[2].isa + 1, 1, v4);
    }

    v117 = v135;
    isa = v4[2].isa;
    v118 = v4[3].isa;
    if (isa >= v118 >> 1)
    {
      v4 = sub_100085E0C((v118 > 1), isa + 1, 1, v4);
    }

    sub_100025F40(v140, &qword_1005CE208, &qword_1004D0928);
    sub_100050F20(v48, _s25MessageSectionsToDownloadVMa);
    sub_100050F20(v117, _s19MessageHeaderStatusOMa);
    v4[2].isa = (isa + 1);
    sub_100050F80(isa_low, v4 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * isa, _s25MessageSectionsToDownloadVMa);
    *(&v33->isa + v50) = v4;
    return;
  }

  sub_100050EB8(isa_low, v14, type metadata accessor for MailboxTaskLogger);
  sub_100050EB8(isa_low, v11, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  v34 = sub_1004A4A54();
  v35 = sub_1004A6014();
  if (!os_log_type_enabled(v34, v35))
  {

    sub_100050F20(v11, type metadata accessor for MailboxTaskLogger);

    v91 = v14;
    goto LABEL_27;
  }

  v36 = swift_slowAlloc();
  LODWORD(v134) = v35;
  v37 = v36;
  v135 = swift_slowAlloc();
  v137 = v135;
  *v37 = 68159747;
  *(v37 + 4) = 2;
  *(v37 + 8) = 256;
  v38 = v136;
  v39 = a2;
  v40 = &v11[*(v136 + 20)];
  *(v37 + 10) = *v40;
  *(v37 + 11) = 2082;
  v41 = &v14[*(v38 + 20)];
  *(v37 + 13) = sub_10015BA6C(*(v41 + 1), *(v41 + 2), &v137);
  *(v37 + 21) = 1040;
  *(v37 + 23) = 2;
  *(v37 + 27) = 512;
  LOWORD(v40) = *(v40 + 12);
  sub_100050F20(v11, type metadata accessor for MailboxTaskLogger);
  *(v37 + 29) = v40;
  *(v37 + 31) = 2160;
  *(v37 + 33) = 0x786F626C69616DLL;
  *(v37 + 41) = 2085;
  v42 = *(v41 + 4);
  LODWORD(v41) = *(v41 + 10);

  sub_100050F20(v14, type metadata accessor for MailboxTaskLogger);
  *&v153[0] = v42;
  DWORD2(v153[0]) = v41;
  v43 = sub_1004A5824();
  v45 = sub_10015BA6C(v43, v44, &v137);

  *(v37 + 43) = v45;
  *(v37 + 51) = 2048;
  v46 = *(v39 + 16);

  *(v37 + 53) = v46;

  *(v37 + 61) = 1024;
  *(v37 + 63) = v7;
  _os_log_impl(&_mh_execute_header, v34, v134, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u, but we don’t have a body structure for this message.", v37, 0x43u);
  swift_arrayDestroy();
}

BOOL sub_100044DE0(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v119 = a1[8];
  v120 = v3;
  v121 = a1[10];
  v122 = *(a1 + 176);
  v4 = a1[5];
  v115 = a1[4];
  v116 = v4;
  v5 = a1[7];
  v117 = a1[6];
  v118 = v5;
  v6 = a1[1];
  v111 = *a1;
  v112 = v6;
  v7 = a1[3];
  v113 = a1[2];
  v114 = v7;
  if (sub_10003EC1C(&v111) == 1)
  {
    v8 = a2[9];
    v85 = a2[8];
    v86 = v8;
    v87 = a2[10];
    v88 = *(a2 + 176);
    v9 = a2[5];
    v81 = a2[4];
    v82 = v9;
    v10 = a2[7];
    v83 = a2[6];
    v84 = v10;
    v11 = a2[1];
    v77 = *a2;
    v78 = v11;
    v12 = a2[3];
    v79 = a2[2];
    v80 = v12;
    return sub_10003EC1C(&v77) == 1;
  }

  v14 = a2[9];
  v85 = a2[8];
  v86 = v14;
  v87 = a2[10];
  v88 = *(a2 + 176);
  v15 = a2[5];
  v81 = a2[4];
  v82 = v15;
  v16 = a2[7];
  v83 = a2[6];
  v84 = v16;
  v17 = a2[1];
  v77 = *a2;
  v78 = v17;
  v18 = a2[3];
  v79 = a2[2];
  v80 = v18;
  if (sub_10003EC1C(&v77) == 1)
  {
    return 0;
  }

  v73 = v119;
  v74 = v120;
  v75 = v121;
  v76 = v122;
  v69 = v115;
  v70 = v116;
  v71 = v117;
  v72 = v118;
  v65 = v111;
  v66 = v112;
  v67 = v113;
  v68 = v114;
  if (sub_10000FE74(&v65) != 1)
  {
    v61 = v85;
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    v60 = v84;
    v53 = v77;
    v54 = v78;
    v55 = v79;
    v56 = v80;
    if (sub_10000FE74(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_10000FE88(v51) == 1)
    {
      v19 = UInt32.init(_:)(v51);
      v20 = *(v19 + 64);
      v94 = *(v19 + 80);
      v95 = *(v19 + 96);
      *&v96 = *(v19 + 112);
      v21 = *(v19 + 16);
      v89 = *v19;
      v90 = v21;
      v22 = *(v19 + 48);
      v91 = *(v19 + 32);
      v92 = v22;
      v93 = v20;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_10000FE88(&v39) == 1)
      {
        v23 = UInt32.init(_:)(&v39);
        v24 = *(v23 + 80);
        v104 = *(v23 + 64);
        v105 = v24;
        v106 = *(v23 + 96);
        *&v107 = *(v23 + 112);
        v25 = *(v23 + 16);
        v100 = *v23;
        v101 = v25;
        v26 = *(v23 + 48);
        v102 = *(v23 + 32);
        v103 = v26;
        return (static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v89, &v100) & 1) != 0;
      }
    }

    else
    {
      v27 = UInt32.init(_:)(v51);
      v28 = v27[9];
      v97 = v27[8];
      v98 = v28;
      v99 = v27[10];
      v29 = v27[4];
      v94 = v27[5];
      v30 = v27[6];
      v96 = v27[7];
      v95 = v30;
      v31 = v27[1];
      v89 = *v27;
      v90 = v31;
      v32 = v27[2];
      v92 = v27[3];
      v93 = v29;
      v91 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_10000FE88(&v39) != 1)
      {
        v33 = UInt32.init(_:)(&v39);
        v34 = v33[9];
        v108 = v33[8];
        v109 = v34;
        v110 = v33[10];
        v35 = v33[5];
        v104 = v33[4];
        v105 = v35;
        v36 = v33[6];
        v107 = v33[7];
        v106 = v36;
        v37 = v33[1];
        v100 = *v33;
        v101 = v37;
        v38 = v33[2];
        v103 = v33[3];
        v102 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v89, &v100);
      }
    }

    UInt32.init(_:)(&v39);
    return 0;
  }

  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  return sub_10000FE74(&v53) == 1;
}

uint64_t sub_1000451E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v14[0] = a1[10];
  *(v14 + 9) = *(a1 + 169);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v16[0] = a2[10];
  *(v16 + 9) = *(a2 + 169);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_10004D254(v13, v15) & 1;
}

uint64_t sub_100045288@<X0>(uint64_t a2@<X8>)
{
  v3 = _s25MessageSectionsToDownloadVMa(0);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v53 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v44 - v6;
  __chkstk_darwin(v7);
  v52 = v44 - v8;

  sub_10004C3D0(v9);
  v75[0] = sub_100066AB4(v10, v11);
  sub_10004C218(v75);

  v12 = v75[0];
  sub_100016D2C();
  sub_1004A7114();
  v13 = *(v12 + 2);
  if (!v13)
  {
  }

  v47 = *v54;
  v46 = *(v54 + 8);
  v44[1] = v12;
  v14 = v12 + 48;
  v45 = xmmword_1004CEAA0;
  v48 = a2;
  while (1)
  {
    if (*v14)
    {
      goto LABEL_4;
    }

    v16 = *(v14 - 1);
    if (HIDWORD(v16) || v16 > 0x15F90)
    {
      goto LABEL_4;
    }

    v18 = v16 * 1.25;
    if (v18 == INFINITY)
    {
      break;
    }

    if (v18 <= -1.0)
    {
      goto LABEL_25;
    }

    if (v18 >= 4294967300.0)
    {
      goto LABEL_26;
    }

    v19 = *(v14 - 4);
    v20 = v16 + 0x4000;
    if (v20 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    sub_1000503E0(&v57);
    v69[8] = v65;
    v69[9] = v66;
    v69[10] = v67;
    v70 = v68;
    v69[4] = v61;
    v69[5] = v62;
    v69[6] = v63;
    v69[7] = v64;
    v69[0] = v57;
    v69[1] = v58;
    v69[2] = v59;
    v69[3] = v60;
    v22 = v47;

    sub_100025F40(v69, &qword_1005CDFD0, &qword_1004EE450);
    *&v56[97] = v63;
    *&v56[113] = v64;
    *&v56[65] = v61;
    *&v56[81] = v62;
    v56[177] = v68;
    *&v56[145] = v66;
    *&v56[161] = v67;
    *&v56[129] = v65;
    *&v56[1] = v57;
    *&v56[17] = v58;
    *&v56[33] = v59;
    *&v56[49] = v60;
    *(&v74[8] + 7) = *&v56[128];
    *(&v74[9] + 7) = *&v56[144];
    *(&v74[10] + 7) = *&v56[160];
    *(&v74[4] + 7) = *&v56[64];
    *(&v74[5] + 7) = *&v56[80];
    *(&v74[6] + 7) = *&v56[96];
    *(&v74[7] + 7) = *&v56[112];
    *(v74 + 7) = *v56;
    *(&v74[1] + 7) = *&v56[16];
    *(&v74[2] + 7) = *&v56[32];
    *(&v74[3] + 7) = *&v56[48];
    v92 = *&v56[128];
    v93 = *&v56[144];
    v94 = *&v56[160];
    v88 = *&v56[64];
    v89 = *&v56[80];
    v90 = *&v56[96];
    v91 = *&v56[112];
    v84 = *v56;
    v85 = *&v56[16];
    v86 = *&v56[32];
    LOBYTE(v71) = 0;
    *(&v71 + 1) = v22;
    *&v72 = __PAIR64__(v19, v46);
    *(&v72 + 1) = _swiftEmptyArrayStorage;
    LODWORD(v73) = v21;
    *(&v73 + 1) = _swiftEmptyArrayStorage;
    LODWORD(v74[0]) = 0;
    WORD2(v74[0]) = 2;
    BYTE6(v74[0]) = 0;
    *(&v74[11] + 7) = *&v56[176];
    LOBYTE(v75[0]) = 0;
    v75[1] = v22;
    v76 = v46;
    v77 = v19;
    v78 = _swiftEmptyArrayStorage;
    v79 = v21;
    v80 = _swiftEmptyArrayStorage;
    v81 = 0;
    v82 = 2;
    v83 = 0;
    v95 = *&v56[176];
    v87 = *&v56[48];
    sub_100050408(&v71, v55);
    sub_100050440(v75);
    v23 = v51;
    v24 = *(v51 + 20);
    v25 = type metadata accessor for MessageHeader(0);
    v26 = v49;
    (*(*(v25 - 8) + 56))(&v49[v24], 1, 3, v25);
    sub_10000C9C0(&qword_1005CDFD8, &qword_1004D01E0);
    v27 = swift_allocObject();
    v28 = v74[9];
    v27[13] = v74[8];
    v27[14] = v28;
    v27[15] = v74[10];
    *(v27 + 249) = *(&v74[10] + 9);
    v29 = v74[5];
    v30 = v74[6];
    v31 = v74[3];
    v27[9] = v74[4];
    v27[10] = v29;
    v32 = v74[7];
    v27[11] = v30;
    v27[12] = v32;
    v33 = v74[1];
    v34 = v74[2];
    v35 = v73;
    v27[5] = v74[0];
    v27[6] = v33;
    v27[7] = v34;
    v27[8] = v31;
    v36 = v71;
    v37 = v72;
    v27[1] = v45;
    v27[2] = v36;
    v27[3] = v37;
    v27[4] = v35;
    *v26 = v19;
    *(v26 + *(v23 + 24)) = v27;
    *(v26 + *(v23 + 28)) = _swiftEmptyArrayStorage;
    v38 = v52;
    sub_100050F80(v26, v52, _s25MessageSectionsToDownloadVMa);
    sub_100050EB8(v38, v53, _s25MessageSectionsToDownloadVMa);
    v39 = *(_s18InProgressMessagesVMa(0) + 32);
    v40 = *(v54 + v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_100085E0C(0, v40[2] + 1, 1, v40);
    }

    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_100085E0C((v41 > 1), v42 + 1, 1, v40);
    }

    v40[2] = v42 + 1;
    sub_100050F80(v53, v40 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42, _s25MessageSectionsToDownloadVMa);
    *(v54 + v39) = v40;
    *v56 = v19;
    v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.insert(_:)(v55, v56, v15);
    sub_100050F20(v52, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    v14 += 24;
    if (!--v13)
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1000458FC(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(a1 + 56) + 16 * v12;
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *(*(a1 + 48) + 4 * v12);
      v15 = *v13;
      if (*(v13 + 9) == 1)
      {
        sub_1000503E0(&v83);
        goto LABEL_15;
      }

      v16 = *(v2 + 16);
      if (*(v16 + 16))
      {
        v17 = sub_100067004();
        if (v18)
        {
          v19 = *(v16 + 56) + 184 * v17;
          v21 = *(v19 + 32);
          v20 = *(v19 + 48);
          v22 = *(v19 + 16);
          v59 = *v19;
          v60 = v22;
          v61 = v21;
          v62 = v20;
          v23 = *(v19 + 64);
          v24 = *(v19 + 80);
          v25 = *(v19 + 112);
          v65 = *(v19 + 96);
          v66 = v25;
          v63 = v23;
          v64 = v24;
          v26 = *(v19 + 128);
          v27 = *(v19 + 144);
          v28 = *(v19 + 160);
          v70 = *(v19 + 176);
          v68 = v27;
          v69 = v28;
          v67 = v26;
          LODWORD(v47) = v14;
          _s18InProgressMessagesVMa(0);
          sub_10003E6D4(&v59, &v71);
          v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.insert(_:)(&v71, &v47, v29);
          v79 = v67;
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v75 = v63;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v71 = v59;
          v72 = v60;
          v73 = v61;
          v74 = v62;
          UInt32.init(_:)(&v71);
          v91 = v79;
          v92 = v80;
          v93 = v81;
          v94 = v82;
          v87 = v75;
          v88 = v76;
          v89 = v77;
          v90 = v78;
          v83 = v71;
          v84 = v72;
          v85 = v73;
          v86 = v74;
LABEL_15:
          v46 = v14;
          if (HIDWORD(v15))
          {
            v55 = v91;
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v51 = v87;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v47 = v83;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v30 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = v2;
              LODWORD(v15) = 0;
              v82 = v58;
              v79 = v55;
              v80 = v56;
              v81 = v57;
LABEL_20:
              v75 = v51;
              v76 = v52;
              v77 = v53;
              v78 = v54;
              v71 = v47;
              v72 = v48;
              v32 = v49;
              v33 = v50;
              goto LABEL_21;
            }

            LODWORD(v15) = 0;
            v70 = v58;
            v67 = v55;
            v68 = v56;
            v69 = v57;
          }

          else
          {
            v55 = v91;
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v51 = v87;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v47 = v83;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v30 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = v2;
              v79 = v55;
              v80 = v56;
              v81 = v57;
              v82 = v58;
              goto LABEL_20;
            }

            v67 = v55;
            v68 = v56;
            v69 = v57;
            v70 = v58;
          }

          v63 = v51;
          v64 = v52;
          v65 = v53;
          v66 = v54;
          v59 = v47;
          v60 = v48;
          v61 = v49;
          v62 = v50;
          v31 = v2;
          v30 = sub_100085E34(0, *(v30 + 2) + 1, 1, v30);
          v79 = v67;
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v75 = v63;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v71 = v59;
          v72 = v60;
          v32 = v61;
          v33 = v62;
LABEL_21:
          v73 = v32;
          v74 = v33;
          v35 = *(v30 + 2);
          v34 = *(v30 + 3);
          if (v35 >= v34 >> 1)
          {
            v30 = sub_100085E34((v34 > 1), v35 + 1, 1, v30);
          }

          *(v30 + 2) = v35 + 1;
          v36 = &v30[192 * v35];
          *(v36 + 8) = v46;
          *(v36 + 9) = v15;
          v37 = v71;
          v38 = v72;
          v39 = v73;
          *(v36 + 88) = v74;
          *(v36 + 72) = v39;
          *(v36 + 56) = v38;
          *(v36 + 40) = v37;
          v40 = v75;
          v41 = v76;
          v42 = v77;
          *(v36 + 152) = v78;
          *(v36 + 136) = v42;
          *(v36 + 120) = v41;
          *(v36 + 104) = v40;
          v43 = v79;
          v44 = v80;
          v45 = v81;
          v36[216] = v82;
          *(v36 + 200) = v45;
          *(v36 + 184) = v44;
          *(v36 + 168) = v43;
          v2 = v31;
          *(v31 + *(_s18InProgressMessagesVMa(0) + 28)) = v30;
        }
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100045D7C(int a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v7 = _s25MessageSectionsToDownloadVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + *(_s18InProgressMessagesVMa(0) + 32));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return;
      }

      sub_100050EB8(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, _s25MessageSectionsToDownloadVMa);
      v14 = *v10;
      sub_100050F20(v10, _s25MessageSectionsToDownloadVMa);
      if (v14 == a1)
      {
        break;
      }

      if (v12 == ++v13)
      {
        return;
      }
    }

    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = *(type metadata accessor for MessageData.BodySection(0) - 8);
      v17 = (a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
      v18 = *(v16 + 72);
      do
      {
        sub_100045F58(v17, v3, v13, a3);
        v17 = (v17 + v18);
        --v15;
      }

      while (v15);
    }
  }
}

void sub_100045F58(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(char *, char *, uint64_t))
{
  v84 = type metadata accessor for MessageData.BodySection(0);
  __chkstk_darwin(v84);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v73);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v72 - v12;
  v14 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v14 - 8);
  v83 = &v72 - v15;
  v16 = type metadata accessor for MessageData.BodyData(0);
  v81 = *(v16 - 8);
  v82 = v16;
  __chkstk_darwin(v16);
  v79 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v18 - 8);
  v78 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v72 - v21;
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  v26 = _s18InProgressMessagesVMa(0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v89 = *(v26 + 32);
  v90 = a2;
  a2 = *&v89[a2];
  if (*(a2 + 16) <= a3)
  {
    goto LABEL_24;
  }

  v77 = v13;
  v27 = _s25MessageSectionsToDownloadVMa(0);
  v28 = *(v27 - 8);
  v85 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v29 = *(v28 + 72);
  v87 = v27;
  v88 = a3;
  v30 = a2 + v85 + *(v27 + 20);
  v86 = v29 * a3;
  sub_100050EB8(v30 + v29 * a3, v25, _s19MessageHeaderStatusOMa);
  v31 = type metadata accessor for MessageHeader(0);
  v32 = *(v31 - 8);
  v75 = *(v32 + 56);
  v76 = v31;
  v74 = v32 + 56;
  v75(v22, 3, 3);
  v33 = sub_10004CF1C(v25, v22);
  sub_100050F20(v22, _s19MessageHeaderStatusOMa);
  sub_100050F20(v25, _s19MessageHeaderStatusOMa);
  if ((v33 & 1) == 0 || (v34 = *a1, v25 = a1[1], v35 = *(a1 + 16), v36 = SectionSpecifier.header.unsafeMutableAddressor(), v72 = v9, v38 = *v36, v37 = v36[1], v39 = *(v36 + 16), , sub_100051190(v37, v39), LOBYTE(v34) = static SectionSpecifier.__derived_struct_equals(_:_:)(v34, v25, v35, v38, v37, v39), , v40 = v72, sub_1000511A4(v37, v39), (v34 & 1) == 0))
  {
    v22 = v89;
    v9 = v90;
    a2 = *&v89[v90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v22[v9] = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (*(a2 + 16) <= v88)
      {
        __break(1u);
      }

      else
      {
        v22 = (a2 + v85 + v86);
        v25 = *(v87 + 24);
        a2 = *&v22[v25];
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *&v22[v25] = a2;
        if (v61)
        {
          goto LABEL_11;
        }
      }

      a2 = sub_100139890(a2);
LABEL_11:
      *&v22[v25] = a2;
      if (!*(a2 + 16))
      {
        return;
      }

      v62 = 0;
      for (i = 32; ; i += 240)
      {
        *&v22[v25] = a2;
        if (v62 >= *(a2 + 16))
        {
          break;
        }

        v9 = a2 + i;
        sub_100046884(a1, a4);
        ++v62;
        a2 = *&v22[v25];
        if (v62 == *(a2 + 16))
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      a2 = sub_10013987C(a2);
      *&v22[v9] = a2;
    }
  }

  v41 = v83;
  sub_10000E268(a1 + *(v84 + 24), v83, &qword_1005CE218, &unk_1004F3FD0);
  if ((*(v81 + 48))(v41, 1, v82) == 1)
  {
    sub_100025F40(v41, &qword_1005CE218, &unk_1004F3FD0);
    v42 = v77;
    sub_100050EB8(a4, v77, type metadata accessor for MailboxTaskLogger);
    v43 = v80;
    sub_100050EB8(a4, v80, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100050EB8(a1, v40, type metadata accessor for MessageData.BodySection);
    v44 = sub_1004A4A54();
    v45 = sub_1004A6014();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v89) = v45;
      v47 = v46;
      v90 = swift_slowAlloc();
      v93 = v90;
      *v47 = 68159491;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v48 = v73;
      v49 = v43 + *(v73 + 20);
      *(v47 + 10) = *v49;
      *(v47 + 11) = 2082;
      v50 = v42;
      v51 = v42 + *(v48 + 20);
      *(v47 + 13) = sub_10015BA6C(*(v51 + 8), *(v51 + 16), &v93);
      *(v47 + 21) = 1040;
      *(v47 + 23) = 2;
      *(v47 + 27) = 512;
      LOWORD(v49) = *(v49 + 24);
      sub_100050F20(v43, type metadata accessor for MailboxTaskLogger);
      *(v47 + 29) = v49;
      *(v47 + 31) = 2160;
      *(v47 + 33) = 0x786F626C69616DLL;
      *(v47 + 41) = 2085;
      v52 = *(v51 + 32);
      LODWORD(v51) = *(v51 + 40);

      sub_100050F20(v50, type metadata accessor for MailboxTaskLogger);
      v91 = v52;
      v92 = v51;
      v53 = sub_1004A5824();
      v55 = sub_10015BA6C(v53, v54, &v93);

      *(v47 + 43) = v55;
      *(v47 + 51) = 2082;
      v56 = SectionSpecifier.debugDescription.getter(*v40, *(v40 + 8), *(v40 + 16));
      v58 = v57;
      sub_100050F20(v40, type metadata accessor for MessageData.BodySection);
      v59 = sub_10015BA6C(v56, v58, &v93);

      *(v47 + 53) = v59;
      _os_log_impl(&_mh_execute_header, v44, v89, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No header data in response for '%{public}s'", v47, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v43, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v42, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v40, type metadata accessor for MessageData.BodySection);
    }
  }

  else
  {
    v64 = v79;
    sub_100050F80(v41, v79, type metadata accessor for MessageData.BodyData);
    v65 = sub_1004A5384();
    v66 = v78;
    (*(*(v65 - 8) + 16))(v78, v64, v65);
    (v75)(v66, 0, 3, v76);
    v68 = v89;
    v67 = v90;
    v69 = *&v89[v90];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *&v68[v67] = v69;
    if ((v70 & 1) == 0)
    {
      *&v68[v67] = sub_10013987C(v69);
    }

    sub_100050F20(v64, type metadata accessor for MessageData.BodyData);
    v71 = *&v68[v67];
    if (*(v71 + 16) <= v88)
    {
      __break(1u);
    }

    else
    {
      sub_1000511B8(v66, v71 + v85 + *(v87 + 20) + v86);
    }
  }
}

void sub_100046884(uint64_t *a1, void (*a2)(char *, char *, uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for MessageData.BodySection(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v9);
  v54 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v48[-v12];
  __chkstk_darwin(v14);
  v16 = &v48[-v15];
  __chkstk_darwin(v17);
  v19 = &v48[-v18];
  v20 = *(v2 + 20);
  sub_100050EB8(a2, &v48[-v18], type metadata accessor for MailboxTaskLogger);
  sub_100050EB8(a2, v16, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v56 = a1;
  sub_100050EB8(a1, v8, type metadata accessor for MessageData.BodySection);
  v55 = a2;
  v21 = sub_1004A4A54();
  v22 = sub_1004A6004();
  v23 = os_log_type_enabled(v21, v22);
  v53 = v20;
  v52 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v51 = v13;
    v25 = v24;
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v25 = 68159747;
    v49 = v22;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v26 = v20;
    v27 = &v16[*(v9 + 20)];
    *(v25 + 10) = *v27;
    *(v25 + 11) = 2082;
    v28 = *(v9 + 20);
    v29 = v3;
    v30 = &v19[v28];
    *(v25 + 13) = sub_10015BA6C(*&v19[v28 + 8], *&v19[v28 + 16], v59);
    *(v25 + 21) = 1040;
    *(v25 + 23) = 2;
    *(v25 + 27) = 512;
    LOWORD(v27) = *(v27 + 12);
    sub_100050F20(v16, type metadata accessor for MailboxTaskLogger);
    *(v25 + 29) = v27;
    *(v25 + 31) = 2160;
    *(v25 + 33) = 0x786F626C69616DLL;
    *(v25 + 41) = 2085;
    v31 = *(v30 + 4);
    LODWORD(v27) = *(v30 + 10);

    sub_100050F20(v19, type metadata accessor for MailboxTaskLogger);
    v57 = v31;
    v58 = v27;
    v32 = sub_1004A5824();
    v34 = sub_10015BA6C(v32, v33, v59);

    *(v25 + 43) = v34;
    *(v25 + 51) = 1024;
    *(v25 + 53) = v26;
    *(v25 + 57) = 2082;
    v35 = SectionSpecifier.debugDescription.getter(*v8, *(v8 + 1), v8[16]);
    v37 = v36;
    sub_100050F20(v8, type metadata accessor for MessageData.BodySection);
    v38 = sub_10015BA6C(v35, v37, v59);

    *(v25 + 59) = v38;
    _os_log_impl(&_mh_execute_header, v21, v49, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received body section data for section '%{public}s'", v25, 0x43u);
    swift_arrayDestroy();

    if (*(v29 + 54))
    {
      return;
    }
  }

  else
  {
    sub_100050F20(v16, type metadata accessor for MailboxTaskLogger);

    sub_100050F20(v19, type metadata accessor for MailboxTaskLogger);
    sub_100050F20(v8, type metadata accessor for MessageData.BodySection);
    if (*(v3 + 54))
    {
      return;
    }
  }

  v39 = *v56;
  v40 = v56[1];
  v41 = *(v56 + 16);

  v43 = SectionSpecifier.init(part:kind:)(v42, 0, 2u);
  v45 = v44;
  v47 = v46;
  LOBYTE(v39) = static SectionSpecifier.__derived_struct_equals(_:_:)(v39, v40, v41, v43, v44, v46);

  sub_1000511A4(v45, v47);
  if (v39)
  {
    sub_10004A98C(v56, v55);
  }
}

uint64_t sub_10004700C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(_s18SectionDataRequestVMa(0) + 20));

  v4 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v3, v2);

  return v4 & 1;
}

uint64_t sub_100047070(int a1)
{
  v3 = type metadata accessor for MessageHeader(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  __chkstk_darwin(v45);
  v47 = &v37 - v6;
  v7 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v37 - v11;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v52 = _s25MessageSectionsToDownloadVMa(0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v37 - v17);
  result = _s18InProgressMessagesVMa(0);
  v20 = *(result + 32);
  v39 = v1;
  v37 = v20;
  v51 = *(v1 + v20);
  v49 = *(v51 + 16);
  if (v49)
  {
    v21 = 0;
    v48 = v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v22 = (v4 + 48);
    v43 = (v4 + 56);
    v44 = v3;
    v42 = a1;
    v41 = v9;
    do
    {
      if (v21 >= *(v51 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100050EB8(v48 + *(v50 + 72) * v21, v18, _s25MessageSectionsToDownloadVMa);
      v23 = *(v52 + 20);
      sub_100050EB8(v18 + v23, v14, _s19MessageHeaderStatusOMa);
      v24 = *v22;
      v25 = (*v22)(v14, 3, v3);
      sub_100050F20(v14, _s19MessageHeaderStatusOMa);
      if (*v18 != a1 || *(*(v18 + *(v52 + 24)) + 16))
      {
        result = sub_100050F20(v18, _s25MessageSectionsToDownloadVMa);
        goto LABEL_4;
      }

      v26 = v46;
      (*v43)(v46, 1, 3, v3);
      v27 = *(v45 + 48);
      v28 = v18 + v23;
      v29 = v47;
      sub_100050EB8(v28, v47, _s19MessageHeaderStatusOMa);
      v3 = v44;
      sub_100050EB8(v26, v29 + v27, _s19MessageHeaderStatusOMa);
      v30 = v24(v29, 3, v3);
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          sub_100050F20(v46, _s19MessageHeaderStatusOMa);
          v31 = v47;
          if (v24((v47 + v27), 3, v3) == 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100050F20(v46, _s19MessageHeaderStatusOMa);
          v31 = v47;
          if (v24((v47 + v27), 3, v3) == 3)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v30)
      {
        sub_100050F20(v46, _s19MessageHeaderStatusOMa);
        v31 = v47;
        if (v24((v47 + v27), 3, v3) == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v31 = v47;
        v32 = v41;
        sub_100050EB8(v47, v41, _s19MessageHeaderStatusOMa);
        if (!v24((v31 + v27), 3, v3))
        {
          v33 = v31 + v27;
          v34 = v40;
          sub_100050F80(v33, v40, type metadata accessor for MessageHeader);
          v35 = static MessageHeader.== infix(_:_:)(v32, v34);
          sub_100050F20(v34, type metadata accessor for MessageHeader);
          sub_100050F20(v46, _s19MessageHeaderStatusOMa);
          v3 = v44;
          sub_100050F20(v32, type metadata accessor for MessageHeader);
          if (v35)
          {
LABEL_23:
            sub_100050F20(v31, _s19MessageHeaderStatusOMa);
            sub_100050F20(v18, _s25MessageSectionsToDownloadVMa);
LABEL_24:
            v36 = v38;
            sub_100168F68(v21, v38);
            return sub_100050F20(v36, _s25MessageSectionsToDownloadVMa);
          }

          sub_100050F20(v31, _s19MessageHeaderStatusOMa);
          goto LABEL_19;
        }

        sub_100050F20(v46, _s19MessageHeaderStatusOMa);
        sub_100050F20(v32, type metadata accessor for MessageHeader);
      }

      sub_100025F40(v31, &qword_1005CE1F8, &qword_1004D0918);
LABEL_19:
      result = sub_100050F20(v18, _s25MessageSectionsToDownloadVMa);
      a1 = v42;
      if (!v25)
      {
        goto LABEL_24;
      }

LABEL_4:
      ++v21;
    }

    while (v49 != v21);
  }

  return result;
}