uint64_t sub_100078824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v40 = a2;
  v45 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1000B50E0();
  v38 = *(v4 - 8);
  v6 = __chkstk_darwin(v4, v5);
  v37 = &v37 - v7;
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v6, v9);
  v11 = &v37 - v10;
  v12 = sub_1000B5480();
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v37 - v18;
  if (qword_100106A78 != -1)
  {
    swift_once();
  }

  v20 = sub_1000B54B0();
  sub_100036380(v20, qword_100107F40);
  v44 = v4;
  sub_1000B5040();
  swift_getAssociatedConformanceWitness();
  sub_1000B5EE0();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  sub_1000B55F0();

  sub_1000B54A0();
  sub_1000B5460();
  v21 = sub_1000B54A0();
  v22 = sub_1000B59E0();
  if (sub_1000B5AB0())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "Export Object", "", v23, 2u);
  }

  v26 = v42;
  v25 = v43;
  (*(v42 + 16))(v16, v19, v43);
  sub_1000B54F0();
  swift_allocObject();
  v27 = sub_1000B54E0();
  v29 = v37;
  v28 = v38;
  v31 = v44;
  v30 = v45;
  (*(v38 + 16))(v37, v45, v44);
  v32 = (*(v28 + 88))(v29, v31);
  if (v32 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v28 + 8))(v29, v31);
    v33 = objc_autoreleasePoolPush();
    v34 = "Account to be exported does not exist anymore — skipping";
    v35 = sub_100079D94;
LABEL_13:
    sub_10007A27C(v39, v30, v40, v41, &v46, v35, v34);
    objc_autoreleasePoolPop(v33);
    sub_1000795D8(v27, "Export Object");

    return (*(v26 + 8))(v19, v25);
  }

  if (v32 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v28 + 8))(v29, v44);
    v33 = objc_autoreleasePoolPush();
    v34 = "Folder to be exported does not exist anymore — skipping";
    v35 = sub_10007AA54;
    goto LABEL_13;
  }

  if (v32 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v28 + 8))(v29, v44);
    v33 = objc_autoreleasePoolPush();
    v34 = "Note to be exported does not exist anymore — skipping";
    v35 = sub_10007BDDC;
    goto LABEL_13;
  }

  if (v32 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v28 + 8))(v29, v44);
    v33 = objc_autoreleasePoolPush();
    v34 = "Object to be exported does not exist anymore — skipping";
    v35 = sub_10007EF00;
    goto LABEL_13;
  }

  result = sub_1000B5F10();
  __break(1u);
  return result;
}

uint64_t sub_100078DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v92 = a3;
  v75 = a6;
  v10 = sub_1000B4DB0();
  v12 = __chkstk_darwin(v10, v11);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v81 = &v74 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v74 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v74 - v23;
  __chkstk_darwin(v22, v25);
  v28 = &v74 - v27;
  v88 = a5;
  v89 = a1;
  v82 = a4;
  v90 = a2;
  if (a5)
  {
    v76 = v26;
    v29 = sub_1000B55F0();
    v30 = [v29 ic_sanitizedFilenameString];

    sub_1000B5620();
    sub_1000B4D10();

    v31 = sub_1000B55F0();
    v32 = [v31 ic_sanitizedFilenameString];

    sub_1000B5620();
    sub_1000B4D20();

    v33 = v76;
    v34 = *(v76 + 8);
    v34(v24, v10);
    v35 = *(v87 + 88);
    v36 = *(v87 + 96);
    swift_getObjectType();
    v86 = v35;
    v87 = v36;
    v37 = v91;
    sub_1000B4F90();
    v38 = v37;
    if (!v37)
    {
      return (*(v33 + 32))(v75, v28, v10);
    }

    v34(v28, v10);
  }

  else
  {
    v85 = v10;
    v33 = v26;
    v39 = sub_1000B55F0();
    v40 = [v39 ic_sanitizedFilenameString];

    sub_1000B5620();
    sub_1000B4D10();

    v41 = *(v87 + 88);
    v42 = *(v87 + 96);
    swift_getObjectType();
    v86 = v41;
    v87 = v42;
    v43 = v91;
    sub_1000B4F90();
    v38 = v43;
    if (!v43)
    {
      return (*(v33 + 32))(v75, v20, v85);
    }

    v34 = *(v33 + 8);
    v10 = v85;
    v34(v20, v85);
  }

  v97 = v38;
  swift_errorRetain();
  v44 = sub_100030480(&qword_100106EB8, &qword_1000CAD80);
  v83 = sub_1000362AC(0, &qword_100106F08, NSError_ptr);
  v84 = v44;
  if (!swift_dynamicCast())
  {
  }

  v45 = v96[0];
  if ([v96[0] code] != 516)
  {
  }

  v91 = 0;
  v74 = v24;
  v85 = v10;

  v79 = v45;
  v80 = ICAttachmentNameMaxLength;
  v76 = v33;
  v78 = v33 + 8;
  for (i = 2; ; ++i)
  {
    v93 = i;
    v94 = 32;
    v95 = 0xE100000000000000;
    v98._countAndFlagsBits = sub_1000B5EE0();
    sub_1000B56E0(v98);

    v47 = v94;
    v48 = v95;
    v49 = sub_1000B55F0();
    v50 = [v49 ic_sanitizedFilenameString];

    v51 = sub_1000B5620();
    v53 = v52;

    v54 = sub_1000B56B0();
    v56 = __OFSUB__(v80, v54);
    result = v80 - v54;
    if (v56)
    {
      break;
    }

    sub_1000888C8(result, v51, v53, v55);

    v58 = sub_1000B5680();
    v60 = v59;

    if (v88)
    {
      v94 = v58;
      v95 = v60;

      v99._countAndFlagsBits = v47;
      v99._object = v48;
      sub_1000B56E0(v99);

      v61 = v74;
      sub_1000B4D10();

      v62 = sub_1000B55F0();
      v63 = [v62 ic_sanitizedFilenameString];

      sub_1000B5620();
      v64 = v81;
      sub_1000B4D20();

      v65 = v85;
      v34(v61, v85);
      swift_getObjectType();
      v66 = v91;
      sub_1000B4F90();
      v67 = v66;
      if (!v66)
      {

        (*(v76 + 32))(v75, v64, v65);
      }

      v34(v64, v65);
    }

    else
    {
      v94 = v58;
      v95 = v60;

      v100._countAndFlagsBits = v47;
      v100._object = v48;
      sub_1000B56E0(v100);

      v68 = v77;
      sub_1000B4D10();

      swift_getObjectType();
      v69 = v91;
      sub_1000B4F90();
      v67 = v69;
      if (!v69)
      {
        v73 = v85;

        (*(v76 + 32))(v75, v68, v73);
      }

      v34(v68, v85);
    }

    v70 = v79;
    v94 = v67;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v71 = v93, v72 = [v93 code], v71, v72 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v91 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000795D8(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1000B54C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B5480();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100106A78 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B54B0();
  sub_100036380(v12, qword_100107F40);
  v13 = sub_1000B54A0();
  sub_1000B54D0();
  v14 = sub_1000B59D0();
  if (sub_1000B5AB0())
  {

    sub_1000B5500();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_100079868(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v59 = a3;
  v57 = a2;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v56 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v51 - v9;
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v51 - v18;
  sub_1000B58F0();
  if (!v4)
  {
    v58 = a4;
    v51 = v16;
    v52 = v7;
    v53 = v12;
    v54 = v10;
    v60 = v19;
    v55 = 0;
    v20 = a1[3];
    v21 = a1[4];
    sub_1000458B4(a1, v20);
    v22 = (*(v21 + 16))(v20, v21);
    v24 = a1;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v26 = [objc_opt_self() mainBundle];
      v27 = sub_1000B55F0();
      v28 = [v26 localizedStringForKey:v27 value:0 table:0];

      v29 = sub_1000B5620();
      v25 = v30;

      v22 = v29;
    }

    v32 = v54;
    v31 = v55;
    v33 = v63;
    if (*(v63 + 24))
    {
      v34 = 0;
    }

    else
    {
      v34 = 0x746E756F636361;
    }

    if (*(v63 + 24))
    {
      v35 = 0;
    }

    else
    {
      v35 = 0xE700000000000000;
    }

    sub_100078DF8(v22, v25, v59, v34, v35, v60);
    if (v31)
    {
    }

    else
    {

      if (*(v33 + 25) != 1)
      {
        v43 = *(v33 + 96);
        v55 = *(v33 + 88);
        v59 = v43;
        v44 = v51;
        sub_1000B4D10();
        v45 = v24[3];
        v46 = v24[4];
        sub_1000458B4(v24, v45);
        v47 = *(v33 + 40);
        v61[0] = *(v33 + 24);
        v61[1] = v47;
        v62[0] = *(v33 + 56);
        *(v62 + 13) = *(v33 + 69);
        v48 = (*(v46 + 96))(v61, v45, v46);
        v50 = v49;
        swift_getObjectType();
        sub_1000B4F70();
        (*(v53 + 8))(v44, v11);
        sub_1000449D4(v48, v50);
      }

      v55 = v11;
      v36 = *(v57 + 16);
      v37 = v52;
      if (v36)
      {
        v38 = v56 + 16;
        v59 = *(v56 + 16);
        v39 = v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
        v57 = *(v56 + 72);
        v40 = (v56 + 8);
        do
        {
          v41 = v38;
          v59(v32, v39, v37);
          v42 = objc_autoreleasePoolPush();
          sub_100078328(v32, v60, v58);
          objc_autoreleasePoolPop(v42);
          (*v40)(v32, v37);
          v39 += v57;
          --v36;
          v38 = v41;
        }

        while (v36);
      }

      (*(v53 + 8))(v60, v55);
    }
  }
}

void sub_100079D94(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v49 = a2;
  v50 = a3;
  v9 = sub_1000B4DB0();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v43 - v16;
  sub_1000B58F0();
  if (!v5)
  {
    v43 = v14;
    v44 = a4;
    v47 = 0;
    v48 = v17;
    v45 = v10;
    v46 = v9;
    v18 = a1[3];
    v19 = a1[4];
    sub_1000458B4(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v24 = sub_1000B55F0();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      v26 = sub_1000B5620();
      v22 = v27;

      v20 = v26;
    }

    if (*(v6 + 24))
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x746E756F636361;
    }

    if (*(v6 + 24))
    {
      v29 = 0;
    }

    else
    {
      v29 = 0xE700000000000000;
    }

    v30 = v47;
    v31 = v48;
    sub_100078DF8(v20, v22, v50, v28, v29, v48);
    if (v30)
    {
    }

    else
    {

      if (*(v6 + 25) == 1)
      {
        v34 = v44;
        v35 = v49;
      }

      else
      {
        v50 = *(v6 + 96);
        v36 = v43;
        sub_1000B4D10();
        v37 = a1[3];
        v38 = a1[4];
        sub_1000458B4(a1, v37);
        v39 = *(v6 + 40);
        v51[0] = *(v6 + 24);
        v51[1] = v39;
        v52[0] = *(v6 + 56);
        *(v52 + 13) = *(v6 + 69);
        v40 = (*(v38 + 96))(v51, v37, v38);
        v42 = v41;
        swift_getObjectType();
        sub_1000B4F70();
        v34 = v44;
        v35 = v49;
        (*(v45 + 8))(v36, v46);
        v32 = sub_1000449D4(v40, v42);
        v31 = v48;
      }

      v53 = v35;
      __chkstk_darwin(v32, v33);
      *(&v43 - 4) = v6;
      *(&v43 - 3) = v31;
      *(&v43 - 2) = v34;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      sub_1000B5810();
      swift_getWitnessTable();
      sub_1000B5750();
      (*(v45 + 8))(v31, v46);
    }
  }
}

void sub_10007A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t), const char *a7)
{
  v23 = a5;
  sub_1000B5030();
  if (v7)
  {
    *v23 = v7;
    return;
  }

  if (v18)
  {
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_10004589C(&v19, v22);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_1000B50E0();
        v12 = sub_1000B50C0();
        a6(v22, v12, a3, a4);
        sub_100035DA8(v22);

        return;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_100036320(v17, &qword_100106E30, &unk_1000CAB60);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_100036320(&v19, &qword_100108028, &qword_1000CCE28);
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v13 = sub_1000B5530();
  sub_100036380(v13, qword_100107F28);
  v14 = sub_1000B5520();
  v15 = sub_1000B5930();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a7, v16, 2u);
  }
}

void sub_10007A52C(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v59 = a3;
  v57 = a2;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v56 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v51 - v9;
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v51 - v18;
  sub_1000B58F0();
  if (!v4)
  {
    v58 = a4;
    v51 = v16;
    v52 = v7;
    v53 = v12;
    v54 = v10;
    v60 = v19;
    v55 = 0;
    v20 = a1[3];
    v21 = a1[4];
    sub_1000458B4(a1, v20);
    v22 = (*(v21 + 16))(v20, v21);
    v24 = a1;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v26 = [objc_opt_self() mainBundle];
      v27 = sub_1000B55F0();
      v28 = [v26 localizedStringForKey:v27 value:0 table:0];

      v29 = sub_1000B5620();
      v25 = v30;

      v22 = v29;
    }

    v32 = v54;
    v31 = v55;
    v33 = v63;
    if (*(v63 + 24))
    {
      v34 = 0;
    }

    else
    {
      v34 = 0x7265646C6F66;
    }

    if (*(v63 + 24))
    {
      v35 = 0;
    }

    else
    {
      v35 = 0xE600000000000000;
    }

    sub_100078DF8(v22, v25, v59, v34, v35, v60);
    if (v31)
    {
    }

    else
    {

      if (*(v33 + 25) != 1)
      {
        v43 = *(v33 + 96);
        v55 = *(v33 + 88);
        v59 = v43;
        v44 = v51;
        sub_1000B4D10();
        v45 = v24[3];
        v46 = v24[4];
        sub_1000458B4(v24, v45);
        v47 = *(v33 + 40);
        v61[0] = *(v33 + 24);
        v61[1] = v47;
        v62[0] = *(v33 + 56);
        *(v62 + 13) = *(v33 + 69);
        v48 = (*(v46 + 96))(v61, v45, v46);
        v50 = v49;
        swift_getObjectType();
        sub_1000B4F70();
        (*(v53 + 8))(v44, v11);
        sub_1000449D4(v48, v50);
      }

      v55 = v11;
      v36 = *(v57 + 16);
      v37 = v52;
      if (v36)
      {
        v38 = v56 + 16;
        v59 = *(v56 + 16);
        v39 = v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
        v57 = *(v56 + 72);
        v40 = (v56 + 8);
        do
        {
          v41 = v38;
          v59(v32, v39, v37);
          v42 = objc_autoreleasePoolPush();
          sub_100078328(v32, v60, v58);
          objc_autoreleasePoolPop(v42);
          (*v40)(v32, v37);
          v39 += v57;
          --v36;
          v38 = v41;
        }

        while (v36);
      }

      (*(v53 + 8))(v60, v55);
    }
  }
}

void sub_10007AA54(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v49 = a2;
  v50 = a3;
  v9 = sub_1000B4DB0();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v43 - v16;
  sub_1000B58F0();
  if (!v5)
  {
    v43 = v14;
    v44 = a4;
    v47 = 0;
    v48 = v17;
    v45 = v10;
    v46 = v9;
    v18 = a1[3];
    v19 = a1[4];
    sub_1000458B4(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v24 = sub_1000B55F0();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      v26 = sub_1000B5620();
      v22 = v27;

      v20 = v26;
    }

    if (*(v6 + 24))
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x7265646C6F66;
    }

    if (*(v6 + 24))
    {
      v29 = 0;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = v47;
    v31 = v48;
    sub_100078DF8(v20, v22, v50, v28, v29, v48);
    if (v30)
    {
    }

    else
    {

      if (*(v6 + 25) == 1)
      {
        v34 = v44;
        v35 = v49;
      }

      else
      {
        v50 = *(v6 + 96);
        v36 = v43;
        sub_1000B4D10();
        v37 = a1[3];
        v38 = a1[4];
        sub_1000458B4(a1, v37);
        v39 = *(v6 + 40);
        v51[0] = *(v6 + 24);
        v51[1] = v39;
        v52[0] = *(v6 + 56);
        *(v52 + 13) = *(v6 + 69);
        v40 = (*(v38 + 96))(v51, v37, v38);
        v42 = v41;
        swift_getObjectType();
        sub_1000B4F70();
        v34 = v44;
        v35 = v49;
        (*(v45 + 8))(v36, v46);
        v32 = sub_1000449D4(v40, v42);
        v31 = v48;
      }

      v53 = v35;
      __chkstk_darwin(v32, v33);
      *(&v43 - 4) = v6;
      *(&v43 - 3) = v31;
      *(&v43 - 2) = v34;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      sub_1000B5810();
      swift_getWitnessTable();
      sub_1000B5750();
      (*(v45 + 8))(v31, v46);
    }
  }
}

void sub_10007AF38(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v141 = a3;
  v142 = a2;
  v144 = a1;
  v139 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v139, v5);
  v140 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1000B4DB0();
  v143 = *(v146 - 8);
  v8 = __chkstk_darwin(v146, v7);
  v138 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v129 - v12;
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v129 - v16;
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v129 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v129 - v23;
  v25 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v26 = *(v25 - 8);
  v28 = __chkstk_darwin(v25, v27);
  v30 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v31);
  v33 = &v129 - v32;
  v34 = v151;
  sub_1000B58F0();
  if (v34)
  {
    return;
  }

  v129 = v17;
  v133 = v21;
  v137 = v24;
  v130 = v13;
  v131 = v26;
  v132 = v30;
  v151 = v25;
  v145 = 0;
  v37 = v147;
  v136 = *(v147 + 25);
  v38 = v146;
  v39 = v144;
  if (v136 == 1)
  {
    sub_100088704(v144, v152);
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
    v35 = swift_dynamicCast();
    if (v35)
    {
      v40 = v155;
      v41 = [v155 isPasswordProtectedAndLocked];

      if (v41)
      {
        return;
      }
    }
  }

  v42 = v37;
  v134 = a4;
  __chkstk_darwin(v35, v36);
  v43 = &v129;
  *(&v129 - 2) = sub_1000B51C0();
  *(&v129 - 1) = sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  swift_getKeyPath();
  v44 = v142;
  v45 = *(v142 + 16);
  v135 = v45;
  if (v45)
  {
    v152[0] = _swiftEmptyArrayStorage;
    sub_100043324(0, v45, 0);
    v46 = v152[0];
    v47 = *(v131 + 16);
    v43 = (v44 + ((*(v131 + 80) + 32) & ~*(v131 + 80)));
    v148 = *(v131 + 72);
    v149 = v47;
    isa = (v131 + 16);
    v48 = (v131 + 8);
    do
    {
      v49 = v151;
      v149(v33, v43, v151);
      swift_getAtKeyPath();
      v50 = v155;
      (*v48)(v33, v49);
      v152[0] = v46;
      v52 = v46[2];
      v51 = v46[3];
      if (v52 >= v51 >> 1)
      {
        sub_100043324((v51 > 1), v52 + 1, 1);
        v46 = v152[0];
      }

      v46[2] = v52 + 1;
      v46[v52 + 4] = v50;
      v43 = (v43 + v148);
      --v45;
    }

    while (v45);

    v38 = v146;
    v55 = v147;
    v56 = v143;
    v39 = v144;
    v57 = v46[2];
    if (v57)
    {
LABEL_11:
      v58 = 0;
      v59 = v46 + 4;
      while (1)
      {
        v60 = *v59++;
        v61 = __OFADD__(v58, v60);
        v58 += v60;
        if (v61)
        {
          break;
        }

        if (!--v57)
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

    v46 = _swiftEmptyArrayStorage;
    v56 = v143;
    v55 = v42;
    v57 = _swiftEmptyArrayStorage[2];
    if (v57)
    {
      goto LABEL_11;
    }
  }

  v58 = 0;
LABEL_17:

  if (__OFADD__(v58, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v62.super.isa = sub_1000B58E0(v58 + 1, 1).super.isa;
  if (v136 == 1)
  {
    if (*(v55 + 24))
    {
      v63 = v39[3];
      v64 = v39[4];
      sub_1000458B4(v39, v63);
      v65 = (*(v64 + 8))(v63, v64);
      v66 = v129;
      v67 = v145;
      sub_100078DF8(v65, v68, v141, 0, 0xE000000000000000, v129);
      v145 = v67;
      if (v67)
      {

LABEL_33:

        return;
      }

      isa = v62.super.isa;

      v82 = v137;
      (*(v56 + 32))(v137, v66, v38);
      v76 = 0xE400000000000000;
      v74 = 1702129518;
      goto LABEL_36;
    }

    v76 = 0xE400000000000000;
    v74 = 1702129518;
    v84 = v145;
    v85 = v141;
    v82 = v137;
    v83 = v133;
    goto LABEL_32;
  }

  v69 = v39[3];
  v70 = v39[4];
  sub_1000458B4(v39, v69);
  (*(v70 + 16))(v69, v70);
  if (v71)
  {
    v72 = sub_1000B55F0();

    v73 = [v72 ic_sanitizedFilenameString];

    v74 = sub_1000B5620();
    v76 = v75;

    v77 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v77 = v74 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      goto LABEL_28;
    }
  }

  v78 = [objc_opt_self() mainBundle];
  v79 = sub_1000B55F0();
  v80 = [v78 localizedStringForKey:v79 value:0 table:0];

  v74 = sub_1000B5620();
  v76 = v81;

LABEL_28:
  v82 = v137;
  v83 = v133;
  if (*(v55 + 24))
  {
    isa = v62.super.isa;
    (*(v56 + 16))(v137, v141, v38);
LABEL_36:
    v152[0] = v74;
    v152[1] = v76;
    v156._countAndFlagsBits = 6581550;
    v156._object = 0xE300000000000000;
    sub_1000B56E0(v156);
    goto LABEL_37;
  }

  v84 = v145;
  v85 = v141;
LABEL_32:
  sub_100078DF8(v74, v76, v85, 1702129518, 0xE400000000000000, v83);
  v145 = v84;
  if (v84)
  {
    goto LABEL_33;
  }

  isa = v62.super.isa;

  (*(v56 + 32))(v82, v83, v38);
LABEL_37:
  v86 = v130;
  sub_1000B4D10();

  v87 = v39[3];
  v88 = v39[4];
  sub_1000458B4(v39, v87);
  v89 = *(v55 + 40);
  v153[0] = *(v55 + 24);
  v153[1] = v89;
  *v154 = *(v55 + 56);
  *&v154[13] = *(v55 + 69);
  v90 = v145;
  v91 = (*(v88 + 96))(v153, v87, v88);
  if (v90)
  {
    v93 = *(v143 + 8);
    v94 = v146;
    v93(v86, v146);

    v93(v82, v94);
    return;
  }

  v95 = v91;
  v96 = v92;
  ObjectType = swift_getObjectType();
  sub_1000B4F70();
  v145 = 0;
  sub_1000449D4(v95, v96);
  v98 = v146;
  if (v136 != 1)
  {
    v33 = v132;
    goto LABEL_44;
  }

  v149 = ObjectType;
  sub_100088704(v39, v152);
  sub_100030480(&qword_100106CD8, &unk_1000CCE30);
  sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
  v99 = swift_dynamicCast();
  v33 = v132;
  if (!v99)
  {
    goto LABEL_44;
  }

  v39 = v155;
  v100 = v140;
  sub_1000AAF5C(v39, v140);
  sub_1000886A4(&qword_100106FA0, type metadata accessor for NoteMetadata, &unk_1000CBFE8);
  v101 = v145;
  v53 = sub_1000B5390();
  v43 = v101;
  if (v101)
  {

    sub_100089014(v100, type metadata accessor for NoteMetadata);
    v102 = *(v143 + 8);
    v102(v130, v98);
    v102(v137, v98);
    return;
  }

LABEL_55:
  v124 = v53;
  v125 = v54;
  v126 = v138;
  sub_1000B4D10();
  v148 = v125;
  sub_1000B4F70();
  v145 = v43;
  if (v43)
  {

    sub_1000449D4(v124, v148);
    v127 = *(v143 + 8);
    v128 = v146;
    v127(v126, v146);
    sub_100089014(v140, type metadata accessor for NoteMetadata);
    v127(v130, v128);
    v127(v137, v128);
    return;
  }

  sub_1000449D4(v124, v148);

  (*(v143 + 8))(v126, v146);
  sub_100089014(v140, type metadata accessor for NoteMetadata);
LABEL_44:
  v103 = v153[0];
  v104 = isa;
  v105 = [(objc_class *)isa completedUnitCount];
  v106 = v151;
  v107 = v142;
  if (__OFADD__(v105, 1))
  {
LABEL_59:
    __break(1u);
    return;
  }

  [(objc_class *)v104 setCompletedUnitCount:v105 + 1];
  v108 = v104;
  if (v135)
  {
    v109 = v131 + 16;
    v110 = *(v131 + 16);
    v111 = v107 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v112 = *(v131 + 72);
    v113 = (v131 + 8);
    do
    {
      v115 = v109;
      v110(v33, v111, v106);
      v116 = objc_autoreleasePoolPush();
      v117 = v33;
      v118 = v116;
      if (v103)
      {
        v114 = v145;
        sub_100081320(v117, v137, v108);
        if (v114)
        {
LABEL_51:
          v119 = v151;
          objc_autoreleasePoolPop(v118);

          (*v113)(v132, v119);
          v120 = *(v143 + 8);
          v121 = v146;
          v120(v130, v146);
          v120(v137, v121);
          return;
        }
      }

      else
      {
        v114 = v145;
        sub_100078328(v117, v137, v108);
        if (v114)
        {
          goto LABEL_51;
        }
      }

      v145 = v114;
      v106 = v151;
      objc_autoreleasePoolPop(v118);
      v33 = v132;
      (*v113)(v132, v106);
      v111 += v112;
      --v135;
      v109 = v115;
    }

    while (v135);
  }

  sub_100082738([v134 completedUnitCount]);

  v122 = *(v143 + 8);
  v123 = v146;
  v122(v130, v146);
  v122(v137, v123);
}

void sub_10007BDDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v136 = a3;
  v137 = a2;
  isa = *v5;
  v139 = a1;
  v135 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v135, v7);
  v9 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000B4DB0();
  v140 = *(v10 - 8);
  v12 = __chkstk_darwin(v10, v11);
  v14 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v124[-v17];
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v124[-v21];
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v124[-v25];
  __chkstk_darwin(v24, v27);
  v29 = &v124[-v28];
  v30 = v141;
  sub_1000B58F0();
  if (!v30)
  {
    v128 = v26;
    v130 = v22;
    v126 = v14;
    v127 = v9;
    v133 = a4;
    v132 = v29;
    v141 = 0;
    v134 = v5;
    v33 = *(v5 + 25);
    v34 = isa;
    v35 = v139;
    v36 = v18;
    if (v33 != 1 || (sub_100088704(v139, v142), sub_100030480(&qword_100106CD8, &unk_1000CCE30), sub_1000362AC(0, &qword_100106D78, ICNote_ptr), v31 = swift_dynamicCast(), (v31 & 1) == 0) || (v37 = v145, v38 = [v145 isPasswordProtectedAndLocked], v37, (v38 & 1) == 0))
    {
      v39 = v35;
      v129 = v36;
      v131 = v10;
      v142[0] = v137;
      __chkstk_darwin(v31, v32);
      v40 = *(v34 + 10);
      v41 = *(v34 + 11);
      *&v124[-16] = v40;
      *&v124[-8] = v41;
      KeyPath = swift_getKeyPath();
      v44 = __chkstk_darwin(KeyPath, v43);
      v45 = &v124[-48];
      *&v124[-32] = v40;
      *&v124[-24] = v41;
      *&v124[-16] = v44;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      v46 = sub_1000B5810();
      WitnessTable = swift_getWitnessTable();
      v48 = v141;
      v50 = sub_100072158(sub_1000889F4, &v124[-48], v46, &type metadata for Int, &type metadata for Never, WitnessTable, &protocol witness table for Never, v49);
      v141 = v48;

      v52 = v50;
      v53 = *(v50 + 16);
      if (v53)
      {
        v54 = 0;
        v55 = (v50 + 32);
        v56 = v134;
        while (1)
        {
          v57 = *v55++;
          v58 = __OFADD__(v54, v57);
          v54 = (v54 + v57);
          if (v58)
          {
            break;
          }

          if (!--v53)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v54 = 0;
      v56 = v134;
LABEL_11:

      if (__OFADD__(v54, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v59 = 1702129518;
      isa = sub_1000B58E0(v54 + 1, 1).super.isa;
      v125 = v33;
      if (v33 == 1)
      {
        if (v56[24] == 1)
        {
          v60 = v39[3];
          v61 = v39[4];
          sub_1000458B4(v39, v60);
          v62 = (*(v61 + 8))(v60, v61);
          v63 = v128;
          v64 = v141;
          sub_100078DF8(v62, v65, v136, 0, 0xE000000000000000, v128);
          v141 = v64;
          if (v64)
          {

LABEL_27:

            return;
          }

          v130 = v46;
          v83 = v39;

          v85 = v63;
          v80 = v132;
          (*(v140 + 32))(v132, v85, v131);
          v73 = 0xE400000000000000;
          goto LABEL_30;
        }

        v73 = 0xE400000000000000;
        v71 = 1702129518;
        v79 = v140;
        v84 = v141;
        v80 = v132;
        v81 = v136;
        v82 = v130;
        goto LABEL_26;
      }

      v66 = v39[3];
      v67 = v39[4];
      sub_1000458B4(v39, v66);
      (*(v67 + 16))(v66, v67);
      if (v68)
      {
        v69 = sub_1000B55F0();

        v70 = [v69 ic_sanitizedFilenameString];

        v71 = sub_1000B5620();
        v73 = v72;

        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          goto LABEL_22;
        }
      }

      v75 = [objc_opt_self() mainBundle];
      v76 = sub_1000B55F0();
      v77 = [v75 localizedStringForKey:v76 value:0 table:0];

      v71 = sub_1000B5620();
      v73 = v78;

LABEL_22:
      v79 = v140;
      v80 = v132;
      v81 = v136;
      v82 = v130;
      if (v56[24])
      {
        v130 = v46;
        v83 = v39;
        (*(v140 + 16))(v132, v136, v131);
        v59 = v71;
LABEL_30:
        v142[0] = v59;
        v142[1] = v73;
        v146._countAndFlagsBits = 6581550;
        v146._object = 0xE300000000000000;
        sub_1000B56E0(v146);
        goto LABEL_31;
      }

      v84 = v141;
LABEL_26:
      sub_100078DF8(v71, v73, v81, 1702129518, 0xE400000000000000, v82);
      v141 = v84;
      if (v84)
      {
        goto LABEL_27;
      }

      v130 = v46;
      v83 = v39;
      (*(v79 + 32))(v80, v82, v131);

LABEL_31:
      v86 = v129;
      sub_1000B4D10();

      v87 = v134;
      v88 = *(v134 + 88);
      v139 = *(v134 + 96);
      v89 = v80;
      v90 = v83;
      v91 = v83[3];
      v92 = v83[4];
      sub_1000458B4(v83, v91);
      v93 = *(v87 + 40);
      v143[0] = *(v87 + 24);
      v143[1] = v93;
      v144[0] = *(v87 + 56);
      *(v144 + 13) = *(v87 + 69);
      v94 = v141;
      v95 = (*(v92 + 96))(v143, v91, v92);
      if (v94)
      {
        v97 = *(v140 + 8);
        v98 = v131;
        v97(v86, v131);

        v97(v89, v98);
        return;
      }

      v99 = v95;
      v100 = v96;
      v101 = v90;
      ObjectType = swift_getObjectType();
      sub_1000B4F70();
      v141 = 0;
      v33 = v88;
      sub_1000449D4(v99, v100);
      v103 = v140;
      if (v125 != 1)
      {
        v108 = v133;
        v54 = isa;
        goto LABEL_43;
      }

      v136 = ObjectType;
      sub_100088704(v101, v142);
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
      v104 = swift_dynamicCast();
      v54 = isa;
      if ((v104 & 1) == 0)
      {
LABEL_42:
        v108 = v133;
LABEL_43:
        v113 = [(objc_class *)v54 completedUnitCount];
        v114 = v54;
        v115 = v137;
        if (!__OFADD__(v113, 1))
        {
          v116 = [(objc_class *)v114 setCompletedUnitCount:v113 + 1];
          v142[0] = v115;
          __chkstk_darwin(v116, v117);
          v118 = v132;
          *&v124[-32] = v134;
          *&v124[-24] = v118;
          *&v124[-16] = v114;
          swift_getWitnessTable();
          v119 = v141;
          sub_1000B5750();
          v141 = v119;
          if (v119)
          {
            v120 = *(v103 + 8);
            v121 = v131;
            v120(v129, v131);

            v120(v118, v121);
          }

          else
          {
            sub_100082850([v108 completedUnitCount]);

            v122 = *(v103 + 8);
            v123 = v131;
            v122(v129, v131);
            v122(v118, v123);
          }

          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

      v56 = v145;
      v39 = v127;
      sub_1000AAF5C(v56, v127);
      sub_1000886A4(&qword_100106FA0, type metadata accessor for NoteMetadata, &unk_1000CBFE8);
      v105 = v141;
      v52 = sub_1000B5390();
      v45 = v105;
      if (v105)
      {

        sub_100089014(v39, type metadata accessor for NoteMetadata);
        v106 = *(v140 + 8);
        v107 = v131;
        v106(v129, v131);
        v106(v132, v107);
        return;
      }

LABEL_39:
      v109 = v52;
      v110 = v51;
      v141 = v33;
      sub_1000B4D10();
      sub_1000B4F70();
      v141 = v45;
      if (v45)
      {
        sub_1000449D4(v109, v110);

        v111 = *(v140 + 8);
        v112 = v131;
        v111(v126, v131);
        sub_100089014(v39, type metadata accessor for NoteMetadata);
        v111(v129, v112);
        v111(v132, v112);
        return;
      }

      sub_1000449D4(v109, v110);

      v103 = v140;
      (*(v140 + 8))(v126, v131);
      sub_100089014(v39, type metadata accessor for NoteMetadata);
      goto LABEL_42;
    }
  }
}

void sub_10007CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t), const char *a6)
{
  sub_1000B51C0();
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  sub_1000B5030();
  if (!v6)
  {
    if (v16[3])
    {
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      if (swift_dynamicCast())
      {
        if (*(&v18 + 1))
        {
          sub_10004589C(&v17, v20);
          sub_100030480(&qword_100106D00, &qword_1000CAA70);
          v11 = sub_1000B50C0();
          a5(v20, v11, a3, a4);
          sub_100035DA8(v20);

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
      sub_100036320(v16, &qword_100106E30, &unk_1000CAB60);
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
    }

    sub_100036320(&v17, &qword_100108028, &qword_1000CCE28);
    if (qword_100106A70 != -1)
    {
      swift_once();
    }

    v12 = sub_1000B5530();
    sub_100036380(v12, qword_100107F28);
    v13 = sub_1000B5520();
    v14 = sub_1000B5930();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 2u);
    }
  }
}

void sub_10007CD68(void *a1, uint64_t a2, void *a3, void *a4)
{
  v343 = a3;
  v335 = a2;
  v341 = a1;
  v5 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v325 = &v315 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v329 = &v315 - v10;
  v336 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v332 = *(v336 - 8);
  v12 = __chkstk_darwin(v336, v11);
  v327 = &v315 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v337 = &v315 - v15;
  v328 = sub_1000B5650();
  v330 = *(v328 - 8);
  __chkstk_darwin(v328, v16);
  v326 = &v315 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000B4DB0();
  v19 = *(v18 - 8);
  v338 = v18;
  v339 = v19;
  v21 = __chkstk_darwin(v18, v20);
  v322 = &v315 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v331 = &v315 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v333 = &v315 - v28;
  v30 = __chkstk_darwin(v27, v29);
  *&v323 = &v315 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v324 = &v315 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v334 = &v315 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v340 = &v315 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v44 = &v315 - v43;
  v46 = __chkstk_darwin(v42, v45);
  v48 = &v315 - v47;
  v50 = __chkstk_darwin(v46, v49);
  v52 = &v315 - v51;
  v54 = __chkstk_darwin(v50, v53);
  v56 = &v315 - v55;
  v58 = __chkstk_darwin(v54, v57);
  v60 = &v315 - v59;
  v62 = __chkstk_darwin(v58, v61);
  v64 = &v315 - v63;
  __chkstk_darwin(v62, v65);
  v67 = &v315 - v66;
  v68 = v350;
  sub_1000B58F0();
  if (v68)
  {
    return;
  }

  v320 = v56;
  v321 = v52;
  v316 = v44;
  v317 = v48;
  v318 = v60;
  v319 = v64;
  v350 = 0;
  v342 = a4;
  if (*(v344 + 24) == 1)
  {
    v69 = *(v344 + 25);
    v70 = v341;
    v71 = v67;
    if (v69 == 2)
    {
      sub_100088704(v341, v347);
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
      if (swift_dynamicCast())
      {
        v72 = v345;
        v73 = [v345 isTable];

        if (v73)
        {
          return;
        }
      }
    }

    sub_100088704(v70, v347);
    v74 = sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    v75 = sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v76 = v345;
      v77 = [v345 parentAttachment];

      if (v77)
      {

        return;
      }
    }

    v331 = v75;
    v85 = *(v70 + 24);
    v84 = *(v70 + 32);
    sub_1000458B4(v70, v85);
    v334 = (*(v84 + 88))(v85, v84);
    v87 = v86;
    v88 = *(v70 + 24);
    v89 = *(v70 + 32);
    sub_1000458B4(v70, v88);
    v90 = (*(v89 + 80))(v88, v89);
    LODWORD(v340) = v69;
    v333 = v74;
    if (v91 >> 60 != 15)
    {
      if (v87)
      {
        v329 = *(v344 + 96);
        v92 = v90;
        v93 = v91;
        swift_getObjectType();

        sub_1000B4D10();
        v334 = v87;

        v94 = v350;
        sub_1000B4F70();
        if (v94)
        {
          v329 = v93;
          v350 = v92;
          (*(v339 + 8))(v71, v338);
          if (qword_100106A70 != -1)
          {
            goto LABEL_149;
          }

          while (1)
          {
            v95 = sub_1000B5530();
            sub_100036380(v95, qword_100107F28);
            swift_errorRetain();
            v96 = sub_1000B5520();
            v97 = sub_1000B5920();

            v98 = os_log_type_enabled(v96, v97);
            v87 = v334;
            if (v98)
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v347[0] = v100;
              *v99 = 136315138;
              swift_getErrorValue();
              v101 = sub_1000B5F60();
              v103 = sub_100062B20(v101, v102, v347);

              *(v99 + 4) = v103;
              v70 = v341;
              _os_log_impl(&_mh_execute_header, v96, v97, "Cannot export attachment fallback PDF file — skipping {error: %s}", v99, 0xCu);
              sub_100035DA8(v100);
              v87 = v334;

              sub_10004D334(v350, v329);
            }

            else
            {
              sub_10004D334(v350, v329);
            }

            v139 = 0;
            v137 = v342;
            v138 = v336;
LABEL_56:
            v132 = v337;
LABEL_57:
            if (v340 != 1)
            {
              goto LABEL_67;
            }

            sub_100088704(v70, v347);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_67;
            }

            v196 = v345;
            if (([v345 isAudio] & 1) == 0)
            {

LABEL_67:

              goto LABEL_68;
            }

            v350 = v139;
            v197 = [v196 attachmentModel];
            objc_opt_self();
            v198 = swift_dynamicCastObjCClass();
            v199 = v196;
            if (v198)
            {
              break;
            }

LABEL_119:
            v139 = v350;
LABEL_68:
            v350 = v139;
            v215 = [v137 completedUnitCount];
            if (!__OFADD__(v215, 1))
            {
              [v137 setCompletedUnitCount:v215 + 1];
              v216 = *(v335 + 16);
              if (v216)
              {
                v217 = v332 + 16;
                v341 = *(v332 + 16);
                v218 = v335 + ((*(v332 + 80) + 32) & ~*(v332 + 80));
                v340 = *(v332 + 72);
                v219 = (v332 + 8);
                while (1)
                {
                  v220 = v217;
                  (v341)(v132, v218, v138);
                  v221 = v138;
                  v222 = objc_autoreleasePoolPush();
                  v223 = v350;
                  sub_100078328(v132, v343, v137);
                  v350 = v223;
                  if (v223)
                  {
                    break;
                  }

                  objc_autoreleasePoolPop(v222);
                  (*v219)(v132, v221);
                  v218 += v340;
                  --v216;
                  v137 = v342;
                  v138 = v221;
                  v217 = v220;
                  if (!v216)
                  {
                    return;
                  }
                }

                objc_autoreleasePoolPop(v222);
                (*v219)(v132, v221);
              }

              return;
            }

LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
          }

          v200 = v198;
          v333 = v199;
          v334 = v87;
          v340 = v197;
          v201 = *(v70 + 24);
          v202 = *(v70 + 32);
          sub_1000458B4(v70, v201);
          v203 = (*(v202 + 8))(v201, v202);
          v347[0] = 0x7263736E6172745FLL;
          v347[1] = 0xEF7478742E747069;
          v345 = v203;
          v346 = v204;
          v345 = sub_1000B5720();
          v346 = v205;
          sub_1000B56D0();
          v206 = v343;
          sub_1000B4D10();

          v207 = [v200 audioDocument];
          if (!v207)
          {
            goto LABEL_154;
          }

          v208 = v207;
          v209 = [v207 transcriptAsPlainText];

          sub_1000B5620();
          v210 = v326;
          sub_1000B5640();
          v211 = sub_1000B5630();
          v178 = v212;
          v206 = v330 + 1;
          v331 = v330[1];
          v181 = (v331)(v210, v328);
          v330 = v206;
          if (v178 >> 60 == 15)
          {
LABEL_100:
            v248 = *(v341 + 24);
            v249 = *(v341 + 32);
            sub_1000458B4(v341, v248);
            v250 = (*(v249 + 8))(v248, v249);
            strcpy(v347, "_summary.txt");
            BYTE5(v347[1]) = 0;
            HIWORD(v347[1]) = -5120;
            v345 = v250;
            v346 = v251;
            v345 = sub_1000B5720();
            v346 = v252;
            sub_1000B56D0();
            v206 = v343;
            sub_1000B4D10();

            v253 = [v200 audioDocument];
            if (!v253)
            {
              goto LABEL_155;
            }

            v254 = v253;

            v255 = [v254 recordingSummaryAsPlainText];

            sub_1000B5620();
            sub_1000B5640();
            v206 = v210;
            v256 = sub_1000B5630();
            v258 = v257;

            (v331)(v206, v328);
            v70 = v319;
            if (v258 >> 60 == 15)
            {

              v259 = v318;
LABEL_118:
              v269 = v338;
              v270 = *(v339 + 8);
              v270(v259, v338);
              v270(v70, v269);
              v137 = v342;
              goto LABEL_119;
            }

            v260 = v258 >> 62;
            v261 = v318;
            v262 = v340;
            if ((v258 >> 62) > 1)
            {
              if (v260 != 2)
              {
                goto LABEL_115;
              }

              v265 = *(v256 + 16);
              v264 = *(v256 + 24);
              v232 = __OFSUB__(v264, v265);
              v263 = v264 - v265;
              if (!v232)
              {
LABEL_112:
                if (v263 >= 1)
                {
                  swift_getObjectType();
                  v266 = v350;
                  sub_1000B4F70();
                  v350 = v266;
                  if (v266)
                  {

                    sub_10004D334(v256, v258);
                    v267 = v338;
                    v268 = *(v339 + 8);
                    v268(v261, v338);
                    v268(v70, v267);
                    return;
                  }

                  goto LABEL_117;
                }

LABEL_115:

LABEL_117:
                sub_10004D334(v256, v258);
                v259 = v261;
                goto LABEL_118;
              }

              __break(1u);
            }

            else if (!v260)
            {
              v263 = BYTE6(v258);
              goto LABEL_112;
            }

            LODWORD(v263) = HIDWORD(v256) - v256;
            if (__OFSUB__(HIDWORD(v256), v256))
            {
              goto LABEL_153;
            }

            v263 = v263;
            goto LABEL_112;
          }

          v213 = v178 >> 62;
          if ((v178 >> 62) > 1)
          {
            if (v213 != 2)
            {
LABEL_99:
              sub_10004D334(v211, v178);
              goto LABEL_100;
            }

            v231 = *(v211 + 16);
            v230 = *(v211 + 24);
            v232 = __OFSUB__(v230, v231);
            v214 = v230 - v231;
            if (v232)
            {
              __break(1u);
              goto LABEL_85;
            }
          }

          else if (v213)
          {
            LODWORD(v214) = HIDWORD(v211) - v211;
            if (__OFSUB__(HIDWORD(v211), v211))
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

            v214 = v214;
          }

          else
          {
            v214 = BYTE6(v178);
          }

          if (v214 >= 1)
          {
            swift_getObjectType();
            v246 = v319;
            v247 = v350;
            sub_1000B4F70();
            v350 = v247;
            if (v247)
            {
              (*(v339 + 8))(v246, v338);

              sub_10004D334(v211, v178);

              return;
            }

            v138 = v336;
            v132 = v337;
            v210 = v326;
          }

          goto LABEL_99;
        }

        (*(v339 + 8))(v71, v338);
        v156 = v92;
        v157 = v93;
        goto LABEL_44;
      }

      sub_10004D334(v90, v91);
    }

    v120 = *(v70 + 24);
    v121 = *(v70 + 32);
    sub_1000458B4(v70, v120);
    v122 = (*(v121 + 72))(v120, v121);
    if (v123 >> 60 == 15)
    {
      if (v87)
      {
        v124 = *(v70 + 24);
        v125 = *(v70 + 32);
        sub_1000458B4(v70, v124);
        v126 = *(v125 + 48);

        v127 = v329;
        v126(v124, v125);
        v129 = v338;
        v128 = v339;
        v130 = (*(v339 + 48))(v127, 1, v338);
        v131 = v344;
        v132 = v337;
        if (v130 == 1)
        {
          sub_100036320(v127, &qword_100106F88, &qword_1000CAE20);
          v133 = *(v70 + 24);
          v134 = *(v70 + 32);
          sub_1000458B4(v70, v133);
          v135 = (*(v134 + 56))(v133, v134);
          if (v136 >> 60 == 15)
          {

            v137 = v342;
            v138 = v336;
            v139 = v350;
            goto LABEL_57;
          }

          v183 = v135;
          v184 = v136;
          v329 = *(v131 + 96);
          swift_getObjectType();
          v185 = v316;
          sub_1000B4D10();

          v186 = v350;
          sub_1000B4F70();
          v139 = v186;
          if (!v186)
          {
            (*(v339 + 8))(v185, v338);
            sub_10004D334(v183, v184);
            v70 = v341;
            v137 = v342;
            v138 = v336;
            goto LABEL_57;
          }

          (*(v339 + 8))(v185, v338);
          sub_10004D334(v183, v184);
          v70 = v341;
        }

        else
        {
          (*(v128 + 32))(v321, v127, v129);
          v158 = *(v131 + 96);
          v327 = *(v131 + 88);
          v329 = v158;
          swift_getObjectType();
          v159 = v317;
          sub_1000B4D10();

          v160 = v350;
          sub_1000B4FE0();
          v139 = v160;
          if (!v160)
          {
            v224 = *(v339 + 8);
            v224(v159, v129);
            v224(v321, v129);
            v137 = v342;
            v138 = v336;
            goto LABEL_57;
          }

          v161 = *(v339 + 8);
          v161(v159, v129);
          v161(v321, v129);
        }

        v350 = 0;
        if (qword_100106A70 != -1)
        {
          swift_once();
        }

        v187 = sub_1000B5530();
        sub_100036380(v187, qword_100107F28);
        swift_errorRetain();
        v188 = sub_1000B5520();
        v189 = sub_1000B5920();

        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = v87;
          v192 = swift_slowAlloc();
          v347[0] = v192;
          *v190 = 136315138;
          swift_getErrorValue();
          v193 = sub_1000B5F60();
          v195 = sub_100062B20(v193, v194, v347);

          *(v190 + 4) = v195;
          v70 = v341;
          _os_log_impl(&_mh_execute_header, v188, v189, "Cannot export attachment media file — skipping {error: %s}", v190, 0xCu);
          sub_100035DA8(v192);
          v87 = v191;
        }

        else
        {
        }
      }
    }

    else
    {
      if (v87)
      {
        v329 = *(v344 + 96);
        v140 = v123;
        v141 = v122;
        swift_getObjectType();

        v142 = v320;
        sub_1000B4D10();
        v334 = v87;
        v143 = v142;
        v144 = v141;
        v145 = v140;

        v146 = v350;
        sub_1000B4F70();
        if (v146)
        {
          (*(v339 + 8))(v143, v338);
          if (qword_100106A70 != -1)
          {
            swift_once();
          }

          v147 = sub_1000B5530();
          sub_100036380(v147, qword_100107F28);
          swift_errorRetain();
          v148 = sub_1000B5520();
          v149 = sub_1000B5920();

          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v347[0] = v151;
            *v150 = 136315138;
            swift_getErrorValue();
            v350 = v148;
            v152 = sub_1000B5F60();
            v154 = sub_100062B20(v152, v153, v347);

            *(v150 + 4) = v154;
            v70 = v341;
            v155 = v350;
            _os_log_impl(&_mh_execute_header, v350, v149, "Cannot export attachment fallback image file — skipping {error: %s}", v150, 0xCu);
            sub_100035DA8(v151);

            sub_10004D334(v144, v145);
          }

          else
          {
            sub_10004D334(v144, v145);
          }

          v139 = 0;
          v137 = v342;
          v138 = v336;
          goto LABEL_47;
        }

        (*(v339 + 8))(v143, v338);
        v156 = v144;
        v157 = v140;
LABEL_44:
        sub_10004D334(v156, v157);
        v137 = v342;
        v138 = v336;
        v139 = 0;
LABEL_47:
        v132 = v337;
        v87 = v334;
        goto LABEL_57;
      }

      sub_10004D334(v122, v123);
    }

    v137 = v342;
    v138 = v336;
    v139 = v350;
    goto LABEL_56;
  }

  v78 = v341;
  v79 = *(v341 + 24);
  v80 = *(v341 + 32);
  sub_1000458B4(v341, v79);
  v81 = (*(v80 + 16))(v79, v80);
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    v104 = [objc_opt_self() mainBundle];
    v105 = sub_1000B55F0();
    v106 = [v104 localizedStringForKey:v105 value:0 table:0];

    v107 = sub_1000B5620();
    v83 = v108;

    v81 = v107;
  }

  v109 = v344;
  v110 = v350;
  sub_100078DF8(v81, v83, v343, 0x656D686361747461, 0xEA0000000000746ELL, v340);
  if (v110)
  {
  }

  else
  {
    v330 = v83;
    sub_1000B4D10();
    v111 = *(v109 + 96);
    v343 = *(v109 + 88);
    v337 = v111;
    v112 = v78[3];
    v113 = v78[4];
    sub_1000458B4(v78, v112);
    v114 = *(v109 + 40);
    v348[0] = *(v109 + 24);
    v348[1] = v114;
    v349[0] = *(v109 + 56);
    *(v349 + 13) = *(v109 + 69);
    v115 = 0;
    v116 = (*(v113 + 96))(v348, v112, v113);
    v118 = v117;
    ObjectType = swift_getObjectType();
    sub_1000B4F70();
    v329 = ObjectType;
    sub_1000449D4(v116, v118);
    v162 = sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
    v163 = v341;
    v164 = *(v341 + 24);
    v165 = *(v341 + 32);
    v166 = sub_1000458B4(v341, v164);
    sub_10002FCDC(v166, v162, v164, v165);
    if (!v167)
    {
      v178 = v333;
      goto LABEL_121;
    }

    v350 = 0;
    v168 = sub_1000B55F0();

    v169 = [v168 ic_sanitizedFilenameString];

    sub_1000B5620();
    v170 = v163[3];
    v171 = v163[4];
    sub_1000458B4(v163, v170);
    v172 = v325;
    v173 = v170;
    v174 = v339;
    (*(v171 + 48))(v173, v171);
    v175 = v172;
    v176 = v338;
    v177 = (*(v174 + 48))(v172, 1, v338);
    v178 = v333;
    if (v177 == 1)
    {
      sub_100036320(v175, &qword_100106F88, &qword_1000CAE20);
      v179 = v163[3];
      v180 = v163[4];
      sub_1000458B4(v163, v179);
      v181 = (*(v180 + 56))(v179, v180);
      if (v182 >> 60 == 15)
      {

        v115 = v350;
        goto LABEL_121;
      }

LABEL_85:
      v233 = v181;
      v234 = v182;
      v235 = v322;
      sub_1000B4D10();

      v236 = v350;
      sub_1000B4F70();
      if (!v236)
      {
        (*(v339 + 8))(v235, v338);
        sub_10004D334(v233, v234);
        v115 = 0;
        goto LABEL_121;
      }

      (*(v339 + 8))(v235, v338);
      sub_10004D334(v233, v234);
    }

    else
    {
      v225 = v324;
      (*(v174 + 32))(v324, v175, v176);
      v226 = v323;
      sub_1000B4D10();

      v227 = v350;
      sub_1000B4FE0();
      v228 = v174;
      v115 = v227;
      if (!v227)
      {
        v245 = *(v228 + 8);
        v245(v226, v176);
        v245(v225, v176);
        goto LABEL_121;
      }

      v229 = *(v228 + 8);
      v229(v226, v176);
      v229(v225, v176);
    }

    v350 = 0;
    if (qword_100106A70 != -1)
    {
      goto LABEL_151;
    }

    while (1)
    {
      v237 = sub_1000B5530();
      sub_100036380(v237, qword_100107F28);
      swift_errorRetain();
      v238 = sub_1000B5520();
      v239 = sub_1000B5920();

      if (os_log_type_enabled(v238, v239))
      {
        v240 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v347[0] = v241;
        *v240 = 136315138;
        swift_getErrorValue();
        v242 = sub_1000B5F60();
        v244 = sub_100062B20(v242, v243, v347);

        *(v240 + 4) = v244;
        _os_log_impl(&_mh_execute_header, v238, v239, "Cannot export attachment media file — skipping {error: %s}", v240, 0xCu);
        sub_100035DA8(v241);
      }

      else
      {
      }

      v115 = v350;
LABEL_121:
      v206 = objc_autoreleasePoolPush();
      v271 = v341;
      v272 = v344;
      sub_100082E7C(v341, v344);
      if (v115)
      {
        break;
      }

      objc_autoreleasePoolPop(v206);
      v273 = objc_autoreleasePoolPush();
      sub_1000831AC(v271, v272);
      v350 = 0;
      v274 = v271;

      objc_autoreleasePoolPop(v273);
      v275 = v271[3];
      v276 = v271[4];
      sub_1000458B4(v274, v275);
      v277 = (*(v276 + 64))(v275, v276);
      v279 = 0;
      v281 = v277 + 56;
      v280 = *(v277 + 56);
      v341 = v277;
      v282 = 1 << *(v277 + 32);
      v283 = -1;
      if (v282 < 64)
      {
        v283 = ~(-1 << v282);
      }

      v284 = v283 & v280;
      v285 = (v282 + 63) >> 6;
      v286 = v338;
      v287 = v339;
      v325 = (v339 + 16);
      v330 = (v339 + 8);
      *&v278 = 136315138;
      v323 = v278;
      v288 = v342;
      v289 = v331;
      v328 = v277 + 56;
      v326 = v285;
      while (v284)
      {
        v70 = v279;
LABEL_132:
        v291 = __clz(__rbit64(v284));
        v284 &= v284 - 1;
        (*(v287 + 16))(v178, *(v341 + 48) + *(v287 + 72) * (v291 | (v70 << 6)), v286);
        sub_1000B4CE0();
        sub_1000B4D10();
        v178 = v333;

        v292 = v350;
        sub_1000B4FE0();
        v350 = v292;
        if (v292)
        {
          v293 = *v330;
          (*v330)(v289, v286);
          v293(v178, v286);
          if (qword_100106A70 != -1)
          {
            swift_once();
          }

          v294 = sub_1000B5530();
          sub_100036380(v294, qword_100107F28);
          swift_errorRetain();
          v295 = sub_1000B5520();
          v296 = sub_1000B5920();

          if (os_log_type_enabled(v295, v296))
          {
            v297 = swift_slowAlloc();
            v298 = swift_slowAlloc();
            v347[0] = v298;
            *v297 = v323;
            swift_getErrorValue();
            LODWORD(v324) = v296;
            v299 = sub_1000B5F60();
            v301 = sub_100062B20(v299, v300, v347);

            *(v297 + 4) = v301;
            v302 = v339;
            _os_log_impl(&_mh_execute_header, v295, v324, "Cannot export attachment asset file — skipping {error: %s}", v297, 0xCu);
            sub_100035DA8(v298);

            v178 = v333;

            v287 = v302;

            v350 = 0;
            v279 = v70;
            v288 = v342;
            v286 = v338;
            v289 = v331;
          }

          else
          {

            v350 = 0;
            v279 = v70;
            v288 = v342;
            v286 = v338;
            v287 = v339;
            v289 = v331;
            v178 = v333;
          }
        }

        else
        {
          v290 = *v330;
          (*v330)(v289, v286);
          v290(v178, v286);
          v279 = v70;
          v288 = v342;
        }

        v281 = v328;
        v285 = v326;
      }

      while (1)
      {
        v70 = v279 + 1;
        if (__OFADD__(v279, 1))
        {
          __break(1u);
          goto LABEL_148;
        }

        if (v70 >= v285)
        {
          break;
        }

        v284 = *(v281 + 8 * v70);
        ++v279;
        if (v284)
        {
          goto LABEL_132;
        }
      }

      v303 = [v288 completedUnitCount];
      if (!__OFADD__(v303, 1))
      {
        [v288 setCompletedUnitCount:v303 + 1];
        v304 = v336;
        v305 = *(v335 + 16);
        v306 = v327;
        if (v305)
        {
          v307 = v332 + 16;
          v343 = *(v332 + 16);
          v308 = v335 + ((*(v332 + 80) + 32) & ~*(v332 + 80));
          v341 = *(v332 + 72);
          v309 = (v332 + 8);
          while (1)
          {
            v310 = v307;
            (v343)(v306, v308, v304);
            v311 = objc_autoreleasePoolPush();
            v312 = v350;
            sub_100078328(v306, v340, v288);
            v350 = v312;
            if (v312)
            {
              break;
            }

            objc_autoreleasePoolPop(v311);
            (*v309)(v306, v304);
            v288 = v342;
            v308 += v341;
            --v305;
            v307 = v310;
            if (!v305)
            {
              goto LABEL_145;
            }
          }

          objc_autoreleasePoolPop(v311);
          (*v309)(v306, v304);
        }

LABEL_145:
        v313 = *v330;
        v314 = v338;
        (*v330)(v334, v338);
        v313(v340, v314);
        return;
      }

      __break(1u);
LABEL_151:
      swift_once();
    }

LABEL_156:
    objc_autoreleasePoolPop(v206);
    __break(1u);
  }
}

void sub_10007EF00(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  v5 = v4;
  v290 = a3;
  v291 = a1;
  v292 = v5;
  v285 = *v5;
  v286 = a2;
  v279 = sub_1000B5650();
  v281 = *(v279 - 8);
  __chkstk_darwin(v279, v7);
  v278 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v277 = &v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v280 = &v265 - v14;
  v15 = sub_1000B4DB0();
  v287 = *(v15 - 8);
  v288 = v15;
  v17 = __chkstk_darwin(v15, v16);
  v282 = (&v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17, v19);
  v283 = &v265 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v274 = &v265 - v24;
  v26 = __chkstk_darwin(v23, v25);
  *&v275 = &v265 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v276 = &v265 - v30;
  v32 = __chkstk_darwin(v29, v31);
  v284 = (&v265 - v33);
  v35 = __chkstk_darwin(v32, v34);
  v289 = &v265 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v40 = &v265 - v39;
  v42 = __chkstk_darwin(v38, v41);
  v44 = &v265 - v43;
  v46 = __chkstk_darwin(v42, v45);
  v48 = &v265 - v47;
  v50 = __chkstk_darwin(v46, v49);
  v52 = &v265 - v51;
  v54 = __chkstk_darwin(v50, v53);
  v56 = &v265 - v55;
  v58 = __chkstk_darwin(v54, v57);
  v60 = &v265 - v59;
  __chkstk_darwin(v58, v61);
  v63 = &v265 - v62;
  v64 = v298;
  sub_1000B58F0();
  if (v64)
  {
    return;
  }

  v271 = v60;
  v272 = v63;
  v267 = v52;
  v268 = v56;
  v266 = v48;
  v269 = v40;
  v270 = v44;
  v273 = a4;
  v298 = 0;
  v65 = v292;
  if (*(v292 + 24) != 1)
  {
    v73 = v291;
    v74 = v291[3];
    v75 = v291[4];
    sub_1000458B4(v291, v74);
    v76 = (*(v75 + 16))(v74, v75);
    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v100 = [objc_opt_self() mainBundle];
      v101 = sub_1000B55F0();
      v102 = [v100 localizedStringForKey:v101 value:0 table:0];

      v103 = sub_1000B5620();
      v78 = v104;

      v76 = v103;
    }

    v105 = v298;
    sub_100078DF8(v76, v78, v290, 0x656D686361747461, 0xEA0000000000746ELL, v289);
    if (v105)
    {

      return;
    }

    v280 = v78;
    sub_1000B4D10();
    v106 = v65[12];
    v290 = v65[11];
    v281 = v106;
    v107 = v73[3];
    v108 = v73[4];
    sub_1000458B4(v73, v107);
    v109 = *(v65 + 5);
    v296[0] = *(v65 + 3);
    v296[1] = v109;
    v297[0] = *(v65 + 7);
    *(v297 + 13) = *(v65 + 69);
    v110 = (*(v108 + 96))(v296, v107, v108);
    v112 = v111;
    ObjectType = swift_getObjectType();
    sub_1000B4F70();
    v298 = 0;
    v279 = ObjectType;
    sub_1000449D4(v110, v112);
    v143 = sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
    v44 = v73;
    v144 = v73[3];
    v145 = v73[4];
    v146 = sub_1000458B4(v73, v144);
    sub_10002FCDC(v146, v143, v144, v145);
    v147 = v288;
    if (!v148)
    {
      goto LABEL_113;
    }

    v149 = sub_1000B55F0();

    v150 = [v149 ic_sanitizedFilenameString];

    sub_1000B5620();
    v151 = *(v44 + 24);
    v152 = *(v44 + 32);
    sub_1000458B4(v44, v151);
    v153 = v277;
    (*(v152 + 48))(v151, v152);
    v154 = v287;
    if ((*(v287 + 48))(v153, 1, v147) != 1)
    {
      v192 = v276;
      (*(v154 + 32))(v276, v153, v147);
      v193 = v275;
      sub_1000B4D10();
      v194 = v192;

      v195 = v298;
      sub_1000B4FE0();
      v298 = v195;
      v87 = v292;
      if (!v195)
      {
        v214 = *(v154 + 8);
        v215 = v193;
        v216 = v288;
        v214(v215, v288);
        v214(v194, v216);
        goto LABEL_114;
      }

      v196 = *(v154 + 8);
      v197 = v193;
      v198 = v288;
      v196(v197, v288);
      v196(v194, v198);
LABEL_80:
      v298 = 0;
      if (qword_100106A70 != -1)
      {
        goto LABEL_130;
      }

      while (1)
      {
        v206 = sub_1000B5530();
        sub_100036380(v206, qword_100107F28);
        swift_errorRetain();
        v207 = sub_1000B5520();
        v208 = sub_1000B5920();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v295[0] = v210;
          *v209 = 136315138;
          swift_getErrorValue();
          v211 = sub_1000B5F60();
          v213 = sub_100062B20(v211, v212, v295);

          *(v209 + 4) = v213;
          _os_log_impl(&_mh_execute_header, v207, v208, "Cannot export attachment media file — skipping {error: %s}", v209, 0xCu);
          sub_100035DA8(v210);
          v44 = v291;

          v87 = v292;
        }

        else
        {
        }

LABEL_114:
        v180 = objc_autoreleasePoolPush();
        v241 = v298;
        sub_100082E7C(v44, v87);
        if (v241)
        {
          goto LABEL_135;
        }

        objc_autoreleasePoolPop(v180);
        v242 = objc_autoreleasePoolPush();
        sub_1000831AC(v44, v87);

        objc_autoreleasePoolPop(v242);
        v243 = *(v44 + 24);
        v244 = *(v44 + 32);
        sub_1000458B4(v44, v243);
        v245 = (*(v244 + 64))(v243, v244);
        v247 = 0;
        v249 = (v245 + 56);
        v248 = *(v245 + 56);
        v298 = v245;
        v250 = 1 << *(v245 + 32);
        v251 = -1;
        if (v250 < 64)
        {
          v251 = ~(-1 << v250);
        }

        v84 = v251 & v248;
        v252 = (v250 + 63) >> 6;
        v253 = v287;
        v277 = (v287 + 16);
        v291 = (v287 + 8);
        *&v246 = 136315138;
        v275 = v246;
        v82 = v282;
        v280 = (v245 + 56);
        v278 = v252;
        while (v84)
        {
          v44 = v247;
LABEL_123:
          v255 = __clz(__rbit64(v84));
          v84 &= v84 - 1;
          v256 = v283;
          v257 = v288;
          (*(v253 + 16))(v283, *(v298 + 48) + *(v253 + 72) * (v255 | (v44 << 6)), v288);
          sub_1000B4CE0();
          sub_1000B4D10();

          sub_1000B4FE0();
          v254 = *v291;
          (*v291)(v256, v257);
          v254(v82, v257);
          v247 = v44;
          v87 = v292;
          v253 = v287;
          v249 = v280;
          v252 = v278;
        }

        while (1)
        {
          v44 = v247 + 1;
          if (__OFADD__(v247, 1))
          {
            __break(1u);
            goto LABEL_127;
          }

          if (v44 >= v252)
          {
            break;
          }

          v84 = *&v249[8 * v44];
          ++v247;
          if (v84)
          {
            goto LABEL_123;
          }
        }

        v258 = v273;
        v259 = [v273 completedUnitCount];
        if (!__OFADD__(v259, 1))
        {
          v260 = [v258 setCompletedUnitCount:v259 + 1];
          v295[0] = v286;
          __chkstk_darwin(v260, v261);
          v262 = v289;
          *(&v265 - 4) = v87;
          *(&v265 - 3) = v262;
          *(&v265 - 2) = v258;
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_1000B50E0();
          sub_1000B5810();
          swift_getWitnessTable();
          sub_1000B5750();
          v263 = *v291;
          v264 = v288;
          (*v291)(v284, v288);
          v263(v262, v264);
          return;
        }

        __break(1u);
LABEL_130:
        swift_once();
      }
    }

    sub_100036320(v153, &qword_100106F88, &qword_1000CAE20);
    v155 = *(v44 + 24);
    v156 = *(v44 + 32);
    sub_1000458B4(v44, v155);
    v157 = (*(v156 + 56))(v155, v156);
    if (v158 >> 60 == 15)
    {

      goto LABEL_113;
    }

LABEL_78:
    v202 = v157;
    v203 = v158;
    v204 = v274;
    sub_1000B4D10();

    v205 = v298;
    sub_1000B4F70();
    v298 = v205;
    if (v205)
    {
      (*(v287 + 8))(v204, v147);
      sub_10004D334(v202, v203);
      v87 = v292;
      goto LABEL_80;
    }

    (*(v287 + 8))(v204, v147);
    sub_10004D334(v202, v203);
LABEL_113:
    v87 = v292;
    goto LABEL_114;
  }

  LODWORD(v289) = *(v292 + 25);
  v66 = v291;
  if (v289 == 2)
  {
    sub_100088704(v291, v295);
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v67 = v293;
      v68 = [v293 isTable];

      if (v68)
      {
        return;
      }
    }
  }

  sub_100088704(v66, v295);
  v69 = sub_100030480(&qword_100106CD8, &unk_1000CCE30);
  v70 = sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
  if (swift_dynamicCast())
  {
    v71 = v293;
    v72 = [v293 parentAttachment];

    if (v72)
    {

      return;
    }
  }

  v282 = v70;
  v79 = v66[3];
  v80 = v66[4];
  sub_1000458B4(v66, v79);
  v284 = (*(v80 + 88))(v79, v80);
  v82 = v81;
  v83 = v66[3];
  v84 = v66[4];
  sub_1000458B4(v66, v83);
  v85 = (*(v84 + 80))(v83, v84);
  v283 = v69;
  if (v86 >> 60 == 15)
  {
LABEL_23:
    v114 = v66[3];
    v115 = v66[4];
    sub_1000458B4(v66, v114);
    v116 = (*(v115 + 72))(v114, v115);
    if (v117 >> 60 != 15)
    {
      v128 = v116;
      v129 = v117;
      if (v82)
      {
        v84 = swift_getObjectType();

        v44 = v271;
        sub_1000B4D10();

        v130 = v298;
        sub_1000B4F70();
        v298 = v130;
        v99 = v286;
        if (!v130)
        {
          (*(v287 + 8))(v44, v288);
          sub_10004D334(v128, v129);
          goto LABEL_46;
        }

        (*(v287 + 8))(v44, v288);
        if (qword_100106A70 != -1)
        {
          swift_once();
        }

        v131 = sub_1000B5530();
        sub_100036380(v131, qword_100107F28);
        v84 = v298;
        swift_errorRetain();
        v132 = sub_1000B5520();
        v133 = sub_1000B5920();

        if (os_log_type_enabled(v132, v133))
        {
          v84 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v295[0] = v44;
          *v84 = 136315138;
          swift_getErrorValue();
          v284 = v132;
          v134 = sub_1000B5F60();
          v136 = v82;
          v137 = sub_100062B20(v134, v135, v295);

          *(v84 + 4) = v137;
          v82 = v136;
          v138 = v284;
          _os_log_impl(&_mh_execute_header, v284, v133, "Cannot export attachment fallback image file — skipping {error: %s}", v84, 0xCu);
          sub_100035DA8(v44);
          v99 = v286;

          sub_10004D334(v128, v129);
        }

        else
        {
          sub_10004D334(v128, v129);
        }

        goto LABEL_45;
      }

      sub_10004D334(v116, v117);
      goto LABEL_55;
    }

    if (v82)
    {
      v118 = v66[3];
      v119 = v66[4];
      sub_1000458B4(v66, v118);
      v120 = *(v119 + 48);

      v121 = v280;
      v120(v118, v119);
      v122 = v287;
      v84 = v288;
      if ((*(v287 + 48))(v121, 1, v288) == 1)
      {
        sub_100036320(v121, &qword_100106F88, &qword_1000CAE20);
        v123 = v66[3];
        v124 = v66[4];
        sub_1000458B4(v66, v123);
        v125 = (*(v124 + 56))(v123, v124);
        v87 = v292;
        if (v126 >> 60 == 15)
        {

          v127 = v273;
LABEL_56:
          v99 = v286;
          goto LABEL_57;
        }

        v159 = v125;
        v160 = v126;
        v44 = v292[12];
        swift_getObjectType();
        v84 = v266;
        sub_1000B4D10();
        v284 = v82;

        v161 = v298;
        sub_1000B4F70();
        v298 = v161;
        v99 = v286;
        if (!v161)
        {
          (*(v287 + 8))(v84, v288);
          sub_10004D334(v159, v160);
          v127 = v273;
          v87 = v292;
          v82 = v284;
          goto LABEL_57;
        }

        (*(v287 + 8))(v84, v288);
        sub_10004D334(v159, v160);
        v82 = v284;
      }

      else
      {
        v139 = v268;
        (*(v122 + 32))(v268, v121, v84);
        v44 = v122;
        v280 = v292[12];
        swift_getObjectType();
        v140 = v267;
        sub_1000B4D10();

        v141 = v298;
        sub_1000B4FE0();
        v298 = v141;
        if (!v141)
        {
          v169 = *(v122 + 8);
          v169(v140, v84);
          v169(v139, v84);
          goto LABEL_55;
        }

        v142 = *(v122 + 8);
        v142(v140, v84);
        v142(v139, v84);
      }

      v298 = 0;
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v162 = sub_1000B5530();
      sub_100036380(v162, qword_100107F28);
      swift_errorRetain();
      v163 = sub_1000B5520();
      v164 = sub_1000B5920();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v295[0] = v84;
        *v165 = 136315138;
        swift_getErrorValue();
        v166 = sub_1000B5F60();
        v44 = v82;
        v168 = sub_100062B20(v166, v167, v295);

        *(v165 + 4) = v168;
        v82 = v44;
        _os_log_impl(&_mh_execute_header, v163, v164, "Cannot export attachment media file — skipping {error: %s}", v165, 0xCu);
        sub_100035DA8(v84);
      }

      else
      {
      }
    }

LABEL_55:
    v127 = v273;
    v87 = v292;
    goto LABEL_56;
  }

  v44 = v85;
  v87 = v86;
  if (!v82)
  {
    sub_10004D334(v85, v86);
    goto LABEL_23;
  }

  v84 = swift_getObjectType();

  v88 = v272;
  sub_1000B4D10();

  v89 = v298;
  sub_1000B4F70();
  v298 = v89;
  if (!v89)
  {
    (*(v287 + 8))(v88, v288);
    sub_10004D334(v44, v87);
    goto LABEL_55;
  }

  (*(v287 + 8))(v88, v288);
  v84 = v286;
  if (qword_100106A70 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v90 = sub_1000B5530();
    sub_100036380(v90, qword_100107F28);
    swift_errorRetain();
    v91 = sub_1000B5520();
    v92 = sub_1000B5920();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v284 = v82;
      v95 = v94;
      v295[0] = v94;
      *v93 = 136315138;
      swift_getErrorValue();
      v96 = sub_1000B5F60();
      v84 = v44;
      v44 = sub_100062B20(v96, v97, v295);

      *(v93 + 4) = v44;
      v98 = v286;
      _os_log_impl(&_mh_execute_header, v91, v92, "Cannot export attachment fallback PDF file — skipping {error: %s}", v93, 0xCu);
      sub_100035DA8(v95);
      v82 = v284;

      sub_10004D334(v84, v87);

      v99 = v98;
LABEL_45:
      v298 = 0;
LABEL_46:
      v127 = v273;
      v87 = v292;
    }

    else
    {
      sub_10004D334(v44, v87);

      v298 = 0;
      v127 = v273;
      v87 = v292;
      v99 = v84;
    }

LABEL_57:
    if (v289 != 1 || (sub_100088704(v291, v295), (swift_dynamicCast() & 1) == 0))
    {

      v82 = v290;
      goto LABEL_67;
    }

    v44 = v99;
    v284 = v82;
    v170 = v293;
    v171 = [v293 isAudio];
    v82 = v290;
    if (!v171)
    {

      v99 = v44;
      goto LABEL_67;
    }

    v172 = [v170 attachmentModel];
    objc_opt_self();
    v173 = swift_dynamicCastObjCClass();
    if (v173)
    {
      break;
    }

    v127 = v273;
LABEL_110:
    v99 = v44;
LABEL_67:
    v189 = [v127 completedUnitCount];
    if (!__OFADD__(v189, 1))
    {
      v190 = [v127 setCompletedUnitCount:v189 + 1];
      v295[0] = v99;
      __chkstk_darwin(v190, v191);
      *(&v265 - 4) = v87;
      *(&v265 - 3) = v82;
      *(&v265 - 2) = v127;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      sub_1000B5810();
      swift_getWitnessTable();
      sub_1000B5750();
      return;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  v174 = v173;
  v289 = v172;
  v175 = v291[3];
  v176 = v291[4];
  sub_1000458B4(v291, v175);
  v177 = (*(v176 + 8))(v175, v176);
  v295[0] = 0x7263736E6172745FLL;
  v295[1] = 0xEF7478742E747069;
  v293 = v177;
  v294 = v178;
  v293 = sub_1000B5720();
  v294 = v179;
  sub_1000B56D0();
  v180 = v82;
  sub_1000B4D10();

  v181 = [v174 audioDocument];
  if (!v181)
  {
    goto LABEL_133;
  }

  v182 = v181;
  v183 = [v181 transcriptAsPlainText];

  sub_1000B5620();
  v184 = v278;
  sub_1000B5640();
  v147 = sub_1000B5630();
  v186 = v185;
  v180 = v281 + 1;
  v283 = v281[1];
  v157 = (v283)(v184, v279);
  v281 = v180;
  if (v186 >> 60 == 15)
  {
LABEL_92:
    v219 = v291[3];
    v220 = v291[4];
    sub_1000458B4(v291, v219);
    v221 = (*(v220 + 8))(v219, v220);
    strcpy(v295, "_summary.txt");
    BYTE5(v295[1]) = 0;
    HIWORD(v295[1]) = -5120;
    v293 = v221;
    v294 = v222;
    v293 = sub_1000B5720();
    v294 = v223;
    sub_1000B56D0();
    v82 = v290;
    v180 = v290;
    sub_1000B4D10();

    v224 = [v174 audioDocument];
    if (!v224)
    {
      goto LABEL_134;
    }

    v225 = v224;

    v226 = [v225 recordingSummaryAsPlainText];

    v180 = sub_1000B5620();
    v227 = v278;
    sub_1000B5640();
    v228 = sub_1000B5630();
    v230 = v229;

    (v283)(v227, v279);
    if (v230 >> 60 == 15)
    {

LABEL_95:
      v231 = v288;
      v84 = v270;
LABEL_109:
      v240 = *(v287 + 8);
      v240(v269, v231);
      v240(v84, v231);
      v127 = v273;
      v87 = v292;
      goto LABEL_110;
    }

    v232 = v230 >> 62;
    v84 = v270;
    if ((v230 >> 62) > 1)
    {
      v231 = v288;
      if (v232 != 2)
      {
        goto LABEL_108;
      }

      v235 = *(v228 + 16);
      v234 = *(v228 + 24);
      v201 = __OFSUB__(v234, v235);
      v233 = v234 - v235;
      if (!v201)
      {
LABEL_105:
        if (v233 > 0)
        {
          swift_getObjectType();
          v236 = v269;
          v237 = v298;
          sub_1000B4F70();
          v298 = v237;
          if (v237)
          {

            sub_10004D334(v228, v230);
            v238 = v288;
            v239 = *(v287 + 8);
            v239(v236, v288);
            v239(v270, v238);
            return;
          }

          sub_10004D334(v228, v230);
          goto LABEL_95;
        }

LABEL_108:

        sub_10004D334(v228, v230);
        goto LABEL_109;
      }

      __break(1u);
    }

    else
    {
      v231 = v288;
      if (!v232)
      {
        v233 = BYTE6(v230);
        goto LABEL_105;
      }
    }

    LODWORD(v233) = HIDWORD(v228) - v228;
    if (__OFSUB__(HIDWORD(v228), v228))
    {
      goto LABEL_132;
    }

    v233 = v233;
    goto LABEL_105;
  }

  v187 = v186 >> 62;
  if ((v186 >> 62) > 1)
  {
    if (v187 != 2)
    {
LABEL_91:
      sub_10004D334(v147, v186);
      goto LABEL_92;
    }

    v200 = *(v147 + 16);
    v199 = *(v147 + 24);
    v201 = __OFSUB__(v199, v200);
    v188 = v199 - v200;
    if (!v201)
    {
LABEL_87:
      if (v188 >= 1)
      {
        swift_getObjectType();
        v217 = v270;
        v218 = v298;
        sub_1000B4F70();
        v298 = v218;
        if (v218)
        {
          (*(v287 + 8))(v217, v288);

          sub_10004D334(v147, v186);

          return;
        }

        v44 = v286;
      }

      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_78;
  }

  if (!v187)
  {
    v188 = BYTE6(v186);
    goto LABEL_87;
  }

  LODWORD(v188) = HIDWORD(v147) - v147;
  if (!__OFSUB__(HIDWORD(v147), v147))
  {
    v188 = v188;
    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  objc_autoreleasePoolPop(v180);
  __break(1u);
}

uint64_t sub_10008103C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  result = sub_1000B5070();
  *a3 = result;
  return result;
}

void sub_1000810D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_10008115C(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_10008115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v22 - v17;
  v19 = *(v11 + 16);
  if (*(a1 + 24) != 1)
  {
    v19(v15, a3, v10);
    sub_100078824(a2, v15, a4);
    v20 = v5;
    if (!v5)
    {
      return (*(v11 + 8))(v15, v10);
    }

    v18 = v15;
LABEL_6:
    result = (*(v11 + 8))(v18, v10);
    *v23 = v20;
    return result;
  }

  v19(&v22 - v17, a3, v10);
  sub_100081C00(a2, v18, a4);
  v20 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  v15 = v18;
  return (*(v11 + 8))(v15, v10);
}

void sub_100081320(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v64 = a3;
  v75 = a1;
  v76 = sub_1000B4C40();
  *&v71 = *(v76 - 8);
  __chkstk_darwin(v76, v4);
  v78 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v67 = &v61 - v11;
  v12 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v61 - v15;
  v17 = sub_1000B4DB0();
  v18 = *(v17 - 8);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v20, v23);
  v62 = &v61 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v63 = &v61 - v28;
  __chkstk_darwin(v27, v29);
  v31 = &v61 - v30;
  v32 = *(v18 + 16);
  v72 = a2;
  v77 = v32;
  v32(&v61 - v30, a2, v17);
  (*(v13 + 16))(v16, v75, v12);
  if ((*(v13 + 88))(v16, v12) == enum case for ICObjectReferences.attachment<A>(_:))
  {
    v61 = v31;
    (*(v13 + 8))(v16, v12);
    v33 = [objc_opt_self() defaultManager];
    v34 = v74;
    v35 = sub_1000B5900();
    if (v34)
    {
      (*(v18 + 8))(v61, v17);
    }

    else
    {
      v36 = v35;

      v37 = v36;
      v70 = *(v36 + 16);
      v73 = v18;
      if (v70)
      {
        v38 = 0;
        v74 = NSURLIsDirectoryKey;
        v72 = v36 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v68 = (v71 + 8);
        v69 = (v18 + 8);
        v71 = xmmword_1000CAB50;
        while (v38 < *(v37 + 16))
        {
          v39 = v37;
          v40 = v17;
          v77(v22, v72 + *(v73 + 72) * v38, v17);
          sub_100030480(&qword_100106F80, &qword_1000CAE18);
          inited = swift_initStackObject();
          *(inited + 16) = v71;
          v42 = v74;
          *(inited + 32) = v74;
          v43 = v42;
          sub_100087A60(inited);
          swift_setDeallocating();
          sub_100089014(inited + 32, type metadata accessor for URLResourceKey);
          v44 = v78;
          sub_1000B4CC0();

          v45 = sub_1000B4C20();
          (*v68)(v44, v76);
          if (v45 != 2 && (v45 & 1) != 0)
          {

            v46 = v73;
            v47 = v67;
            v17 = v40;
            (*(v73 + 32))(v67, v22, v40);
            v48 = 0;
            goto LABEL_13;
          }

          ++v38;
          v17 = v40;
          (*v69)(v22, v40);
          v37 = v39;
          if (v70 == v38)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v48 = 1;
        v46 = v73;
        v47 = v67;
LABEL_13:
        (*(v46 + 56))(v47, v48, 1, v17);
        v49 = v65;
        sub_100030C74(v47, v65, &qword_100106F88, &qword_1000CAE20);
        v50 = (*(v46 + 48))(v49, 1, v17);
        v51 = v66;
        v52 = v75;
        if (v50 == 1)
        {
          sub_100036320(v49, &qword_100106F88, &qword_1000CAE20);
          v79 = 0;
          v53 = v61;
          if (*(v51 + 24) & 1) != 0 && *(v51 + 25) == 2 && (v54 = objc_autoreleasePoolPush(), sub_100082998(v51, v52, &v79), objc_autoreleasePoolPop(v54), (v79))
          {
            sub_100036320(v47, &qword_100106F88, &qword_1000CAE20);
            (*(v46 + 8))(v53, v17);
          }

          else
          {
            if (*(v51 + 25) == 1)
            {
              v58 = 0x656D686361747461;
            }

            else
            {
              v58 = 0x656D686361747441;
            }

            v59 = v62;
            sub_100078DF8(v58, 0xEB0000000073746ELL, v53, 0, 0, v62);

            sub_100078328(v52, v59, v64);
            v60 = *(v46 + 8);
            v60(v59, v17);
            sub_100036320(v47, &qword_100106F88, &qword_1000CAE20);
            v60(v53, v17);
          }
        }

        else
        {
          v55 = v63;
          (*(v46 + 32))(v63, v49, v17);
          sub_100078328(v52, v55, v64);
          v56 = v61;
          v57 = *(v46 + 8);
          v57(v55, v17);
          sub_100036320(v47, &qword_100106F88, &qword_1000CAE20);
          v57(v56, v17);
        }
      }
    }
  }

  else
  {
    (*(v18 + 8))(v31, v17);
    (*(v13 + 8))(v16, v12);
  }
}

void sub_100081C00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v67 = a3;
  v77 = a2;
  v75 = a1;
  v76 = sub_1000B4C40();
  v68 = *(v76 - 8);
  __chkstk_darwin(v76, v4);
  v81 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v71 = &v64 - v11;
  strcpy(v83, "identifier title hasMedia children ");
  v70 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84[0] = AssociatedTypeWitness;
  v84[1] = sub_10003052C(&qword_100108048, &unk_1000CCE80);
  v84[2] = &type metadata for Bool;
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  v84[3] = sub_1000B5810();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v72 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(TupleTypeMetadata, v13);
  v15 = &v64 - v14;
  v16 = sub_1000B50E0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v64 - v19;
  v21 = sub_1000B4DB0();
  v22 = *(v21 - 8);
  v24 = __chkstk_darwin(v21, v23);
  v65 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24, v26);
  v66 = &v64 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v32 = &v64 - v31;
  __chkstk_darwin(v30, v33);
  v35 = &v64 - v34;
  v79 = *(v22 + 16);
  v80 = v22 + 16;
  v79(&v64 - v34, v77, v21);
  (*(v17 + 16))(v20, v75, v16);
  if ((*(v17 + 88))(v20, v16) != enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v22 + 8))(v35, v21);
    (*(v17 + 8))(v20, v16);
    return;
  }

  v64 = v35;
  v82 = v22;
  v78 = v21;
  (*(v17 + 96))(v20, v16);
  v36 = swift_projectBox();
  (*(v72 + 16))(v15, v36, TupleTypeMetadata);

  (*(*(AssociatedTypeWitness - 8) + 8))(v15, AssociatedTypeWitness);

  v37 = [objc_opt_self() defaultManager];
  v38 = v74;
  v39 = sub_1000B5900();
  if (v38)
  {
    (*(v82 + 8))(v64, v78);

    return;
  }

  v40 = v39;

  v41 = v78;
  TupleTypeMetadata = *(v40 + 16);
  if (TupleTypeMetadata)
  {
    v42 = 0;
    v77 = v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v43 = (v68 + 8);
    v72 = v82 + 8;
    v74 = xmmword_1000CAB50;
    while (v42 < *(v40 + 16))
    {
      v79(v32, v77 + *(v82 + 72) * v42, v41);
      sub_100030480(&qword_100106F80, &qword_1000CAE18);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSURLIsDirectoryKey;
      v45 = NSURLIsDirectoryKey;
      sub_100087A60(inited);
      swift_setDeallocating();
      sub_100089014(inited + 32, type metadata accessor for URLResourceKey);
      v46 = v81;
      sub_1000B4CC0();

      v47 = sub_1000B4C20();
      (*v43)(v46, v76);
      if (v47 != 2 && (v47 & 1) != 0)
      {

        v48 = v82;
        v41 = v78;
        (*(v82 + 32))(v71, v32, v78);
        v49 = 0;
        goto LABEL_13;
      }

      ++v42;
      v41 = v78;
      (*v72)(v32, v78);
      if (TupleTypeMetadata == v42)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v49 = 1;
    v48 = v82;
LABEL_13:
    v50 = v71;
    (*(v48 + 56))(v71, v49, 1, v41);
    v51 = v50;
    v52 = v69;
    sub_100030C74(v51, v69, &qword_100106F88, &qword_1000CAE20);
    v53 = (*(v48 + 48))(v52, 1, v41);
    v54 = v70;
    v55 = v75;
    v56 = v64;
    if (v53 == 1)
    {
      sub_100036320(v52, &qword_100106F88, &qword_1000CAE20);
      v85 = 0;
      if (*(v54 + 24) == 1 && *(v54 + 25) == 2)
      {
        v57 = objc_autoreleasePoolPush();
        sub_100082C18(v54, v55, &v85, v84);
        objc_autoreleasePoolPop(v57);
        if (v85)
        {
          sub_100036320(v71, &qword_100106F88, &qword_1000CAE20);
          (*(v48 + 8))(v56, v41);
          return;
        }
      }

      if (*(v54 + 25) == 1)
      {
        v61 = 0x656D686361747461;
      }

      else
      {
        v61 = 0x656D686361747441;
      }

      v62 = v65;
      sub_100078DF8(v61, 0xEB0000000073746ELL, v56, 0, 0, v65);

      sub_100078824(v55, v62, v67);
      v63 = v71;
      v59 = *(v48 + 8);
      v59(v62, v41);
      v60 = v63;
    }

    else
    {
      v58 = v66;
      (*(v48 + 32))(v66, v52, v41);
      sub_100078824(v55, v58, v67);
      v59 = *(v48 + 8);
      v59(v58, v41);
      v60 = v71;
    }

    sub_100036320(v60, &qword_100106F88, &qword_1000CAE20);
    v59(v56, v41);
  }
}

void sub_100082738(char a1)
{
  v2 = v1;
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    if (qword_100106A70 != -1)
    {
      swift_once();
    }

    v3 = sub_1000B5530();
    sub_100036380(v3, qword_100107F28);
    v4 = sub_1000B5520();
    v5 = sub_1000B5910();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Resetting context…", v6, 2u);
    }

    v7 = sub_1000B51B0();
    [v7 reset];

    *(v2 + 120) = 0;
  }
}

void sub_100082850(char a1)
{
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    sub_1000B51C0();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      v3 = qword_100106A70;
      swift_unknownObjectRetain();
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_1000B5530();
      sub_100036380(v4, qword_100107F28);
      v5 = sub_1000B5520();
      v6 = sub_1000B5910();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Resetting context…", v7, 2u);
      }

      v8 = sub_1000B51B0();
      [v8 reset];
      swift_unknownObjectRelease();

      v1 = v2;
    }

    *(v1 + 120) = 0;
  }
}

void sub_100082998(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_1000B51C0();
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  sub_1000B5030();
  if (!v3)
  {
    if (v10[3])
    {
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      if (swift_dynamicCast())
      {
        if (*(&v12 + 1))
        {
          sub_10004589C(&v11, v14);
          sub_100088704(v14, &v11);
          sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
          if (swift_dynamicCast())
          {
            v5 = [v10[0] isTable];

            sub_100035DA8(v14);
            if (v5)
            {
              *a3 = 1;
            }
          }

          else
          {
            sub_100035DA8(v14);
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
      sub_100036320(v10, &qword_100106E30, &unk_1000CAB60);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    sub_100036320(&v11, &qword_100108028, &qword_1000CCE28);
    if (qword_100106A70 != -1)
    {
      swift_once();
    }

    v6 = sub_1000B5530();
    sub_100036380(v6, qword_100107F28);
    v7 = sub_1000B5520();
    v8 = sub_1000B5930();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Object to be exported does not exist anymore — skipping", v9, 2u);
    }
  }
}

void sub_100082C18(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  sub_1000B5030();
  if (v4)
  {
    *a4 = v4;
    return;
  }

  if (v12[3])
  {
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_10004589C(&v13, v16);
        sub_100088704(v16, &v13);
        sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
        if (swift_dynamicCast())
        {
          v7 = [v12[0] isTable];

          sub_100035DA8(v16);
          if (v7)
          {
            *a3 = 1;
          }
        }

        else
        {
          sub_100035DA8(v16);
        }

        return;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_100036320(v12, &qword_100106E30, &unk_1000CAB60);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_100036320(&v13, &qword_100108028, &qword_1000CCE28);
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v8 = sub_1000B5530();
  sub_100036380(v8, qword_100107F28);
  v9 = sub_1000B5520();
  v10 = sub_1000B5930();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Object to be exported does not exist anymore — skipping", v11, 2u);
  }
}

void sub_100082E7C(void *a1, uint64_t a2)
{
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000458B4(a1, v10);
  v12 = (*(v11 + 72))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v25 = *(a2 + 96);
    v14 = v12;
    v15 = v13;
    swift_getObjectType();
    sub_1000B4D10();
    sub_1000B4F70();
    if (v2)
    {
      v25 = v15;
      (*(v6 + 8))(v9, v5);
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v16 = sub_1000B5530();
      sub_100036380(v16, qword_100107F28);
      swift_errorRetain();
      v17 = sub_1000B5520();
      v18 = sub_1000B5920();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_1000B5F60();
        v23 = sub_100062B20(v21, v22, &v26);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Cannot export attachment preview image file — skipping {error: %s}", v19, 0xCu);
        sub_100035DA8(v20);

        sub_10004D334(v14, v25);
      }

      else
      {
        sub_10004D334(v14, v25);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10004D334(v14, v15);
    }
  }
}

void sub_1000831AC(void *a1, uint64_t a2)
{
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000458B4(a1, v10);
  v12 = (*(v11 + 80))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v25 = *(a2 + 96);
    v14 = v12;
    v15 = v13;
    swift_getObjectType();
    sub_1000B4D10();
    sub_1000B4F70();
    if (v2)
    {
      v25 = v15;
      (*(v6 + 8))(v9, v5);
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v16 = sub_1000B5530();
      sub_100036380(v16, qword_100107F28);
      swift_errorRetain();
      v17 = sub_1000B5520();
      v18 = sub_1000B5920();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_1000B5F60();
        v23 = sub_100062B20(v21, v22, &v26);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Cannot export attachment fallback PDF file — skipping {error: %s}", v19, 0xCu);
        sub_100035DA8(v20);

        sub_10004D334(v14, v25);
      }

      else
      {
        sub_10004D334(v14, v25);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10004D334(v14, v15);
    }
  }
}

void sub_1000834DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_100078824(a1, a3, a4);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_10008354C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 1;
  }

  return result;
}

void sub_1000836EC()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    swift_getObjectType();
    if (qword_100106A80 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_100112C30;
    v4 = unk_100112C38;
    v6 = xmmword_100112C40;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 0;
    sub_100088B5C(v2, &v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000838B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v35 = sub_100030480(&qword_100108010, &unk_1000CCE10);
  __chkstk_darwin(v35, v4);
  v6 = &v28 - v5;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v30 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v34 = &v28 - v9;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000B5CF0())
  {
    v11 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v32 = (v30 + 32);
    v33 = (v30 + 48);
    v39 = _swiftEmptyArrayStorage;
    v31 = (v30 + 56);
    while (1)
    {
      if (v38)
      {
        v12 = sub_1000B5C20();
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = v7;
      v16 = [v12 managedObjectContext];
      if (v16)
      {
        v18 = v16;
        v19 = a1;
        __chkstk_darwin(v16, v17);
        v20 = v36;
        *(&v28 - 2) = v13;
        *(&v28 - 1) = v20;
        v21 = v40;
        sub_1000B5A60();
        v40 = v21;

        v7 = v15;
        if ((*v33)(v6, 1, v15) != 1)
        {
          v22 = *v32;
          (*v32)(v34, v6, v15);
          v23 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_100033C84(0, v23[2] + 1, 1, v23);
          }

          v25 = v23[2];
          v24 = v23[3];
          v39 = v23;
          if (v25 >= v24 >> 1)
          {
            v39 = sub_100033C84((v24 > 1), v25 + 1, 1, v39);
          }

          v26 = v39;
          v39[2] = v25 + 1;
          v7 = v15;
          v22(&v26[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25], v34, v15);
          a1 = v19;
          goto LABEL_6;
        }
      }

      else
      {

        (*v31)(v6, 1, 1, v7);
      }

      sub_100036320(v6, &qword_100108010, &unk_1000CCE10);
LABEL_6:
      ++v11;
      if (v14 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_23:
  sub_100073024(v39, v29, v28);
}

uint64_t sub_100083FB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000B5FB0();
  sub_1000B56A0();
  v8 = sub_1000B5FE0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000B5F20() & 1) != 0)
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

    sub_100085B74(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100084104(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v51 = sub_100030480(&qword_100108070, &unk_1000CCE98);
  __chkstk_darwin(v51, v4);
  v6 = &v46 - v5;
  v52 = _s3TagVMa(0);
  v62 = *(v52 - 8);
  v8 = __chkstk_darwin(v52, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v46 = &v46 - v12;
  v13 = sub_1000B4EA0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v56 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v24 = &v46 - v23;
  v47 = v2;
  v64 = *v2;
  sub_1000B5FB0();
  v65 = a2;
  sub_100030C74(a2, v24, &qword_100106E38, &unk_1000CB730);
  v25 = v14 + 48;
  v57 = *(v14 + 48);
  if (v57(v24, 1, v13) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    (*(v14 + 32))(v17, v24, v13);
    sub_1000B5FD0(1u);
    sub_1000886A4(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B55A0();
    (*(v14 + 8))(v17, v13);
  }

  v26 = (v65 + *(v52 + 20));
  v27 = *v26;
  v58 = v26[1];
  v59 = v27;
  sub_1000B56A0();
  v28 = sub_1000B5FE0();
  v29 = -1 << *(v64 + 32);
  v30 = v28 & ~v29;
  v63 = v64 + 56;
  v31 = v57;
  if ((*(v64 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
  {
    v50 = v17;
    v61 = ~v29;
    v49 = (v14 + 32);
    v62 = *(v62 + 72);
    v54 = (v14 + 8);
    v32 = v51;
    v55 = v10;
    v53 = v25;
    do
    {
      v33 = *(v64 + 48);
      v60 = v62 * v30;
      sub_100088FAC(v33 + v62 * v30, v10, _s3TagVMa);
      v34 = *(v32 + 48);
      sub_100030C74(v10, v6, &qword_100106E38, &unk_1000CB730);
      sub_100030C74(v65, &v6[v34], &qword_100106E38, &unk_1000CB730);
      if (v31(v6, 1, v13) == 1)
      {
        if (v31(&v6[v34], 1, v13) != 1)
        {
          goto LABEL_7;
        }

        sub_100036320(v6, &qword_100106E38, &unk_1000CB730);
      }

      else
      {
        v35 = v56;
        sub_100030C74(v6, v56, &qword_100106E38, &unk_1000CB730);
        if (v31(&v6[v34], 1, v13) == 1)
        {
          (*v54)(v35, v13);
          v10 = v55;
          v31 = v57;
LABEL_7:
          sub_100036320(v6, &qword_100108070, &unk_1000CCE98);
          goto LABEL_8;
        }

        v36 = v50;
        (*v49)(v50, &v6[v34], v13);
        sub_1000886A4(&qword_100108080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v37 = sub_1000B55E0();
        v38 = *v54;
        (*v54)(v36, v13);
        v38(v35, v13);
        v32 = v51;
        sub_100036320(v6, &qword_100106E38, &unk_1000CB730);
        v10 = v55;
        v31 = v57;
        if ((v37 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v39 = &v10[*(v52 + 20)];
      v40 = *v39 == v59 && *(v39 + 1) == v58;
      if (v40 || (sub_1000B5F20() & 1) != 0)
      {
        sub_100089014(v10, _s3TagVMa);
        sub_100089014(v65, _s3TagVMa);
        sub_100088FAC(*(v64 + 48) + v60, v48, _s3TagVMa);
        return 0;
      }

LABEL_8:
      sub_100089014(v10, _s3TagVMa);
      v30 = (v30 + 1) & v61;
    }

    while (((*(v63 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0);
  }

  v42 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v65;
  v45 = v46;
  sub_100088FAC(v65, v46, _s3TagVMa);
  v66 = *v42;
  sub_100085CF4(v45, v30, isUniquelyReferenced_nonNull_native);
  *v42 = v66;
  sub_100089074(v44, v48, _s3TagVMa);
  return 1;
}

uint64_t sub_100084878(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v45 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  __chkstk_darwin(v54, v8);
  v10 = &v41[-v9];
  v11 = type metadata accessor for MarkdownStyle(0);
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v41[-v19];
  __chkstk_darwin(v18, v21);
  v46 = &v41[-v22];
  v47 = v2;
  v23 = *v2;
  sub_1000B5FB0();
  v55 = a2;
  sub_1000997C4(v56);
  v24 = sub_1000B5FE0();
  v25 = v23 + 56;
  v26 = -1 << *(v23 + 32);
  v27 = v24 & ~v26;
  if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_27:
    v36 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v55;
    v39 = v46;
    sub_100088FAC(v55, v46, type metadata accessor for MarkdownStyle);
    v56[0] = *v36;
    sub_100086434(v39, v27, isUniquelyReferenced_nonNull_native);
    *v36 = v56[0];
    sub_100089074(v38, v48, type metadata accessor for MarkdownStyle);
    return 1;
  }

  v51 = v16;
  v52 = ~v26;
  v53 = *(v12 + 72);
  v28 = (v5 + 48);
  v49 = (v5 + 8);
  v50 = v23 + 56;
  v44 = (v5 + 32);
  while (1)
  {
    v29 = v53 * v27;
    sub_100088FAC(*(v23 + 48) + v53 * v27, v20, type metadata accessor for MarkdownStyle);
    v30 = *(v54 + 48);
    sub_100088FAC(v20, v10, type metadata accessor for MarkdownStyle);
    sub_100088FAC(v55, &v10[v30], type metadata accessor for MarkdownStyle);
    v31 = *v28;
    v32 = (*v28)(v10, 6, v4);
    if (v32 > 2)
    {
      if (v32 > 4)
      {
        if (v32 == 5)
        {
          sub_100089014(v20, type metadata accessor for MarkdownStyle);
          if (v31(&v10[v30], 6, v4) == 5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_100089014(v20, type metadata accessor for MarkdownStyle);
          if (v31(&v10[v30], 6, v4) == 6)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v32 == 3)
      {
        sub_100089014(v20, type metadata accessor for MarkdownStyle);
        if (v31(&v10[v30], 6, v4) == 3)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100089014(v20, type metadata accessor for MarkdownStyle);
        if (v31(&v10[v30], 6, v4) == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v32)
    {
      if (v32 == 1)
      {
        sub_100089014(v20, type metadata accessor for MarkdownStyle);
        if (v31(&v10[v30], 6, v4) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100089014(v20, type metadata accessor for MarkdownStyle);
        if (v31(&v10[v30], 6, v4) == 2)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    v33 = v51;
    sub_100088FAC(v10, v51, type metadata accessor for MarkdownStyle);
    if (!v31(&v10[v30], 6, v4))
    {
      break;
    }

    sub_100089014(v20, type metadata accessor for MarkdownStyle);
    (*v49)(v33, v4);
    v25 = v50;
LABEL_22:
    sub_100036320(v10, &qword_1001080A0, &qword_1000CCEC0);
LABEL_23:
    v27 = (v27 + 1) & v52;
    if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v34 = v45;
  (*v44)(v45, &v10[v30], v4);
  v42 = sub_1000B4D40();
  v43 = v23;
  v35 = *v49;
  (*v49)(v34, v4);
  sub_100089014(v20, type metadata accessor for MarkdownStyle);
  v35(v33, v4);
  v23 = v43;
  v25 = v50;
  if ((v42 & 1) == 0)
  {
    sub_100089014(v10, type metadata accessor for MarkdownStyle);
    goto LABEL_23;
  }

LABEL_28:
  sub_100089014(v10, type metadata accessor for MarkdownStyle);
  sub_100089014(v55, type metadata accessor for MarkdownStyle);
  sub_100088FAC(*(v23 + 48) + v29, v48, type metadata accessor for MarkdownStyle);
  return 0;
}

uint64_t sub_100084F20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100030480(&qword_1001080B8, &unk_1000CCED0);
  result = sub_1000B5BE0();
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
      sub_1000B5FB0();
      sub_1000B56A0();
      result = sub_1000B5FE0();
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

uint64_t sub_100085180(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000B4EA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v42 - v9;
  v11 = _s3TagVMa(0);
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  sub_100030480(&qword_100108088, &qword_1000CCEA8);
  result = sub_1000B5BE0();
  v17 = result;
  if (*(v15 + 16))
  {
    v50 = v3;
    v43 = v2;
    v18 = 0;
    v19 = (v15 + 56);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 56);
    v23 = (v20 + 63) >> 6;
    v48 = (v4 + 48);
    v49 = result;
    v44 = (v4 + 8);
    v45 = (v4 + 32);
    v24 = result + 56;
    v46 = v15;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = *(v15 + 48);
      v53 = *(v51 + 72);
      sub_100089074(v29 + v53 * (v26 | (v18 << 6)), v14, _s3TagVMa);
      sub_1000B5FB0();
      v30 = v14;
      sub_100030C74(v14, v10, &qword_100106E38, &unk_1000CB730);
      v31 = v50;
      if ((*v48)(v10, 1, v50) == 1)
      {
        sub_1000B5FD0(0);
      }

      else
      {
        v32 = v47;
        (*v45)(v47, v10, v31);
        sub_1000B5FD0(1u);
        sub_1000886A4(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_1000B55A0();
        v33 = v32;
        v15 = v46;
        (*v44)(v33, v31);
      }

      v14 = v30;
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v17 = v49;
      v34 = -1 << *(v49 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v24 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v24 + 8 * v36);
          if (v40 != -1)
          {
            v25 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v35) & ~*(v24 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_100089074(v30, *(v17 + 48) + v25 * v53, _s3TagVMa);
      ++*(v17 + 16);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    v41 = 1 << *(v15 + 32);
    if (v41 >= 64)
    {
      bzero(v19, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v41;
    }

    v2 = v43;
    *(v15 + 16) = 0;
  }

  *v2 = v17;
  return result;
}

uint64_t sub_100085680(uint64_t a1)
{
  v2 = v1;
  v50 = sub_1000B4DB0();
  v3 = *(v50 - 8);
  __chkstk_darwin(v50, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MarkdownStyle(0);
  v48 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = &v42 - v12;
  v14 = *v1;
  sub_100030480(&qword_1001080A8, &qword_1000CCEC8);
  result = sub_1000B5BE0();
  v16 = result;
  if (*(v14 + 16))
  {
    v44 = v1;
    v45 = v6;
    v17 = 0;
    v18 = (v14 + 56);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 56);
    v22 = (v19 + 63) >> 6;
    v46 = v14;
    v47 = (v3 + 48);
    v42 = (v3 + 8);
    v43 = (v3 + 32);
    v23 = result + 56;
    while (v21)
    {
      v30 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v33 = *(v14 + 48);
      v34 = *(v48 + 72);
      sub_100089074(v33 + v34 * (v30 | (v17 << 6)), v13, type metadata accessor for MarkdownStyle);
      sub_1000B5FB0();
      v35 = v49;
      sub_100088FAC(v13, v49, type metadata accessor for MarkdownStyle);
      v36 = (*v47)(v35, 6, v50);
      if (v36 <= 2)
      {
        if (v36)
        {
          if (v36 == 1)
          {
            sub_1000B5FC0(0);
          }

          else
          {
            sub_1000B5FC0(1uLL);
          }
        }

        else
        {
          v24 = v50;
          (*v43)(v45, v49, v50);
          sub_1000B5FC0(6uLL);
          sub_1000886A4(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v25 = v45;
          sub_1000B55A0();
          (*v42)(v25, v24);
        }
      }

      else if (v36 > 4)
      {
        if (v36 == 5)
        {
          sub_1000B5FC0(4uLL);
        }

        else
        {
          sub_1000B5FC0(5uLL);
        }
      }

      else if (v36 == 3)
      {
        sub_1000B5FC0(2uLL);
      }

      else
      {
        sub_1000B5FC0(3uLL);
      }

      result = sub_1000B5FE0();
      v26 = -1 << *(v16 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v23 + 8 * (v27 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v26) >> 6;
        while (++v28 != v38 || (v37 & 1) == 0)
        {
          v39 = v28 == v38;
          if (v28 == v38)
          {
            v28 = 0;
          }

          v37 |= v39;
          v40 = *(v23 + 8 * v28);
          if (v40 != -1)
          {
            v29 = __clz(__rbit64(~v40)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v23 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = sub_100089074(v13, *(v16 + 48) + v29 * v34, type metadata accessor for MarkdownStyle);
      ++*(v16 + 16);
      v14 = v46;
    }

    v31 = v17;
    while (1)
    {
      v17 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v17 >= v22)
      {
        break;
      }

      v32 = v18[v17];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v21 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v14 + 32);
    if (v41 >= 64)
    {
      bzero(v18, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v41;
    }

    v2 = v44;
    *(v14 + 16) = 0;
  }

  *v2 = v16;
  return result;
}

uint64_t sub_100085B74(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100084F20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100086AE8();
      goto LABEL_16;
    }

    sub_100086E78(v8 + 1);
  }

  v10 = *v4;
  sub_1000B5FB0();
  sub_1000B56A0();
  result = sub_1000B5FE0();
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

      result = sub_1000B5F20();
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
  result = sub_1000B5F40();
  __break(1u);
  return result;
}

uint64_t sub_100085CF4(uint64_t a1, unint64_t a2, char a3)
{
  v62 = a1;
  v61 = sub_100030480(&qword_100108070, &unk_1000CCE98);
  __chkstk_darwin(v61, v6);
  v8 = &v45 - v7;
  v52 = _s3TagVMa(0);
  v9 = *(v52 - 8);
  __chkstk_darwin(v52, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000B4EA0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v19 = __chkstk_darwin(v17 - 8, v18);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v23 = &v45 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v46 = v3;
  v45 = v9;
  if (v25 > v24 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_100085180(v24 + 1);
  }

  else
  {
    if (v25 > v24)
    {
      sub_100086C70(_s3TagVMa, &qword_100108088, &qword_1000CCEA8, _s3TagVMa);
      goto LABEL_27;
    }

    sub_1000870B0(v24 + 1);
  }

  v59 = *v3;
  sub_1000B5FB0();
  sub_100030C74(v62, v23, &qword_100106E38, &unk_1000CB730);
  v57 = *(v14 + 48);
  v58 = v14 + 48;
  if (v57(v23, 1, v13) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    v26 = v48;
    (*(v14 + 32))(v48, v23, v13);
    sub_1000B5FD0(1u);
    sub_1000886A4(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B55A0();
    (*(v14 + 8))(v26, v13);
  }

  v27 = (v62 + *(v52 + 20));
  v28 = *v27;
  v53 = v27[1];
  v54 = v28;
  sub_1000B56A0();
  v29 = sub_1000B5FE0();
  v30 = -1 << *(v59 + 32);
  a2 = v29 & ~v30;
  v56 = v59 + 56;
  if ((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v55 = ~v30;
    v47 = (v14 + 32);
    v31 = *(v9 + 72);
    v51 = (v14 + 8);
    v50 = v12;
    v49 = v31;
    do
    {
      sub_100088FAC(*(v59 + 48) + v31 * a2, v12, _s3TagVMa);
      v32 = *(v61 + 48);
      sub_100030C74(v12, v8, &qword_100106E38, &unk_1000CB730);
      sub_100030C74(v62, &v8[v32], &qword_100106E38, &unk_1000CB730);
      v33 = v57;
      if (v57(v8, 1, v13) == 1)
      {
        if (v33(&v8[v32], 1, v13) != 1)
        {
          goto LABEL_14;
        }

        sub_100036320(v8, &qword_100106E38, &unk_1000CB730);
      }

      else
      {
        v34 = v60;
        sub_100030C74(v8, v60, &qword_100106E38, &unk_1000CB730);
        if (v33(&v8[v32], 1, v13) == 1)
        {
          (*v51)(v34, v13);
          v31 = v49;
          v12 = v50;
LABEL_14:
          sub_100036320(v8, &qword_100108070, &unk_1000CCE98);
          goto LABEL_15;
        }

        v35 = v48;
        (*v47)(v48, &v8[v32], v13);
        sub_1000886A4(&qword_100108080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v36 = sub_1000B55E0();
        v37 = *v51;
        (*v51)(v35, v13);
        v37(v60, v13);
        sub_100036320(v8, &qword_100106E38, &unk_1000CB730);
        v31 = v49;
        v12 = v50;
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v38 = &v12[*(v52 + 20)];
      v39 = *v38 == v54 && *(v38 + 1) == v53;
      if (v39 || (sub_1000B5F20() & 1) != 0)
      {
        sub_100089014(v12, _s3TagVMa);
        sub_1000B5F40();
        __break(1u);
        break;
      }

LABEL_15:
      sub_100089014(v12, _s3TagVMa);
      a2 = (a2 + 1) & v55;
    }

    while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v40 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100089074(v62, *(v40 + 48) + *(v45 + 72) * a2, _s3TagVMa);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_100086434(uint64_t a1, unint64_t a2, char a3)
{
  v55 = a1;
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  __chkstk_darwin(v54, v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for MarkdownStyle(0);
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = __chkstk_darwin(v17, v18);
  v22 = &v42 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v51 = v15;
  v52 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    v49 = v20;
    if (a3)
    {
      v43 = v19;
      sub_100085680(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_100086C70(type metadata accessor for MarkdownStyle, &qword_1001080A8, &qword_1000CCEC8, type metadata accessor for MarkdownStyle);
        goto LABEL_34;
      }

      v43 = v19;
      sub_100087588(v23 + 1);
    }

    v25 = *v3;
    sub_1000B5FB0();
    sub_1000997C4(v56);
    v26 = sub_1000B5FE0();
    v27 = -1 << *(v25 + 32);
    a2 = v26 & ~v27;
    v50 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = v10;
      v53 = ~v27;
      v28 = *(v15 + 72);
      v29 = (v7 + 48);
      v48 = (v7 + 8);
      v44 = (v7 + 32);
      v45 = v28;
      v30 = v50;
      while (1)
      {
        sub_100088FAC(*(v25 + 48) + v28 * a2, v22, type metadata accessor for MarkdownStyle);
        v31 = *(v54 + 48);
        sub_100088FAC(v22, v13, type metadata accessor for MarkdownStyle);
        sub_100088FAC(v55, &v13[v31], type metadata accessor for MarkdownStyle);
        v32 = *v29;
        v33 = (*v29)(v13, 6, v6);
        if (v33 > 2)
        {
          if (v33 > 4)
          {
            if (v33 == 5)
            {
              sub_100089014(v22, type metadata accessor for MarkdownStyle);
              if (v32(&v13[v31], 6, v6) == 5)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_100089014(v22, type metadata accessor for MarkdownStyle);
              if (v32(&v13[v31], 6, v6) == 6)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v33 == 3)
          {
            sub_100089014(v22, type metadata accessor for MarkdownStyle);
            if (v32(&v13[v31], 6, v6) == 3)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_100089014(v22, type metadata accessor for MarkdownStyle);
            if (v32(&v13[v31], 6, v6) == 4)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_29;
        }

        if (v33)
        {
          break;
        }

        v34 = v49;
        sub_100088FAC(v13, v49, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6))
        {
          sub_100089014(v22, type metadata accessor for MarkdownStyle);
          (*v48)(v34, v6);
          v30 = v50;
LABEL_29:
          sub_100036320(v13, &qword_1001080A0, &qword_1000CCEC0);
          goto LABEL_30;
        }

        v35 = v46;
        (*v44)(v46, &v13[v31], v6);
        v47 = sub_1000B4D40();
        v36 = *v48;
        (*v48)(v35, v6);
        sub_100089014(v22, type metadata accessor for MarkdownStyle);
        v36(v34, v6);
        v28 = v45;
        v30 = v50;
        if (v47)
        {
          goto LABEL_37;
        }

        sub_100089014(v13, type metadata accessor for MarkdownStyle);
LABEL_30:
        a2 = (a2 + 1) & v53;
        if (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (v33 == 1)
      {
        sub_100089014(v22, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6) == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_100089014(v22, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6) == 2)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_34:
  v37 = *v52;
  *(*v52 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100089074(v55, *(v37 + 48) + *(v51 + 72) * a2, type metadata accessor for MarkdownStyle);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_37:
    sub_100089014(v13, type metadata accessor for MarkdownStyle);
    result = sub_1000B5F40();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

void *sub_100086AE8()
{
  v1 = v0;
  sub_100030480(&qword_1001080B8, &unk_1000CCED0);
  v2 = *v0;
  v3 = sub_1000B5BD0();
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

void *sub_100086C70(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v30 - v12;
  sub_100030480(a2, a3);
  v14 = *v4;
  v15 = sub_1000B5BD0();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_100088FAC(*(v14 + 48) + v29, v13, a4);
        result = sub_100089074(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

uint64_t sub_100086E78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100030480(&qword_1001080B8, &unk_1000CCED0);
  result = sub_1000B5BE0();
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
      sub_1000B5FB0();

      sub_1000B56A0();
      result = sub_1000B5FE0();
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

uint64_t sub_1000870B0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000B4EA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v41 - v9;
  v11 = _s3TagVMa(0);
  v50 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  sub_100030480(&qword_100108088, &qword_1000CCEA8);
  result = sub_1000B5BE0();
  v16 = result;
  if (*(v14 + 16))
  {
    v49 = v3;
    v42 = v1;
    v17 = 0;
    v18 = v14 + 56;
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 56);
    v22 = (v19 + 63) >> 6;
    v47 = (v4 + 48);
    v48 = v14;
    v43 = (v4 + 8);
    v44 = (v4 + 32);
    v23 = result + 56;
    v45 = v11;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = *(v14 + 48);
      v51 = *(v50 + 72);
      v29 = v52;
      sub_100088FAC(v28 + v51 * (v25 | (v17 << 6)), v52, _s3TagVMa);
      sub_1000B5FB0();
      sub_100030C74(v29, v10, &qword_100106E38, &unk_1000CB730);
      v30 = v49;
      if ((*v47)(v10, 1, v49) == 1)
      {
        sub_1000B5FD0(0);
      }

      else
      {
        v31 = v10;
        v32 = v46;
        (*v44)(v46, v31, v30);
        sub_1000B5FD0(1u);
        sub_1000886A4(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_1000B55A0();
        v33 = v32;
        v10 = v31;
        (*v43)(v33, v30);
      }

      sub_1000B56A0();
      result = sub_1000B5FE0();
      v34 = -1 << *(v16 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      v14 = v48;
      if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v23 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_100089074(v52, *(v16 + 48) + v24 * v51, _s3TagVMa);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v42;
        goto LABEL_29;
      }

      v27 = *(v18 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
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
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100087588(uint64_t a1)
{
  v2 = v1;
  v52 = sub_1000B4DB0();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52, v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownStyle(0);
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v53 = &v44 - v12;
  v13 = *v1;
  sub_100030480(&qword_1001080A8, &qword_1000CCEC8);
  result = sub_1000B5BE0();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v1;
    v16 = 0;
    v17 = v13 + 56;
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 56);
    v21 = (v18 + 63) >> 6;
    v49 = v13;
    v50 = (v3 + 48);
    v45 = (v3 + 8);
    v46 = (v3 + 32);
    v22 = result + 56;
    while (v20)
    {
      v31 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_18:
      v34 = *(v7 + 72);
      v35 = *(v13 + 48) + v34 * (v31 | (v16 << 6));
      v36 = v53;
      sub_100088FAC(v35, v53, type metadata accessor for MarkdownStyle);
      sub_1000B5FB0();
      v37 = v36;
      v38 = v51;
      sub_100088FAC(v37, v51, type metadata accessor for MarkdownStyle);
      v39 = (*v50)(v38, 6, v52);
      if (v39 <= 2)
      {
        if (v39)
        {
          if (v39 == 1)
          {
            sub_1000B5FC0(0);
          }

          else
          {
            sub_1000B5FC0(1uLL);
          }
        }

        else
        {
          v23 = *v46;
          v24 = v52;
          v44 = v7;
          v25 = v48;
          v23();
          sub_1000B5FC0(6uLL);
          sub_1000886A4(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          sub_1000B55A0();
          v26 = v25;
          v7 = v44;
          (*v45)(v26, v24);
        }
      }

      else if (v39 > 4)
      {
        if (v39 == 5)
        {
          sub_1000B5FC0(4uLL);
        }

        else
        {
          sub_1000B5FC0(5uLL);
        }
      }

      else if (v39 == 3)
      {
        sub_1000B5FC0(2uLL);
      }

      else
      {
        sub_1000B5FC0(3uLL);
      }

      result = sub_1000B5FE0();
      v27 = -1 << *(v15 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v22 + 8 * (v28 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v27) >> 6;
        while (++v29 != v41 || (v40 & 1) == 0)
        {
          v42 = v29 == v41;
          if (v29 == v41)
          {
            v29 = 0;
          }

          v40 |= v42;
          v43 = *(v22 + 8 * v29);
          if (v43 != -1)
          {
            v30 = __clz(__rbit64(~v43)) + (v29 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v30 = __clz(__rbit64((-1 << v28) & ~*(v22 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v22 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      result = sub_100089074(v53, *(v15 + 48) + v30 * v34, type metadata accessor for MarkdownStyle);
      ++*(v15 + 16);
      v13 = v49;
    }

    v32 = v16;
    while (1)
    {
      v16 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v47;
        goto LABEL_39;
      }

      v33 = *(v17 + 8 * v16);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v20 = (v33 - 1) & v33;
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
    *v2 = v15;
  }

  return result;
}

void *sub_100087A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030480(&qword_100108058, &qword_1000CCE90);
    v3 = sub_1000B5BF0();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1000B5620();
      sub_1000B5FB0();
      v27 = v7;
      sub_1000B56A0();
      v8 = sub_1000B5FE0();

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
        v16 = sub_1000B5620();
        v18 = v17;
        if (v16 == sub_1000B5620() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1000B5F20();

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

uint64_t sub_100087C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000B5840();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100083FB4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100087CEC(uint64_t a1)
{
  v2 = _s3TagVMa(0);
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v15 - v9;
  v11 = *(a1 + 16);
  sub_1000886A4(&qword_100108068, _s3TagVMa, &unk_1000CEC94);
  result = sub_1000B5840();
  v16 = result;
  if (v11)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_100088FAC(v13, v7, _s3TagVMa);
      sub_100084104(v10, v7);
      sub_100089014(v10, _s3TagVMa);
      v13 += v14;
      --v11;
    }

    while (v11);
    return v16;
  }

  return result;
}

uint64_t sub_100087E7C(uint64_t a1)
{
  v2 = type metadata accessor for MarkdownStyle(0);
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v15 - v9;
  v11 = *(a1 + 16);
  sub_1000886A4(&qword_1001080B0, type metadata accessor for MarkdownStyle, &unk_1000CE1EC);
  result = sub_1000B5840();
  v16 = result;
  if (v11)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_100088FAC(v13, v7, type metadata accessor for MarkdownStyle);
      sub_100084878(v10, v7);
      sub_100089014(v10, type metadata accessor for MarkdownStyle);
      v13 += v14;
      --v11;
    }

    while (v11);
    return v16;
  }

  return result;
}

void *sub_10008800C(uint64_t a1)
{
  v2 = sub_1000B4DB0();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_100030480(&qword_100108098, &qword_1000CCEB8);
    v11 = sub_1000B5BF0();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1000886A4(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v18 = sub_1000B5590();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_1000886A4(&qword_100107B48, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v25 = sub_1000B55E0();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10008832C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 104) = 0;
  *(v4 + 112) = 32;
  *(v4 + 120) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = a2[2];
  *(v4 + 69) = *(a2 + 45);
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100072B30();
  return v4;
}

void sub_10008839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1000884B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000884D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000884F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 61))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10008855C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000886A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100088704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100088768()
{
  result = qword_100108038;
  if (!qword_100108038)
  {
    sub_1000362AC(255, &qword_100108030, NSManagedObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108038);
  }

  return result;
}

void sub_100088874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1000888C8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
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
    v9 = sub_1000B56C0();
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

uint64_t sub_100088964(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_1000889E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100088A98(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_100088AFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100088B5C(void *a1, _OWORD *a2)
{
  sub_1000B51C0();
  swift_allocObject();
  v4 = a1;
  v5 = sub_1000B51A0();
  v6 = [objc_opt_self() defaultManager];
  sub_100030480(&qword_100108090, &qword_1000CCEB0);
  v7 = swift_allocObject();
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  v8 = a2[1];
  *(v7 + 24) = *a2;
  *(v7 + 104) = 0;
  *(v7 + 112) = 32;
  *(v7 + 120) = 0;
  *(v7 + 16) = v5;
  *(v7 + 40) = v8;
  *(v7 + 56) = a2[2];
  *(v7 + 69) = *(a2 + 45);
  *(v7 + 88) = v6;
  *(v7 + 96) = &protocol witness table for NSFileManager;

  v9 = v6;
  sub_1000729C4();

  v10 = type metadata accessor for ICArchiveExporterObjCBridge();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___ICArchiveExporter_exporter] = v7;
  v14.receiver = v11;
  v14.super_class = v10;

  v12 = objc_msgSendSuper2(&v14, "init");

  return v12;
}

uint64_t sub_100088CB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100088CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100088D10()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100088D54()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_100106A80 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_100112C30;
    v4 = unk_100112C38;
    v6 = xmmword_100112C40;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 256;
    sub_100088B5C(v2, &v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100088E84()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_100106A80 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_100112C30;
    v4 = unk_100112C38;
    v6 = xmmword_100112C40;

    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 513;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v13 = IsAlexandriaDemoModeEnabled;
    v14 = 1;
    v15 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v16 = 0;
    sub_100088B5C(v2, &v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100088FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100089014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100089074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__int128 *ICArchiveCreator.default.unsafeMutableAddressor()
{
  if (qword_100106A80 != -1)
  {
    swift_once();
  }

  return &static ICArchiveCreator.default;
}

uint64_t ICArchiveCreator.softwareIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ICArchiveCreator.softwareIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersionName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_100089360()
{
  sub_1000897A8(v1);
  static ICArchiveCreator.default = v1[0];
  *&qword_100112C30 = v1[1];
  result = *&v2;
  xmmword_100112C40 = v2;
  return result;
}

uint64_t static ICArchiveCreator.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100106A80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_100112C40 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_100112C38;
  *(a1 + 40) = v1;
}

unint64_t sub_100089440()
{
  v1 = 0x6572617774666F73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1000894AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100089A5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000894E0(uint64_t a1)
{
  v2 = sub_1000896F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008951C(uint64_t a1)
{
  v2 = sub_1000896F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ICArchiveCreator.encode(to:)(void *a1)
{
  v3 = sub_100030480(&qword_1001080C0, &qword_1000CCEE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_1000896F8();
  sub_1000B6020();
  v9[15] = 0;
  sub_1000B5E20();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_1000B5E20();
  v9[13] = 2;
  sub_1000B5E20();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000896F8()
{
  result = qword_1001080C8;
  if (!qword_1001080C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080C8);
  }

  return result;
}

double ICArchiveCreator.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100089B8C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_1000897A8(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v26 = sub_1000B5620();
    v6 = v5;
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = [v2 mainBundle];
  v8 = [v7 infoDictionary];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_1000B5580();

  if (!*(v9 + 16) || (v10 = sub_10006320C(0xD00000000000001ALL, 0x80000001000C6AC0), (v11 & 1) == 0))
  {

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  sub_100030378(*(v9 + 56) + 32 * v10, v29);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [v2 mainBundle];
  v16 = [v15 infoDictionary];

  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = sub_1000B5580();

  if (kCFBundleVersionKey)
  {
    v18 = sub_1000B5620();
    if (*(v17 + 16))
    {
      v20 = sub_10006320C(v18, v19);
      v22 = v21;

      if (v22)
      {
        sub_100030378(*(v17 + 56) + 32 * v20, v29);

        v23 = swift_dynamicCast();
        v24 = v27;
        v25 = v28;
        if (!v23)
        {
          v24 = 0;
          v25 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    v24 = 0;
    v25 = 0;
LABEL_24:
    *a1 = v26;
    a1[1] = v6;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v24;
    a1[5] = v25;
    return;
  }

  __break(1u);
}

uint64_t sub_100089A5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001000C79C0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C79E0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v5 = sub_1000B5F20();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100089B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_100030480(&qword_1001080E8, &qword_1000CD098);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v35 - v5;
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];

  v9 = [v7 mainBundle];
  v10 = [v9 infoDictionary];

  if (v10)
  {
    v11 = sub_1000B5580();

    if (!*(v11 + 16) || (v12 = sub_10006320C(0xD00000000000001ALL, 0x80000001000C6AC0), (v13 & 1) == 0) || (sub_100030378(*(v11 + 56) + 32 * v12, v37), , (swift_dynamicCast() & 1) != 0))
    {
    }
  }

  v14 = [v7 mainBundle];
  v15 = [v14 infoDictionary];

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_1000B5580();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v18 = sub_1000B5620();
  if (*(v16 + 16))
  {
    v20 = sub_10006320C(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_100030378(*(v16 + 56) + 32 * v20, v37);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_14:
  sub_1000458B4(a1, a1[3]);
  sub_1000896F8();
  v23 = v38;
  sub_1000B6010();
  if (v23)
  {
    return sub_100035DA8(a1);
  }

  v37[0] = 0;
  v24 = sub_1000B5D70();
  v26 = v25;
  v27 = v24;
  v37[0] = 1;
  v28 = sub_1000B5D70();
  v30 = v29;
  v38 = v28;
  v37[0] = 2;
  v31 = sub_1000B5D70();
  v33 = v32;
  (*(v36 + 8))(v6, v3);
  result = sub_100035DA8(a1);
  v34 = v35;
  *v35 = v27;
  v34[1] = v26;
  v34[2] = v38;
  v34[3] = v30;
  v34[4] = v31;
  v34[5] = v33;
  return result;
}

__n128 sub_100089FA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100089FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_10008A014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10008A098()
{
  result = qword_1001080D0;
  if (!qword_1001080D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080D0);
  }

  return result;
}

unint64_t sub_10008A0F0()
{
  result = qword_1001080D8;
  if (!qword_1001080D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080D8);
  }

  return result;
}

unint64_t sub_10008A148()
{
  result = qword_1001080E0;
  if (!qword_1001080E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080E0);
  }

  return result;
}

Swift::Int ICMarkdownFlavor.hashValue.getter(unsigned __int8 a1)
{
  sub_1000B5FB0();
  sub_1000B5FC0(a1);
  return sub_1000B5FE0();
}

unint64_t sub_10008A220()
{
  result = qword_1001080F0;
  if (!qword_1001080F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080F0);
  }

  return result;
}

void sub_10008A284(void *a1)
{
  [a1 setIsPasswordProtected:1];
  [a1 setCryptoIterationCount:*v1];
  isa = sub_1000B4DE0().super.isa;
  [a1 setCryptoSalt:isa];

  v4 = sub_1000B4DE0().super.isa;
  [a1 setCryptoInitializationVector:v4];

  v5 = sub_1000B4DE0().super.isa;
  [a1 setCryptoTag:v5];

  v6 = sub_1000B4DE0().super.isa;
  [a1 setCryptoWrappedKey:v6];

  v7 = sub_1000B55F0();
  [a1 setPasswordHint:v7];
}

uint64_t sub_10008A39C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108108, &qword_1000CD3E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8 - 8];
  sub_1000458B4(a1, a1[3]);
  sub_10008B420();
  sub_1000B6020();
  LOBYTE(v14) = 0;
  sub_1000B5EC0();
  if (!v2)
  {
    v19 = *(v3 + 8);
    v14 = *(v3 + 8);
    v13 = 1;
    sub_10008B4A4(&v19, v12);
    sub_100054748();
    sub_1000B5EB0();
    sub_1000449D4(v14, *(&v14 + 1));
    v18 = *(v3 + 24);
    v14 = *(v3 + 24);
    v13 = 2;
    sub_10008B4A4(&v18, v12);
    sub_1000B5EB0();
    sub_1000449D4(v14, *(&v14 + 1));
    v17 = *(v3 + 40);
    v14 = *(v3 + 40);
    v13 = 3;
    sub_10008B4A4(&v17, v12);
    sub_1000B5EB0();
    sub_1000449D4(v14, *(&v14 + 1));
    v16 = *(v3 + 56);
    v14 = *(v3 + 56);
    v13 = 4;
    sub_10008B4A4(&v16, v12);
    sub_1000B5EB0();
    sub_1000449D4(v14, *(&v14 + 1));
    LOBYTE(v14) = 5;
    sub_1000B5E70();
    v14 = *(v3 + 88);
    v15 = v14;
    v13 = 6;
    sub_10008B4A4(&v15, v12);
    sub_1000B5EB0();
    sub_1000449D4(v14, *(&v14 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008A6C0()
{
  v1 = *v0;
  v2 = 0x6F69746172657469;
  v3 = 0x64726F7773736170;
  if (v1 != 5)
  {
    v3 = 1635017060;
  }

  v4 = 6775156;
  if (v1 != 3)
  {
    v4 = 0x4B64657070617277;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953259891;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_10008A7A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008AB8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10008A7D4(uint64_t a1)
{
  v2 = sub_10008B420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008A810(uint64_t a1)
{
  v2 = sub_10008B420();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10008A84C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008ADF0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_10008A8C4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 isPasswordProtected])
  {
    v35 = a3;
    v34 = [a1 cryptoIterationCount];
    v8 = [a1 cryptoSalt];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000B4DF0();
      v32 = v11;
      v33 = v10;
    }

    else
    {
      v32 = 0xC000000000000000;
      v33 = 0;
    }

    v12 = [a1 cryptoInitializationVector];
    if (v12)
    {
      v13 = v12;
      v31 = sub_1000B4DF0();
      v15 = v14;
    }

    else
    {
      v31 = 0;
      v15 = 0xC000000000000000;
    }

    v16 = [a1 cryptoTag];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1000B4DF0();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xC000000000000000;
    }

    v21 = [a1 cryptoWrappedKey];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1000B4DF0();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xC000000000000000;
    }

    v26 = [a1 passwordHint];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1000B5620();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    *a4 = v34;
    a4[1] = v33;
    a4[2] = v32;
    a4[3] = v31;
    a4[4] = v15;
    a4[5] = v18;
    a4[6] = v20;
    a4[7] = v23;
    a4[8] = v25;
    a4[9] = v28;
    a4[10] = v30;
    a4[11] = a2;
    a4[12] = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008AA94(uint64_t a1)
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

__n128 sub_10008AAB0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10008AADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008AB24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008AB8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746172657469 && a2 == 0xEE00746E756F436ELL;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000C7A00 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B64657070617277 && a2 == 0xEA00000000007965 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xEC000000746E6948 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10008ADF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100030480(&qword_1001080F8, &qword_1000CD3D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v22 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10008B420();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  LOBYTE(v42) = 0;
  v10 = sub_1000B5E10();
  LOBYTE(v35) = 1;
  sub_1000545EC();
  sub_1000B5E00();
  v33 = v42;
  v34 = v43;
  LOBYTE(v35) = 2;
  sub_1000B5E00();
  v29 = v42;
  v30 = v43;
  LOBYTE(v35) = 3;
  sub_1000B5E00();
  v27 = v42;
  v28 = v43;
  LOBYTE(v35) = 4;
  sub_1000B5E00();
  v31 = v42;
  v32 = v43;
  LOBYTE(v42) = 5;
  v24 = sub_1000B5DC0();
  v26 = v11;
  v57 = 6;
  sub_1000B5E00();
  v25 = 0;
  (*(v6 + 8))(v9, v5);
  v23 = v55;
  v22 = v56;
  *&v35 = v10;
  v12 = v33;
  *(&v35 + 1) = v33;
  v13 = v34;
  *&v36 = v34;
  v14 = v29;
  *(&v36 + 1) = v29;
  v15 = v30;
  *&v37 = v30;
  v16 = v27;
  *(&v37 + 1) = v27;
  v17 = v28;
  *&v38 = v28;
  *(&v38 + 1) = v31;
  *&v39 = v32;
  *(&v39 + 1) = v24;
  *&v40 = v26;
  *(&v40 + 1) = v55;
  v41 = v56;
  sub_10004D408(&v35, &v42);
  sub_100035DA8(a1);
  v42 = v10;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v31;
  v50 = v32;
  v51 = v24;
  v52 = v26;
  v53 = v23;
  v54 = v22;
  result = sub_10008B474(&v42);
  v19 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v19;
  *(a2 + 96) = v41;
  v20 = v36;
  *a2 = v35;
  *(a2 + 16) = v20;
  v21 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v21;
  return result;
}

unint64_t sub_10008B420()
{
  result = qword_100108100;
  if (!qword_100108100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108100);
  }

  return result;
}

unint64_t sub_10008B514()
{
  result = qword_100108110;
  if (!qword_100108110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108110);
  }

  return result;
}

unint64_t sub_10008B56C()
{
  result = qword_100108118;
  if (!qword_100108118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108118);
  }

  return result;
}

unint64_t sub_10008B5C4()
{
  result = qword_100108120;
  if (!qword_100108120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108120);
  }

  return result;
}

id sub_10008B618(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v85 = a3;
  v79 = a4;
  v80 = a5;
  v84 = a2;
  v6 = _s14AudioRecordingV8FragmentVMa(0);
  v76 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v7);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v76 - v11;
  v13 = sub_1000B4F00();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v87 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v76 - v19;
  v21 = [a1 document];
  sub_1000B4EF0();
  v22 = objc_allocWithZone(ICTTAudioRecording);
  isa = sub_1000B4ED0().super.isa;
  v24 = [v22 initWithDocument:v21 identity:isa];

  v81 = *(v14 + 8);
  v81(v20, v13);
  v77 = a1;
  v25 = [a1 document];
  v26 = [v25 replica];

  v82 = v14 + 8;
  v83 = v13;
  if (v26)
  {
    sub_1000B4EE0();

    v27 = *(v14 + 32);
    v27(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v28 = v87;
    v27(v87, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v29 = v87;
    sub_1000B4EF0();
    v30 = (*(v14 + 48))(v12, 1, v13);
    v28 = v29;
    if (v30 != 1)
    {
      sub_10008E770(v12);
    }
  }

  v31 = v86;
  v32 = v86[1];
  v33 = v88;
  v34 = v80;
  if (v32)
  {
    v35 = v86[2];
    v36 = *v86;
    v37 = sub_10003088C(_swiftEmptyArrayStorage);
    v38 = sub_100090684(v37, v84, v85, v34, v36, v32, v35);
    if (v33)
    {
LABEL_12:
      v81(v28, v83);

      return v24;
    }

    v39 = v38;

    v40 = objc_allocWithZone(ICTTMergeableAttributedString);
    v41 = sub_1000B4ED0().super.isa;
    v42 = [v40 initWithReplicaID:v41];

    [v24 setTopLineSummary:v42];
    v43 = [v24 topLineSummary];
    if (v43)
    {
      v44 = v43;
      v45.super.isa = v39;
      sub_1000B5A70(v45, 0);
    }
  }

  v46 = v31[4];
  if (v46)
  {
    v47 = v31[5];
    v48 = v31[3];
    v49 = sub_10003088C(_swiftEmptyArrayStorage);
    v50 = sub_100090684(v49, v84, v85, v34, v48, v46, v47);
    if (v33)
    {
      goto LABEL_12;
    }

    v51 = v50;

    v52 = objc_allocWithZone(ICTTMergeableAttributedString);
    v53 = sub_1000B4ED0().super.isa;
    v54 = [v52 initWithReplicaID:v53];

    [v24 setSummary:v54];
    v55 = [v24 summary];
    if (v55)
    {
      v56 = v55;
      v57.super.isa = v51;
      sub_1000B5A70(v57, 0);
    }

    if (v31[7])
    {
      v58 = 0;
    }

    else
    {
      v58 = [objc_allocWithZone(NSNumber) initWithInteger:v31[6]];
    }

    [v24 setSummaryVersion:{v58, v76}];
  }

  if (v31[8])
  {
    v59 = v31[8];
  }

  else
  {
    v59 = _swiftEmptyArrayStorage;
  }

  v60 = v59[2];
  if (v60)
  {
    v88 = v33;
    v61 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v85 = v59;
    v62 = v59 + v61;
    v63 = *(v76 + 72);

    v65 = v77;
    v64 = v78;
    v66 = v24;
    v67 = v79;
    do
    {
      sub_10008E7D8(v62, v64, _s14AudioRecordingV8FragmentVMa);
      v68 = sub_10008DA70(v65, v67);
      sub_10008E840(v64, _s14AudioRecordingV8FragmentVMa);
      v69 = [v66 fragments];
      [v69 addObject:v68];

      v62 += v63;
      --v60;
    }

    while (v60);

    v31 = v86;
    v24 = v66;
  }

  else
  {
  }

  v70 = *(v31 + 72);
  v71 = v83;
  v72 = v87;
  if (v70 == 2)
  {
    v73 = 0;
  }

  else
  {
    v73 = [objc_allocWithZone(NSNumber) initWithBool:v70 & 1];
  }

  [v24 setCallRecording:{v73, v76}];

  if ((v31[11] & 1) == 0)
  {
    v74 = [objc_allocWithZone(NSNumber) initWithInteger:v31[10]];
    [v24 setCallType:v74];
  }

  v81(v72, v71);
  return v24;
}

uint64_t sub_10008BD34(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001082F0, &qword_1000CD6D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10008F7B8();
  sub_1000B6020();
  v13 = *v3;
  v14 = *(v3 + 2);
  v12 = 0;
  sub_10004E3B8();
  sub_1000B5E60();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 5);
    v12 = 1;
    sub_1000B5E60();
    LOBYTE(v13) = 2;
    sub_1000B5E50();
    *&v13 = *(v3 + 8);
    v12 = 3;
    sub_100030480(&qword_1001082D8, &qword_1000CD6D0);
    sub_10008F80C(&qword_1001082F8, &qword_100108300, &unk_1000CD608, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
    LOBYTE(v13) = 4;
    sub_1000B5E30();
    LOBYTE(v13) = 5;
    sub_1000B5E50();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008C008()
{
  v1 = *v0;
  v2 = 0x53656E694C706F74;
  v3 = 0x746E656D67617266;
  v4 = 0x65526C6C61437369;
  if (v1 != 4)
  {
    v4 = 0x657079546C6C6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7972616D6D7573;
  if (v1 != 1)
  {
    v5 = 0x567972616D6D7573;
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

uint64_t sub_10008C0EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008EF08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10008C114(uint64_t a1)
{
  v2 = sub_10008F7B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008C150(uint64_t a1)
{
  v2 = sub_10008F7B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10008C18C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10008F124(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

void sub_10008C1F8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4, v5);
  v7 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v69 - v13;
  v15 = sub_1000B4F00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = _s14AudioRecordingV8FragmentVMa(0);
  v20 = *(v70 + 20);
  v21 = sub_1000B4EA0();
  v22 = *(v21 - 8);
  v78 = *(v22 + 56);
  v79 = v21;
  v77 = v22 + 56;
  v78(a2 + v20, 1, 1);
  v23 = [a1 identity];
  sub_1000B4EE0();

  v24 = sub_1000B4EC0();
  v26 = v25;
  (*(v16 + 8))(v19, v15);
  *a2 = v24;
  a2[1] = v26;
  v72 = a2;
  v27 = a1;
  v28 = [a1 createdDate];
  if (v28)
  {
    v29 = v28;
    sub_1000B4E70();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (v78)(v14, v30, 1, v79);
  sub_10004CDC8(v14, v72 + v20);
  v31 = [a1 transcript];
  v32 = [v31 allObjects];

  sub_1000B5190();
  v33 = sub_1000B57A0();

  v34 = v76;
  if (v33 >> 62)
  {
    v35 = sub_1000B5CF0();
    v71 = v27;
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_28:

    v37 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v71 = v27;
  if (!v35)
  {
    goto LABEL_28;
  }

LABEL_6:
  v80 = _swiftEmptyArrayStorage;
  sub_100043490(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    __break(1u);
    return;
  }

  v36 = 0;
  v73 = v33 & 0xC000000000000001;
  v37 = v80;
  do
  {
    if (v73)
    {
      v38 = sub_1000B5C20();
    }

    else
    {
      v38 = *(v33 + 8 * v36 + 32);
    }

    v39 = v38;
    v40 = *(v34 + 20);
    (v78)(v7 + v40, 1, 1, v79);
    v41 = [v39 text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1000B5620();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v74;
    *v7 = v43;
    v7[1] = v45;
    v47 = [v39 timestamp];
    if (v47)
    {
      v48 = v47;
      [v48 doubleValue];
      sub_1000B4E50();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    (v78)(v46, v49, 1, v79);
    sub_10004CDC8(v46, v7 + v40);
    v50 = [v39 duration];
    v51 = v50;
    if (v50)
    {
      [v50 doubleValue];
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v34 = v76;
    v54 = v7 + *(v76 + 24);
    *v54 = v53;
    v54[8] = v51 == 0;
    v55 = [v39 speaker];
    if (v55)
    {
      v56 = v55;
      v57 = sub_1000B5620();
      v59 = v58;
    }

    else
    {

      v57 = 0;
      v59 = 0;
    }

    v60 = (v7 + *(v34 + 28));
    *v60 = v57;
    v60[1] = v59;
    v80 = v37;
    v62 = v37[2];
    v61 = v37[3];
    if (v62 >= v61 >> 1)
    {
      sub_100043490((v61 > 1), v62 + 1, 1);
      v37 = v80;
    }

    ++v36;
    v37[2] = v62 + 1;
    sub_10008E708(v7, v37 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v62, _s14AudioRecordingV17TranscriptSegmentVMa);
  }

  while (v35 != v36);

LABEL_29:
  v64 = v70;
  v63 = v71;
  *(v72 + *(v70 + 24)) = v37;
  v65 = [v63 transcriptVersion];
  v66 = v65;
  if (v65)
  {
    v67 = [v65 integerValue];
  }

  else
  {
    v67 = 0;
  }

  v68 = v72 + *(v64 + 28);
  *v68 = v67;
  v68[8] = v66 == 0;
}

uint64_t sub_10008C840(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001082B0, &qword_1000CD6C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8];
  sub_1000458B4(a1, a1[3]);
  sub_10008EE18();
  sub_1000B6020();
  v15 = 0;
  sub_1000B5E20();
  if (!v2)
  {
    v10 = _s14AudioRecordingV8FragmentVMa(0);
    v14 = 1;
    sub_1000B4EA0();
    sub_10008EDD0(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5E60();
    v13 = *(v3 + *(v10 + 24));
    v12[15] = 2;
    sub_100030480(&qword_100108238, &qword_1000CD520);
    sub_10008EE6C(&qword_1001082B8, &qword_1001082C0, &unk_1000CD658, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
    v12[14] = 3;
    sub_1000B5E50();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008CAC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v3 - 8, v4);
  v34 = &v30 - v5;
  v6 = sub_100030480(&qword_100108290, &qword_1000CD6B8);
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v30 - v8;
  v10 = _s14AudioRecordingV8FragmentVMa(0);
  v11 = (v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  v14[1] = 0;
  v15 = v11[7];
  v16 = sub_1000B4EA0();
  v17 = *(*(v16 - 8) + 56);
  v33 = v15;
  v17(v14 + v15, 1, 1, v16);
  v18 = v11[8];
  *(v14 + v18) = 0;
  v19 = (v14 + v11[9]);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_1000458B4(a1, a1[3]);
  sub_10008EE18();
  v35 = v9;
  v20 = v38;
  sub_1000B6010();
  if (v20)
  {
    sub_100035DA8(a1);
  }

  else
  {
    v30 = v19;
    v31 = v18;
    v38 = a1;
    v22 = v34;
    v21 = v35;
    v43 = 0;
    *v14 = sub_1000B5D70();
    v14[1] = v23;
    v42 = 1;
    sub_10008EDD0(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5DB0();
    sub_10004CDC8(v22, v14 + v33);
    sub_100030480(&qword_100108238, &qword_1000CD520);
    v41 = 2;
    sub_10008EE6C(&qword_1001082A0, &qword_1001082A8, &unk_1000CD680, &protocol conformance descriptor for <A> [A]);
    sub_1000B5DB0();
    v25 = v36;
    *(v14 + v31) = v39;
    v40 = 3;
    v26 = sub_1000B5DA0();
    v28 = v27;
    (*(v25 + 8))(v21, v37);
    v29 = v30;
    *v30 = v26;
    *(v29 + 8) = v28 & 1;
    sub_10008E7D8(v14, v32, _s14AudioRecordingV8FragmentVMa);
    sub_100035DA8(v38);
  }

  return sub_10008E840(v14, _s14AudioRecordingV8FragmentVMa);
}

unint64_t sub_10008CEF0()
{
  v1 = 0x696669746E656469;
  v2 = 0x697263736E617274;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10008CF78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008FBF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10008CFA0(uint64_t a1)
{
  v2 = sub_10008EE18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008CFDC(uint64_t a1)
{
  v2 = sub_10008EE18();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10008D048(void *a1)
{
  v2 = v1;
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_1000B4F00();
  __chkstk_darwin(v13 - 8, v14);
  sub_1000B5190();
  v15 = a1;
  sub_1000B4EF0();
  v16 = sub_1000B5180();
  if (*(v2 + 8))
  {
    v17 = sub_1000B55F0();
  }

  else
  {
    v17 = 0;
  }

  [v16 setText:v17];

  v18 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  sub_100030C74(v2 + v18[5], v12, &qword_100106E38, &unk_1000CB730);
  v19 = 0;
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1000B4E60();
    v19 = [objc_allocWithZone(NSNumber) initWithDouble:v20];
    (*(v5 + 8))(v8, v4);
  }

  [v16 setTimestamp:v19];

  v21 = v2 + v18[6];
  if (*(v21 + 8))
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(NSNumber) initWithDouble:*v21];
  }

  [v16 setDuration:v22];

  if (*(v2 + v18[7] + 8))
  {
    v23 = sub_1000B55F0();
  }

  else
  {
    v23 = 0;
  }

  [v16 setSpeaker:v23];

  return v16;
}

uint64_t sub_10008D364(void *a1)
{
  v3 = sub_100030480(&qword_100108288, &qword_1000CD6B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_10008ED7C();
  sub_1000B6020();
  v9[15] = 0;
  sub_1000B5E20();
  if (!v1)
  {
    _s14AudioRecordingV17TranscriptSegmentVMa(0);
    v9[14] = 1;
    sub_1000B4EA0();
    sub_10008EDD0(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5E60();
    v9[13] = 2;
    sub_1000B5E40();
    v9[12] = 3;
    sub_1000B5E20();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10008D584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v3 - 8, v4);
  v34 = &v30 - v5;
  v36 = sub_100030480(&qword_100108278, &qword_1000CD6A8);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36, v6);
  v8 = &v30 - v7;
  v9 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = sub_1000B4EA0();
  v16 = *(*(v15 - 8) + 56);
  v32 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = (v13 + v10[8]);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v13 + v10[9]);
  *v18 = 0;
  v18[1] = 0;
  sub_1000458B4(a1, a1[3]);
  sub_10008ED7C();
  v35 = v8;
  v19 = v37;
  sub_1000B6010();
  if (v19)
  {
    sub_100035DA8(a1);
  }

  else
  {
    v37 = v17;
    v20 = v33;
    v21 = v34;
    v41 = 0;
    *v13 = sub_1000B5D70();
    v13[1] = v22;
    v40 = 1;
    sub_10008EDD0(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5DB0();
    sub_10004CDC8(v21, v13 + v32);
    v39 = 2;
    v23 = sub_1000B5D90();
    v24 = v37;
    *v37 = v23;
    *(v24 + 8) = v25 & 1;
    v38 = 3;
    v27 = sub_1000B5D70();
    v29 = v28;
    (*(v20 + 8))(v35, v36);
    *v18 = v27;
    v18[1] = v29;
    sub_10008E7D8(v13, v31, _s14AudioRecordingV17TranscriptSegmentVMa);
    sub_100035DA8(0);
  }

  return sub_10008E840(v13, _s14AudioRecordingV17TranscriptSegmentVMa);
}

uint64_t sub_10008D928()
{
  v1 = 1954047348;
  v2 = 0x6E6F697461727564;
  if (*v0 != 2)
  {
    v2 = 0x72656B61657073;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10008D9A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008FD70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10008D9C8(uint64_t a1)
{
  v2 = sub_10008ED7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008DA04(uint64_t a1)
{
  v2 = sub_10008ED7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10008DA70(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v51 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v48 - v11;
  v13 = sub_1000B4F00();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = v48 - v24;
  v26 = v3[1];
  if (v26 && *(a2 + 16) && (v27 = sub_10006320C(*v3, v26), (v28 & 1) != 0) && (v29 = [*(*(a2 + 56) + 8 * v27) identifier]) != 0)
  {
    v30 = v29;
    v50 = sub_1000B5620();

    sub_1000B4EB0();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v14 + 56))(v25, 1, 1, v13);
  }

  sub_100030C74(v25, v22, &qword_100106FD0, &qword_1000CAE50);
  v31 = *(v14 + 48);
  if (v31(v22, 1, v13) == 1)
  {
    sub_1000B4EF0();
    if (v31(v22, 1, v13) != 1)
    {
      sub_10008E770(v22);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v22, v13);
  }

  sub_1000B59C0();
  v32 = v52;
  v33 = sub_1000B59B0();
  v34 = _s14AudioRecordingV8FragmentVMa(0);
  sub_100030C74(v3 + v34[5], v12, &qword_100106E38, &unk_1000CB730);
  v35 = sub_1000B4EA0();
  v36 = *(v35 - 8);
  isa = 0;
  if ((*(v36 + 48))(v12, 1, v35) != 1)
  {
    isa = sub_1000B4E30().super.isa;
    (*(v36 + 8))(v12, v35);
  }

  [v33 setCreatedDate:isa];

  if (*(v3 + v34[6]))
  {
    v38 = *(v3 + v34[6]);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v39 = v38[2];
  if (v39)
  {
    v49 = v34;
    v50 = v25;
    v52 = v3;
    v40 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v48[1] = v38;
    v41 = v38 + v40;
    v42 = *(v51 + 72);

    do
    {
      sub_10008E7D8(v41, v8, _s14AudioRecordingV17TranscriptSegmentVMa);
      v43 = sub_10008D048(v32);
      sub_10008E840(v8, _s14AudioRecordingV17TranscriptSegmentVMa);
      v44 = [v33 transcript];
      [v44 addObject:v43];

      v41 += v42;
      --v39;
    }

    while (v39);

    v3 = v52;
    v34 = v49;
    v25 = v50;
  }

  else
  {
  }

  v45 = v3 + v34[7];
  if (v45[8])
  {
    v46 = 0;
  }

  else
  {
    v46 = [objc_allocWithZone(NSNumber) initWithInteger:*v45];
  }

  [v33 setTranscriptVersion:v46];

  sub_10008E770(v25);
  return v33;
}

void sub_10008DFD0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a4;
  v7 = _s14AudioRecordingV8FragmentVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8, v9);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = 1;
  v87 = 1;
  v12 = [a1 fragments];
  v13 = [v12 count];

  if (v13 < 1)
  {
    sub_10004CE38(a3);

    v70 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v72 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v29 = v90;
    LODWORD(v73) = 2;
    LOBYTE(v30) = v87;
    v31 = 1;
LABEL_33:
    v57 = v72;
    v75 = v72;
    v76 = v28;
    v77 = v27;
    v78 = v26;
    v79 = v25;
    v80 = v24;
    v81 = v23;
    LOBYTE(v82) = v29;
    *(&v82 + 1) = *v89;
    HIDWORD(v82) = *&v89[3];
    v83 = v22;
    LOBYTE(v84) = v73;
    *(&v84 + 1) = *v88;
    HIDWORD(v84) = *&v88[3];
    v58 = v70;
    v85 = v70;
    v86 = v30;
    sub_10008E680(&v75);
    v59 = v71;
    *v71 = v57;
    v59[1] = v31;
    v59[2] = v27;
    v59[3] = v26;
    v59[4] = v25;
    v59[5] = v24;
    v60 = v69;
    v59[6] = v23;
    v59[7] = v60;
    v61 = v68;
    v59[8] = v22;
    v59[9] = v61;
    v59[10] = v58;
    *(v59 + 88) = v67;
    return;
  }

  v14 = [a1 topLineSummary];
  v15 = a1;
  if (v14)
  {
    v16 = v14;
    v17 = a2;
    sub_10004D3AC(a3, &v75);
    v18 = v17;
    v15 = a1;
    v19 = sub_1000A1B30(v16, v18, a3);
    v62 = v20;
    v63 = v21;
  }

  else
  {
    v19 = 0;
    v62 = 0;
    v63 = 0;
  }

  v32 = [v15 summary];
  if (v32)
  {
    v64 = sub_1000A1B30(v32, a2, a3);
    v65 = v33;
    v66 = v34;
  }

  else
  {
    sub_10004CE38(a3);
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  v35 = [v15 summaryVersion];
  v36 = v35;
  if (v35)
  {
    v69 = [v35 integerValue];
  }

  else
  {
    v69 = 0;
  }

  v90 = v36 == 0;
  v37 = [v15 fragments];
  v38 = [v37 allObjects];

  sub_1000B59C0();
  v39 = sub_1000B57A0();

  if (v39 >> 62)
  {
    v40 = sub_1000B5CF0();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v19;
  v70 = v15;
  if (v40)
  {
    v75 = _swiftEmptyArrayStorage;
    sub_1000433EC(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v73 = a2;
    v41 = 0;
    v22 = v75;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = sub_1000B5C20();
      }

      else
      {
        v42 = *(v39 + 8 * v41 + 32);
      }

      sub_10008C1F8(v42, v11);
      v75 = v22;
      v44 = v22[2];
      v43 = v22[3];
      if (v44 >= v43 >> 1)
      {
        sub_1000433EC((v43 > 1), v44 + 1, 1);
        v22 = v75;
      }

      ++v41;
      v22[2] = v44 + 1;
      sub_10008E708(v11, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44, _s14AudioRecordingV8FragmentVMa);
    }

    while (v40 != v41);

    v19 = v72;
    a2 = v73;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v45 = [v70 callRecording];
  v46 = v66;
  v25 = v65;
  v47 = v64;
  if (v45)
  {
    v48 = v45;
    LODWORD(v73) = [v45 BOOLValue];
  }

  else
  {
    LODWORD(v73) = 2;
  }

  v49 = v69;
  v50 = v70;
  v51 = [v70 callType];
  if (!v51)
  {

    v55 = 0;
    goto LABEL_32;
  }

  v52 = v19;
  v53 = v51;
  v54 = [v51 unsignedIntegerValue];

  v55 = v54;
  if ((v54 & 0x8000000000000000) == 0)
  {
    v87 = 0;
    v19 = v52;
LABEL_32:
    v70 = v55;
    v56 = v62;
    v75 = v19;
    v76 = v62;
    v77 = v63;
    v78 = v47;
    v79 = v25;
    v80 = v46;
    v81 = v49;
    v29 = v90;
    LOBYTE(v82) = v90;
    HIDWORD(v82) = *&v89[3];
    *(&v82 + 1) = *v89;
    v83 = v22;
    LOBYTE(v84) = v73;
    HIDWORD(v84) = *&v88[3];
    *(&v84 + 1) = *v88;
    v27 = v63;
    v85 = v55;
    v23 = v49;
    v26 = v47;
    v30 = v87;
    v86 = v87;
    v69 = v82;
    v24 = v46;
    v68 = v84;
    sub_10008E6B0(&v75, v74);
    v28 = v56;
    v31 = v56;
    v67 = v30;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_10008E708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008E770(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E7D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008E840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10008E8D0(uint64_t a1)
{
  sub_10004D9AC(319, &qword_100106CA0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10004D954(319);
    if (v2 <= 0x3F)
    {
      sub_10004D9AC(319, &unk_100108190, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008E9A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10008EA80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10008EB30(uint64_t a1)
{
  sub_10004D9AC(319, &qword_100106CA0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10004D954(319);
    if (v2 <= 0x3F)
    {
      sub_10008EC04(319);
      if (v3 <= 0x3F)
      {
        sub_10004D9AC(319, &unk_100108240, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10008EC04(uint64_t a1)
{
  if (!qword_100108230)
  {
    sub_10003052C(&qword_100108238, &qword_1000CD520);
    v1 = sub_1000B5AC0();
    if (!v2)
    {
      atomic_store(v1, &qword_100108230);
    }
  }
}

uint64_t sub_10008EC68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10008EC80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}