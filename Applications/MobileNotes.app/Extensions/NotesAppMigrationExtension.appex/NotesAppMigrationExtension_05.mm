uint64_t sub_10006C4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a2;
  v4 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - v6;
  v7 = sub_100084EF8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  if (qword_1000A53E8 != -1)
  {
    swift_once();
  }

  v14 = sub_100084F28();
  sub_10000B614(v14, qword_1000A5AB8);
  v34 = a1;
  sub_100084A78();
  v15 = v38;
  v16 = [v38 description];
  v37 = v13;
  if (v16)
  {
  }

  else
  {
    sub_100085098();
    sub_100085068();

    v13 = v37;
  }

  sub_100084F18();
  sub_100084ED8();
  v17 = sub_100084F18();
  v18 = sub_100085408();
  if (sub_1000854D8())
  {
    v19 = v8;
    v20 = v7;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v22, "Export Object", "", v21, 2u);
    v7 = v20;
    v8 = v19;
    v13 = v37;
  }

  (*(v8 + 16))(v11, v13, v7);
  sub_100084F68();
  swift_allocObject();
  v23 = sub_100084F58();
  v24 = v32;
  v25 = v34;
  (*(v5 + 16))(v32, v34, v4);
  v26 = (*(v5 + 88))(v24, v4);
  if (v26 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Account to be exported does not exist anymore — skipping";
    v29 = sub_10006D33C;
LABEL_16:
    sub_10006EC38(v33, v25, v35, v36, v29, v28);
    objc_autoreleasePoolPop(v27);
    sub_100015C94(v23);

    return (*(v8 + 8))(v37, v7);
  }

  if (v26 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Folder to be exported does not exist anymore — skipping";
    v29 = sub_10006D868;
    goto LABEL_16;
  }

  if (v26 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Note to be exported does not exist anymore — skipping";
    v29 = sub_10006DD90;
    goto LABEL_16;
  }

  if (v26 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Object to be exported does not exist anymore — skipping";
    v29 = sub_10006EEAC;
    goto LABEL_16;
  }

  result = sub_100085938();
  __break(1u);
  return result;
}

uint64_t sub_10006C9DC(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_100005740(&qword_1000A59F0, &qword_10008B510);
    sub_100084AE8();
    if (v1)
    {
      v2 = sub_100085068();

      v3 = [v2 ic_sanitizedFilenameString];

      v4 = sub_100085098();
      v6 = v5;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        return v4;
      }
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = sub_100085068();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = sub_100085098();
  return v12;
}

uint64_t sub_10006CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v70 = a6;
  v10 = sub_1000847C8();
  v11 = __chkstk_darwin(v10);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v69 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v23 = &v69 - v22;
  v83 = a5;
  v84 = a1;
  v77 = a4;
  v85 = a2;
  if (a5)
  {
    v71 = v21;
    v24 = sub_100085068();
    v25 = [v24 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v26 = sub_100085068();
    v27 = [v26 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084738();

    v28 = v71;
    v29 = *(v71 + 8);
    v29(v20, v10);
    v30 = *(v82 + 88);
    v31 = *(v82 + 96);
    swift_getObjectType();
    v81 = v30;
    v82 = v31;
    v32 = v86;
    sub_1000849C8();
    v33 = v32;
    if (!v32)
    {
      return (*(v28 + 32))(v70, v23, v10);
    }

    v29(v23, v10);
  }

  else
  {
    v80 = v10;
    v28 = v21;
    v34 = sub_100085068();
    v35 = [v34 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v36 = *(v82 + 88);
    v37 = *(v82 + 96);
    swift_getObjectType();
    v81 = v36;
    v82 = v37;
    v38 = v86;
    sub_1000849C8();
    v33 = v38;
    if (!v38)
    {
      return (*(v28 + 32))(v70, v17, v80);
    }

    v29 = *(v28 + 8);
    v10 = v80;
    v29(v17, v80);
  }

  v92 = v33;
  swift_errorRetain();
  v39 = sub_100005740(&qword_1000A5B98, &unk_10008B760);
  v78 = sub_100008250(0, &qword_1000A5BA0, NSError_ptr);
  v79 = v39;
  if (!swift_dynamicCast())
  {
  }

  v40 = v91[0];
  if ([v91[0] code] != 516)
  {
  }

  v86 = 0;
  v69 = v20;
  v80 = v10;

  v74 = v40;
  v75 = ICAttachmentNameMaxLength;
  v71 = v28;
  v73 = v28 + 8;
  for (i = 2; ; ++i)
  {
    v88 = i;
    v89 = 32;
    v90 = 0xE100000000000000;
    v93._countAndFlagsBits = sub_100085908();
    sub_100085158(v93);

    v42 = v89;
    v43 = v90;
    v44 = sub_100085068();
    v45 = [v44 ic_sanitizedFilenameString];

    v46 = sub_100085098();
    v48 = v47;

    v49 = sub_100085128();
    v51 = __OFSUB__(v75, v49);
    result = v75 - v49;
    if (v51)
    {
      break;
    }

    sub_100079EB8(result, v46, v48, v50);

    v53 = sub_1000850F8();
    v55 = v54;

    if (v83)
    {
      v89 = v53;
      v90 = v55;

      v94._countAndFlagsBits = v42;
      v94._object = v43;
      sub_100085158(v94);

      v56 = v69;
      sub_100084718();

      v57 = sub_100085068();
      v58 = [v57 ic_sanitizedFilenameString];

      sub_100085098();
      v59 = v76;
      sub_100084738();

      v60 = v80;
      v29(v56, v80);
      swift_getObjectType();
      v61 = v86;
      sub_1000849C8();
      v62 = v61;
      if (!v61)
      {

        (*(v71 + 32))(v70, v59, v60);
      }

      v29(v59, v60);
    }

    else
    {
      v89 = v53;
      v90 = v55;

      v95._countAndFlagsBits = v42;
      v95._object = v43;
      sub_100085158(v95);

      v63 = v72;
      sub_100084718();

      swift_getObjectType();
      v64 = v86;
      sub_1000849C8();
      v62 = v64;
      if (!v64)
      {
        v68 = v80;

        (*(v71 + 32))(v70, v63, v68);
      }

      v29(v63, v80);
    }

    v65 = v74;
    v89 = v62;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v66 = v88, v67 = [v88 code], v66, v67 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v86 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_10006D33C(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v56 = a3;
  v54 = a2;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  sub_100085348();
  if (!v4)
  {
    v55 = a4;
    v48 = v14;
    v49 = v7;
    v50 = v11;
    v51 = v9;
    v57 = v16;
    v52 = 0;
    v17 = a1[3];
    v18 = a1[4];
    sub_10000626C(a1, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = a1;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v24 = sub_100085068();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      v26 = sub_100085098();
      v22 = v27;

      v19 = v26;
    }

    v29 = v51;
    v28 = v52;
    v30 = v60;
    if (*(v60 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0x746E756F636361;
    }

    if (*(v60 + 24))
    {
      v32 = 0;
    }

    else
    {
      v32 = 0xE700000000000000;
    }

    sub_10006CB5C(v19, v22, v56, v31, v32, v57);
    if (v28)
    {
    }

    else
    {

      if (*(v30 + 25) != 1)
      {
        v40 = *(v30 + 96);
        v52 = *(v30 + 88);
        v56 = v40;
        v41 = v48;
        sub_100084718();
        v42 = v21[3];
        v43 = v21[4];
        sub_10000626C(v21, v42);
        v44 = *(v30 + 40);
        v58[0] = *(v30 + 24);
        v58[1] = v44;
        v59[0] = *(v30 + 56);
        *(v59 + 13) = *(v30 + 69);
        v45 = (*(v43 + 96))(v58, v42, v43);
        v47 = v46;
        swift_getObjectType();
        sub_1000849A8();
        (*(v50 + 8))(v41, v10);
        sub_10000650C(v45, v47);
      }

      v52 = v10;
      v33 = *(v54 + 16);
      v34 = v49;
      if (v33)
      {
        v35 = v53 + 16;
        v56 = *(v53 + 16);
        v36 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v54 = *(v53 + 72);
        v37 = (v53 + 8);
        do
        {
          v38 = v35;
          v56(v29, v36, v34);
          v39 = objc_autoreleasePoolPush();
          sub_10006C4E8(v29, v57, v55);
          objc_autoreleasePoolPop(v39);
          (*v37)(v29, v34);
          v36 += v54;
          --v33;
          v35 = v38;
        }

        while (v33);
      }

      (*(v50 + 8))(v57, v52);
    }
  }
}

void sub_10006D868(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v56 = a3;
  v54 = a2;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  sub_100085348();
  if (!v4)
  {
    v55 = a4;
    v48 = v14;
    v49 = v7;
    v50 = v11;
    v51 = v9;
    v57 = v16;
    v52 = 0;
    v17 = a1[3];
    v18 = a1[4];
    sub_10000626C(a1, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = a1;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v24 = sub_100085068();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      v26 = sub_100085098();
      v22 = v27;

      v19 = v26;
    }

    v29 = v51;
    v28 = v52;
    v30 = v60;
    if (*(v60 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0x7265646C6F66;
    }

    if (*(v60 + 24))
    {
      v32 = 0;
    }

    else
    {
      v32 = 0xE600000000000000;
    }

    sub_10006CB5C(v19, v22, v56, v31, v32, v57);
    if (v28)
    {
    }

    else
    {

      if (*(v30 + 25) != 1)
      {
        v40 = *(v30 + 96);
        v52 = *(v30 + 88);
        v56 = v40;
        v41 = v48;
        sub_100084718();
        v42 = v21[3];
        v43 = v21[4];
        sub_10000626C(v21, v42);
        v44 = *(v30 + 40);
        v58[0] = *(v30 + 24);
        v58[1] = v44;
        v59[0] = *(v30 + 56);
        *(v59 + 13) = *(v30 + 69);
        v45 = (*(v43 + 96))(v58, v42, v43);
        v47 = v46;
        swift_getObjectType();
        sub_1000849A8();
        (*(v50 + 8))(v41, v10);
        sub_10000650C(v45, v47);
      }

      v52 = v10;
      v33 = *(v54 + 16);
      v34 = v49;
      if (v33)
      {
        v35 = v53 + 16;
        v56 = *(v53 + 16);
        v36 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v54 = *(v53 + 72);
        v37 = (v53 + 8);
        do
        {
          v38 = v35;
          v56(v29, v36, v34);
          v39 = objc_autoreleasePoolPush();
          sub_10006C4E8(v29, v57, v55);
          objc_autoreleasePoolPop(v39);
          (*v37)(v29, v34);
          v36 += v54;
          --v33;
          v35 = v38;
        }

        while (v33);
      }

      (*(v50 + 8))(v57, v52);
    }
  }
}

void sub_10006DD90(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v131 = a3;
  v132 = a2;
  v134 = a1;
  v129 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v129);
  v130 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1000847C8();
  v133 = *(v136 - 8);
  v6 = __chkstk_darwin(v136);
  v128 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v119 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v119 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v119 - v15;
  __chkstk_darwin(v14);
  v18 = &v119 - v17;
  v19 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v119 - v24;
  v26 = v141;
  sub_100085348();
  if (v26)
  {
    return;
  }

  v119 = v13;
  v123 = v16;
  v127 = v18;
  v120 = v10;
  v121 = v20;
  v122 = v23;
  v141 = v19;
  v135 = 0;
  v28 = v137;
  v126 = *(v137 + 25);
  v29 = v136;
  v30 = v134;
  if (v126 == 1)
  {
    sub_10001C118(v134, v142);
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v31 = v145;
      v32 = [v145 isPasswordProtectedAndLocked];

      if (v32)
      {
        return;
      }
    }
  }

  v124 = a4;
  __chkstk_darwin(v27);
  v33 = &v119;
  *(&v119 - 2) = sub_100084C08();
  *(&v119 - 1) = sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  swift_getKeyPath();
  v34 = v132;
  v35 = *(v132 + 16);
  v125 = v35;
  if (v35)
  {
    v142[0] = _swiftEmptyArrayStorage;
    sub_10003BDAC(0, v35, 0);
    v36 = v142[0];
    v37 = *(v121 + 16);
    v33 = (v34 + ((*(v121 + 80) + 32) & ~*(v121 + 80)));
    v138 = *(v121 + 72);
    v139 = v37;
    isa = (v121 + 16);
    v38 = (v121 + 8);
    do
    {
      v39 = v141;
      v139(v25, v33, v141);
      swift_getAtKeyPath();
      v40 = v145;
      (*v38)(v25, v39);
      v142[0] = v36;
      v42 = v36[2];
      v41 = v36[3];
      if (v42 >= v41 >> 1)
      {
        sub_10003BDAC((v41 > 1), v42 + 1, 1);
        v36 = v142[0];
      }

      v36[2] = v42 + 1;
      v36[v42 + 4] = v40;
      v33 = (v33 + v138);
      --v35;
    }

    while (v35);

    v29 = v136;
    v45 = v137;
    v46 = v133;
    v30 = v134;
    v47 = v36[2];
    if (v47)
    {
LABEL_11:
      v48 = 0;
      v49 = v36 + 4;
      while (1)
      {
        v50 = *v49++;
        v51 = __OFADD__(v48, v50);
        v48 += v50;
        if (v51)
        {
          break;
        }

        if (!--v47)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
    v46 = v133;
    v45 = v28;
    v47 = _swiftEmptyArrayStorage[2];
    if (v47)
    {
      goto LABEL_11;
    }
  }

  v48 = 0;
LABEL_17:

  if (__OFADD__(v48, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v52.super.isa = sub_100085338(v48 + 1, 1).super.isa;
  if (v126 == 1)
  {
    if (*(v45 + 24))
    {
      v53 = v30[3];
      v54 = v30[4];
      sub_10000626C(v30, v53);
      v55 = (*(v54 + 8))(v53, v54);
      v56 = v119;
      v57 = v135;
      sub_10006CB5C(v55, v58, v131, 0, 0xE000000000000000, v119);
      v135 = v57;
      if (v57)
      {

LABEL_33:

        return;
      }

      isa = v52.super.isa;

      v72 = v127;
      (*(v46 + 32))(v127, v56, v29);
      v66 = 0xE400000000000000;
      v64 = 1702129518;
      goto LABEL_36;
    }

    v66 = 0xE400000000000000;
    v64 = 1702129518;
    v74 = v135;
    v75 = v131;
    v72 = v127;
    v73 = v123;
    goto LABEL_32;
  }

  v59 = v30[3];
  v60 = v30[4];
  sub_10000626C(v30, v59);
  (*(v60 + 16))(v59, v60);
  if (v61)
  {
    v62 = sub_100085068();

    v63 = [v62 ic_sanitizedFilenameString];

    v64 = sub_100085098();
    v66 = v65;

    v67 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v67 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v67)
    {
      goto LABEL_28;
    }
  }

  v68 = [objc_opt_self() mainBundle];
  v69 = sub_100085068();
  v70 = [v68 localizedStringForKey:v69 value:0 table:0];

  v64 = sub_100085098();
  v66 = v71;

LABEL_28:
  v72 = v127;
  v73 = v123;
  if (*(v45 + 24))
  {
    isa = v52.super.isa;
    (*(v46 + 16))(v127, v131, v29);
LABEL_36:
    v142[0] = v64;
    v142[1] = v66;
    v146._countAndFlagsBits = 6581550;
    v146._object = 0xE300000000000000;
    sub_100085158(v146);
    goto LABEL_37;
  }

  v74 = v135;
  v75 = v131;
LABEL_32:
  sub_10006CB5C(v64, v66, v75, 1702129518, 0xE400000000000000, v73);
  v135 = v74;
  if (v74)
  {
    goto LABEL_33;
  }

  isa = v52.super.isa;

  (*(v46 + 32))(v72, v73, v29);
LABEL_37:
  v76 = v120;
  sub_100084718();

  v77 = v30[3];
  v78 = v30[4];
  sub_10000626C(v30, v77);
  v79 = *(v45 + 40);
  v143[0] = *(v45 + 24);
  v143[1] = v79;
  *v144 = *(v45 + 56);
  *&v144[13] = *(v45 + 69);
  v80 = v135;
  v81 = (*(v78 + 96))(v143, v77, v78);
  if (v80)
  {
    v83 = *(v133 + 8);
    v84 = v136;
    v83(v76, v136);

    v83(v72, v84);
    return;
  }

  v85 = v81;
  v86 = v82;
  ObjectType = swift_getObjectType();
  sub_1000849A8();
  v135 = 0;
  sub_10000650C(v85, v86);
  v88 = v136;
  if (v126 != 1)
  {
    v25 = v122;
    goto LABEL_44;
  }

  v139 = ObjectType;
  sub_10001C118(v30, v142);
  sub_100005740(&qword_1000A59C8, &qword_10008B770);
  sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
  v89 = swift_dynamicCast();
  v25 = v122;
  if (!v89)
  {
    goto LABEL_44;
  }

  v30 = v145;
  v90 = v130;
  sub_1000082C8(v30, v130);
  sub_100075E6C(&qword_1000A5718, 255, type metadata accessor for NoteMetadata, &unk_10008B2C8);
  v91 = v135;
  v43 = sub_100084E28();
  v33 = v91;
  if (v91)
  {

    sub_10007A7A0(v90, type metadata accessor for NoteMetadata);
    v92 = *(v133 + 8);
    v92(v120, v88);
    v92(v127, v88);
    return;
  }

LABEL_55:
  v114 = v43;
  v115 = v44;
  v116 = v128;
  sub_100084718();
  v138 = v115;
  sub_1000849A8();
  v135 = v33;
  if (v33)
  {

    sub_10000650C(v114, v138);
    v117 = *(v133 + 8);
    v118 = v136;
    v117(v116, v136);
    sub_10007A7A0(v130, type metadata accessor for NoteMetadata);
    v117(v120, v118);
    v117(v127, v118);
    return;
  }

  sub_10000650C(v114, v138);

  (*(v133 + 8))(v116, v136);
  sub_10007A7A0(v130, type metadata accessor for NoteMetadata);
LABEL_44:
  v93 = v143[0];
  v94 = isa;
  v95 = [(objc_class *)isa completedUnitCount];
  v96 = v141;
  v97 = v132;
  if (__OFADD__(v95, 1))
  {
LABEL_59:
    __break(1u);
    return;
  }

  [(objc_class *)v94 setCompletedUnitCount:v95 + 1];
  v98 = v94;
  if (v125)
  {
    v99 = v121 + 16;
    v100 = *(v121 + 16);
    v101 = v97 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v102 = *(v121 + 72);
    v103 = (v121 + 8);
    do
    {
      v105 = v99;
      v100(v25, v101, v96);
      v106 = objc_autoreleasePoolPush();
      v107 = v25;
      v108 = v106;
      if (v93)
      {
        v104 = v135;
        sub_100071044(v107, v127, v98);
        if (v104)
        {
LABEL_51:
          v109 = v141;
          objc_autoreleasePoolPop(v108);

          (*v103)(v122, v109);
          v110 = *(v133 + 8);
          v111 = v136;
          v110(v120, v136);
          v110(v127, v111);
          return;
        }
      }

      else
      {
        v104 = v135;
        sub_10006C4E8(v107, v127, v98);
        if (v104)
        {
          goto LABEL_51;
        }
      }

      v135 = v104;
      v96 = v141;
      objc_autoreleasePoolPop(v108);
      v25 = v122;
      (*v103)(v122, v96);
      v101 += v102;
      --v125;
      v99 = v105;
    }

    while (v125);
  }

  sub_100071924([v124 completedUnitCount]);

  v112 = *(v133 + 8);
  v113 = v136;
  v112(v120, v136);
  v112(v127, v113);
}

void sub_10006EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t), const char *a6)
{
  sub_100084C08();
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  sub_100084A68();
  if (!v6)
  {
    if (v16[3])
    {
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      if (swift_dynamicCast())
      {
        if (*(&v18 + 1))
        {
          sub_10001C024(&v17, v20);
          sub_100005740(&qword_1000A59F0, &qword_10008B510);
          v11 = sub_100084AF8();
          a5(v20, v11, a3, a4);
          sub_100006304(v20);

          return;
        }
      }

      else
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
      }
    }

    else
    {
      sub_1000058F0(v16, &qword_1000A5AD0, &unk_10008B5E0);
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
    }

    sub_1000058F0(&v17, &qword_1000A5BA8, &qword_10008F750);
    if (qword_1000A53E0 != -1)
    {
      swift_once();
    }

    v12 = sub_100084FB8();
    sub_10000B614(v12, qword_1000A5AA0);
    v13 = sub_100084FA8();
    v14 = sub_100085388();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 2u);
    }
  }
}

void sub_10006EEAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v324 = a3;
  v316 = a2;
  v322 = a1;
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v6 = __chkstk_darwin(v5 - 8);
  v306 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v310 = &v296 - v8;
  v317 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v313 = *(v317 - 8);
  v9 = __chkstk_darwin(v317);
  v308 = &v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v318 = &v296 - v11;
  v309 = sub_1000850C8();
  v311 = *(v309 - 8);
  __chkstk_darwin(v309);
  v307 = &v296 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000847C8();
  v14 = *(v13 - 8);
  v319 = v13;
  v320 = v14;
  v15 = __chkstk_darwin(v13);
  v303 = &v296 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v312 = &v296 - v18;
  v19 = __chkstk_darwin(v17);
  v314 = &v296 - v20;
  v21 = __chkstk_darwin(v19);
  *&v304 = &v296 - v22;
  v23 = __chkstk_darwin(v21);
  v305 = &v296 - v24;
  v25 = __chkstk_darwin(v23);
  v315 = &v296 - v26;
  v27 = __chkstk_darwin(v25);
  v321 = &v296 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v296 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v296 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v296 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v296 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v296 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v296 - v45;
  __chkstk_darwin(v44);
  v48 = &v296 - v47;
  v49 = v331;
  sub_100085348();
  if (v49)
  {
    return;
  }

  v301 = v40;
  v302 = v37;
  v297 = v31;
  v298 = v34;
  v299 = v43;
  v300 = v46;
  v331 = 0;
  v323 = a4;
  if (*(v325 + 24) == 1)
  {
    v50 = *(v325 + 25);
    v51 = v322;
    v52 = v48;
    if (v50 == 2)
    {
      sub_10001C118(v322, v328);
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
      if (swift_dynamicCast())
      {
        v53 = v326;
        v54 = [v326 isTable];

        if (v54)
        {
          return;
        }
      }
    }

    sub_10001C118(v51, v328);
    v55 = sub_100005740(&qword_1000A59C8, &qword_10008B770);
    v56 = sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v57 = v326;
      v58 = [v326 parentAttachment];

      if (v58)
      {

        return;
      }
    }

    v312 = v56;
    v66 = *(v51 + 24);
    v65 = *(v51 + 32);
    sub_10000626C(v51, v66);
    v315 = (*(v65 + 88))(v66, v65);
    v68 = v67;
    v69 = *(v51 + 24);
    v70 = *(v51 + 32);
    sub_10000626C(v51, v69);
    v71 = (*(v70 + 80))(v69, v70);
    LODWORD(v321) = v50;
    v314 = v55;
    if (v72 >> 60 != 15)
    {
      if (v68)
      {
        v310 = *(v325 + 96);
        v73 = v71;
        v74 = v72;
        swift_getObjectType();

        sub_100084718();
        v315 = v68;

        v75 = v331;
        sub_1000849A8();
        if (v75)
        {
          v310 = v74;
          v331 = v73;
          (*(v320 + 8))(v52, v319);
          if (qword_1000A53E0 != -1)
          {
            goto LABEL_149;
          }

          while (1)
          {
            v76 = sub_100084FB8();
            sub_10000B614(v76, qword_1000A5AA0);
            swift_errorRetain();
            v77 = sub_100084FA8();
            v78 = sub_100085378();

            v79 = os_log_type_enabled(v77, v78);
            v68 = v315;
            if (v79)
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v328[0] = v81;
              *v80 = 136315138;
              swift_getErrorValue();
              v82 = sub_100085988();
              v84 = sub_100038A4C(v82, v83, v328);

              *(v80 + 4) = v84;
              v51 = v322;
              _os_log_impl(&_mh_execute_header, v77, v78, "Cannot export attachment fallback PDF file — skipping {error: %s}", v80, 0xCu);
              sub_100006304(v81);
              v68 = v315;

              sub_10001C19C(v331, v310);
            }

            else
            {
              sub_10001C19C(v331, v310);
            }

            v120 = 0;
            v118 = v323;
            v119 = v317;
LABEL_56:
            v113 = v318;
LABEL_57:
            if (v321 != 1)
            {
              goto LABEL_67;
            }

            sub_10001C118(v51, v328);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_67;
            }

            v177 = v326;
            if (([v326 isAudio] & 1) == 0)
            {

LABEL_67:

              goto LABEL_68;
            }

            v331 = v120;
            v178 = [v177 attachmentModel];
            objc_opt_self();
            v179 = swift_dynamicCastObjCClass();
            v180 = v177;
            if (v179)
            {
              break;
            }

LABEL_119:
            v120 = v331;
LABEL_68:
            v331 = v120;
            v196 = [v118 completedUnitCount];
            if (!__OFADD__(v196, 1))
            {
              [v118 setCompletedUnitCount:v196 + 1];
              v197 = *(v316 + 16);
              if (v197)
              {
                v198 = v313 + 16;
                v322 = *(v313 + 16);
                v199 = v316 + ((*(v313 + 80) + 32) & ~*(v313 + 80));
                v321 = *(v313 + 72);
                v200 = (v313 + 8);
                while (1)
                {
                  v201 = v198;
                  (v322)(v113, v199, v119);
                  v202 = v119;
                  v203 = objc_autoreleasePoolPush();
                  v204 = v331;
                  sub_10006C4E8(v113, v324, v118);
                  v331 = v204;
                  if (v204)
                  {
                    break;
                  }

                  objc_autoreleasePoolPop(v203);
                  (*v200)(v113, v202);
                  v199 += v321;
                  --v197;
                  v118 = v323;
                  v119 = v202;
                  v198 = v201;
                  if (!v197)
                  {
                    return;
                  }
                }

                objc_autoreleasePoolPop(v203);
                (*v200)(v113, v202);
              }

              return;
            }

LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
          }

          v181 = v179;
          v314 = v180;
          v315 = v68;
          v321 = v178;
          v182 = *(v51 + 24);
          v183 = *(v51 + 32);
          sub_10000626C(v51, v182);
          v184 = (*(v183 + 8))(v182, v183);
          v328[0] = 0x7263736E6172745FLL;
          v328[1] = 0xEF7478742E747069;
          v326 = v184;
          v327 = v185;
          v326 = sub_100085198();
          v327 = v186;
          sub_100085148();
          v187 = v324;
          sub_100084718();

          v188 = [v181 audioDocument];
          if (!v188)
          {
            goto LABEL_154;
          }

          v189 = v188;
          v190 = [v188 transcriptAsPlainText];

          sub_100085098();
          v191 = v307;
          sub_1000850B8();
          v192 = sub_1000850A8();
          v159 = v193;
          v187 = v311 + 1;
          v312 = v311[1];
          v162 = (v312)(v191, v309);
          v311 = v187;
          if (v159 >> 60 == 15)
          {
LABEL_100:
            v229 = *(v322 + 24);
            v230 = *(v322 + 32);
            sub_10000626C(v322, v229);
            v231 = (*(v230 + 8))(v229, v230);
            strcpy(v328, "_summary.txt");
            BYTE5(v328[1]) = 0;
            HIWORD(v328[1]) = -5120;
            v326 = v231;
            v327 = v232;
            v326 = sub_100085198();
            v327 = v233;
            sub_100085148();
            v187 = v324;
            sub_100084718();

            v234 = [v181 audioDocument];
            if (!v234)
            {
              goto LABEL_155;
            }

            v235 = v234;

            v236 = [v235 recordingSummaryAsPlainText];

            sub_100085098();
            sub_1000850B8();
            v187 = v191;
            v237 = sub_1000850A8();
            v239 = v238;

            (v312)(v187, v309);
            v51 = v300;
            if (v239 >> 60 == 15)
            {

              v240 = v299;
LABEL_118:
              v250 = v319;
              v251 = *(v320 + 8);
              v251(v240, v319);
              v251(v51, v250);
              v118 = v323;
              goto LABEL_119;
            }

            v241 = v239 >> 62;
            v242 = v299;
            v243 = v321;
            if ((v239 >> 62) > 1)
            {
              if (v241 != 2)
              {
                goto LABEL_115;
              }

              v246 = *(v237 + 16);
              v245 = *(v237 + 24);
              v213 = __OFSUB__(v245, v246);
              v244 = v245 - v246;
              if (!v213)
              {
LABEL_112:
                if (v244 >= 1)
                {
                  swift_getObjectType();
                  v247 = v331;
                  sub_1000849A8();
                  v331 = v247;
                  if (v247)
                  {

                    sub_10001C19C(v237, v239);
                    v248 = v319;
                    v249 = *(v320 + 8);
                    v249(v242, v319);
                    v249(v51, v248);
                    return;
                  }

                  goto LABEL_117;
                }

LABEL_115:

LABEL_117:
                sub_10001C19C(v237, v239);
                v240 = v242;
                goto LABEL_118;
              }

              __break(1u);
            }

            else if (!v241)
            {
              v244 = BYTE6(v239);
              goto LABEL_112;
            }

            LODWORD(v244) = HIDWORD(v237) - v237;
            if (__OFSUB__(HIDWORD(v237), v237))
            {
              goto LABEL_153;
            }

            v244 = v244;
            goto LABEL_112;
          }

          v194 = v159 >> 62;
          if ((v159 >> 62) > 1)
          {
            if (v194 != 2)
            {
LABEL_99:
              sub_10001C19C(v192, v159);
              goto LABEL_100;
            }

            v212 = *(v192 + 16);
            v211 = *(v192 + 24);
            v213 = __OFSUB__(v211, v212);
            v195 = v211 - v212;
            if (v213)
            {
              __break(1u);
              goto LABEL_85;
            }
          }

          else if (v194)
          {
            LODWORD(v195) = HIDWORD(v192) - v192;
            if (__OFSUB__(HIDWORD(v192), v192))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            v195 = v195;
          }

          else
          {
            v195 = BYTE6(v159);
          }

          if (v195 >= 1)
          {
            swift_getObjectType();
            v227 = v300;
            v228 = v331;
            sub_1000849A8();
            v331 = v228;
            if (v228)
            {
              (*(v320 + 8))(v227, v319);

              sub_10001C19C(v192, v159);

              return;
            }

            v119 = v317;
            v113 = v318;
            v191 = v307;
          }

          goto LABEL_99;
        }

        (*(v320 + 8))(v52, v319);
        v137 = v73;
        v138 = v74;
        goto LABEL_44;
      }

      sub_10001C19C(v71, v72);
    }

    v101 = *(v51 + 24);
    v102 = *(v51 + 32);
    sub_10000626C(v51, v101);
    v103 = (*(v102 + 72))(v101, v102);
    if (v104 >> 60 == 15)
    {
      if (v68)
      {
        v105 = *(v51 + 24);
        v106 = *(v51 + 32);
        sub_10000626C(v51, v105);
        v107 = *(v106 + 48);

        v108 = v310;
        v107(v105, v106);
        v110 = v319;
        v109 = v320;
        v111 = (*(v320 + 48))(v108, 1, v319);
        v112 = v325;
        v113 = v318;
        if (v111 == 1)
        {
          sub_1000058F0(v108, &qword_1000A56E8, &qword_10008D350);
          v114 = *(v51 + 24);
          v115 = *(v51 + 32);
          sub_10000626C(v51, v114);
          v116 = (*(v115 + 56))(v114, v115);
          if (v117 >> 60 == 15)
          {

            v118 = v323;
            v119 = v317;
            v120 = v331;
            goto LABEL_57;
          }

          v164 = v116;
          v165 = v117;
          v310 = *(v112 + 96);
          swift_getObjectType();
          v166 = v297;
          sub_100084718();

          v167 = v331;
          sub_1000849A8();
          v120 = v167;
          if (!v167)
          {
            (*(v320 + 8))(v166, v319);
            sub_10001C19C(v164, v165);
            v51 = v322;
            v118 = v323;
            v119 = v317;
            goto LABEL_57;
          }

          (*(v320 + 8))(v166, v319);
          sub_10001C19C(v164, v165);
          v51 = v322;
        }

        else
        {
          (*(v109 + 32))(v302, v108, v110);
          v139 = *(v112 + 96);
          v308 = *(v112 + 88);
          v310 = v139;
          swift_getObjectType();
          v140 = v298;
          sub_100084718();

          v141 = v331;
          sub_100084A18();
          v120 = v141;
          if (!v141)
          {
            v205 = *(v320 + 8);
            v205(v140, v110);
            v205(v302, v110);
            v118 = v323;
            v119 = v317;
            goto LABEL_57;
          }

          v142 = *(v320 + 8);
          v142(v140, v110);
          v142(v302, v110);
        }

        v331 = 0;
        if (qword_1000A53E0 != -1)
        {
          swift_once();
        }

        v168 = sub_100084FB8();
        sub_10000B614(v168, qword_1000A5AA0);
        swift_errorRetain();
        v169 = sub_100084FA8();
        v170 = sub_100085378();

        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          v172 = v68;
          v173 = swift_slowAlloc();
          v328[0] = v173;
          *v171 = 136315138;
          swift_getErrorValue();
          v174 = sub_100085988();
          v176 = sub_100038A4C(v174, v175, v328);

          *(v171 + 4) = v176;
          v51 = v322;
          _os_log_impl(&_mh_execute_header, v169, v170, "Cannot export attachment media file — skipping {error: %s}", v171, 0xCu);
          sub_100006304(v173);
          v68 = v172;
        }

        else
        {
        }
      }
    }

    else
    {
      if (v68)
      {
        v310 = *(v325 + 96);
        v121 = v104;
        v122 = v103;
        swift_getObjectType();

        v123 = v301;
        sub_100084718();
        v315 = v68;
        v124 = v123;
        v125 = v122;
        v126 = v121;

        v127 = v331;
        sub_1000849A8();
        if (v127)
        {
          (*(v320 + 8))(v124, v319);
          if (qword_1000A53E0 != -1)
          {
            swift_once();
          }

          v128 = sub_100084FB8();
          sub_10000B614(v128, qword_1000A5AA0);
          swift_errorRetain();
          v129 = sub_100084FA8();
          v130 = sub_100085378();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v328[0] = v132;
            *v131 = 136315138;
            swift_getErrorValue();
            v331 = v129;
            v133 = sub_100085988();
            v135 = sub_100038A4C(v133, v134, v328);

            *(v131 + 4) = v135;
            v51 = v322;
            v136 = v331;
            _os_log_impl(&_mh_execute_header, v331, v130, "Cannot export attachment fallback image file — skipping {error: %s}", v131, 0xCu);
            sub_100006304(v132);

            sub_10001C19C(v125, v126);
          }

          else
          {
            sub_10001C19C(v125, v126);
          }

          v120 = 0;
          v118 = v323;
          v119 = v317;
          goto LABEL_47;
        }

        (*(v320 + 8))(v124, v319);
        v137 = v125;
        v138 = v121;
LABEL_44:
        sub_10001C19C(v137, v138);
        v118 = v323;
        v119 = v317;
        v120 = 0;
LABEL_47:
        v113 = v318;
        v68 = v315;
        goto LABEL_57;
      }

      sub_10001C19C(v103, v104);
    }

    v118 = v323;
    v119 = v317;
    v120 = v331;
    goto LABEL_56;
  }

  v59 = v322;
  v60 = *(v322 + 24);
  v61 = *(v322 + 32);
  sub_10000626C(v322, v60);
  v62 = (*(v61 + 16))(v60, v61);
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v85 = [objc_opt_self() mainBundle];
    v86 = sub_100085068();
    v87 = [v85 localizedStringForKey:v86 value:0 table:0];

    v88 = sub_100085098();
    v64 = v89;

    v62 = v88;
  }

  v90 = v325;
  v91 = v331;
  sub_10006CB5C(v62, v64, v324, 0x656D686361747461, 0xEA0000000000746ELL, v321);
  if (v91)
  {
  }

  else
  {
    v311 = v64;
    sub_100084718();
    v92 = *(v90 + 96);
    v324 = *(v90 + 88);
    v318 = v92;
    v93 = v59[3];
    v94 = v59[4];
    sub_10000626C(v59, v93);
    v95 = *(v90 + 40);
    v329[0] = *(v90 + 24);
    v329[1] = v95;
    v330[0] = *(v90 + 56);
    *(v330 + 13) = *(v90 + 69);
    v96 = 0;
    v97 = (*(v94 + 96))(v329, v93, v94);
    v99 = v98;
    ObjectType = swift_getObjectType();
    sub_1000849A8();
    v310 = ObjectType;
    sub_10000650C(v97, v99);
    v143 = sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
    v144 = v322;
    v145 = *(v322 + 24);
    v146 = *(v322 + 32);
    v147 = sub_10000626C(v322, v145);
    sub_10001D038(v147, v143, v145, v146);
    if (!v148)
    {
      v159 = v314;
      goto LABEL_121;
    }

    v331 = 0;
    v149 = sub_100085068();

    v150 = [v149 ic_sanitizedFilenameString];

    sub_100085098();
    v151 = v144[3];
    v152 = v144[4];
    sub_10000626C(v144, v151);
    v153 = v306;
    v154 = v151;
    v155 = v320;
    (*(v152 + 48))(v154, v152);
    v156 = v153;
    v157 = v319;
    v158 = (*(v155 + 48))(v153, 1, v319);
    v159 = v314;
    if (v158 == 1)
    {
      sub_1000058F0(v156, &qword_1000A56E8, &qword_10008D350);
      v160 = v144[3];
      v161 = v144[4];
      sub_10000626C(v144, v160);
      v162 = (*(v161 + 56))(v160, v161);
      if (v163 >> 60 == 15)
      {

        v96 = v331;
        goto LABEL_121;
      }

LABEL_85:
      v214 = v162;
      v215 = v163;
      v216 = v303;
      sub_100084718();

      v217 = v331;
      sub_1000849A8();
      if (!v217)
      {
        (*(v320 + 8))(v216, v319);
        sub_10001C19C(v214, v215);
        v96 = 0;
        goto LABEL_121;
      }

      (*(v320 + 8))(v216, v319);
      sub_10001C19C(v214, v215);
    }

    else
    {
      v206 = v305;
      (*(v155 + 32))(v305, v156, v157);
      v207 = v304;
      sub_100084718();

      v208 = v331;
      sub_100084A18();
      v209 = v155;
      v96 = v208;
      if (!v208)
      {
        v226 = *(v209 + 8);
        v226(v207, v157);
        v226(v206, v157);
        goto LABEL_121;
      }

      v210 = *(v209 + 8);
      v210(v207, v157);
      v210(v206, v157);
    }

    v331 = 0;
    if (qword_1000A53E0 != -1)
    {
      goto LABEL_151;
    }

    while (1)
    {
      v218 = sub_100084FB8();
      sub_10000B614(v218, qword_1000A5AA0);
      swift_errorRetain();
      v219 = sub_100084FA8();
      v220 = sub_100085378();

      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v328[0] = v222;
        *v221 = 136315138;
        swift_getErrorValue();
        v223 = sub_100085988();
        v225 = sub_100038A4C(v223, v224, v328);

        *(v221 + 4) = v225;
        _os_log_impl(&_mh_execute_header, v219, v220, "Cannot export attachment media file — skipping {error: %s}", v221, 0xCu);
        sub_100006304(v222);
      }

      else
      {
      }

      v96 = v331;
LABEL_121:
      v187 = objc_autoreleasePoolPush();
      v252 = v322;
      v253 = v325;
      sub_100071CC0(v322, v325);
      if (v96)
      {
        break;
      }

      objc_autoreleasePoolPop(v187);
      v254 = objc_autoreleasePoolPush();
      sub_100071FF0(v252, v253);
      v331 = 0;
      v255 = v252;

      objc_autoreleasePoolPop(v254);
      v256 = v252[3];
      v257 = v252[4];
      sub_10000626C(v255, v256);
      v258 = (*(v257 + 64))(v256, v257);
      v260 = 0;
      v262 = v258 + 56;
      v261 = *(v258 + 56);
      v322 = v258;
      v263 = 1 << *(v258 + 32);
      v264 = -1;
      if (v263 < 64)
      {
        v264 = ~(-1 << v263);
      }

      v265 = v264 & v261;
      v266 = (v263 + 63) >> 6;
      v267 = v319;
      v268 = v320;
      v306 = (v320 + 16);
      v311 = (v320 + 8);
      *&v259 = 136315138;
      v304 = v259;
      v269 = v323;
      v270 = v312;
      v309 = v258 + 56;
      v307 = v266;
      while (v265)
      {
        v51 = v260;
LABEL_132:
        v272 = __clz(__rbit64(v265));
        v265 &= v265 - 1;
        (*(v268 + 16))(v159, *(v322 + 48) + *(v268 + 72) * (v272 | (v51 << 6)), v267);
        sub_1000846E8();
        sub_100084718();
        v159 = v314;

        v273 = v331;
        sub_100084A18();
        v331 = v273;
        if (v273)
        {
          v274 = *v311;
          (*v311)(v270, v267);
          v274(v159, v267);
          if (qword_1000A53E0 != -1)
          {
            swift_once();
          }

          v275 = sub_100084FB8();
          sub_10000B614(v275, qword_1000A5AA0);
          swift_errorRetain();
          v276 = sub_100084FA8();
          v277 = sub_100085378();

          if (os_log_type_enabled(v276, v277))
          {
            v278 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            v328[0] = v279;
            *v278 = v304;
            swift_getErrorValue();
            LODWORD(v305) = v277;
            v280 = sub_100085988();
            v282 = sub_100038A4C(v280, v281, v328);

            *(v278 + 4) = v282;
            v283 = v320;
            _os_log_impl(&_mh_execute_header, v276, v305, "Cannot export attachment asset file — skipping {error: %s}", v278, 0xCu);
            sub_100006304(v279);

            v159 = v314;

            v268 = v283;

            v331 = 0;
            v260 = v51;
            v269 = v323;
            v267 = v319;
            v270 = v312;
          }

          else
          {

            v331 = 0;
            v260 = v51;
            v269 = v323;
            v267 = v319;
            v268 = v320;
            v270 = v312;
            v159 = v314;
          }
        }

        else
        {
          v271 = *v311;
          (*v311)(v270, v267);
          v271(v159, v267);
          v260 = v51;
          v269 = v323;
        }

        v262 = v309;
        v266 = v307;
      }

      while (1)
      {
        v51 = v260 + 1;
        if (__OFADD__(v260, 1))
        {
          __break(1u);
          goto LABEL_148;
        }

        if (v51 >= v266)
        {
          break;
        }

        v265 = *(v262 + 8 * v51);
        ++v260;
        if (v265)
        {
          goto LABEL_132;
        }
      }

      v284 = [v269 completedUnitCount];
      if (!__OFADD__(v284, 1))
      {
        [v269 setCompletedUnitCount:v284 + 1];
        v285 = v317;
        v286 = *(v316 + 16);
        v287 = v308;
        if (v286)
        {
          v288 = v313 + 16;
          v324 = *(v313 + 16);
          v289 = v316 + ((*(v313 + 80) + 32) & ~*(v313 + 80));
          v322 = *(v313 + 72);
          v290 = (v313 + 8);
          while (1)
          {
            v291 = v288;
            (v324)(v287, v289, v285);
            v292 = objc_autoreleasePoolPush();
            v293 = v331;
            sub_10006C4E8(v287, v321, v269);
            v331 = v293;
            if (v293)
            {
              break;
            }

            objc_autoreleasePoolPop(v292);
            (*v290)(v287, v285);
            v269 = v323;
            v289 += v322;
            --v286;
            v288 = v291;
            if (!v286)
            {
              goto LABEL_145;
            }
          }

          objc_autoreleasePoolPop(v292);
          (*v290)(v287, v285);
        }

LABEL_145:
        v294 = *v311;
        v295 = v319;
        (*v311)(v315, v319);
        v294(v321, v295);
        return;
      }

      __break(1u);
LABEL_151:
      swift_once();
    }

LABEL_156:
    objc_autoreleasePoolPop(v187);
    __break(1u);
  }
}

void sub_100071044(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v56 = a3;
  v67 = a1;
  v68 = sub_100084668();
  *&v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v70 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v6 = __chkstk_darwin(v5 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v53 - v8;
  v9 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_1000847C8();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v54 = &v53 - v19;
  v20 = __chkstk_darwin(v18);
  v55 = &v53 - v21;
  __chkstk_darwin(v20);
  v23 = &v53 - v22;
  v24 = *(v14 + 16);
  v64 = a2;
  v69 = v24;
  v24(&v53 - v22, a2, v13);
  (*(v10 + 16))(v12, v67, v9);
  if ((*(v10 + 88))(v12, v9) == enum case for ICObjectReferences.attachment<A>(_:))
  {
    v53 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = [objc_opt_self() defaultManager];
    v26 = v66;
    v27 = sub_100085358();
    if (v26)
    {
      (*(v14 + 8))(v53, v13);
    }

    else
    {
      v28 = v27;

      v29 = v28;
      v62 = *(v28 + 16);
      v65 = v14;
      if (v62)
      {
        v30 = 0;
        v66 = NSURLIsDirectoryKey;
        v64 = v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v60 = (v63 + 8);
        v61 = (v14 + 8);
        v63 = xmmword_10008B5D0;
        while (v30 < *(v29 + 16))
        {
          v31 = v29;
          v32 = v13;
          v69(v17, v64 + *(v65 + 72) * v30, v13);
          sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
          inited = swift_initStackObject();
          *(inited + 16) = v63;
          v34 = v66;
          *(inited + 32) = v66;
          v35 = v34;
          sub_100079F54(inited);
          swift_setDeallocating();
          sub_10007A7A0(inited + 32, type metadata accessor for URLResourceKey);
          v36 = v70;
          sub_1000846C8();

          v37 = sub_100084638();
          (*v60)(v36, v68);
          if (v37 != 2 && (v37 & 1) != 0)
          {

            v38 = v65;
            v39 = v59;
            v13 = v32;
            (*(v65 + 32))(v59, v17, v32);
            v40 = 0;
            goto LABEL_13;
          }

          ++v30;
          v13 = v32;
          (*v61)(v17, v32);
          v29 = v31;
          if (v62 == v30)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v40 = 1;
        v38 = v65;
        v39 = v59;
LABEL_13:
        (*(v38 + 56))(v39, v40, 1, v13);
        v41 = v57;
        sub_100005888(v39, v57, &qword_1000A56E8, &qword_10008D350);
        v42 = (*(v38 + 48))(v41, 1, v13);
        v43 = v58;
        v44 = v67;
        if (v42 == 1)
        {
          sub_1000058F0(v41, &qword_1000A56E8, &qword_10008D350);
          v71 = 0;
          v45 = v53;
          if (*(v43 + 24) & 1) != 0 && *(v43 + 25) == 2 && (v46 = objc_autoreleasePoolPush(), sub_100071A3C(v43, v44, &v71), objc_autoreleasePoolPop(v46), (v71))
          {
            sub_1000058F0(v39, &qword_1000A56E8, &qword_10008D350);
            (*(v38 + 8))(v45, v13);
          }

          else
          {
            if (*(v43 + 25) == 1)
            {
              v50 = 0x656D686361747461;
            }

            else
            {
              v50 = 0x656D686361747441;
            }

            v51 = v54;
            sub_10006CB5C(v50, 0xEB0000000073746ELL, v45, 0, 0, v54);

            sub_10006C4E8(v44, v51, v56);
            v52 = *(v38 + 8);
            v52(v51, v13);
            sub_1000058F0(v39, &qword_1000A56E8, &qword_10008D350);
            v52(v45, v13);
          }
        }

        else
        {
          v47 = v55;
          (*(v38 + 32))(v55, v41, v13);
          sub_10006C4E8(v44, v47, v56);
          v48 = v53;
          v49 = *(v38 + 8);
          v49(v47, v13);
          sub_1000058F0(v39, &qword_1000A56E8, &qword_10008D350);
          v49(v48, v13);
        }
      }
    }
  }

  else
  {
    (*(v14 + 8))(v23, v13);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_100071924(char a1)
{
  v2 = v1;
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    if (qword_1000A53E0 != -1)
    {
      swift_once();
    }

    v3 = sub_100084FB8();
    sub_10000B614(v3, qword_1000A5AA0);
    v4 = sub_100084FA8();
    v5 = sub_100085368();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Resetting context…", v6, 2u);
    }

    v7 = sub_100084BF8();
    [v7 reset];

    *(v2 + 120) = 0;
  }
}

void sub_100071A3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_100084C08();
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  sub_100084A68();
  if (!v3)
  {
    if (v10[3])
    {
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      if (swift_dynamicCast())
      {
        if (*(&v12 + 1))
        {
          sub_10001C024(&v11, v14);
          sub_10001C118(v14, &v11);
          sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
          if (swift_dynamicCast())
          {
            v5 = [v10[0] isTable];

            sub_100006304(v14);
            if (v5)
            {
              *a3 = 1;
            }
          }

          else
          {
            sub_100006304(v14);
          }

          return;
        }
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
      }
    }

    else
    {
      sub_1000058F0(v10, &qword_1000A5AD0, &unk_10008B5E0);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    sub_1000058F0(&v11, &qword_1000A5BA8, &qword_10008F750);
    if (qword_1000A53E0 != -1)
    {
      swift_once();
    }

    v6 = sub_100084FB8();
    sub_10000B614(v6, qword_1000A5AA0);
    v7 = sub_100084FA8();
    v8 = sub_100085388();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Object to be exported does not exist anymore — skipping", v9, 2u);
    }
  }
}

void sub_100071CC0(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000626C(a1, v9);
  v11 = (*(v10 + 72))(v9, v10);
  if (v12 >> 60 != 15)
  {
    v24 = *(a2 + 96);
    v13 = v11;
    v14 = v12;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v24 = v14;
      (*(v6 + 8))(v8, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v15 = sub_100084FB8();
      sub_10000B614(v15, qword_1000A5AA0);
      swift_errorRetain();
      v16 = sub_100084FA8();
      v17 = sub_100085378();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_100085988();
        v22 = sub_100038A4C(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot export attachment preview image file — skipping {error: %s}", v18, 0xCu);
        sub_100006304(v19);

        sub_10001C19C(v13, v24);
      }

      else
      {
        sub_10001C19C(v13, v24);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_10001C19C(v13, v14);
    }
  }
}

void sub_100071FF0(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000626C(a1, v9);
  v11 = (*(v10 + 80))(v9, v10);
  if (v12 >> 60 != 15)
  {
    v24 = *(a2 + 96);
    v13 = v11;
    v14 = v12;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v24 = v14;
      (*(v6 + 8))(v8, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v15 = sub_100084FB8();
      sub_10000B614(v15, qword_1000A5AA0);
      swift_errorRetain();
      v16 = sub_100084FA8();
      v17 = sub_100085378();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_100085988();
        v22 = sub_100038A4C(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot export attachment fallback PDF file — skipping {error: %s}", v18, 0xCu);
        sub_100006304(v19);

        sub_10001C19C(v13, v24);
      }

      else
      {
        sub_10001C19C(v13, v24);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_10001C19C(v13, v14);
    }
  }
}

uint64_t sub_100072320(uint64_t a1, uint64_t a2)
{
  v3 = sub_100084588();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_100084578();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100072414()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A71A8);
  sub_10000B614(v0, qword_1000A71A8);
  return sub_100084F88();
}

void *sub_100072468()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = [objc_allocWithZone(NSProgress) init];
  if (qword_1000A5468 != -1)
  {
    swift_once();
  }

  v1 = sub_100005740(&qword_1000A72C8, &qword_10008F718);
  sub_10000B614(v1, qword_1000A71C0);
  swift_beginAccess();
  sub_100084988();
  swift_endAccess();
  v2 = v0[3];
  v0[3] = v6;

  v3 = v0[3];
  if (v3)
  {
    v3 = [v3 managedObjectContext];
  }

  v4 = v0[2];
  v0[2] = v3;

  return v0;
}

uint64_t sub_100072574()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000725C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100075E6C(&qword_1000A7290, a2, type metadata accessor for AppMigrationHandler, &unk_10008F6A8);

  return AppMigrationExtension.configuration.getter(a1, v3);
}

void *sub_10007263C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_100072468();
  *a1 = v2;
  return result;
}

uint64_t sub_100072698()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2 && (v3 = *(v1 + 24), (v0[5] = v3) != 0))
  {
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v2;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100072898;

    return NSManagedObjectContext.perform<A>(_:)(v0 + 2, sub_100076170, v4, &type metadata for Int);
  }

  else
  {
    if (qword_1000A5460 != -1)
    {
      swift_once();
    }

    v7 = sub_100084FB8();
    sub_10000B614(v7, qword_1000A71A8);
    v8 = sub_100084FA8();
    v9 = sub_100085368();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "no note context so no note count", v10, 2u);
    }

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_100072898()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1000729D4, 0, 0);
  }
}

uint64_t sub_1000729D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_100072A3C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 visibleNotesCount];
  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v4 = sub_100084FB8();
  sub_10000B614(v4, qword_1000A71A8);
  v5 = sub_100084FA8();
  v6 = sub_100085368();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "note count: %ld", v7, 0xCu);
  }

  *a2 = v3;
}

uint64_t sub_100072B48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000847C8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100072C08, 0, 0);
}

uint64_t sub_100072C08()
{
  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v1 = sub_100084FB8();
  sub_10000B614(v1, qword_1000A71A8);
  v2 = sub_100084FA8();
  v3 = sub_100085368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "called to export", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + 16);
  v0[7] = v6;
  if (v6)
  {
    v7 = swift_allocObject();
    v0[8] = v7;
    *(v7 + 16) = v6;
    v6;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_100072E24;
    v9 = v0[6];
    v10 = v0[4];

    return NSManagedObjectContext.perform<A>(_:)(v9, sub_10007A19C, v7, v10);
  }

  else
  {
    sub_10007A148();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100072E24()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100073158, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[11] = v3;
    *v3 = v2;
    v3[1] = sub_100072FAC;
    v4 = v2[6];

    return ResourcesArchiver.appendItem(at:pathInArchive:)(v4, 0, 0);
  }
}

uint64_t sub_100072FAC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000731C8;
  }

  else
  {
    v2 = sub_1000730C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000730C0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_100073950();

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100073158()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000731C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_100073950();

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100073260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v44 - v4;
  v49 = sub_1000847C8();
  v5 = *(v49 - 8);
  v6 = __chkstk_darwin(v49);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = ICGroupContainerIdentifier();
  if (!v10)
  {
    sub_100085098();
    v10 = sub_100085068();
  }

  v48 = v5;
  v11 = [objc_opt_self() URLForGroupContainerWithIdentifier:v10];

  sub_100084768();
  v46 = v9;
  v47 = a2;
  sub_100084728();
  v12 = [objc_opt_self() allActiveAccountsInContext:a1];
  sub_100008250(0, &qword_1000A56D8, ICAccount_ptr);
  v13 = sub_100085208();

  sub_100084C08();
  swift_allocObject();
  v53 = a1;
  v14 = sub_100084BE8();
  v15 = qword_1000A5428;

  if (v15 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v16 = *(&static ICArchiveCreator.default + 1);
    v52 = static ICArchiveCreator.default;
    v18 = qword_1000B17A0;
    v17 = unk_1000B17A8;
    v19 = xmmword_1000B17B0;
    v20 = objc_opt_self();

    v21 = [v20 defaultManager];
    sub_100005740(&qword_1000A5BD8, &qword_10008B7D8);
    v22 = swift_allocObject();
    *(v22 + 104) = 0;
    *(v22 + 112) = 32;
    *(v22 + 120) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    *(v22 + 16) = v14;
    *(v22 + 24) = 257;
    *(v22 + 26) = v58;
    *(v22 + 30) = v59;
    *(v22 + 32) = v52;
    *(v22 + 40) = v16;
    *(v22 + 48) = v18;
    *(v22 + 56) = v17;
    *(v22 + 64) = v19;
    *(v22 + 80) = 256;
    *(v22 + 84) = 0;
    *(v22 + 88) = v21;
    *(v22 + 96) = &protocol witness table for NSFileManager;

    v23 = v21;
    v50 = v22;
    sub_1000699CC();
    v44 = v14;

    v24 = v13;
    if (v13 >> 62)
    {
      break;
    }

    v13 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_6:
    v25 = 0;
    v51 = v24 & 0xFFFFFFFFFFFFFF8;
    v52 = v24 & 0xC000000000000001;
    v14 = v54 + 32;
    v26 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v52)
      {
        v27 = sub_100085648();
      }

      else
      {
        if (v25 >= *(v51 + 16))
        {
          goto LABEL_19;
        }

        v27 = *(v24 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      __chkstk_darwin(v27);
      *(&v44 - 2) = v28;
      v30 = v57;
      sub_100085488();
      v57 = v30;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10000F014(0, v26[2] + 1, 1, v26);
      }

      v32 = v26[2];
      v31 = v26[3];
      if (v32 >= v31 >> 1)
      {
        v26 = sub_10000F014((v31 > 1), v32 + 1, 1, v26);
      }

      v26[2] = v32 + 1;
      (*(v54 + 32))(v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v32, v55, v56);
      ++v25;
      if (v29 == v13)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v13 = sub_100085718();
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_22:
  v26 = _swiftEmptyArrayStorage;
LABEL_23:

  v33 = [objc_allocWithZone(NSProgress) init];
  v34 = v45;
  v35 = v57;
  sub_100069B38(v26, v33, v45);
  if (v35)
  {

    v37 = v48;
    v36 = v49;
    v38 = v47;

    v40 = *(v37 + 8);
    v40(v38, v36);
    return (v40)(v46, v36);
  }

  else
  {
    swift_getObjectType();
    sub_1000849B8();
    v39 = v48;
    sub_100084A18();
    sub_100069D50(v34);
    v42 = *(v39 + 8);
    v43 = v49;
    v42(v34, v49);
    v42(v46, v43);
  }
}

id sub_100073950()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1000846F8(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    sub_100084688();

    swift_willThrow();
  }
}

uint64_t sub_100073A70()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000761DC;
  *(v4 + 24) = v3;
  v9[4] = sub_1000761F4;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000699A4;
  v9[3] = &unk_1000A1478;
  v5 = _Block_copy(v9);
  v6 = v1;

  [v6 performBlockAndWait:v5];

  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v8 = *(v2 + 16);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100073C30(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100076234;
  *(v5 + 24) = a2;
  v8[4] = sub_10007623C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000744D0;
  v8[3] = &unk_1000A14C8;
  v6 = _Block_copy(v8);

  [v4 enumerateNotesInContext:a1 batchSize:1 visibleOnly:1 saveAfterBatch:0 usingBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_100073D90(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 textStorage];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 length];

    if (v7 + 0x4000000000000000 >= 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0;
LABEL_5:
  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = __OFADD__(v8, 2 * v7);
  v10 = v8 + 2 * v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v10;
    aBlock[4] = sub_100076264;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008D1C;
    aBlock[3] = &unk_1000A14F0;
    v11 = _Block_copy(aBlock);

    [a1 enumerateAttachmentsInOrderUsingBlock:v11];
    _Block_release(v11);
  }
}

void sub_100073EC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100084668();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_1000847C8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100067784();
  if (!v18)
  {
    return;
  }

  v19 = [a1 parentAttachment];
  if (!v19)
  {
    v20 = sub_100069028();
    if (v21 >> 60 == 15)
    {
      v22 = [a1 fallbackImageData];
      if (v22)
      {
        v23 = v22;
        v24 = sub_100084808();
        v26 = v25;

        v27 = v26;
        v28 = v26 >> 62;
        if ((v26 >> 62) <= 1)
        {
          if (v28)
          {
            sub_10000650C(v24, v26);
            if (__OFSUB__(HIDWORD(v24), v24))
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v29 = HIDWORD(v24) - v24;
          }

          else
          {
            sub_10000650C(v24, v26);
            v29 = BYTE6(v26);
          }

          goto LABEL_37;
        }

        if (v28 != 2)
        {
          sub_10000650C(v24, v26);
          v29 = 0;
          goto LABEL_37;
        }

        v14 = *(v24 + 16);
        v40 = *(v24 + 24);
        v20 = sub_10000650C(v24, v27);
        v29 = v40 - v14;
        if (!__OFSUB__(v40, v14))
        {
LABEL_37:
          swift_beginAccess();
          v45 = *(a5 + 16);
          v34 = __OFADD__(v45, v29);
          v37 = v45 + v29;
          if (!v34)
          {
            goto LABEL_38;
          }

          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_27;
      }

LABEL_18:
      sub_100068BB8(v13);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_1000058F0(v13, &qword_1000A56E8, &qword_10008D350);
        v35 = sub_100068D7C();
        if (v36 >> 60 == 15)
        {
          return;
        }

        v37 = v36 >> 62;
        if ((v36 >> 62) <= 1)
        {
          if (v37)
          {
            goto LABEL_48;
          }

          v38 = BYTE6(v36);
          sub_10001C19C(v35, v36);
          v39 = v38;
          goto LABEL_51;
        }

LABEL_44:
        if (v37 == 2)
        {
          v51 = *(v35 + 16);
          v50 = *(v35 + 24);
          v35 = sub_10001C19C(v35, v36);
          v34 = __OFSUB__(v50, v51);
          v39 = v50 - v51;
          if (!v34)
          {
            goto LABEL_51;
          }

          __break(1u);
LABEL_48:
          v52 = HIDWORD(v35);
          v53 = v35;
          sub_10001C19C(v35, v36);
          if (__OFSUB__(v52, v53))
          {
LABEL_57:
            __break(1u);
            return;
          }

          v39 = v52 - v53;
          goto LABEL_51;
        }

        sub_10001C19C(v35, v36);
        v39 = 0;
LABEL_51:
        swift_beginAccess();
        v54 = *(a5 + 16);
        v34 = __OFADD__(v54, v39);
        v37 = v54 + v39;
        if (!v34)
        {
          goto LABEL_38;
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_33:
      (*(v15 + 32))(v17, v13, v14);
      sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
      inited = swift_initStackObject();
      v55 = xmmword_10008B5D0;
      *(inited + 16) = xmmword_10008B5D0;
      *(inited + 32) = NSURLFileSizeKey;
      v44 = NSURLFileSizeKey;
      sub_100079F54(inited);
      swift_setDeallocating();
      sub_10007A7A0(inited + 32, type metadata accessor for URLResourceKey);
      sub_1000846C8();

      v46 = sub_100084658();
      v48 = v47;
      (*(v8 + 8))(v10, v7);
      (*(v15 + 8))(v17, v14);
      if (v48)
      {
        return;
      }

      v35 = swift_beginAccess();
      v49 = *(a5 + 16);
      v34 = __OFADD__(v49, v46);
      v37 = v49 + v46;
      if (!v34)
      {
LABEL_38:
        *(a5 + 16) = v37;
        return;
      }

      __break(1u);
      goto LABEL_44;
    }

    v30 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v13 = *(v20 + 16);
        v33 = *(v20 + 24);
        sub_10001C19C(v20, v21);
        v34 = __OFSUB__(v33, v13);
        v32 = v33 - v13;
        if (v34)
        {
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        sub_10001C19C(v20, v21);
        v32 = 0;
      }
    }

    else
    {
      if (v30)
      {
LABEL_27:
        v13 = HIDWORD(v20);
        v41 = v20;
        sub_10001C19C(v20, v21);
        if (__OFSUB__(v13, v41))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v32 = v13 - v41;
        goto LABEL_30;
      }

      v31 = BYTE6(v21);
      sub_10001C19C(v20, v21);
      v32 = v31;
    }

LABEL_30:
    swift_beginAccess();
    v42 = *(a5 + 16);
    v34 = __OFADD__(v42, v32);
    v37 = v42 + v32;
    if (!v34)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_33;
  }
}

void sub_1000744D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10007452C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000745BC;

  return sub_100072678();
}

uint64_t sub_1000745BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000746B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007AB2C;

  return DataclassResourcesExporting.resourcesErrorCount.getter(a1, a2);
}

uint64_t sub_100074760(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007AB08;

  return sub_100072B48(a1);
}

uint64_t sub_1000747F8()
{
  v1 = sub_100073A70();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100074864(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1000847C8();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100074974, 0, 0);
}

uint64_t sub_100074974()
{
  v88 = v0;
  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v1 = sub_100084FB8();
  sub_10000B614(v1, qword_1000A71A8);
  v2 = sub_100084FA8();
  v3 = sub_100085368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "extension called to import", v4, 2u);
  }

  v5 = v0[4];

  v8 = sub_1000752C8(v5);
  v83 = v0[5];
  [*(v83 + 32) setTotalUnitCount:v8];
  v9 = sub_100084FA8();
  v10 = sub_100085368();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "set the import count: %ld", v12, 0xCu);
  }

  v13 = ICGroupContainerIdentifier();
  if (!v13)
  {
    sub_100085098();
    v13 = sub_100085068();
  }

  v15 = v0[10];
  v14 = v0[11];
  v17 = v0[6];
  v16 = v0[7];
  v18 = [objc_opt_self() URLForGroupContainerWithIdentifier:v13];

  sub_100084768();
  v84 = *(v16 + 16);
  v84(v15, v14, v17);
  v19 = sub_100084FA8();
  v20 = sub_100085368();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[10];
  v24 = v0[6];
  v23 = v0[7];
  v82 = v8;
  if (v21)
  {
    v81 = v20;
    v25 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v87 = v80;
    *v25 = 136315138;
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = sub_100085908();
    v28 = v27;
    v86 = *(v23 + 8);
    v86(v22, v24);
    v29 = sub_100038A4C(v26, v28, &v87);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v81, "group container: %s", v25, 0xCu);
    sub_100006304(v80);
  }

  else
  {

    v86 = *(v23 + 8);
    v86(v22, v24);
  }

  v31 = v0[8];
  v30 = v0[9];
  v32 = v0[6];
  sub_100084718();
  v84(v31, v30, v32);
  v33 = sub_100084FA8();
  v34 = sub_100085368();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[8];
  v37 = v0[6];
  if (v35)
  {
    v38 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v87 = v85;
    *v38 = 136315138;
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39 = sub_100085908();
    v41 = v40;
    v86(v36, v37);
    v42 = sub_100038A4C(v39, v41, &v87);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "destination: %s", v38, 0xCu);
    sub_100006304(v85);
  }

  else
  {

    v86(v36, v37);
  }

  v43 = objc_opt_self();
  v44 = [v43 defaultManager];
  sub_100084798(1);
  v45 = sub_100085068();

  v46 = [v44 fileExistsAtPath:v45];

  if (v46)
  {
    v47 = sub_100084FA8();
    v48 = sub_100085368();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "removing existing import file", v49, 2u);
    }

    v50 = [v43 defaultManager];
    sub_1000846F8(v51);
    v53 = v52;
    v0[3] = 0;
    v54 = [v50 removeItemAtURL:v52 error:v0 + 3];

    v55 = v0[3];
    if (!v54)
    {
      v76 = v0[11];
      v77 = v0[9];
      v78 = v0[6];
      v79 = v55;
      sub_100084688();

      swift_willThrow();
      v86(v77, v78);
      v86(v76, v78);
      goto LABEL_6;
    }

    v56 = v55;
  }

  v57 = [v43 defaultManager];
  sub_1000846F8(v58);
  v60 = v59;
  sub_1000846F8(v61);
  v63 = v62;
  v0[2] = 0;
  v64 = [v57 copyItemAtURL:v60 toURL:v62 error:v0 + 2];

  v65 = v0[2];
  v66 = v0[11];
  if (v64)
  {
    v67 = v0[9];
    v68 = v0[6];
    v69 = *(v83 + 32);
    v70 = v65;
    v71 = v69;
    [v71 setCompletedUnitCount:{objc_msgSend(v71, "totalUnitCount")}];

    v86(v67, v68);
    v86(v66, v68);

    v72 = v0[1];

    return v72(v82, v82);
  }

  v73 = v0[9];
  v74 = v0[6];
  v75 = v65;
  sub_100084688();

  swift_willThrow();
  v86(v73, v74);
  v86(v66, v74);
LABEL_6:

  v6 = v0[1];

  return v6();
}

char *sub_1000752C8(uint64_t a1)
{
  v2 = sub_100084668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_100085358();

  if (v1)
  {
    return v10;
  }

  v39 = v5;
  v43 = *(v11 + 16);
  if (!v43)
  {

    v10 = 0;
LABEL_21:
    if (qword_1000A5460 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v12 = v3;
  v40 = 0;
  v10 = 0;
  v13 = 0;
  v42 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v41 = v7 + 16;
  v37 = NSURLIsDirectoryKey;
  v34 = (v12 + 8);
  v14 = (v7 + 8);
  v36 = xmmword_10008B5D0;
  v35 = v2;
  v15 = v11;
  v38 = v11;
  while (v13 < *(v15 + 16))
  {
    (*(v7 + 16))(v9, v42 + *(v7 + 72) * v13, v6);
    if (sub_100084698() == 25709 && v17 == 0xE200000000000000)
    {

LABEL_5:
      (*v14)(v9, v6);
      v16 = __OFADD__(v10++, 1);
      if (v16)
      {
        goto LABEL_30;
      }

      goto LABEL_6;
    }

    v18 = sub_100085948();

    if (v18)
    {
      goto LABEL_5;
    }

    sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
    inited = swift_initStackObject();
    *(inited + 16) = v36;
    v20 = v37;
    *(inited + 32) = v37;
    v21 = v20;
    sub_100079F54(inited);
    swift_setDeallocating();
    sub_10007A7A0(inited + 32, type metadata accessor for URLResourceKey);
    v23 = v39;
    v22 = v40;
    sub_1000846C8();
    v40 = v22;
    if (v22)
    {
      (*v14)(v9, v6);

LABEL_27:

      return v10;
    }

    v24 = sub_100084638();
    (*v34)(v23, v35);
    if (v24 == 2 || (v24 & 1) == 0)
    {
      (*v14)(v9, v6);
      v15 = v38;
    }

    else
    {
      v25 = v40;
      v26 = sub_1000752C8(v9);
      v40 = v25;
      if (v25)
      {
        (*v14)(v9, v6);
        goto LABEL_27;
      }

      v27 = v26;
      (*v14)(v9, v6);
      v16 = __OFADD__(v10, v27);
      v10 = &v27[v10];
      v15 = v38;
      if (v16)
      {
        goto LABEL_31;
      }
    }

LABEL_6:
    if (v43 == ++v13)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_22:
  v28 = sub_100084FB8();
  sub_10000B614(v28, qword_1000A71A8);
  v29 = sub_100084FA8();
  v30 = sub_100085368();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v29, v30, "import count: %ld", v31, 0xCu);
  }

  return v10;
}

uint64_t sub_1000757D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007586C;

  return sub_100074864(a1);
}

uint64_t sub_10007586C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_10007597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v9 = sub_100075E6C(&qword_1000A7318, v8, type metadata accessor for AppMigrationHandler, &unk_10008F590);
  *v7 = v3;
  v7[1] = sub_100075A70;

  return DataclassResourcesImporting.importResources(at:request:)(a1, a2, a3, v9);
}

uint64_t sub_100075A70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100075B70()
{
  v0 = sub_100005740(&qword_1000A72C8, &qword_10008F718);
  sub_10000B64C(v0, qword_1000A71C0);
  sub_10000B614(v0, qword_1000A71C0);
  sub_100008250(0, &qword_1000A72D0, ICNoteContext_ptr);
  return sub_100084978();
}

void *sub_100075C00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100075C28();
  *a1 = result;
  return result;
}

void *sub_100075C28()
{
  v0 = objc_opt_self();
  [v0 startSharedContextWithOptions:2097666];
  v1 = [v0 sharedContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 databaseOpenError];
    if (!v3)
    {
      return v2;
    }

    v4 = v3;
  }

  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v5 = sub_100084FB8();
  sub_10000B614(v5, qword_1000A71A8);
  v6 = sub_100084FA8();
  v7 = sub_100085378();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Cannot create modern note context for App Migraton Extension — returning nil and exiting shortly", v8, 2u);
  }

  return 0;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppMigrationHandler();
  sub_100075E6C(&qword_1000A71D8, v3, type metadata accessor for AppMigrationHandler, &unk_10008F6D8);
  sub_100084D28();
  return 0;
}

uint64_t sub_100075E6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100076138()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007619C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007621C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007626C(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = sub_100005740(&qword_1000A6D98, &qword_10008E500);
  __chkstk_darwin(v48);
  v5 = &v43 - v4;
  v49 = _s3TagVMa(0);
  v6 = *(v49 - 8);
  v7 = __chkstk_darwin(v49);
  v60 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v43 - v9;
  v10 = sub_1000848B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v15 = __chkstk_darwin(v14 - 8);
  v59 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v44 = v2;
  v61 = *v2;
  sub_100085A08();
  v62 = a2;
  sub_100005888(a2, v18, &qword_1000A5490, &qword_10008CD80);
  v19 = *(v11 + 48);
  v58 = v11 + 48;
  if (v19(v18, 1, v10) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    sub_100085A28(1u);
    sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085028();
    (*(v11 + 8))(v13, v10);
  }

  v20 = (v62 + *(v49 + 20));
  v21 = *v20;
  v52 = v20[1];
  v53 = v21;
  sub_100085118();
  v22 = sub_100085A38();
  v23 = -1 << *(v61 + 32);
  v24 = v22 & ~v23;
  v57 = v61 + 56;
  if ((*(v61 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v56 = v19;
    v47 = v13;
    v54 = ~v23;
    v46 = (v11 + 32);
    v55 = *(v6 + 72);
    v50 = (v11 + 8);
    v25 = v48;
    v26 = v60;
    do
    {
      v27 = v55 * v24;
      sub_10007A738(*(v61 + 48) + v55 * v24, v26, _s3TagVMa);
      v28 = *(v25 + 48);
      sub_100005888(v26, v5, &qword_1000A5490, &qword_10008CD80);
      sub_100005888(v62, &v5[v28], &qword_1000A5490, &qword_10008CD80);
      v29 = v56;
      if (v56(v5, 1, v10) == 1)
      {
        v30 = v29(&v5[v28], 1, v10);
        v26 = v60;
        if (v30 != 1)
        {
          goto LABEL_7;
        }

        sub_1000058F0(v5, &qword_1000A5490, &qword_10008CD80);
      }

      else
      {
        v51 = v27;
        v31 = v25;
        v32 = v59;
        sub_100005888(v5, v59, &qword_1000A5490, &qword_10008CD80);
        if (v29(&v5[v28], 1, v10) == 1)
        {
          (*v50)(v32, v10);
          v26 = v60;
          v25 = v31;
LABEL_7:
          sub_1000058F0(v5, &qword_1000A6D98, &qword_10008E500);
          goto LABEL_8;
        }

        v33 = v47;
        (*v46)(v47, &v5[v28], v10);
        sub_100075E6C(&qword_1000A6DA0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v34 = sub_100085058();
        v35 = *v50;
        (*v50)(v33, v10);
        v35(v59, v10);
        v25 = v48;
        sub_1000058F0(v5, &qword_1000A5490, &qword_10008CD80);
        v26 = v60;
        v27 = v51;
        if ((v34 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v36 = (v26 + *(v49 + 20));
      v37 = *v36 == v53 && v36[1] == v52;
      if (v37 || (sub_100085948() & 1) != 0)
      {
        sub_10007A7A0(v26, _s3TagVMa);
        sub_10007A7A0(v62, _s3TagVMa);
        sub_10007A738(*(v61 + 48) + v27, v45, _s3TagVMa);
        return 0;
      }

LABEL_8:
      sub_10007A7A0(v26, _s3TagVMa);
      v24 = (v24 + 1) & v54;
    }

    while (((*(v57 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  }

  v39 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v62;
  v42 = v43;
  sub_10007A738(v62, v43, _s3TagVMa);
  v63 = *v39;
  sub_100077E38(v42, v24, isUniquelyReferenced_nonNull_native);
  *v39 = v63;
  sub_10007A800(v41, v45, _s3TagVMa);
  return 1;
}

uint64_t sub_1000769E4(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  __chkstk_darwin(v49);
  v8 = &v36[-v7];
  v9 = type metadata accessor for MarkdownStyle(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v36[-v15];
  __chkstk_darwin(v14);
  v41 = &v36[-v17];
  v42 = v2;
  v18 = *v2;
  sub_100085A08();
  v50 = a2;
  sub_10002656C(v51);
  v19 = sub_100085A38();
  v20 = v18 + 56;
  v21 = -1 << *(v18 + 32);
  v22 = v19 & ~v21;
  if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_27:
    v31 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v50;
    v34 = v41;
    sub_10007A738(v50, v41, type metadata accessor for MarkdownStyle);
    v51[0] = *v31;
    sub_100078580(v34, v22, isUniquelyReferenced_nonNull_native);
    *v31 = v51[0];
    sub_10007A800(v33, v43, type metadata accessor for MarkdownStyle);
    return 1;
  }

  v46 = v13;
  v47 = ~v21;
  v48 = *(v10 + 72);
  v23 = (v5 + 48);
  v44 = (v5 + 8);
  v45 = v18 + 56;
  v39 = (v5 + 32);
  while (1)
  {
    v24 = v48 * v22;
    sub_10007A738(*(v18 + 48) + v48 * v22, v16, type metadata accessor for MarkdownStyle);
    v25 = *(v49 + 48);
    sub_10007A738(v16, v8, type metadata accessor for MarkdownStyle);
    sub_10007A738(v50, &v8[v25], type metadata accessor for MarkdownStyle);
    v26 = *v23;
    v27 = (*v23)(v8, 6, v4);
    if (v27 > 2)
    {
      if (v27 > 4)
      {
        if (v27 == 5)
        {
          sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
          if (v26(&v8[v25], 6, v4) == 5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
          if (v26(&v8[v25], 6, v4) == 6)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v27 == 3)
      {
        sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 3)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 2)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    v28 = v46;
    sub_10007A738(v8, v46, type metadata accessor for MarkdownStyle);
    if (!v26(&v8[v25], 6, v4))
    {
      break;
    }

    sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
    (*v44)(v28, v4);
    v20 = v45;
LABEL_22:
    sub_1000058F0(v8, &qword_1000A5C60, &qword_10008B870);
LABEL_23:
    v22 = (v22 + 1) & v47;
    if (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v29 = v40;
  (*v39)(v40, &v8[v25], v4);
  v37 = sub_100084758();
  v38 = v18;
  v30 = *v44;
  (*v44)(v29, v4);
  sub_10007A7A0(v16, type metadata accessor for MarkdownStyle);
  v30(v28, v4);
  v18 = v38;
  v20 = v45;
  if ((v37 & 1) == 0)
  {
    sub_10007A7A0(v8, type metadata accessor for MarkdownStyle);
    goto LABEL_23;
  }

LABEL_28:
  sub_10007A7A0(v8, type metadata accessor for MarkdownStyle);
  sub_10007A7A0(v50, type metadata accessor for MarkdownStyle);
  sub_10007A738(*(v18 + 48) + v24, v43, type metadata accessor for MarkdownStyle);
  return 0;
}

uint64_t sub_10007708C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100085A08();
  sub_100085118();
  v8 = sub_100085A38();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100085948() & 1) != 0)
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

    sub_100078C34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000771DC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000848B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = _s3TagVMa(0);
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_100005740(&qword_1000A7310, &qword_10008F798);
  result = sub_100085608();
  v14 = result;
  if (*(v12 + 16))
  {
    v47 = v3;
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v45 = (v4 + 48);
    v46 = result;
    v41 = (v4 + 8);
    v42 = (v4 + 32);
    v21 = result + 56;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v50 = *(v48 + 72);
      sub_10007A800(v26 + v50 * (v23 | (v15 << 6)), v11, _s3TagVMa);
      sub_100085A08();
      v27 = v11;
      sub_100005888(v11, v8, &qword_1000A5490, &qword_10008CD80);
      v28 = v47;
      if ((*v45)(v8, 1, v47) == 1)
      {
        sub_100085A28(0);
      }

      else
      {
        v29 = v44;
        (*v42)(v44, v8, v28);
        sub_100085A28(1u);
        sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_100085028();
        v30 = v29;
        v12 = v43;
        (*v41)(v30, v28);
      }

      v11 = v27;
      sub_100085118();
      result = sub_100085A38();
      v14 = v46;
      v31 = -1 << *(v46 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_10007A800(v27, *(v14 + 48) + v22 * v50, _s3TagVMa);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v12 + 32);
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    v2 = v40;
    *(v12 + 16) = 0;
  }

  *v2 = v14;
  return result;
}

uint64_t sub_1000776E0(uint64_t a1)
{
  v2 = v1;
  v47 = sub_1000847C8();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownStyle(0);
  v45 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = *v1;
  sub_100005740(&qword_1000A5C78, &unk_10008B880);
  result = sub_100085608();
  v13 = result;
  if (*(v11 + 16))
  {
    v41 = v1;
    v42 = v5;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v43 = v11;
    v44 = (v3 + 48);
    v39 = (v3 + 8);
    v40 = (v3 + 32);
    v20 = result + 56;
    while (v18)
    {
      v27 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v30 = *(v11 + 48);
      v31 = *(v45 + 72);
      sub_10007A800(v30 + v31 * (v27 | (v14 << 6)), v10, type metadata accessor for MarkdownStyle);
      sub_100085A08();
      v32 = v46;
      sub_10007A738(v10, v46, type metadata accessor for MarkdownStyle);
      v33 = (*v44)(v32, 6, v47);
      if (v33 <= 2)
      {
        if (v33)
        {
          if (v33 == 1)
          {
            sub_100085A18(0);
          }

          else
          {
            sub_100085A18(1uLL);
          }
        }

        else
        {
          v21 = v47;
          (*v40)(v42, v46, v47);
          sub_100085A18(6uLL);
          sub_100075E6C(&qword_1000A5C70, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v22 = v42;
          sub_100085028();
          (*v39)(v22, v21);
        }
      }

      else if (v33 > 4)
      {
        if (v33 == 5)
        {
          sub_100085A18(4uLL);
        }

        else
        {
          sub_100085A18(5uLL);
        }
      }

      else if (v33 == 3)
      {
        sub_100085A18(2uLL);
      }

      else
      {
        sub_100085A18(3uLL);
      }

      result = sub_100085A38();
      v23 = -1 << *(v13 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v20 + 8 * (v24 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v23) >> 6;
        while (++v25 != v35 || (v34 & 1) == 0)
        {
          v36 = v25 == v35;
          if (v25 == v35)
          {
            v25 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v25);
          if (v37 != -1)
          {
            v26 = __clz(__rbit64(~v37)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v20 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_10007A800(v10, *(v13 + 48) + v26 * v31, type metadata accessor for MarkdownStyle);
      ++*(v13 + 16);
      v11 = v43;
    }

    v28 = v14;
    while (1)
    {
      v14 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v14 >= v19)
      {
        break;
      }

      v29 = v15[v14];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v18 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v11 + 32);
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    v2 = v41;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_100077BD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005740(&qword_1000A7330, &unk_10008F7B0);
  result = sub_100085608();
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
      sub_100085A08();
      sub_100085118();
      result = sub_100085A38();
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

uint64_t sub_100077E38(uint64_t a1, unint64_t a2, char a3)
{
  v57 = a1;
  v56 = sub_100005740(&qword_1000A6D98, &qword_10008E500);
  __chkstk_darwin(v56);
  v7 = &v40 - v6;
  v47 = _s3TagVMa(0);
  v8 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000848B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v15 = __chkstk_darwin(v14 - 8);
  v55 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = *(*v3 + 16);
  v20 = *(*v3 + 24);
  v41 = v3;
  v40 = v8;
  if (v20 > v19 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1000771DC(v19 + 1);
  }

  else
  {
    if (v20 > v19)
    {
      sub_100078DE0(_s3TagVMa, &qword_1000A7310, &qword_10008F798, _s3TagVMa);
      goto LABEL_27;
    }

    sub_100079144(v19 + 1);
  }

  v54 = *v3;
  sub_100085A08();
  sub_100005888(v57, v18, &qword_1000A5490, &qword_10008CD80);
  v52 = *(v12 + 48);
  v53 = v12 + 48;
  if (v52(v18, 1, v11) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    v21 = v43;
    (*(v12 + 32))(v43, v18, v11);
    sub_100085A28(1u);
    sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085028();
    (*(v12 + 8))(v21, v11);
  }

  v22 = (v57 + *(v47 + 20));
  v23 = *v22;
  v48 = v22[1];
  v49 = v23;
  sub_100085118();
  v24 = sub_100085A38();
  v25 = -1 << *(v54 + 32);
  a2 = v24 & ~v25;
  v51 = v54 + 56;
  if ((*(v54 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v50 = ~v25;
    v42 = (v12 + 32);
    v26 = *(v8 + 72);
    v46 = (v12 + 8);
    v45 = v10;
    v44 = v26;
    do
    {
      sub_10007A738(*(v54 + 48) + v26 * a2, v10, _s3TagVMa);
      v27 = *(v56 + 48);
      sub_100005888(v10, v7, &qword_1000A5490, &qword_10008CD80);
      sub_100005888(v57, &v7[v27], &qword_1000A5490, &qword_10008CD80);
      v28 = v52;
      if (v52(v7, 1, v11) == 1)
      {
        if (v28(&v7[v27], 1, v11) != 1)
        {
          goto LABEL_14;
        }

        sub_1000058F0(v7, &qword_1000A5490, &qword_10008CD80);
      }

      else
      {
        v29 = v55;
        sub_100005888(v7, v55, &qword_1000A5490, &qword_10008CD80);
        if (v28(&v7[v27], 1, v11) == 1)
        {
          (*v46)(v29, v11);
          v26 = v44;
          v10 = v45;
LABEL_14:
          sub_1000058F0(v7, &qword_1000A6D98, &qword_10008E500);
          goto LABEL_15;
        }

        v30 = v43;
        (*v42)(v43, &v7[v27], v11);
        sub_100075E6C(&qword_1000A6DA0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v31 = sub_100085058();
        v32 = *v46;
        (*v46)(v30, v11);
        v32(v55, v11);
        sub_1000058F0(v7, &qword_1000A5490, &qword_10008CD80);
        v26 = v44;
        v10 = v45;
        if ((v31 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v33 = &v10[*(v47 + 20)];
      v34 = *v33 == v49 && *(v33 + 1) == v48;
      if (v34 || (sub_100085948() & 1) != 0)
      {
        sub_10007A7A0(v10, _s3TagVMa);
        sub_100085968();
        __break(1u);
        break;
      }

LABEL_15:
      sub_10007A7A0(v10, _s3TagVMa);
      a2 = (a2 + 1) & v50;
    }

    while (((*(v51 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v35 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10007A800(v57, *(v35 + 48) + *(v40 + 72) * a2, _s3TagVMa);
  v37 = *(v35 + 16);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v39;
  }

  return result;
}

uint64_t sub_100078580(uint64_t a1, unint64_t a2, char a3)
{
  v51 = a1;
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  __chkstk_darwin(v50);
  v11 = &v38 - v10;
  v12 = type metadata accessor for MarkdownStyle(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = *(*v3 + 16);
  v20 = *(*v3 + 24);
  v47 = v13;
  v48 = v3;
  if (v20 <= v19 || (a3 & 1) == 0)
  {
    v45 = v16;
    if (a3)
    {
      v39 = v15;
      sub_1000776E0(v19 + 1);
    }

    else
    {
      if (v20 > v19)
      {
        sub_100078DE0(type metadata accessor for MarkdownStyle, &qword_1000A5C78, &unk_10008B880, type metadata accessor for MarkdownStyle);
        goto LABEL_34;
      }

      v39 = v15;
      sub_100079620(v19 + 1);
    }

    v21 = *v3;
    sub_100085A08();
    sub_10002656C(v52);
    v22 = sub_100085A38();
    v23 = -1 << *(v21 + 32);
    a2 = v22 & ~v23;
    v46 = v21 + 56;
    if ((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v42 = v9;
      v49 = ~v23;
      v24 = *(v13 + 72);
      v25 = (v7 + 48);
      v44 = (v7 + 8);
      v40 = (v7 + 32);
      v41 = v24;
      v26 = v46;
      while (1)
      {
        sub_10007A738(*(v21 + 48) + v24 * a2, v18, type metadata accessor for MarkdownStyle);
        v27 = *(v50 + 48);
        sub_10007A738(v18, v11, type metadata accessor for MarkdownStyle);
        sub_10007A738(v51, &v11[v27], type metadata accessor for MarkdownStyle);
        v28 = *v25;
        v29 = (*v25)(v11, 6, v6);
        if (v29 > 2)
        {
          if (v29 > 4)
          {
            if (v29 == 5)
            {
              sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
              if (v28(&v11[v27], 6, v6) == 5)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
              if (v28(&v11[v27], 6, v6) == 6)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v29 == 3)
          {
            sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
            if (v28(&v11[v27], 6, v6) == 3)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
            if (v28(&v11[v27], 6, v6) == 4)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_29;
        }

        if (v29)
        {
          break;
        }

        v30 = v45;
        sub_10007A738(v11, v45, type metadata accessor for MarkdownStyle);
        if (v28(&v11[v27], 6, v6))
        {
          sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
          (*v44)(v30, v6);
          v26 = v46;
LABEL_29:
          sub_1000058F0(v11, &qword_1000A5C60, &qword_10008B870);
          goto LABEL_30;
        }

        v31 = v42;
        (*v40)(v42, &v11[v27], v6);
        v43 = sub_100084758();
        v32 = *v44;
        (*v44)(v31, v6);
        sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
        v32(v30, v6);
        v24 = v41;
        v26 = v46;
        if (v43)
        {
          goto LABEL_37;
        }

        sub_10007A7A0(v11, type metadata accessor for MarkdownStyle);
LABEL_30:
        a2 = (a2 + 1) & v49;
        if (((*(v26 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (v29 == 1)
      {
        sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
        if (v28(&v11[v27], 6, v6) == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_10007A7A0(v18, type metadata accessor for MarkdownStyle);
        if (v28(&v11[v27], 6, v6) == 2)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_34:
  v33 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10007A800(v51, *(v33 + 48) + *(v47 + 72) * a2, type metadata accessor for MarkdownStyle);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_37:
    sub_10007A7A0(v11, type metadata accessor for MarkdownStyle);
    result = sub_100085968();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

uint64_t sub_100078C34(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100077BD8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100078FE8();
      goto LABEL_16;
    }

    sub_100079AEC(v8 + 1);
  }

  v10 = *v4;
  sub_100085A08();
  sub_100085118();
  result = sub_100085A38();
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

      result = sub_100085948();
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
  result = sub_100085968();
  __break(1u);
  return result;
}

void *sub_100078DE0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  sub_100005740(a2, a3);
  v13 = *v4;
  v14 = sub_1000855F8();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_10007A738(*(v13 + 48) + v28, v12, a4);
        result = sub_10007A800(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void *sub_100078FE8()
{
  v1 = v0;
  sub_100005740(&qword_1000A7330, &unk_10008F7B0);
  v2 = *v0;
  v3 = sub_1000855F8();
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

uint64_t sub_100079144(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000848B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = _s3TagVMa(0);
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  sub_100005740(&qword_1000A7310, &qword_10008F798);
  result = sub_100085608();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v3;
    v39 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v4 + 48);
    v45 = v11;
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = result + 56;
    v42 = v9;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v48 = *(v47 + 72);
      v26 = v49;
      sub_10007A738(v25 + v48 * (v22 | (v14 << 6)), v49, _s3TagVMa);
      sub_100085A08();
      sub_100005888(v26, v8, &qword_1000A5490, &qword_10008CD80);
      v27 = v46;
      if ((*v44)(v8, 1, v46) == 1)
      {
        sub_100085A28(0);
      }

      else
      {
        v28 = v8;
        v29 = v43;
        (*v41)(v43, v28, v27);
        sub_100085A28(1u);
        sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_100085028();
        v30 = v29;
        v8 = v28;
        (*v40)(v30, v27);
      }

      sub_100085118();
      result = sub_100085A38();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v11 = v45;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_10007A800(v49, *(v13 + 48) + v21 * v48, _s3TagVMa);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v39;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

uint64_t sub_100079620(uint64_t a1)
{
  v2 = v1;
  v43 = sub_1000847C8();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarkdownStyle(0);
  v41 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = *v1;
  sub_100005740(&qword_1000A5C78, &unk_10008B880);
  result = sub_100085608();
  v12 = result;
  if (*(v10 + 16))
  {
    v37 = v1;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v39 = v10;
    v40 = (v3 + 48);
    v35 = (v3 + 8);
    v36 = (v3 + 32);
    v19 = result + 56;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v28 = *(v41 + 72);
      sub_10007A738(*(v10 + 48) + v28 * (v25 | (v13 << 6)), v9, type metadata accessor for MarkdownStyle);
      sub_100085A08();
      v29 = v42;
      sub_10007A738(v9, v42, type metadata accessor for MarkdownStyle);
      v30 = (*v40)(v29, 6, v43);
      if (v30 <= 2)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            sub_100085A18(0);
          }

          else
          {
            sub_100085A18(1uLL);
          }
        }

        else
        {
          v20 = v43;
          (*v36)(v38, v42, v43);
          sub_100085A18(6uLL);
          sub_100075E6C(&qword_1000A5C70, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          sub_100085028();
          (*v35)(v38, v20);
        }
      }

      else if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_100085A18(4uLL);
        }

        else
        {
          sub_100085A18(5uLL);
        }
      }

      else if (v30 == 3)
      {
        sub_100085A18(2uLL);
      }

      else
      {
        sub_100085A18(3uLL);
      }

      result = sub_100085A38();
      v21 = -1 << *(v12 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v19 + 8 * (v22 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v21) >> 6;
        while (++v23 != v32 || (v31 & 1) == 0)
        {
          v33 = v23 == v32;
          if (v23 == v32)
          {
            v23 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v23);
          if (v34 != -1)
          {
            v24 = __clz(__rbit64(~v34)) + (v23 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v19 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v19 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_10007A800(v9, *(v12 + 48) + v24 * v28, type metadata accessor for MarkdownStyle);
      ++*(v12 + 16);
      v10 = v39;
    }

    v26 = v13;
    while (1)
    {
      v13 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v37;
        goto LABEL_39;
      }

      v27 = *(v14 + 8 * v13);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {

LABEL_39:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_100079AEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005740(&qword_1000A7330, &unk_10008F7B0);
  result = sub_100085608();
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
      sub_100085A08();

      sub_100085118();
      result = sub_100085A38();
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

uint64_t sub_100079D24(uint64_t a1)
{
  v2 = _s3TagVMa(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100075E6C(&qword_1000A7308, 255, _s3TagVMa, &unk_10008E41C);
  result = sub_1000852A8();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10007A738(v11, v6, _s3TagVMa);
      sub_10007626C(v8, v6);
      sub_10007A7A0(v8, _s3TagVMa);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100079EB8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_100085138();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

void *sub_100079F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A72E0, &qword_10008F730);
    v3 = sub_100085618();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100085098();
      sub_100085A08();
      v27 = v7;
      sub_100085118();
      v8 = sub_100085A38();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100085098();
        v18 = v17;
        if (v16 == sub_100085098() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_100085948();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10007A148()
{
  result = qword_1000A72E8;
  if (!qword_1000A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A72E8);
  }

  return result;
}

unint64_t sub_10007A230()
{
  result = qword_1000A7300;
  if (!qword_1000A7300)
  {
    sub_100008250(255, &qword_1000A56C8, NSManagedObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7300);
  }

  return result;
}

uint64_t sub_10007A340(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_10007A3C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10007A3D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10007A410(uint64_t a1)
{
  v2 = sub_1000847C8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005740(&qword_1000A7320, &qword_10008F7A8);
    v9 = sub_100085618();
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
      sub_100075E6C(&qword_1000A5C70, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = sub_100085018();
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
          sub_100075E6C(&qword_1000A6460, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v23 = sub_100085058();
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

uint64_t sub_10007A738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007A7A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007A800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007A868(uint64_t a1)
{
  v2 = type metadata accessor for MarkdownStyle(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100075E6C(&qword_1000A7328, 255, type metadata accessor for MarkdownStyle, &unk_10008C03C);
  result = sub_1000852A8();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10007A738(v11, v6, type metadata accessor for MarkdownStyle);
      sub_1000769E4(v8, v6);
      sub_10007A7A0(v8, type metadata accessor for MarkdownStyle);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10007A9FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000852A8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10007708C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10007AAA8()
{
  result = qword_1000A7338;
  if (!qword_1000A7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7338);
  }

  return result;
}

Swift::Int sub_10007AB40(uint64_t a1, unsigned __int8 a2)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

id sub_10007AC84(uint64_t a1, uint64_t (**a2)(void, void, void, void), double *a3)
{
  v163 = a3;
  v168 = a2;
  v170 = sub_100084918();
  v166 = *(v170 - 8);
  __chkstk_darwin(v170);
  v165 = v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005740(&qword_1000A7368, &qword_10008F8B0);
  v6 = __chkstk_darwin(v5 - 8);
  v164 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v169 = v144 - v8;
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v10 = __chkstk_darwin(v9 - 8);
  v156 = v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v161 = v144 - v13;
  v14 = __chkstk_darwin(v12);
  v155 = v144 - v15;
  v16 = __chkstk_darwin(v14);
  v159 = v144 - v17;
  v18 = __chkstk_darwin(v16);
  v154 = v144 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = v144 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = v144 - v23;
  v24 = __chkstk_darwin(v22);
  v158 = v144 - v25;
  v26 = __chkstk_darwin(v24);
  v162 = (v144 - v27);
  v28 = __chkstk_darwin(v26);
  v152 = v144 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v144 - v31;
  __chkstk_darwin(v30);
  v151 = v144 - v33;
  v150 = sub_1000848B8();
  v167 = *(v150 - 8);
  v34 = __chkstk_darwin(v150);
  v36 = v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = v144 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = v144 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = v144 - v44;
  __chkstk_darwin(v43);
  v47 = v144 - v46;
  ObjectType = swift_getObjectType();
  v49 = v3;
  v50 = v171;
  result = (v168)[4](*(v49 + 8), *(v49 + 16), v163, ObjectType);
  if (!v50)
  {
    v145 = v39;
    v146 = v42;
    v147 = v32;
    v149 = v36;
    v168 = result;
    v144[1] = 0;
    v171 = type metadata accessor for ICNoteArchiveModel(0);
    v52 = v151;
    sub_100005888(v3 + *(v171 + 40), v151, &qword_1000A5490, &qword_10008CD80);
    v53 = v167;
    v54 = *(v167 + 48);
    v55 = v150;
    v56 = v54(v52, 1, v150);
    v148 = v49;
    v157 = v54;
    if (v56 == 1)
    {
      sub_1000848A8();
      v57 = v54(v52, 1, v55);
      v58 = v168;
      if (v57 != 1)
      {
        sub_1000058F0(v52, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      (*(v53 + 32))(v45, v52, v55);
      v58 = v168;
    }

    sub_100084858();
    v59 = v167;
    v60 = *(v167 + 8);
    (v60)(v45, v55);
    isa = sub_100084848().super.isa;
    v163 = v60;
    (v60)(v47, v55);
    v62 = v58;
    [v58 setCreationDate:isa];

    v63 = v148;
    v64 = v147;
    sub_100005888(v148 + *(v171 + 44), v147, &qword_1000A5490, &qword_10008CD80);
    v65 = v157;
    if (v157(v64, 1, v55) == 1)
    {
      v66 = v145;
      sub_1000848A8();
      if (v65(v64, 1, v55) != 1)
      {
        sub_1000058F0(v64, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v66 = v145;
      (*(v59 + 32))(v145, v64, v55);
    }

    v67 = v146;
    sub_100084858();
    v68 = v163;
    (v163)(v66, v55);
    v69 = sub_100084848().super.isa;
    (v68)(v67, v55);
    v70 = v62;
    [v62 setModificationDate:v69];

    if (*(v63 + *(v171 + 48) + 8))
    {
      v71 = sub_100085068();
    }

    else
    {
      v71 = 0;
    }

    [v62 setTitle:v71];

    v72 = v171;
    [v62 setIsPinned:*(v63 + *(v171 + 52)) & 1];
    [v62 setIsSystemPaper:*(v63 + v72[14]) & 1];
    [v62 setPaperStyleType:word_100095804[*(v63 + v72[15])]];
    v73 = *(v63 + v72[16]);
    if (v73)
    {
      v74 = 2;
    }

    else
    {
      v74 = 1;
    }

    if (v73 == 2)
    {
      v75 = 0;
    }

    else
    {
      v75 = v74;
    }

    [v62 setPreferredBackgroundType:v75];
    v76 = *(v63 + v72[17]);
    v77 = v152;
    if (v76 > 1)
    {
      if (v76 == 2)
      {
        v78 = 2;
      }

      else
      {
        v78 = [v62 attachmentViewType];
      }
    }

    else
    {
      v78 = v76 != 0;
    }

    [v62 setAttachmentViewType:v78];
    if (*(v63 + *(v171 + 72) + 8))
    {
      v79 = sub_100085068();
    }

    else
    {
      v79 = 0;
    }

    [v62 setHostApplicationIdentifier:v79];

    v80 = v162;
    sub_100005888(v63 + *(v171 + 76), v162, &qword_1000A5490, &qword_10008CD80);
    v81 = 1;
    if (v65(v80, 1, v55) != 1)
    {
      v82 = v149;
      (*(v167 + 32))(v149, v80, v55);
      sub_100084858();
      (v163)(v82, v55);
      v81 = 0;
    }

    v162 = *(v167 + 56);
    (v162)(v77, v81, 1, v55);
    if (v65(v77, 1, v55) == 1)
    {
      v83 = 0;
    }

    else
    {
      v83 = sub_100084848().super.isa;
      (v163)(v77, v55);
    }

    [v70 setLastOpenedDate:v83];

    v84 = v153;
    sub_100005888(v63 + *(v171 + 80), v153, &qword_1000A5490, &qword_10008CD80);
    v85 = 1;
    if (v65(v84, 1, v55) != 1)
    {
      v86 = v149;
      (*(v167 + 32))(v149, v84, v55);
      sub_100084858();
      (v163)(v86, v55);
      v85 = 0;
    }

    v87 = v158;
    (v162)(v158, v85, 1, v55);
    if (v65(v87, 1, v55) == 1)
    {
      v88 = 0;
    }

    else
    {
      v88 = sub_100084848().super.isa;
      (v163)(v87, v55);
    }

    [v70 setLastActivitySummaryViewedDate:v88];

    v89 = v154;
    sub_100005888(v63 + *(v171 + 84), v154, &qword_1000A5490, &qword_10008CD80);
    if (v65(v89, 1, v55) != 1)
    {
      v90 = v149;
      (*(v167 + 32))(v149, v89, v55);
      sub_100084858();
      (v163)(v90, v55);
    }

    v91 = v160;
    (v162)();
    if (v65(v91, 1, v55) == 1)
    {
      v92 = 0;
    }

    else
    {
      v93 = v91;
      v92 = sub_100084848().super.isa;
      (v163)(v93, v55);
    }

    [v70 setLastActivityRecentUpdatesViewedDate:v92];

    v94 = v155;
    sub_100005888(v63 + *(v171 + 88), v155, &qword_1000A5490, &qword_10008CD80);
    v95 = 1;
    if (v157(v94, 1, v55) != 1)
    {
      v96 = v149;
      (*(v167 + 32))(v149, v94, v55);
      sub_100084858();
      (v163)(v96, v55);
      v95 = 0;
    }

    v97 = v159;
    (v162)(v159, v95, 1, v55);
    v98 = v157;
    if (v157(v97, 1, v55) == 1)
    {
      v99 = 0;
    }

    else
    {
      v99 = sub_100084848().super.isa;
      (v163)(v97, v55);
    }

    [v70 setRecentUpdatesGenerationDate:v99];

    v100 = v156;
    sub_100005888(v63 + *(v171 + 92), v156, &qword_1000A5490, &qword_10008CD80);
    v101 = 1;
    if (v98(v100, 1, v55) != 1)
    {
      v102 = v149;
      (*(v167 + 32))(v149, v100, v55);
      sub_100084858();
      (v163)(v102, v55);
      v101 = 0;
    }

    v103 = v161;
    (v162)(v161, v101, 1, v55);
    if (v98(v103, 1, v55) == 1)
    {
      v104 = 0;
    }

    else
    {
      v104 = sub_100084848().super.isa;
      (v163)(v103, v55);
    }

    v105 = v170;
    v106 = v164;
    v107 = v166;
    [v70 setLastAttributionsViewedDate:v104];

    v108 = *(v63 + *(v171 + 104));
    if (v108)
    {
      v109 = objc_allocWithZone(ICOutlineState);
      sub_100082430(&qword_1000A6418, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v110 = sub_100085288().super.isa;
      v111 = [v109 initWithCollapsedUUIDs:v110];

      v108 = [v111 data];
      if (v108)
      {
        v112 = sub_100084808();
        v114 = v113;

        v108 = sub_1000847F8().super.isa;
        sub_10000650C(v112, v114);
      }
    }

    [v70 setOutlineStateData:v108];

    v115 = *(v171 + 112);
    if (*(v63 + v115))
    {
      v116 = *(v63 + v115);
    }

    else
    {
      v116 = sub_10003E868(_swiftEmptyArrayStorage);
    }

    v163 = v116;
    v118 = (v116 + 64);
    v117 = *(v116 + 64);
    v161 = v118;
    v119 = 1 << *(v118 - 32);
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & v117;
    v160 = ((v119 + 63) >> 6);
    v162 = (v107 + 16);
    v171 = v107 + 32;
    v167 = v107 + 8;

    v122 = 0;
    v123 = v165;
    if (v121)
    {
      while (1)
      {
        v124 = v122;
LABEL_69:
        v127 = __clz(__rbit64(v121));
        v121 &= v121 - 1;
        v128 = v127 | (v124 << 6);
        v129 = v163;
        v131 = v165;
        v130 = v166;
        (*(v166 + 16))(v165, *(v163 + 6) + *(v166 + 72) * v128, v105);
        v132 = (*(v129 + 7) + 16 * v128);
        v134 = *v132;
        v133 = v132[1];
        v135 = sub_100005740(&qword_1000A7370, &qword_10008F8B8);
        v136 = v105;
        v137 = &v164[*(v135 + 48)];
        v138 = *(v130 + 32);
        v123 = v131;
        v106 = v164;
        v138(v164, v123, v136);
        *v137 = v134;
        *(v137 + 1) = v133;
        (*(*(v135 - 8) + 56))(v106, 0, 1, v135);

        v126 = v124;
LABEL_70:
        v139 = v169;
        sub_100081938(v106, v169, &qword_1000A7368, &qword_10008F8B0);
        v140 = sub_100005740(&qword_1000A7370, &qword_10008F8B8);
        if ((*(*(v140 - 8) + 48))(v139, 1, v140) == 1)
        {
          break;
        }

        v105 = v170;
        (*v171)(v123, v139, v170);
        v141 = sub_100085068();

        v142 = sub_1000848E8().super.isa;
        [v168 addUserID:v141 forReplicaID:v142];

        result = (*v167)(v123, v105);
        v122 = v126;
        if (!v121)
        {
          goto LABEL_62;
        }
      }

      return v168;
    }

    else
    {
LABEL_62:
      if (v160 <= v122 + 1)
      {
        v125 = (v122 + 1);
      }

      else
      {
        v125 = v160;
      }

      v126 = v125 - 1;
      while (1)
      {
        v124 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        if (v124 >= v160)
        {
          v143 = sub_100005740(&qword_1000A7370, &qword_10008F8B8);
          (*(*(v143 - 8) + 56))(v106, 1, 1, v143);
          v121 = 0;
          goto LABEL_70;
        }

        v121 = *&v161[8 * v124];
        ++v122;
        if (v121)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_10007BF04(id a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ICNoteArchiveModel(0);
  v9 = (v3 + *(v8 + 100));
  v10 = v9[1];
  if (!v10)
  {
    v12 = (v3 + *(v8 + 96));
    v13 = v12[5];
    v50 = v12[4];
    v51 = v13;
    v14 = *(v12 + 12);
    v52 = v14;
    v15 = v12[1];
    aBlock = *v12;
    v47 = v15;
    v16 = v12[3];
    v48 = v12[2];
    v49 = v16;
    if (!v51)
    {
      return 0;
    }

    v17 = v12[3];
    v55 = v12[2];
    v56 = v17;
    v18 = v12[5];
    v57 = v12[4];
    v19 = v12[1];
    v53 = *v12;
    v54 = v19;
    v58 = v51;
    v59 = v14;
    v44[4] = v57;
    v44[5] = v18;
    v45 = *(v12 + 12);
    v44[0] = v53;
    v44[1] = v19;
    v44[2] = v55;
    v44[3] = v17;
    sub_100060CC0(v44, v43);
    sub_10005FADC(a1);
    v20 = [a1 noteData];
    if (v20)
    {
      v21 = v20;
      isa = sub_1000847F8().super.isa;
      [v21 setData:isa];
    }

    a1 = [a1 noteData];
    sub_1000058F0(&aBlock, &qword_1000A7360, &qword_10008F8A8);
    return a1;
  }

  v11 = sub_10001FFC0(a2, a1, &off_10009E9E8, a3, *v9, v10, v9[2]);
  if (v4)
  {
    return a1;
  }

  v60 = v11;
  result = [a1 textStorage];
  if (result)
  {
    v24 = result;
    [result beginSkippingTimestampUpdates];
    v25 = [v24 mergeableString];
    v26 = v24;
    v27 = [v26 ic_range];
    v29 = v28;
    v30 = [objc_allocWithZone(NSAttributedString) init];
    [v25 replaceCharactersInRange:v27 withAttributedString:{v29, v30}];

    v31 = [v26 mergeableString];
    v32.super.isa = v60;
    sub_100085498(v32, 0);

    v33 = [v26 mergeableString];
    v42 = [v26 ic_range];
    v35 = v34;

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_100081908;
    *(v37 + 24) = v36;
    *&v48 = sub_10007623C;
    *(&v48 + 1) = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_1000744D0;
    *(&v47 + 1) = &unk_1000A1670;
    v38 = _Block_copy(&aBlock);
    v39 = a1;

    [v33 enumerateEditsInRange:v42 usingBlock:{v35, v38}];

    _Block_release(v38);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      [v26 endSkippingTimestampUpdates];
      v40 = [v39 noteData];
      if (v40)
      {
        v41 = v40;
        [v40 setNeedsToBeSaved:1];
      }

      a1 = [v39 noteData];

      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C34C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A5498, &qword_10008AA30);
  __chkstk_darwin(v5 - 8);
  v37 = v30 - v6;
  v7 = sub_100005740(&qword_1000A54A0, &qword_10008AA38);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = sub_100084C78();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v34 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s8ActivityVMa(0);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + *(type metadata accessor for ICNoteArchiveModel(0) + 108));
  if (!v16)
  {
    return 0;
  }

  v30[1] = a1;
  v30[2] = v2;
  v44 = _swiftEmptyArrayStorage;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v35 = (v11 + 48);
    v36 = v19;
    v31 = (v11 + 8);
    v32 = (v11 + 32);
    v38 = v15;
    while (1)
    {
      sub_100082534(v18, v15, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v24 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v39[0] = IsAlexandriaDemoModeEnabled;
      v39[1] = v24;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v43 = 2;
      sub_100002CD4(v39, v9);
      if ((*v35)(v9, 1, v10) == 1)
      {
        break;
      }

      v25 = v34;
      (*v32)(v34, v9, v10);
      sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      v26 = v37;
      sub_1000034D0(v39, v37);
      v27 = sub_100085418();
      v28 = v26;
      v15 = v38;
      sub_1000058F0(v28, &qword_1000A5498, &qword_10008AA30);
      (*v31)(v25, v10);
      sub_10008259C(v15, _s8ActivityVMa);
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_8:
      v18 += v36;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }

    sub_1000058F0(v9, &qword_1000A54A0, &qword_10008AA38);
    sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
    v20 = v9;
    v21 = v37;
    sub_1000034D0(v39, v37);
    v15 = v38;
    sub_100085428();
    v22 = v21;
    v9 = v20;
    sub_1000058F0(v22, &qword_1000A5498, &qword_10008AA30);
    sub_10008259C(v15, _s8ActivityVMa);
LABEL_5:
    sub_1000851F8();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100085228();
    }

    sub_100085258();
    goto LABEL_8;
  }

LABEL_12:
  sub_100085448();
  return sub_100085438();
}

void sub_10007C7F8(id a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v265 = a2;
  v5 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v5 - 8);
  v268 = &v250 - v6;
  v7 = sub_100005740(&qword_1000A7358, &qword_10008F888);
  __chkstk_darwin(v7 - 8);
  v273 = &v250 - v8;
  v282 = sub_100005740(&qword_1000A5A28, &unk_10008F890);
  v261 = *(v282 - 8);
  __chkstk_darwin(v282);
  v267 = &v250 - v9;
  v279 = sub_100084918();
  v254 = *(v279 - 8);
  v10 = __chkstk_darwin(v279);
  v266 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v280 = &v250 - v13;
  __chkstk_darwin(v12);
  v253 = &v250 - v14;
  v15 = _s8ActivityVMa(0);
  v281 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v256 = &v250 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v18 = __chkstk_darwin(v17 - 8);
  v275 = (&v250 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v274 = (&v250 - v21);
  v22 = __chkstk_darwin(v20);
  v271 = &v250 - v23;
  v24 = __chkstk_darwin(v22);
  v263 = (&v250 - v25);
  v26 = __chkstk_darwin(v24);
  v277 = (&v250 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = &v250 - v29;
  __chkstk_darwin(v28);
  v32 = &v250 - v31;
  *a3 = 3;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v33 = type metadata accessor for ICNoteArchiveModel(0);
  v34 = v33[10];
  v35 = sub_1000848B8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v37(a3 + v34, 1, 1, v35);
  v278 = v33[11];
  v37(a3 + v278, 1, 1, v35);
  v39 = (a3 + v33[12]);
  *v39 = 0;
  v39[1] = 0;
  v257 = v39;
  v259 = v33[19];
  v37(a3 + v259, 1, 1, v35);
  v260 = v33[20];
  v37(a3 + v260, 1, 1, v35);
  v262 = v33[21];
  v37(a3 + v262, 1, 1, v35);
  v264 = v33[22];
  v37(v264 + a3, 1, 1, v35);
  v270 = v33[23];
  v37(&v270[a3], 1, 1, v35);
  v40 = a3 + v33[24];
  *(v40 + 96) = 0;
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v250 = v40;
  v41 = (a3 + v33[25]);
  *v41 = 0;
  v41[1] = 0;
  v255 = v41;
  v41[2] = 0;
  v258 = v33[26];
  *(v258 + a3) = 0;
  v252 = v33[27];
  *(a3 + v252) = 0;
  v42 = v33[28];
  v269 = a3;
  v251 = v42;
  *(a3 + v42) = 0;
  v43 = [a1 identifier];
  v272 = a1;
  if (v43)
  {
    v44 = v43;
    v45 = sub_100085098();
    v47 = v46;

    a1 = v272;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = v269;
  *(v269 + 8) = v45;
  *(v48 + 16) = v47;
  v49 = [a1 creationDate];
  if (v49)
  {
    v50 = v49;
    sub_100084888();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = 1;
  v37(v32, v51, 1, v35);
  sub_100040A94(v32, v269 + v34);
  v53 = [a1 modificationDate];
  if (v53)
  {
    v54 = v53;
    sub_100084888();

    v52 = 0;
  }

  v37(v30, v52, 1, v35);
  v55 = v33[13];
  v56 = v33[14];
  v58 = v33[15];
  v57 = v33[16];
  v276 = v33[17];
  v59 = v269;
  sub_100040A94(v30, v269 + v278);
  v60 = v272;
  *(v59 + v55) = [v272 isPinned];
  *(v59 + v56) = [v60 isSystemPaper];
  v61 = v60;
  v62 = [v60 paperStyleType];
  if (v62 < 0)
  {
    goto LABEL_150;
  }

  *(v59 + v58) = sub_100081224(v62);
  *(v59 + v57) = sub_100081328([v60 preferredBackgroundType]);
  v63 = sub_1000810EC([v60 attachmentViewType]);
  *(v59 + v276) = v63;
  v64 = [v60 hostApplicationIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = sub_100085098();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v55 = v273;
  v69 = v277;
  v58 = v269;
  v70 = (v269 + v33[18]);
  *v70 = v66;
  v70[1] = v68;
  if (*(v265 + 58) & 1) != 0 || (*(v265 + 59))
  {
    v71 = [v61 lastOpenedDate];
    if (v71)
    {
      v72 = v71;
      sub_100084888();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    v74 = v275;
    v75 = v274;
    v37(v69, v73, 1, v35);
    sub_100040A94(v69, v58 + v259);
    v76 = [v61 lastActivitySummaryViewedDate];
    if (v76)
    {
      v77 = v263;
      v78 = v76;
      sub_100084888();

      v79 = v77;
    }

    else
    {
      v79 = v263;
    }

    v80 = v79;
    (v37)();
    sub_100040A94(v80, v58 + v260);
    v81 = [v61 lastActivityRecentUpdatesViewedDate];
    if (v81)
    {
      v82 = v271;
      v83 = v81;
      sub_100084888();

      v84 = v82;
    }

    else
    {
      v84 = v271;
    }

    v85 = 1;
    v86 = v84;
    (v37)();
    sub_100040A94(v86, v58 + v262);
    v87 = [v61 recentUpdatesGenerationDate];
    if (v87)
    {
      v88 = v87;
      sub_100084888();

      v85 = 0;
    }

    v89 = 1;
    v37(v75, v85, 1, v35);
    sub_100040A94(v75, v264 + v58);
    v90 = [v61 lastAttributionsViewedDate];
    if (v90)
    {
      v91 = v90;
      sub_100084888();

      v89 = 0;
    }

    v92 = v270;
    v37(v74, v89, 1, v35);
    sub_100040A94(v74, &v92[v58]);
  }

  v37 = v265;
  if (*(v265 + 60))
  {
    v93 = v61;
    if ([v93 isPasswordProtectedAndLocked])
    {

      sub_100030518(v37);
      if (qword_1000A5470 != -1)
      {
        swift_once();
      }

      v94 = sub_100084FB8();
      sub_10000B614(v94, qword_1000A7340);
      v95 = v93;
      v96 = sub_100084FA8();
      v97 = sub_100085378();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v285[0] = v99;
        *v98 = 136315138;
        v100 = [v95 identifier];
        if (v100)
        {
          v101 = v100;
          v102 = sub_100085098();
          v104 = v103;
        }

        else
        {
          v102 = 9732322;
          v104 = 0xA300000000000000;
        }

        v148 = sub_100038A4C(v102, v104, v285);

        *(v98 + 4) = v148;
        v149 = "Pages Handoff: Note is locked — skipping {identifier: %s}";
LABEL_147:
        _os_log_impl(&_mh_execute_header, v96, v97, v149, v98, 0xCu);
        sub_100006304(v99);

        return;
      }

      goto LABEL_48;
    }

    v112 = [v93 textStorage];
    if (v112)
    {
      v113 = v112;
      v114 = [v112 mergeableString];
      sub_100011A6C(v37, v285);
      v115 = v114;
      v116 = v93;
LABEL_53:
      v137 = sub_10002FF98(v115, v116, v37);
      v139 = v138;
      v141 = v140;

      v260 = 0;
      v142 = v255;
      *v255 = v137;
      v142[1] = v139;
      v142[2] = v141;
      goto LABEL_73;
    }

    v143 = v58;

    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v144 = sub_100084FB8();
    sub_10000B614(v144, qword_1000A7340);
    v145 = v93;
    v146 = sub_100084FA8();
    v147 = sub_100085378();

    if (os_log_type_enabled(v146, v147))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (*v265)
  {
    v105 = v61;
    if ([v105 isPasswordProtectedAndLocked])
    {

      sub_100030518(v37);
      if (qword_1000A5470 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_154;
    }

    v124 = [v105 textStorage];
    if (v124)
    {
      v125 = v124;
      v126 = [v124 mergeableString];
      sub_100011A6C(v37, v285);
      v127 = sub_1000308DC(v126, v105, v37);
      v128 = v58;
      v130 = v129;
      v132 = v131;
      sub_100030518(v37);

      v260 = 0;
      v133 = v255;
      *v255 = v127;
      v133[1] = v130;
      v58 = v128;
      v133[2] = v132;
LABEL_73:
      v160 = v258;
      goto LABEL_74;
    }

    v143 = v58;

    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v150 = sub_100084FB8();
    sub_10000B614(v150, qword_1000A7340);
    v145 = v105;
    v146 = sub_100084FA8();
    v147 = sub_100085378();

    if (os_log_type_enabled(v146, v147))
    {
LABEL_68:
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v285[0] = v153;
      *v152 = 136315138;
      v154 = [v145 identifier];
      if (v154)
      {
        v155 = v154;
        v156 = sub_100085098();
        v158 = v157;

        v55 = v273;
      }

      else
      {
        v156 = 9732322;
        v158 = 0xA300000000000000;
      }

      v159 = sub_100038A4C(v156, v158, v285);

      *(v152 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v146, v147, "Note doesn't have a text storage — skipping {identifier: %s}", v152, 0xCu);
      sub_100006304(v153);
    }

LABEL_72:

    v260 = 0;
    v58 = v143;
    goto LABEL_73;
  }

  if (![v61 isPasswordProtected])
  {
    v134 = [v61 textStorage];
    if (v134)
    {
      v113 = v134;
      v135 = [v134 mergeableString];
      v136 = v61;
      sub_100011A6C(v37, v285);
      v115 = v135;
      v116 = v136;
      goto LABEL_53;
    }

    v143 = v58;
    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v151 = sub_100084FB8();
    sub_10000B614(v151, qword_1000A7340);
    v145 = v61;
    v146 = sub_100084FA8();
    v147 = sub_100085378();

    if (os_log_type_enabled(v146, v147))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  v117 = [v61 noteData];
  if (v117)
  {
    v118 = v117;
    v119 = [v117 data];

    v120 = v250;
    if (v119)
    {
      v121 = sub_100084808();
      v123 = v122;
    }

    else
    {
      v121 = 0;
      v123 = 0xC000000000000000;
    }
  }

  else
  {
    v121 = 0;
    v123 = 0xC000000000000000;
    v120 = v250;
  }

  v235 = v61;
  sub_100060110(v235, v121, v123, v283);

  v236 = *(v120 + 80);
  v285[4] = *(v120 + 64);
  v285[5] = v236;
  v286 = *(v120 + 96);
  v237 = *(v120 + 16);
  v285[0] = *v120;
  v285[1] = v237;
  v238 = *(v120 + 48);
  v285[2] = *(v120 + 32);
  v285[3] = v238;
  sub_1000058F0(v285, &qword_1000A7360, &qword_10008F8A8);
  v239 = v283[5];
  *(v120 + 64) = v283[4];
  *(v120 + 80) = v239;
  *(v120 + 96) = v284;
  v240 = v283[1];
  *v120 = v283[0];
  *(v120 + 16) = v240;
  v241 = v283[3];
  *(v120 + 32) = v283[2];
  *(v120 + 48) = v241;
  v242 = [v235 title];
  if (v242)
  {
    v243 = v242;
    v244 = sub_100085098();
    v246 = v245;

    v247 = v246;
  }

  else
  {
    v244 = 0;
    v247 = 0;
  }

  v160 = v258;
  v248 = v257;
  *v257 = v244;
  v248[1] = v247;
  v260 = v247;
LABEL_74:
  v161 = [v61 outlineState];
  v162 = [v161 collapsedUUIDs];

  sub_100082430(&qword_1000A6418, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v163 = sub_100085298();

  *&v160[v58] = v163;
  if (*(v37 + 56))
  {
    v164 = v61;
    v38 = sub_100085438();

    if (v38 >> 62)
    {
      goto LABEL_151;
    }

    v165 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v166 = v256;
    if (v165)
    {
      *&v285[0] = _swiftEmptyArrayStorage;
      v105 = v285;
      sub_10003BD68(0, v165 & ~(v165 >> 63), 0);
      if ((v165 & 0x8000000000000000) == 0)
      {
        v167 = 0;
        v168 = *&v285[0];
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v169 = sub_100085648();
          }

          else
          {
            v169 = *(v38 + 8 * v167 + 32);
          }

          sub_100001B78(v169, v166);
          *&v285[0] = v168;
          v171 = *(v168 + 16);
          v170 = *(v168 + 24);
          if (v171 >= v170 >> 1)
          {
            sub_10003BD68((v170 > 1), v171 + 1, 1);
            v168 = *&v285[0];
          }

          ++v167;
          *(v168 + 16) = v171 + 1;
          sub_100066400(v166, v168 + ((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v171);
        }

        while (v165 != v167);

        v58 = v269;
        *(v269 + v252) = v168;
        v37 = v265;
        if (*(v265 + 57))
        {
          goto LABEL_90;
        }

LABEL_94:
        sub_100030518(v37);
        if ((*(v37 + 59) & 1) == 0)
        {
LABEL_139:

          return;
        }

        goto LABEL_95;
      }

      __break(1u);
LABEL_154:
      swift_once();
LABEL_39:
      v106 = sub_100084FB8();
      sub_10000B614(v106, qword_1000A7340);
      v95 = v105;
      v96 = sub_100084FA8();
      v97 = sub_100085378();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v285[0] = v99;
        *v98 = 136315138;
        v107 = [v95 identifier];
        if (v107)
        {
          v108 = v107;
          v109 = sub_100085098();
          v111 = v110;
        }

        else
        {
          v109 = 9732322;
          v111 = 0xA300000000000000;
        }

        v249 = sub_100038A4C(v109, v111, v285);

        *(v98 + 4) = v249;
        v149 = "Markdown export: Note is locked — skipping {identifier: %s}";
        goto LABEL_147;
      }

LABEL_48:

      return;
    }

    *(v58 + v252) = _swiftEmptyArrayStorage;
    if ((*(v37 + 57) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((*(v37 + 57) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_90:
  v259 = 0;
  v172 = v254;
  v173 = v254;
  v174 = [v61 replicaIDToUserIDDictData];
  if (v174)
  {
    v175 = v174;
    v176 = sub_100084808();
    v178 = v177;

    v179 = v253;
    sub_100084908();
    if (v178 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000847F8().super.isa;
      sub_10001C19C(v176, v178);
    }
  }

  else
  {
    v179 = v253;
    sub_100084908();
    isa = 0;
  }

  v200 = objc_allocWithZone(ICMergeableDictionary);
  v201 = sub_1000848E8().super.isa;
  v202 = [v200 initWithData:isa replicaID:v201];

  v203 = *(v173 + 8);
  v58 = v173 + 8;
  v204 = v279;
  v271 = v58;
  v270 = v203;
  (v203)(v179, v279);
  v258 = v202;
  v205 = [v202 allKeys];
  sub_100008250(0, &qword_1000A64F8, NSString_ptr);
  v206 = sub_100085208();

  if (v206 >> 62)
  {
    v207 = sub_100085718();
  }

  else
  {
    v207 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v268;
  if (v207)
  {
    v208 = 0;
    v281 = v206 & 0xC000000000000001;
    v278 = v206 & 0xFFFFFFFFFFFFFF8;
    v275 = (v172 + 48);
    v264 = (v172 + 32);
    v277 = (v261 + 56);
    v37 = _swiftEmptyArrayStorage;
    v263 = (v261 + 48);
    v262 = v206;
    v276 = v207;
    while (1)
    {
      if (v281)
      {
        v209 = sub_100085648();
      }

      else
      {
        if (v208 >= *(v278 + 16))
        {
          goto LABEL_149;
        }

        v209 = *(v206 + 8 * v208 + 32);
      }

      v58 = v209;
      v210 = v208 + 1;
      if (__OFADD__(v208, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        v165 = sub_100085718();
        goto LABEL_77;
      }

      sub_100085098();
      sub_1000848C8();

      if ((*v275)(v38, 1, v204) == 1)
      {

        sub_1000058F0(v38, &qword_1000A5C20, &unk_10008B840);
        (*v277)(v55, 1, 1, v282);
        goto LABEL_113;
      }

      v274 = v37;
      v211 = *v264;
      (*v264)(v280, v38, v204);
      v212 = v204;
      v213 = sub_1000848E8().super.isa;
      v214 = [v61 userIDForReplicaID:v213];

      v215 = sub_100085098();
      v217 = v216;

      v218 = [objc_opt_self() CR_unknown];
      v219 = v266;
      sub_1000848F8();

      v220 = sub_1000848D8();
      v222 = v221;
      (v270)(v219, v212);
      if (v215 == v220 && v217 == v222)
      {
        break;
      }

      v223 = sub_100085948();

      if (v223)
      {
        goto LABEL_124;
      }

      v225 = &v273[*(v282 + 48)];
      v226 = v279;
      v211();
      v224 = 0;
      *v225 = v215;
      v225[1] = v217;
      v204 = v226;
LABEL_126:
      v206 = v262;
      v55 = v273;
      v227 = v282;
      (*v277)(v273, v224, 1, v282);
      v228 = (*v263)(v55, 1, v227);
      v61 = v272;
      v38 = v268;
      v37 = v274;
      if (v228 != 1)
      {
        sub_100081938(v55, v267, &qword_1000A5A28, &unk_10008F890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10000EFF0(0, *(v37 + 2) + 1, 1, v37);
        }

        v230 = *(v37 + 2);
        v229 = *(v37 + 3);
        if (v230 >= v229 >> 1)
        {
          v37 = sub_10000EFF0((v229 > 1), v230 + 1, 1, v37);
        }

        *(v37 + 2) = v230 + 1;
        sub_100081938(v267, v37 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v230, &qword_1000A5A28, &unk_10008F890);
        v204 = v279;
        goto LABEL_114;
      }

LABEL_113:
      sub_1000058F0(v55, &qword_1000A7358, &qword_10008F888);
LABEL_114:
      ++v208;
      if (v210 == v276)
      {
        goto LABEL_134;
      }
    }

LABEL_124:
    v204 = v279;
    (v270)(v280, v279);

    v224 = 1;
    goto LABEL_126;
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_134:

  v231 = v37;
  if (*(v37 + 2))
  {
    sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
    v232 = sub_100085748();
  }

  else
  {
    v232 = &_swiftEmptyDictionarySingleton;
  }

  v58 = v269;
  v233 = v265;
  v234 = v259;
  *&v285[0] = v232;
  sub_100081428(v231, 1, v285);
  if (v234)
  {

    __break(1u);
    return;
  }

  sub_100030518(v233);
  *(v58 + v251) = *&v285[0];
  if ((*(v233 + 59) & 1) == 0)
  {
    goto LABEL_139;
  }

LABEL_95:
  v181 = [v61 folder];
  if (v181 && (v182 = v181, v183 = [v181 identifier], v182, v183))
  {
    v184 = sub_100085098();
    v186 = v185;
  }

  else
  {
    v184 = 0;
    v186 = 0;
  }

  *(v58 + 24) = v184;
  *(v58 + 32) = v186;
  v187 = [v61 folder];
  if (v187)
  {
    v188 = v187;
    v189 = [v187 title];

    v190 = sub_100085098();
    v192 = v191;
  }

  else
  {
    v190 = 0;
    v192 = 0;
  }

  *(v58 + 40) = v190;
  *(v58 + 48) = v192;
  v193 = [v61 title];
  if (v193)
  {
    v194 = v193;
    v195 = sub_100085098();
    v197 = v196;
  }

  else
  {

    v195 = 0;
    v197 = 0;
  }

  v198 = v257;
  *v257 = v195;
  v198[1] = v197;
  *(v58 + 56) = [v61 markedForDeletion];
  v199 = [v61 isPasswordProtected];

  *(v58 + 57) = v199;
}

uint64_t sub_10007E5A4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A7340);
  sub_10000B614(v0, qword_1000A7340);
  return sub_100084F98();
}

unint64_t sub_10007E5F0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4164657461657263;
      break;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x656C746974;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0x4E6B636975517369;
      break;
    case 11:
      result = 0x7974537265706170;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x7441646577656976;
      break;
    case 16:
    case 22:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6574707972636E65;
      break;
    case 21:
      result = 0x746E65746E6F63;
      break;
    case 23:
      result = 0x6974697669746361;
      break;
    case 24:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007E948(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A7538, &qword_10008FDE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100082098();
  sub_100085A78();
  LOBYTE(v34[0]) = *v3;
  LOBYTE(v27) = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    LOBYTE(v34[0]) = 1;
    sub_100085898();
    LOBYTE(v34[0]) = 2;
    sub_100085848();
    LOBYTE(v34[0]) = 3;
    sub_100085848();
    LOBYTE(v34[0]) = 4;
    sub_100085858();
    LOBYTE(v34[0]) = 5;
    sub_100085858();
    v41 = type metadata accessor for ICNoteArchiveModel(0);
    LOBYTE(v34[0]) = 6;
    sub_1000848B8();
    sub_100082430(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    LOBYTE(v34[0]) = 7;
    sub_100085888();
    LOBYTE(v34[0]) = 8;
    sub_100085848();
    LOBYTE(v34[0]) = 9;
    sub_100085858();
    LOBYTE(v34[0]) = 10;
    sub_100085858();
    LOBYTE(v34[0]) = v3[v41[15]];
    LOBYTE(v27) = 11;
    sub_1000820EC();
    sub_100085888();
    LOBYTE(v34[0]) = v3[v41[16]];
    LOBYTE(v27) = 12;
    sub_100082140();
    sub_100085888();
    LOBYTE(v34[0]) = v3[v41[17]];
    LOBYTE(v27) = 13;
    sub_10005CAC0();
    sub_100085888();
    LOBYTE(v34[0]) = 14;
    sub_100085848();
    LOBYTE(v34[0]) = 15;
    sub_100085888();
    LOBYTE(v34[0]) = 16;
    sub_100085888();
    LOBYTE(v34[0]) = 17;
    sub_100085888();
    LOBYTE(v34[0]) = 18;
    sub_100085888();
    v40[0] = 19;
    sub_100085888();
    v9 = &v3[v41[24]];
    v10 = *(v9 + 3);
    v11 = *(v9 + 5);
    v37 = *(v9 + 4);
    v38 = v11;
    v12 = *(v9 + 1);
    v34[0] = *v9;
    v34[1] = v12;
    v13 = *(v9 + 3);
    v15 = *v9;
    v14 = *(v9 + 1);
    v35 = *(v9 + 2);
    v36 = v13;
    v16 = *(v9 + 5);
    v31 = v37;
    v32 = v16;
    v27 = v15;
    v28 = v14;
    v39 = *(v9 + 12);
    v33 = *(v9 + 12);
    v29 = v35;
    v30 = v10;
    v26 = 20;
    sub_100005888(v34, v24, &qword_1000A7360, &qword_10008F8A8);
    sub_100082194();
    sub_100085888();
    v24[4] = v31;
    v24[5] = v32;
    v25 = v33;
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_1000058F0(v24, &qword_1000A7360, &qword_10008F8A8);
    v17 = &v3[v41[25]];
    v18 = *(v17 + 2);
    v22 = *v17;
    v23 = v18;
    v21 = 21;
    sub_100055624();
    sub_100085888();
    *&v22 = *&v3[v41[26]];
    v21 = 22;
    sub_100005740(&qword_1000A7408, &unk_10008F8D8);
    sub_1000822F8(&qword_1000A7560, &qword_1000A6070, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> Set<A>);
    sub_100085888();
    *&v22 = *&v3[v41[27]];
    v21 = 23;
    sub_100005740(&unk_1000A6F28, &qword_10008EB50);
    sub_100082394(&qword_1000A70F8, &qword_1000A7100, &unk_10008ADAC, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
    *&v22 = *&v3[v41[28]];
    v21 = 24;
    sub_100005740(&unk_1000A7418, &qword_10008F8E8);
    sub_1000821E8();
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007F1B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = __chkstk_darwin(v3 - 8);
  v98 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v90 = v86 - v7;
  v8 = __chkstk_darwin(v6);
  v89 = v86 - v9;
  v10 = __chkstk_darwin(v8);
  v88 = v86 - v11;
  v12 = __chkstk_darwin(v10);
  v92 = v86 - v13;
  v14 = __chkstk_darwin(v12);
  v93 = v86 - v15;
  __chkstk_darwin(v14);
  v94 = v86 - v16;
  v17 = sub_100005740(&qword_1000A7570, &qword_10008FDE8);
  v95 = *(v17 - 8);
  v96 = v17;
  __chkstk_darwin(v17);
  v19 = v86 - v18;
  v20 = type metadata accessor for ICNoteArchiveModel(0);
  v21 = __chkstk_darwin(v20);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 40);
  v25 = sub_1000848B8();
  v26 = *(*(v25 - 8) + 56);
  v108 = v24;
  v26(&v23[v24], 1, 1, v25);
  v106 = v20[11];
  v26(&v23[v106], 1, 1, v25);
  v104 = v20[19];
  v26(&v23[v104], 1, 1, v25);
  v103 = v20[20];
  v26(&v23[v103], 1, 1, v25);
  v102 = v20[21];
  v26(&v23[v102], 1, 1, v25);
  v101 = v20[22];
  v26(&v23[v101], 1, 1, v25);
  v100 = v20[23];
  v26(&v23[v100], 1, 1, v25);
  v27 = v20[24];
  v130 = v23;
  v28 = &v23[v27];
  *(v28 + 12) = 0;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v99 = v28;
  v29 = a1[3];
  v105 = a1;
  sub_10000626C(a1, v29);
  sub_100082098();
  v97 = v19;
  v30 = v107;
  sub_100085A68();
  if (v30)
  {
    v107 = v30;
    sub_100006304(v105);
    swift_bridgeObjectRelease_n();
    v98 = 0;
    v34 = 0;
    v35 = 0;
    v105 = 0;
LABEL_4:
    v36 = v130;
    sub_1000058F0(&v130[v108], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v36[v106], &qword_1000A5490, &qword_10008CD80);

    sub_1000058F0(&v36[v104], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v36[v103], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v36[v102], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v36[v101], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v36[v100], &qword_1000A5490, &qword_10008CD80);
    v37 = *(v99 + 5);
    v127 = *(v99 + 4);
    v128 = v37;
    v129 = *(v99 + 12);
    v38 = *(v99 + 1);
    v123 = *v99;
    v124 = v38;
    v39 = *(v99 + 3);
    v125 = *(v99 + 2);
    v126 = v39;
    sub_1000058F0(&v123, &qword_1000A7360, &qword_10008F8A8);
    sub_100031130(v35, v34, v98);
  }

  v31 = v94;
  v87 = v20;
  v32 = v98;
  LOBYTE(v120[0]) = 0;
  sub_100041428();
  sub_100085828();
  v33 = v130;
  *v130 = v123;
  LOBYTE(v123) = 1;
  *(v33 + 1) = sub_1000857E8();
  *(v33 + 2) = v41;
  LOBYTE(v123) = 2;
  *(v33 + 3) = sub_100085798();
  *(v33 + 4) = v42;
  v86[1] = v42;
  LOBYTE(v123) = 3;
  *(v33 + 5) = sub_100085798();
  *(v33 + 6) = v43;
  v86[0] = v43;
  LOBYTE(v123) = 4;
  v33[56] = sub_1000857A8();
  LOBYTE(v123) = 5;
  v33[57] = sub_1000857A8();
  LOBYTE(v123) = 6;
  sub_100082430(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000857D8();
  sub_100040A94(v31, &v33[v108]);
  LOBYTE(v123) = 7;
  v44 = v93;
  sub_1000857D8();
  sub_100040A94(v44, &v33[v106]);
  LOBYTE(v123) = 8;
  v45 = sub_100085798();
  v107 = 0;
  v47 = &v130[v87[12]];
  *v47 = v45;
  v47[1] = v46;
  v93 = v46;
  LOBYTE(v123) = 9;
  v48 = v107;
  v49 = sub_1000857A8();
  v107 = v48;
  if (v48 || (v130[v87[13]] = v49, LOBYTE(v123) = 10, v50 = v107, v51 = sub_1000857A8(), (v107 = v50) != 0) || (v130[v87[14]] = v51, LOBYTE(v120[0]) = 11, sub_100081DCC(), v52 = v107, sub_1000857D8(), (v107 = v52) != 0) || (v130[v87[15]] = v123, LOBYTE(v120[0]) = 12, sub_100081EAC(), v53 = v107, sub_1000857D8(), (v107 = v53) != 0) || (v130[v87[16]] = v123, LOBYTE(v120[0]) = 13, sub_10005CD34(), v54 = v107, sub_1000857D8(), (v107 = v54) != 0) || (v130[v87[17]] = v123, LOBYTE(v123) = 14, v55 = v107, v56 = sub_100085798(), v94 = v57, (v107 = v55) != 0))
  {
    (*(v95 + 8))(v97, v96);
    v58 = 0;
    v35 = 0;
    v34 = 0;
    v98 = 0;
    v94 = 0;
LABEL_12:
    v59 = v105;
    v105 = v58;
    sub_100006304(v59);

    goto LABEL_4;
  }

  v60 = &v130[v87[18]];
  v61 = v94;
  *v60 = v56;
  v60[1] = v61;
  LOBYTE(v123) = 15;
  v62 = v107;
  sub_1000857D8();
  v107 = v62;
  if (v62 || (sub_100040A94(v92, &v130[v104]), LOBYTE(v123) = 16, v63 = v107, sub_1000857D8(), (v107 = v63) != 0) || (sub_100040A94(v88, &v130[v103]), LOBYTE(v123) = 17, v64 = v107, sub_1000857D8(), (v107 = v64) != 0) || (sub_100040A94(v89, &v130[v102]), LOBYTE(v123) = 18, v65 = v107, sub_1000857D8(), (v107 = v65) != 0) || (sub_100040A94(v90, &v130[v101]), LOBYTE(v123) = 19, v66 = v107, sub_1000857D8(), (v107 = v66) != 0) || (sub_100040A94(v32, &v130[v100]), v122 = 20, sub_1000822A4(), v67 = v107, sub_1000857D8(), (v107 = v67) != 0) || (v117 = v127, v118 = v128, v119 = v129, v113 = v123, v114 = v124, v115 = v125, v116 = v126, v68 = v99, v69 = *(v99 + 1), v120[0] = *v99, v120[1] = v69, v70 = *(v99 + 2), v71 = *(v99 + 3), v72 = *(v99 + 4), v73 = *(v99 + 5), v121 = *(v99 + 12), v120[4] = v72, v120[5] = v73, v120[2] = v70, v120[3] = v71, sub_1000058F0(v120, &qword_1000A7360, &qword_10008F8A8), v74 = v118, *(v68 + 4) = v117, *(v68 + 5) = v74, *(v68 + 12) = v119, v75 = v114, *v68 = v113, *(v68 + 1) = v75, v76 = v116, *(v68 + 2) = v115, *(v68 + 3) = v76, v109 = 21, sub_100055534(), v77 = v107, sub_1000857D8(), (v107 = v77) != 0))
  {
    (*(v95 + 8))(v97, v96);
    v58 = 0;
    v35 = 0;
    v34 = 0;
    v98 = 0;
    goto LABEL_12;
  }

  v78 = &v130[v87[25]];
  v79 = v111;
  v80 = v112;
  v35 = v110;
  *v78 = v110;
  v78[1] = v79;
  v34 = v79;
  v98 = v80;
  v78[2] = v80;
  sub_100005740(&qword_1000A7408, &unk_10008F8D8);
  v109 = 22;
  sub_1000822F8(&qword_1000A7580, &qword_1000A6060, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> Set<A>);
  v81 = v107;
  sub_1000857D8();
  v107 = v81;
  if (v81)
  {
    (*(v95 + 8))(v97, v96);
    v58 = 0;
    goto LABEL_12;
  }

  v58 = v110;
  *&v130[v87[26]] = v110;
  sub_100005740(&unk_1000A6F28, &qword_10008EB50);
  v109 = 23;
  sub_100082394(&qword_1000A7110, &qword_1000A7118, &unk_10008ADD4, &protocol conformance descriptor for <A> [A]);
  v82 = v107;
  sub_1000857D8();
  v107 = v82;
  if (v82 || (*&v130[v87[27]] = v110, sub_100005740(&unk_1000A7418, &qword_10008F8E8), v109 = 24, sub_100082478(), v83 = v107, sub_1000857D8(), (v107 = v83) != 0))
  {
    (*(v95 + 8))(v97, v96);
    goto LABEL_12;
  }

  v84 = v87[28];
  (*(v95 + 8))(v97, v96);
  v85 = v130;
  *&v130[v84] = v110;
  sub_100082534(v85, v91, type metadata accessor for ICNoteArchiveModel);
  sub_100006304(v105);
  return sub_10008259C(v85, type metadata accessor for ICNoteArchiveModel);
}

uint64_t sub_1000800D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000825FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000800F8(uint64_t a1)
{
  v2 = sub_100082098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100080134(uint64_t a1)
{
  v2 = sub_100082098();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000801A0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_100084918();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = [a1 timestamp];
  if (v12)
  {
    v13 = v12;
    sub_100084888();

    v14 = sub_1000848B8();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    sub_1000058F0(v11, &qword_1000A5490, &qword_10008CD80);
    isa = sub_1000859D8().super.super.isa;
    v16 = [a1 replicaID];
    sub_1000848F8();

    v17 = sub_1000848E8().super.isa;
    (*(v6 + 8))(v8, v5);
    [a3 setNotesVersion:isa forReplicaID:v17];
  }

  else
  {
    v18 = sub_1000848B8();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    sub_1000058F0(v11, &qword_1000A5490, &qword_10008CD80);
  }
}

uint64_t sub_10008040C(uint64_t a1)
{
  sub_100085118();
}

unint64_t sub_100080544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082DA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100080574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1162760014;
  v5 = 0xEC00000053454E49;
  v6 = 0x4C5F4D554944454DLL;
  if (v2 != 5)
  {
    v6 = 0x494C5F454752414CLL;
    v5 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (v2 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10008078C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x544847494CLL;
  }

  else
  {
    v3 = 0x544C5541464544;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x544847494CLL;
  }

  else
  {
    v5 = 0x544C5541464544;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100085948();
  }

  return v8 & 1;
}

Swift::Int sub_100080830()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000808B0(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_10008091C(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100080998@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10009E540;
  v8._object = v3;
  v5 = sub_100085788(v4, v8);

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

void sub_1000809F8(uint64_t *a1@<X8>)
{
  v2 = 0x544C5541464544;
  if (*v1)
  {
    v2 = 0x544847494CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100080B4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x49414E424D554854;
  v4 = 0xE90000000000004CLL;
  if (v2 != 1)
  {
    v3 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x57454956455250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x49414E424D554854;
  v8 = 0xE90000000000004CLL;
  if (*a2 != 1)
  {
    v7 = 0x4D554944454DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x57454956455250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100085948();
  }

  return v11 & 1;
}

Swift::Int sub_100080C50()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100080CF4(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_100080D84(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_100080E24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082DF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100080E54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000004CLL;
  v5 = 0x49414E424D554854;
  if (v2 != 1)
  {
    v5 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x57454956455250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100080FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_100084A28();
}

uint64_t sub_100081060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_100084A48();
}

uint64_t sub_1000810EC(uint64_t result)
{
  if (result >= 3u)
  {
    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v1 = sub_100084FB8();
    sub_10000B614(v1, qword_1000A7340);
    v2 = sub_100084FA8();
    v3 = sub_100085388();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown attachment view type — returning default", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ICNoteArchiveModel(uint64_t a1)
{
  result = qword_1000A73D0;
  if (!qword_1000A73D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100081224(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x605040302010007uLL >> (8 * a1);
  }

  if (qword_1000A5470 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A7340);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown paper style — returning nil", v5, 2u);
  }

  return 7;
}

uint64_t sub_100081328(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return 0x10002u >> (8 * a1);
  }

  if (qword_1000A5470 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A7340);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown preferred background color — returning nil", v5, 2u);
  }

  return 2;
}

uint64_t sub_100081428(uint64_t a1, char a2, void *a3)
{
  v62 = a3;
  v5 = sub_100084918();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005740(&qword_1000A5A28, &unk_10008F890);
  result = __chkstk_darwin(v7);
  v60 = &v51 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = v60;
  v13 = (v60 + *(result + 48));
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v57 = *(v9 + 72);
  v52 = v14;
  sub_100005888(a1 + v14, v60, &qword_1000A5A28, &unk_10008F890);
  v15 = *(v55 + 32);
  v16 = v61;
  v58 = (v55 + 32);
  v59 = v5;
  v15(v61, v12, v5);
  v56 = v13;
  v17 = *v13;
  v18 = v13[1];
  v19 = *v62;
  v21 = sub_1000391F4(v16);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    goto LABEL_24;
  }

  LOBYTE(v16) = v20;
  v25 = v19[3];
  v53 = v17;
  if (v25 >= v24)
  {
    v17 = v58;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v18;
    while (1)
    {
LABEL_8:
      v18 = (v17 - 3);
      v29 = *v62;
      if (v16)
      {
        v16 = v59;
        (*v18)(v61, v59);
        v30 = (v29[7] + 16 * v21);
        *v30 = v53;
        v30[1] = v28;

        v31 = v11 - 1;
        if (v11 == 1)
        {
          return result;
        }
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v16 = v59;
        result = (v15)(v29[6] + *(v55 + 72) * v21, v61, v59);
        v32 = (v29[7] + 16 * v21);
        *v32 = v53;
        v32[1] = v28;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_25;
        }

        v29[2] = v35;
        v31 = v11 - 1;
        if (v11 == 1)
        {
          return result;
        }
      }

      v11 = a1 + v57 + v52;
      v54 = (v17 - 3);
      while (1)
      {
        v37 = v60;
        sub_100005888(v11, v60, &qword_1000A5A28, &unk_10008F890);
        v18 = *v17;
        v38 = v61;
        (*v17)(v61, v37, v16);
        a1 = *v56;
        v15 = v56[1];
        v39 = *v62;
        v21 = sub_1000391F4(v38);
        v41 = v39[2];
        v42 = (v40 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          break;
        }

        v44 = v40;
        if (v39[3] < v43)
        {
          sub_100039E64(v43, 1);
          v45 = sub_1000391F4(v61);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_27;
          }

          v21 = v45;
        }

        v47 = *v62;
        if (v44)
        {
          v16 = v59;
          (*v54)(v61, v59);
          v36 = (v47[7] + 16 * v21);
          *v36 = a1;
          v36[1] = v15;

          v17 = v58;
        }

        else
        {
          v47[(v21 >> 6) + 8] |= 1 << v21;
          v17 = v58;
          v16 = v59;
          result = (v18)(v47[6] + *(v55 + 72) * v21, v61, v59);
          v48 = (v47[7] + 16 * v21);
          *v48 = a1;
          v48[1] = v15;
          v49 = v47[2];
          v34 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v34)
          {
            goto LABEL_25;
          }

          v47[2] = v50;
        }

        v11 += v57;
        if (!--v31)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v18;
      sub_10002BF44();
    }
  }

  sub_100039E64(v24, a2 & 1);
  v26 = sub_1000391F4(v61);
  if ((v16 & 1) == (v27 & 1))
  {
    v21 = v26;
    v28 = v18;
    v17 = v58;
    goto LABEL_8;
  }

LABEL_27:
  result = sub_100085978();
  __break(1u);
  return result;
}

uint64_t sub_1000818D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100081920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100081938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005740(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000819B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100081A84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100081B34(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1000341B8(319, &unk_1000A5880, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_100054660(319);
      if (v3 <= 0x3F)
      {
        sub_1000341B8(319, &qword_1000A73E0, &type metadata for ICNoteArchiveModel.PaperStyles);
        if (v4 <= 0x3F)
        {
          sub_1000341B8(319, &qword_1000A73E8, &type metadata for ICNoteArchiveModel.Backgrounds);
          if (v5 <= 0x3F)
          {
            sub_1000341B8(319, &qword_1000A6A88, &type metadata for ICNoteArchiveModel.AttachmentViewTypes);
            if (v6 <= 0x3F)
            {
              sub_1000341B8(319, &qword_1000A73F0, &_s13EncryptedDataVN);
              if (v7 <= 0x3F)
              {
                sub_1000341B8(319, &qword_1000A73F8, &_s16AttributedStringVN);
                if (v8 <= 0x3F)
                {
                  sub_10005C578(319, &qword_1000A7400, &qword_1000A7408, &unk_10008F8D8);
                  if (v9 <= 0x3F)
                  {
                    sub_10005C578(319, &qword_1000A6F20, &unk_1000A6F28, &qword_10008EB50);
                    if (v10 <= 0x3F)
                    {
                      sub_10005C578(319, &qword_1000A7410, &unk_1000A7418, &qword_10008F8E8);
                      if (v11 <= 0x3F)
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

unint64_t sub_100081DCC()
{
  result = qword_1000A74A8;
  if (!qword_1000A74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74A8);
  }

  return result;
}

unint64_t sub_100081E54()
{
  result = qword_1000A74C0;
  if (!qword_1000A74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74C0);
  }

  return result;
}

unint64_t sub_100081EAC()
{
  result = qword_1000A74C8;
  if (!qword_1000A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74C8);
  }

  return result;
}

unint64_t sub_100081F34()
{
  result = qword_1000A74E0;
  if (!qword_1000A74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74E0);
  }

  return result;
}

unint64_t sub_100081FC0()
{
  result = qword_1000A74F8;
  if (!qword_1000A74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74F8);
  }

  return result;
}

uint64_t sub_100082014(uint64_t a1)
{
  *(a1 + 8) = sub_100082430(&qword_1000A6700, type metadata accessor for ICNoteArchiveModel, &unk_10008FD8C);
  result = sub_100082430(&qword_1000A7190, type metadata accessor for ICNoteArchiveModel, &unk_10008FDB4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100082098()
{
  result = qword_1000A7540;
  if (!qword_1000A7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7540);
  }

  return result;
}

unint64_t sub_1000820EC()
{
  result = qword_1000A7548;
  if (!qword_1000A7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7548);
  }

  return result;
}

unint64_t sub_100082140()
{
  result = qword_1000A7550;
  if (!qword_1000A7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7550);
  }

  return result;
}

unint64_t sub_100082194()
{
  result = qword_1000A7558;
  if (!qword_1000A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7558);
  }

  return result;
}

unint64_t sub_1000821E8()
{
  result = qword_1000A7568;
  if (!qword_1000A7568)
  {
    sub_100011888(&unk_1000A7418, &qword_10008F8E8);
    sub_100082430(&qword_1000A6070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7568);
  }

  return result;
}

unint64_t sub_1000822A4()
{
  result = qword_1000A7578;
  if (!qword_1000A7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7578);
  }

  return result;
}

uint64_t sub_1000822F8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A7408, &unk_10008F8D8);
    sub_100082430(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100082394(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&unk_1000A6F28, &qword_10008EB50);
    sub_100082430(a2, _s8ActivityVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100082430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100082478()
{
  result = qword_1000A7588;
  if (!qword_1000A7588)
  {
    sub_100011888(&unk_1000A7418, &qword_10008F8E8);
    sub_100082430(&qword_1000A6060, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7588);
  }

  return result;
}

uint64_t sub_100082534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008259C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000825FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000871D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000871F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087210 == a2 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6B636975517369 && a2 == 0xEB0000000065746FLL || (sub_100085948() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7974537265706170 && a2 == 0xEA0000000000656CLL || (sub_100085948() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087350 == a2 || (sub_100085948() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100087370 == a2 || (sub_100085948() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100087390 == a2 || (sub_100085948() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7441646577656976 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000873B0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000873D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000873F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100087410 == a2 || (sub_100085948() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (sub_100085948() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_100085948() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100087430 == a2 || (sub_100085948() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365 || (sub_100085948() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000100087450 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

unint64_t sub_100082DA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E450;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100082DF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E5B8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100082E40()
{
  result = qword_1000A7590;
  if (!qword_1000A7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7590);
  }

  return result;
}

unint64_t sub_100082E94()
{
  result = qword_1000A7598;
  if (!qword_1000A7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7598);
  }

  return result;
}

unint64_t sub_100082EE8()
{
  result = qword_1000A75A0;
  if (!qword_1000A75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75A0);
  }

  return result;
}

unint64_t sub_100082F3C()
{
  result = qword_1000A75A8;
  if (!qword_1000A75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75A8);
  }

  return result;
}

unint64_t sub_100082F90()
{
  result = qword_1000A75B0;
  if (!qword_1000A75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75B0);
  }

  return result;
}

unint64_t sub_100082FE4()
{
  result = qword_1000A75B8;
  if (!qword_1000A75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75B8);
  }

  return result;
}

unint64_t sub_10008304C()
{
  result = qword_1000A75C0;
  if (!qword_1000A75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75C0);
  }

  return result;
}

unint64_t sub_1000830A4()
{
  result = qword_1000A75C8;
  if (!qword_1000A75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75C8);
  }

  return result;
}

unint64_t sub_1000830FC()
{
  result = qword_1000A75D0;
  if (!qword_1000A75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75D0);
  }

  return result;
}

uint64_t sub_100083164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100083250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ICArchiveModel(uint64_t a1)
{
  result = qword_1000A7630;
  if (!qword_1000A7630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100083364(uint64_t a1)
{
  sub_100054660(319);
  if (v1 <= 0x3F)
  {
    sub_100083460();
    if (v2 <= 0x3F)
    {
      sub_10005C578(319, &unk_1000A7648, &qword_1000A6570, &qword_10008CE60);
      if (v3 <= 0x3F)
      {
        sub_10005C578(319, &qword_1000A6A80, &qword_1000A6588, &qword_10008CE68);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100083460()
{
  if (!qword_1000A7640)
  {
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A7640);
    }
  }
}

uint64_t sub_1000834B0(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A76A0, &qword_10008FF78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100083EC8();
  sub_100085A78();
  LOBYTE(v13[0]) = *v3;
  v14 = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_1000858C8();
    v9 = type metadata accessor for ICArchiveModel(0);
    LOBYTE(v13[0]) = 2;
    sub_1000848B8();
    sub_100084120(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    v10 = &v3[v9[7]];
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;
    v13[2] = v10[2];
    v14 = 3;
    sub_100084030();
    sub_100085888();
    *&v13[0] = *&v3[v9[8]];
    v14 = 4;
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    sub_100084084(&qword_1000A6578, &qword_1000A6580, &unk_10008E45C, &protocol conformance descriptor for <> Set<A>);
    sub_100085888();
    *&v13[0] = *&v3[v9[9]];
    v14 = 5;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100083808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v3 - 8);
  v32 = &v26 - v4;
  v33 = sub_100005740(&qword_1000A7688, &qword_10008FF70);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ICArchiveModel(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  *(v10 + 1) = 1;
  v11 = v8[8];
  sub_1000848A8();
  v12 = sub_1000848B8();
  (*(*(v12 - 8) + 56))(&v10[v11], 0, 1, v12);
  v13 = &v10[v8[9]];
  *v13 = xmmword_10008B800;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  v14 = v8[10];
  *&v10[v14] = 0;
  v15 = v8[11];
  v36 = v10;
  *&v10[v15] = 0;
  v16 = a1[3];
  v37 = a1;
  sub_10000626C(a1, v16);
  sub_100083EC8();
  v34 = v6;
  v17 = v35;
  sub_100085A68();
  if (v17)
  {
    v18 = v36;
  }

  else
  {
    v28 = v14;
    v29 = v13;
    v35 = v11;
    v20 = v31;
    v19 = v32;
    v27 = v15;
    v41 = 0;
    sub_100041428();
    v21 = v33;
    sub_100085828();
    v18 = v36;
    *v36 = v38;
    LOBYTE(v38) = 1;
    *(v18 + 8) = sub_100085818();
    LOBYTE(v38) = 2;
    sub_100084120(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000857D8();
    sub_100040A94(v19, v18 + v35);
    v41 = 3;
    sub_100083F78();
    sub_1000857D8();
    v23 = v39;
    v24 = v29;
    *v29 = v38;
    *(v24 + 1) = v23;
    *(v24 + 2) = v40;
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    v41 = 4;
    sub_100084084(&qword_1000A65B0, &qword_1000A65B8, &unk_10008E484, &protocol conformance descriptor for <> Set<A>);
    sub_1000857D8();
    *(v18 + v28) = v38;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    v41 = 5;
    sub_100041558(&qword_1000A65C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v25 = v34;
    sub_1000857D8();
    (*(v20 + 8))(v25, v21);
    *(v18 + v27) = v38;
    sub_100083FCC(v18, v30);
  }

  sub_100006304(v37);
  return sub_100083F1C(v18);
}

uint64_t sub_100083D28()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 0x4264657461657263;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697369766572;
  if (v1 != 1)
  {
    v5 = 0x4164657461657263;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100083DF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100084280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100083E20(uint64_t a1)
{
  v2 = sub_100083EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100083E5C(uint64_t a1)
{
  v2 = sub_100083EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100083EC8()
{
  result = qword_1000A7690;
  if (!qword_1000A7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7690);
  }

  return result;
}

uint64_t sub_100083F1C(uint64_t a1)
{
  v2 = type metadata accessor for ICArchiveModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100083F78()
{
  result = qword_1000A7698;
  if (!qword_1000A7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7698);
  }

  return result;
}

uint64_t sub_100083FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICArchiveModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084030()
{
  result = qword_1000A76A8;
  if (!qword_1000A76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76A8);
  }

  return result;
}

uint64_t sub_100084084(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6570, &qword_10008CE60);
    sub_100084120(a2, _s3TagVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100084120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008417C()
{
  result = qword_1000A76B0;
  if (!qword_1000A76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76B0);
  }

  return result;
}

unint64_t sub_1000841D4()
{
  result = qword_1000A76B8;
  if (!qword_1000A76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76B8);
  }

  return result;
}

unint64_t sub_10008422C()
{
  result = qword_1000A76C0;
  if (!qword_1000A76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76C0);
  }

  return result;
}

uint64_t sub_100084280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xE900000000000079 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100086EF0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}