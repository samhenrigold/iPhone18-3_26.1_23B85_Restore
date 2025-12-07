void sub_1000C9AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1001E5A4C();
}

uint64_t sub_1000C9C8C()
{
  v1[9] = v0;
  v1[10] = 25705;
  v1[11] = 0xE200000000000000;

  return sub_1000C1A68();
}

uint64_t sub_1000C9CAC()
{
}

uint64_t sub_1000C9CCC()
{
  v3 = *(v0 + 72);

  return sub_10001C990(v1, 1, v3);
}

unint64_t sub_1000C9CEC()
{

  return sub_10011108C(0xD000000000000013);
}

BOOL sub_1000C9D0C(uint64_t a1)
{

  return sub_1001F7A98(v1, v2);
}

uint64_t sub_1000C9D2C(uint64_t a1)
{

  return sub_1000EE5B8(a1, v1);
}

uint64_t sub_1000C9D44()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1000C9E10(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DatabaseSession();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_1000C9E78()
{
  sub_100037C08();
  v122 = v1;
  v113 = v6;
  v114 = v7;
  v115 = v8;
  v116 = v9;
  v10 = sub_1001F6508();
  sub_10001A278();
  v121 = v11;
  __chkstk_darwin(v12);
  sub_10004FE10();
  v112[4] = v13;
  sub_100099510();
  __chkstk_darwin(v14);
  sub_100099670();
  v112[3] = v15;
  sub_100099510();
  __chkstk_darwin(v16);
  sub_1000AD704();
  v112[2] = v17;
  v18 = sub_1000D4DE4();
  sub_10001A278();
  v112[1] = v19;
  __chkstk_darwin(v20);
  sub_100023510();
  v21 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v22 = sub_100056658(v21);
  __chkstk_darwin(v22);
  sub_10004FE10();
  v117 = v23;
  sub_100099510();
  __chkstk_darwin(v24);
  sub_1000D47C8();
  __chkstk_darwin(v25);
  sub_1000D47DC();
  __chkstk_darwin(v26);
  sub_1000D47F0();
  __chkstk_darwin(v27);
  sub_1000D4930();
  __chkstk_darwin(v28);
  v30 = v112 - v29;
  v31 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v32 = sub_100056658(v31);
  __chkstk_darwin(v32);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v33);
  sub_1000D4AD4();
  v34 = sub_1000D48E8();
  sub_100018460(v34, v35, v36, v18);
  v118 = v30;
  sub_1000995D4();
  sub_100018460(v37, v38, v39, v10);
  v119 = v1;
  sub_1000995D4();
  sub_100018460(v40, v41, v42, v10);
  v120 = v4;
  v43 = sub_1000D4818();
  sub_100018460(v43, v44, v45, v10);
  v123 = _swiftEmptyDictionarySingleton;
  v126 = type metadata for String;
  v124 = v113;
  v125 = v114;

  sub_100145028(&v124, 2);
  v126 = type metadata for String;
  v124 = v115;
  v125 = v116;

  sub_100145028(&v124, 15);
  v46 = sub_1000D50F0();
  sub_100057CB8(v46, v47, &qword_1002AFA30, &unk_10020FA10);
  v48 = sub_1000D4AC8();
  sub_1000D4A44(v48, v49, v18);
  if (v50)
  {
    sub_10004BDE8(v3, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v51 = sub_1000D4C28();
    v52(v51);
    v53 = sub_1001F6528();
    v126 = type metadata for String;
    v124 = v53;
    v125 = v54;
    sub_100145028(&v124, 22);
    v55 = sub_1000D50B8();
    v56(v55);
  }

  v57 = sub_1000D4A80();
  sub_100057CB8(v57, v58, v59, v60);
  v61 = sub_1000D4B24();
  if (sub_10001C990(v61, v62, v10) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v63();
    sub_1001F6428();
    v65 = sub_1000D48A4(v64);
    sub_100145028(v65, 30);
    sub_1000D4B6C();
    v66 = sub_1000D4D28();
    v67(v66);
  }

  v68 = sub_1000D4D58();
  sub_100057CB8(v68, v69, v70, v71);
  sub_1000994CC(v2);
  if (v50)
  {
    sub_10004BDE8(v2, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    v72 = sub_1000A3CB4();
    v73(v72);
    sub_1001F6428();
    v75 = sub_1000D48A4(v74);
    sub_100145028(v75, 29);
    v76 = sub_1000D48C4();
    v77(v76);
  }

  v78 = v117;
  v79 = sub_1000D4D4C();
  sub_100057CB8(v79, v80, v81, v82);
  sub_1000994CC(v78);
  if (v50)
  {
    sub_10004BDE8(v78, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v83();
    sub_1001F6428();
    v85 = sub_1000D48A4(v84);
    sub_100145028(v85, 33);
    v86 = sub_1000D4AA8();
    v87(v86);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4A5C();
  sub_10004BDE8(v88, v89, v90);
  sub_1000D4A5C();
  sub_10004BDE8(v91, v92, v93);
  sub_1000D4A5C();
  sub_10004BDE8(v94, v95, v96);
  sub_10004BDE8(v5, &qword_1002AFA30, &unk_10020FA10);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  v97 = sub_1001F69B8();
  v98 = sub_1000AD850();
  v101 = sub_1001C7504(v98, v99, v100, v97);

  sub_1000D4F30();
  v105 = sub_1000D4168(v102, v103, v104);
  v106 = sub_10013B560();
  if (v106)
  {
    v107 = v106;
    v108 = 0;
    while (1)
    {
      if ((v105 & 0xC000000000000001) != 0)
      {
        sub_1000D4E20();
        v109 = sub_1001F7808();
      }

      else
      {
        if (v108 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v109 = *(v105 + 8 * v108 + 32);
      }

      v110 = v109;
      v111 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      sub_1000C56AC(&v124);

      if (v127 != 255)
      {
        if (!v127)
        {
          sub_10004BDE8(&v124, &qword_1002B3310, &qword_10020A0A0);

          goto LABEL_26;
        }

        sub_10004BDE8(&v124, &qword_1002B3310, &qword_10020A0A0);
      }

      ++v108;
      if (v111 == v107)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_24:

LABEL_26:
    sub_100037B00();
  }
}

void sub_1000CA54C()
{
  sub_100037C08();
  v109 = v6;
  v110 = v7;
  v111 = v8;
  v10 = v9;
  v108 = v11;
  v12 = sub_1001F6508();
  sub_10001A278();
  v116 = v13;
  __chkstk_darwin(v14);
  sub_10004FE10();
  v107 = v15;
  sub_100099510();
  __chkstk_darwin(v16);
  sub_100099670();
  v106 = v17;
  sub_100099510();
  __chkstk_darwin(v18);
  sub_1000AD704();
  v105 = v19;
  v20 = sub_1000D4DE4();
  sub_10001A278();
  v104 = v21;
  __chkstk_darwin(v22);
  sub_1000D4804();
  v103 = v23;
  v24 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v25 = sub_100056658(v24);
  __chkstk_darwin(v25);
  sub_10004FE10();
  v112 = v26;
  sub_100099510();
  __chkstk_darwin(v27);
  sub_1000D47C8();
  __chkstk_darwin(v28);
  sub_1000D47DC();
  __chkstk_darwin(v29);
  sub_1000D484C();
  __chkstk_darwin(v30);
  sub_1000D47F0();
  __chkstk_darwin(v31);
  sub_1000D4AD4();
  v32 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v33 = sub_100056658(v32);
  __chkstk_darwin(v33);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v34);
  v36 = &v102 - v35;
  sub_1000995D4();
  sub_100018460(v37, v38, v39, v20);
  v113 = v5;
  v40 = sub_1000D48E8();
  sub_100018460(v40, v41, v42, v12);
  v114 = v4;
  v43 = sub_1000D4818();
  sub_100018460(v43, v44, v45, v12);
  v115 = v2;
  sub_1000995D4();
  sub_100018460(v46, v47, v48, v12);
  v120 = _swiftEmptyDictionarySingleton;
  v119 = type metadata for String;
  v117 = v108;
  v118 = v10;

  v49 = sub_1000D4B84();
  sub_100145028(v49, 2);
  if (v109)
  {
    v119 = &type metadata for Int;
    v117 = 1;
    sub_100145028(&v117, 14);
  }

  v119 = type metadata for String;
  v117 = v110;
  v118 = v111;

  sub_100145028(&v117, 15);
  v50 = v36;
  sub_100057CB8(v36, v3, &qword_1002AFA30, &unk_10020FA10);
  v51 = sub_1000D4AC8();
  sub_1000D4A44(v51, v52, v20);
  if (v53)
  {
    sub_10004BDE8(v3, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v55 = v103;
    v54 = v104;
    sub_1000D4A8C();
    v56 = sub_1000D50F0();
    v57(v56);
    v58 = sub_1001F6528();
    v119 = type metadata for String;
    v117 = v58;
    v118 = v59;
    v60 = sub_1000D4B84();
    sub_100145028(v60, 22);
    (*(v54 + 8))(v55, v20);
  }

  v61 = sub_1000D4A80();
  sub_100057CB8(v61, v62, v63, v64);
  v65 = sub_1000D4B24();
  if (sub_10001C990(v65, v66, v12) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v67();
    sub_1001F6428();
    v69 = sub_1000D4838(v68);
    sub_100145028(v69, 30);
    sub_1000D4B6C();
    v70 = sub_100099700();
    v71(v70);
  }

  v72 = sub_1000D4D58();
  sub_100057CB8(v72, v73, v74, v75);
  sub_1000994CC(v1);
  if (v53)
  {
    sub_10004BDE8(v1, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    v76 = sub_1000A3CB4();
    v77(v76);
    sub_1001F6428();
    v79 = sub_1000D4838(v78);
    sub_100145028(v79, 29);
    v80 = sub_1000D48C4();
    v81(v80);
  }

  v82 = v112;
  v83 = sub_1000D4D4C();
  sub_100057CB8(v83, v84, v85, v86);
  sub_1000994CC(v82);
  if (v53)
  {
    sub_10004BDE8(v82, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v87();
    sub_1001F6428();
    v89 = sub_1000D4838(v88);
    sub_100145028(v89, 33);
    v90 = sub_1000D4AA8();
    v91(v90);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4A5C();
  sub_10004BDE8(v92, v93, v94);
  sub_1000D4A5C();
  sub_10004BDE8(v95, v96, v97);
  sub_1000D4A5C();
  sub_10004BDE8(v98, v99, v100);
  sub_10004BDE8(v50, &qword_1002AFA30, &unk_10020FA10);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v101 = sub_1001F69B8();
  sub_1000D4958(v101);
  sub_1000D5058();

  sub_1000D3FD0(_swiftEmptyArrayStorage);

  sub_100037B00();
}

void sub_1000CAB58()
{
  sub_100037C08();
  v88 = v4;
  v89 = v5;
  v6 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v7);
  sub_10004FE10();
  sub_100099510();
  __chkstk_darwin(v8);
  sub_100099670();
  sub_100099510();
  __chkstk_darwin(v9);
  sub_1000AD704();
  v10 = sub_1000D4DE4();
  sub_10001A278();
  __chkstk_darwin(v11);
  sub_1000D4804();
  v12 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v13 = sub_100056658(v12);
  __chkstk_darwin(v13);
  sub_10004FE10();
  v90 = v14;
  sub_100099510();
  __chkstk_darwin(v15);
  sub_1000D47C8();
  __chkstk_darwin(v16);
  sub_1000D47DC();
  __chkstk_darwin(v17);
  sub_1000D47F0();
  __chkstk_darwin(v18);
  sub_1000D484C();
  __chkstk_darwin(v19);
  sub_1000D4ED0();
  v20 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v21 = sub_100056658(v20);
  __chkstk_darwin(v21);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v22);
  sub_1000D4AD4();
  v23 = sub_1000D48E8();
  sub_100018460(v23, v24, v25, v10);
  sub_1000995D4();
  sub_100018460(v26, v27, v28, v6);
  sub_1000995D4();
  sub_100018460(v29, v30, v31, v6);
  v32 = sub_1000D4818();
  sub_100018460(v32, v33, v34, v6);
  v94 = _swiftEmptyDictionarySingleton;

  v35 = sub_1000D4B84();
  sub_100145028(v35, 2);
  v93 = type metadata for String;
  v91 = v88;
  v92 = v89;

  sub_100145028(&v91, 9);
  v93 = &type metadata for Int;
  v91 = 1;
  sub_100145028(&v91, 14);
  v93 = &type metadata for Bool;
  LOBYTE(v91) = 0;
  sub_100145028(&v91, 17);
  v36 = sub_1000D50F0();
  sub_100057CB8(v36, v37, &qword_1002AFA30, &unk_10020FA10);
  v38 = sub_1000D4AC8();
  sub_1000D4A44(v38, v39, v10);
  if (v40)
  {
    sub_10004BDE8(v2, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v41 = sub_1000D4C28();
    v42(v41);
    v43 = sub_1001F6528();
    v93 = type metadata for String;
    v91 = v43;
    v92 = v44;
    v45 = sub_1000D4B84();
    sub_100145028(v45, 22);
    v46 = sub_1000D50B8();
    v47(v46);
  }

  v48 = sub_1000D4A80();
  sub_100057CB8(v48, v49, v50, v51);
  v52 = sub_1000D4B24();
  if (sub_10001C990(v52, v53, v6) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v54();
    sub_1001F6428();
    v56 = sub_1000D4838(v55);
    sub_100145028(v56, 30);
    sub_1000D4B6C();
    v57 = sub_1000D4D28();
    v58(v57);
  }

  v59 = sub_1000D4D58();
  sub_100057CB8(v59, v60, v61, v62);
  sub_1000994CC(v1);
  if (v40)
  {
    sub_10004BDE8(v1, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    v63 = sub_1000A3CB4();
    v64(v63);
    sub_1001F6428();
    v66 = sub_1000D4838(v65);
    sub_100145028(v66, 29);
    v67 = sub_1000D48C4();
    v68(v67);
  }

  v69 = sub_1000D4D4C();
  sub_100057CB8(v69, v70, v71, v72);
  sub_1000994CC(v90);
  if (v40)
  {
    sub_10004BDE8(v90, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v73();
    sub_1001F6428();
    v75 = sub_1000D4838(v74);
    sub_100145028(v75, 33);
    v76 = sub_1000D4AA8();
    v77(v76);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4A5C();
  sub_10004BDE8(v78, v79, v80);
  sub_1000D4A5C();
  sub_10004BDE8(v81, v82, v83);
  sub_1000D4A5C();
  sub_10004BDE8(v84, v85, v86);
  sub_10004BDE8(v3, &qword_1002AFA30, &unk_10020FA10);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v87 = sub_1001F69B8();
  sub_1000D4958(v87);
  sub_1000D5058();

  sub_1000D3FD0(_swiftEmptyArrayStorage);

  sub_100037B00();
}

void sub_1000CB160()
{
  sub_100037C08();
  v154 = v6;
  v156 = v7;
  v8 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v9);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v10);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v11);
  sub_1000AD704();
  sub_100099A14(v12);
  v13 = sub_1001F6578();
  sub_10001A278();
  v152 = v14;
  __chkstk_darwin(v15);
  sub_100023510();
  v18 = v17 - v16;
  v19 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v20 = sub_100056658(v19);
  __chkstk_darwin(v20);
  sub_10004FE10();
  v160 = v21;
  sub_100099510();
  __chkstk_darwin(v22);
  sub_1000D47C8();
  __chkstk_darwin(v23);
  sub_1000D47DC();
  __chkstk_darwin(v24);
  sub_1000D4930();
  __chkstk_darwin(v25);
  sub_1000D4AE4();
  __chkstk_darwin(v26);
  sub_1000D4AD4();
  v27 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v28 = sub_100056658(v27);
  __chkstk_darwin(v28);
  sub_100099484();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  sub_1000D4C7C();
  sub_1000995D4();
  sub_100018460(v33, v34, v35, v13);
  v36 = sub_1000D48E8();
  sub_100018460(v36, v37, v38, v8);
  v39 = sub_1000D48D8();
  sub_100018460(v39, v40, v41, v8);
  sub_1000995D4();
  sub_100018460(v42, v43, v44, v8);
  v162[0] = _swiftEmptyDictionarySingleton;
  v166 = type metadata for String;
  v164 = v154;
  v165 = v156;

  v45 = sub_1000D4A74();
  sub_100145028(v45, 2);
  sub_1000D5160(&type metadata for Bool);
  sub_100057CB8(v3, v31, &qword_1002AFA30, &unk_10020FA10);
  v46 = sub_1000D4B0C();
  sub_1000D4A44(v46, v47, v13);
  if (v48)
  {
    sub_10004BDE8(v31, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4C70();
    v49(v18, v31, v13);
    v166 = type metadata for String;
    v164 = sub_1001F6528();
    v165 = v50;
    v51 = sub_1000D4A74();
    sub_100145028(v51, 22);
    (*(v152 + 8))(v18, v13);
  }

  sub_100057CB8(v5, v0, &unk_1002B3450, &qword_100202EE0);
  v52 = sub_1000D4B24();
  if (sub_10001C990(v52, v53, v8) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v54();
    sub_1001F6428();
    v166 = &type metadata for Double;
    v56 = sub_1000D4828(v55);
    sub_100145028(v56, 30);
    sub_1000D4B6C();
    v57 = sub_100099700();
    v58(v57);
  }

  sub_100057CB8(v4, v2, &unk_1002B3450, &qword_100202EE0);
  sub_1000994CC(v2);
  if (v48)
  {
    sub_10004BDE8(v2, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    v59 = sub_1000A3CB4();
    v60(v59);
    sub_1001F6428();
    v166 = &type metadata for Double;
    v62 = sub_1000D4828(v61);
    sub_100145028(v62, 29);
    v63 = sub_1000D48C4();
    v64(v63);
  }

  sub_100057CB8(v1, v160, &unk_1002B3450, &qword_100202EE0);
  sub_1000994CC(v160);
  if (v48)
  {
    sub_1000D49F8();
    sub_10004BDE8(v65, v66, v67);
    v68 = sub_1000D498C();
    sub_10004BDE8(v68, v69, v70);
    sub_1000D49F8();
    sub_10004BDE8(v71, v72, v73);
    sub_10004BDE8(v3, &qword_1002AFA30, &unk_10020FA10);
    sub_1000D49F8();
  }

  else
  {
    sub_1000D4A8C();
    v74 = sub_1000A3CB4();
    v75(v74);
    sub_1001F6428();
    v166 = &type metadata for Double;
    v77 = sub_1000D4828(v76);
    sub_100145028(v77, 33);
    v78 = sub_1000D4AA8();
    v79(v78);
    sub_1000D49F8();
    sub_10004BDE8(v80, v81, v82);
    v83 = sub_1000D498C();
    sub_10004BDE8(v83, v84, v85);
    sub_1000D49F8();
    sub_10004BDE8(v86, v87, v88);
    v89 = &qword_1002AFA30;
    v90 = &unk_10020FA10;
    v91 = v3;
  }

  sub_10004BDE8(v91, v89, v90);
  v155 = v162[0];
  sub_1000183C4(&qword_1002B3498, &unk_10020A868);
  sub_100098F08();
  v92 = sub_1001F69B8();
  sub_1000D5000();
  v93 = 0;
  v94 = 0;
  v95 = v164;
  v96 = *(v164 + 16);
  v97 = 32 * v96;
  do
  {
    v98 = v93;
    v99 = *(&off_10027ADF0 + v94 + 32);
    if (v99 == 5)
    {
      v100 = 0;
    }

    else
    {
      v100 = &type metadata for Int;
    }

    if (v99 == 5)
    {
      v101 = 0;
    }

    else
    {
      v101 = *(&off_10027ADF0 + v94 + 32);
    }

    v164 = v95;
    v102 = *(v95 + 24);
    v103 = v96 + 1;
    if (v96 >= v102 >> 1)
    {
      sub_10003444C(v102 > 1, v96 + 1, 1);
      v95 = v164;
    }

    *(v95 + 16) = v103;
    v104 = (v95 + v97);
    v104[4] = v101;
    v104[5] = 0;
    v97 += 32;
    v93 = 1;
    v96 = v103;
    v94 = &_mh_execute_header.magic + 1;
    v104[6] = 0;
    v104[7] = v100;
  }

  while ((v98 & 1) == 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v164 = v92;
  sub_1001E627C(v95, 14, isUniquelyReferenced_nonNull_native, v106, v107, v108, v109, v110, v152, v153);
  sub_1000D50E4();

  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  v111 = sub_1001F69B8();
  sub_1000D47A0();
  v114 = v113 & v112;
  v116 = (v115 + 63) >> 6;
  v159 = v101;

  v117 = 0;
  v157 = v116;
  while (v114)
  {
    v118 = v117;
LABEL_29:
    v119 = __clz(__rbit64(v114)) | (v118 << 6);
    v161 = *(*(v159 + 48) + v119);
    v120 = *(*(v159 + 56) + 8 * v119);
    v121 = *(v120 + 16);
    if (v121)
    {
      v158 = v111;
      v163 = _swiftEmptyArrayStorage;

      sub_10003442C(0, v121, 0);
      v122 = v163;
      v123 = v120 + 32;
      do
      {
        sub_1000D51A0(v123, v162);
        v124 = sub_1000D5094();
        sub_1000D51A0(v124, v125);
        if (v166)
        {
          sub_1000D5024(v162);
          sub_1000D4C8C();
        }

        else
        {
          sub_1000D5024(&v164);
          [objc_allocWithZone(NSNull) init];
          v126 = sub_1000D4D04();
          v127 = sub_100019C0C(v126, &qword_1002B34A8, NSNull_ptr);
          v128 = sub_1000D4C08(v127);
          sub_1000D5024(v128);
        }

        v163 = v122;
        v130 = v122[2];
        v129 = v122[3];
        if (v130 >= v129 >> 1)
        {
          sub_10005669C(v129);
          sub_1000D50AC();
          sub_10003442C(v131, v132, v133);
          v122 = v163;
        }

        v122[2] = v130 + 1;
        sub_1000D51B8(&v122[4 * v130]);
        v123 += 32;
        --v121;
      }

      while (v121);
      v111 = v158;
    }

    else
    {

      v122 = _swiftEmptyArrayStorage;
    }

    v134 = swift_isUniquelyReferenced_nonNull_native();
    v164 = v111;
    v135 = sub_1001110F0(v161);
    v137 = *(v111 + 16);
    v138 = (v136 & 1) == 0;
    v139 = v137 + v138;
    if (__OFADD__(v137, v138))
    {
      goto LABEL_49;
    }

    v140 = v135;
    v141 = v136;
    sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
    if (sub_1001F7A98(v134, v139))
    {
      v142 = sub_1001110F0(v161);
      if ((v141 & 1) != (v143 & 1))
      {
        goto LABEL_51;
      }

      v140 = v142;
    }

    v114 &= v114 - 1;
    v144 = v164;
    if (v141)
    {
      *(*(v164 + 56) + 8 * v140) = v122;

      v117 = v118;
      v116 = v157;
      v111 = v144;
    }

    else
    {
      sub_1000D48B4(v164 + 8 * (v140 >> 6));
      *(v144[6] + v140) = v161;
      *(v144[7] + 8 * v140) = v122;

      v145 = v144[2];
      v146 = __OFADD__(v145, 1);
      v147 = v145 + 1;
      if (v146)
      {
        goto LABEL_50;
      }

      v111 = v144;
      v144[2] = v147;
      v117 = v118;
      v116 = v157;
    }
  }

  while (1)
  {
    v118 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      break;
    }

    if (v118 >= v116)
    {

      sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
      v148 = sub_1001C7504(v155, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v111);

      sub_1000D4F30();
      sub_1000D4168(v149, v150, v151);

      sub_100037B00();
      return;
    }

    v114 = *(&v164 + v118);
    ++v117;
    if (v114)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_1001F7FC8();
  __break(1u);
}

void sub_1000CBB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v27;
  a20 = v28;
  v190 = v29;
  v31 = sub_1000D4F18(v30, &a9);
  sub_10001A278();
  v195 = v32;
  __chkstk_darwin(v33);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v34);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v35);
  sub_1000AD704();
  sub_100099A14(v36);
  v37 = sub_1001F6578();
  sub_10001A278();
  *(&v182 + 1) = v38;
  __chkstk_darwin(v39);
  sub_1000D4804();
  sub_100099A14(v40);
  v41 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v42 = sub_100056658(v41);
  __chkstk_darwin(v42);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v43);
  sub_1000D491C();
  __chkstk_darwin(v44);
  sub_1000D47C8();
  __chkstk_darwin(v45);
  sub_1000D4930();
  __chkstk_darwin(v46);
  sub_100099918();
  __chkstk_darwin(v47);
  sub_1000D4EC0();
  v48 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v49 = sub_100056658(v48);
  __chkstk_darwin(v49);
  sub_100099484();
  sub_1000D4AE4();
  __chkstk_darwin(v50);
  sub_1000D4C7C();
  v51 = *(v20 + OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection);
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &a10, xmmword_100208ED0);
  sub_1000995D4();
  sub_100018460(v53, v54, v55, v37);
  v56 = sub_1000D4818();
  sub_100018460(v56, v57, v58, v31);
  v59 = sub_1000D48E8();
  sub_100018460(v59, v60, v61, v31);
  sub_1000995D4();
  sub_100018460(v62, v63, v64, v31);
  v204[0] = _swiftEmptyDictionarySingleton;
  if (v190)
  {
    v200 = type metadata for String;
    *&v198 = v186;
    *(&v198 + 1) = v190;
    v65 = v51;

    sub_100145028(&v198, 2);
  }

  else
  {
    v66 = v51;
  }

  sub_1000B3DE0();
  v200 = type metadata for String;
  *&v198 = 0xD000000000000015;
  *(&v198 + 1) = v67;
  sub_100145028(&v198, 16);
  v200 = &type metadata for Int;
  *&v198 = 1;
  sub_100145028(&v198, 14);
  v68 = sub_1000D4F60();
  sub_100057CB8(v68, v24, v69, v70);
  sub_1000994CC(v24);
  if (v71)
  {
    sub_10004BDE8(v24, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4C70();
    v72(v182, v24, v37);
    v73 = sub_1001F6528();
    v200 = type metadata for String;
    *&v198 = v73;
    *(&v198 + 1) = v74;
    sub_100145028(&v198, 22);
    v75 = sub_100099700();
    v76(v75);
  }

  sub_100057CB8(v25, v21, &unk_1002B3450, &qword_100202EE0);
  v77 = v51;
  if (sub_10001C990(v21, 1, v31) == 1)
  {
    sub_10004BDE8(v21, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4C70();
    v78(v184, v21, v31);
    sub_1001F6428();
    v80 = sub_1000D4CC0(v79);
    sub_100145028(v80, 30);
    v81 = sub_1000D50FC();
    v82(v81);
  }

  sub_100057CB8(v26, v22, &unk_1002B3450, &qword_100202EE0);
  sub_1000D49CC(v22);
  if (v71)
  {
    sub_10004BDE8(v22, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4C70();
    v83(*(&v184 + 1), v22, v31);
    sub_1001F6428();
    v85 = sub_1000D4CC0(v84);
    sub_100145028(v85, 29);
    v86 = sub_1000D50FC();
    v87(v86);
  }

  v88 = sub_1000D4CF8();
  sub_100057CB8(v88, v194, v89, v90);
  sub_1000D49CC(v194);
  if (v71)
  {
    sub_1000D4CF8();
    sub_1000D49EC();
    sub_10004BDE8(v91, v92, v93);
    sub_1000D49EC();
    sub_10004BDE8(v94, v95, v96);
    sub_1000D49EC();
    sub_10004BDE8(v97, v98, v99);
    v100 = sub_1000D4F60();
    sub_10004BDE8(v100, v101, v102);
    sub_1000D49EC();
  }

  else
  {
    sub_1000D4C70();
    v103 = sub_1000D4B3C();
    v104(v103, v194, v31);
    sub_1001F6428();
    v106 = sub_1000D4CC0(v105);
    sub_100145028(v106, 33);
    (*(v195 + 8))(v21, v31);
    sub_1000D4CF8();
    sub_1000D49EC();
    sub_10004BDE8(v107, v108, v109);
    sub_1000D49EC();
    sub_10004BDE8(v110, v111, v112);
    sub_1000D49EC();
    sub_10004BDE8(v113, v114, v115);
    v116 = sub_1000D4F60();
  }

  sub_10004BDE8(v116, v117, v118);
  v191 = v204[0];
  sub_1000183C4(&qword_1002B3498, &unk_10020A868);
  sub_100098F08();
  sub_100062888();
  v119 = sub_1001F69B8();
  sub_10006EA78(&off_10027AFA8, v120, v121, v122, v123, v124, v125, v126, v180, SWORD2(v180), SBYTE6(v180), SHIBYTE(v180), v182, v184, v185, v186, v187, v77, v191, v26, v25, v194, v195, v20, v23, v198, *(&v198 + 1));
  v128 = v127;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v198 = v119;
  v130 = &v198;
  sub_1001E627C(v128, 24, isUniquelyReferenced_nonNull_native, v131, v132, v133, v134, v135, v181, v183);

  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100062888();
  v196 = sub_1001F69B8();
  sub_1000D47A0();
  v138 = v137 & v136;
  v140 = (v139 + 63) >> 6;
  sub_1000D4D40(&a15);

  v141 = 0;
  v193 = v140;
  if (v138)
  {
    while (1)
    {
      v142 = v141;
LABEL_21:
      sub_1000D4C60();
      v197 = v143;
      v146 = *(v145 + 8 * v144);
      v147 = *(v146 + 16);
      if (v147)
      {
        v205[0] = _swiftEmptyArrayStorage;

        v130 = v205;
        sub_10003442C(0, v147, 0);
        v148 = v205[0];
        v149 = v146 + 32;
        do
        {
          sub_1000D4FC4(v149, v204);
          sub_1000D4FC4(v204, &v198);
          if (v200)
          {
            sub_1000D4E78(v204);
            sub_10003708C(&v198, v203);
            sub_10003708C(v203, &v198);
          }

          else
          {
            sub_1000D4E78(&v198);
            [objc_allocWithZone(NSNull) init];
            v150 = sub_1000D4D04();
            v200 = sub_100019C0C(v150, &qword_1002B34A8, NSNull_ptr);
            *&v198 = v205;
            sub_1000D4E78(v204);
          }

          v205[0] = v148;
          v152 = v148[2];
          v151 = v148[3];
          if (v152 >= v151 >> 1)
          {
            v153 = sub_10005669C(v151);
            v130 = v205;
            sub_10003442C(v153, v152 + 1, 1);
            v148 = v205[0];
          }

          v148[2] = v152 + 1;
          sub_10003708C(&v198, &v148[4 * v152 + 4]);
          v149 += 32;
          --v147;
        }

        while (v147);
      }

      else
      {

        v148 = _swiftEmptyArrayStorage;
      }

      v154 = sub_1000D51D0();
      *&v198 = v130;
      sub_1001110F0(v197);
      sub_1000D499C();
      v159 = v157 + v158;
      if (__OFADD__(v157, v158))
      {
        break;
      }

      v160 = v155;
      v161 = v156;
      sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
      if (sub_1001F7A98(v154, v159))
      {
        v162 = sub_1001110F0(v197);
        if ((v161 & 1) != (v163 & 1))
        {
          goto LABEL_47;
        }

        v160 = v162;
      }

      v138 &= v138 - 1;
      v196 = v198;
      if (v161)
      {
        *(*(v198 + 56) + 8 * v160) = v148;
      }

      else
      {
        sub_1000D50D8();
        sub_1000D48B4(v164);
        sub_1000D4E90(*(v165 + 48));
        *(v166 + 8 * v160) = v148;

        sub_1000D4C18();
        if (v169)
        {
          goto LABEL_45;
        }

        *(v168 + 16) = v167;
      }

      v141 = v142;
      v130 = &v198;
      v140 = v193;
      if (!v138)
      {
        goto LABEL_18;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1001F7FC8();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_18:
      v142 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v142 >= v140)
      {
        break;
      }

      v138 = *(&v198 + v142);
      ++v141;
      if (v138)
      {
        goto LABEL_21;
      }
    }

    type metadata accessor for Transaction();
    sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
    v170 = sub_1001C7504(v192, _swiftEmptyArrayStorage, &off_10027AF80, v196);

    *(v188 + 32) = v170;
    sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
    v200 = type metadata for String;
    *&v198 = 0x6F6C6E776F646552;
    *(&v198 + 1) = 0xEA00000000006461;
    *(v188 + 40) = sub_1001C76B0(0, &v198, 1u);
    sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
    v171 = sub_10007BB78(v188);
    sub_10006E930(v171);
    sub_1000D5058();
    v172 = sub_1001C7770(v188);
    v173 = sub_1000D4D58();
    sub_1000C6AC4(v173);
    v175 = v174;

    v204[0] = sub_1001F69B8();
    v176 = swift_allocObject();
    *(v176 + 16) = v204;
    v177 = sub_1000D4F90(&unk_100287C38);
    *(v177 + 16) = sub_1000D4758;
    *(v177 + 24) = v176;
    v201 = sub_1000D479C;
    v202 = v177;
    *&v198 = _NSConcreteStackBlock;
    *(&v198 + 1) = 1107296256;
    v199 = sub_1001CFE54;
    v200 = &unk_100287C50;
    v178 = _Block_copy(&v198);

    [v175 enumerateMemoryEntitiesUsingBlock:v178];
    _Block_release(v178);
    LOBYTE(v178) = swift_isEscapingClosureAtFileLocation();

    if (v178)
    {
      goto LABEL_46;
    }

    sub_10007BC0C(v179);

    sub_100037B00();
  }
}

void sub_1000CC83C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for Transaction();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v14 = a1;
    v8 = sub_1000C5388(15);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a4;
      sub_1001E6368(v7, v10, v11, isUniquelyReferenced_nonNull_native);
      *a4 = v15;
    }

    else
    {
    }
  }
}

void sub_1000CC928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100099620();
  a21 = v29;
  a22 = v30;
  v196 = v22;
  v195 = v31;
  *(&v198 + 1) = v32;
  v34 = sub_1000D4F18(v33, &v214);
  sub_10001A278();
  v204 = v35;
  __chkstk_darwin(v36);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v37);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v38);
  sub_1000AD704();
  sub_100099A14(v39);
  v40 = sub_1001F6578();
  sub_10001A278();
  *(&v188 + 1) = v41;
  __chkstk_darwin(v42);
  sub_1000D4804();
  sub_100099A14(v43);
  v44 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v45 = sub_100056658(v44);
  __chkstk_darwin(v45);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v46);
  sub_1000D48F8();
  __chkstk_darwin(v47);
  sub_1000D47C8();
  __chkstk_darwin(v48);
  sub_1000D484C();
  __chkstk_darwin(v49);
  sub_1000D47F0();
  __chkstk_darwin(v50);
  sub_1000D4EE0();
  v51 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v52 = sub_100056658(v51);
  __chkstk_darwin(v52);
  sub_100099484();
  sub_1000D497C();
  __chkstk_darwin(v53);
  sub_1000B3018();
  v192 = sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &v212, xmmword_10020A800);
  v55 = sub_1000D48D8();
  sub_100018460(v55, v56, v57, v40);
  sub_1000D4D40(&a10);
  sub_1000995D4();
  sub_100018460(v58, v59, v60, v34);
  v201 = v27;
  v61 = v24;
  sub_1000995D4();
  sub_100018460(v62, v63, v64, v34);
  sub_1000995D4();
  sub_100018460(v65, v66, v67, v34);
  v208[0] = _swiftEmptyDictionarySingleton;
  sub_1000D503C(&v213);
  v68 = sub_1000D4B48();
  sub_100145028(v68, 2);
  v211 = type metadata for String;
  v210 = v198;

  sub_100145028(&v210, 9);
  sub_1000D4BB0(&type metadata for Int);
  sub_100057CB8(v26, v28, &qword_1002AFA30, &unk_10020FA10);
  sub_1000994CC(v28);
  if (v69)
  {
    sub_10004BDE8(v28, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4E14();
    v70 = sub_1000D507C();
    v71(v70, v28, v40);
    v72 = sub_1001F6528();
    v211 = type metadata for String;
    *&v210 = v72;
    *(&v210 + 1) = v73;
    v74 = sub_1000D4B48();
    sub_100145028(v74, 22);
    v24 = *(&v188 + 1) + 8;
    (*(*(&v188 + 1) + 8))(v26, v40);
  }

  sub_100057CB8(v200, v23, &unk_1002B3450, &qword_100202EE0);
  if (sub_10001C990(v23, 1, v34) == 1)
  {
    sub_10004BDE8(v23, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4B30();
    v75 = sub_1000D4E08();
    v76(v75, v23, v34);
    sub_1001F6428();
    v211 = &type metadata for Double;
    v78 = sub_1000D4A04(v77);
    sub_100145028(v78, 30);
    sub_1000D4BD4();
    v79(v24, v34);
  }

  sub_100057CB8(v201, v25, &unk_1002B3450, &qword_100202EE0);
  v80 = sub_1000D4AC8();
  sub_1000D4A44(v80, v81, v34);
  if (v69)
  {
    sub_10004BDE8(v25, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4B30();
    sub_1000D4B3C();
    sub_1000D4F54();
    v82();
    sub_1001F6428();
    v211 = &type metadata for Double;
    v84 = sub_1000D4A04(v83);
    sub_100145028(v84, 29);
    v85 = sub_1000D4A98();
    v86(v85, v34);
  }

  sub_100057CB8(v61, v202, &unk_1002B3450, &qword_100202EE0);
  v87 = sub_1000D4AC8();
  sub_1000D4A44(v87, v88, v34);
  if (v69)
  {
    v101 = &unk_1002B3450;
    sub_1000D49EC();
    sub_10004BDE8(v89, v90, v91);
    sub_1000D49EC();
    sub_10004BDE8(v92, v93, v94);
    sub_1000D49EC();
    sub_10004BDE8(v95, v96, v97);
    sub_10004BDE8(v26, &qword_1002AFA30, &unk_10020FA10);
    sub_1000D49EC();
  }

  else
  {
    sub_1000D4B30();
    sub_1000D4B3C();
    sub_1000D4F54();
    v98();
    sub_1001F6428();
    v211 = &type metadata for Double;
    v100 = sub_1000D4A04(v99);
    sub_100145028(v100, 33);
    (*(v204 + 8))(v23, v34);
    v101 = &unk_1002B3450;
    sub_1000D49EC();
    sub_10004BDE8(v102, v103, v104);
    sub_1000D49EC();
    sub_10004BDE8(v105, v106, v107);
    sub_1000D49EC();
    sub_10004BDE8(v108, v109, v110);
    v111 = &qword_1002AFA30;
    v112 = &unk_10020FA10;
    v113 = v26;
  }

  sub_10004BDE8(v113, v111, v112);
  sub_1000183C4(&qword_1002B3498, &unk_10020A868);
  sub_100098F08();
  sub_100062888();
  sub_1001F69B8();
  sub_10006EA78(&off_10027ADA0, v114, v115, v116, v117, v118, v119, v120, v186, SWORD2(v186), SBYTE6(v186), SHIBYTE(v186), v188, v190, v191, v192, v193, v195, v196, v208[0], v198, v26, v200, v201, v202, v204, v206);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000D4FDC(isUniquelyReferenced_nonNull_native, v122, v123, v124, v125, v126, v127, v128, v187, v189);

  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100062888();
  v203 = sub_1001F69B8();
  sub_1000D47A0();
  v131 = v130 & v129;
  v133 = (v132 + 63) >> 6;
  sub_1000D4D40(&a10);

  v134 = 0;
  v199 = v133;
  if (v131)
  {
    while (1)
    {
      v135 = v134;
LABEL_18:
      sub_1000D4C60();
      v205 = v136;
      v139 = *(v138 + 8 * v137);
      v140 = *(v139 + 16);
      if (v140)
      {
        v209 = _swiftEmptyArrayStorage;

        v101 = &v209;
        v141 = sub_1000D4E48();
        sub_10003442C(v141, v142, v143);
        v144 = v209;
        v145 = v139 + 32;
        do
        {
          sub_1000D51A0(v145, v208);
          sub_1000D51A0(v208, &v210);
          if (v211)
          {
            sub_1000D5024(v208);
            sub_10003708C(&v210, v207);
            sub_10003708C(v207, &v210);
          }

          else
          {
            sub_1000D5024(&v210);
            [objc_allocWithZone(NSNull) init];
            v146 = sub_1000D4D04();
            v211 = sub_100019C0C(v146, &qword_1002B34A8, NSNull_ptr);
            *&v210 = &v209;
            sub_1000D5024(v208);
          }

          v209 = v144;
          v148 = v144[2];
          v147 = v144[3];
          if (v148 >= v147 >> 1)
          {
            sub_10005669C(v147);
            v101 = &v209;
            sub_1000D50AC();
            sub_10003442C(v149, v150, v151);
            v144 = v209;
          }

          v144[2] = v148 + 1;
          sub_10003708C(&v210, &v144[4 * v148 + 4]);
          v145 += 32;
          --v140;
        }

        while (v140);
      }

      else
      {

        v144 = _swiftEmptyArrayStorage;
      }

      v152 = sub_1000D51D0();
      *&v210 = v101;
      sub_1001110F0(v205);
      sub_1000D499C();
      v157 = v155 + v156;
      if (__OFADD__(v155, v156))
      {
        break;
      }

      v158 = v153;
      v159 = v154;
      sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
      if (sub_1001F7A98(v152, v157))
      {
        v160 = sub_1001110F0(v205);
        if ((v159 & 1) != (v161 & 1))
        {
          goto LABEL_42;
        }

        v158 = v160;
      }

      v131 &= v131 - 1;
      v203 = v210;
      if (v159)
      {
        *(*(v210 + 56) + 8 * v158) = v144;
      }

      else
      {
        sub_1000D50D8();
        sub_1000D48B4(v162);
        sub_1000D4E90(*(v163 + 48));
        *(v164 + 8 * v158) = v144;

        sub_1000D4C18();
        if (v167)
        {
          goto LABEL_41;
        }

        *(v166 + 16) = v165;
      }

      v134 = v135;
      v101 = &unk_1002B3450;
      v133 = v199;
      if (!v131)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    while (1)
    {
      v135 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        break;
      }

      if (v135 >= v133)
      {

        sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
        v168 = sub_1001C7504(v197, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v203);

        v194[4] = v168;
        sub_1001F6428();
        v170 = v169;
        v171 = sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
        v211 = &type metadata for Double;
        *&v210 = v170;
        v172 = sub_1000D4E68();
        v194[5] = sub_1001C76B0(v172, v173, v174);
        v175 = swift_initStackObject();
        *(v175 + 16) = xmmword_100208ED0;
        *(v175 + 32) = sub_1001C7698(4);
        sub_1001F6428();
        v211 = &type metadata for Double;
        v177 = sub_1000D4B9C(v176);
        *(v175 + 40) = sub_1001C76B0(v177, v178, v179);
        sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
        v180 = sub_10007BB78(v175);
        sub_10006E930(v180);
        sub_1000D4B18();

        v194[6] = sub_1001C76A4(v171);
        v181 = sub_10007BB78(v194);
        sub_10006E930(v181);
        sub_1000D4B18();

        v182 = sub_1001C7770(v171);
        sub_1000D4F30();
        sub_1000D4168(v183, v184, v185);

        sub_1000995E0();
        return;
      }

      v131 = *(&unk_1002B3450 + v135);
      ++v134;
      if (v131)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_1001F7FC8();
  __break(1u);
}

void sub_1000CD4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100099620();
  a21 = v28;
  a22 = v29;
  v207 = v22;
  v205 = v30;
  v206 = v31;
  v203 = v32;
  v208 = v33;
  v210 = v34;
  v36 = sub_1000D4F18(v35, &a14);
  sub_10001A278();
  v213 = v37;
  __chkstk_darwin(v38);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v39);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v40);
  sub_1000AD704();
  sub_100099A14(v41);
  v42 = sub_1001F6578();
  sub_10001A278();
  *&v201 = v43;
  __chkstk_darwin(v44);
  sub_1000D4804();
  sub_100099A14(v45);
  v46 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v47 = sub_100056658(v46);
  __chkstk_darwin(v47);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v48);
  sub_1000D491C();
  __chkstk_darwin(v49);
  sub_1000D4AE4();
  __chkstk_darwin(v50);
  sub_1000D4944();
  __chkstk_darwin(v51);
  sub_1000D47DC();
  __chkstk_darwin(v52);
  v54 = &v200 - v53;
  v55 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v56 = sub_100056658(v55);
  __chkstk_darwin(v56);
  sub_100099484();
  sub_1000D497C();
  __chkstk_darwin(v57);
  sub_1000D4EC0();
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &a9, xmmword_10020A800);
  v59 = sub_1000D4818();
  sub_100018460(v59, v60, v61, v42);
  v211 = v54;
  sub_1000995D4();
  sub_100018460(v62, v63, v64, v36);
  sub_1000D4D40(&a19);
  v65 = v23;
  sub_1000995D4();
  sub_100018460(v66, v67, v68, v36);
  sub_1000995D4();
  sub_100018460(v69, v70, v71, v36);
  v216[0] = _swiftEmptyDictionarySingleton;
  v219 = type metadata for String;
  sub_1000D503C(&a13);
  v72 = sub_1000D4B48();
  sub_100145028(v72, 2);
  sub_1000B3DE0();
  v219 = type metadata for String;
  sub_1000D4CD4(v73);
  sub_1000D4BB0(&type metadata for Int);
  v219 = type metadata for String;
  v74 = sub_10003A694();
  *&v218 = v75;
  *(&v218 + 1) = v74;

  sub_100145028(&v218, 15);
  v210 = v26;
  v76 = sub_100099718();
  sub_100057CB8(v76, v77, &qword_1002AFA30, &unk_10020FA10);
  sub_1000D49CC(v27);
  if (v78)
  {
    sub_10004BDE8(v27, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v79 = v201;
    sub_1000D4B30();
    v80 = v200;
    v81 = sub_100099718();
    v82(v81);
    v83 = sub_1001F6528();
    v219 = type metadata for String;
    *&v218 = v83;
    *(&v218 + 1) = v84;
    v85 = sub_1000D4B48();
    sub_100145028(v85, 22);
    (*(v79 + 8))(v80, v42);
  }

  sub_100057CB8(v211, v25, &unk_1002B3450, &qword_100202EE0);
  v86 = sub_1000D4B00();
  v88 = sub_10001C990(v86, v87, v36);
  v89 = v213;
  if (v88 == 1)
  {
    sub_10004BDE8(v25, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4E14();
    v90 = sub_1000D4D34();
    v91(v90, v25, v36);
    sub_1001F6428();
    v219 = &type metadata for Double;
    v93 = sub_1000D4A04(v92);
    sub_100145028(v93, 30);
    v94 = sub_1000D50C4();
    v95(v94);
  }

  v96 = sub_1000D4CF8();
  sub_100057CB8(v96, v24, v97, v98);
  v99 = sub_1000D4B0C();
  sub_1000D4A44(v99, v100, v36);
  v101 = v212;
  if (v78)
  {
    sub_10004BDE8(v24, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4E14();
    v102 = sub_1000D4D34();
    v103(v102, v24, v36);
    sub_1001F6428();
    v219 = &type metadata for Double;
    v105 = sub_1000D4A04(v104);
    sub_100145028(v105, 29);
    v106 = sub_1000D50C4();
    v107(v106);
  }

  sub_100057CB8(v65, v101, &unk_1002B3450, &qword_100202EE0);
  v108 = sub_1000D4B00();
  sub_1000D4A44(v108, v109, v36);
  if (v78)
  {
    v127 = &unk_1002B3450;
    sub_1000D4D10();
    sub_10004BDE8(v110, v111, v112);
    sub_1000D4CF8();
    sub_1000D4D10();
    sub_10004BDE8(v113, v114, v115);
    sub_1000D4D10();
    sub_10004BDE8(v116, v117, v118);
    v119 = sub_10003A694();
    sub_10004BDE8(v119, v120, v121);
    v137 = sub_1000D4B78();
    v139 = &qword_100202EE0;
  }

  else
  {
    sub_1000D4E14();
    v122 = *(&v202 + 1);
    v123 = sub_1000D50B8();
    v124(v123);
    sub_1001F6428();
    v219 = &type metadata for Double;
    v126 = sub_1000D4A04(v125);
    sub_100145028(v126, 33);
    (*(v89 + 8))(v122, v36);
    v127 = &unk_1002B3450;
    sub_1000D4D10();
    sub_10004BDE8(v128, v129, v130);
    sub_1000D4CF8();
    sub_1000D4D10();
    sub_10004BDE8(v131, v132, v133);
    sub_1000D4D10();
    sub_10004BDE8(v134, v135, v136);
    v137 = sub_10003A694();
  }

  sub_10004BDE8(v137, v138, v139);
  v208 = v216[0];
  sub_1000183C4(&qword_1002B3498, &unk_10020A868);
  sub_100098F08();
  sub_100062888();
  sub_1001F69B8();
  sub_10006EA78(&off_10027AD08, v140, v141, v142, v143, v144, v145, v146, v200, SWORD2(v200), SBYTE6(v200), SHIBYTE(v200), v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, *&v215[0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000D4FDC(isUniquelyReferenced_nonNull_native, v148, v149, v150, v151, v152, v153, v154, v200, v201);

  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100062888();
  v213 = sub_1001F69B8();
  sub_1000D47A0();
  v157 = v156 & v155;
  v159 = (v158 + 63) >> 6;
  sub_1000D4D40(&a16);

  v160 = 0;
  v210 = &unk_1002B3450;
  v209 = v159;
  if (v157)
  {
    while (1)
    {
      v161 = v160;
LABEL_18:
      sub_1000D4C60();
      LODWORD(v214) = v162;
      v159 = *(v164 + 8 * v163);
      v165 = *(v159 + 16);
      v212 = v159;
      if (v165)
      {
        v217 = _swiftEmptyArrayStorage;

        v127 = &v217;
        sub_10003442C(0, v165, 0);
        v166 = v217;
        v159 += 32;
        do
        {
          sub_1000D4FC4(v159, v216);
          sub_1000D4FC4(v216, &v218);
          if (v219)
          {
            sub_1000D4E78(v216);
            sub_10003708C(&v218, v215);
            sub_10003708C(v215, &v218);
          }

          else
          {
            sub_1000D4E78(&v218);
            [objc_allocWithZone(NSNull) init];
            v167 = sub_1000D4D04();
            v219 = sub_100019C0C(v167, &qword_1002B34A8, NSNull_ptr);
            *&v218 = &v217;
            sub_1000D4E78(v216);
          }

          v217 = v166;
          v169 = v166[2];
          v168 = v166[3];
          if (v169 >= v168 >> 1)
          {
            v170 = sub_10005669C(v168);
            v127 = &v217;
            sub_10003442C(v170, v169 + 1, 1);
            v166 = v217;
          }

          v166[2] = v169 + 1;
          sub_10003708C(&v218, &v166[4 * v169 + 4]);
          v159 += 32;
          --v165;
        }

        while (v165);
      }

      else
      {

        v166 = _swiftEmptyArrayStorage;
      }

      v171 = sub_1000D51D0();
      *&v218 = v127;
      sub_1001110F0(v214);
      sub_1000D499C();
      v175 = v160 + v174;
      if (__OFADD__(v160, v174))
      {
        break;
      }

      v176 = v172;
      v159 = v173;
      sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
      if (sub_1001F7A98(v171, v175))
      {
        v177 = sub_1001110F0(v214);
        if ((v159 & 1) != (v178 & 1))
        {
          sub_1001F7FC8();
          __break(1u);
          return;
        }

        v176 = v177;
      }

      v157 &= v157 - 1;
      v213 = v218;
      if (v159)
      {
        *(*(v218 + 56) + 8 * v176) = v166;
      }

      else
      {
        sub_1000D50D8();
        sub_1000D48B4(v179);
        sub_1000D4E90(*(v180 + 48));
        *(v181 + 8 * v176) = v166;

        sub_1000D4C18();
        if (v183)
        {
          goto LABEL_44;
        }

        *(v182 + 16) = v160;
      }

      v160 = v161;
      v127 = v210;
      v159 = v209;
      if (!v157)
      {
        goto LABEL_15;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_10005669C(v160);
    sub_1001F6F58();
    goto LABEL_40;
  }

  while (1)
  {
LABEL_15:
    v161 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v161 >= v159)
    {
      break;
    }

    v157 = v127[v161];
    ++v160;
    if (v157)
    {
      goto LABEL_18;
    }
  }

  sub_1000D4E2C();

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  v184 = sub_1001C7504(v208, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v213);

  v185 = v204;
  *(v204 + 32) = v184;
  v159 = v205;
  sub_1001F6428();
  v187 = v186;
  sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
  v219 = &type metadata for Double;
  *&v218 = v187;
  v188 = sub_1000D4E68();
  *(v185 + 40) = sub_1001C76B0(v188, v189, v190);
  sub_1001F6428();
  v219 = &type metadata for Double;
  v192 = sub_1000D4B9C(v191);
  *(v185 + 48) = sub_1001C76B0(v192, v193, v194);
  v216[0] = v185;
  if (!v206)
  {
    goto LABEL_41;
  }

  v219 = type metadata for String;
  *&v218 = v203;
  *(&v218 + 1) = v206;

  sub_1001C76B0(9, &v218, 1u);
  sub_1001F6F08();
  v159 = *((v216[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v160 = *((v216[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (v159 >= v160 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  sub_1001F6F98();
  v185 = v216[0];
LABEL_41:
  sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
  v195 = sub_10007BB78(v185);
  sub_10006E930(v195);
  sub_1000D4B18();

  v196 = sub_1001C7770(v159);
  sub_1000D4F30();
  sub_1000D4168(v197, v198, v199);

  sub_1000995E0();
}

void sub_1000CE054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v27;
  a20 = v28;
  v475 = v21;
  v497 = v29;
  v31 = sub_1000D4F18(v30, &a16);
  sub_10001A278();
  v501 = v32;
  __chkstk_darwin(v33);
  sub_10004FE10();
  v504 = v34;
  sub_100099510();
  __chkstk_darwin(v35);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v36);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v37);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v38);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v39);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v40);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v41);
  sub_100099670();
  v498 = v42;
  sub_100099510();
  __chkstk_darwin(v43);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v44);
  sub_1000AD704();
  sub_100099A14(v45);
  v46 = sub_1001F6578();
  sub_10001A278();
  v494 = v47;
  __chkstk_darwin(v48);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v49);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v50);
  sub_1000AD704();
  sub_100099A14(v51);
  v52 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v53 = sub_100056658(v52);
  __chkstk_darwin(v53);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v54);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v55);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v56);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v57);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v58);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v59);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v60);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v61);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v62);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v63);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v64);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v65);
  sub_100099670();
  v502 = v66;
  sub_100099510();
  __chkstk_darwin(v67);
  sub_1000D491C();
  __chkstk_darwin(v68);
  sub_100099918();
  __chkstk_darwin(v69);
  sub_1000D47F0();
  __chkstk_darwin(v70);
  sub_1000D47C8();
  __chkstk_darwin(v71);
  sub_1000B3018();
  v72 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v73 = sub_100056658(v72);
  __chkstk_darwin(v73);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v74);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v75);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v76);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v77);
  sub_1000D47DC();
  __chkstk_darwin(v78);
  v80 = &v472 - v79;
  sub_1000995D4();
  sub_100018460(v81, v82, v83, v46);
  v503 = v24;
  v84 = sub_1000D48D8();
  sub_100018460(v84, v85, v86, v31);
  v500 = v22;
  sub_1000995D4();
  sub_100018460(v87, v88, v89, v31);
  v499 = v25;
  v90 = sub_1000D4818();
  v505 = v31;
  sub_100018460(v90, v91, v92, v31);
  v506[0] = _swiftEmptyDictionarySingleton;
  v510 = type metadata for String;
  v93 = sub_1000D4CF8();
  v508 = v94;
  v509 = v93;

  v95 = sub_1000D4A74();
  sub_100145028(v95, 2);
  v510 = &type metadata for Bool;
  LOBYTE(v508) = 1;
  sub_100145028(&v508, 5);
  v510 = &type metadata for Int;
  v508 = 1;
  sub_100145028(&v508, 14);
  sub_100057CB8(v80, v20, &qword_1002AFA30, &unk_10020FA10);
  v96 = sub_1000D4B24();
  sub_1000D4A44(v96, v97, v46);
  v493 = v46;
  if (v98)
  {
    sub_10004BDE8(v20, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4B30();
    v99 = sub_1000D4B3C();
    v100(v99, v20, v46);
    v101 = sub_1001F6528();
    v510 = type metadata for String;
    v508 = v101;
    v509 = v102;
    v103 = sub_1000D4A74();
    sub_100145028(v103, 22);
    v104 = sub_1000D4A98();
    v105(v104, v46);
  }

  sub_100057CB8(v503, v26, &unk_1002B3450, &qword_100202EE0);
  v106 = v505;
  v107 = sub_10001C990(v26, 1, v505);
  v108 = v500;
  if (v107 == 1)
  {
    sub_10004BDE8(v26, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A24();
    v109 = sub_1000D507C();
    v110(v109, v26, v106);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v112 = sub_1000D4828(v111);
    sub_100145028(v112, 30);
    sub_1000D4BD4();
    v113 = sub_1000D4A80();
    v114(v113);
  }

  v115 = v499;
  sub_100057CB8(v108, v23, &unk_1002B3450, &qword_100202EE0);
  v116 = sub_1000D4B0C();
  sub_1000D4A44(v116, v117, v106);
  if (v98)
  {
    sub_10004BDE8(v23, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A24();
    v118 = sub_1000D507C();
    v119(v118, v23, v106);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v121 = sub_1000D4828(v120);
    sub_100145028(v121, 29);
    sub_1000D4BD4();
    v122 = sub_1000D4A80();
    v123(v122);
  }

  sub_100057CB8(v115, v502, &unk_1002B3450, &qword_100202EE0);
  v124 = sub_1000D4B00();
  sub_1000D4A44(v124, v125, v106);
  if (v98)
  {
    sub_1000D49F8();
    sub_10004BDE8(v126, v127, v128);
    sub_1000D49F8();
    sub_10004BDE8(v129, v130, v131);
    sub_1000D49F8();
    sub_10004BDE8(v132, v133, v134);
    sub_10004BDE8(v80, &qword_1002AFA30, &unk_10020FA10);
    v152 = sub_1000D498C();
  }

  else
  {
    sub_1000D4A24();
    v135 = v498;
    v136 = sub_1000D50B8();
    v137(v136);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v139 = sub_1000D4828(v138);
    sub_100145028(v139, 33);
    sub_1000D4BD4();
    v140(v135, v106);
    sub_1000D49F8();
    sub_10004BDE8(v141, v142, v143);
    sub_1000D49F8();
    sub_10004BDE8(v144, v145, v146);
    sub_1000D49F8();
    sub_10004BDE8(v147, v148, v149);
    v150 = &qword_1002AFA30;
    v151 = &unk_10020FA10;
    v152 = v80;
  }

  sub_10004BDE8(v152, v150, v151);
  v483 = v506[0];
  v153 = sub_1000183C4(&qword_1002B3498, &unk_10020A868);
  v154 = sub_100098F08();
  v155 = _swiftEmptyArrayStorage;
  v491 = v153;
  sub_1001F69B8();
  sub_1000D4EF0();
  v156 = v508;
  v157 = *(v508 + 24);
  if (*(v508 + 16) >= v157 >> 1)
  {
    goto LABEL_149;
  }

LABEL_14:
  v158 = sub_1000D4F6C();
  sub_1000D5180(v158, v159, v160, v161, v162, v163, v164, v165, v472, v473);
  sub_1000D50E4();

  v492 = sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  v496 = v154;
  v166 = sub_1001F69B8();
  sub_1000D47A0();
  v169 = v168 & v167;
  sub_1000D4DA4();
  sub_1000D4EB0();
  if (!v169)
  {
    goto LABEL_16;
  }

  do
  {
    v154 = v157;
LABEL_19:
    sub_1000D4BF4(__clz(__rbit64(v169)) | (v154 << 6));
    v172 = *(v171 + 8 * v170);
    v173 = v172[2];
    v502 = v172;
    if (v173)
    {
      v499 = v166;
      v507 = _swiftEmptyArrayStorage;

      sub_1000D4D84();
      v174 = v507;
      v175 = (v172 + 4);
      do
      {
        sub_100057CB8(v175, v506, &qword_1002B34A0, &qword_1002009E0);
        v176 = sub_1000D5094();
        sub_100057CB8(v176, v177, &qword_1002B34A0, &qword_1002009E0);
        if (v510)
        {
          sub_10004BDE8(v506, &qword_1002B34A0, &qword_1002009E0);
          sub_1000D4C8C();
        }

        else
        {
          sub_10004BDE8(&v508, &qword_1002B34A0, &qword_1002009E0);
          [objc_allocWithZone(NSNull) init];
          v178 = sub_1000D4D04();
          v179 = sub_100019C0C(v178, &qword_1002B34A8, NSNull_ptr);
          v180 = sub_1000D4C08(v179);
          sub_10004BDE8(v180, &qword_1002B34A0, &qword_1002009E0);
        }

        v507 = v174;
        v182 = v174[2];
        v181 = v174[3];
        if (v182 >= v181 >> 1)
        {
          v183 = sub_10005669C(v181);
          sub_1000D4FA8(v183);
          v174 = v507;
        }

        v174[2] = v182 + 1;
        sub_1000D51B8(&v174[4 * v182]);
        v175 += 32;
        --v173;
      }

      while (v173);
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1000D4DC4();
    sub_1000D499C();
    v187 = v157 + v186;
    if (__OFADD__(v157, v186))
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v156 = v184;
    v188 = v185;
    sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
    v189 = sub_1000D4EA0();
    if (sub_1001F7A98(v189, v187))
    {
      v155 = v508;
      v190 = sub_1001110F0(v503);
      if ((v188 & 1) != (v191 & 1))
      {
LABEL_150:
        sub_1001F7FC8();
        __break(1u);
        JUMPOUT(0x1000CFEA8);
      }

      v156 = v190;
    }

    v169 &= v169 - 1;
    v166 = v508;
    if (v188)
    {
      sub_1000D4D64();
    }

    else
    {
      sub_1000D4860();
      v192 = v166[2];
      v193 = __OFADD__(v192, 1);
      v157 = v192 + 1;
      if (v193)
      {
        goto LABEL_146;
      }

      v166[2] = v157;
    }

    sub_1000D4E38();
  }

  while (v169);
  while (1)
  {
LABEL_16:
    v154 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v154 >= v156)
    {
      break;
    }

    v169 = *(v155 + 8 * v154);
    ++v157;
    if (v169)
    {
      goto LABEL_19;
    }
  }

  v490 = sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  v474 = sub_1001C7504(v483, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v166);

  v194 = v495;
  v195 = sub_1000D4818();
  sub_100018460(v195, v196, v197, v493);
  v198 = v488;
  sub_1000995D4();
  v199 = v505;
  sub_100018460(v200, v201, v202, v505);
  v203 = sub_1000D48D8();
  sub_100018460(v203, v204, v205, v199);
  v206 = v487;
  v207 = sub_1000D48E8();
  sub_100018460(v207, v208, v209, v199);
  v506[0] = _swiftEmptyDictionarySingleton;
  v510 = type metadata for String;
  v210 = sub_1000D4CF8();
  v508 = v211;
  v509 = v210;

  v212 = sub_1000D4A74();
  sub_100145028(v212, 2);
  v510 = &type metadata for Bool;
  LOBYTE(v508) = 1;
  sub_100145028(&v508, 5);
  v510 = &type metadata for Bool;
  LOBYTE(v508) = 0;
  sub_100145028(&v508, 17);
  v213 = v484;
  sub_100057CB8(v194, v484, &qword_1002AFA30, &unk_10020FA10);
  sub_1000D49AC(v213);
  if (v98)
  {
    sub_10004BDE8(v213, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4A68();
    v214 = sub_1000D4F48();
    v215(v214);
    v216 = sub_1001F6528();
    v510 = type metadata for String;
    v508 = v216;
    v509 = v217;
    v218 = sub_1000D4A74();
    sub_100145028(v218, 22);
    sub_1000D4AF4();
    v219 = sub_100062888();
    v220(v219);
  }

  v221 = v489;
  v222 = v485;
  sub_100057CB8(v198, v485, &unk_1002B3450, &qword_100202EE0);
  sub_1000994CC(v222);
  if (v98)
  {
    sub_10004BDE8(v222, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    sub_1000D4E08();
    sub_1000D49EC();
    v223();
    sub_1001F6428();
    v510 = &type metadata for Double;
    v225 = sub_1000D4828(v224);
    sub_100145028(v225, 30);
    sub_1000D4AF4();
    v226 = sub_1000D4E20();
    v227(v226);
  }

  v228 = v486;
  v229 = sub_1000D4B78();
  sub_100057CB8(v229, v230, v231, v232);
  sub_1000994CC(v228);
  if (v98)
  {
    sub_10004BDE8(v228, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    sub_1000D4E08();
    sub_1000D49EC();
    v233();
    sub_1001F6428();
    v510 = &type metadata for Double;
    v235 = sub_1000D4828(v234);
    sub_100145028(v235, 29);
    sub_1000D4AF4();
    v236 = sub_1000D4E20();
    v237(v236);
  }

  sub_100057CB8(v206, v221, &unk_1002B3450, &qword_100202EE0);
  sub_1000994CC(v221);
  if (v98)
  {
    sub_1000D49F8();
    sub_10004BDE8(v238, v239, v240);
    v241 = sub_1000D498C();
    sub_10004BDE8(v241, v242, v243);
    sub_1000D49F8();
    sub_10004BDE8(v244, v245, v246);
    v247 = sub_1000D4E2C();
    sub_10004BDE8(v247, v248, v249);
    sub_1000D49F8();
  }

  else
  {
    sub_1000D4A68();
    v250 = sub_1000D4E08();
    v251(v250, v221, v199);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v253 = sub_1000D4828(v252);
    sub_100145028(v253, 33);
    sub_1000D4AF4();
    v254 = sub_1000D4E20();
    v255(v254);
    sub_1000D49F8();
    sub_10004BDE8(v256, v257, v258);
    v259 = sub_1000D498C();
    sub_10004BDE8(v259, v260, v261);
    sub_1000D49F8();
    sub_10004BDE8(v262, v263, v264);
    v265 = sub_1000D4E2C();
  }

  sub_10004BDE8(v265, v266, v267);
  v489 = v506[0];
  v155 = _swiftEmptyArrayStorage;
  sub_1001F69B8();
  sub_1000D4EF0();
  v268 = v508;
  v269 = *(v508 + 24);
  if (*(v508 + 16) >= v269 >> 1)
  {
    sub_10005669C(v269);
    sub_1000D50A0();
    sub_10003444C(v469, v470, v471);
    v268 = v508;
  }

  v270 = sub_1000D4F6C();
  sub_1000D5180(v270, v271, v272, v273, v274, v275, v276, v277, v472, v473);
  sub_1000D50E4();

  v278 = sub_1001F69B8();
  sub_1000D47A0();
  v154 = v280 & v279;
  sub_1000D4DA4();
  sub_1000D4EB0();
  if (!v154)
  {
    goto LABEL_55;
  }

  do
  {
    v281 = v157;
LABEL_58:
    sub_1000D4BF4(__clz(__rbit64(v154)) | (v281 << 6));
    v284 = *(v283 + 8 * v282);
    v285 = v284[2];
    v502 = v284;
    if (v285)
    {
      v499 = v278;
      v507 = _swiftEmptyArrayStorage;

      sub_1000D4D84();
      v286 = v507;
      v287 = (v284 + 4);
      do
      {
        sub_100057CB8(v287, v506, &qword_1002B34A0, &qword_1002009E0);
        v288 = sub_1000D5094();
        sub_100057CB8(v288, v289, &qword_1002B34A0, &qword_1002009E0);
        if (v510)
        {
          sub_1000D5088();
          sub_10004BDE8(v290, v291, v292);
          sub_1000D4C8C();
        }

        else
        {
          sub_1000D5088();
          sub_10004BDE8(v293, v294, v295);
          [objc_allocWithZone(NSNull) init];
          v296 = sub_1000D4D04();
          v297 = sub_100019C0C(v296, &qword_1002B34A8, NSNull_ptr);
          sub_1000D4C08(v297);
          sub_1000D5088();
          sub_10004BDE8(v298, v299, v300);
        }

        v507 = v286;
        v302 = v286[2];
        v301 = v286[3];
        if (v302 >= v301 >> 1)
        {
          v303 = sub_10005669C(v301);
          sub_1000D4FA8(v303);
          v286 = v507;
        }

        v286[2] = v302 + 1;
        sub_1000D51B8(&v286[4 * v302]);
        v287 += 32;
        --v285;
      }

      while (v285);
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1000D4DC4();
    sub_1000D499C();
    v307 = v157 + v306;
    if (__OFADD__(v157, v306))
    {
      goto LABEL_144;
    }

    v268 = v304;
    v308 = v305;
    sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
    v309 = sub_1000D4EA0();
    if (sub_1001F7A98(v309, v307))
    {
      v155 = v508;
      v310 = sub_1001110F0(v503);
      if ((v308 & 1) != (v311 & 1))
      {
        goto LABEL_150;
      }

      v268 = v310;
    }

    v154 &= v154 - 1;
    v278 = v508;
    if (v308)
    {
      sub_1000D4D64();
    }

    else
    {
      sub_1000D4860();
      v312 = v278[2];
      v193 = __OFADD__(v312, 1);
      v157 = v312 + 1;
      if (v193)
      {
        goto LABEL_147;
      }

      v278[2] = v157;
    }

    sub_1000D4E38();
  }

  while (v154);
  while (1)
  {
LABEL_55:
    v281 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      goto LABEL_139;
    }

    if (v281 >= v268)
    {
      break;
    }

    v154 = *(v155 + 8 * v281);
    ++v157;
    if (v154)
    {
      goto LABEL_58;
    }
  }

  v495 = _swiftEmptyArrayStorage;
  v313 = sub_1001C7504(v489, &off_10027AE68, _swiftEmptyArrayStorage, v278);

  v314 = v478;
  v315 = sub_1000D4818();
  sub_100018460(v315, v316, v317, v493);
  sub_1000995D4();
  v318 = v505;
  sub_100018460(v319, v320, v321, v505);
  v322 = v481;
  sub_1000995D4();
  sub_100018460(v323, v324, v325, v318);
  v326 = v480;
  v327 = sub_1000D48D8();
  sub_100018460(v327, v328, v329, v318);
  v506[0] = _swiftEmptyDictionarySingleton;
  v510 = type metadata for String;
  v330 = sub_1000D4CF8();
  v508 = v331;
  v509 = v330;

  v332 = sub_1000D4A74();
  sub_100145028(v332, 2);
  sub_1000D5160(&type metadata for Bool);
  v333 = v476;
  sub_100057CB8(v314, v476, &qword_1002AFA30, &unk_10020FA10);
  sub_1000994CC(v333);
  v488 = v313;
  if (v98)
  {
    sub_10004BDE8(v333, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4E08();
    sub_1000D49EC();
    v334();
    v335 = sub_1001F6528();
    v510 = type metadata for String;
    v508 = v335;
    v509 = v336;
    v337 = sub_1000D4A74();
    sub_100145028(v337, 22);
    v338 = sub_1000D4E20();
    v339(v338);
  }

  v340 = v482;
  v341 = v477;
  v342 = sub_1000D4F48();
  sub_100057CB8(v342, v343, v344, v345);
  sub_1000D4A44(v341, 1, v318);
  if (v98)
  {
    sub_10004BDE8(v341, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A24();
    v346 = sub_1000D4B3C();
    v347(v346, v341, v318);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v349 = sub_1000D4828(v348);
    sub_100145028(v349, 30);
    v350 = sub_1000D4A98();
    v351(v350, v318);
  }

  v352 = v479;
  sub_100057CB8(v322, v479, &unk_1002B3450, &qword_100202EE0);
  sub_1000D4A44(v352, 1, v318);
  if (v98)
  {
    sub_10004BDE8(v352, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A24();
    v353 = sub_1000D4B3C();
    v354(v353, v352, v318);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v356 = sub_1000D4828(v355);
    sub_100145028(v356, 29);
    v357 = sub_1000D4A98();
    v358(v357, v318);
  }

  sub_100057CB8(v326, v340, &unk_1002B3450, &qword_100202EE0);
  sub_1000D4A44(v340, 1, v318);
  if (v98)
  {
    v359 = sub_1000D498C();
    sub_10004BDE8(v359, v360, v361);
    sub_1000D49F8();
    sub_10004BDE8(v362, v363, v364);
    sub_1000D49F8();
    sub_10004BDE8(v365, v366, v367);
    sub_10004BDE8(v314, &qword_1002AFA30, &unk_10020FA10);
    sub_1000D49F8();
  }

  else
  {
    sub_1000D4A24();
    v368 = sub_1000D4B3C();
    v369(v368, v340, v318);
    sub_1001F6428();
    v510 = &type metadata for Double;
    v371 = sub_1000D4828(v370);
    sub_100145028(v371, 33);
    v372 = sub_1000D4A98();
    v373(v372, v318);
    v374 = sub_1000D498C();
    sub_10004BDE8(v374, v375, v376);
    sub_1000D49F8();
    sub_10004BDE8(v377, v378, v379);
    sub_1000D49F8();
    sub_10004BDE8(v380, v381, v382);
    v383 = &qword_1002AFA30;
    v384 = &unk_10020FA10;
    v385 = v314;
  }

  sub_10004BDE8(v385, v383, v384);
  v497 = v506[0];
  v503 = sub_1001F69B8();
  sub_1000D5000();
  v386 = v508;
  sub_1000D5138();
  sub_1000D5124();
  sub_1000D5110();
  while (2)
  {
    v395 = v387;
    v396 = *(&off_10027AEB8 + v388 + 32);
    v397 = 0;
    v398 = v392;
    v399 = 0xEA0000000000656CLL;
    v400 = 0;
    v401 = 0;
    switch(v396)
    {
      case 1:
        v398 = v391;
        v399 = v389;
        goto LABEL_95;
      case 2:
        v398 = v390 + 2;
        v399 = v394;
        goto LABEL_95;
      case 3:
        v398 = 0xD000000000000015;
        v399 = v393;
        goto LABEL_95;
      case 4:
        goto LABEL_96;
      default:
LABEL_95:
        v397 = v398;
        v400 = v399;
        v401 = type metadata for String;
LABEL_96:
        v508 = v386;
        v403 = *(v386 + 16);
        v402 = *(v386 + 24);
        if (v403 >= v402 >> 1)
        {
          sub_10005669C(v402);
          sub_1000D50A0();
          v502 = v405;
          sub_10003444C(v406, v407, v408);
          sub_1000D5110();
          sub_1000D5124();
          sub_1000D5138();
          v386 = v508;
        }

        *(v386 + 16) = v403 + 1;
        v404 = (v386 + 32 * v403);
        v404[4] = v397;
        v404[5] = v400;
        v404[6] = 0;
        v404[7] = v401;
        v387 = 1;
        v388 = &_mh_execute_header.magic + 1;
        if ((v395 & 1) == 0)
        {
          continue;
        }

        v409 = v503;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v508 = v409;
        v155 = &v508;
        sub_1001E627C(v386, 16, isUniquelyReferenced_nonNull_native, v411, v412, v413, v414, v415, v472, v473);
        sub_1000D50E4();

        v416 = sub_1001F69B8();
        sub_1000D47A0();
        v419 = v418 & v417;
        sub_1000D4DA4();
        sub_1000D4EB0();
        if (v419)
        {
          goto LABEL_100;
        }

        break;
    }

    break;
  }

  while (1)
  {
LABEL_101:
    v154 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      goto LABEL_140;
    }

    if (v154 >= v386)
    {
      break;
    }

    v419 = *(v155 + 8 * v154);
    ++v157;
    if (v419)
    {
      while (1)
      {
        sub_1000D4BF4(__clz(__rbit64(v419)) | (v154 << 6));
        v422 = *(v421 + 8 * v420);
        v423 = v422[2];
        v502 = v422;
        if (v423)
        {
          v499 = v416;
          v507 = _swiftEmptyArrayStorage;

          sub_1000D4D84();
          v424 = v507;
          v425 = (v422 + 4);
          do
          {
            sub_100057CB8(v425, v506, &qword_1002B34A0, &qword_1002009E0);
            v426 = sub_1000D5094();
            sub_100057CB8(v426, v427, &qword_1002B34A0, &qword_1002009E0);
            if (v510)
            {
              sub_1000D4F54();
              sub_10004BDE8(v428, v429, v430);
              sub_1000D4C8C();
            }

            else
            {
              sub_1000D4F54();
              sub_10004BDE8(v431, v432, v433);
              [objc_allocWithZone(NSNull) init];
              v434 = sub_1000D4D04();
              v435 = sub_100019C0C(v434, &qword_1002B34A8, NSNull_ptr);
              sub_1000D4C08(v435);
              sub_1000D4F54();
              sub_10004BDE8(v436, v437, v438);
            }

            v507 = v424;
            v440 = v424[2];
            v439 = v424[3];
            if (v440 >= v439 >> 1)
            {
              v441 = sub_10005669C(v439);
              sub_1000D4FA8(v441);
              v424 = v507;
            }

            v424[2] = v440 + 1;
            sub_1000D51B8(&v424[4 * v440]);
            v425 += 32;
            --v423;
          }

          while (v423);
        }

        else
        {
        }

        swift_isUniquelyReferenced_nonNull_native();
        sub_1000D4DC4();
        sub_1000D499C();
        v445 = v157 + v444;
        if (__OFADD__(v157, v444))
        {
          break;
        }

        v386 = v442;
        v446 = v443;
        sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
        v447 = sub_1000D4EA0();
        if (sub_1001F7A98(v447, v445))
        {
          v155 = v508;
          v448 = sub_1001110F0(v503);
          if ((v446 & 1) != (v449 & 1))
          {
            goto LABEL_150;
          }

          v386 = v448;
        }

        v419 &= v419 - 1;
        v416 = v508;
        if (v446)
        {
          sub_1000D4D64();
        }

        else
        {
          sub_1000D4860();
          v450 = v416[2];
          v193 = __OFADD__(v450, 1);
          v157 = v450 + 1;
          if (v193)
          {
            goto LABEL_148;
          }

          v416[2] = v157;
        }

        sub_1000D4E38();
        if (!v419)
        {
          goto LABEL_101;
        }

LABEL_100:
        v154 = v157;
      }

LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_10005669C(v157);
      sub_1000D50A0();
      sub_10003444C(v466, v467, v468);
      v156 = v508;
      goto LABEL_14;
    }
  }

  v451 = sub_1001C7504(v497, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v416);

  v452 = sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
  sub_1000183C4(&qword_1002B34C0, &qword_1002008E0);
  v453 = swift_allocObject();
  *(v453 + 16) = xmmword_100208B20;
  v454 = v474;
  *(v453 + 32) = v474;
  v455 = v488;
  *(v453 + 56) = v452;
  *(v453 + 64) = v455;
  *(v453 + 120) = v452;
  *(v453 + 88) = v452;
  *(v453 + 96) = v451;
  v503 = v454;
  v502 = v455;
  v500 = v451;
  v499 = sub_1001C76A4(v453);
  sub_1000D4F30();
  v155 = v475;
  v459 = sub_1000D4168(v456, v457, v458);
  v508 = _swiftEmptyArrayStorage;
  v460 = sub_10013B560();
  v461 = 0;
  v462 = (v501 + 8);
  while (v460 != v461)
  {
    if ((v459 & 0xC000000000000001) != 0)
    {
      v463 = sub_1001F7808();
    }

    else
    {
      v157 = *((v459 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v461 >= v157)
      {
        goto LABEL_142;
      }

      v463 = *(v459 + 8 * v461 + 32);
    }

    v154 = v463;
    if (__OFADD__(v461, 1))
    {
      goto LABEL_141;
    }

    if (sub_1000C257C() < 3u || (v464 = v504, sub_1001F64E8(), v155 = sub_1000C18DC(), (*v462)(v464, v505), (v155 & 1) != 0))
    {
      v155 = &v508;
      sub_1001F6F08();
      v465 = *((v508 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v508 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v465 >> 1)
      {
        sub_10005669C(v465);
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v495 = v508;
      ++v461;
    }

    else
    {

      ++v461;
    }
  }

  sub_1000D4E2C();
  sub_100037B00();
}

void sub_1000CFEE4()
{
  sub_100037C08();
  v100 = v4;
  v101 = v5;
  v99 = v6;
  v7 = sub_1001F6508();
  sub_10001A278();
  v105 = v8;
  __chkstk_darwin(v9);
  sub_10004FE10();
  v98[3] = v10;
  sub_100099510();
  __chkstk_darwin(v11);
  sub_1000D4908();
  __chkstk_darwin(v12);
  sub_1000AD704();
  v98[1] = v13;
  v14 = sub_1000D4DE4();
  sub_10001A278();
  v98[0] = v15;
  __chkstk_darwin(v16);
  sub_100023510();
  v19 = v18 - v17;
  v20 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v21 = sub_100056658(v20);
  __chkstk_darwin(v21);
  sub_10004FE10();
  v102 = v22;
  sub_100099510();
  __chkstk_darwin(v23);
  sub_1000D47C8();
  __chkstk_darwin(v24);
  sub_1000D47DC();
  __chkstk_darwin(v25);
  sub_100099918();
  __chkstk_darwin(v26);
  sub_1000D48F8();
  __chkstk_darwin(v27);
  v29 = v98 - v28;
  v30 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v31 = sub_100056658(v30);
  __chkstk_darwin(v31);
  sub_100099484();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  sub_1000D4EC0();
  v36 = sub_1000D4818();
  sub_100018460(v36, v37, v38, v14);
  v103 = v29;
  sub_1000995D4();
  sub_100018460(v39, v40, v41, v7);
  sub_1000995D4();
  sub_100018460(v42, v43, v44, v7);
  v104 = v3;
  v45 = sub_1000D48E8();
  sub_100018460(v45, v46, v47, v7);
  v109 = _swiftEmptyDictionarySingleton;
  v108 = type metadata for String;
  v106 = v99;
  v107 = v100;

  v48 = sub_1000D4B90();
  sub_100145028(v48, 2);
  v108 = &type metadata for UInt;
  v106 = v101;
  sub_100145028(&v106, 7);
  sub_100057CB8(v2, v34, &qword_1002AFA30, &unk_10020FA10);
  v49 = sub_1000D4B0C();
  sub_1000D4A44(v49, v50, v14);
  if (v51)
  {
    sub_10004BDE8(v34, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v52 = v98[0];
    sub_1000D4C70();
    v53(v19, v34, v14);
    v54 = sub_1001F6528();
    v108 = type metadata for String;
    v106 = v54;
    v107 = v55;
    v56 = sub_1000D4B90();
    sub_100145028(v56, 22);
    (*(v52 + 8))(v19, v14);
  }

  v57 = sub_1000D4A80();
  sub_100057CB8(v57, v58, v59, v60);
  v61 = sub_1000D4B24();
  if (sub_10001C990(v61, v62, v7) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v63();
    sub_1001F6428();
    v108 = &type metadata for Double;
    v65 = sub_1000D4A34(v64);
    sub_100145028(v65, 30);
    sub_1000D4B6C();
    v66 = sub_100099700();
    v67(v66);
  }

  v68 = sub_1000D4D58();
  sub_100057CB8(v68, v69, v70, v71);
  sub_1000994CC(v1);
  if (v51)
  {
    sub_10004BDE8(v1, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    v72 = sub_1000A3CB4();
    v73(v72);
    sub_1001F6428();
    v108 = &type metadata for Double;
    v75 = sub_1000D4A34(v74);
    sub_100145028(v75, 29);
    v76 = sub_1000D48C4();
    v77(v76);
  }

  v78 = v102;
  v79 = sub_1000D4D4C();
  sub_100057CB8(v79, v80, v81, v82);
  sub_1000994CC(v78);
  if (v51)
  {
    sub_10004BDE8(v78, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v83();
    sub_1001F6428();
    v108 = &type metadata for Double;
    v85 = sub_1000D4A34(v84);
    sub_100145028(v85, 33);
    v86 = sub_1000D4AA8();
    v87(v86);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4A5C();
  sub_10004BDE8(v88, v89, v90);
  sub_1000D4A5C();
  sub_10004BDE8(v91, v92, v93);
  sub_1000D4A5C();
  sub_10004BDE8(v94, v95, v96);
  sub_10004BDE8(v2, &qword_1002AFA30, &unk_10020FA10);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v97 = sub_1001F69B8();
  sub_1000D4958(v97);
  sub_1000D5058();

  sub_1000D3FD0(_swiftEmptyArrayStorage);

  sub_100037B00();
}

unint64_t sub_1000D04D4(uint64_t a1)
{
  sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
  v5[3] = &type metadata for UInt;
  v5[0] = a1;
  v2 = sub_1001C76B0(7, v5, 0);
  v3 = sub_1000D3FD0(v2);

  return v3;
}

void sub_1000D0560()
{
  sub_100037C08();
  v82 = v7;
  v8 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v9);
  sub_10004FE10();
  v80 = v10;
  sub_100099510();
  __chkstk_darwin(v11);
  sub_1000D4908();
  __chkstk_darwin(v12);
  sub_1000AD704();
  v79 = v13;
  v14 = sub_1000D4DE4();
  sub_10001A278();
  v78 = v15;
  __chkstk_darwin(v16);
  sub_100023510();
  v19 = v18 - v17;
  v20 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v21 = sub_100056658(v20);
  __chkstk_darwin(v21);
  sub_10004FE10();
  v81 = v22;
  sub_100099510();
  __chkstk_darwin(v23);
  sub_1000D484C();
  __chkstk_darwin(v24);
  sub_1000D4944();
  __chkstk_darwin(v25);
  sub_1000D47DC();
  __chkstk_darwin(v26);
  sub_1000D4930();
  __chkstk_darwin(v27);
  sub_1000B3018();
  v28 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v29 = sub_100056658(v28);
  __chkstk_darwin(v29);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v30);
  sub_1000D4AD4();
  v31 = sub_1000D48E8();
  sub_100018460(v31, v32, v33, v14);
  v34 = sub_1000D48D8();
  sub_100018460(v34, v35, v36, v8);
  sub_1000995D4();
  sub_100018460(v37, v38, v39, v8);
  sub_1000995D4();
  sub_100018460(v40, v41, v42, v8);

  v43 = sub_1000D4B90();
  sub_100145028(v43, 2);
  v44 = sub_1000D50F0();
  sub_100057CB8(v44, v45, &qword_1002AFA30, &unk_10020FA10);
  v46 = sub_1000D4AC8();
  sub_1000D4A44(v46, v47, v14);
  if (v48)
  {
    sub_10004BDE8(v4, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v49 = sub_1000D4C28();
    v50(v49);
    sub_1001F6528();
    v51 = sub_1000D4B90();
    sub_100145028(v51, 22);
    (*(v78 + 8))(v19, v14);
  }

  sub_100057CB8(v5, v2, &unk_1002B3450, &qword_100202EE0);
  if (sub_10001C990(v2, 1, v8) == 1)
  {
    sub_10004BDE8(v2, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    sub_1000D4B60();
    v52();
    sub_1001F6428();
    v54 = sub_1000D4A34(v53);
    sub_100145028(v54, 30);
    sub_1000D4AF4();
    v55(v79, v8);
  }

  sub_100057CB8(v1, v3, &unk_1002B3450, &qword_100202EE0);
  sub_1000D49AC(v3);
  if (v48)
  {
    sub_10004BDE8(v3, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v56 = sub_1000D4F3C();
    v57(v56);
    sub_1001F6428();
    v59 = sub_1000D4A34(v58);
    sub_100145028(v59, 29);
    v60 = sub_1000D4AB8();
    v61(v60);
  }

  sub_100057CB8(v0, v81, &unk_1002B3450, &qword_100202EE0);
  sub_1000D49AC(v81);
  if (v48)
  {
    sub_10004BDE8(v81, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v62(v80, v81, v8);
    sub_1001F6428();
    v64 = sub_1000D4A34(v63);
    sub_100145028(v64, 33);
    v65 = sub_1000AD850();
    v66(v65);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4A5C();
  sub_10004BDE8(v67, v68, v69);
  sub_1000D4A5C();
  sub_10004BDE8(v70, v71, v72);
  sub_1000D4A5C();
  sub_10004BDE8(v73, v74, v75);
  sub_10004BDE8(v6, &qword_1002AFA30, &unk_10020FA10);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v76 = sub_1001F69B8();
  sub_1000D4958(v76);
  sub_1000D5058();

  if (v82)
  {
    v77 = &off_10027AE18;
  }

  else
  {
    v77 = 0;
  }

  sub_1000D4054(_swiftEmptyArrayStorage, v77, 0x7FFFFFFFFFFFFFFFLL);

  sub_100037B00();
}

void sub_1000D0B68()
{
  sub_100099620();
  v106 = v0;
  v107 = v6;
  v8 = v7;
  v108 = v9;
  v11 = v10;
  v105 = v12;
  v13 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v14);
  sub_10004FE10();
  sub_100099510();
  __chkstk_darwin(v15);
  sub_100099670();
  v103 = v16;
  sub_100099510();
  __chkstk_darwin(v17);
  sub_1000AD704();
  sub_100099A14(v18);
  v19 = sub_1001F6578();
  sub_10001A278();
  v102 = v20;
  __chkstk_darwin(v21);
  sub_1000D4804();
  sub_100099A14(v22);
  v23 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v24 = sub_100056658(v23);
  __chkstk_darwin(v24);
  sub_10004FE10();
  v104 = v25;
  sub_100099510();
  __chkstk_darwin(v26);
  sub_1000D491C();
  __chkstk_darwin(v27);
  sub_1000D4944();
  __chkstk_darwin(v28);
  sub_1000D47F0();
  __chkstk_darwin(v29);
  sub_1000D47C8();
  __chkstk_darwin(v30);
  sub_1000D4EE0();
  v31 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v32 = sub_100056658(v31);
  __chkstk_darwin(v32);
  sub_100099484();
  sub_1000D4AE4();
  __chkstk_darwin(v33);
  sub_1000D4C7C();
  sub_1000995D4();
  sub_100018460(v34, v35, v36, v19);
  sub_1000995D4();
  sub_100018460(v37, v38, v39, v13);
  sub_1000995D4();
  sub_100018460(v40, v41, v42, v13);
  v43 = sub_1000D4818();
  sub_100018460(v43, v44, v45, v13);
  v116 = _swiftEmptyDictionarySingleton;
  v112 = type metadata for String;
  v109 = v105;
  v110 = v11;

  sub_100145028(&v109, 2);
  v112 = &type metadata for Int;
  v109 = 1;
  sub_100145028(&v109, 14);
  sub_100057CB8(v4, v5, &qword_1002AFA30, &unk_10020FA10);
  v46 = sub_1000D4B00();
  sub_1000D4A44(v46, v47, v19);
  if (v48)
  {
    sub_10004BDE8(v5, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4A68();
    v49 = sub_1000D4B3C();
    v50(v49, v5, v19);
    v51 = sub_1001F6528();
    v112 = type metadata for String;
    v109 = v51;
    v110 = v52;
    sub_100145028(&v109, 22);
    (*(v102 + 8))(v2, v19);
  }

  v53 = sub_1000D4D28();
  sub_100057CB8(v53, v54, v55, v56);
  if (sub_10001C990(v1, 1, v13) == 1)
  {
    sub_10004BDE8(v1, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v57 = sub_1000D4B3C();
    v58(v57, v1, v13);
    sub_1001F6428();
    v60 = sub_1000D4BE0(v59);
    sub_100145028(v60, 30);
    sub_1000D4AF4();
    v61(v2, v13);
  }

  sub_100057CB8(v2, v3, &unk_1002B3450, &qword_100202EE0);
  sub_1000D49CC(v3);
  if (v48)
  {
    sub_10004BDE8(v3, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v62(v103, v3, v13);
    sub_1001F6428();
    v64 = sub_1000D4BE0(v63);
    sub_100145028(v64, 29);
    sub_1000D4AF4();
    v65 = sub_1000D4F3C();
    v66(v65);
  }

  v67 = sub_1000D4F48();
  sub_100057CB8(v67, v68, v69, v70);
  sub_1000D49CC(v104);
  if (v48)
  {
    sub_10004BDE8(v104, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    sub_1000D4D10();
    v71();
    sub_1001F6428();
    v73 = sub_1000D4BE0(v72);
    sub_100145028(v73, 33);
    v74 = sub_1000D4F3C();
    v75(v74);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4B60();
  sub_10004BDE8(v76, v77, v78);
  sub_1000D4B60();
  sub_10004BDE8(v79, v80, v81);
  sub_1000D4B60();
  sub_10004BDE8(v82, v83, v84);
  sub_10004BDE8(v4, &qword_1002AFA30, &unk_10020FA10);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  v85 = sub_1001F69B8();
  v86 = sub_1000AD850();
  v88 = sub_1001C7504(v86, v87, _swiftEmptyArrayStorage, v85);

  v89 = sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
  v112 = &type metadata for Double;
  v109 = v8;
  v90 = sub_1001C76B0(23, &v109, 4u);
  v91 = sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
  sub_1000183C4(&qword_1002B34C0, &qword_1002008E0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1001FEBE0;
  *(v92 + 32) = v88;
  *(v92 + 88) = v89;
  *(v92 + 56) = v91;
  *(v92 + 64) = v90;
  v93 = v88;
  v94 = v90;
  v95 = sub_1001C7770(v92);
  type metadata accessor for Transaction();
  v96 = *(v106 + OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection);
  sub_1000C6AC4(v96);
  v98 = v97;

  v116 = _swiftEmptyArrayStorage;
  v115 = 0;
  sub_100073F34(v107, 0);
  v99 = swift_allocObject();
  *(v99 + 16) = &v116;
  *(v99 + 24) = v107;
  *(v99 + 32) = &v115;
  *(v99 + 40) = v108 & 1;
  v100 = sub_1000D4F90(&unk_100287BC0);
  *(v100 + 16) = sub_1000D473C;
  *(v100 + 24) = v99;
  v113 = sub_1000D479C;
  v114 = v100;
  v109 = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_1001CFE54;
  v112 = &unk_100287BD8;
  v101 = _Block_copy(&v109);

  [v98 enumerateMemoryEntitiesUsingBlock:v101];

  _Block_release(v101);
  LOBYTE(v93) = swift_isEscapingClosureAtFileLocation();

  if (v93)
  {
    __break(1u);
  }

  else
  {

    sub_1000995E0();
  }
}

void sub_1000D13E0(void *a1, uint64_t a2, _BYTE *a3, unint64_t *a4, uint64_t a5, _BYTE *a6, char a7)
{
  if (*a4 >> 62)
  {
    v12 = sub_1001F7B48();
  }

  else
  {
    v12 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= a5)
  {
    *a3 = 1;
    *a6 = 1;
    return;
  }

  type metadata accessor for Transaction();
  if (swift_dynamicCastClass())
  {
    v13 = a1;
    v14 = v13;
    if (a7)
    {
      if ((sub_1000C2858() & 1) == 0)
      {
LABEL_7:

        return;
      }
    }

    else if ((sub_1000C2468(v13) & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_1001F6F08();
    sub_1000375FC();
    sub_1001F6F98();
  }
}

void sub_1000D1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100099620();
  a21 = v28;
  a22 = v29;
  v144 = v22;
  v143 = v30;
  v137[6] = v31;
  v138 = v32;
  v34 = sub_1000D4F18(v33, &a12);
  sub_10001A278();
  v142 = v35;
  __chkstk_darwin(v36);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v37);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v38);
  sub_1000AD704();
  sub_100099A14(v39);
  v40 = sub_1001F6578();
  sub_10001A278();
  v137[2] = v41;
  __chkstk_darwin(v42);
  sub_1000D4804();
  sub_100099A14(v43);
  v44 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v45 = sub_100056658(v44);
  __chkstk_darwin(v45);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v46);
  sub_100099918();
  __chkstk_darwin(v47);
  sub_1000D491C();
  __chkstk_darwin(v48);
  sub_1000D47F0();
  __chkstk_darwin(v49);
  sub_1000D47DC();
  __chkstk_darwin(v50);
  v52 = v137 - v51;
  v53 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v54 = sub_100056658(v53);
  __chkstk_darwin(v54);
  sub_100099484();
  sub_1000D4AE4();
  __chkstk_darwin(v55);
  sub_1000D4C7C();
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &a18, xmmword_100208ED0);
  sub_1000995D4();
  sub_100018460(v57, v58, v59, v40);
  v139 = v52;
  sub_1000995D4();
  sub_100018460(v60, v61, v62, v34);
  sub_1000D4D40(&a16);
  sub_1000995D4();
  sub_100018460(v63, v64, v65, v34);
  v140 = v26;
  v66 = sub_1000D4818();
  sub_100018460(v66, v67, v68, v34);
  v148 = _swiftEmptyDictionarySingleton;
  v147 = type metadata for String;
  sub_1000D503C(&a11);
  v69 = sub_1000D4B54();
  sub_100145028(v69, 2);
  sub_1000B3DE0();
  v147 = type metadata for String;
  sub_1000D4CD4(v70);
  sub_1000D4BB0(&type metadata for Int);
  v147 = type metadata for String;
  v71 = sub_1000D5070();
  v145 = v72;
  v146 = v71;

  sub_100145028(&v145, 15);
  v138 = v24;
  sub_100057CB8(v24, v25, &qword_1002AFA30, &unk_10020FA10);
  sub_1000D49CC(v25);
  if (v73)
  {
    sub_10004BDE8(v25, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    sub_1000D4A68();
    v74 = sub_1000D4D34();
    v75(v74, v25, v40);
    v76 = sub_1001F6528();
    v147 = type metadata for String;
    v145 = v76;
    v146 = v77;
    v78 = sub_1000D4B54();
    sub_100145028(v78, 22);
    v79 = sub_1000D4F3C();
    v80(v79);
  }

  sub_100057CB8(v139, v23, &unk_1002B3450, &qword_100202EE0);
  v81 = sub_1000D4B0C();
  if (sub_10001C990(v81, v82, v34) == 1)
  {
    sub_10004BDE8(v23, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4C70();
    v83 = sub_1000D4D34();
    v84(v83, v23, v34);
    sub_1001F6428();
    v147 = &type metadata for Double;
    v86 = sub_1000D4A14(v85);
    sub_100145028(v86, 30);
    v87 = sub_1000D4AB8();
    v88(v87);
  }

  v89 = sub_100099718();
  sub_100057CB8(v89, v90, v91, v92);
  sub_1000D49AC(v27);
  if (v73)
  {
    sub_10004BDE8(v27, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4C70();
    v93 = sub_1000D4D34();
    v94(v93, v27, v34);
    sub_1001F6428();
    v147 = &type metadata for Double;
    v96 = sub_1000D4A14(v95);
    sub_100145028(v96, 29);
    v97 = sub_1000D4AB8();
    v98(v97);
  }

  v99 = v137[8];
  v100 = sub_1000D4B78();
  sub_100057CB8(v100, v101, v102, v103);
  sub_1000D49AC(v99);
  if (v73)
  {
    sub_10004BDE8(v99, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4C70();
    v104 = sub_1000D4F48();
    v105(v104);
    sub_1001F6428();
    v147 = &type metadata for Double;
    v107 = sub_1000D4A14(v106);
    sub_100145028(v107, 33);
    v108 = sub_100062888();
    v109(v108);
  }

  v110 = sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4B60();
  sub_10004BDE8(v111, v112, v113);
  sub_1000D4B60();
  sub_10004BDE8(v114, v115, v116);
  sub_1000D4B60();
  sub_10004BDE8(v117, v118, v119);
  v120 = sub_1000D5070();
  sub_10004BDE8(v120, v121, v122);
  v123 = sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v124 = sub_1001F69B8();
  sub_1000D4958(v124);
  sub_100013EFC();

  v125 = v141;
  *(v141 + 32) = v110;
  sub_1001F6428();
  v127 = v126;
  sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
  v147 = &type metadata for Double;
  v145 = v127;
  v128 = sub_1000D4E68();
  *(v125 + 40) = sub_1001C76B0(v128, v129, v130);
  sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
  v131 = sub_100013EFC();
  v132 = sub_10007BB78(v131);
  sub_10006E930(v132);
  sub_1000D4B18();

  v133 = sub_1001C7770(v123);
  sub_1000183C4(&qword_1002B3490, &qword_10020A860);
  v134 = swift_initStackObject();
  *(v134 + 16) = xmmword_1001FE9E0;
  *(v134 + 32) = 11;
  *(v134 + 40) = sub_1001F6B58();
  *(v134 + 48) = v135;
  v136 = sub_1000D4168(v133, v134, 1);

  swift_setDeallocating();
  sub_1001E5718();
  sub_1000C46EC(v136);

  sub_1000995E0();
}

void sub_1000D1C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v26;
  a20 = v27;
  v146 = v20;
  v145 = v28;
  v144 = v29;
  v143 = v30;
  v137 = v31;
  v136 = v32;
  v140 = v33;
  v35 = sub_1000D4F18(v34, &a9);
  sub_10001A278();
  v142 = v36;
  __chkstk_darwin(v37);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v38);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v39);
  sub_1000AD704();
  sub_100099A14(v40);
  v41 = sub_1001F6578();
  sub_10001A278();
  v135[0] = v42;
  __chkstk_darwin(v43);
  sub_100023510();
  v46 = v45 - v44;
  v47 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v48 = sub_100056658(v47);
  __chkstk_darwin(v48);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v49);
  sub_1000D4944();
  __chkstk_darwin(v50);
  sub_1000D47F0();
  __chkstk_darwin(v51);
  sub_1000D47C8();
  __chkstk_darwin(v52);
  sub_1000D484C();
  __chkstk_darwin(v53);
  v55 = v135 - v54;
  v56 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v57 = sub_100056658(v56);
  __chkstk_darwin(v57);
  sub_100099484();
  sub_1000D497C();
  __chkstk_darwin(v58);
  sub_1000D4ED0();
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &a11, xmmword_10020A810);
  sub_1000995D4();
  sub_100018460(v60, v61, v62, v41);
  v141 = v55;
  sub_1000995D4();
  sub_100018460(v63, v64, v65, v35);
  sub_1000995D4();
  sub_100018460(v66, v67, v68, v35);
  sub_1000995D4();
  sub_100018460(v69, v70, v71, v35);
  v150 = _swiftEmptyDictionarySingleton;
  v149 = type metadata for String;
  v147 = v136;
  v148 = v137;

  v72 = sub_1000D4B54();
  sub_100145028(v72, 2);
  sub_1000B3DE0();
  v149 = type metadata for String;
  sub_1000D4CD4(v73);
  v149 = type metadata for String;
  v74 = sub_1000D5070();
  v147 = v75;
  v148 = v74;

  sub_100145028(&v147, 15);
  v140 = v23;
  sub_100057CB8(v23, v25, &qword_1002AFA30, &unk_10020FA10);
  sub_1000D4A44(v25, 1, v41);
  if (v76)
  {
    sub_10004BDE8(v25, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v77 = v135[0];
    sub_1000D4A8C();
    sub_1000D5088();
    v78();
    v79 = sub_1001F6528();
    v149 = type metadata for String;
    v147 = v79;
    v148 = v80;
    v81 = sub_1000D4B54();
    sub_100145028(v81, 22);
    (*(v77 + 8))(v46, v41);
  }

  sub_100057CB8(v141, v24, &unk_1002B3450, &qword_100202EE0);
  v82 = sub_10001C990(v24, 1, v35);
  v83 = v142;
  if (v82 == 1)
  {
    sub_10004BDE8(v24, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v84 = sub_1000D4E08();
    v85(v84, v24, v35);
    sub_1001F6428();
    v149 = &type metadata for Double;
    v87 = sub_1000D4A14(v86);
    sub_100145028(v87, 30);
    sub_1000D4AF4();
    v88(v22, v35);
  }

  v89 = sub_1000D4E20();
  sub_100057CB8(v89, v90, v91, v92);
  sub_1000D4A44(v21, 1, v35);
  if (v76)
  {
    sub_10004BDE8(v21, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v93 = v135[2];
    v94 = sub_1000D4D28();
    v95(v94);
    sub_1001F6428();
    v149 = &type metadata for Double;
    v97 = sub_1000D4A14(v96);
    sub_100145028(v97, 29);
    sub_1000D4AF4();
    v98(v93, v35);
  }

  v99 = v138;
  v100 = sub_1000D4D4C();
  sub_100057CB8(v100, v101, v102, v103);
  sub_1000D4A44(v99, 1, v35);
  if (v76)
  {
    sub_10004BDE8(v99, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v104 = sub_1000D4D34();
    v105(v104, v99, v35);
    sub_1001F6428();
    v149 = &type metadata for Double;
    v107 = sub_1000D4A14(v106);
    sub_100145028(v107, 33);
    (*(v83 + 8))(v21, v35);
  }

  v108 = sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4A5C();
  sub_10004BDE8(v109, v110, v111);
  sub_1000D4A5C();
  sub_10004BDE8(v112, v113, v114);
  sub_1000D4A5C();
  sub_10004BDE8(v115, v116, v117);
  v118 = sub_1000D5070();
  sub_10004BDE8(v118, v119, v120);
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v121 = sub_1001F69B8();
  sub_1000D4958(v121);
  sub_100013EFC();

  v122 = v139;
  v139[4] = v108;
  sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
  v149 = &type metadata for Int;
  v147 = 3;
  v122[5] = sub_1001C76B0(14, &v147, 1u);
  sub_1001F6428();
  v149 = &type metadata for Double;
  v124 = sub_1000D4B9C(v123);
  v122[6] = sub_1001C76B0(v124, v125, v126);
  v149 = sub_1000183C4(&qword_1002B32F0, &unk_10020A070);
  v147 = v144;
  LOBYTE(v148) = v145 & 1;
  v122[7] = sub_1001C76B0(7, &v147, 1u);
  sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
  v127 = sub_10007BB78(v122);
  sub_10006E930(v127);
  sub_1000D4B18();

  v128 = sub_1001C7770(v122);
  sub_1000183C4(&qword_1002B3490, &qword_10020A860);
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_1001FE9E0;
  *(v129 + 32) = 11;
  *(v129 + 40) = sub_1001F6B58();
  *(v129 + 48) = v130;
  v131 = sub_1000AD850();
  v133 = sub_1000D4168(v131, v132, 1);

  swift_setDeallocating();
  sub_1001E5718();
  if (sub_10013B560())
  {
    sub_1001C19A8();
    if ((v133 & 0xC000000000000001) != 0)
    {
      sub_1001F7808();
    }

    else
    {
      v134 = *(v133 + 32);
    }

    sub_100013EFC();
  }

  else
  {
  }

  sub_100037B00();
}

void *sub_1000D2524()
{
  v9 = &_swiftEmptySetSingleton;
  v10 = &_swiftEmptySetSingleton;
  v1 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection);
  v2 = sub_1001F6B48();
  v3 = sub_1000D4F90(&unk_100287AA8);
  *(v3 + 16) = &v10;
  *(v3 + 24) = &v9;
  v4 = sub_1000D4F90(&unk_100287AD0);
  *(v4 + 16) = sub_1000D4710;
  *(v4 + 24) = v3;
  v8[4] = sub_1000D4718;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001DF340;
  v8[3] = &unk_100287AE8;
  v5 = _Block_copy(v8);

  [v1 executeQuery:v2 withResults:v5];

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = v10;

    return v7;
  }

  return result;
}

void sub_1000D26C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v4 = sub_1001F6688();
    sub_100019C94(v4, qword_1002E6180);
    swift_errorRetain();
    v5 = sub_1001F6668();
    v6 = sub_1001F7298();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_1001F7FE8();
      v11 = sub_1000E4544(v9, v10, aBlock);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error fetching used IDs: %s", v7, 0xCu);
      sub_100019CCC(v8);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000D4720;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1000D4728;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001DF298;
    aBlock[3] = &unk_100287B60;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    [v18 enumerateRowsUsingBlock:v17];

    _Block_release(v17);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }
  }
}

void sub_1000D29B0(void *a1)
{
  if (a1)
  {
    v5 = a1;
    v1 = sub_1001F6B48();
    v2 = [v5 numberForColumnName:v1];

    if (v2)
    {
      sub_1001D193C(&v6, [v2 unsignedIntegerValue]);
    }

    v3 = sub_1001F6B48();
    v4 = [v5 numberForColumnName:v3];

    if (v4)
    {
      sub_1001D193C(&v6, [v4 unsignedIntegerValue]);
    }

    else
    {
    }
  }
}

void sub_1000D2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100099620();
  a21 = v28;
  a22 = v29;
  v197 = v22;
  v200 = v30;
  v198 = v31;
  v33 = sub_1000D4F18(v32, &a18);
  sub_10001A278();
  v204 = v34;
  __chkstk_darwin(v35);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v36);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v37);
  sub_1000AD704();
  sub_100099A14(v38);
  v39 = sub_1001F6578();
  sub_10001A278();
  v196 = v40;
  __chkstk_darwin(v41);
  sub_100023510();
  v44 = v43 - v42;
  v45 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v46 = sub_100056658(v45);
  __chkstk_darwin(v46);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v47);
  sub_1000D484C();
  __chkstk_darwin(v48);
  sub_1000D47C8();
  __chkstk_darwin(v49);
  sub_1000D47F0();
  __chkstk_darwin(v50);
  sub_1000D4930();
  __chkstk_darwin(v51);
  sub_1000D4EE0();
  v52 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v53 = sub_100056658(v52);
  __chkstk_darwin(v53);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v54);
  sub_1000B3018();
  v55 = sub_1000D48D8();
  sub_100018460(v55, v56, v57, v39);
  sub_1000D4D40(&a12);
  sub_1000995D4();
  sub_100018460(v58, v59, v60, v33);
  v202 = v22;
  sub_1000995D4();
  sub_100018460(v61, v62, v63, v33);
  v201 = v27;
  v64 = sub_1000D4818();
  sub_100018460(v64, v65, v66, v33);
  v207[0] = _swiftEmptyDictionarySingleton;
  v210 = type metadata for String;
  *&v209 = v198;
  *(&v209 + 1) = v200;

  sub_100145028(&v209, 2);
  v200 = v26;
  sub_100057CB8(v26, v25, &qword_1002AFA30, &unk_10020FA10);
  v67 = sub_1000D4AC8();
  sub_1000D4A44(v67, v68, v39);
  if (v69)
  {
    sub_10004BDE8(v25, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v70 = sub_1000D4C28();
    v71(v70);
    v72 = sub_1001F6528();
    v210 = type metadata for String;
    *&v209 = v72;
    *(&v209 + 1) = v73;
    sub_100145028(&v209, 22);
    v26 = v196 + 8;
    (*(v196 + 8))(v44, v39);
  }

  v74 = sub_1000D4D58();
  sub_100057CB8(v74, v75, v76, v77);
  if (sub_10001C990(v23, 1, v33) == 1)
  {
    sub_10004BDE8(v23, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v78 = sub_1000D507C();
    v79(v78, v23, v33);
    sub_1001F6428();
    v81 = sub_1000D4C4C(v80);
    sub_100145028(v81, 30);
    sub_1000D4AF4();
    v82(v26, v33);
  }

  sub_100057CB8(v202, v24, &unk_1002B3450, &qword_100202EE0);
  sub_1000994CC(v24);
  if (v69)
  {
    sub_10004BDE8(v24, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v83 = sub_1000D4B3C();
    v84(v83, v24, v33);
    sub_1001F6428();
    v86 = sub_1000D4C4C(v85);
    sub_100145028(v86, 29);
    sub_1000D4AF4();
    v87(v23, v33);
  }

  sub_100057CB8(v201, v203, &unk_1002B3450, &qword_100202EE0);
  sub_1000994CC(v203);
  if (v69)
  {
    v101 = &qword_100202EE0;
    sub_1000D49EC();
    sub_10004BDE8(v88, v89, v90);
    sub_1000D49EC();
    sub_10004BDE8(v91, v92, v93);
    sub_1000D49EC();
    sub_10004BDE8(v94, v95, v96);
    sub_10004BDE8(v200, &qword_1002AFA30, &unk_10020FA10);
    sub_1000D49EC();
  }

  else
  {
    sub_1000D4A68();
    v97 = sub_1000D4B3C();
    v98(v97, v203, v33);
    sub_1001F6428();
    v100 = sub_1000D4C4C(v99);
    sub_100145028(v100, 33);
    (*(v204 + 8))(v23, v33);
    v101 = &qword_100202EE0;
    sub_1000D49EC();
    sub_10004BDE8(v102, v103, v104);
    sub_1000D49EC();
    sub_10004BDE8(v105, v106, v107);
    sub_1000D49EC();
    sub_10004BDE8(v108, v109, v110);
    v111 = &qword_1002AFA30;
    v112 = &unk_10020FA10;
    v113 = v200;
  }

  sub_10004BDE8(v113, v111, v112);
  v114 = v207[0];
  if (!*(v205 + 16))
  {
    sub_1000183C4(&unk_1002B3470, &qword_10021A670);
    sub_100098F08();
    v134 = sub_1001F69B8();
    goto LABEL_54;
  }

  v199 = v207[0];
  v115 = sub_10006EC7C(v205);
  sub_1000183C4(&qword_1002B3498, &unk_10020A868);
  v116 = sub_100098F08();
  v117 = _swiftEmptyArrayStorage;
  v118 = sub_1001F69B8();
  v119 = v118;
  v120 = v115[2];
  if (v120)
  {
    v204 = v118;
    v205 = v116;
    *&v209 = _swiftEmptyArrayStorage;
    v121 = sub_1000D4E58();
    sub_10003444C(v121, v122, v123);
    v124 = 32;
    v125 = v209;
    do
    {
      v126 = *(v115 + v124);
      v127 = &type metadata for Int;
      switch(*(v115 + v124))
      {
        case 1:
          v127 = &type metadata for Int;
          v126 = 1;
          break;
        case 2:
          v127 = &type metadata for Int;
          v126 = 2;
          break;
        case 3:
          v127 = &type metadata for Int;
          v126 = 10;
          break;
        case 4:
          v127 = &type metadata for Int;
          v126 = 11;
          break;
        case 5:
          v127 = 0;
          v126 = 0;
          break;
        default:
          break;
      }

      *&v209 = v125;
      v129 = v125[2];
      v128 = v125[3];
      if (v129 >= v128 >> 1)
      {
        sub_10005669C(v128);
        sub_1000D50AC();
        sub_10003444C(v131, v132, v133);
        v125 = v209;
      }

      v125[2] = v129 + 1;
      v130 = &v125[4 * v129];
      v130[4] = v126;
      v130[5] = 0;
      v130[6] = 0;
      v130[7] = v127;
      ++v124;
      --v120;
    }

    while (v120);

    v117 = _swiftEmptyArrayStorage;
    v119 = v204;
  }

  else
  {

    v125 = _swiftEmptyArrayStorage;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v209 = v119;
  v136 = &v209;
  sub_1001E627C(v125, 32, isUniquelyReferenced_nonNull_native, v137, v138, v139, v140, v141, v195, v196);

  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  v204 = sub_1001F69B8();
  sub_1000D47A0();
  v144 = v143 & v142;
  v146 = (v145 + 63) >> 6;
  sub_1000D4D40(&a15);

  v101 = 0;
  v201 = &v209;
  v200 = v146;
  if (v144)
  {
    while (1)
    {
LABEL_33:
      sub_1000D4C60();
      LODWORD(v205) = v148;
      v151 = *(v150 + 8 * v149);
      v152 = *(v151 + 16);
      v203 = v151;
      if (v152)
      {
        v208[0] = _swiftEmptyArrayStorage;

        v136 = v208;
        v153 = sub_1000D4E48();
        sub_10003442C(v153, v154, v155);
        v117 = v208[0];
        v156 = v151 + 32;
        do
        {
          sub_1000D4FC4(v156, v207);
          sub_1000D4FC4(v207, &v209);
          if (v210)
          {
            sub_1000D4E78(v207);
            sub_10003708C(&v209, v206);
            sub_10003708C(v206, &v209);
          }

          else
          {
            sub_1000D4E78(&v209);
            [objc_allocWithZone(NSNull) init];
            v157 = sub_1000D4D04();
            v210 = sub_100019C0C(v157, &qword_1002B34A8, NSNull_ptr);
            *&v209 = v208;
            sub_1000D4E78(v207);
          }

          v208[0] = v117;
          v159 = v117[2];
          v158 = v117[3];
          if (v159 >= v158 >> 1)
          {
            sub_10005669C(v158);
            v136 = v208;
            sub_1000D50A0();
            sub_10003442C(v160, v161, v162);
            v117 = v208[0];
          }

          v117[2] = v159 + 1;
          sub_10003708C(&v209, &v117[4 * v159 + 4]);
          v156 += 32;
          --v152;
        }

        while (v152);
      }

      else
      {
      }

      v163 = sub_1000D51D0();
      *&v209 = v136;
      sub_1001110F0(v205);
      sub_1000D499C();
      v168 = v166 + v167;
      if (__OFADD__(v166, v167))
      {
        break;
      }

      v169 = v164;
      v170 = v165;
      sub_1000183C4(&unk_1002B34B0, &qword_10020A878);
      if (sub_1001F7A98(v163, v168))
      {
        v171 = sub_1001110F0(v205);
        if ((v170 & 1) != (v172 & 1))
        {
          goto LABEL_76;
        }

        v169 = v171;
      }

      v204 = v209;
      if (v170)
      {
        *(*(v209 + 56) + 8 * v169) = v117;
        sub_1000D4E2C();
      }

      else
      {
        sub_1000D50D8();
        sub_1000D48B4(v173);
        *(*(v174 + 48) + v169) = v205;
        *(*(v174 + 56) + 8 * v169) = v117;
        sub_1000D4E2C();

        sub_1000D4C18();
        if (v177)
        {
          goto LABEL_75;
        }

        *(v176 + 16) = v175;
      }

      v144 &= v144 - 1;
      v117 = _swiftEmptyArrayStorage;
      v136 = v201;
      v146 = v200;
      if (!v144)
      {
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    sub_1001F7FC8();
    __break(1u);
    JUMPOUT(0x1000D37C4);
  }

  while (1)
  {
LABEL_29:
    v147 = (v101 + 1);
    if (__OFADD__(v101, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v147 >= v146)
    {
      break;
    }

    v144 = *(v136 + v147);
    v101 = (v101 + 1);
    if (v144)
    {
      v101 = v147;
      goto LABEL_33;
    }
  }

  sub_10003A694();

  v114 = v199;
  v134 = v204;
LABEL_54:
  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1001C7504(v114, &off_10027AF08, &off_10027AF30, v134);
  sub_1000D4B18();

  sub_1000183C4(&qword_1002B3490, &qword_10020A860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = 23;
  *(inited + 40) = sub_1001F6B58();
  *(inited + 48) = v179;
  v180 = 1;
  v181 = sub_1000D4F3C();
  v183 = sub_1000D4168(v181, v182, 1);

  swift_setDeallocating();
  sub_1001E5718();
  *&v209 = v183;
  v184 = sub_10013B560();
  v185 = v184;
  if (v184)
  {
    while (1)
    {
      while (1)
      {
        v177 = __OFSUB__(v185--, 1);
        if (v177)
        {
          goto LABEL_71;
        }

        if ((v183 & 0xC000000000000001) != 0)
        {
          v186 = sub_1001F7808();
        }

        else
        {
          if ((v185 & 0x8000000000000000) != 0)
          {
            goto LABEL_72;
          }

          if (v185 >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v186 = *(v183 + 32 + 8 * v185);
        }

        v187 = v186;
        v188 = sub_1000C5464(4);
        if ((v189 & 1) == 0)
        {
          v190 = *&v188;
          v191 = sub_1001F6438();
          if (v192 < v190)
          {
            break;
          }
        }

        if (!v185)
        {
LABEL_67:
          v180 = 1;
          goto LABEL_69;
        }
      }

      sub_1000C1570(v191);
      v194 = v193;

      if (v194)
      {
        break;
      }

      if (!v185)
      {
        goto LABEL_67;
      }
    }

    v180 = 0;
  }

LABEL_69:
  __chkstk_darwin(v184);
  *(&v195 - 2) = &v209;
  sub_1000D465C(sub_1000D46F0, (&v195 - 4), v185, v180);
  sub_100013EFC();

  sub_1000995E0();
}

void sub_1000D3858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100099620();
  a21 = v25;
  a22 = v26;
  v127 = v27;
  v29 = v28;
  v31 = sub_1000D4F18(v30, &a15);
  sub_10001A278();
  __chkstk_darwin(v32);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v33);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v34);
  sub_1000AD704();
  sub_100099A14(v35);
  v36 = sub_1001F6578();
  sub_10001A278();
  v122 = v37;
  __chkstk_darwin(v38);
  sub_1000D4804();
  sub_100099A14(v39);
  v40 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v41 = sub_100056658(v40);
  __chkstk_darwin(v41);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v42);
  sub_100099918();
  __chkstk_darwin(v43);
  sub_1000D48F8();
  __chkstk_darwin(v44);
  sub_1000D47DC();
  __chkstk_darwin(v45);
  sub_1000D4944();
  __chkstk_darwin(v46);
  sub_1000D4ED0();
  v47 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v48 = sub_100056658(v47);
  __chkstk_darwin(v48);
  sub_100099484();
  v51 = v49 - v50;
  __chkstk_darwin(v52);
  sub_1000B3018();
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &a16, xmmword_10020A800);
  v54 = sub_1000D48D8();
  sub_100018460(v54, v55, v56, v36);
  sub_1000995D4();
  sub_100018460(v57, v58, v59, v31);
  sub_1000995D4();
  sub_100018460(v60, v61, v62, v31);
  sub_1000995D4();
  sub_100018460(v63, v64, v65, v31);
  v131 = _swiftEmptyDictionarySingleton;
  v130 = type metadata for String;
  v128 = v125;
  v129 = v29;

  sub_100145028(&v128, 2);
  sub_100057CB8(v23, v51, &qword_1002AFA30, &unk_10020FA10);
  sub_1000D49CC(v51);
  if (v66)
  {
    sub_10004BDE8(v51, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    (*(v122 + 32))(v121, v51, v36);
    v67 = sub_1001F6528();
    v130 = type metadata for String;
    v128 = v67;
    v129 = v68;
    sub_100145028(&v128, 22);
    (*(v122 + 8))(v121, v36);
  }

  v69 = sub_1000D4F60();
  sub_100057CB8(v69, v22, v70, v71);
  v72 = sub_1000D4AC8();
  if (sub_10001C990(v72, v73, v31) == 1)
  {
    sub_10004BDE8(v22, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v74 = sub_1000D4D34();
    v75(v74, v22, v31);
    sub_1001F6428();
    v77 = sub_1000D4C38(v76);
    sub_100145028(v77, 30);
    v78 = sub_1000D4AB8();
    v79(v78);
  }

  v80 = sub_100099718();
  sub_100057CB8(v80, v81, v82, v83);
  sub_1000D49AC(v24);
  if (v66)
  {
    sub_10004BDE8(v24, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v84 = sub_1000D4D34();
    v85(v84, v24, v31);
    sub_1001F6428();
    v87 = sub_1000D4C38(v86);
    sub_100145028(v87, 29);
    v88 = sub_1000D4AB8();
    v89(v88);
  }

  v90 = sub_1000D4B78();
  sub_100057CB8(v90, v91, v92, v93);
  sub_1000D49AC(v124);
  if (v66)
  {
    sub_10004BDE8(v124, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000D4A68();
    v94(v123, v124, v31);
    sub_1001F6428();
    v96 = sub_1000D4C38(v95);
    sub_100145028(v96, 33);
    v97 = sub_1000D4D58();
    v98(v97);
  }

  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000D4B60();
  sub_10004BDE8(v99, v100, v101);
  sub_1000D4B60();
  sub_10004BDE8(v102, v103, v104);
  sub_1000D4F60();
  sub_1000D4B60();
  sub_10004BDE8(v105, v106, v107);
  v108 = sub_10003A694();
  sub_10004BDE8(v108, v109, v110);
  v111 = v131;
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  sub_100098F08();
  sub_1000D4D1C();
  v112 = sub_1001F69B8();
  v113 = sub_1001C7504(v111, _swiftEmptyArrayStorage, &off_10027ACE0, v112);

  v126[4] = v113;
  v126[5] = sub_1001C77EC(30);
  sub_1001F6438();
  v115 = v114;
  sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
  v130 = &type metadata for Double;
  v128 = v115;
  v126[6] = sub_1001C76B0(30, &v128, 4u);
  sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
  v116 = sub_100013EFC();
  v117 = sub_10007BB78(v116);
  sub_10006E930(v117);
  sub_1000D4B18();

  v118 = sub_1001C7770(v112);
  sub_1000183C4(&qword_1002B3490, &qword_10020A860);
  v119 = swift_initStackObject();
  *(v119 + 16) = xmmword_1001FE9E0;
  *(v119 + 32) = 30;
  *(v119 + 40) = sub_1001F6B58();
  *(v119 + 48) = v120;
  sub_1000D4168(v118, v119, v127);

  swift_setDeallocating();
  sub_1001E5718();
  sub_1000995E0();
}

unint64_t sub_1000D3FD0(uint64_t a1)
{
  v1 = sub_1000D4054(a1, &off_10027ADC8, 1);
  if (sub_10013B560())
  {
    v2 = v1 & 0xC000000000000001;
    sub_1001C19A8();
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1001F7808();
    }

    else
    {
      v3 = *(v1 + 32);
    }

    sub_100013EFC();
  }

  else
  {

    return 0;
  }

  return v2;
}

void *sub_1000D4054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    v5 = _swiftEmptyArrayStorage;
    if (v4)
    {
      v21 = a1;
      v22 = a3;
      v6 = sub_1000D4E58();
      sub_1000344BC(v6, v7, v8);
      v5 = v23;
      v9 = (a2 + 32);
      do
      {
        v11 = *v9++;
        v10 = v11;
        v12 = sub_1001F6B58();
        v14 = v13;
        v16 = *(v23 + 2);
        v15 = *(v23 + 3);
        if (v16 >= v15 >> 1)
        {
          v18 = sub_10005669C(v15);
          sub_1000344BC(v18, v16 + 1, 1);
        }

        *(v23 + 2) = v16 + 1;
        v17 = (v23 + 24 * v16);
        *(v17 + 32) = v10;
        v17[5] = v12;
        v17[6] = v14;
        --v4;
      }

      while (v4);
      a3 = v22;
      a1 = v21;
    }
  }

  else
  {
    v5 = 0;
  }

  v19 = sub_1000D4168(a1, v5, a3);

  return v19;
}

void *sub_1000D4168(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v51 = _swiftEmptyArrayStorage;
  v7 = *(v3 + OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection);
  if (a2)
  {
    v8 = *(a2 + 2);
    if (v8)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v9 = v7;
      v10 = sub_1000D4E58();
      sub_1000375CC(v10, v11, v12);
      v13 = _swiftEmptyArrayStorage;
      v14 = v5 + 32;
      do
      {
        v15 = *v14;
        v14 += 24;
        v16 = sub_10013EBCC(v15);
        v18 = v17;
        aBlock[0] = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          v22 = sub_10005669C(v19);
          sub_1000375CC(v22, v20 + 1, 1);
          v13 = aBlock[0];
        }

        v13[2] = v20 + 1;
        v21 = &v13[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
        --v8;
      }

      while (v8);
    }

    else
    {
      v25 = v7;
    }

    isa = sub_1001F6F18().super.isa;

    v26 = *(v5 + 2);
    if (v26)
    {
      v48 = a1;
      aBlock[0] = _swiftEmptyArrayStorage;
      v27 = sub_1000D4E48();
      sub_1000375CC(v27, v28, v29);
      v30 = _swiftEmptyArrayStorage;
      v31 = (v5 + 48);
      do
      {
        v33 = *(v31 - 1);
        v32 = *v31;
        aBlock[0] = v30;
        v34 = v30[2];
        v35 = v30[3];

        if (v34 >= v35 >> 1)
        {
          sub_1000D50AC();
          sub_1000375CC(v37, v38, v39);
          v30 = aBlock[0];
        }

        v30[2] = v34 + 1;
        v36 = &v30[2 * v34];
        v36[4] = v33;
        v36[5] = v32;
        v31 += 3;
        --v26;
      }

      while (v26);
      a1 = v48;
    }

    v5 = sub_1001F6F18().super.isa;

    v4 = a3;
  }

  else
  {
    v23 = v7;
    isa = 0;
  }

  type metadata accessor for Transaction();
  v40 = [swift_getObjCClassFromMetadata() queryOnConnection:v7 predicate:a1 orderingProperties:isa orderingDirections:v5];

  v41 = sub_1000D4F90(&unk_100287A30);
  *(v41 + 16) = &v51;
  *(v41 + 24) = v4;
  v42 = sub_1000D4F90(&unk_100287A58);
  *(v42 + 16) = sub_1000D45D0;
  *(v42 + 24) = v41;
  aBlock[4] = sub_1000D45D8;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CFE54;
  aBlock[3] = &unk_100287A70;
  v43 = _Block_copy(aBlock);

  v44 = sub_1000D4D1C();
  [v44 v45];

  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    v47 = v51;

    return v47;
  }

  return result;
}

uint64_t sub_1000D4484(void *a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5)
{
  type metadata accessor for Transaction();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = a1;
    sub_1001F6F08();
    sub_1000375FC();
    sub_1001F6F98();
    result = sub_10001A07C();
    if (result >= a5)
    {
      *a3 = 1;
    }
  }

  return result;
}

id sub_1000D455C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D45E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000D45F8(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_1001C19A8();
  if (v4)
  {
    return sub_1001F7808();
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_1000D465C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000D46B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1000D45F8(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000D4838(double a1)
{
  *(v2 - 104) = v1;
  *(v2 - 128) = a1;
  return v2 - 128;
}

uint64_t sub_1000D4860()
{
  *(v2 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  *(*(v2 + 48) + v1) = *(v3 - 216);
  *(*(v2 + 56) + 8 * v1) = v0;
}

uint64_t sub_1000D48A4(double a1)
{
  *(v2 - 104) = v1;
  *(v2 - 128) = a1;
  return v2 - 128;
}

uint64_t sub_1000D4958(uint64_t a1)
{

  return sub_1001C7504(v1, v2, v2, a1);
}

_OWORD *sub_1000D4BB0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 168) = a1;
  *(v1 - 192) = 1;

  return sub_100145028(v1 - 192, 14);
}

uint64_t sub_1000D4BE0(double a1)
{
  *(v2 - 144) = v1;
  *(v2 - 168) = a1;
  return v2 - 168;
}

uint64_t sub_1000D4C08(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 120) = v1;
  return v2 - 160;
}

uint64_t sub_1000D4C38(double a1)
{
  *(v2 - 176) = v1;
  *(v2 - 200) = a1;
  return v2 - 200;
}

uint64_t sub_1000D4C4C(double a1)
{
  *(v2 - 112) = v1;
  *(v2 - 136) = a1;
  return v2 - 136;
}

_OWORD *sub_1000D4C8C()
{
  sub_10003708C((v0 - 120), (v0 - 192));

  return sub_10003708C((v0 - 192), (v0 - 120));
}

uint64_t sub_1000D4CC0(double a1)
{
  *(v2 - 232) = v1;
  *(v2 - 256) = a1;
  return v2 - 256;
}

_OWORD *sub_1000D4CD4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = 0xD000000000000015;
  *(v1 - 184) = a1;

  return sub_100145028(v1 - 192, 16);
}

uint64_t sub_1000D4D64()
{
  *(*(v2 + 56) + 8 * v1) = v0;
}

char *sub_1000D4D84()
{

  return sub_10003442C(0, v0, 0);
}

uint64_t sub_1000D4DA4()
{
  *(v1 - 240) = v0;
}

unint64_t sub_1000D4DC4()
{
  *(v1 - 120) = v0;
  v3 = *(v1 - 216);

  return sub_1001110F0(v3);
}

uint64_t sub_1000D4DE4()
{

  return sub_1001F6578();
}

__n128 *sub_1000D4DFC@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = result;
  result[1] = a3;
  return result;
}

uint64_t sub_1000D4E78(uint64_t a1)
{

  return sub_10004BDE8(a1, v1, v2);
}

void sub_1000D4EF0()
{
  *(v1 - 120) = v0;

  sub_10003444C(0, 1, 0);
}

uint64_t sub_1000D4F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_1001F6508();
}

uint64_t sub_1000D4F6C()
{
  *(v0 + 16) = v1;
  v7 = (v0 + 32 * v5);
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = 0;
  v7[7] = v3;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000D4F90(uint64_t a1)
{

  return swift_allocObject();
}

char *sub_1000D4FA8(char *a1)
{

  return sub_10003442C(a1, v1, 1);
}

uint64_t sub_1000D4FC4(uint64_t a1, uint64_t a2)
{

  return sub_100057CB8(a1, a2, v2, v3);
}

unint64_t sub_1000D4FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v12 - 192) = v10;

  return sub_1001E627C(v11, 24, a1, a4, a5, a6, a7, a8, a9, a10);
}

void sub_1000D5000()
{
  *(v1 - 120) = v0;

  sub_10003444C(0, 2, 0);
}

uint64_t sub_1000D5024(uint64_t a1)
{

  return sub_10004BDE8(a1, v1, v2);
}

double sub_1000D503C@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 192) = *(a1 - 256);
  *(v2 - 184) = v1;

  return result;
}

uint64_t sub_1000D5058()
{
}

_OWORD *sub_1000D5160@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;
  *(v1 - 120) = 0;

  return sub_100145028(v1 - 120, 5);
}

unint64_t sub_1000D5180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v12 - 120) = v10;

  return sub_1001E627C(v11, 16, a1, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1000D51A0(uint64_t a1, uint64_t a2)
{

  return sub_100057CB8(a1, a2, v2, v3);
}

_OWORD *sub_1000D51B8@<X0>(uint64_t a1@<X8>)
{

  return sub_10003708C((v1 - 120), (a1 + 32));
}

uint64_t sub_1000D51D0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t MulticastChannel.joinGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D57A0();
  v5(a2);
  v7 = v6;
  swift_getObjectType();
  v8 = sub_1000D5770(type metadata for ());
  v14 = EventLoop.makePromise<A>(of:file:line:)(v8, v9, v10, v11, 91, v12, v13, v7);
  swift_unknownObjectRelease();
  v15 = *(a3 + 16);

  v16 = sub_1000D57B4();
  v15(v16);

  return v14;
}

void MulticastChannel.joinGroup(_:interface:)()
{
  sub_1000A4080();
  v5 = sub_1000D573C(v2, v3, v4);
  v7 = v6(v5);
  sub_1000D57E4(v7);
  v8 = sub_1000D5770(type metadata for ());
  EventLoop.makePromise<A>(of:file:line:)(v8, v9, v10, v11, 99, v12, v13, v1);
  sub_1000D57CC();
  v14 = *(v0 + 24);

  v15 = sub_1000D5784();
  v14(v15);

  sub_1000A3DA0();
}

void MulticastChannel.joinGroup(_:device:)()
{
  sub_1000A4080();
  v5 = sub_1000D573C(v2, v3, v4);
  v7 = v6(v5);
  sub_1000D57E4(v7);
  v8 = sub_1000D5770(type metadata for ());
  EventLoop.makePromise<A>(of:file:line:)(v8, v9, v10, v11, 106, v12, v13, v1);
  sub_1000D57CC();
  v14 = *(v0 + 32);

  v15 = sub_1000D5784();
  v14(v15);

  sub_1000A3DA0();
}

uint64_t MulticastChannel.leaveGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D57A0();
  v5(a2);
  v7 = v6;
  swift_getObjectType();
  v8 = sub_1000D5770(type metadata for ());
  v14 = EventLoop.makePromise<A>(of:file:line:)(v8, v9, v10, v11, 116, v12, v13, v7);
  swift_unknownObjectRelease();
  v15 = *(a3 + 40);

  v16 = sub_1000D57B4();
  v15(v16);

  return v14;
}

void MulticastChannel.leaveGroup(_:interface:)()
{
  sub_1000A4080();
  v5 = sub_1000D573C(v2, v3, v4);
  v7 = v6(v5);
  sub_1000D57E4(v7);
  v8 = sub_1000D5770(type metadata for ());
  EventLoop.makePromise<A>(of:file:line:)(v8, v9, v10, v11, 124, v12, v13, v1);
  sub_1000D57CC();
  v14 = *(v0 + 48);

  v15 = sub_1000D5784();
  v14(v15);

  sub_1000A3DA0();
}

void MulticastChannel.leaveGroup(_:device:)()
{
  sub_1000A4080();
  v5 = sub_1000D573C(v2, v3, v4);
  v7 = v6(v5);
  sub_1000D57E4(v7);
  v8 = sub_1000D5770(type metadata for ());
  EventLoop.makePromise<A>(of:file:line:)(v8, v9, v10, v11, 131, v12, v13, v1);
  sub_1000D57CC();
  v14 = *(v0 + 56);

  v15 = sub_1000D5784();
  v14(v15);

  sub_1000A3DA0();
}

unint64_t sub_1000D5640()
{
  result = qword_1002B34C8;
  if (!qword_1002B34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B34C8);
  }

  return result;
}

void sub_1000D5698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000D5640();
    v3 = swift_allocError();
    swift_errorRetain();
    sub_1000A13B0(v3);
  }
}

uint64_t sub_1000D57CC()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000D57E4(uint64_t a1)
{

  return swift_getObjectType();
}

void __swiftcall AdaptiveRecvByteBufferAllocator.init()(ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *__return_ptr retstr)
{
  *&retstr->minimum = xmmword_10020A9B0;
  *&retstr->initial = vdupq_n_s64(0x800uLL);
  retstr->decreaseNow = 0;
}

ASOctaneSupportXPCService::FixedSizeRecvByteBufferAllocator __swiftcall FixedSizeRecvByteBufferAllocator.init(capacity:)(ASOctaneSupportXPCService::FixedSizeRecvByteBufferAllocator capacity)
{
  if (capacity.capacity < 1)
  {
    __break(1u);
  }

  return capacity;
}

void FixedSizeRecvByteBufferAllocator.buffer(allocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a5)
  {
    if (qword_1002AC430 == -1)
    {
LABEL_5:
      sub_1000D5BD0();
      goto LABEL_6;
    }

LABEL_8:
    sub_100061FE8(&qword_1002AC430);
    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(a5, a1, a2, a3, a4);
  sub_1000D5BF8();
LABEL_6:
  sub_1000D5C0C();
}

void __swiftcall AdaptiveRecvByteBufferAllocator.init(minimum:initial:maximum:)(ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *__return_ptr retstr, Swift::Int minimum, Swift::Int initial, Swift::Int maximum)
{
  if (minimum < 0 || (initial >= minimum ? (v4 = maximum < initial) : (v4 = 1), v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = 0x40000000;
  if (minimum > 0x40000000 || (v5 = minimum) != 0)
  {
    v5 = 1 << (__clz(v5) ^ 0x3Fu);
  }

  v6 = 0x40000000;
  if (initial <= 0x40000000)
  {
    if (!initial)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v6 = initial;
  }

  v7 = 1 << (__clz(v6) ^ 0x3Fu);
LABEL_13:
  v8 = 0x40000000;
  if (maximum <= 0x40000000)
  {
    if (!maximum)
    {
      v12 = 1;
LABEL_20:
      retstr->minimum = v5;
      retstr->maximum = v12;
      retstr->initial = v7;
      retstr->nextReceiveBufferSize = v7;
      retstr->decreaseNow = 0;
      return;
    }

    v8 = maximum;
  }

  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (!v9)
  {
    v11 = __clz(v10);
    if (v11)
    {
      v12 = 1 << -v11;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

void AdaptiveRecvByteBufferAllocator.buffer(allocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v5)
  {
    if (qword_1002AC430 == -1)
    {
LABEL_5:
      sub_1000D5BD0();
      goto LABEL_6;
    }

LABEL_8:
    sub_100061FE8(&qword_1002AC430);
    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v5, a1, a2, a3, a4);
  sub_1000D5BF8();
LABEL_6:
  sub_1000D5C0C();
}

Swift::Bool __swiftcall AdaptiveRecvByteBufferAllocator.record(actualReadBytes:)(Swift::Int actualReadBytes)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v2 < *v1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = *(v1 + 8);
  if (v3 < v2)
  {
LABEL_26:
    __break(1u);
    return actualReadBytes;
  }

  v4 = v2 >> 1;
  v5 = 2 * v2;
  if (2 * v2 <= 0)
  {
    v5 = *(v1 + 24);
  }

  if (v4 >= actualReadBytes && v4 >= *v1)
  {
    if (*(v1 + 32) != 1)
    {
      LOBYTE(actualReadBytes) = 0;
      *(v1 + 32) = 1;
      return actualReadBytes;
    }

    LOBYTE(actualReadBytes) = 0;
    *(v1 + 24) = v4;
    goto LABEL_22;
  }

  if (v2 == v5 || v2 > actualReadBytes || v3 < v5)
  {
    LOBYTE(actualReadBytes) = 0;
LABEL_22:
    *(v1 + 32) = 0;
    return actualReadBytes;
  }

  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  LOBYTE(actualReadBytes) = 1;
  return actualReadBytes;
}

uint64_t sub_1000D5B2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D5B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000D5BD0()
{
}

char *sub_1000D5C20(unint64_t a1, Swift::String *a2, __int128 *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_23:
    sub_10001C7E4(a2);
    *__src = *a3;
    sub_10001C838(__src);
    v55[0] = a3[1];
    sub_10001C838(v55);
    *&v54 = *(a3 + 4);
    sub_10001C88C(&v54);

    return _swiftEmptyArrayStorage;
  }

  v11 = sub_1001F7B48();
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_3:
  v51 = _swiftEmptyArrayStorage;
  result = sub_1000340AC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = a6;
    v15 = *a3;
    v54 = a3[1];
    v55[0] = v15;
    v16 = v51;
    v53 = *(a3 + 4);
    v52 = *a2;
    v39 = v11 - 1;
    v40 = v10 & 0xC000000000000001;
    v41 = v10;
    v42 = a7;
    for (i = &a2->_countAndFlagsBits; ; a2 = i)
    {
      v47 = v13;
      v48 = v16;
      if (v40)
      {
        v17 = sub_1001F7808();
      }

      else
      {
        v17 = *(v10 + 8 * v13 + 32);
      }

      type metadata accessor for OctaneSubscription();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = *(v18 + 192);
        v20 = *(v18 + 200);

        v21 = a4(v19, v20);
        v14 = a6;
        v45 = v22;
        v46 = v21;
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      if (*(a7 + 16))
      {
        v23 = v17[10];
        sub_10007B844(a2, __src);
        sub_1000552A0(v55, __src);
        sub_1000552A0(&v54, __src);
        sub_10007B8A0(&v53, __src);

        v24 = sub_10011108C(v23);
        if (v25)
        {
          v26 = (*(a7 + 56) + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
        }

        else
        {

          v27 = 0;
          v28 = 0;
        }

        v14 = a6;
        a2 = i;
      }

      else
      {
        sub_10007B844(a2, __src);
        sub_1000552A0(v55, __src);
        sub_1000552A0(&v54, __src);
        sub_10007B8A0(&v53, __src);

        v27 = 0;
        v28 = 0;
      }

      v29 = v17[5];
      v30 = v17[6];

      sub_1001F77B8(20);

      strcpy(v49, "/v1/catalog/");
      BYTE5(v49[1]) = 0;
      HIWORD(v49[1]) = -5120;
      sub_10001C790();
      v56._countAndFlagsBits = sub_1001F75D8();
      sub_1001F6CA8(v56);

      v57._countAndFlagsBits = 47;
      v57._object = 0xE100000000000000;
      sub_1001F6CA8(v57);
      v58._countAndFlagsBits = 0x737070612D6E69;
      v58._object = 0xE700000000000000;
      sub_1001F6CA8(v58);
      v59._countAndFlagsBits = 47;
      v59._object = 0xE100000000000000;
      sub_1001F6CA8(v59);
      v31 = v17[5];
      v32 = v17[6];

      v60._countAndFlagsBits = v31;
      v60._object = v32;
      sub_1001F6CA8(v60);

      v33 = v49[0];
      v34 = v49[1];
      sub_1000D81B8(v17, v46, v45, a2, a3, v14, v27, v28, __src);
      v16 = v48;
      v51 = v48;
      v36 = v48[2];
      v35 = v48[3];
      if (v36 >= v35 >> 1)
      {
        sub_1000340AC((v35 > 1), v36 + 1, 1);
        v14 = a6;
        v16 = v51;
      }

      v16[2] = v36 + 1;
      v37 = &v16[31 * v36];
      v37[4] = v29;
      v37[5] = v30;
      v37[6] = v33;
      v37[7] = v34;
      memcpy(v37 + 8, __src, 0xD8uLL);
      if (v39 == v47)
      {
        break;
      }

      v13 = v47 + 1;
      v10 = v41;
      a7 = v42;
    }

    sub_10001C838(v55);
    sub_10001C838(&v54);
    sub_10001C88C(&v53);
    sub_10001C7E4(i);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D6094(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1000D6124()
{
  sub_10001E850();
  v1 = v0;
  v2 = sub_1000183C4(&qword_1002B3670, &qword_10020B578);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_10005DBB4();
  sub_10001AE68(v1, v1[3]);
  sub_1000DB5DC();
  sub_1001F8198();
  sub_10007B9BC();
  sub_1001F7D88();
  v4 = sub_10005DBF8();
  v5(v4, v2);
  sub_10001E868();
}

void sub_1000D6234(uint64_t a1)
{
  sub_1000DBF74();
  v3 = v2;
  sub_1000183C4(&qword_1002B3640, &qword_10020B560);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_1000DBDA0(v3);
  sub_1000DB5DC();
  sub_10001E838();
  sub_1001F8178();
  if (!v1)
  {
    sub_1001F7C78();
    v5 = sub_1000DBF14();
    v6(v5);
  }

  sub_100019CCC(v3);
  sub_1000DBF60();
}

uint64_t sub_1000D6360(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D6428(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void sub_1000D6458()
{
  sub_10001E850();
  v3 = v2;
  v4 = sub_1000183C4(&qword_1002B3678, &qword_10020B580);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7);
  sub_1000DBDEC();
  sub_10001AE68(v3, v3[3]);
  sub_1000DB630();
  sub_1000DBED4();
  sub_1001F8198();
  sub_1000582D0();
  sub_1001F7D88();
  if (!v0)
  {
    sub_1000DBEC8();
    sub_1000582D0();
    sub_1001F7DA8();
  }

  (*(v6 + 8))(v1, v4);
  sub_10001E868();
}

void sub_1000D6598(uint64_t a1)
{
  sub_1000DBF74();
  v3 = v2;
  sub_1000183C4(&qword_1002B3650, &qword_10020B568);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_1000DBDA0(v3);
  sub_1000DB630();
  sub_10001E838();
  sub_1001F8178();
  if (!v1)
  {
    sub_1001F7C78();
    sub_1000DBEC8();
    sub_1001F7C98();
    v5 = sub_10001E72C();
    v6(v5);
  }

  sub_100019CCC(v3);
  sub_1000DBF60();
}

uint64_t sub_1000D6734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D6094(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000D6760(uint64_t a1)
{
  v2 = sub_1000DB5DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D679C(uint64_t a1)
{
  v2 = sub_1000DB5DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D67D8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000D6234(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_1000D6828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D6360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D6850(uint64_t a1)
{
  v2 = sub_1000DB630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D688C(uint64_t a1)
{
  v2 = sub_1000DB630();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D68C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000D6598(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
  }
}

__objc2_class **sub_1000D6918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1001E84A8();
  v10 = sub_1001F73F8();
  v46 = v11;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);

  v14 = sub_10004B628(v12, v13, a2, a3);
  v16 = v15;

  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  type metadata accessor for OctaneSubscription();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    v54[0] = *a3;
    sub_10001C838(v54);
    __src[0] = *(a3 + 1);
    sub_10001C838(__src);
    *__dst = a3[4];
    sub_10001C88C(__dst);
    result = sub_10001C7E4(a2);
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = v46;
LABEL_25:
    v52 = 1;
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = v10;
    *(a6 + 24) = v38;
    *(a6 + 32) = v14;
    *(a6 + 40) = v16;
    *(a6 + 48) = v18;
    *(a6 + 56) = v17;
    *(a6 + 64) = v39;
    *(a6 + 72) = v40;
    *(a6 + 80) = 0;
    *(a6 + 88) = 1;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 128) = v37;
    return result;
  }

  v44 = v18;
  v45 = v14;
  v20 = *(v19 + 176);
  v21 = *(v19 + 184);
  v43 = v17;

  v22 = sub_1001EBEE0(v20, v21);
  v41 = v23;
  v42 = v22;
  v24 = sub_100024A94();
  result = sub_10013B560();
  v26 = result;
  v27 = 0;
  v47 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v26 == v27)
    {

      *__dst = *a3;
      sub_10001C838(__dst);
      v50[0] = *(a3 + 1);
      sub_10001C838(v50);
      v55 = a3[4];
      sub_10001C88C(&v55);
      sub_10001C7E4(a2);

      v38 = v46;
      v37 = v47;
      v14 = v45;
      v17 = v43;
      v18 = v44;
      v40 = v41;
      v39 = v42;
      goto LABEL_25;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v28 = result;
    }

    else
    {
      if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v28 = *(v24 + 8 * v27 + 32);
    }

    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v30 = *v28;
    if ((a4 & 1) != 0 && v30 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription10AdHocOffer || (a5 & 1) != 0 && v30 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription12WinbackOffer || v30 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
    {
      v31 = *a3;
      v57 = *(a3 + 1);
      v58 = v31;
      v56 = a3[4];
      sub_1000552A0(&v58, v50);
      sub_1000552A0(&v57, v50);
      sub_10007B8A0(&v56, v50);
      sub_10007B844(a2, v50);
      sub_1000D6D54(v28, a2, a3, __src);
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v54, __src, 0x88uLL);
      result = sub_1000DA438(v54);
      if (result == 1)
      {
        goto LABEL_16;
      }

      v32 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100033540();
        v32 = v35;
      }

      v34 = v32[2];
      v47 = v32;
      if (v34 >= v32[3] >> 1)
      {
        sub_100033540();
        v47 = v36;
      }

      memcpy(v50, __dst, 0x88uLL);
      v47[2] = v34 + 1;
      result = memcpy(&v47[17 * v34 + 4], v50, 0x88uLL);
      v27 = v29;
    }

    else
    {

LABEL_16:
      ++v27;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1000D6D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  if (*a1 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription10AdHocOffer)
  {
    sub_1000DBEB0();
  }

  else
  {
    if (v8 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
    {
      v29 = 0;
      v30 = 0;
      sub_1000DBEB0();
      goto LABEL_6;
    }

    if (v8 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription12WinbackOffer)
    {
      __src[0] = *a3;
      sub_10001C838(__src);
      v36 = a3[1];
      sub_10001C838(&v36);
      *&v35 = *(a3 + 4);
      sub_10001C88C(&v35);
      sub_10001C7E4(a2);

      sub_1000DA450(__dst);
      return memcpy(a4, __dst, 0x88uLL);
    }

    v27 = 0xE700000000000000;
    v28 = 0x6B6361626E6957;
  }

  v29 = *(a1 + 104);
  v30 = *(a1 + 96);

LABEL_6:
  v9 = *(a1 + 40);
  v31 = a4;
  if (v9)
  {
    v10 = *(a1 + 32);
    switch(*(a1 + 57))
    {
      case 1:
        goto LABEL_12;
      default:
        v11 = sub_1001F7EA8();

        if (v11 & 1) != 0 || (, sub_100077944(v10, v9), (v12))
        {
LABEL_12:

          goto LABEL_13;
        }

        v13 = sub_1001F7098();
        v14 = v25;
        v15 = sub_10004B628(v10, v9, a2, a3);
        v17 = v26;

        break;
    }
  }

  else
  {
LABEL_13:
    v13 = 808463920;
    v14 = 0xE400000000000000;
    v15 = sub_10004B628(808463920, 0xE400000000000000, a2, a3);
    v17 = v16;
  }

  v36 = *a3;
  sub_10001C838(&v36);
  v35 = a3[1];
  sub_10001C838(&v35);
  v34 = *(a3 + 4);
  sub_10001C88C(&v34);
  sub_10001C7E4(a2);
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  if (*(a1 + 56))
  {
    v20 = 1;
  }

  else
  {
    v20 = *(a1 + 48);
  }

  v33 = 0;
  v21 = *(a1 + 57);
  v22 = *&aNone_2[8 * v21];
  v23 = *&aFreetriapayasy[8 * v21 + 24];

  *&__src[0] = v28;
  *(&__src[0] + 1) = v27;
  *&__src[1] = v13;
  *(&__src[1] + 1) = v14;
  *&__src[2] = v15;
  *(&__src[2] + 1) = v17;
  __src[3] = 0uLL;
  *&__src[4] = v19;
  *(&__src[4] + 1) = v18;
  *&__src[5] = v20;
  BYTE8(__src[5]) = 0;
  *&__src[6] = v22;
  *(&__src[6] + 1) = v23;
  *&__src[7] = v30;
  *(&__src[7] + 1) = v29;
  *&__src[8] = 0;
  debugOnly(_:)();
  memcpy(__dst, __src, 0x88uLL);
  a4 = v31;
  return memcpy(a4, __dst, 0x88uLL);
}

unint64_t sub_1000D70B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_10027B7F0;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_1000DBF48();
  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000D70FC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x7274536563697270;
      break;
    case 2:
      result = 0x726F466563697270;
      break;
    case 3:
      result = 0x79636E6572727563;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0x726550664F6D756ELL;
      break;
    case 6:
      result = 0x746E756F63736964;
      break;
    case 7:
      result = 0x6449726566666FLL;
      break;
    case 8:
      result = 0x6570795465646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D7240(uint64_t a1)
{
  sub_1000DBF74();
  v3 = v1;
  v5 = v4;
  v6 = sub_1000183C4(&qword_1002B35B0, &qword_10020AE38);
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  v11 = &v14[-v10];
  sub_1000DBDA0(v5);
  sub_1000DAD40();
  sub_10001E838();
  sub_1001F8198();
  LOBYTE(v15) = 0;
  sub_1001F7D18();
  if (!v2)
  {
    sub_1000DBD04(1);
    sub_1001F7D88();
    sub_1000DBD04(2);
    sub_1001F7D88();
    sub_1000DBD04(3);
    sub_1001F7D18();
    sub_1000DBD04(4);
    sub_1001F7D18();
    sub_1000DBD04(5);
    sub_1001F7D48();
    v15 = *(v3 + 128);
    v14[7] = 6;
    sub_1000183C4(&qword_1002B3550, &qword_10020AE20);
    sub_1000DBDD4();
    sub_1000DAAE0(v12, v13);
    sub_1001F7D58();
    sub_1000DBD04(7);
    sub_1001F7D18();
    sub_1000DBD04(8);
    sub_1001F7D18();
  }

  (*(v8 + 8))(v11, v6);
  sub_1000DBF60();
}

void sub_1000D7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10001E850();
  v26 = v25;
  v28 = v27;
  sub_1000183C4(&qword_1002B35A0, &qword_10020AE30);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v29);
  sub_10005DBB4();
  sub_10001AE68(v26, v26[3]);
  sub_1000DAD40();
  sub_1000DBE80();
  sub_1001F8178();
  if (v24)
  {
    sub_100019CCC(v26);
  }

  else
  {
    sub_1000DBD4C();
    v30 = sub_1001F7C08();
    v32 = v31;
    LOBYTE(v60[0]) = 1;
    sub_1000DBD4C();
    v33 = sub_1001F7C78();
    v58 = v34;
    sub_1000DBD34(2);
    v52 = sub_1001F7C78();
    v57 = v35;
    sub_1000DBD34(3);
    v51 = sub_1001F7C08();
    v56 = v36;
    sub_1000DBD34(4);
    v50 = sub_1001F7C08();
    v55 = v37;
    sub_1000DBD34(5);
    v49 = sub_1001F7C38();
    v67 = v38 & 1;
    sub_1000183C4(&qword_1002B3550, &qword_10020AE20);
    LOBYTE(v59[0]) = 6;
    sub_1000DBDBC();
    sub_1000DAAE0(v39, v40);
    sub_1000DBD7C();
    sub_1001F7C48();
    v54 = v60[0];
    sub_1000DBD34(7);
    v48 = sub_1001F7C08();
    v53 = v41;
    sub_1000DBD7C();
    v42 = sub_1001F7C08();
    v47 = v43;
    v44 = v42;
    v45 = sub_1000DBD6C();
    v46(v45);
    v59[0] = v30;
    v59[1] = v32;
    v59[2] = v33;
    v59[3] = v58;
    v59[4] = v52;
    v59[5] = v57;
    v59[6] = v51;
    v59[7] = v56;
    v59[8] = v50;
    v59[9] = v55;
    v59[10] = v49;
    LOBYTE(v59[11]) = v67;
    v59[12] = v44;
    v59[13] = v47;
    v59[14] = v48;
    v59[15] = v53;
    v59[16] = v54;
    sub_1000DAD94(v59, v60);
    sub_100019CCC(v26);
    v60[0] = v30;
    v60[1] = v32;
    v60[2] = v33;
    v60[3] = v58;
    v60[4] = v52;
    v60[5] = v57;
    v60[6] = v51;
    v60[7] = v56;
    v60[8] = v50;
    v60[9] = v55;
    v60[10] = v49;
    v61 = v67;
    v62 = v44;
    v63 = v47;
    v64 = v48;
    v65 = v53;
    v66 = v54;
    sub_1000DADCC(v60);
    memcpy(v28, v59, 0x88uLL);
  }

  sub_10001E868();
}

unint64_t sub_1000D79B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D70B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000D79E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D70FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D7A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D70F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D7A5C(uint64_t a1)
{
  v2 = sub_1000DAD40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D7A98(uint64_t a1)
{
  v2 = sub_1000DAD40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D7AD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1000D7478(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD1(__src[0]), SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x88uLL);
  }
}

uint64_t sub_1000D7B38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1001F7EA8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1000D7C88(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F436762;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D7D0C(uint64_t a1)
{
  sub_1000DBF74();
  v3 = v2;
  v4 = sub_1000183C4(&qword_1002B3680, &qword_10020B588);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7);
  v9 = &v10[-v8];
  sub_1000DBDA0(v3);
  sub_1000DB684();
  sub_10001E838();
  sub_1001F8198();
  v10[15] = 0;
  sub_100056670();
  sub_1001F7D88();
  if (!v1)
  {
    sub_1000DBEC8();
    sub_100056670();
    sub_1001F7D18();
    v10[13] = 2;
    sub_100056670();
    sub_1001F7DA8();
    v10[12] = 3;
    sub_100056670();
    sub_1001F7DA8();
  }

  (*(v6 + 8))(v9, v4);
  sub_1000DBF60();
}

void sub_1000D7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10001E850();
  v26 = v25;
  v28 = v27;
  v29 = sub_1000183C4(&qword_1002B3660, &qword_10020B570);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v30);
  sub_10005DBB4();
  sub_10001AE68(v26, v26[3]);
  sub_1000DB684();
  sub_1000DBE80();
  sub_1001F8178();
  if (v24)
  {
    sub_100019CCC(v26);
  }

  else
  {
    sub_1000DBD7C();
    v31 = sub_1001F7C78();
    v33 = v32;
    sub_1000DBEC8();
    sub_1000DBD7C();
    v39 = sub_1001F7C08();
    v40 = v34;
    sub_1000DBD7C();
    v38 = sub_1001F7C98();
    sub_1000DBD7C();
    v35 = sub_1001F7C98();
    v36 = sub_10005DBF8();
    v37(v36, v29);
    sub_100019CCC(v26);
    *v28 = v31;
    v28[1] = v33;
    v28[2] = v39;
    v28[3] = v40;
    v28[4] = v38;
    v28[5] = v35;
  }

  sub_10001E868();
}

uint64_t sub_1000D80BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D7B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D80E4(uint64_t a1)
{
  v2 = sub_1000DB684();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8120(uint64_t a1)
{
  v2 = sub_1000DB684();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D81B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Swift::String *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = a1;
  v50 = a1[10];
  v51 = a1[11];

  v44 = a5;
  sub_1000E087C(v15);
  sub_1000DBF48();
  if (a5)
  {
    v47 = a5[5];
    v48 = a5[4];
    v16 = a5[3];
    v46 = a5[2];

    v45 = v16;
  }

  else
  {
    v47 = 0xE000000000000000;
    v48 = 0;
    v45 = 0xE000000000000000;
    v46 = 0;
  }

  v43 = *(v13 + 32);
  v53 = a8;
  if (*(a6 + 16))
  {
    sub_1001F8068();
    sub_1001F6C28();
    sub_1001F80D8();
    sub_1000DBE64();
    if ((*(a6 + 56 + v17) >> v13))
    {
      while (1)
      {
        switch(*(*(a6 + 48) + v13))
        {
          case 1:

            goto LABEL_40;
          case 2:
            sub_1000DBE44();
            break;
          case 3:
            sub_1000DBF00();
            break;
          case 4:
            sub_1000DBE30();
            break;
          default:
            break;
        }

        v18 = sub_1001F7EA8();

        if (v18)
        {
          break;
        }

        sub_1000DBEE0();
        if (((*(a6 + 56 + v19) >> v13) & 1) == 0)
        {
          v20 = 0;
          v21 = 0;
          goto LABEL_15;
        }
      }

LABEL_40:
      v21 = 0xEA0000000000656CLL;
      v20 = 0x62616D75736E6F43;
      switch(*(v13 + 112))
      {
        case 1:
          v21 = 0xEE00656C62616D75;
          v20 = 0x736E6F432D6E6F4ELL;
          break;
        case 2:
          v20 = 0xD000000000000019;
          v21 = 0x80000001002274B0;
          break;
        case 3:
          v21 = 0x8000000100227490;
          v20 = 0xD00000000000001BLL;
          break;
        default:
          break;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

LABEL_15:
  v41 = v20;
  v42 = v21;
  type metadata accessor for OctaneSubscription();
  v22 = swift_dynamicCastClass();
  v23 = v22;
  if (v22)
  {
    v39 = v22[21];
    v40 = v22[24];
    v38 = v22[25];
  }

  else
  {

    v39 = 0;
    v40 = 0;
    v38 = 0;
    a2 = 0;
    a3 = 0;
  }

  v56 = v23 == 0;
  sub_1000183C4(&qword_1002ADCD8, &qword_100200A40);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1001FE9E0;
  if (*(a6 + 16))
  {
    v36 = v13;
    sub_1001F8068();
    sub_1001F6C28();
    v24 = sub_1001F80D8();
    v25 = a6 + 56;
    v26 = -1 << *(a6 + 32);
    v27 = v24 & ~v26;
    if ((*(a6 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v13 = ~v26;
      while (2)
      {
        switch(*(*(a6 + 48) + v27))
        {
          case 2:

            v28 = 1;
            goto LABEL_29;
          case 3:
            sub_1000DBF00();
            goto LABEL_24;
          case 4:
            sub_1000DBE30();
            goto LABEL_24;
          default:
LABEL_24:
            v28 = sub_1001F7EA8();

            if (v28)
            {
              goto LABEL_29;
            }

            v27 = (v27 + 1) & v13;
            if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_29;
            }

            continue;
        }
      }
    }

    v28 = 0;
LABEL_29:
    if (*(a6 + 16) && (sub_1001F8068(), sub_1001F6C28(), sub_1001F80D8(), sub_1000DBE64(), ((*(v25 + v30) >> v13) & 1) != 0))
    {
      while (2)
      {
        switch(*(*(a6 + 48) + v13))
        {
          case 2:
            sub_1000DBE44();
            goto LABEL_34;
          case 3:

            v29 = 1;
            goto LABEL_45;
          case 4:
            sub_1000DBE30();
            goto LABEL_34;
          default:
LABEL_34:
            v29 = sub_1001F7EA8();

            if ((v29 & 1) == 0)
            {
              sub_1000DBEE0();
              if ((*(v25 + v31) >> v13))
              {
                continue;
              }
            }

LABEL_45:
            a8 = v53;
            break;
        }

        break;
      }
    }

    else
    {
      v29 = 0;
      a8 = v53;
    }

    v13 = v36;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v32 = *v44;
  v59 = *(v44 + 1);
  v60[0] = v32;
  v58 = v44[4];

  sub_1000552A0(v60, __src);
  sub_1000552A0(&v59, __src);
  sub_10007B8A0(&v58, __src);
  sub_10007B844(a4, __src);
  sub_1000D6918(v13, a4, v44, v28 & 1, v29 & 1, __src);
  memcpy((v37 + 32), __src, 0x88uLL);
  v55 = v60[0];

  v61._countAndFlagsBits = 0x636E657272756340;
  v61._object = 0xEA00000000003D79;
  sub_1001F6CA8(v61);
  sub_1001F6CA8(a4[1]);

  sub_10001C838(v60);
  sub_10001C838(&v59);
  sub_10001C88C(&v58);
  sub_10001C7E4(a4);

  v34 = a7;
  if (!a8)
  {
    v34 = 0;
  }

  v35 = (a8 != 0) << 10;
  *a9 = v50;
  *(a9 + 8) = v51;
  *(a9 + 16) = v48;
  *(a9 + 24) = v47;
  *(a9 + 32) = v46;
  *(a9 + 40) = v45;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 72) = v43;
  *(a9 + 80) = v41;
  *(a9 + 88) = v42;
  *(a9 + 96) = v40;
  *(a9 + 104) = v38;
  *(a9 + 112) = v37;
  *(a9 + 120) = v55;
  *(a9 + 136) = v39;
  *(a9 + 144) = v56;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = v34;
  *(a9 + 176) = a8;
  *(a9 + 184) = 0;
  *(a9 + 192) = 0;
  *(a9 + 200) = v35;
  *(a9 + 208) = v35;
  return result;
}

unint64_t sub_1000D8958(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_10027B8E8;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_1000DBF48();
  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000D89A4(char a1)
{
  result = 0x6D614E726566666FLL;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x6F43646574736F68;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1684957547;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x73726566666FLL;
      break;
    case 10:
      result = sub_1000DBE30();
      break;
    case 11:
      result = 0x6B726F77747261;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D8B2C(uint64_t a1)
{
  sub_1000DBF74();
  v4 = v3;
  v5 = sub_1000183C4(&qword_1002B3570, &qword_10020AE28);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8);
  sub_1000DBDEC();
  sub_1000DBDA0(v4);
  sub_1000DA9E4();
  sub_1000DBED4();
  sub_10001E838();
  sub_1001F8198();
  sub_1001F7D88();
  if (!v1)
  {
    sub_1000DBD1C(1);
    sub_1001F7D88();
    sub_1000DABF0();
    sub_1000DBD88();
    sub_1001F7DC8();
    sub_1000DAC44();
    sub_1000DBD88();
    sub_1001F7D58();
    sub_1001F7D98();
    sub_1000DBD1C(5);
    sub_1001F7D18();
    sub_1000DBD1C(6);
    sub_1001F7D18();
    sub_1000DBD1C(7);
    sub_1001F7D18();
    sub_1000DBD1C(8);
    sub_1001F7D48();
    sub_1000183C4(&qword_1002B3550, &qword_10020AE20);
    sub_1000DBDD4();
    sub_1000DAAE0(v9, v10);
    sub_1001F7DC8();
    sub_1000DBD1C(10);
    sub_1001F7D88();
    sub_1000DACEC();
    sub_1000DBD88();
    sub_1001F7D58();
  }

  (*(v7 + 8))(v2, v5);
  sub_1000DBF60();
}

void sub_1000D8E0C()
{
  sub_10001E850();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000183C4(&qword_1002B3530, &qword_10020AE18);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_10005DBB4();
  v7 = v2[3];
  v89 = v2;
  sub_10001AE68(v2, v7);
  sub_1000DA9E4();
  sub_1000DBE80();
  sub_1001F8178();
  if (!v0)
  {
    v48 = v4;
    LOBYTE(v50) = 0;
    sub_1000DBD4C();
    v8 = sub_1001F7C78();
    v46 = v9;
    sub_1000DBCEC(1);
    v10 = sub_1001F7C78();
    v45 = v11;
    sub_1000DAA38();
    sub_1000DBD7C();
    sub_1001F7CB8();
    v44 = v51;
    sub_1000DAA8C();
    sub_1000DBD7C();
    sub_1001F7C48();
    v36 = v50;
    v37 = v50;
    v43 = v51;
    sub_1000DBCEC(4);
    v33 = sub_1001F7C88();
    v35 = v52;
    sub_1000DBCEC(5);
    v12 = sub_1001F7C08();
    v42 = v13;
    sub_1000DBCEC(6);
    v32 = sub_1001F7C08();
    v41 = v14;
    sub_1000DBCEC(7);
    v31 = sub_1001F7C08();
    v40 = v15;
    sub_1000DBCEC(8);
    v30 = sub_1001F7C38();
    v87 = v16 & 1;
    sub_1000183C4(&qword_1002B3550, &qword_10020AE20);
    LOBYTE(v49[0]) = 9;
    sub_1000DBDBC();
    sub_1000DAAE0(v17, v18);
    sub_1000DBD7C();
    sub_1001F7CB8();
    v39 = v50;
    sub_1000DBCEC(10);
    v29 = sub_1001F7C78();
    v38 = v19;
    v79 = 11;
    sub_1000DAB9C();
    sub_1000DBD7C();
    sub_1001F7C48();
    v20 = v33 & 1;
    v21 = sub_1000DBD5C();
    v22(v21);
    v34 = v80;
    v27 = v82;
    v28 = v81;
    v25 = v84;
    v26 = v83;
    v24 = v85;
    v49[0] = v8;
    v49[1] = v46;
    v49[2] = v10;
    v49[3] = v45;
    v49[4] = v36;
    v49[5] = v44;
    v49[6] = v37;
    v49[7] = v43;
    v49[8] = v35;
    LOBYTE(v49[9]) = v20;
    v49[10] = v12;
    v49[11] = v42;
    v49[12] = v31;
    v49[13] = v40;
    v49[14] = v39;
    v49[15] = v29;
    v49[16] = v38;
    v49[17] = v30;
    v23 = v87;
    LOBYTE(v49[18]) = v87;
    v49[19] = v32;
    v49[20] = v41;
    v49[21] = v80;
    v49[22] = v81;
    v49[23] = v82;
    v49[24] = v83;
    v49[25] = v84;
    v49[26] = v85;
    sub_1000DA928(v49, &v50);
    sub_100019CCC(v89);
    v50 = v8;
    v51 = v46;
    v52 = v10;
    v53 = v45;
    v54 = v36;
    v55 = v44;
    v56 = v37;
    v57 = v43;
    v58 = v35;
    v59 = v20;
    *v60 = *v88;
    *&v60[3] = *&v88[3];
    v61 = v12;
    v62 = v42;
    v63 = v31;
    v64 = v40;
    v65 = v39;
    v66 = v29;
    v67 = v38;
    v68 = v30;
    v69 = v23;
    *v70 = *v86;
    *&v70[3] = *&v86[3];
    v71 = v32;
    v72 = v41;
    v73 = v34;
    v74 = v28;
    v75 = v27;
    v76 = v26;
    v77 = v25;
    v78 = v24;
    sub_1000DA9B4(&v50);
    memcpy(v48, v49, 0xD8uLL);
    goto LABEL_13;
  }

  sub_1000DBE1C();
  sub_100019CCC(v2);
  if (v7)
  {

    if ((v5 & 1) == 0)
    {
LABEL_9:
      if (v4)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (v4)
  {
LABEL_10:
  }

LABEL_11:
  if (v47)
  {
  }

LABEL_13:
  sub_10001E868();
}

BOOL sub_1000D94E8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_10027BA28;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_1000DBF48();
  return v2 != 0;
}

unint64_t sub_1000D9564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D8958(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000D9594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D89A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D95DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D899C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D9610(uint64_t a1)
{
  v2 = sub_1000DA9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D964C(uint64_t a1)
{
  v2 = sub_1000DA9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D9688(void *a1@<X8>)
{
  sub_1000D8E0C();
  if (!v1)
  {
    memcpy(a1, __src, 0xD8uLL);
  }
}

BOOL sub_1000D96F8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D94E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000D97F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1717924456 && a2 == 0xE400000000000000;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
      {

        return 3;
      }

      else
      {
        v9 = sub_1001F7EA8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1000D9958(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D99D4()
{
  sub_10001E850();
  v2 = v0;
  v4 = v3;
  sub_1000183C4(&qword_1002B3518, &qword_10020AE10);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v5);
  sub_1000DBDEC();
  sub_10001AE68(v4, v4[3]);
  sub_1000DA770();
  sub_1000DBED4();
  sub_1001F8198();
  v11[0] = 0;
  sub_1000582D0();
  sub_1001F7D88();
  if (v1)
  {
    v6 = sub_10007B9BC();
    v7(v6);
  }

  else
  {
    v11[0] = 1;
    sub_1000DA8D4();
    sub_1000582D0();
    sub_1001F7DC8();
    v11[0] = 2;
    sub_1000582D0();
    sub_1001F7D88();
    memcpy(v12, (v2 + 32), 0xD8uLL);
    memcpy(v11, (v2 + 32), sizeof(v11));
    sub_1000DA928(v12, v10);
    sub_1000DA960();
    sub_1000582D0();
    sub_1001F7DC8();
    memcpy(v10, v11, sizeof(v10));
    sub_1000DA9B4(v10);
    v8 = sub_10007B9BC();
    v9(v8);
  }

  sub_10001E868();
}

void sub_1000D9BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  v25 = v24;
  v27 = v26;
  sub_1000183C4(&qword_1002B34F8, &qword_10020AE08);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v28);
  sub_1000DBDA0(v25);
  sub_1000DA770();
  sub_1001F8178();
  if (v23)
  {
    sub_100019CCC(v25);
  }

  else
  {
    sub_1000DBEF4();
    v29 = sub_1001F7C78();
    v31 = v30;
    sub_1000DA7C4();
    sub_1000DBEF4();
    sub_1001F7CB8();
    LOBYTE(v39[0]) = 2;
    sub_1000DBEF4();
    v32 = sub_1001F7C78();
    v34 = v33;
    v37 = v32;
    sub_1000DA818();
    sub_1000DBEF4();
    sub_1001F7CB8();
    v35 = sub_1000DBEA0();
    v36(v35);
    memcpy(v42, v41, sizeof(v42));
    v38[0] = v29;
    v38[1] = v31;
    v38[2] = v37;
    v38[3] = v34;
    memcpy(&v38[4], v41, 0xD8uLL);
    sub_1000DA86C(v38, v39);
    sub_100019CCC(v25);
    v39[0] = v29;
    v39[1] = v31;
    v39[2] = v37;
    v39[3] = v34;
    memcpy(v40, v42, sizeof(v40));
    sub_1000DA8A4(v39);
    memcpy(v27, v38, 0xF8uLL);
  }

  sub_10001E868();
}

Swift::Int sub_1000D9E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_1000D9ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D97F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D9F00(uint64_t a1)
{
  v2 = sub_1000DA770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D9F3C(uint64_t a1)
{
  v2 = sub_1000DA770();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D9F78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1000D9BD0(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0xF8uLL);
  }
}

uint64_t sub_1000D9FE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1000DA06C(uint64_t a1, uint64_t a2)
{
  sub_1000DBF74();
  v3 = v2;
  sub_1000183C4(&qword_1002B34D0, &qword_10020ADF8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_1000DBDEC();
  sub_1000DBDA0(v3);
  sub_1000DA6C8();
  sub_1000DBED4();
  sub_10001E838();
  sub_1001F8198();
  sub_1000183C4(&qword_1002B34E0, &qword_10020AE00);
  sub_1000DADFC(&qword_1002B34E8, sub_1000DA71C);
  sub_1001F7DC8();
  v5 = sub_10007B9BC();
  v6(v5);
  sub_1000DBF60();
}

void sub_1000DA1C4(uint64_t a1)
{
  sub_1000DBF74();
  v3 = v2;
  sub_1000183C4(&qword_1002B35B8, &qword_10020AE40);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_1000DBDA0(v3);
  sub_1000DA6C8();
  sub_10001E838();
  sub_1001F8178();
  if (!v1)
  {
    sub_1000183C4(&qword_1002B34E0, &qword_10020AE00);
    sub_1000DADFC(&qword_1002B35C0, sub_1000DAE64);
    sub_1001F7CB8();
    v5 = sub_1000DBF14();
    v6(v5);
  }

  sub_100019CCC(v3);
  sub_1000DBF60();
}

uint64_t sub_1000DA34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D9FE4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000DA378(uint64_t a1)
{
  v2 = sub_1000DA6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DA3B4(uint64_t a1)
{
  v2 = sub_1000DA6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000DA3F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000DA1C4(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1000DA438(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000DA458(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000DA478(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA4B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DA548(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DA610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DA6C8()
{
  result = qword_1002B34D8;
  if (!qword_1002B34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B34D8);
  }

  return result;
}

unint64_t sub_1000DA71C()
{
  result = qword_1002B34F0;
  if (!qword_1002B34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B34F0);
  }

  return result;
}

unint64_t sub_1000DA770()
{
  result = qword_1002B3500;
  if (!qword_1002B3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3500);
  }

  return result;
}

unint64_t sub_1000DA7C4()
{
  result = qword_1002B3508;
  if (!qword_1002B3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3508);
  }

  return result;
}

unint64_t sub_1000DA818()
{
  result = qword_1002B3510;
  if (!qword_1002B3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3510);
  }

  return result;
}

unint64_t sub_1000DA8D4()
{
  result = qword_1002B3520;
  if (!qword_1002B3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3520);
  }

  return result;
}

unint64_t sub_1000DA960()
{
  result = qword_1002B3528;
  if (!qword_1002B3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3528);
  }

  return result;
}

unint64_t sub_1000DA9E4()
{
  result = qword_1002B3538;
  if (!qword_1002B3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3538);
  }

  return result;
}

unint64_t sub_1000DAA38()
{
  result = qword_1002B3540;
  if (!qword_1002B3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3540);
  }

  return result;
}

unint64_t sub_1000DAA8C()
{
  result = qword_1002B3548;
  if (!qword_1002B3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3548);
  }

  return result;
}

uint64_t sub_1000DAAE0(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B3550, &qword_10020AE20);
    a2();
    result = sub_1000DBF28();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DAB48()
{
  result = qword_1002B3560;
  if (!qword_1002B3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3560);
  }

  return result;
}

unint64_t sub_1000DAB9C()
{
  result = qword_1002B3568;
  if (!qword_1002B3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3568);
  }

  return result;
}

unint64_t sub_1000DABF0()
{
  result = qword_1002B3578;
  if (!qword_1002B3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3578);
  }

  return result;
}

unint64_t sub_1000DAC44()
{
  result = qword_1002B3580;
  if (!qword_1002B3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3580);
  }

  return result;
}

unint64_t sub_1000DAC98()
{
  result = qword_1002B3590;
  if (!qword_1002B3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3590);
  }

  return result;
}

unint64_t sub_1000DACEC()
{
  result = qword_1002B3598;
  if (!qword_1002B3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3598);
  }

  return result;
}

unint64_t sub_1000DAD40()
{
  result = qword_1002B35A8;
  if (!qword_1002B35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35A8);
  }

  return result;
}

uint64_t sub_1000DADFC(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B34E0, &qword_10020AE00);
    a2();
    result = sub_1000DBF28();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DAE64()
{
  result = qword_1002B35C8;
  if (!qword_1002B35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35C8);
  }

  return result;
}

_BYTE *sub_1000DAEB8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DAF84);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000DAFB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DB084);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DB114()
{
  result = qword_1002B35D0;
  if (!qword_1002B35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35D0);
  }

  return result;
}

unint64_t sub_1000DB16C()
{
  result = qword_1002B35D8;
  if (!qword_1002B35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35D8);
  }

  return result;
}

unint64_t sub_1000DB1C4()
{
  result = qword_1002B35E0;
  if (!qword_1002B35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35E0);
  }

  return result;
}

unint64_t sub_1000DB21C()
{
  result = qword_1002B35E8;
  if (!qword_1002B35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35E8);
  }

  return result;
}

unint64_t sub_1000DB274()
{
  result = qword_1002B35F0;
  if (!qword_1002B35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35F0);
  }

  return result;
}

unint64_t sub_1000DB2CC()
{
  result = qword_1002B35F8;
  if (!qword_1002B35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B35F8);
  }

  return result;
}

unint64_t sub_1000DB324()
{
  result = qword_1002B3600;
  if (!qword_1002B3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3600);
  }

  return result;
}

unint64_t sub_1000DB37C()
{
  result = qword_1002B3608;
  if (!qword_1002B3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3608);
  }

  return result;
}

unint64_t sub_1000DB3D4()
{
  result = qword_1002B3610;
  if (!qword_1002B3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3610);
  }

  return result;
}

unint64_t sub_1000DB42C()
{
  result = qword_1002B3618;
  if (!qword_1002B3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3618);
  }

  return result;
}

unint64_t sub_1000DB484()
{
  result = qword_1002B3620;
  if (!qword_1002B3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3620);
  }

  return result;
}

unint64_t sub_1000DB4DC()
{
  result = qword_1002B3628;
  if (!qword_1002B3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3628);
  }

  return result;
}

unint64_t sub_1000DB534()
{
  result = qword_1002B3630;
  if (!qword_1002B3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3630);
  }

  return result;
}

unint64_t sub_1000DB588()
{
  result = qword_1002B3638;
  if (!qword_1002B3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3638);
  }

  return result;
}

unint64_t sub_1000DB5DC()
{
  result = qword_1002B3648;
  if (!qword_1002B3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3648);
  }

  return result;
}

unint64_t sub_1000DB630()
{
  result = qword_1002B3658;
  if (!qword_1002B3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3658);
  }

  return result;
}

unint64_t sub_1000DB684()
{
  result = qword_1002B3668;
  if (!qword_1002B3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3668);
  }

  return result;
}

_BYTE *sub_1000DB6D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DB7A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaFetchResponse.Datum.ProductAttributes.HostedContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DB8A8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000DB8E0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000DB97CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000DB9B8()
{
  result = qword_1002B3688;
  if (!qword_1002B3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3688);
  }

  return result;
}

unint64_t sub_1000DBA10()
{
  result = qword_1002B3690;
  if (!qword_1002B3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3690);
  }

  return result;
}

unint64_t sub_1000DBA68()
{
  result = qword_1002B3698;
  if (!qword_1002B3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3698);
  }

  return result;
}

unint64_t sub_1000DBAC0()
{
  result = qword_1002B36A0;
  if (!qword_1002B36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36A0);
  }

  return result;
}

unint64_t sub_1000DBB18()
{
  result = qword_1002B36A8;
  if (!qword_1002B36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36A8);
  }

  return result;
}

unint64_t sub_1000DBB70()
{
  result = qword_1002B36B0;
  if (!qword_1002B36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36B0);
  }

  return result;
}

unint64_t sub_1000DBBC8()
{
  result = qword_1002B36B8;
  if (!qword_1002B36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36B8);
  }

  return result;
}

unint64_t sub_1000DBC20()
{
  result = qword_1002B36C0;
  if (!qword_1002B36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36C0);
  }

  return result;
}

unint64_t sub_1000DBC78()
{
  result = qword_1002B36C8;
  if (!qword_1002B36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36C8);
  }

  return result;
}

uint64_t sub_1000DBF28()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000DBF48()
{
}

uint64_t sub_1000DBF88(int a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  v3 = v2 | HIWORD(v2);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

void ByteBuffer.getInteger<A>(at:endianness:as:)(uint64_t result@<X0>, void *a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, void *a5@<X6>, uint64_t a6@<X8>)
{
  v8 = *(*(a5 - 1) + 64);
  v9 = result - a3;
  if (__OFSUB__(result, a3))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a3) >= a3)
    {
      if ((HIDWORD(a3) - a3) - v8 < v9)
      {
        goto LABEL_6;
      }

      if (!__OFADD__(v9, v8))
      {
        if (v9 + v8 >= v9)
        {
          if (a5 == &type metadata for UInt8)
          {
            __chkstk_darwin(result);
            v25 = &type metadata for UInt8;
            v26 = v20;
            v27 = v21;
            v28 = v22;
            ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1000DCFA8, v24, a2, a3);
            sub_100018460(a6, 0, 1, &type metadata for UInt8);
          }

          else
          {
            __chkstk_darwin(result);
            v23[2] = v12;
            v23[3] = v13;
            v24[0] = v14;
            v24[1] = v15;
            v25 = a2;
            v26 = __PAIR64__(v16, a3);
            LODWORD(v27) = a4;
            WORD2(v27) = v17;
            BYTE6(v27) = v18;
            HIBYTE(v27) = v19 & 1;
            sub_1001F74B8();
            ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1000DCF60, v23, a2, a3);
          }

          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:

  sub_100018460(a6, 1, 1, a5);
}

uint64_t ByteBuffer.setInteger<A>(_:at:endianness:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ByteBuffer._toEndianness<A>(value:endianness:)(v14, v13 & 1, v13, v15, v16, v16, v17);
  v22 = v5;
  v23 = a2;
  sub_1000DD060(v12, sub_10007502C, v21, a5, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v18);
  (*(v9 + 8))(v12, a5);
  return v20[1];
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.setInteger<A>(_:at:endianness:as:)(a1, *(v4 + 12), a2 & 1, a4, a4);
  v6 = *(v4 + 12);
  v7 = __CFADD__(v6, result);
  v8 = v6 + result;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v8;
  }

  return result;
}

uint64_t FixedWidthInteger.previousPowerOf2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a2;
  v28[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v28 - v6;
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DD3F0();
  if (sub_1001F76A8())
  {
    sub_1000DD3F0();
    if (sub_1001F7698() >= 64)
    {
LABEL_13:
      v29 = 0;
      v22 = sub_1000DD154();
      sub_1000DD49C(&v29, &type metadata for Int, v22);
      sub_1000DD4B8();
      sub_1001F6B28();
      v23 = sub_1000DD484();
      v24(v23);
      if (v3)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1000DD3F0();
    v13 = sub_1001F76A8();
    sub_1000DD3F0();
    v14 = sub_1001F7698();
    if (v13)
    {
      if (v14 > 64)
      {
        goto LABEL_13;
      }

      sub_1000DD44C();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_1000DD4CC(&unk_10020B8F8, v16, v17, AssociatedConformanceWitness);
      sub_1000DD3FC(v7);
      sub_1000DD4B8();
      sub_1001F6A88();
      v18 = sub_1000DD484();
      v19(v18);
      if ((v3 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v14 >= 64)
    {
      goto LABEL_13;
    }
  }

  sub_1000DD3F0();
  if (!sub_1001F7688())
  {
LABEL_14:
    sub_1000DD44C();
    v25 = swift_getAssociatedConformanceWitness();
    sub_1000DD4CC(&unk_10020B8F8, v26, v27, v25);
    return sub_1000DD3FC(v7);
  }

LABEL_10:
  sub_1000DD44C();
  swift_getAssociatedConformanceWitness();
  sub_1001F7F88();
  sub_1000DD3FC(v7);
  result = sub_1001F7A38();
  v21 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_1001F7A58();
    if (!__OFSUB__(v21, result))
    {
      v29 = v21 - result;
      sub_1000DD154();
      sub_1001F7678();
      return (*(v9 + 8))(v12, a1);
    }
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.nextPowerOf2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v44 = *(v7 + 24);
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  sub_10004FE10();
  v43 = v9;
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  sub_10002DFFC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10004FE10();
  v41 = v16;
  __chkstk_darwin(v17);
  v42 = &v38 - v18;
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  sub_1000DD3F0();
  v22 = sub_1001F76A8();
  v46 = a3;
  if ((v22 & 1) == 0)
  {
    v23 = v14;
    sub_1000DD3F0();
    v14 = sub_1001F76A8();
    sub_1000DD3F0();
    v24 = sub_1001F7698();
    if (v14)
    {
      if (v24 <= 64)
      {
        sub_1000DD44C();
        swift_getAssociatedConformanceWitness();
        sub_1001F7F88();
        sub_1000DD3FC(v12);
        sub_1000DD438();
        sub_1001F6A88();
        v25 = sub_1000DD458();
        v26(v25);
        if ((AssociatedTypeWitness & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }
    }

    else if (v24 < 64)
    {
      sub_1000DD3F0();
      v14 = v23;
      if (!sub_1001F7688())
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v47 = 0;
    v35 = sub_1000DD154();
    sub_1000DD49C(&v47, &type metadata for Int, v35);
    sub_1000DD438();
    sub_1001F6B28();
    v36 = sub_1000DD458();
    v37(v36);
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_1000DD44C();
    swift_getAssociatedConformanceWitness();
    sub_1000DD474();
    sub_1001F7F88();
    return sub_1000DD3FC(v12);
  }

  sub_1000DD3F0();
  if (sub_1001F7698() >= 64)
  {
    v47 = 0;
    v27 = sub_1000DD154();
    sub_1000DD49C(&v47, &type metadata for Int, v27);
    sub_1000DD438();
    v28 = sub_1001F6B28();
    (*(v14 + 8))(v21, a1);
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_3:
  sub_1000DD3F0();
  if (!sub_1001F7688())
  {
    goto LABEL_16;
  }

LABEL_10:
  v38 = v7;
  sub_1000DD44C();
  swift_getAssociatedConformanceWitness();
  v40 = v4;
  sub_1000DD474();
  sub_1001F7F88();
  sub_1000DD3FC(v12);
  v39 = sub_1001F7A38();
  v29 = v43;
  sub_1000DD474();
  sub_1001F7F88();
  v30 = v41;
  sub_1000DD3FC(v29);
  sub_1001F7AE8();
  v31 = *(v14 + 8);
  v31(v30, a1);
  v32 = sub_1001F7A58();
  v33 = sub_1000DD44C();
  result = (v31)(v33);
  if (__OFSUB__(v39, v32))
  {
    __break(1u);
  }

  else
  {
    v47 = v39 - v32;
    sub_1000DD154();
    sub_1001F7678();
    return (v31)(v21, a1);
  }

  return result;
}